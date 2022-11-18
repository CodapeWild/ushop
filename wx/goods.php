<?php

if ($_SERVER['REQUEST_METHOD'] != 'GET') {
  exit();
}

require('./define.php');
require(dirname(dirname(__FILE__)) . '/includes/init.php');
require('./utile.php');

function prcGetAdvsList()
{
  $flashData = array();
  $adPath = ROOT_PATH . DATA_DIR . '/wx_slider_data.xml';
  if (file_exists($adPath)) {
    // 兼容v2.7.0及以前版本
    if (!preg_match_all('/item_url="([^"]+)"\slink="([^"]+)"\stext="([^"]*)"\ssort="([^"]*)"/', file_get_contents($adPath), $t, PREG_SET_ORDER)) {
      preg_match_all('/item_url="([^"]+)"\slink="([^"]+)"\stext="([^"]*)"/', file_get_contents($adPath), $t, PREG_SET_ORDER);
    }
    if ($t != null) {
      foreach ($t as $v) {
        $flashData[] = array('src' => $v[1], 'id' => substr($v[2], strpos($v[2], "id=") + 3), 'txt' => $v[3]);
      }
    }
  }
  if ($flashData == null) {
    return array('err' => 1, 'msg' => 'can not find advertisements data or match failed');
  } else {
    return array('err' => 0, 'msg' => '', 'advs' => $flashData);
  }
}

function prcGetGoodsByType($type)
{
  if (!$type || $type == "null") {
    return array('err' => 1, 'msg' => 'parameter can not be null');
  }

  $db = $GLOBALS['db'];
  $data;
  if ($type == "best") {
    $data = $db->getAll("select goods_id id, cat_id catid, goods_name name, goods_img img from " . DB_PREFIX . "goods where keywords='wxlp' and is_best=1 limit 20;");
  } else if ($type == "hot") {
    $data = $db->getAll("select goods_id id, cat_id catid, goods_name name, goods_img img from " . DB_PREFIX . "goods where keywords='wxlp' and is_hot=1 limit 20;");
  } else if ($type == "new") {
    $data = $db->getAll("select goods_id id, cat_id catid, goods_name name, goods_img img from " . DB_PREFIX . "goods where keywords='wxlp' and is_new=1 limit 20;");
  }
  if (!$data) {
    return array('err' => 1, 'msg' => 'can not find goods by type');
  }

  return array('err' => 0, 'msg' => '', 'gdlist' => $data);
}

function prcGetGoodsByCatId($catid)
{
  if ($catid == null) {
    return array('err' => 1, 'msg' => 'parameter can not be null');
  }

  $db = $GLOBALS['db'];
  $data = $db->getAll("select goods_id, goods_name, goods_img, market_price, shop_price, brand_id from " . DB_PREFIX . "goods where cat_id=" . $catid);
  if (!$data) {
    return array('err' => 1, 'msg' => 'get goods list by category id failed');
  }
  $brands = $db->getAll("select brand_id, brand_name from " . DB_PREFIX . "brand;");
  if ($brands) {
    $brandInfo = array_combine(array_column($brands, 'brand_id'), array_column($brands, 'brand_name'));
  }
  $glist = array();
  foreach ($data as $key => $value) {
    $glist[] = array('id' => $value['goods_id'], 'name' => $value['goods_name'], 'img' => $value['goods_img'], 'mktPrice' => $value['market_price'], 'price' => $value['shop_price'], 'brand' => $brandInfo[$value['brand_id']]);
  }

  return array('err' => 0, 'msg' => '', 'glist' => $glist);
}

function prcGetGoodsById($id)
{
  $db = $GLOBALS['db'];
  $data = $db->getRow("select goods_name name, goods_number number, market_price mktprice, shop_price price, goods_img img, goods_desc gdesc from " . DB_PREFIX . "goods where goods_id={$id};");
  if (!$data) {
    return array('err' => 1, 'msg' => 'get goods details by id failed');
  }
  $data['img'] = array($data['img']);

  $doc = new DOMDocument();
  if ($doc->loadHTML($data["gdesc"])) {
    $desc = array();
    $list = $doc->getElementsByTagName("li");
    for ($i = 0; $i < $list->length; $i++) {
      $desc['attr'][] = str_replace("?", "", mb_convert_encoding(utf8_decode($list->item($i)->textContent), 'UTF-8', 'UTF-8'));
      // $txt = utf8_decode($list->item($i)->textContent);
      // echo $txt;
      // exit;
    }
    $pics = $doc->getElementsByTagName("img");
    for ($i = 0; $i < $pics->length; $i++) {
      $desc["pics"][] = ltrim($pics->item($i)->getAttribute("src"), "/");
    }
    $data['gdesc'] = $desc;
  }

  return array('err' => 0, 'msg' => '', 'detail' => $data);
}

function prcGoodsPayed($gid, $number)
{
  if (!$gid || $gid == "null" || $number <= 0 || $number == "null") {
    return array('err' => 1, 'msg' => 'parameter can not be null');
  }

  $db = $GLOBALS['db'];
  $goods = $db->getRow("select goods_number from " . DB_PREFIX . "goods where goods_id={$gid};");
  if (!$goods) {
    return array('err' => 1, 'msg' => 'get goods by id failed');
  }
  $n = $goods['goods_number'] - $number;
  if (!$db->query("update table " . DB_PREFIX . "goods set goods_number={$n} where goods_id={$gid};")) {
    return array('err' => 1, 'msg' => 'update goods number failed');
  }

  return array('err' => 10, 'msg' => '');
}

function prcGetCategory()
{
  $db = $GLOBALS['db'];
  $data = $db->getAll("select cat_id, cat_name, parent_id from " . DB_PREFIX . "category where keywords='wxlp';");
  if (!$data) {
    return array('err' => 1, 'msg' => 'get categories information failed');
  }
  $cats = array();
  $catItems = array();
  foreach ($data as $key => $value) {
    $catItems[$value["cat_id"]] = array('name' => $value['cat_name'], 'pid' => $value['parent_id']);
    if ($value['parent_id'] != 0) {
      $cats[$value['parent_id']][] = $value['cat_id'];
    }
  }

  return array('err' => 0, 'msg' => '', 'catItems' => $catItems, 'cats' => $cats);
}

function prcGetCartList($userid)
{
  if ($userid == "null" || $userid == null) {
    return array('err' => 1, 'msg' => 'parameter can not be null');
  }

  $db = $GLOBALS['db'];
  $rows = $db->getAll("select rec_id recid, goods_id gid, goods_name gname, market_price mktprice, goods_price gprice, goods_number number from " . DB_PREFIX . "cart where is_shipping=0 and user_id={$userid};");
  if ($rows === false) {
    return array('err' => 1, 'msg' => 'can not find items from shopping cart');
  } else if ($row === 0) {
    return array('err' => 0, 'msg' => 'cart is empty');
  }
  $l = count($rows);
  for ($i = 0; $i < $l; $i++) {
    $img = $db->getRow("select goods_thumb img from " . DB_PREFIX . "goods where goods_id={$rows[$i]['gid']};");
    $rows[$i]['img'] = $img['img'];
  }

  return array('err' => 0, 'msg' => '', 'cartlist' => $rows);
}

function prcRemoveFromCart($recid)
{
  if (!$recid || $recid == 'null') {
    return array('err' => 1, 'msg' => 'parameter can not be null');
  }

  $db = $GLOBALS['db'];
  $rowCart = $db->getRow("select goods_id, goods_number from " . DB_PREFIX . "cart where rec_id={$recid}");
  if (!$rowCart) {
    return array('err' => 1, 'msg' => 'get goods details failed');
  }
  $rowGoods = $db->getRow("select goods_number from " . DB_PREFIX . "goods where goodsid={$rowCart['goods_id']}");
  if (!$rowGoods) {
    return array('err' => 1, 'msg' => 'get goods total number failed');
  }
  $n = $rowGoods['goods_number'] - $rowCart['goods_number'];
  if (!$db->query("update table " . DB_PREFIX . "goods set goods_number={$n} where goods_id={$rowCart['goods_id']}")) {
    return array('err' => 1, 'msg' => 'update goods number failed');
  }
  if (!$db->query("delete from " . DB_PREFIX . "cart where rec_id={$recid};")) {
    return array('err' => 1, 'msg' => 'delete cart item failed');
  }

  return array('err' => 1, 'msg' => '');
}

function prcAddInCart($userid, $goodsid, $number)
{
  if ($userid == null || $goodsid == null || $number == null) {
    return array('err' => 1, 'msg' => 'parameters can not be null');
  }

  $db = $GLOBALS['db'];
  $row = $db->getRow("select count(*) c, goods_number from " . DB_PREFIX . "cart where user_id={$userid} and goods_id={$goodsid};");
  $goods = $db->getRow("select goods_name, market_price, shop_price, goods_number from " . DB_PREFIX . "goods where goods_id={$goodsid};");
  if (!$goods) {
    return array('err' => 1, 'msg' => '商品数据错误！');
  } else if ($goods['goods_number'] < $number) {
    return array('err' => 1, 'msg' => '商品数量不足');
  }

  if (!$row || $row['c'] == 0) {
    // add new item into shopping cart
    $gdsName = $goods['goods_name'];
    $mktPrice = $goods['market_price'];
    $gdsPrice = $goods['shop_price'];
    if ($db->query("insert into " . DB_PREFIX . "cart(user_id, goods_id, goods_name, market_price, goods_price, goods_number, is_real) values({$userid}, {$goodsid}, '{$gdsName}', {$mktPrice}, {$gdsPrice}, {$number}, 1);")) {
      return array('err' => 0, 'msg' => '');
    }

    return array('err' => 1, 'msg' => '添加商品到购物车失败');
  } else if ($row['c'] == 1) {
    // add item already exists into shopping cart
    $number += $row['goods_number'];
    if ($db->query("update " . DB_PREFIX . "cart set goods_number={$number} where user_id={$userid} and goods_id={$goodsid};")) {
      return array('err' => 0, 'msg' => '');
    }

    return array('err' => 1, 'msg' => '添加商品到现有购物车失败');
  } else {
    // failed
    return array('err' => 1, 'msg' => '添加购物车失败');
  }
}

function prcDelFromCart($recid, $userid)
{
  if ($recid == null || $userid == null) {
    return array('err' => 1, 'msg' => 'parameters can not be null');
  }

  $db = $GLOBALS['db'];
  if (!$db->query("delete from " . DB_PREFIX . "cart where rec_id={$recid} and user_id={$userid};")) {
    return array('err' => 1, 'msg' => 'can not find deletion item');
  }

  return array('err' => 0, 'msg' => '');
}

function prcGetPrepayId($catname, $detail, $ordersn, $fee, $goodstag, $productid, $openid)
{
  if (!$catname || !$fee || $fee < 0 || !$openid) {
    return array('err' => 1, 'msg' => 'parameters for prepay id invalid');
  }

  $data = array(
    "appid" => APP_ID,
    "mch_id" => MCH_ID,
    "device_info" => "WEB",
    "nonce_str" => prcRandomStr(),
    "sign_type" => "MD5",
    "body" => "富硒健康馆-{$catname}",
    "detail" => $detail,
    "attach" => "富硒健康馆",
    "out_trade_no" => "{$ordersn}",
    "fee_type" => "CNY",
    "total_fee" => $fee,
    "spbill_create_ip" => LOCAL_IP,
    "time_start" => local_date("YmdHis"),
    "time_expire" => local_date("YmdHis", time() + 3600),
    "goods_tag" => $goodstag,
    "notify_url" => "http://www.cfuxi.net/wx/paynotify.php",
    "trade_type" => "JSAPI",
    "product_id" => $productid,
    "limit_pay" => "no_credit",
    "openid" => $openid
  );

  $sign = prcSign($data);
  if (!$sign) {
    return array('err' => 1, 'msg' => 'get signature for prepay id failed');
  }

  $data['sign'] = $sign;
  $xml = null;
  if (!($xml = prcArrayToXml($data))) {
    return array('err' => 1, 'msg' => 'parse prepay array to xml failed');
  }
  $url = "https://api.mch.weixin.qq.com/pay/unifiedorder";
  $curl = curl_init();
  if (!$curl) {
    return array('err' => 1, 'msg' => 'initialize curl for prepay id request failed');
  }
  curl_setopt($curl, CURLOPT_URL, $url);
  curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
  curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
  curl_setopt($curl, CURLOPT_POST, 1);
  curl_setopt($curl, CURLOPT_POSTFIELDS, $xml);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
  $rslt = curl_exec($curl);
  if (!$rslt) {
    return array('err' => 1, 'msg' => "post to wx unified order url failed");
  }
  curl_close($curl);

  $rslt = prcXmlToArry($rslt);
  if (!$rslt) {
    return array('err' => 1, 'msg' => 'parse prepay xml to array failed');
  } else if ($rslt['RETURN_CODE'] != 'SUCCESS') {
    return array('err' => 1, 'msg' => 'unified payment failed, return msg:' . $rslt['RETURN_MSG']);
  }

  return $rslt;

  // ["RETURN_CODE"]=>
  // string(7) "SUCCESS"
  // ["RETURN_MSG"]=>
  // string(2) "OK"
  // ["APPID"]=>
  // string(18) "wx620a7853a7668877"
  // ["MCH_ID"]=>
  // string(10) "1502316521"
  // ["DEVICE_INFO"]=>
  // string(3) "WEB"
  // ["NONCE_STR"]=>
  // string(16) "uN7r8rvRY8QRlFO2"
  // ["SIGN"]=>
  // string(32) "D934EAC9FF9667CD253B6659BD0C8E3B"
  // ["RESULT_CODE"]=>
  // string(7) "SUCCESS"
  // ["PREPAY_ID"]=>
  // string(36) "wx262152457467951fe19e70001138317093"
  // ["TRADE_TYPE"]=>
  // string(5) "JSAPI"
}

function prcGenOrderSn($userid, $goodsid)
{
  $tm = time();

  return "{$tm}-{$userid}-{$goodsid}";
}

function prcGenerateOrder($userid, array $goods, array $addr)
{
  if (!$userid || $userid == "null" || !$goods || !$addr) {
    return array('err' => 1, 'msg' => 'can not generate order with null parameters');
  }
  if (!prcHasValue(array('id', 'name', 'price', 'number'), $goods)) {
    return array('err' => 1, 'msg' => 'goods invalid');
  }
  if (!prcHasValue(array('consignee', 'country', 'province', 'city', 'district', 'address', 'mobile'), $addr)) {
    return array('err' => 1, 'msg' => 'address invalid');
  }

  $db = $GLOBALS['db'];
  $ordersn = prcGenOrderSn($userid, $goods['id']);
  $amount = $goods['price'] * $goods['number'];
  $order = $db->query("insert into " . DB_PREFIX . "order_info(order_sn, user_id, consignee, country, province, city, district, address, mobile, goods_amount) values('{$ordersn}', {$userid}, '{$addr['consignee']}', {$addr['country']}, {$addr['province']}, {$addr['city']}, {$addr['district']}, '{$addr['address']}', '{$addr['mobile']}', {$amount});");
  if (!$order) {
    return array('err' => 1, 'msg' => 'generate order failed');
  }
  $orderid = $db->insert_id();
  if (!$orderid) {
    return array('err' => 1, 'msg' => 'insert new order failed');
  }
  if (!$db->query("insert into " . DB_PREFIX . "order_goods(order_id, goods_id, goods_name, goods_number, goods_price) values({$orderid}, {$goods['id']}, '{$goods['name']}', {$goods['number']}, {$goods['price']});")) {
    return array('err' => 1, 'msg' => 'insert goods in order failed');
  }

  return array('err' => 0, 'msg' => '', 'orderid' => $orderid, 'ordersn' => $ordersn);
}

function prcPayment($openid, $userid, $goodsid, $number, $addr)
{
  if (!$openid || $openid == "null" || !$userid || $userid == "null" || !$goodsid || $goodsid == "null" || !$number || $number == "null" || !$addr || $addr == "null") {
    return array('err' => 1, 'msg' => 'parameters can not be null');
  }
  if ($number <= 0) {
    return array('err' => 1, 'msg' => 'invalid number');
  }

  $db = $GLOBALS['db'];
  $goods = $db->getRow("select goods_id id, cat_id catid, goods_name name, goods_number number, shop_price price from " . DB_PREFIX . "goods where goods_id={$goodsid};");
  if (!$goods) {
    return array('err' => 1, 'msg' => 'get goods by id failed');
  }
  if ($goods['number'] < $number) {
    return array('err' => 1, 'msg' => 'goods number insufficient');
  }
  $goods['number'] = $number;
  $cat = $db->getRow("select cat_name name from " . DB_PREFIX . "category where cat_id={$goods['catid']};");
  if (!$cat) {
    return array('err' => 1, 'msg' => 'get goods category name failed');
  }

  // generate system order
  $order = prcGenerateOrder($userid, $goods, json_decode(str_replace("\\", "", $addr), true));
  if ($order['err'] != 0) {
    return $order;
  }

  /*
		get prepay id
		function prcGetPrepayId($catname, $detail, $orderid, $fee, $goodstag, $productid, $openid)
	*/
  $rslt = prcGetPrepayId($cat['name'], "", $order['ordersn'], $goods['price'] * $number * 100, "", "", $openid);
  if ($rslt['err'] != 0) {
    return $rslt;
  }

  $payment = array(
    'appId' => APP_ID,
    'timeStamp' => (string)time(),
    'nonceStr' => prcRandomStr(),
    'package' => "prepay_id={$rslt['PREPAY_ID']}",
    'signType' => 'MD5'
  );
  $sign = prcSign($payment);
  if (!$sign) {
    return array('err' => 1, 'msg' => 'get payment signature failed');
  }
  $payment['paySign'] = $sign;
  $payment['orderid'] = $order['orderid'];

  return array('err' => 0, 'msg' => '', 'payment' => $payment);
}

function prcChangeOrderStatus($orderid, $type, $status)
{
  if (!$orderid || $orderid == 'null' || $type < 1 || $type > 3 || $status < 0) {
    return array('err' => 1, 'msg' => 'parameters can not be null');
  }

  $db = $GLOBALS['db'];
  if ($type == 1) {
    $type = "order_status";
  } else if ($type == 2) {
    $type = "shipping_status";
  } else if ($type == 3) {
    $type = "pay_status";
  }
  if (!$db->query("update table " . DB_PREFIX . "order_info set {$type}={$status} where order_id={$orderid};")) {
    return array('err' => 1, 'msg' => 'change order status failed');
  }

  return array('err' => 0, 'msg' => '');
}

header('Content-Type:application/json; charset=utf-8');

$req = $_GET["req"];
if ($req == "advs") {
  exit(json_encode(prcGetAdvsList()));
} else if ($req == "best" || $req == "hot" || $req == "new") {
  exit(json_encode(prcGetGoodsByType($req)));
} else if ($req == "goods") {
  exit(json_encode(prcGetGoodsById($_GET["id"])));
} else if ($req == "gpayed") {
  exit(json_encode(prcGoodsPayed($_GET['gid'], $_GET['number'])));
} else if ($req == "cat") {
  exit(json_encode(prcGetCategory()));
} else if ($req == "glist") {
  exit(json_encode(prcGetGoodsByCatId($_GET["catid"])));
} else if ($req == "cart") {
  if ($_GET['opt'] == "list") {
    exit(json_encode(prcGetCartList($_GET['userid'])));
  } else if ($_GET['opt'] == "remove") {
    exit(json_encode(prcRemoveFromCart($_GET['recid'])));
  }
} else if ($req == "addincart") {
  exit(json_encode(prcAddInCart($_GET['userid'], $_GET['goodsid'], $_GET['number'])));
} else if ($req == "delfromcart") {
  exit(json_encode(prcDelFromCart($_GET['recid'], $_GET['userid'])));
} else if ($req == "payment") {
  exit(json_encode(prcPayment($_GET['openid'], $_GET['userid'], $_GET['goodsid'], $_GET['number'], $_GET['addr'])));
} else if ($req == "orderstatus") {
  exit(json_encode(prcChangeOrderStatus($_GET['orderid'], $_GET['type'], $_GET['status'])));
} else if ($req == 'test') {
  var_dump(time());
}
