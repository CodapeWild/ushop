<?php

define('IN_ECS', true);

function prcRandomStr()
{
  return substr(str_shuffle("QWE1R2T3YUI5OPA4SD6F7G8H9J0KLZXCVBNM"), 2, 32);
}

function prcSign(array $data)
{
  if (!$data) {
    return false;
  }

  if (!ksort($data)) {
    return false;
  }
  $keys = array_keys($data);
  $l = count($keys);
  $dest = "";
  for ($i = 0; $i < $l; $i++) {
    if (!$data[$keys[$i]]) {
      continue;
    }
    $dest .= "{$keys[$i]}={$data[$keys[$i]]}&";
  }
  $apikey = "3a37c92a48ccaaf245cb1599b1f72521";
  $dest .= "key={$apikey}";

  return strtoupper(md5($dest));
}

function prcArrayToXml(array $data)
{
  if (!$data) {
    return false;
  }

  $dest = "<xml>";
  foreach ($data as $k => $v) {
    $dest .= "<{$k}>{$v}</{$k}>";
  }
  $dest .= "</xml>";

  return $dest;
}

function prcXmlToArry($xml)
{
  if (!$xml) {
    return false;
  }

  $parser = xml_parser_create();
  xml_parse_into_struct($parser, $xml, $src, $index);
  xml_parser_free($parser);
  $dest = null;
  foreach ($index as $k => $v) {
    if ($k == 'xml' || $k == 'XML') {
      continue;
    }
    $dest[$src[$v[0]]['tag']] = $src[$v[0]]['value'];
  }

  return $dest;
}

function prcHasValue(array $keys, array $data)
{
  foreach ($keys as $v) {
    if (!array_key_exists($v, $data) || !$data[$v]) {
      return false;
    }
  }

  return true;
}

function prcHasEmptyValue(array $data)
{
  foreach ($data as $value) {
    if (!$value) {
      return true;
    }
  }

  return false;
}
