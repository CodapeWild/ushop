<?php

if ($_SERVER['REQUEST_METHOD'] != 'GET') {
  exit();
}

require('./define.php');
require(dirname(dirname(__FILE__)) . '/includes/init.php');

function prcGetOpenId($code)
{
  $url = "https://api.weixin.qq.com/sns/jscode2session?appid=" . APP_ID . "&secret=" . SECRET . "&js_code={$code}&grant_type=authorization_code";
  $curl = curl_init();
  if ($curl != null) {
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_HEADER, 1);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
    $data = curl_exec($curl);
    curl_close($curl);
  } else {
    return array("err" => 1, "msg" => "initial curl failed");
  }
  $data = json_decode(trim(strrchr($data, "\r\n\r\n"), "\r\n\r\n"));
  if ($data->openid == "") {
    return array("err" => 1, "msg" => "error code:" . $data->errcode . " error msg:" . $data->errmsg);
  }
  $rslt = prcSetSessionKey($data->openid, $data->session_key);
  if ($rslt['err'] != 0) {
    return $rslt;
  }

  return array("err" => 0, "msg" => "", "openid" => $data->openid);
}

function prcSetSessionKey($openid, $sessKey)
{
  if ($openid == "" || $sessKey == "") {
    return array('err' => 1, 'msg' => 'parameters can not be null');
  }

  $db = $GLOBALS['db'];
  $row = $db->getRow("select count(*) c from " . DB_PREFIX . "users where openid='{$openid}';");
  if ($row['c'] == 0) {
    if (!$db->query("insert into " . DB_PREFIX . "users(user_name, openid, session_key) values('{$openid}', '{$openid}', '{$sessKey}');")) {
      return array('err' => 1, 'msg' => 'insert new user failed');
    }
  } else if ($row['c'] == 1) {
    if (!$db->query("update " . DB_PREFIX . "users set session_key='{$sessKey}' where openid='{$openid}';")) {
      return array('err' => 1, 'msg' => 'update user session failed');
    }
  }

  return array('err' => 0, 'msg' => '');
}

function prcGetUserId($openid)
{
  if ($openid == "") {
    return array('err' => 1, 'msg' => 'openid can not be null');
  }

  $db = $GLOBALS['db'];
  $row = $db->getRow("select user_id from " . DB_PREFIX . "users where openid = '{$openid}';");
  if (!$row) {
    return array('err' => 1, 'msg' => "can not find user id by openid:{$openid}");
  }

  return array('err' => 0, 'msg' => '', 'id' => $row['user_id']);
}

function prcGetUserDetails($openid, $encrypted, $iv)
{
  include_once "./crypt/wxBizDataCrypt.php";

  $sessKey = prcGetSessionKey($openid);
  if ($sessKey == "") {
    return array("err" => 1, "msg" => "get wx session key by openid failed");
  }
  $pc = new WXBizDataCrypt(APP_ID, $sessKey);
  $data;
  $err = $pc->decryptData($encrypted, $iv, $data);
  if ($err == 0) {
    return json_decode($data);
  }

  return array("err" => 1, "msg" => "decrypted user details failed, error code:{$err}");
}

function prcGetSessionKey($openid)
{
  $db = $GLOBALS['db'];
  $row = $db->getRow("select session_key from " . DB_PREFIX . "users where openid='{$openid}';");

  return $row['session_key'];
}

function prcGetOrderCount($userid)
{
  $db = $GLOBALS['db'];
  $row = $db->getRow("select count(*) c from " . DB_PREFIX . "order_info where user_id={$userid} and pay_status=2;");
  if (!$row) {
    return array('err' => 1, 'msg' => 'user id does not exists');
  }

  return array('err' => 0, 'msg' => '', 'count' => $row['c']);
}

function prcGetUserOrders($userid)
{
  if ($userid == null) {
    return array('err' => 1, 'msg' => 'parameter can not be null');
  }

  $db = $GLOBALS['db'];
  $rows = $db->getAll("select order_id, order_sn, order_status, shipping_status, pay_status, province, city, district, address, shipping_fee, mobile from " . DB_PREFIX . "order_info where user_id={$userid};");
  if (!$rows) {
    return array('err' => 1, 'msg' => 'can not find orders by user id');
  }

  // distinct region id
  $n = count($rows);
  $regIds = array();
  for ($i = 0; $i < $n; $i++) {
    $regIds[$rows[$i]['province']] = true;
    $regIds[$rows[$i]['city']] = true;
    $regIds[$rows[$i]['district']] = true;
  }
  $rs = trim(implode(",", array_keys($regIds)), ",");
  $regions = $db->getAll("select region_id, region_name from " . DB_PREFIX . "region where region_id in(" . $rs . ");");
  if (!$regions) {
    return array('err' => 1, 'msg' => 'get region failed');
  }
  $regMap = array_combine(array_column($regions, 'region_id'), array_column($regions, 'region_name'));

  $orders = array();
  foreach ($rows as $key => $value) {
    $goods = $db->getAll("select goods_id gid, goods_name gname, goods_number number, goods_price price from " . DB_PREFIX . "order_goods where order_id=" . $value['order_id']);
    $amount = 0;
    foreach ($goods as $k => $v) {
      $goodsImg = $db->getRow("select goods_img from " . DB_PREFIX . "goods where goods_id=" . $v['gid']);
      $goods[$k]['img'] = $goodsImg['goods_img'];
      $amount += $v['number'] * $v['price'];
    }
    $addr = sprintf("%s省 %s市 %s %s", $regMap[$value['province']], $regMap[$value['city']], $regMap[$value['district']], $value['address']);
    $orders[] = array('id' => $value['order_id'], 'sn' => $value['order_sn'], 'odstatus' => $value['order_status'], 'spstatus' => $value['shipping_status'], 'pystatus' => $value['pay_status'], 'addr' => $addr, 'amount' => $amount, 'spfee' => $value['shipping_fee'], 'mobile' => $value['mobile'], 'goods' => $goods);
  }

  return array('err' => 0, 'msg' => '', 'orders' => $orders);
}

class Region
{
  var $id;
  var $name;
  var $pid;

  function Region($id, $name, $pid)
  {
    $this->id = $id;
    $this->name = $name;
    $this->pid = $pid;
  }
}

function prcGetRegions()
{
  $db = $GLOBALS['db'];
  $rows = $db->getAll("select region_id, parent_id, region_name, region_type from " . DB_PREFIX . "region where region_id > 1;");
  if (!$rows) {
    return array('err' => 1, 'msg' => 'get regions information failed');
  }

  $regions = array();
  $regMap = array();
  foreach ($rows as $v) {
    $reg = new Region($v['region_id'], $v['region_name'], $v['parent_id']);
    $regions[$v['region_type'] - 1][] = $reg;
    $regMap[$v['parent_id'] - 1][] = $reg;
  }

  return array('err' => 0, 'msg' => '', 'regions' => $regions, 'regMap' => $regMap);
}

function prcGetAddresses($userid)
{
  if ($userid == "") {
    return array('err' => 1, 'msg' => 'userid can not be null');
  }

  $db = $GLOBALS['db'];
  $row = $db->getRow("select address_id from " . DB_PREFIX . "users where user_id={$userid};");
  $defAddrId = $row['address_id'];
  $rows = $db->getAll("select address_id, consignee, province, city, district, address, mobile from " . DB_PREFIX . "user_address where user_id={$userid}");
  if ($rows === false) {
    return array('err' => 1, 'msg' => "userid:{$userid} does not exists");
  }
  $addrs = array();
  foreach ($rows as $k => $v) {
    $addrs[$k]['id'] = $v['address_id'];
    if ($defAddrId == $addrs[$k]['id']) {
      $addrs[$k]['isDef'] = true;
    } else {
      $addrs[$k]['isDef'] = false;
    }
    $addrs[$k]['consignee'] = $v['consignee'];
    $addrs[$k]['mobile'] = $v['mobile'];
    $regs = $db->getAll("select region_name from " . DB_PREFIX . "region where region_id in({$v['province']}, {$v['city']}, {$v['district']});");
    if (!$regs) {
      return array('err' => 1, 'msg' => 'get region name of address failed');
    }
    $addrs[$k]['province'] = $regs[0]['region_name'];
    $addrs[$k]['city'] = $regs[1]['region_name'];
    $addrs[$k]['district'] = $regs[2]['region_name'];
    $addrs[$k]['detail'] = $v['address'];
  }

  return array('err' => 0, 'msg' => '', 'addrs' => $addrs);
}

function prcAddAddress($userid, $addrid, $consignee, $mobile, $province, $city, $district, $detail)
{
  if ($userid == null || $consignee == null || $mobile == null || $province == null || $city == null || $district == null || $detail == null) {
    return array('err' => 1, 'msg' => "parameters can not bee null");
  }
  if (preg_match('/^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/', $mobile) != 1) {
    return array('err' => 1, 'msg' => "手机号码格式错误");
  }

  $db = $GLOBALS['db'];
  if ($addrid == null || $addrid == "null") {
    if (!$db->query("insert into " . DB_PREFIX . "user_address(user_id, consignee, province, city, district, address, mobile) values({$userid}, '{$consignee}', {$province}, {$city}, {$district}, '{$detail}', '{$mobile}');")) {
      return array('err' => 1, 'msg' => 'add user delivering address failed');
    }
    $msg = "添加收货地址成功";
  } else {
    if (!$db->query("update " . DB_PREFIX . "user_address set consignee='{$consignee}', mobile='{$mobile}', province={$province}, city={$city}, district={$district}, address='{$detail}' where address_id={$addrid} and user_id={$userid};")) {
      return array('err' => 1, 'msg' => 'update user delivering address failed');
    }
    $msg = "修改收货地址成功";
  }

  return array('err' => 0, 'msg' => $msg);
}

function prcGetDefAddress($userid)
{
  if (!$userid || $userid == "null") {
    return array('err' => 1, 'msg' => 'parameter can not be null');
  }

  $db = $GLOBALS['db'];
  $addr = $db->getRow("select address_id from " . DB_PREFIX . "users where user_id={$userid};");
  if (!$addr || $addr['address_id'] == 0) {
    return array('err' => 1, 'msg' => 'get user default address failed by user id');
  }
  $addrid = $addr['address_id'];
  $addr = $db->getRow("select address_name addrname, consignee, country, province, city, district, address, mobile from " . DB_PREFIX . "user_address where address_id={$addrid}");
  if (!$addr) {
    return array('err' => 1, 'msg' => 'get user default address detail failed');
  }
  // $names = $db->getAll("select region_name from " . DB_PREFIX . "region where region_id in({$addr['province']}, {$addr['city']}, {$addr['district']});");
  // if (!$names)
  // {
  // 	return array('err' => 1, 'msg' => 'get default region details failed');
  // }
  // $addr['province'] = $names[0]['region_name'];
  // $addr['city'] = $names[1]['region_name'];
  // $addr['district'] = $names[2]['region_name'];
  $addr['id'] = $addrid;

  return array('err' => 0, 'msg' => '', 'addr' => $addr);
}

function prcSetDefAddress($userid, $defAddrId)
{
  if ($userid == null || $defAddrId == null) {
    return array('err' => 1, 'msg' => 'parameters can not be null');
  }

  $db = $GLOBALS['db'];
  if (!$db->query("update " . DB_PREFIX . "users set address_id={$defAddrId};")) {
    return array('err' => 1, 'msg' => 'update user default delivering address failed');
  }

  return array('err' => 0, 'msg' => '');
}

function prcGetService($articleid)
{
  if ($articleid == "null" || $articleid == null) {
    return array('err' => 1, 'msg' => 'article id can not be null');
  }

  $db = $GLOBALS['db'];
  $row = $db->getRow("select title, content, file_url img, description from " . DB_PREFIX . "article where article_id={$articleid};");
  if (!$row) {
    return array('err' => 1, 'msg' => 'can not find service');
  }
  $doc = new DOMDocument();
  if ($doc->loadHTML($row['content'])) {
    $row['content'] = explode("\r\n", utf8_decode($doc->getElementsByTagName("p")->item(0)->textContent));
  }

  return array('err' => 0, 'msg' => '', 'service' => $row);
}

header('Content-Type:application/json; charset=utf-8');

$req = $_GET['req'];
if ($req == "openid") {
  return exit(json_encode(prcGetOpenId($_GET['code'])));
} else if ($req == "userid") {
  return exit(json_encode(prcGetUserId($_GET['openid'])));
} else if ($req == "details") {
  return exit(json_encode(prcGetUserDetails($_GET['openid'], $_GET['encrypted'], $_GET['iv'])));
} else if ($req == "order") {
  if ($_GET['check'] == 'list') {
    return exit(json_encode(prcGetUserOrders($_GET['userid'])));
  } else if ($_GET['check'] == 'count') {
    return exit(json_encode(prcGetOrderCount($_GET['userid'])));
  }
} else if ($req == "regions") {
  return exit(json_encode(prcGetRegions()));
} else if ($req == "address") {
  return exit(json_encode(prcGetAddresses($_GET['userid'])));
} else if ($req == "addaddr") {
  return exit(json_encode(prcAddAddress($_GET['userid'], $_GET['addrid'], $_GET['consignee'], $_GET['mobile'], $_GET['province'], $_GET['city'], $_GET['district'], $_GET['detail'])));
} else if ($req == "defaddr") {
  if ($_GET['opt'] == "get") {
    return exit(json_encode(prcGetDefAddress($_GET['userid'])));
  } else if ($_GET['opt'] == "set") {
    return exit(json_encode(prcSetDefAddress($_GET['userid'], $_GET['defAddrId'])));
  }
} else if ($req == "service") {
  return exit(json_encode(prcGetService($_GET['articleid'])));
} else if ($req == "test") {
}
