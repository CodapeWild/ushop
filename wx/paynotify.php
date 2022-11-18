<?php

if ($_SERVER['REQUEST_METHOD'] != 'POST') {
  exit;
}

define('IN_ECS', true);

require(dirname(dirname(__FILE__)) . '/includes/init.php');
require('./utile.php');

function prcReturn($code, $msg)
{
  echo "<xml>
					<return_code>{$code}</return_code>
					<return_msg>{$msg}</return_mag>
				</xml>";

  exit;
}

$data = prcXmlToArry(file_get_contents("php://input"));
if (!$data) {
  prcReturn("FAIL", "parse xml failed");

  exit;
}

$wxSign = $data['sign'];
unset($data['sign']);
ksort($data);
$sign = prcSign($data);
if ($wxSign != $sign) {
  prcReturn("FAIL", "signiture verification failed");

  exit;
}

if ($data['return_code'] == 'SUCCESS') {
  prcReturn("SUCCESS", "ok");

  exit;
}
