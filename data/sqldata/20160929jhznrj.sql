-- ecshop v2.x SQL Dump Program
-- http://localhost
--
-- DATE : 2016-09-29 10:17:34
-- MYSQL SERVER VERSION : 5.5.40
-- PHP VERSION : 5.3.29
-- ECShop VERSION : v2.7.3
-- Vol : 1
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_admin_user` ( `user_id`, `user_name`, `email`, `password`, `ec_salt`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `suppliers_id`, `todolist`, `role_id` ) VALUES  ('1', 'admin', '123456@qq.com', '80a03421a42c742b7d56f47891a153f4', '5641', '1459203858', '1475086643', '0.0.0.0', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', '', '0');
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('1', '5');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('1', '6');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('1', '8');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('1', '52');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('1', '55');
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('1', '2', '免责条款', '', '', '', '', '0', '1', '1459232658', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('2', '2', '隐私保护', '', '', '', '', '0', '1', '1459232658', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('3', '2', '咨询热点', '', '', '', '', '0', '1', '1459232658', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('4', '2', '联系我们', '', '', '', '', '0', '1', '1459232658', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('5', '2', '公司简�\�', '', '', '', '', '0', '1', '1459232658', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1459232658', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('18', '5', '用户注册', '<p>注册登录</p>\r\n<div>&nbsp;</div>\r\n<div>第一步：点击首页顶部免费注册进入注册页面�\�</div>\r\n<div>&nbsp;</div>\r\n<div>第二步：您可通过邮箱/手机号码进行注册，按照提示填写准确信息，点击提交&ldquo;立即注册&rdquo;�\�</div>\r\n<div>&nbsp;</div>\r\n<div>注：请务必填写正确有效的邮箱地址，找回密码时需要到邮箱查询新密码邮件�\�</div>\r\n<div>&nbsp;</div>\r\n<div>第三步：注册完成后，点击当当首页顶部&ldquo;登录&rdquo;正常登录账户即可�\�</div>\r\n<div>&nbsp;</div>', 'admin', '', '', '0', '1', '1459447665', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('19', '5', '购物流程', '<p>搜索商品</p>\r\n<div>您可在首页搜索框内输入关键字搜索商品，也可点击高级搜�\�-批量搜索进行搜索商品，还可以点击首页左侧的分类导航查找您需要的商品�\�</div>\r\n<div>&nbsp;</div>\r\n<div>放入购物�\�</div>\r\n<div>在搜索页或单品页面点�\�&ldquo;购买&rdquo;商品会添加到购物车中，您还可以继续挑选商品放入购物车，一起结算�\�</div>\r\n<div>&nbsp;</div>\r\n<div>1）在购物车中，系统默认每件商品的订购数量�\�1件，如果您想购买多件商品，可修改购买数量�\�</div>\r\n<div>&nbsp;</div>\r\n<div>2）在购物车中，您可以将商品移至收�\� ，或是选择删除，或可以进行清空购物车的操作，重新挑选�\�</div>\r\n<div>&nbsp;</div>\r\n<div>3）在购物车中，您可以直接查看到商品的优惠折和参加促销活动的商品名称、促销主题，或查看自营&ldquo;运费说明&rdquo;�\�</div>\r\n<div>&nbsp;</div>\r\n<div>4）购物车页面下方的商品依次为：您收藏的商品、购买以上商品的顾客还买过的商品、重点品推荐，若有您需要的商品，点�\�&ldquo;放入购物�\�&rdquo;即可�\�</div>\r\n<div>&nbsp;</div>\r\n<div>温馨提示�\�</div>\r\n<div>1）商品价格会不定期调整，最终价格以您提交订单后订单中的价格为准�\�</div>\r\n<div>2）优惠政策、配送时间、运费收取标准等都有可能进行调整，最终成交信息以您提交订单时网站公布的最 新信息为准�\�</div>\r\n<div>3）账户登录状态下放入购物车的商品，更换电脑后仍可看到购物车中的商品；账户未登录状态下放入购物车的商品，更换电脑后将无法看到购物车中的商品�\�</div>\r\n<div>&nbsp;</div>\r\n<div>提交订单</div>\r\n<div>详细填写收货人信息、送货方式、支付方式、发票信息、是否作为礼品赠送他人等信息，确认无误后�\� �\�&ldquo;提交订单&rdquo;，生成新订单号码。您可进�\�&ldquo;我的订单&rdquo;查看订单详细信息�\�</div>\r\n<div>&nbsp;</div>\r\n<div>收货后评�\�</div>\r\n<div>收货后可以在&ldquo;我的订单&rdquo;中对购买的商品和本次购买商品过程中的服务进行评论�\�</div>', '', '', '', '0', '1', '1459447717', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('20', '5', '购物保障', '<p>(1.)服务支持&nbsp;</p>\r\n<div>您在购物过程中遇到任何问题，都可以联系客服寻求帮助�\�</div>\r\n<div>&nbsp;</div>\r\n<div>(2.)正品保障</div>\r\n<div>坚持&ldquo;诚信为本&rdquo;的经营理念，我们保证所售商品均为正品，如果您认为购买的商品是假货，并能提供国家相关质检机构的证明文件，我们会按照国家法律规定予以处理�\�</div>\r\n<div>&nbsp;</div>', 'admin', '', '', '0', '1', '1459447726', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('21', '5', '发票制度', '<p>1.电子发票</p>\r\n<div>1）发票说明：</div>\r\n<div>电子发票是指在购销商品、提供或者接受服务以及从事其他经营活动中，开具、收取的以电子方式存储的收付款凭证。当当开具的电子发票均为真实有效的合法发票，与传统纸质发票具有同等法律效力，可作为用户维权、保修凭据、单位报销�\�</div>\r\n<div>2）如何获得发票：</div>\r\n<div>下单时，�\�&ldquo;发票信息&rdquo;处，选择&ldquo;电子发票&rdquo;，填写发票抬头、发票内容，点击&ldquo;确认发票信息&rdquo;，用户可在商品送达后的1天，进入&ldquo;我的订单&rdquo;下载电子发票�\�</div>\r\n<div>2.普通纸质发�\�</div>\r\n<div>1）发票说明：</div>\r\n<div>本公司所使用的发票是经税务局批准的正规自印发票，因自印发票不在税务系统上显示，所以消费者无法在税务网上查询到相关信息。根据中国税法及税务管理部门的要求，当当物流中心就其所销售的商品各自开具发票，因此您收到的发票可能�\�&ldquo;当当网信息技术（天津）有限公司发票专用章&rdquo;�\�&ldquo;无锡当当网信息技术有限公司发票专用章&rdquo;�\�&ldquo;当当网信息技术（四川）有限公司发票专用章&rdquo;，所有当当开具的发票均合法有效�\�</div>\r\n<div>2）如何获得发票：</div>\r\n<div>下单时，�\�&ldquo;发票信息&rdquo;处，选择&ldquo;普通发�\�&rdquo;，填写发票抬头、发票内容，点击&ldquo;确认发票信息&rdquo;，发票会和您的订单一起送达�\�</div>\r\n<div>&nbsp;</div>', 'admin', '', '', '0', '1', '1459447737', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('22', '6', '配送范围及标准', '<p>免邮标准</p>\r\n<p>商家运费标准以各店铺中页面说明为�\�</p>\r\n<p>配送范�\�</p>\r\n<div>请您根据收货人地址选择正确的省、市、区/县后，系统会提示您可供选择的送货方式及相关配送信息�\�</div>', 'admin', '', '', '0', '1', '1459447833', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('23', '6', '当日�\�/次日�\�', '<p>服务说明</p>\r\n<div>为了给您提供更快收货、更多选择的贴心服务，我们推出了当日�\�/次日达的增值服务，并且不会增加您额外的服务费用�\�</div>\r\n<div>&nbsp;</div>\r\n<div>1)当日递服务说明：购买自营商品，当�\�10:30前下单，并在当日13:00前完成出库的订单，当日送达（商家商品、移仓调货及非对应发货地发货除外）�\�</div>\r\n<div>&nbsp;</div>\r\n<div>2)次日达服务说明：购买自营商品，当�\�23:00前下单（以从对应发货地完成出库时间开始计算），次日送达（商家商品、移仓调货及非对应发货地发货除外）�\�</div>\r\n<div>&nbsp;</div>', 'admin', '', '', '0', '1', '1459447920', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('24', '6', '订单自提', '<p>1.提货流程</p>\r\n<div>1)客户在提交自提订单后，待订单状态显�\�&ldquo;上门自提&rdquo;或者收到的短信或邮件通知�\�,可前往相应自提点提货（其他�\� 单状态请勿前来自提）�\�</div>\r\n<div>2)客户到达自提点后,请将订单编号提供给工作人员�\�</div>\r\n<div>3)货物交接时请提供订单编号及收货人姓名并支付货款。如果您的订单已支付，提货时请出示收货人身份证，非本人提货时取货人请出示收货人与取货人身份证�\�</div>\r\n<div>4)客户签收后取走货物。查看签收与验货政策&gt;&gt;</div>\r\n<div>&nbsp;</div>\r\n<div>2.注意事项</div>\r\n<div>1)收货地址支持自提服务，同时订单金�\�29元（含）以上，可在下单时选择自提�\�</div>\r\n<div>2)商品到达自提点后，我们将为您保留三天，超过三天默认取消订�\� �\� &nbsp;</div>\r\n<div>3)货款和商品请在自提点前台当面点清，离开提货前台后将不再对货款和商品数量负责�\�&nbsp;</div>\r\n<div>4)自提点暂不接收任何形式的退换货，请勿将货品邮递或主动送回自提点�\�</div>\r\n<div>5)自提点不提供发票，请在自提后联系客服办理补开</div>', 'admin', '', '', '0', '1', '1459447929', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('25', '6', '验货与签�\�', '<p>1.快递送货上门的订�\�</p>\r\n<div>1)快递员会配合您打开包装验货（必须用小刀在粘贴胶带处整齐划开，不允许撕坏包装箱）�\�</div>\r\n<div>2)验货须知：快递送货上门时，若商品包装上�\�&ldquo;封签�\�&rdquo;，需先签收后再开箱验货�\�</div>\r\n<div>3)验货内容：包括商品及配件、商品数量、发货清单、发票（如有）、三包凭证（如有）等�\�</div>\r\n<div>4)验货异常：验货后，若发现商品错发、商品少发、商品有表面质量等影响签收因素问题，可当场向送货员说明情况并拒签�\�</div>\r\n<div>&nbsp;</div>\r\n<div>2.邮局邮寄的订�\�</div>\r\n<div>1)请您一定要小心开包，以免尖锐物件损伤到包裹内的商品�\�</div>\r\n<div>2)验货内容：包括商品及配件、商品数量、发货清单、发票（如有）、三包凭证（如有）等�\�</div>\r\n<div>3)验货异常：若包装破损、商品错误、商品少发、商品存在表面质量问题等，您可以选择整单拒签；或是要求邮局开具相关证明后签收，然后登陆申请退货或申请换货�\�</div>\r\n<div>&nbsp;</div>', 'admin', '', '', '0', '1', '1459448096', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('26', '7', '货到付款', '<p>1)货到付款分货到现金支付、货到POS机刷卡、货到支付宝扫码三种支付方式�\�</p>\r\n<p>2)货到付款城市全部支持货到现金支付�\�</p>\r\n<div>温馨提示�\�</div>\r\n<div>1)签收时，请您仔细核对款项、务必做到货款两清，若事后发现款项错误，我们将无法再核实确认点击查看验货与签收�\�</div>\r\n<div>2)部分商家不支持货到付款，请您通过网上支付、银行转账方式支付�\�</div>\r\n<div>&nbsp;</div>', 'admin', '', '', '0', '1', '1459448265', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('27', '7', '网上支付', '<p>&nbsp; &nbsp; &nbsp; &nbsp;我们为您提供银行卡在线支付（招商银行、建设银行、农业银行、中国银行）和网上第三方平台支付（银联支付、财付通支付、快钱网上支付、支付宝支付、手机支付、微信支付、首信支付平台支持的国外信用卡支付）的支付方式。目前各银行对于网上支付均有一定金额的限制，由于各银行政策不同，建议您在申请网上支付功能时向银行咨询相关事宜�\�</p>', 'admin', '', '', '0', '1', '1459448274', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('28', '7', '礼品卡支�\�', '<p>&nbsp;1)礼品卡简�\�</p>\r\n<div>&nbsp; &nbsp; 一张送礼更有面子的『卡』，一种闪电般快速的支付方式，一个既有个性又能省钱的网购主张�\�</div>\r\n<div>&nbsp;</div>\r\n<div>2)礼品卡支付的优势：时尚、便捷、有折扣�\�</div>\r\n<div>&nbsp; a.时尚：送东西怕人家不满意、送钱又显得太俗气，不如来张礼品卡�\�&nbsp;</div>\r\n<div>&nbsp; b.便捷：省去了准备零钱的麻烦，免去了登录网银的繁琐，节约了跑银行办理转账的时间�\�&nbsp;</div>\r\n<div>&nbsp; c.有折扣：可以拉着亲朋好友一�\�&ldquo;拼单&rdquo;买，人数越多、优惠越多！</div>', 'admin', '', '', '0', '1', '1459448284', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('29', '7', '银行转帐', '<p>&nbsp;1)国内顾客可以通过全国任何一家银行，向在北京银行、建设银行、农业银行、招商银行开立的账户汇款�\�</p>\r\n<div>2)到款时间一般为办理转帐手续之后�\�1-3个工作日内�\�</div>\r\n<div>3)订单提交成功后，请您及时汇款，汇款完毕后请务必进入订单信息页面填�\�&ldquo;付款确认&rdquo;，如�\�24小时内未填写付款信息，订单将会被系统自动取消�\�</div>\r\n<div>&nbsp;</div>', 'admin', '', '', '0', '1', '1459448293', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('30', '8', '我的订单', '<p>&nbsp;用通过&ldquo;用户�\�&rdquo;�\�&ldquo;密码&rdquo;登录查看自己的订单�\�</p>\r\n<p>&nbsp;订单状态变�\�&ldquo;已发�\�&rdquo;后，您可登录&ldquo;我的订单&rdquo;，点击订单号进入订单详情，查看订单配送信息及预计送达时间，也可拨打快递公司电话，提供订单号（若为分包裹订单，需提供包裹号）进行查询.</p>\r\n<div><span style=\"font-size: 12px;\"><br />\r\n</span></div>', 'admin', '', '', '0', '1', '1459448427', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('31', '8', '招商报名', '<p>详情请咨询客服人员�\�</p>', 'admin', '', '', '0', '1', '1459448437', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('32', '8', '商家中心', '<p>&nbsp;<span style=\"font-size: 13.3333px;\">详情请咨询客服人员�\�</span></p>', 'admin', '', '', '0', '1', '1459448447', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('33', '8', '运营服务', '<p>&nbsp;<span style=\"font-size: 13.3333px;\">详情请咨询客服人员�\�</span></p>', 'admin', '', '', '0', '1', '1459448456', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('34', '20', '小孩缺硒有什么特�\�', '<p><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: rgb(255, 102, 0);\"><strong>硒缺乏的表现</strong></span>主要是脱发、脱甲，部分患者出现皮肤症状，少数患者可出现神经症状及牙齿损 害。人轻度或中度缺硒，其征兆或症状不明显�\� 人体缺硒可能产生的疾病：能量缺乏性营养不良、血溶性贫血、克山病、大骨节病、高血压、缺血性心脏病、肝硬化、胰腺炎、纤维瘤、癌症、肌瘤、不妊症、糖�\� 病、白内障�\�</span></p>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; �\�,成年人每天约需0.4毫克。硒具有抗氧化，保护红细胞的功用，并发现有预防癌症的作用�\�</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; 　富含硒元素的食物主要有各种植物油、鲜蔬菜和水果类，还有贝类、蛋类、坚果类，小麦、玉米、大白菜、南瓜、大蒜和海产品等�\�</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; 　黄油、鱼粉、龙虾、蘑菇、猪肾、大蒜等食物虽然含有一定的硒元素，但吸收率不太理想。营养学家提倡补充有机硒，如硒酸酯多糖、硒酵母、硒蛋、富硒蘑菇、富硒麦芽、富硒天麻、富硒茶叶、富硒大米等�\�</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp;蛋类含硒量多于肉�\�,�\�100克食物中,猪肉含硒10.6微克,鸡蛋含硒23.3微克,鸭蛋含硒30.7微克,鹅蛋含硒33.6微克,人参含硒15微克,花生含硒13.7微克。植物性食物的硒含量决定于当地水土中的硒含�\�,例如,我国高硒地区所产粮食的硒含量高达每公斤4~8毫克,而低硒地区的粮食是每公斤0.006毫克,二者相�\�1000倍�\�</span></div>\r\n<div><span style=\"font-size: medium;\">　</span><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">硒可降低抑郁和焦虑等负性情�\�</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp;专家对健康男性饮食中硒水平进行研究后发现，男性情绪与血小板中硒依赖酶的活动呈明显正相关，硒依赖酶活性越强，男性情绪状态越好。在芬兰一家老人疗养所中，专家用硒治疗30名患者发现，硒治疗组患者的抑郁、焦虑、对周围环境的兴趣以及疲劳等均得到明显改善，他们认为，这些改变可能与硒具有抗氧化作用有关�\�</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; </span><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">&nbsp; 硒影响人体情绪的三种原因�\�</span></strong></span><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">1．硒是甲状腺激素合成和代谢过程中的必需物质，当硒缺乏时，必然会引起甲状腺功能的下降，从而导致抑郁的发生�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">2．硒的缺乏会降低机体的免疫功能，而免疫功能的降低恰恰是抑郁症患者的一个特点�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">3．硒是体内谷胱甘肽过氧化物酶的必要组成成分，而后者正是保护机体神经、避免组织损害的重要抗氧化酶，其在精神障碍的发病中起到一定作用�\�</span><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　临床研究发现，营养不良的儿童的血液中硒含量很低，如果给这些儿童只提供蛋白质等优质膳食而不增加足够的硒，这些儿童的生长发育情况没有明显改善，只有补充足够的硒才能有良好的效果。因此儿童补硒有利于生长发育�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326215', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('35', '20', '饮食生活要规�\� 适当补硒防感�\�', '<p><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp;平日饮食要坚持有规律的饮食。专家认为，合理的一日三餐的进食量比例是：早3、午4、晚3�\�60岁以上的老年人应为：�\�4、午4、晚2�\�</span></p>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp;节日期间，正常三餐往往被打乱，晚餐非常丰盛，同时，由于睡眠推迟，早饭不吃，晚饭多吃，使得人的血脂、血糖、尿酸容易升高，不利于冠心病、糖尿病的控制，所以节日里老年人和本身就有疾病的人更应注意保持正常的饮食规律�\�</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp;此外，还要注意适当休息，不要睡得太晚，不能让负担已重的胃肠道和精神体力都超负荷运转，不然对节后的工作生活都会有影响。春节期间也是感冒高发季节，适当补硒增强免疫力，有利于预防感冒发生�\�</span><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　总之，一切的和谐与平衡，健康与健美，成功与幸福，都是由乐观向上的心理引导的。愉快的心情和积极、乐观的生活态度可以战胜疾病，更可以提高生活质量，使人健康和长寿。因此，新春佳节，更是要保持乐观和愉快的心情�\�</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326250', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('36', '20', '常饮富硒�\� 可解烟之�\�', '<p><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; 据世界卫生组织、英国帝国癌症研究基金会和美国癌症协会共同完成的一份关于吸烟的调查报告说，目前全世界每10秒钟就有1人死于吸烟所引起的疾病，每年全世界至少有315万人因吸烟而丧生，而且这个数字还在增加；而中国吸烟人数已高达3亿多，每年消耗香�\�1�\�5干多亿支，占全世界消耗总量�\�30%以上，中国的中年男人70%吸烟，每分钟就有1人死于吸烟。若中国烟民人数还在增加的话，预计每分钟将有5人死于吸烟。这对吸烟者来说，无疑是一个值得警惕的信号�\�</span></p>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; 从健康角度考虑，戒烟势在必行。而对那些一时还难以戒掉烟痛的吸烟者来说，饮硒茶则是减轻吸烟危害的最好方法。因为硒茶中的茶多酚、有机硒等成分对香烟中所含有的各种有害物质有降解作用，边饮硒茶边吸烟，毒素可随饮茶不断解除，通过粪便排出体外。吸烟者常饮硒茶，主要有以下好处：</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">一�\� 可以减轻吸烟诱发癌症的可能性�\�</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">香烟的烟雾里含有4千多种化学物质，其中50种以上化学物质属于致癌物质，而且经过呼吸道吸收又最有利于这些香烟中致癌物质在全身扩散。长期吸烟不仅可以导致肺癌，还可能得食道癌、喉癌、胰腺癌、肾癌。膀胱癌等各种癌症，尤其是肺癌患者中吸烟者要�\�80%�\�99.5%。茶叶中的茶多酚和有机硒能抑制自由基的释放，控制癌细胞的增殖�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">自由基是人体在呼吸代谢过程中，在消耗氧的同时产生的一组有�\�&ldquo;垃圾&rdquo;。它几乎存在于人体的每一个细胞之中，是人体的一大隐患和&ldquo;定时炸弹&rdquo;。研究表明，自由基也是造成基因变异、致癌的重要原因。香烟是自由基发生剂，据测定，人们每吸一日烟就可产生10�\�17次方个自由基，吸烟会破坏这种动态平衡。自由基产生过多，人体致癌的可能性也加大了�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">茶叶中茶多酚的主体儿茶素类物质是一种抗氧化剂，也是一种自由基强抑制剂。它可以抑制由于吸烟引起的肿瘤发生。绿茶中的茶多酚清除自由基的能力较强，它们对超氧阴离子自由基具有很强的清除效应�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">南京中山肿瘤研究所阎玉森经试验发现，茶多酚含有机硒进入人体后能与致癌物结合，使其分解，降低致癌活性，从而抑制致癌细胞的生长。美国健康基金会名誉会长约翰&middot;韦斯博格博士说：&ldquo;我的研究结果表明，如果你每天�\�6杯茶，就可以不得癌症 &rdquo;�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">二是 可以有助于减轻由于吸烟所引起的辐射污染�\�</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">据美国马萨诸塞大学医疗中心的约瑟�\�&middot;迪法兰赞博士估计，每天吸30支烟的人，他的肺部在一年内得到香烟中放射性物质的辐射量相当于他的皮肤在胸腔X光机上透视了大�\�300次�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">而饮硒茶能有效地阻止放射性物质侵入骨髓并可使�\�90和钻60迅速排出体外，茶叶中的儿茶素类物质和脂多糖物质可减轻辐射对人体的危害，对造血功能有显着的保护作用。用茶叶片剂治疗由于放射引起轻度辐射病的临床试验表明，其总有效率可达90%�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">三是 可以防治由于吸烟而促发的白内障�\�</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">科学研究发现，吸烟正成为危害眼睛健康的大敌，会促发白内障。在我国不明原因的失明者中就有4%的人是因为吸烟引起的�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">加拿大科学家却发现，多饮茶可以防止白内障。他们认为，白内障是由于人体内氧化反应产生的自由基作用于眼球�\� 晶状体所致，而硒茶中的有机硒分解产生的具有抗氧化作用的代谢物可以阻止体内产生自由基的氧化反应的发生�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">另外，美国农业部营养与衰老研究中心的科学家们最近发现，白内障的发病率与人体血浆中胡萝卜素含量高低及浓度大小关系密切。凡是白内障患者，其血浆中胡萝卜素浓度往往很低，且发病率比正常人高3�\�4倍。硒茶中含有比一般蔬菜和水果都高得多的胡萝卜素�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">胡萝卜素不仅有防止白内障、保护眼睛的作用，同时还有防癌抗癌、抗尼古丁、解烟毒的作用。吸烟者饮硒茶对保护视力是有好处的�\�</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326300', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('37', '20', '补硒有利于减少心血管疾病发�\�', '<p><span style=\"font-size: medium;\">&nbsp;研究发现，在美国系统和芬兰等国家的高硒地区，冠心病、高血压发病率明显低于低硒地区，脑血栓、风湿性心脏病、动脉硬化死亡率也明显低于低硒地区，这些结果均表明，硒在维持心血管正常结构和功能方面上起着重要作用。缺硒是导致心肌病、冠心病、高血压等心血管疾病高发的重要因素。而补硒不仅可以减少心血管疾病的发生，改善症状，还可以提高抵抗疾病的能力�\�&nbsp;</span></p>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"color: rgb(255, 0, 0);\"><strong><span style=\"font-size: medium;\">&nbsp;四重保护抵御心血管疾�\�</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒是人体必需的微量元素。在维持心脏生理功能，预防疾病方面起着重要的作用。通常，硒通过四重保护，即清垃圾、调血脂、抗老化、调免疫来防治心血管疾病的发生�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">清垃�\�</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">心血管疾病患者血浆中有害的脂质过氧化物浓度较高，可促使血液中部分微小有形物在血�\� 壁上沉积，形成冠状动脉粥样硬化斑块，可引发冠心病。而硒可以清除脂质过氧化物，保护动脉血�\� 壁上细胞膜的完整，阻止动脉粥样硬化，起到减少血栓形成，预防心肌梗死的作用�\� 纳米硒，四通，红色单质�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">调血�\�</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">胆固醇是健康的大敌。当血胆固醇增高时，容易形成动脉粥样硬化斑块，阻塞血液流入相�\� 部位，引发多种心血管疾病。而硒依靠其强大的抗氧化功能，可调节体内胆固醇及三酰甘油代谢，降低血黏度，预防心血管疾病发生�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">抗老化</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">研究证实，加速中老年人血管壁老化的主要物质是有害自由基，通过清除有害自由基，可以 延缓血管壁衰老。而硒是强抗氧化剂，能及时清除体内的有害自由基，防止人体血管老化，预防心肌梗死，中风(卒中)等心血管疾病的发生�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"color: rgb(255, 102, 0);\"><strong><span style=\"font-size: medium;\">调免�\�</span></strong></span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒与人体免疫功能有关。缺硒可导致免疫能力低下，而补硒可提高机体免疫力。临床证实， 给心血管疾病患者补硒，可有效调节身体免疫功能，提高患者对心血管疾病的抵御能力，防止并发症产生�\�&nbsp;</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">总之，硒是生物保健、医学等研究领域的热点。有流行病学、基础及临床研究支持。在防治心血管疾 病方面，适当补硒可保护心肌细胞，改善心室收缩和舒张性能，避免心脏缺血和缺氧性损伤�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">专家建议�\�50岁以上人群应补硒　硒在人体新陈代谢中有重要作用，已经证实，缺硒有可能会直接导致40多种疾病的发生，间接影响 400多种疾病的发生。我国属于低硒土壤区域，位于&ldquo;土壤&mdash;植物&mdash;动物&rdquo;食物链终端的人类，饮�\� 中的硒含量明显缺乏，尤其是近年来，随着膳食结构和饮食方式的变化，摄入硒不足的人群逐年增多 。一旦硒摄取量不足，�\�&ldquo;心血管疾�\�&rdquo;这类慢性疾病则迁延难愈，需要强调的是，50岁以上的人群�\� 未来10年内发生心血管疾病的可能性比一般人群高，专家建议：50岁以上人群可在医生指导下适当�\� 充硒制品�\�</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326368', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('38', '20', '科学补硒,神奇的护肝效�\�', '<p><span style=\"font-size: medium;\">&nbsp;肝脏是人体重要的免疫器官，它被人们称为人体的&ldquo;生命�\�&rdquo;，人体的各种代谢和解毒、免疫功能都靠肝脏承担。肝脏一旦得病，对人体危害极大。我国是&ldquo;肝病大国&rdquo;，据世界卫生组织统计，我国的肝病患者至少有1.2亿之众，占世界肝病患者总数的三分之一还多。长期以来，中国人饱受肝病之苦�\�</span></p>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">科学补硒，开辟保肝新途径</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒是人体必需的微量元素�\�20世纪50年代，美国科学家施瓦茨发现了一种叫&ldquo;�\�3因子&rdquo;的物质，有着经检测发现，这就是硒，硒也因其卓越的保肝、护肝功能而被专家们称�\�&ldquo;抗肝坏死保护因子&rdquo;�\� 为证实肝病与硒的关系，中国医学科学院肿瘤研究所着名专家于树玉教授历经16年，在江苏启东对13万居民进行补硒观察，结果发现补硒使肝炎病人减�\�35%，而肝癌患者特别是有家族病史的，长期补硒可使肝癌的发病率下降一半。于树玉等专家关�\�&ldquo;硒预防肝癌研�\�&rdquo;的突破性科研成果，使他们荣获了国际生物无机化学家协会授予的&ldquo;施瓦茨奖&rdquo;。这是中国人第二次获此殊荣，也是中国科学家阐明硒的机理的重大贡献的又一铭志�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">科学研究表明：肝脏是个大&ldquo;�\�&rdquo;库，人体中含硒最丰富的器官之一就是肝，但大量临床检测发现，肝病患者体内普遍缺乏硒元素，并且肝病患者病情越严重，血液中的含硒水平越低，而补硒则有利于肝病患者病情的好转�\�1995年《第三军医大学学报》报道：肝癌、肝硬化、重型肝炎、慢性活动性肝炎、无病症肝炎病毒携带者体内硒含量明显低于健康人；1995年《中国传染病学杂志》报道：乙肝患者补�\�2个月，血硒恢复正常，转氨酶、胆红素和白蛋白恢复得更好；2000年《黑龙江医学科学》也曾报道：乙肝患者每日补硒，连服1个月，食欲缺乏、乏力、腹胀、肝区不适以及ALT/AST/TB均可得到恢复�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">�\�&mdash;&mdash;四大功能，保护肝�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">功能一：增强免疫功能，减少肝病的反�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">肝病患者普遍免疫功能低下，其最明显的表现就是体内的病毒难于完全清除，病情容易反复发作。而硒是强效免疫调节剂，可刺激体液免疫和细胞免疫系统，增强机体的免疫功能，提高肝脏自身的抗病能力，从而有助于防止肝病病情的反复发作。另外，免疫功能的增强，有利于改善肝病患者多种症状，如甲型、乙型肝炎患者补硒能够在相对较短的时间内，大大改善食欲缺乏、乏力、面容晦暗等症状�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">功能二：提高抗氧化能力，预防肝纤维化</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">肝病的发展有&ldquo;肝炎&rarr;肝硬�\�&rarr;肝癌&rdquo; 三部曲之说，肝纤维化是肝病向肝硬化、肝癌转化的过程，抑制肝纤维化，就能减少肝硬化、肝癌的发生。肝病患者体内往往缺硒，这会引起机体抗氧化能力的下降，造成 &ldquo;自由�\�&rdquo;的清除受到阻碍，过多的自由基会损伤肝脏，引发肝纤维化。硒是强抗氧化剂，补硒可提高体内&ldquo;含硒�\�&rdquo;活性，全面提高人体抗氧化能力，及时清除有害自由基，保护肝脏，促进肝功能恢复，防止肝纤维化，预防肝硬化、肝癌的发生�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">功能三：阻断病毒突变，加速病体康�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">肝病多是病毒引起，而病毒在人体缺硒时极易变异。研究发现，补硒有利于阻断病毒的变异，促进病体的康复�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">功能四：解毒除害，保护肝�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒具有良好的解毒功能，能拮抗多种有毒重金属物�\�(如：汞、铅、苯、砷�\�)和一些有害化合物，从而减少环境中有毒物质对肝脏的伤害�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">肝病病人如何选择硒元�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒元素主要有三种类型：无机硒、有机硒、纳米硒(活性红色单质硒)，三者之间在安全性与生物活性方面有着显着的差异，由纳米技术制备而成的纳米硒，平均颗粒直径仅�\�36纳米，特别容易被人体吸收、利用，具有高生物活性，在安全性方面，经权威的中国疾控中心食品营养与安全研究所检测表明，纳米硒是所有硒制品中最安全的。所以，肝病患者及其他各类需长期补硒人群可选择安全、高效的纳米硒服用�\�</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326387', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('39', '20', '硒对维护人类健康有着重要作用', '<p><span style=\"font-size: medium;\">&nbsp;一、硒对维护人类健康有重要作用</span></p>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒对人体健康的作用是广谱的，有多种免疫与生物学功能，尤其是它的预防心血管病、抗肿瘤、对抗病毒性疾病以及抗衰老等作用，近年来特别引起人们的关注，研究亦证实，硒是多种酶的活性中心，在生命活动中起到抵御疾病、防止衰老、增强免疫功能的作用，从而使身体功能处于最佳状态�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒对人类健康的贡献可以归纳为以下几点�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">１、抗氧化作用</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒可以使有毒性的过氧化物还原为无害的物质，使过氧化物分解，清除自由基，保护细胞膜结构和功能，修复分子损伤部位，增强机体免疫力�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">２、促进生�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　促进体内多种代谢活动，促进生长�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">３、保护心血�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒是肌肉的正常成分。缺硒会使骨胳肌萎缩和呈灰白色条纹，发生心肌受损，脂质增多，钙质沉积，补硒则可以预防多种疾病的发生。例如，硒可以保护心血管和心肌的健康，降低心血管病的发病率�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">４、解毒作�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">拮搞和降低多种重金属的毒性作用。可与银、汞、铅等重金属形成不溶性物质，对人体抵御环境中重金属污染有一定作用�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">５、保护眼�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">保护视器官的健全功能和视力�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">６、抗肿瘤作用</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒与抗癌药物联用可以显著提高疗效，使肿瘤死亡率降低一半�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">还有，硒可以剌激免疫球蛋白及抗体产生，增强机体对疾病的抵抗力等作用。因此，除体内缺硒的人需要通过硒维康口嚼片额外补充硒外，即使健康的人，也可以服用一定剂量的硒维康，以远离心血管疾病，糖尿病、肿瘤等，提高生活质量，延长寿命�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">二、人体缺硒会导致哪些疾病</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">１、心脑血管病</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">流行病学调查证实，缺硒与动脉粥样硬化、冠心病和高血压等关系密切。美国缺硒地区，死于心脑血管病的人，比富硒地区高３倍，富硒地区心脑血管病发生率比美国平均水平低６７％。我国的临床医学研究还证实了，急性心肌梗互病人的血硒浓度明显低于健康人。人体缺硒是患心脑血管病的重要因素之一�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">２、眼睛疾�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">长期处于缺硒状态，会影响细胞膜的完善，导致视力下降和许多眼病，如白内障、视网膜病、夜盲病等。硒缺乏会引起维生素Ａ代谢紊乱与缺乏，而维生素Ａ是维护眼睛健康所不可缺少的物质�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">３、胃肠道疾病</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">缺硒会导致免疫功能下降，引发胃肠道疾病，如胃黏膜屏障不稳定、胃黏膜缺血性损伤、氧自由基增多等，导致胃炎、胃溃疡等消化系统病变�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">４、甲状腺</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒可调节甲状腺激素的代谢平衡。缺硒会造成甲状腺功能紊乱，引起甲状腺疾病�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">５、男性不�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">缺硒会使精子产生畸形，造成精子的活动能力差，精子中段及尾部有断裂，从而减少受精的能力�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">６、前列腺</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">低硒地区的前列腺疾病发病率远高于高硒地区�\�</span></div>', '', '', '', '0', '1', '1474326412', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('40', '20', '硒与中老年健康', '<p><span style=\"font-size: medium;\">&nbsp;目前，我�\�60岁以上老年人口已达1.32亿。占到全国人口总数�\�10%左右，并以每�\�3.2%的速度递增。随着全球老龄化趋势的不断加剧，抗衰老研究已成为国际医学界所瞩目的课题�\�</span></p>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">美国著名科普作家简.卡珀在《延缓衰�\�&mdash;&mdash;延缓和逆转衰老进程的基本策略》一书中说：硒是&ldquo;使你保持年轻的特别的矿物�\�&rdquo;�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">世界微量元素权威博士菲尔德说�\�&ldquo;硒像一颗原子弹，量很小很小，作用和威慑力却很大很大，一旦被人们认识，将对健康产生深远的影响&rdquo;�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">其实，早�\�1973年，联合国世界卫生组织（WHO）就宣布：硒（Se）是人和动物生命必需的微量元素�\�1988�\�10月，中国营养学会把硒列为15种每日必须摄入的膳食营养素之一。成人每日应摄入50&mdash;200微克的硒�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">自从70年代以来，我国在&ldquo;硒与克山病发病关�\�&rdquo;上，取得了突破性研究成果，从而进入了微量元素研究领域的世界先进行列。因此曾�\�1984�\�5月和1996�\�8月，先后在北京召开第三届、第六届硒国际研讨会，并荣获&ldquo;施瓦�\�&rdquo;奖章和证书�\�&ldquo;中国在硒方面的研究处全世界最高水�\�&rdquo;�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">全世界有40多个国家和地区属于缺硒地区。我国同美国类似，从东北到西南有一条缺硒带，全国普遍缺硒，北京缺硒人口也高�\�70%�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">我国著名营养学家于若木说：硒具有抗癌、防衰老和保护人体免疫功能的作用�\�&ldquo;人体缺硒关系到亿万人民健康的大事，我们应当像补碘那样抓好补硒工作，特别注意抓老年人的补硒工作&rdquo;�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">人体如果缺硒将会造成重要器官功能失调，可以引�\�40余种疾病，例如：癌症、冠心病、动脉硬化、糖尿病等现�\�&ldquo;文明�\�&rdquo;，以及心肌病、白血病和病毒性肝炎等等�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">缺硒引起的疾病，实质上是新陈代谢受到抑制与紊乱造成的，这是由于硒在人体的生理过程中对某些酶活性起着重要作用�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">最新医学研究成果表明，人类的衰老过程和癌变的发生，与其自身新陈代谢而产生的自由基（H2O2）蓄积等因素有着密切的关系，自由基又称活性氧，是一个极小的微粒。机体在氧化代谢的同时，以及环境污染、辐射、不良生活习惯，都会不断产生自由基，形成脂质过氧化物（LPO），损害生物膜和降低细胞的活力，阻碍正常新陈代谢，加速衰老及引起百病�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">维生素E有自由基&ldquo;清道�\�&rdquo;之称，而被誉为&ldquo;生命火种&rdquo;�\�&ldquo;抗癌之王&rdquo;�\�&ldquo;机体稳定的中心元�\�&rdquo;硒，它的抗氧化防衰老能力比维生素E�\�500倍�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒是一种有效的抗氧化剂，是谷胱甘肽过氧化物酶（GPx）的重要组成成份。硒有增强机体免疫的能力、抗病毒感染的能力和对某些致癌物质有较强的拮抗作用。所以，专家们认为硒是人体内抗氧化防衰老的重要物质�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">据营养学家分析，蘑菇、大蒜、葱头、富硒茶叶、富硒牛奶、猪肾和中药黄芪等富含硒元素�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">对于一般人来说，只要注意膳食调配，经常食用一些天然富硒食品或硒强化食品，就能满足人体需要，达到补硒抗氧化防衰老益寿延年的目的。除此以外，还可以通过药物补硒，但必须在医师指导下进行�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">硒过量产生人体硒中毒，均发生在高硒地区，因为那里的食物含硒量普遍较高，长时期摄入较大量的硒，造成摄入过量。只要采用稀释食物的方法，就能改变中毒的状况。硒中毒开始时，表现为毛发脱落，继而损及内脏，出现四肢无力甚至麻木，食欲减退，呼吸困难以及头昏眼花等神经性症状，如不及时采取措施，则导致死亡。所以补硒应该选择不会中毒的有机麦芽硒，硒维康口嚼片就是通过这样的天然硒提炼而成，较为适合安全补硒�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">&ldquo;总之，每日摄入硒的水平不要超�\�200微克，这个能够产生抗衰老作用的剂量，专家认为是安全的�\�&rdquo;</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326433', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('41', '20', '补硒四大原则', '<p><span style=\"font-size: medium;\">&nbsp;硒是地壳中含量极微的稀有元�\�,是人体必需的微量矿物质。人体中有一种非常重要的抗氧化剂,即谷胱甘肽过氧化物酶,硒是谷胱甘肽过氧化物酶的组成成分,此酶可发挥抗氧化作用,是重要的自由基清除剂�\�</span></p>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">缺硒是引起克山病、大骨节病等严重疾病的重要原因之一。硒摄入不足不但会使儿童发育受阻,也与心脏病和某些癌症的恶化相关�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">全世界有40多个国家和地区缺�\�,我国也是缺硒之国,�\�7亿人生活在低硒带,居民每天膳食中硒的摄入量处于较低水平。随着健康教育的普�\�,很多人知道硒的重要�\�,但却不知道怎样补硒�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">补硒时应遵循�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">�\�&ldquo;缺多少补多少;</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">②定量补�\�;</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">③坚持正确的服用方法;</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">④食补为�\�,药补为辅&rdquo;</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">4原则。在补硒之前应查明缺硒的原因,只有这样,才能更准确地补硒�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">造成现代人缺硒有5大原�\�:</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">1.环境缺硒,粮食、果蔬含硒量�\�,因摄入不足而引发缺硒�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">2.环境污染,大量的二氧化硫会与硒发生化合反应,不利于植物吸收硒�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">3.饮食结构不合�\�,如偏食、挑食等,影响人体对硒的吸收�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">4.长期大量饮酒、盲目减肥、上网过度等不良生活习惯可导致人体缺硒�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp;5.中老年人对硒的吸收能力差、消耗多�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp;因此,当检查出缺硒�\�,一定要注意是否有上述因�\�,在用食物或药物补硒的时�\�,也要尽可能纠正不良因素。有些人为了养生购买含硒的复合增补剂服用,却并不改掉不科学的生活习�\�,如经常熬夜、大吃大喝、烟酒过度、不爱锻�\�,这样补硒的效果就会大打折扣�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">研究发现,维生素E与硒有着不同寻常的关系。维生素E和硒都对细胞膜有保护作用,防止红细胞膜、肝线粒体膜等的过氧化破坏反应。特别是硒可增强维生素E的抗氧化作用,防止细胞膜变性�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">有一些实验还证实,硒和维生素E可共同保护细胞膜、细胞核和染色体不受致癌物的伤害�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">因此,补硒时请摄入适量的维生素E�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">另外,使用富硒产品时应注意以下几个方面:</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">一是选择国家正式批准的富硒产�\�;</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">二是尽量选择通过生物转化的有机硒;</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">三是补硒应在饭前、酒前、服药前或睡前进行�\�</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326454', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('42', '20', '究竟什么样的食品是富硒食品', '<p><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; &nbsp;根据我国有关部门数据显示，我国存在着大约7亿人不同程度的硒摄入量不足。这些人群大都处于缺硒地区，在我国从东北黑龙江到云贵高原存在着一条狭长的缺硒地带，而这些地区的人群存在着不同的缺硒状况�\�</span></p>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; 为什么会有这种情况的发生，一是人们没有意识到缺硒的危害，二是缺硒地区硒资源非常少，难以大量出产富硒食品�\�70年代在美国缺硒人群补硒是通过一种叫做富硒酵母的保健品来补硒，这种东西具有高吸收利用率，低残留和低毒的特点�\�90年代由北大富硒康正式引入我国，但是该产品具有刺激性气味，不适合普通人群的日常补硒。此外富硒酵母对无机硒的转化率不�\�50%，产品中无机硒仍然占�\�50%以上，人们服用以后仍然具有一定的无机残留和毒性。而且我国缺硒人群庞大，而保健品价格并不适合我国庞大缺硒人群的情况�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; 随着我国科学技术的迅速发展，越来越多的专业科研力量开始接入到补硒研究以及产业化过程中来。在科学家的不断探索研究下发现，在一些富硒地区种植的农作物中的硒含量非常丰富，达到了国际标准的硒含量的要求。通过这些农作物加工而成的富硒食品中的硒含量并不会下降，而人通过饮食来食用这些富硒食品完全可以达到补硒的效果。富硒食品中的硒并不是在加工时所添加，而是动植物在生长过程中把环境中的无机硒转化为有机硒，而人们通过加工以后可以获得天然的富硒食品，这些富硒食品�\�80%以上的硒是以含硒蛋白的形式存在的，完全无毒害作用，是目前最安全有效的补硒方法。富硒食品并不是局限于出产在富硒地区，现在即使在缺硒地区也可以通过人造富硒环境来达到富硒的要求，从而使作物中的硒含量达到富硒标准�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; 所以目前主要的补硒方式就是通过在日常饮食中食用富硒食品来达到补硒的效果，食疗在中国自古以来就有悠久的传统，可以说的得天独厚。通过饮食补硒既能满足平时饮食需求又能达到补硒的效果，可谓是一举多得�\�</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326473', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('43', '20', '吃富硒食品补硒是女性年轻的秘诀', '<p><span style=\"font-size: medium;\">&nbsp;吃富硒食品补硒是女性年轻的秘诀？哪个女性朋友不希望自己年年十八呢？不过这是不能的了，可是如果想要保持年轻的话还是能够实现的。怎么去保持年轻美丽？让女性朋友保持年轻有什么秘诀？吃富硒食品补充身体所需硒元素能助女性朋友抗氧化、延缓衰老，保持年轻靓丽�\�</span></p>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">湖北省康禾农业发展有限公司营养专家认为，饮食是健康的基础，食补是女性朋友保持年轻的重要因素�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　&ldquo;饮食是健康的基础�\�&rdquo;既然如此，搞清楚饮食中是否含有保持身体平衡和健康，以及预防各种健康问题所需的营养物质就是非常重要的问题了�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　据临床证实，许多女性荷尔蒙的失调问题，基本都是由于食入了过多的雌酮所引起的。由此我们可以确定，如果在饮食中加入一些有助于控制雌酮水平的食物，并且确保所吃的食物能够全面平衡荷尔蒙的分泌，那么影响女性荷尔蒙失调的问题是不是就迎刃而解了呢?</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　就针对这个问题，列出保持女性荷尔蒙分泌平衡的关键饮食方案，�\�&ldquo;平衡荷尔蒙的饮食&rdquo;�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　饮食秘诀1：多食水果和蔬菜</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　蔬菜和水果在饮食中是非常重要的。它们富含大量的营养物质，包括维生素、矿物质、抗氧化剂和植物纤维等�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　维生素和矿物质对人体健康可谓至关重要。因为如果你的身体中含有人体所必需的营养物质，那么你的身体就等于有&ldquo;保健工具&rdquo;在进行自我治疗�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　新鲜的蔬菜和水果是最佳的选择&mdash;&mdash;如果可能，最好选择绿色食品&mdash;&mdash;如果你不能买到新鲜蔬菜和水果，那么速冻蔬菜要好于罐头制品�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　饮食秘诀2：多食含抗氧化剂食品</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　蔬菜和水果最重要的作用之一，就是能向我们人体提供抗氧化剂�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　抗氧化剂能够保护我们不受自由原子基的影响�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　我们都知道，氧气对我们的生存来讲是绝不可缺少的。但是，氧气同时又可以发生若干化学反应，使其他分�\�&ldquo;氧化&rdquo;。而这种氧化又会生成自由原子基。自由原子基是一个相当复杂的概念，但是简单地说，就是它们在化学上是非常不稳定的原子，会对人体造成各种各样的危害�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　在我们的日常生活中，种种污染、吸烟、油炸或烧烤食品，以及太阳中的紫外线等，都会引发这些自由原子基。自由原子基与我们人类的很多疾病都有关，包括癌症、冠心病、早衰等。自由原子基通过破坏健康细胞，加速了人体的衰老过程，并且能够破坏细胞核中的DNA，从而引起细胞病变和癌变�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　不过，我们所吃的食物中的抗氧化剂，恰恰可以避免体内生成自由原子基。而维生素A、维生素C、维生素E以及微量元素&mdash;&mdash;硒和锌等，都属于抗氧化剂�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　以上这些成分，大多含于下列食物中�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　维生素A&mdash;&mdash;橙子等黄色水�\�;胡萝卜、南瓜等蔬菜;鱼等�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　维生素C&mdash;&mdash;水果(尤其是柑橘类水果);绿叶蔬菜如椰菜、菜花等;浆果类如草莓、蓝莓、覆盆子�\�;以及马铃薯和甜薯等�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　维生素E&mdash;&mdash;坚果、种子、鳄梨、蔬菜油、鱼油等�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　�\�&mdash;&mdash;巴西果、金枪鱼、卷心菜等�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">　　�\�&mdash;&mdash;南瓜、葵花籽、鱼、杏仁等�\�</span></div>\r\n<div><span style=\"font-size: medium;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: medium;\">&nbsp; &nbsp; &nbsp; 吃富硒食品补硒是女性年轻的秘诀？我们可以看到微量元素硒是一种抗氧化剂，所以在日常生活中我们可以进食一些富含硒元素的食品，即富硒食品。这样就可以延缓衰老，保持年轻靓丽。富硒食品可以信赖来自世界硒�\�&mdash;&mdash;湖北恩施&ldquo;康地神农&rdquo;品牌的富硒绿色食品，主要有富硒大米、富硒茶、富硒土蜂蜜、富硒养生面条、富硒香菇等等天然富硒农产品，这是补充身体所需硒元素的首选�\�</span></div>\r\n<div>&nbsp;</div>', '', '', '', '0', '1', '1474326490', '', '0', 'http://', '');
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('1', '系统分类', '2', '', '系统保留分类', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('2', '网店信息', '3', '', '网店信息分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('3', '网店帮助分类', '4', '', '网店帮助分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('4', '站内快讯', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('5', '新手上路', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('6', '配送方�\�', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('7', '支付方式', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('8', '商家服务', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('9', '招商报名', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('10', '免责声明', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('11', '企业信息', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('14', '隐私保护', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('15', '关于我们', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('16', '咨询热点', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('17', '帮助中心', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('18', '广告服务', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('19', '联系我们', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('20', '科学补硒', '1', '', '', '50', '1', '0');
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('1', '1', '作�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('2', '1', '出版�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('3', '1', '图书书号/ISBN', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('4', '1', '出版日期', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('5', '1', '开�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('6', '1', '图书页数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('7', '1', '图书装订', '1', '0', '平装\r\n黑白', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('8', '1', '图书规格', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('9', '1', '版次', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('10', '1', '印张', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('11', '1', '字数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('12', '1', '所属分�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('13', '2', '中文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('14', '2', '英文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('15', '2', '商品别名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('16', '2', '介质/格式', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD\r\nCD\r\nTAPE\r\nLP', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('17', '2', '片装�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('18', '2', '国家地区', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('19', '2', '语种', '1', '0', '中文\r\n英文\r\n法文\r\n西班牙文', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('20', '2', '导演/指挥', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('21', '2', '主唱', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('22', '2', '所属类�\�', '1', '0', '古典\r\n流行\r\n摇滚\r\n乡村\r\n民谣\r\n爵士\r\n蓝调\r\n电子\r\n舞曲\r\n国乐\r\n民族\r\n怀�\�\r\n经典\r\n人声\r\n合唱\r\n发烧\r\n试音\r\n儿童\r\n胎教\r\n轻音�\�\r\n世界音乐\r\n庆典音乐\r\n影视音乐\r\n新世纪音�\�\r\n大自然音�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('23', '2', '长度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('24', '2', '歌词', '1', '0', '�\�\r\n�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('25', '2', '碟片代码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('26', '2', 'ISRC�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('27', '2', '发行公司', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('28', '2', '出版', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('29', '2', '出版�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('30', '2', '引进�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('31', '2', '版权�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('32', '3', '中文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('33', '3', '英文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('34', '3', '商品别名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('35', '3', '介质/格式', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('36', '3', '碟片类型', '1', '0', '单面\r\n双层', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('37', '3', '片装�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('38', '3', '国家地区', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('39', '3', '语种/配音', '1', '0', '中文\r\n英文\r\n法文\r\n西班牙文', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('40', '3', '字幕', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('41', '3', '色彩', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('42', '3', '中文字幕', '1', '0', '�\�\r\n�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('43', '3', '导演', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('44', '3', '表演�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('45', '3', '所属类�\�', '1', '0', '爱情\r\n偶像\r\n生活\r\n社会\r\n科幻\r\n神话\r\n武侠\r\n动作\r\n惊险\r\n恐�\�\r\n传奇\r\n人物\r\n侦探\r\n警匪\r\n历史\r\n军事\r\n戏剧\r\n舞台\r\n经典\r\n名著\r\n喜剧\r\n情景\r\n动漫\r\n卡�\�\r\n儿童\r\n伦理激�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('46', '3', '年份', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('47', '3', '音频格式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('48', '3', '区码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('49', '3', '碟片代码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('50', '3', 'ISRC�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('51', '3', '发行公司', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('52', '3', '出版 ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('53', '3', '出版�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('54', '3', '引进�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('55', '3', '版权�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('56', '4', '网络制式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('57', '4', '支持频率/网络频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('58', '4', '尺寸体积', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('59', '4', '外观样式/手机类型', '1', '0', '翻盖\r\n滑盖\r\n直板\r\n折叠\r\n手写', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('60', '4', '主屏参数/内屏参数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('61', '4', '副屏参数/外屏参数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('62', '4', '清晰�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('63', '4', '色数/灰度', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('64', '4', '长度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('65', '4', '宽度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('66', '4', '厚度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('67', '4', '屏幕材质', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('68', '4', '内存容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('69', '4', '操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('70', '4', '通话时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('71', '4', '待机时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('72', '4', '标准配置', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('73', '4', 'WAP上网', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('74', '4', '数据业务', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('75', '4', '天线位置', '1', '0', '内置\r\n外置', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('76', '4', '随机配件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('77', '4', '铃声', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('78', '4', '摄像�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('79', '4', '彩信/彩e', '1', '0', '支持\r\n不支�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('80', '4', '红外/蓝牙', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('81', '4', '价格等级', '1', '0', '高价�\�\r\n中价�\�\r\n低价�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('82', '5', '型号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('83', '5', '详细规格', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('84', '5', '笔记本尺�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('85', '5', '处理器类�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('86', '5', '处理器最高主�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('87', '5', '二级缓存', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('88', '5', '系统总线', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('89', '5', '主板芯片�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('90', '5', '内存容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('91', '5', '内存类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('92', '5', '硬盘', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('93', '5', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('94', '5', '显示芯片', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('95', '5', '标称频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('96', '5', '显卡显存', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('97', '5', '显卡类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('98', '5', '光驱类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('99', '5', '电池容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('100', '5', '其他配置', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('101', '6', '类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('102', '6', '最大像�\�/总像�\�  ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('103', '6', '有效像素', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('104', '6', '光学变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('105', '6', '数字变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('106', '6', '操作模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('107', '6', '显示屏类�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('108', '6', '显示屏尺�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('109', '6', '感光器件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('110', '6', '感光器件尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('111', '6', '最高分辨率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('112', '6', '图像分辨�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('113', '6', '传感器类�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('114', '6', '传感器尺�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('115', '6', '镜头', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('116', '6', '光圈', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('117', '6', '焦距', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('118', '6', '旋转液晶�\�', '1', '0', '支持\r\n不支�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('119', '6', '存储介质', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('120', '6', '存储�\�', '1', '0', '  记录媒体\r\n存储卡容�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('121', '6', '影像格式', '1', '0', '    静像\r\n动画', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('122', '6', '曝光控制', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('123', '6', '曝光模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('124', '6', '曝光补偿', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('125', '6', '白平�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('126', '6', '连拍', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('127', '6', '快门速度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('128', '6', '闪光�\�', '1', '0', '内置\r\n外置', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('129', '6', '拍摄范围', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('130', '6', '自拍定时�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('131', '6', 'ISO感光�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('132', '6', '测光模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('133', '6', '场景模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('134', '6', '短片拍摄', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('135', '6', '外接接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('136', '6', '电源', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('137', '6', '电池使用时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('138', '6', '外形尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('139', '6', '标配软件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('140', '6', '标准配件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('141', '6', '兼容操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('142', '7', '编号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('143', '7', '类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('144', '7', '外型尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('145', '7', '最大像素数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('146', '7', '光学变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('147', '7', '数字变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('148', '7', '显示屏尺寸及类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('149', '7', '感光器件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('150', '7', '感光器件尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('151', '7', '感光器件数量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('152', '7', '像素范围', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('153', '7', '传感器数�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('154', '7', '传感器尺�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('155', '7', '水平清晰�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('156', '7', '取景�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('157', '7', '数码效果', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('158', '7', '镜头性能', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('159', '7', '对焦方式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('160', '7', '曝光控制', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('161', '7', '其他接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('162', '7', '随机存储', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('163', '7', '电池类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('164', '7', '电池供电时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('165', '8', '产地', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('166', '8', '产品规格/容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('167', '8', '主要原料', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('168', '8', '所属类�\�', '1', '0', '彩妆\r\n化妆工具\r\n护肤�\�\r\n香水', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('169', '8', '使用部位', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('170', '8', '适合肤质', '1', '0', '油�\�\r\n中�\�\r\n干�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('171', '8', '适用人群', '1', '0', '女�\�\r\n男�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('172', '9', '上市日期', '1', '0', '2008�\�01�\�\r\n2008�\�02�\�\r\n2008�\�03�\�\r\n2008�\�04�\�\r\n2008�\�05�\�\r\n2008�\�06�\�\r\n2008�\�07�\�\r\n2008�\�08�\�\r\n2008�\�09�\�\r\n2008�\�10�\�\r\n2008�\�11�\�\r\n2008�\�12�\�\r\n2007�\�01�\�\r\n2007�\�02�\�\r\n2007�\�03�\�\r\n2007�\�04�\�\r\n2007�\�05�\�\r\n2007�\�06�\�\r\n2007�\�07�\�\r\n2007�\�08�\�\r\n2007�\�09�\�\r\n2007�\�10�\�\r\n2007�\�11�\�\r\n2007�\�12�\�', '1', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('173', '9', '手机制式', '1', '0', 'GSM,850,900,1800,1900\r\nGSM,900,1800,1900,2100\r\nCDMA\r\n双模（GSM,900,1800,CDMA 1X�\�\r\n3G(GSM,900,1800,1900,TD-SCDMA )', '1', '1', '1', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('174', '9', '理论通话时间', '0', '0', '', '0', '2', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('175', '9', '理论待机时间', '0', '0', '', '0', '3', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('176', '9', '铃声', '0', '0', '', '0', '4', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('177', '9', '铃声格式', '0', '0', '', '0', '5', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('178', '9', '外观样式', '1', '0', '翻盖\r\n滑盖\r\n直板\r\n折叠', '1', '6', '1', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('179', '9', '中文短消�\�', '0', '0', '', '0', '7', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('180', '9', '存储卡格�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('181', '9', '内存容量', '0', '0', '', '2', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('182', '9', '操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('183', '9', 'K-JAVA', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('184', '9', '尺寸体积', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('185', '9', '颜色', '1', '1', '黑色\r\n白色\r\n蓝色\r\n金色\r\n粉色\r\n银色\r\n灰色\r\n深李�\�\r\n黑红�\�\r\n黑蓝�\�\r\n白紫�\�', '1', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('186', '9', '屏幕颜色', '1', '0', '1600�\�\r\n262144�\�', '1', '0', '1', '1');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('187', '9', '屏幕材质', '1', '0', 'TFT', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('188', '9', '屏幕分辨�\�', '1', '0', '320×240 像素\r\n240×400 像素\r\n240×320 像素\r\n176x220 像素', '1', '0', '0', '1');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('189', '9', '屏幕大小', '0', '0', '', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('190', '9', '中文输入�\�', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('191', '9', '情景模式', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('192', '9', '网络链接', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('193', '9', '蓝牙接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('194', '9', '数据线接�\�', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('195', '9', '电子邮件', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('196', '9', '闹钟', '0', '0', '', '0', '35', '0', '4');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('197', '9', '办公功能', '0', '0', '', '0', '0', '0', '4');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('198', '9', '数码相机', '0', '0', '', '1', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('199', '9', '像素', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('200', '9', '传感�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('201', '9', '变焦模式', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('202', '9', '视频拍摄', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('203', '9', 'MP3播放�\�', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('204', '9', '视频播放', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('205', '9', 'CPU频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('206', '9', '收音�\�', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('207', '9', '耳机接口', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('208', '9', '闪光�\�', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('209', '9', '浏览�\�', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('210', '9', '配件', '1', '2', '线控耳机\r\n蓝牙耳机\r\n数据�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('211', '10', '配料�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('212', '10', '净含量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('213', '10', '保质�\�', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('214', '10', '包装方式', '1', '0', '鲜活海产�\�\r\n冰冻海产�\�', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('215', '10', '售卖方式', '1', '0', '零售\r\n批发', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('216', '10', '食品工艺', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('217', '10', '产地', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('218', '10', '省份', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('219', '10', '品牌', '0', '0', '', '0', '0', '0', '0');
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('5', '食福�\�', '', '', '', '50', '1');
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('2', '琼彬', '', '', '', '50', '1');
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('3', '刘清', '', '', '', '50', '1');
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('4', '绿帝', '', '', '', '50', '1');
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('6', '彼得', '', '', '', '50', '1');
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('7', '御海尚品', '', '', '', '50', '1');
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('8', '鲜御', '', '', '', '50', '1');
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('9', '北海�\�', '', '', '', '50', '1');
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('1', '硒茶冲饮', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('2', '硒米粮油植物�\�', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('3', '硒特优品', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('4', '硒健营养', '', '', '0', '50', '', '', '1', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('5', '富硒藤茶', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('6', '富硒绿茶', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('7', '花草�\�', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('8', '绞股�\�', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('9', '富硒饮品', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('10', '植物�\�', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('11', '富硒大米', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('12', '富硒杂粮', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('13', '有机杂粮', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('14', '食用菌类', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('15', '休闲零食', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('16', '生鲜果蔬', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('17', '肉制腊货', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('18', '地标产品', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('19', '传统滋补', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('20', '药食同源', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('21', '膳食补充�\�', '', '', '4', '50', '', '', '0', '', '1', '0', '');
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('1', '11', 'fuxi000000', '富硒大米新米2.5KG农家优质生态长粒香�\�5斤真空装包邮', '+', '2', '0', '', '1', '0.000', '35.76', '29.80', '0.00', '0', '0', '1', '', '', '<p>&nbsp;<span style=\"font-weight: 700; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; line-height: 22px;\">产品参数�\�</span></p>\r\n<ul id=\"J_AttrUL\" style=\"margin: 0px; padding: 0px 20px 18px; list-style: none; zoom: 1; border-top: 1px solid rgb(255, 255, 255); color: rgb(64, 64, 64); font-family: tahoma, arial, 微软雅黑, sans-serif; line-height: 18px;\">\r\n    <li title=\"SC10142088100276\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">生产许可证编号：SC10142088100276</li>\r\n    <li title=\"GB1354-2009\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">产品标准号：GB1354-2009</li>\r\n    <li title=\"钟祥市南山米业有限公�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂名：钟祥市南山米业有限公司</li>\r\n    <li title=\"湖北省荆门市钟祥市长滩镇大桥�\�20�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂址：湖北省荆门市钟祥市长滩镇大桥街20�\�</li>\r\n    <li title=\"0724-6505188\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂家联系方式�\�0724-6505188</li>\r\n    <li title=\"稻谷\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">配料表：稻谷</li>\r\n    <li title=\"置于阴凉干燥�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">储藏方法：置于阴凉干燥处</li>\r\n    <li title=\"365\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">保质期：365 �\�</li>\r\n    <li title=\"�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">食品添加剂：�\�</li>\r\n    <li title=\"&nbsp;2.5kg\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">净含量:&nbsp;2.5kg</li>\r\n    <li title=\"&nbsp;包装\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">包装方式:&nbsp;包装</li>\r\n    <li title=\"&nbsp;同城24小时物流送货上门\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">同城服务:&nbsp;同城24小时物流送货上门</li>\r\n    <li id=\"J_attrBrandName\" title=\"&nbsp;香稻嘉鱼\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">品牌:&nbsp;香稻嘉鱼</li>\r\n    <li title=\"&nbsp;富硒\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">系列:&nbsp;富硒</li>\r\n    <li title=\"&nbsp;2.5kg\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">规格:&nbsp;2.5kg</li>\r\n    <li title=\"&nbsp;单品\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">售卖方式:&nbsp;单品</li>\r\n    <li title=\"&nbsp;其他/other\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">大米种类:&nbsp;其他/other</li>\r\n    <li title=\"&nbsp;�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">是否为有机食�\�:&nbsp;�\�</li>\r\n    <li title=\"&nbsp;一�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">等级:&nbsp;一�\�</li>\r\n    <li title=\"&nbsp;无糖\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">是否含糖:&nbsp;无糖</li>\r\n    <li title=\"&nbsp;697042468149\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">商品条形�\�:&nbsp;697042468149</li>\r\n    <li title=\"&nbsp;中国大陆\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">产地:&nbsp;中国大陆</li>\r\n    <li title=\"&nbsp;湖北�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">省份:&nbsp;湖北�\�</li>\r\n    <li title=\"&nbsp;荆门�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">城市:&nbsp;荆门�\�</li>\r\n    <li title=\"&nbsp;2人份\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">套餐份量:&nbsp;2人份</li>\r\n    <li title=\"&nbsp;2�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">套餐周期:&nbsp;2�\�</li>\r\n    <li title=\"&nbsp;1�\�1�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">配送频�\�:&nbsp;1�\�1�\�</li>\r\n    <li title=\"&nbsp;长寿�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">特产品类:&nbsp;长寿�\�</li>\r\n    <li title=\"&nbsp;香米\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">粮食种类:&nbsp;香米</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/www.cfuxi.com/images/upload/Image/TB2kRIDXVHzQeBjSZFHXXbwZpXa_!!2773476547.jpg\" width=\"750\" height=\"969\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'images/201609/thumb_img/1_thumb_G_1474327544235.jpg', 'images/201609/goods_img/1_G_1474327544452.jpg', 'images/201609/source_img/1_G_1474327544047.jpg', '1', '', '1', '1', '0', '0', '1474327544', '100', '0', '0', '0', '1', '0', '0', '1474328304', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('2', '11', 'fuxi000002', '16新米营养富硒香米5kg东北富硒地黑龙江方正大米农家�\�10�\�', '+', '1', '0', '', '1', '0.000', '60.00', '50.00', '0.00', '0', '0', '1', '', '', '<p>&nbsp;<span style=\"font-weight: 700; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; line-height: 22px;\">产品参数�\�</span></p>\r\n<ul id=\"J_AttrUL\" style=\"margin: 0px; padding: 0px 20px 18px; list-style: none; zoom: 1; border-top: 1px solid rgb(255, 255, 255); color: rgb(64, 64, 64); font-family: tahoma, arial, 微软雅黑, sans-serif; line-height: 18px;\">\r\n    <li title=\"QS2301 0102 1385 \" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">生产许可证编号：QS2301 0102 1385</li>\r\n    <li title=\"方正县盛军米业有限公�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂名：方正县盛军米业有限公司</li>\r\n    <li title=\"哈尔滨市方正县宝兴乡永兴�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂址：哈尔滨市方正县宝兴乡永兴村</li>\r\n    <li title=\"0451-57166555\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂家联系方式�\�0451-57166555</li>\r\n    <li title=\"大米\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">配料表：大米</li>\r\n    <li title=\"置于阴凉、干燥、通风�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">储藏方法：置于阴凉、干燥、通风�\�</li>\r\n    <li title=\"365\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">保质期：365 �\�</li>\r\n    <li title=\"无添加剂\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">食品添加剂：无添加剂</li>\r\n    <li title=\"&nbsp;5kg\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">净含量:&nbsp;5kg</li>\r\n    <li title=\"&nbsp;包装\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">包装方式:&nbsp;包装</li>\r\n    <li title=\"&nbsp;同城24小时物流送货上门\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">同城服务:&nbsp;同城24小时物流送货上门</li>\r\n    <li id=\"J_attrBrandName\" title=\"&nbsp;方�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">品牌:&nbsp;方�\�</li>\r\n    <li title=\"&nbsp;富硒�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">系列:&nbsp;富硒�\�</li>\r\n    <li title=\"&nbsp;5kg\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">规格:&nbsp;5kg</li>\r\n    <li title=\"&nbsp;单品\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">售卖方式:&nbsp;单品</li>\r\n    <li title=\"&nbsp;东北地区\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">大米种类:&nbsp;东北地区</li>\r\n    <li title=\"&nbsp;一�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">等级:&nbsp;一�\�</li>\r\n    <li title=\"&nbsp;无糖\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">是否含糖:&nbsp;无糖</li>\r\n    <li title=\"&nbsp;6934611700063\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">商品条形�\�:&nbsp;6934611700063</li>\r\n    <li title=\"&nbsp;中国大陆\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">产地:&nbsp;中国大陆</li>\r\n    <li title=\"&nbsp;黑龙江省\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">省份:&nbsp;黑龙江省</li>\r\n    <li title=\"&nbsp;哈尔滨市\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">城市:&nbsp;哈尔滨市</li>\r\n    <li title=\"&nbsp;3人份\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">套餐份量:&nbsp;3人份</li>\r\n    <li title=\"&nbsp;1个月\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">套餐周期:&nbsp;1个月</li>\r\n    <li title=\"&nbsp;1�\�1�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">配送频�\�:&nbsp;1�\�1�\�</li>\r\n    <li title=\"&nbsp;方正大米\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">特产品类:&nbsp;方正大米</li>\r\n    <li title=\"&nbsp;粳米\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">粮食种类:&nbsp;粳米</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/www.cfuxi.com/images/upload/Image/TB29Yu8npXXXXb7XpXXXXXXXXXX_!!2762189899.jpg\" width=\"790\" height=\"600\" alt=\"\" /></p>\r\n<p><img src=\"/www.cfuxi.com/images/upload/Image/TB23GDFnpXXXXa4XXXXXXXXXXXX_!!2762189899.jpg\" width=\"790\" height=\"1200\" alt=\"\" /></p>\r\n<p><img src=\"/www.cfuxi.com/images/upload/Image/TB22PbHnpXXXXXTXXXXXXXXXXXX_!!2762189899.jpg\" width=\"790\" height=\"700\" alt=\"\" /></p>\r\n<p>&nbsp;</p>', 'images/201609/thumb_img/2_thumb_G_1474327837499.jpg', 'images/201609/goods_img/2_G_1474327837265.jpg', 'images/201609/source_img/2_G_1474327837877.jpg', '1', '', '1', '1', '0', '0', '1474327837', '100', '0', '0', '0', '0', '0', '0', '1474328208', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('3', '6', 'fuxi000003', '陕西茶叶紫阳富硒绿茶一级散装春�\�2016新茶高山云雾茶礼盒半斤装', '+', '0', '0', '', '1', '0.000', '94.80', '79.00', '0.00', '0', '0', '1', '', '', '<p>&nbsp;<span style=\"font-weight: 700; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; line-height: 22px;\">产品参数�\�</span></p>\r\n<ul id=\"J_AttrUL\" style=\"margin: 0px; padding: 0px 20px 18px; list-style: none; zoom: 1; border-top: 1px solid rgb(255, 255, 255); color: rgb(64, 64, 64); font-family: tahoma, arial, 微软雅黑, sans-serif; line-height: 18px;\">\r\n    <li title=\"QS6109 1401 0035 \" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">生产许可证编号：QS6109 1401 0035</li>\r\n    <li title=\"DB61/T307.1-2013\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">产品标准号：DB61/T307.1-2013</li>\r\n    <li title=\"陕西省紫阳县和平茶厂\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂名：陕西省紫阳县和平茶�\�</li>\r\n    <li title=\"紫阳县城任河�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂址：紫阳县城任河嘴</li>\r\n    <li title=\"029-85245090\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">厂家联系方式�\�029-85245090</li>\r\n    <li title=\"茶叶鲜叶\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">配料表：茶叶鲜叶</li>\r\n    <li title=\"冷藏，避光，密封\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">储藏方法：冷藏，避光，密�\�</li>\r\n    <li title=\"540\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">保质期：540 �\�</li>\r\n    <li title=\"�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">食品添加剂：�\�</li>\r\n    <li title=\"&nbsp;250g\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">净含量:&nbsp;250g</li>\r\n    <li id=\"J_attrBrandName\" title=\"&nbsp;和平茶业\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">品牌:&nbsp;和平茶业</li>\r\n    <li title=\"&nbsp;紫阳绿茶\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">系列:&nbsp;紫阳绿茶</li>\r\n    <li title=\"&nbsp;包装\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">外包装类�\�:&nbsp;包装</li>\r\n    <li title=\"&nbsp;罐装\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">包装种类:&nbsp;罐装</li>\r\n    <li title=\"&nbsp;半烘�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">食品工艺:&nbsp;半烘�\�</li>\r\n    <li title=\"&nbsp;雨前\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">采摘时间:&nbsp;雨前</li>\r\n    <li title=\"&nbsp;一�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">级别:&nbsp;一�\�</li>\r\n    <li title=\"&nbsp;中国大陆\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">产地:&nbsp;中国大陆</li>\r\n    <li title=\"&nbsp;陕西�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">省份:&nbsp;陕西�\�</li>\r\n    <li title=\"&nbsp;安康�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">城市:&nbsp;安康�\�</li>\r\n    <li title=\"&nbsp;春季\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">生长季节:&nbsp;春季</li>\r\n    <li title=\"&nbsp;6923545814021\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">商品条形�\�:&nbsp;6923545814021</li>\r\n    <li title=\"&nbsp;其他/other\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">茶种�\�:&nbsp;其他/other</li>\r\n    <li title=\"&nbsp;5�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">套餐份量:&nbsp;5�\�</li>\r\n    <li title=\"&nbsp;2�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">套餐周期:&nbsp;2�\�</li>\r\n    <li title=\"&nbsp;1�\�2�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">配送频�\�:&nbsp;1�\�2�\�</li>\r\n    <li title=\"&nbsp;鲜爽回甘\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">口感:&nbsp;鲜爽回甘</li>\r\n    <li title=\"&nbsp;100-199�\�\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">价格�\�:&nbsp;100-199�\�</li>\r\n    <li title=\"&nbsp;条形\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">形状:&nbsp;条形</li>\r\n    <li title=\"&nbsp;国产\" style=\"margin: 10px 15px 0px 0px; padding: 0px; display: inline; float: left; width: 220px; height: 18px; overflow: hidden; vertical-align: top; white-space: nowrap; text-overflow: ellipsis; color: rgb(102, 102, 102);\">是否进口:&nbsp;国产</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/www.cfuxi.com/images/upload/Image/12345.jpg\" width=\"792\" height=\"794\" alt=\"\" /></p>', 'images/201609/thumb_img/3_thumb_G_1474328017244.jpg', 'images/201609/goods_img/3_G_1474328017778.jpg', 'images/201609/source_img/3_G_1474328017012.jpg', '1', '', '1', '1', '0', '0', '1474328017', '100', '0', '0', '1', '0', '0', '0', '1474328255', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('4', '18', 'fuxi000004', '海苔面条 富硒挂面 手工面条方便速面�\�300g/�\�', '+', '0', '0', '', '1', '0.000', '5.04', '4.20', '0.00', '0', '0', '1', '', '', '<div class=\"ncs-intro\" style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, arial, 宋体, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; line-height: 20px;\">\r\n<div class=\"content bd\" id=\"ncGoodsIntro\" style=\"padding: 0px; margin: 0px;\">\r\n<div class=\"ncs-goods-info-content\" style=\"padding: 0px 0px 23px; margin: 0px;\">\r\n<div class=\"default\" style=\"padding: 0px; margin: 0px; border: 0px; overflow: hidden;\">\r\n<p style=\"padding: 0px; margin: 0px;\">&nbsp;</p>\r\n<table style=\"font-size: 1em; border-collapse: collapse; border-spacing: 0px; width: 565.5pt;\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 12pt;\">常用名：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">富硒挂面 富硒面条 龙须�\�</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 12pt;\">净含量�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">300g</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 12pt;\">形状�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">细条�\�</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 12pt;\">配料表：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(0, 176, 240); font-size: 10.5pt;\">小麦�\� 海苔�\� 富硒矿泉�\�</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 12pt;\">保质期：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">365 �\�</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 12pt;\">注意事项�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(192, 0, 0); font-size: 12pt;\">本产品为膳食补充剂，不能代替药物</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 12pt;\">食品添加剂：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">无食品添加剂</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 10.5pt;\">生产许可证：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(0, 176, 240); font-size: 10.5pt;\">QS610901030036</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 10.5pt;\">产品标准�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(0, 176, 240); font-size: 10.5pt;\">LS/T3213-1992</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 10.5pt;\">厂家名：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(0, 176, 240); font-size: 10.5pt;\">汉阴县川陕魔芋厂</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 10.5pt;\">联系方式�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(0, 176, 240); font-size: 10.5pt;\">4009986095</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 10.5pt;\">产地�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(0, 176, 240); font-size: 10.5pt;\">汉阴县蒲溪镇</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 156px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle; text-align: right;\"><span style=\"font-family: 宋体; font-size: 12pt;\">防伪查询:</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0); width: 598px;\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(255, 0, 0); font-size: 12pt;\">本品厂商未使用防伪标签，富硒商城郑重承诺：所售商品保证正品，绝无假货�\�7天无条件退货！</span></p>\r\n            <div><span style=\"font-family: 宋体; color: rgb(255, 0, 0); font-size: 12pt;\"><br />\r\n            </span></div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'images/201609/thumb_img/4_thumb_G_1474328158975.jpg', 'images/201609/goods_img/4_G_1474328158618.jpg', 'images/201609/source_img/4_G_1474328158844.jpg', '1', '', '1', '1', '0', '0', '1474328158', '100', '0', '1', '0', '0', '0', '0', '1474328292', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('5', '19', 'fuxi000005', '绞股�\� 神农金康富硒野生七叶绞股�\�120g罐装', '+', '0', '0', '', '1', '0.000', '93.60', '78.00', '76.00', '1474272000', '1663574400', '1', '', '', '<div class=\"ncs-intro\" style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, arial, 宋体, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; line-height: 20px;\">\r\n<div class=\"content bd\" id=\"ncGoodsIntro\" style=\"padding: 0px; margin: 0px;\">\r\n<div class=\"ncs-goods-info-content\" style=\"padding: 0px 0px 23px; margin: 0px;\">\r\n<div class=\"default\" style=\"padding: 0px; margin: 0px; border: 0px; overflow: hidden;\">\r\n<table class=\"MsoNormalTable\" style=\"font-size: 1em; border-collapse: collapse; border-spacing: 0px; width: 568.5pt;\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">常用名：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">绞股�\�</span><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">&nbsp;龙须�\� 野生绞股蓝叶片茶</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">规格�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">罐装绞股蓝叶</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">主要成分�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">野生绞股�\�</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">保质期：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span class=\"16\" style=\"font-family: Tahoma; color: rgb(91, 155, 213); font-size: 12pt;\">18</span><span class=\"15\" style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">个月</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">适用人群�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 微软雅黑; color: rgb(102, 102, 102); font-size: 11pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">体虚者，高血压、高血脂、高血糖患者，控制形体及肥胖者，睡眠不好者，食欲不强�\�</span><span style=\"font-family: 微软雅黑; color: rgb(102, 102, 102); font-size: 11pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">�\�</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">注意事项�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(192, 0, 0); font-size: 12pt;\">本产品为膳食补充剂，不能代替药物</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">食用方法�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">根据自己的饮茶习惯，一般采�\�2</span><span class=\"16\" style=\"font-family: Tahoma; color: rgb(91, 155, 213); font-size: 12pt;\">-</span><span class=\"16\" style=\"font-family: Tahoma; color: rgb(91, 155, 213); font-size: 12pt;\">3</span><span class=\"16\" style=\"font-family: Tahoma; color: rgb(91, 155, 213); font-size: 12pt;\">g/</span><span class=\"15\" style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">人即�\�</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">服用禁忌�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(192, 0, 0); font-size: 12pt;\">在空腹的情况下不要大量食�\�</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">功效与作用：</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span style=\"font-family: 宋体; color: rgb(192, 0, 0); font-size: 10.5pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">味甘、苦，性微寒。归肺、脾、肾经。补虚，清热，解毒。用于体虚乏力，虚劳失精，白细胞减少症，高脂血症，病毒性肝炎，慢性胃肠炎，慢性气管炎�\�1.健肠胃、促消化2.补脑安神3.护心保脉4.调脂减肥5.健身强力6.抗过�\�7.抗癌8.抗衰美容</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; text-align: right; vertical-align: middle;\"><span style=\"font-family: 宋体; font-size: 12pt;\">防伪查询�\�</span></p>\r\n            </td>\r\n            <td valign=\"center\" style=\"font-size: 1em; border: 1pt solid rgb(0, 0, 0);\">\r\n            <p class=\"MsoNormal\" style=\"padding: 0px; margin: 0px; vertical-align: middle;\"><span class=\"15\" style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">本品厂商未使用防伪标签，富硒商城郑重承诺：所售商品保证正品，绝无假货�\�</span><span class=\"16\" style=\"font-family: Tahoma; color: rgb(91, 155, 213); font-size: 12pt;\">7</span><span class=\"15\" style=\"font-family: 宋体; color: rgb(91, 155, 213); font-size: 12pt;\">天无条件退货！</span></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><img src=\"/www.cfuxi.com/images/upload/Image/1_05218313355571912_1280.jpg\" width=\"790\" height=\"1228\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'images/201609/thumb_img/5_thumb_G_1474328423711.jpg', 'images/201609/goods_img/5_G_1474328423014.jpg', 'images/201609/source_img/5_G_1474328423913.jpg', '1', '', '1', '1', '0', '0', '1474328423', '100', '0', '0', '0', '0', '1', '0', '1474328443', '0', '', '-1', '-1', '0', '');
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('1', '1', 'images/201609/goods_img/1_P_1474327544991.jpg', '', 'images/201609/thumb_img/1_thumb_P_1474327544176.jpg', 'images/201609/source_img/1_P_1474327544511.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('2', '1', 'images/201609/goods_img/1_P_1474327638647.jpg', '', 'images/201609/thumb_img/1_thumb_P_1474327638961.jpg', 'images/201609/source_img/1_P_1474327638967.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('3', '1', 'images/201609/goods_img/1_P_1474327638433.jpg', '', 'images/201609/thumb_img/1_thumb_P_1474327638660.jpg', 'images/201609/source_img/1_P_1474327638536.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('4', '2', 'images/201609/goods_img/2_P_1474327838289.jpg', '', 'images/201609/thumb_img/2_thumb_P_1474327838381.jpg', 'images/201609/source_img/2_P_1474327838559.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('5', '2', 'images/201609/goods_img/2_P_1474327838429.jpg', '', 'images/201609/thumb_img/2_thumb_P_1474327838342.jpg', 'images/201609/source_img/2_P_1474327838020.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('6', '2', 'images/201609/goods_img/2_P_1474327838725.jpg', '', 'images/201609/thumb_img/2_thumb_P_1474327838413.jpg', 'images/201609/source_img/2_P_1474327838864.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('7', '3', 'images/201609/goods_img/3_P_1474328017984.jpg', '', 'images/201609/thumb_img/3_thumb_P_1474328017907.jpg', 'images/201609/source_img/3_P_1474328017850.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('8', '3', 'images/201609/goods_img/3_P_1474328053243.jpg', '', 'images/201609/thumb_img/3_thumb_P_1474328053017.jpg', 'images/201609/source_img/3_P_1474328053997.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('9', '3', 'images/201609/goods_img/3_P_1474328053584.jpg', '', 'images/201609/thumb_img/3_thumb_P_1474328053559.jpg', 'images/201609/source_img/3_P_1474328053855.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('10', '3', 'images/201609/goods_img/3_P_1474328053756.jpg', '', 'images/201609/thumb_img/3_thumb_P_1474328053492.jpg', 'images/201609/source_img/3_P_1474328053144.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('11', '4', 'images/201609/goods_img/4_P_1474328158814.jpg', '', 'images/201609/thumb_img/4_thumb_P_1474328158440.jpg', 'images/201609/source_img/4_P_1474328158628.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('12', '4', 'images/201609/goods_img/4_P_1474328158689.jpg', '', 'images/201609/thumb_img/4_thumb_P_1474328158064.jpg', 'images/201609/source_img/4_P_1474328158343.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('13', '4', 'images/201609/goods_img/4_P_1474328158151.jpg', '', 'images/201609/thumb_img/4_thumb_P_1474328158485.jpg', 'images/201609/source_img/4_P_1474328158873.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('14', '5', 'images/201609/goods_img/5_P_1474328423669.jpg', '', 'images/201609/thumb_img/5_thumb_P_1474328423261.jpg', 'images/201609/source_img/5_P_1474328423807.jpg');
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('1', '�\�', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('2', '音乐', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('3', '电影', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('4', '手机', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('5', '笔记本电�\�', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('6', '数码相机', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('7', '数码摄像�\�', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('8', '化妆�\�', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('9', '精品手机', '1', '');
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('10', '海产�\�', '1', '');
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1', '0', '中国', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2', '1', '北京', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3', '1', '安徽', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('4', '1', '福建', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('5', '1', '甘肃', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('6', '1', '广东', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('7', '1', '广西', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('8', '1', '贵州', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('9', '1', '海南', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('10', '1', '河北', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('11', '1', '河南', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('12', '1', '黑龙�\�', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('13', '1', '湖北', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('14', '1', '湖南', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('15', '1', '吉林', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('16', '1', '江苏', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('17', '1', '江西', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('18', '1', '辽宁', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('19', '1', '内蒙�\�', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('20', '1', '宁夏', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('21', '1', '青海', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('22', '1', '山东', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('23', '1', '山西', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('24', '1', '陕西', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('25', '1', '上海', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('26', '1', '四川', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('27', '1', '天津', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('28', '1', '西藏', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('29', '1', '新疆', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('30', '1', '云南', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('31', '1', '浙江', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('32', '1', '重庆', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('33', '1', '香港', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('34', '1', '澳门', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('35', '1', '台湾', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('36', '3', '安庆', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('37', '3', '蚌埠', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('38', '3', '巢湖', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('39', '3', '池州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('40', '3', '滁州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('41', '3', '阜阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('42', '3', '淮北', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('43', '3', '淮南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('44', '3', '黄山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('45', '3', '六安', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('46', '3', '马鞍�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('47', '3', '宿州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('48', '3', '铜陵', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('49', '3', '芜湖', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('50', '3', '宣城', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('51', '3', '亳州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('52', '2', '北京', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('53', '4', '福州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('54', '4', '龙岩', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('55', '4', '南平', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('56', '4', '宁德', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('57', '4', '莆田', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('58', '4', '泉州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('59', '4', '三明', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('60', '4', '厦门', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('61', '4', '漳州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('62', '5', '兰州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('63', '5', '白银', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('64', '5', '定西', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('65', '5', '甘南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('66', '5', '嘉峪�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('67', '5', '金昌', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('68', '5', '酒泉', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('69', '5', '临夏', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('70', '5', '陇南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('71', '5', '平凉', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('72', '5', '庆阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('73', '5', '天水', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('74', '5', '武威', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('75', '5', '张掖', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('76', '6', '广州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('77', '6', '深圳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('78', '6', '潮州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('79', '6', '东莞', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('80', '6', '佛山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('81', '6', '河源', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('82', '6', '惠州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('83', '6', '江门', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('84', '6', '揭阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('85', '6', '茂名', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('86', '6', '梅州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('87', '6', '清远', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('88', '6', '汕头', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('89', '6', '汕尾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('90', '6', '韶关', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('91', '6', '阳江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('92', '6', '云浮', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('93', '6', '湛江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('94', '6', '肇庆', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('95', '6', '中山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('96', '6', '珠海', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('97', '7', '南宁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('98', '7', '桂林', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('99', '7', '百色', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('100', '7', '北海', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('101', '7', '崇左', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('102', '7', '防城�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('103', '7', '贵港', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('104', '7', '河池', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('105', '7', '贺州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('106', '7', '来宾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('107', '7', '柳州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('108', '7', '钦州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('109', '7', '梧州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('110', '7', '玉林', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('111', '8', '贵阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('112', '8', '安顺', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('113', '8', '毕节', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('114', '8', '六盘�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('115', '8', '黔东�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('116', '8', '黔南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('117', '8', '黔西�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('118', '8', '铜仁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('119', '8', '遵义', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('120', '9', '海口', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('121', '9', '三亚', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('122', '9', '白沙', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('123', '9', '保亭', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('124', '9', '昌江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('125', '9', '澄迈�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('126', '9', '定安�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('127', '9', '东方', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('128', '9', '乐东', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('129', '9', '临高�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('130', '9', '陵水', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('131', '9', '琼海', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('132', '9', '琼中', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('133', '9', '屯昌�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('134', '9', '万宁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('135', '9', '文昌', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('136', '9', '五指�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('137', '9', '儋州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('138', '10', '石家�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('139', '10', '保定', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('140', '10', '沧州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('141', '10', '承德', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('142', '10', '邯郸', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('143', '10', '衡水', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('144', '10', '廊坊', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('145', '10', '秦皇�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('146', '10', '唐山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('147', '10', '邢台', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('148', '10', '张家�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('149', '11', '郑州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('150', '11', '洛阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('151', '11', '开�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('152', '11', '安阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('153', '11', '鹤壁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('154', '11', '济源', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('155', '11', '焦作', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('156', '11', '南阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('157', '11', '平顶�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('158', '11', '三门�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('159', '11', '商丘', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('160', '11', '新乡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('161', '11', '信阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('162', '11', '许昌', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('163', '11', '周口', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('164', '11', '驻马�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('165', '11', '漯河', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('166', '11', '濮阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('167', '12', '哈尔�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('168', '12', '大庆', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('170', '12', '鹤岗', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('171', '12', '黑河', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('172', '12', '鸡西', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('173', '12', '佳木�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('174', '12', '牡丹�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('175', '12', '七台�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('177', '12', '双鸭�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('178', '12', '绥化', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('179', '12', '伊春', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('180', '13', '武汉', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('181', '13', '仙桃', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('182', '13', '鄂州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('183', '13', '黄冈', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('184', '13', '黄石', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('185', '13', '荆门', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('186', '13', '荆州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('187', '13', '潜江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('188', '13', '神农架林�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('189', '13', '十堰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('190', '13', '随州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('191', '13', '天门', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('192', '13', '咸宁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('193', '13', '襄樊', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('194', '13', '孝感', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('195', '13', '宜昌', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('196', '13', '恩施', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('197', '14', '长沙', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('198', '14', '张家�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('199', '14', '常德', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('200', '14', '郴州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('201', '14', '衡阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('202', '14', '怀�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('203', '14', '娄底', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('204', '14', '邵阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('205', '14', '湘潭', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('206', '14', '湘西', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('207', '14', '益阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('208', '14', '永州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('209', '14', '岳阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('210', '14', '株洲', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('211', '15', '长春', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('212', '15', '吉林', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('213', '15', '白城', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('214', '15', '白山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('215', '15', '辽源', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('216', '15', '四平', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('217', '15', '松原', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('218', '15', '通化', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('219', '15', '延边', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('220', '16', '南京', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('221', '16', '苏州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('222', '16', '无锡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('223', '16', '常州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('224', '16', '淮安', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('225', '16', '连云�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('226', '16', '南�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('227', '16', '宿迁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('228', '16', '泰州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('229', '16', '徐州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('230', '16', '盐城', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('231', '16', '扬州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('232', '16', '镇江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('233', '17', '南昌', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('234', '17', '抚州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('235', '17', '赣州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('236', '17', '吉安', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('237', '17', '景德�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('238', '17', '九江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('239', '17', '萍乡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('240', '17', '上饶', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('241', '17', '新余', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('242', '17', '宜春', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('243', '17', '鹰潭', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('244', '18', '沈阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('245', '18', '大连', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('246', '18', '鞍山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('247', '18', '本溪', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('248', '18', '朝阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('249', '18', '丹东', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('250', '18', '抚顺', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('251', '18', '阜新', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('252', '18', '葫芦�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('253', '18', '锦州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('254', '18', '辽阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('255', '18', '盘锦', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('256', '18', '铁岭', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('257', '18', '营口', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('260', '19', '巴彦淖尔�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('261', '19', '包头', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('262', '19', '赤峰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('265', '19', '通辽', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('266', '19', '乌海', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('267', '19', '乌兰察布�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('268', '19', '锡林郭勒�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('269', '19', '兴安�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('270', '20', '银川', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('271', '20', '固原', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('272', '20', '石嘴�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('273', '20', '吴忠', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('274', '20', '中卫', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('275', '21', '西宁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('276', '21', '果洛', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('277', '21', '海北', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('278', '21', '海东', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('279', '21', '海南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('280', '21', '海西', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('281', '21', '黄南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('282', '21', '玉树', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('283', '22', '济南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('284', '22', '青岛', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('285', '22', '滨州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('286', '22', '德州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('287', '22', '东营', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('288', '22', '菏泽', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('289', '22', '济宁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('290', '22', '莱芜', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('291', '22', '聊城', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('292', '22', '临沂', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('293', '22', '日照', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('294', '22', '泰安', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('295', '22', '威海', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('296', '22', '潍坊', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('297', '22', '烟台', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('298', '22', '枣庄', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('299', '22', '淄博', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('300', '23', '太原', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('301', '23', '长治', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('302', '23', '大同', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('303', '23', '晋城', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('304', '23', '晋中', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('305', '23', '临汾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('306', '23', '吕梁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('307', '23', '朔州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('308', '23', '忻州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('309', '23', '阳泉', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('310', '23', '运城', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('311', '24', '西安', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('312', '24', '安康', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('313', '24', '宝鸡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('314', '24', '汉中', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('315', '24', '商洛', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('316', '24', '铜川', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('317', '24', '渭南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('318', '24', '咸阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('319', '24', '延安', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('320', '24', '榆林', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('321', '25', '上海', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('322', '26', '成都', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('323', '26', '绵阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('324', '26', '阿坝', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('325', '26', '巴中', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('326', '26', '达州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('327', '26', '德阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('328', '26', '甘孜', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('329', '26', '广安', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('330', '26', '广元', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('331', '26', '乐山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('332', '26', '凉山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('333', '26', '眉山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('334', '26', '南充', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('335', '26', '内江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('336', '26', '攀枝花', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('337', '26', '遂宁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('338', '26', '雅安', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('339', '26', '宜宾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('340', '26', '资阳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('341', '26', '自贡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('342', '26', '泸州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('343', '27', '天津', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('344', '28', '拉萨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('345', '28', '阿里', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('346', '28', '昌都', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('347', '28', '林芝', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('348', '28', '那曲', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('349', '28', '日喀�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('350', '28', '山南', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('352', '29', '阿克�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('353', '29', '阿拉�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('356', '29', '昌吉', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('357', '29', '哈密', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('358', '29', '和田', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('359', '29', '喀什', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('362', '29', '石河�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('363', '29', '图木舒克', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('364', '29', '吐鲁�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('365', '29', '五家�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('366', '29', '伊犁', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('367', '30', '昆明', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('368', '30', '怒江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('369', '30', '普洱', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('370', '30', '丽江', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('371', '30', '保山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('372', '30', '楚雄', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('373', '30', '大理', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('374', '30', '德宏', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('375', '30', '迪庆', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('376', '30', '红河', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('377', '30', '临沧', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('378', '30', '曲靖', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('379', '30', '文山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('380', '30', '西双版纳', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('381', '30', '玉溪', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('382', '30', '昭�\�', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('383', '31', '杭州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('384', '31', '湖州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('385', '31', '嘉兴', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('386', '31', '金华', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('387', '31', '丽水', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('388', '31', '宁波', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('389', '31', '绍兴', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('390', '31', '台州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('391', '31', '温州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('392', '31', '舟山', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('393', '31', '衢州', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('394', '32', '重庆', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('395', '33', '香港', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('396', '34', '澳门', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('397', '35', '台湾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('398', '36', '迎江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('399', '36', '大观�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('400', '36', '宜秀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('401', '36', '桐城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('402', '36', '怀宁县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('403', '36', '枞阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('404', '36', '潜山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('405', '36', '太湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('406', '36', '宿松�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('407', '36', '望江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('408', '36', '岳西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('409', '37', '中市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('410', '37', '东市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('411', '37', '西市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('412', '37', '郊区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('413', '37', '怀远县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('414', '37', '五河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('415', '37', '固镇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('416', '38', '居巢�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('417', '38', '庐江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('418', '38', '无为�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('419', '38', '含山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('420', '38', '和县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('421', '39', '贵池�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('422', '39', '东至�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('423', '39', '石台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('424', '39', '青阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('425', '40', '琅琊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('426', '40', '南谯�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('427', '40', '天长�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('428', '40', '明光�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('429', '40', '来安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('430', '40', '全椒�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('431', '40', '定远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('432', '40', '凤阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('433', '41', '蚌山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('435', '41', '禹会�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('436', '41', '淮上�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('437', '41', '颍州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('438', '41', '颍东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('439', '41', '颍泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('440', '41', '界首�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('441', '41', '临泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('442', '41', '太和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('443', '41', '阜南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('444', '41', '颖上�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('445', '42', '相山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('446', '42', '杜集�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('447', '42', '烈山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('448', '42', '濉溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('449', '43', '田家庵区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('450', '43', '大通区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('451', '43', '谢家集区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('452', '43', '八公山区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('453', '43', '潘集�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('454', '43', '凤台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('455', '44', '屯溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('456', '44', '黄山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('457', '44', '徽州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('458', '44', '歙县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('459', '44', '休宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('460', '44', '黟县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('461', '44', '祁门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('462', '45', '金安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('463', '45', '裕安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('464', '45', '寿县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('465', '45', '霍邱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('466', '45', '舒城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('467', '45', '金寨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('468', '45', '霍山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('469', '46', '雨山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('470', '46', '花山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('471', '46', '金家庄区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('472', '46', '当涂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('473', '47', '埇桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('474', '47', '砀山县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('475', '47', '萧县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('476', '47', '灵璧�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('477', '47', '泗县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('478', '48', '铜官山区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('479', '48', '狮子山区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('480', '48', '郊区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('481', '48', '铜陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('482', '49', '镜湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('483', '49', '弋江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('484', '49', '鸠江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('485', '49', '三山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('486', '49', '芜湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('487', '49', '繁昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('488', '49', '南陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('489', '50', '宣州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('490', '50', '宁国�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('491', '50', '郎溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('492', '50', '广德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('493', '50', '泾县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('494', '50', '绩溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('495', '50', '旌德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('496', '51', '涡阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('497', '51', '蒙城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('498', '51', '利辛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('499', '51', '谯城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('500', '52', '东城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('501', '52', '西城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('502', '52', '海淀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('503', '52', '朝阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('504', '52', '崇文�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('505', '52', '宣武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('506', '52', '丰台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('507', '52', '石景山区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('508', '52', '房山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('509', '52', '门头沟区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('510', '52', '通州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('511', '52', '顺义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('512', '52', '昌平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('513', '52', '怀柔区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('514', '52', '平谷�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('515', '52', '大兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('516', '52', '密云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('517', '52', '延庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('518', '53', '鼓楼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('519', '53', '台江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('520', '53', '仓山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('521', '53', '马尾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('522', '53', '晋安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('523', '53', '福清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('524', '53', '长乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('525', '53', '闽侯�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('526', '53', '连江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('527', '53', '罗源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('528', '53', '闽清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('529', '53', '永泰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('530', '53', '平潭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('531', '54', '新罗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('532', '54', '漳平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('533', '54', '长汀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('534', '54', '永定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('535', '54', '上杭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('536', '54', '武平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('537', '54', '连城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('538', '55', '延平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('539', '55', '邵武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('540', '55', '武夷山市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('541', '55', '建瓯�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('542', '55', '建阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('543', '55', '顺昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('544', '55', '浦城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('545', '55', '光泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('546', '55', '松溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('547', '55', '政和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('548', '56', '蕉城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('549', '56', '福安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('550', '56', '福鼎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('551', '56', '霞浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('552', '56', '古田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('553', '56', '屏南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('554', '56', '寿宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('555', '56', '周宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('556', '56', '柘荣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('557', '57', '城厢�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('558', '57', '涵江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('559', '57', '荔城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('560', '57', '秀屿区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('561', '57', '仙游�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('562', '58', '鲤城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('563', '58', '丰泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('564', '58', '洛江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('566', '58', '泉港�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('567', '58', '石狮�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('568', '58', '晋江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('569', '58', '南安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('570', '58', '惠安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('571', '58', '安溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('572', '58', '永春�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('573', '58', '德化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('574', '58', '金门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('575', '59', '梅列�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('576', '59', '三元�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('577', '59', '永安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('578', '59', '明溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('579', '59', '清流�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('580', '59', '宁化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('581', '59', '大田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('582', '59', '尤溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('583', '59', '沙县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('584', '59', '将乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('585', '59', '泰宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('586', '59', '建宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('587', '60', '思明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('588', '60', '海沧�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('589', '60', '湖里�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('590', '60', '集美�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('591', '60', '同安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('592', '60', '翔安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('593', '61', '芗城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('594', '61', '龙文�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('595', '61', '龙海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('596', '61', '云霄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('597', '61', '漳浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('598', '61', '诏安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('599', '61', '长泰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('600', '61', '东山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('601', '61', '南靖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('602', '61', '平和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('603', '61', '华安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('604', '62', '皋兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('605', '62', '城关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('606', '62', '七里河区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('607', '62', '西固�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('608', '62', '安宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('609', '62', '红古�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('610', '62', '永登�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('611', '62', '榆中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('612', '63', '白银�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('613', '63', '平川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('614', '63', '会宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('615', '63', '景泰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('616', '63', '靖远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('617', '64', '临洮�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('618', '64', '陇西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('619', '64', '通渭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('620', '64', '渭源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('621', '64', '漳县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('622', '64', '岷县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('623', '64', '安定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('624', '64', '安定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('625', '65', '合作�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('626', '65', '临潭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('627', '65', '卓尼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('628', '65', '舟曲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('629', '65', '迭部�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('630', '65', '玛曲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('631', '65', '碌曲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('632', '65', '夏河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('634', '67', '金川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('635', '67', '永昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('636', '68', '肃州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('637', '68', '玉门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('638', '68', '敦煌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('639', '68', '金塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('640', '68', '瓜州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('641', '68', '肃北', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('642', '68', '阿克�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('643', '69', '临夏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('644', '69', '临夏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('645', '69', '康乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('646', '69', '永靖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('647', '69', '广河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('648', '69', '和政�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('650', '69', '积石�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('651', '70', '成县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('652', '70', '徽县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('653', '70', '康县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('654', '70', '礼县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('655', '70', '两当�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('656', '70', '文县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('657', '70', '西和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('658', '70', '宕昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('659', '70', '武都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('660', '71', '崇信�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('661', '71', '华亭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('662', '71', '静宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('663', '71', '灵台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('664', '71', '崆峒�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('665', '71', '庄浪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('666', '71', '泾川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('667', '72', '合水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('668', '72', '华池�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('669', '72', '环县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('670', '72', '宁县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('671', '72', '庆城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('672', '72', '西峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('673', '72', '镇原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('674', '72', '正宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('675', '73', '甘谷�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('676', '73', '秦安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('677', '73', '清水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('678', '73', '秦州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('679', '73', '麦积�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('680', '73', '武山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('681', '73', '张家�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('682', '74', '古浪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('683', '74', '民勤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('684', '74', '天祝', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('685', '74', '凉州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('686', '75', '高台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('687', '75', '临泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('688', '75', '民乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('689', '75', '山丹�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('690', '75', '肃南', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('691', '75', '甘州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('692', '76', '从化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('693', '76', '天河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('694', '76', '东山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('695', '76', '白云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('696', '76', '海珠�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('697', '76', '荔湾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('698', '76', '越秀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('699', '76', '黄埔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('700', '76', '番禺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('701', '76', '花都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('702', '76', '增城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('703', '76', '从化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('704', '76', '市郊', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('705', '77', '福田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('706', '77', '罗湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('707', '77', '南山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('708', '77', '宝安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('709', '77', '龙岗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('710', '77', '盐田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('711', '78', '湘桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('712', '78', '潮安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('713', '78', '饶平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('714', '79', '南城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('715', '79', '东城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('716', '79', '万江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('717', '79', '莞城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('718', '79', '石龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('719', '79', '虎门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('720', '79', '麻涌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('721', '79', '道滘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('722', '79', '石碣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('723', '79', '沙田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('725', '79', '洪梅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('726', '79', '茶山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('727', '79', '寮步�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('729', '79', '大朗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('730', '79', '黄江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('731', '79', '樟木�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('732', '79', '凤岗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('733', '79', '塘厦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('734', '79', '谢岗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('735', '79', '厚街�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('736', '79', '清溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('737', '79', '常平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('738', '79', '桥头�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('739', '79', '横沥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('740', '79', '东坑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('741', '79', '企石�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('742', '79', '石排�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('743', '79', '长安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('744', '79', '中堂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('745', '79', '高埗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('746', '80', '禅城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('747', '80', '南海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('748', '80', '顺德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('749', '80', '三水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('750', '80', '高明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('751', '81', '东源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('752', '81', '和平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('753', '81', '源城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('754', '81', '连平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('755', '81', '龙川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('756', '81', '紫金�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('757', '82', '惠阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('758', '82', '惠城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('759', '82', '大亚�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('760', '82', '博罗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('761', '82', '惠东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('762', '82', '龙门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('763', '83', '江海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('764', '83', '蓬江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('765', '83', '新会�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('766', '83', '台山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('767', '83', '开平市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('768', '83', '鹤山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('769', '83', '恩平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('770', '84', '榕城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('771', '84', '普宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('772', '84', '揭东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('773', '84', '揭西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('774', '84', '惠来�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('775', '85', '茂南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('776', '85', '茂港�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('777', '85', '高州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('778', '85', '化州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('779', '85', '信宜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('780', '85', '电白�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('781', '86', '梅县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('782', '86', '梅江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('783', '86', '兴宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('784', '86', '大埔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('785', '86', '丰顺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('786', '86', '五华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('787', '86', '平远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('788', '86', '蕉岭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('789', '87', '清城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('790', '87', '英德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('791', '87', '连州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('792', '87', '佛冈�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('793', '87', '阳山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('794', '87', '清新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('795', '87', '连山', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('796', '87', '连南', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('797', '88', '南澳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('798', '88', '潮阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('799', '88', '澄海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('800', '88', '龙湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('801', '88', '金平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('802', '88', '濠江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('803', '88', '潮南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('804', '89', '城区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('805', '89', '陆丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('806', '89', '海丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('807', '89', '陆河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('808', '90', '曲江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('809', '90', '浈江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('810', '90', '武江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('811', '90', '曲江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('812', '90', '乐昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('813', '90', '南雄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('814', '90', '始兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('815', '90', '仁化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('816', '90', '翁源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('817', '90', '新丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('818', '90', '乳源', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('819', '91', '江城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('820', '91', '阳春�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('821', '91', '阳西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('822', '91', '阳东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('823', '92', '云城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('824', '92', '罗定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('825', '92', '新兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('826', '92', '郁南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('827', '92', '云安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('828', '93', '赤坎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('829', '93', '霞山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('830', '93', '坡头�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('831', '93', '麻章�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('832', '93', '廉江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('833', '93', '雷州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('834', '93', '吴川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('835', '93', '遂溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('836', '93', '徐闻�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('837', '94', '肇庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('838', '94', '高要�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('839', '94', '四会�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('840', '94', '广宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('841', '94', '怀集县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('842', '94', '封开�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('843', '94', '德庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('844', '95', '石岐街道', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('845', '95', '东区街道', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('846', '95', '西区街道', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('847', '95', '环城街道', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('848', '95', '中山港街�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('849', '95', '五桂山街�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('850', '96', '香洲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('851', '96', '斗门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('852', '96', '金湾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('853', '97', '邕宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('854', '97', '青秀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('855', '97', '兴宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('856', '97', '良庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('858', '97', '江南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('859', '97', '武鸣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('860', '97', '隆安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('861', '97', '马山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('862', '97', '上林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('863', '97', '宾阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('864', '97', '横县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('865', '98', '秀峰区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('866', '98', '叠彩�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('867', '98', '象山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('868', '98', '七星�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('869', '98', '雁山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('870', '98', '阳朔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('871', '98', '临桂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('872', '98', '灵川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('873', '98', '全州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('874', '98', '平乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('875', '98', '兴安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('876', '98', '灌阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('877', '98', '荔浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('878', '98', '资源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('879', '98', '永福�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('880', '98', '龙胜', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('881', '98', '恭城', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('882', '99', '右江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('883', '99', '凌云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('884', '99', '平果�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('885', '99', '西林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('886', '99', '乐业�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('887', '99', '德保�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('888', '99', '田林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('889', '99', '田阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('890', '99', '靖西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('891', '99', '田东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('892', '99', '那坡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('893', '99', '隆林', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('894', '100', '海城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('895', '100', '银海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('896', '100', '铁山港区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('897', '100', '合浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('898', '101', '江州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('899', '101', '凭祥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('900', '101', '宁明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('901', '101', '扶绥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('902', '101', '龙州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('903', '101', '大新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('904', '101', '天等�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('905', '102', '港口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('906', '102', '防城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('907', '102', '东兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('908', '102', '上思县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('909', '103', '港北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('910', '103', '港南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('911', '103', '覃塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('912', '103', '桂平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('913', '103', '平南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('914', '104', '金城江区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('915', '104', '宜州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('916', '104', '天峨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('917', '104', '凤山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('918', '104', '南丹�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('919', '104', '东兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('920', '104', '都安', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('921', '104', '罗城', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('922', '104', '巴马', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('923', '104', '环江', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('924', '104', '大化', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('925', '105', '八步�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('926', '105', '钟山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('927', '105', '昭平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('928', '105', '富川', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('929', '106', '兴宾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('930', '106', '合山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('931', '106', '象州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('932', '106', '武宣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('933', '106', '忻城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('934', '106', '金秀', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('935', '107', '城中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('936', '107', '鱼峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('937', '107', '柳北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('938', '107', '柳南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('939', '107', '柳江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('940', '107', '柳城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('941', '107', '鹿寨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('942', '107', '融安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('943', '107', '融水', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('944', '107', '三江', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('945', '108', '钦南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('946', '108', '钦北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('947', '108', '灵山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('948', '108', '浦北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('949', '109', '万秀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('950', '109', '蝶山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('951', '109', '长洲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('952', '109', '岑溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('953', '109', '苍梧�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('954', '109', '藤县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('955', '109', '蒙山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('956', '110', '玉州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('957', '110', '北流�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('958', '110', '容县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('959', '110', '陆川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('960', '110', '博白�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('961', '110', '兴业�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('962', '111', '南明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('963', '111', '云岩�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('964', '111', '花溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('965', '111', '乌当�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('966', '111', '白云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('967', '111', '小河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('968', '111', '金阳新区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('969', '111', '新天园区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('970', '111', '清镇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('971', '111', '开阳县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('972', '111', '修文�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('973', '111', '息烽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('974', '112', '西秀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('975', '112', '关岭', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('976', '112', '镇宁', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('977', '112', '紫云', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('978', '112', '平坝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('979', '112', '普定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('980', '113', '毕节�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('981', '113', '大方�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('982', '113', '黔西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('983', '113', '金沙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('984', '113', '织金�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('985', '113', '纳雍�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('986', '113', '赫章�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('987', '113', '威宁', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('988', '114', '钟山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('989', '114', '六枝特区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('990', '114', '水城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('991', '114', '盘县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('992', '115', '凯里�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('993', '115', '黄平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('994', '115', '施秉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('995', '115', '三穗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('996', '115', '镇远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('997', '115', '岑巩�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('998', '115', '天柱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('999', '115', '锦屏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1000', '115', '剑河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1001', '115', '台江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1002', '115', '黎平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1003', '115', '榕江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1004', '115', '从江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1005', '115', '雷山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1006', '115', '麻江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1007', '115', '丹寨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1008', '116', '都匀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1009', '116', '福泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1010', '116', '荔波�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1011', '116', '贵定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1012', '116', '瓮安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1013', '116', '独山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1014', '116', '平塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1015', '116', '罗甸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1016', '116', '长顺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1017', '116', '龙里�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1018', '116', '惠水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1019', '116', '三都', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1020', '117', '兴义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1021', '117', '兴仁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1022', '117', '普安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1023', '117', '晴隆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1024', '117', '贞丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1025', '117', '望谟�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1026', '117', '册亨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1027', '117', '安龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1028', '118', '铜仁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1029', '118', '江口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1030', '118', '石阡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1031', '118', '思南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1032', '118', '德江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1033', '118', '玉屏', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1034', '118', '印江', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1035', '118', '沿河', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1036', '118', '松桃', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1037', '118', '万山特区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1039', '119', '务川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1040', '119', '道真�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1041', '119', '汇川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1042', '119', '赤水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1043', '119', '仁怀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1044', '119', '遵义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1045', '119', '桐梓�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1046', '119', '绥阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1047', '119', '正安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1048', '119', '凤冈�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1049', '119', '湄潭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1050', '119', '余庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1051', '119', '习水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1052', '119', '道真', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1053', '119', '务川', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1054', '120', '秀英区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1055', '120', '龙华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1056', '120', '琼山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1057', '120', '美兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1058', '137', '市区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1060', '137', '那大�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1061', '137', '王五�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1062', '137', '雅星�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1063', '137', '大成�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1064', '137', '中和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1065', '137', '峨蔓�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1066', '137', '南丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1068', '137', '兰洋�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1069', '137', '和庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1070', '137', '海头�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1071', '137', '排浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1072', '137', '东成�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1073', '137', '光村�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1074', '137', '木棠�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1075', '137', '新州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1076', '137', '三都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1077', '137', '其他', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1078', '138', '长安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1079', '138', '桥东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1080', '138', '桥西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1081', '138', '新华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1082', '138', '裕华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1084', '138', '高新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1085', '138', '辛集�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1086', '138', '藁城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1087', '138', '晋州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1088', '138', '新乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1089', '138', '鹿泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1090', '138', '井陉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1091', '138', '正定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1092', '138', '栾城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1093', '138', '行唐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1094', '138', '灵寿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1095', '138', '高邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1096', '138', '深泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1097', '138', '赞皇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1098', '138', '无极�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1099', '138', '平山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1100', '138', '元氏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1101', '138', '赵县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1102', '139', '新市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1103', '139', '南市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1104', '139', '北市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1105', '139', '涿州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1106', '139', '定州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1107', '139', '安国�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1109', '139', '满城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1110', '139', '清苑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1111', '139', '涞水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1112', '139', '阜平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1113', '139', '徐水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1114', '139', '定兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1115', '139', '唐县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1116', '139', '高阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1117', '139', '容城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1118', '139', '涞源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1119', '139', '望都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1120', '139', '安新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1121', '139', '易县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1122', '139', '曲阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1123', '139', '蠡县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1124', '139', '顺平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1125', '139', '博野�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1126', '139', '雄县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1127', '140', '运河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1128', '140', '新华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1129', '140', '泊头�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1130', '140', '任丘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1131', '140', '黄骅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1132', '140', '河间�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1133', '140', '沧县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1134', '140', '青县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1135', '140', '东光�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1136', '140', '海兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1137', '140', '盐山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1138', '140', '肃宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1139', '140', '南皮�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1140', '140', '吴桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1141', '140', '献县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1142', '140', '孟村', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1143', '141', '双桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1144', '141', '双滦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1146', '141', '承德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1147', '141', '兴隆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1148', '141', '平泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1149', '141', '滦平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1150', '141', '隆化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1151', '141', '丰宁', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1152', '141', '宽城', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1153', '141', '围场', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1154', '142', '从台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1155', '142', '复兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1156', '142', '邯山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1158', '142', '武安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1159', '142', '邯郸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1160', '142', '临漳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1161', '142', '成安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1162', '142', '大名�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1163', '142', '涉县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1164', '142', '磁县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1165', '142', '肥乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1166', '142', '永年�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1167', '142', '邱县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1168', '142', '鸡泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1169', '142', '广平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1170', '142', '馆陶�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1171', '142', '魏县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1172', '142', '曲周�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1173', '143', '桃城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1174', '143', '冀州市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1175', '143', '深州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1176', '143', '枣强�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1177', '143', '武邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1178', '143', '武强�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1179', '143', '饶阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1180', '143', '安平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1181', '143', '故城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1182', '143', '景县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1183', '143', '阜城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1184', '144', '安次�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1185', '144', '广阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1186', '144', '霸州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1187', '144', '三河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1188', '144', '固安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1189', '144', '永清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1190', '144', '香河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1191', '144', '大城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1192', '144', '文安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1193', '144', '大厂', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1194', '145', '海港�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1195', '145', '山海关区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1197', '145', '昌黎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1198', '145', '抚宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1199', '145', '卢龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1200', '145', '青龙', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1201', '146', '路北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1202', '146', '路南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1203', '146', '古冶�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1204', '146', '开平区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1205', '146', '丰南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1206', '146', '丰润�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1207', '146', '遵化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1208', '146', '迁安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1209', '146', '滦县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1210', '146', '滦南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1211', '146', '乐亭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1212', '146', '迁西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1213', '146', '玉田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1214', '146', '唐海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1215', '147', '桥东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1216', '147', '桥西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1217', '147', '南宫�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1218', '147', '沙河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1219', '147', '邢台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1220', '147', '临城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1221', '147', '内丘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1222', '147', '柏乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1223', '147', '隆尧�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1224', '147', '任县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1225', '147', '南和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1226', '147', '宁晋�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1227', '147', '巨鹿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1228', '147', '新河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1229', '147', '广宗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1230', '147', '平乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1231', '147', '威县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1232', '147', '清河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1233', '147', '临西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1234', '148', '桥西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1235', '148', '桥东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1236', '148', '宣化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1237', '148', '下花园区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1238', '148', '宣化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1239', '148', '张北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1240', '148', '康保�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1241', '148', '沽源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1242', '148', '尚义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1243', '148', '蔚县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1244', '148', '阳原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1245', '148', '怀安县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1246', '148', '万全�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1247', '148', '怀来县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1248', '148', '涿鹿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1249', '148', '赤城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1250', '148', '崇礼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1251', '149', '金水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1252', '149', '邙山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1253', '149', '二七�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1254', '149', '管城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1255', '149', '中原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1256', '149', '上街�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1257', '149', '惠济�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1261', '149', '出口加工�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1262', '149', '巩义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1263', '149', '荥阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1264', '149', '新密�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1265', '149', '新郑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1266', '149', '登封�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1267', '149', '中牟�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1268', '150', '西工�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1269', '150', '老城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1270', '150', '涧西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1271', '150', '瀍河回族�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1272', '150', '洛龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1273', '150', '吉利�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1274', '150', '偃师�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1275', '150', '孟津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1276', '150', '新安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1277', '150', '栾川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1278', '150', '嵩县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1279', '150', '汝阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1280', '150', '宜阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1281', '150', '洛宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1282', '150', '伊川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1283', '151', '鼓楼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1284', '151', '龙亭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1285', '151', '顺河回族�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1286', '151', '金明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1288', '151', '杞县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1289', '151', '通许�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1290', '151', '尉氏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1291', '151', '开封县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1292', '151', '兰考县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1293', '152', '北关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1294', '152', '文峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1295', '152', '殷都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1296', '152', '龙安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1297', '152', '林州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1298', '152', '安阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1299', '152', '汤阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1300', '152', '滑县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1301', '152', '内黄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1302', '153', '淇滨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1303', '153', '山城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1304', '153', '鹤山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1305', '153', '浚县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1306', '153', '淇县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1307', '154', '济源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1308', '155', '解放�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1309', '155', '中站�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1310', '155', '马村�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1311', '155', '山阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1312', '155', '沁阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1313', '155', '孟州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1314', '155', '修武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1315', '155', '博爱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1316', '155', '武陟�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1317', '155', '温县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1318', '156', '卧龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1319', '156', '宛城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1320', '156', '邓州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1321', '156', '南召�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1322', '156', '方城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1323', '156', '西峡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1324', '156', '镇平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1325', '156', '内乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1326', '156', '淅川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1327', '156', '社旗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1328', '156', '唐河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1329', '156', '新野�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1330', '156', '桐柏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1331', '157', '新华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1332', '157', '卫东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1333', '157', '湛河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1334', '157', '石龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1335', '157', '舞钢�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1336', '157', '汝州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1337', '157', '宝丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1338', '157', '叶县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1339', '157', '鲁山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1340', '157', '郏县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1341', '158', '湖滨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1342', '158', '义马�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1343', '158', '灵宝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1344', '158', '渑池�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1345', '158', '陕县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1346', '158', '卢氏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1347', '159', '梁园�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1348', '159', '睢阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1349', '159', '永城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1350', '159', '民权�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1351', '159', '睢县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1352', '159', '宁陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1353', '159', '虞城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1354', '159', '柘城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1355', '159', '夏邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1356', '160', '卫滨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1357', '160', '红旗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1358', '160', '凤泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1359', '160', '牧野�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1360', '160', '卫辉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1361', '160', '辉县�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1362', '160', '新乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1363', '160', '获嘉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1364', '160', '原阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1365', '160', '延津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1366', '160', '封丘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1367', '160', '长垣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1368', '161', '浉河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1369', '161', '平桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1370', '161', '罗山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1371', '161', '光山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1372', '161', '新县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1373', '161', '商城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1374', '161', '固始�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1375', '161', '潢川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1376', '161', '淮滨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1377', '161', '息县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1378', '162', '魏都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1379', '162', '禹州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1380', '162', '长葛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1381', '162', '许昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1382', '162', '鄢陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1383', '162', '襄城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1384', '163', '川汇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1385', '163', '项城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1386', '163', '扶沟�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1387', '163', '西华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1388', '163', '商水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1389', '163', '沈丘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1390', '163', '郸城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1391', '163', '淮阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1392', '163', '太康�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1393', '163', '鹿邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1394', '164', '驿城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1395', '164', '西平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1396', '164', '上蔡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1397', '164', '平舆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1398', '164', '正阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1399', '164', '确山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1400', '164', '泌阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1401', '164', '汝南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1402', '164', '遂平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1403', '164', '新蔡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1404', '165', '郾城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1405', '165', '源汇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1406', '165', '召陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1407', '165', '舞阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1408', '165', '临颍�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1409', '166', '华龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1410', '166', '清丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1411', '166', '南乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1412', '166', '范县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1413', '166', '台前�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1414', '166', '濮阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1415', '167', '道里�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1416', '167', '南岗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1417', '167', '动力�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1418', '167', '平房�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1419', '167', '香坊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1420', '167', '太平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1421', '167', '道外�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1422', '167', '阿城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1423', '167', '呼兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1424', '167', '松北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1425', '167', '尚志�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1426', '167', '双城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1427', '167', '五常�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1428', '167', '方正�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1429', '167', '宾县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1430', '167', '依兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1431', '167', '巴彦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1432', '167', '通河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1433', '167', '木兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1434', '167', '延寿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1436', '168', '红岗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1437', '168', '龙凤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1439', '168', '大同�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1440', '168', '肇州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1441', '168', '肇源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1442', '168', '林甸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1444', '169', '呼玛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1445', '169', '漠河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1446', '169', '塔河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1447', '170', '兴山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1448', '170', '工农�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1449', '170', '南山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1450', '170', '兴安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1451', '170', '向阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1452', '170', '东山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1453', '170', '萝北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1454', '170', '绥滨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1455', '171', '爱辉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1456', '171', '五大连池�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1457', '171', '北安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1458', '171', '嫩江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1459', '171', '逊克�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1460', '171', '孙吴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1461', '172', '鸡冠�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1462', '172', '恒山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1463', '172', '城子河区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1464', '172', '滴道�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1465', '172', '梨树�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1466', '172', '虎林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1467', '172', '密山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1468', '172', '鸡东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1469', '173', '前进�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1470', '173', '郊区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1471', '173', '向阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1472', '173', '东风�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1473', '173', '同江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1474', '173', '富锦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1475', '173', '桦南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1476', '173', '桦川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1477', '173', '汤原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1478', '173', '抚远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1479', '174', '爱民�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1480', '174', '东安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1481', '174', '阳明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1482', '174', '西安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1484', '174', '海林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1485', '174', '宁安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1486', '174', '穆棱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1487', '174', '东宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1488', '174', '林口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1489', '175', '桃山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1490', '175', '新兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1492', '175', '勃利�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1493', '176', '龙沙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1495', '176', '铁峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1496', '176', '建华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1497', '176', '富拉尔基�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1499', '176', '梅里斯达斡尔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1500', '176', '讷河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1501', '176', '龙江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1502', '176', '依安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1503', '176', '泰来�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1504', '176', '甘南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1505', '176', '富裕�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1506', '176', '克山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1507', '176', '克东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1508', '176', '拜泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1509', '177', '尖山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1510', '177', '岭东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1511', '177', '四方台区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1512', '177', '宝山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1513', '177', '集贤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1514', '177', '友谊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1515', '177', '宝清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1516', '177', '饶河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1517', '178', '北林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1518', '178', '安达�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1519', '178', '肇东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1520', '178', '海伦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1521', '178', '望奎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1522', '178', '兰西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1523', '178', '青冈�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1524', '178', '庆安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1525', '178', '明水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1526', '178', '绥棱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1527', '179', '伊春�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1528', '179', '带岭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1529', '179', '南岔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1531', '179', '西林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1532', '179', '美溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1534', '179', '翠峦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1535', '179', '友好�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1537', '179', '五营�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1538', '179', '红星�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1539', '179', '新青�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1542', '179', '铁力�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1543', '179', '嘉荫�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1544', '180', '江岸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1545', '180', '武昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1546', '180', '江汉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1547', '180', '硚口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1548', '180', '汉阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1549', '180', '青山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1550', '180', '洪山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1552', '180', '汉南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1553', '180', '蔡甸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1554', '180', '江夏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1555', '180', '黄陂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1556', '180', '新洲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1558', '181', '仙桃�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1559', '182', '鄂城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1560', '182', '华容�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1562', '183', '黄州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1563', '183', '麻城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1564', '183', '武穴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1565', '183', '团风�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1566', '183', '红安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1567', '183', '罗田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1568', '183', '英山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1569', '183', '浠水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1570', '183', '蕲春�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1571', '183', '黄梅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1574', '184', '下陆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1575', '184', '铁山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1576', '184', '大冶�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1577', '184', '阳新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1578', '185', '东宝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1579', '185', '掇刀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1580', '185', '钟祥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1581', '185', '京山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1582', '185', '沙洋�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1583', '186', '沙市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1584', '186', '荆州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1585', '186', '石首�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1586', '186', '洪湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1587', '186', '松滋�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1588', '186', '公安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1589', '186', '监利�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1590', '186', '江陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1591', '187', '潜江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1592', '188', '神农架林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1593', '189', '张湾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1594', '189', '茅箭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1596', '189', '郧县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1597', '189', '郧西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1598', '189', '竹山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1599', '189', '竹溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1600', '189', '房县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1601', '190', '曾都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1602', '190', '广水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1603', '191', '天门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1604', '192', '咸安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1605', '192', '赤壁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1606', '192', '嘉鱼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1607', '192', '通城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1608', '192', '崇阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1609', '192', '通山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1610', '193', '襄城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1611', '193', '樊城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1612', '193', '襄阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1613', '193', '老河口市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1614', '193', '枣阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1615', '193', '宜城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1616', '193', '南漳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1617', '193', '谷城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1618', '193', '保康�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1619', '194', '孝南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1620', '194', '应城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1621', '194', '安陆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1622', '194', '汉川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1623', '194', '孝昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1624', '194', '大悟�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1625', '194', '云梦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1626', '195', '长阳', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1627', '195', '五峰', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1628', '195', '西陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1630', '195', '点军�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1631', '195', '猇亭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1632', '195', '夷陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1633', '195', '宜都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1634', '195', '当阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1635', '195', '枝江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1636', '195', '远安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1637', '195', '兴山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1638', '195', '秭归�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1639', '196', '恩施�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1640', '196', '利川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1641', '196', '建始�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1642', '196', '巴东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1643', '196', '宣恩�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1644', '196', '咸丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1645', '196', '来凤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1646', '196', '鹤峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1647', '197', '岳麓�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1648', '197', '芙蓉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1649', '197', '天心�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1650', '197', '开福区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1651', '197', '雨花�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1652', '197', '开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1653', '197', '浏阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1654', '197', '长沙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1655', '197', '望城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1656', '197', '宁乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1657', '198', '永定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1659', '198', '慈利�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1660', '198', '桑植�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1661', '199', '武陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1662', '199', '鼎城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1663', '199', '津市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1664', '199', '安乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1665', '199', '汉寿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1666', '199', '澧县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1667', '199', '临澧�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1668', '199', '桃源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1669', '199', '石门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1670', '200', '北湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1671', '200', '苏仙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1672', '200', '资兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1673', '200', '桂阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1674', '200', '宜章�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1675', '200', '永兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1676', '200', '嘉禾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1677', '200', '临武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1678', '200', '汝城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1679', '200', '桂东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1680', '200', '安仁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1681', '201', '雁峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1682', '201', '珠晖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1683', '201', '石鼓�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1684', '201', '蒸湘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1685', '201', '南岳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1686', '201', '耒阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1687', '201', '常宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1688', '201', '衡阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1689', '201', '衡南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1690', '201', '衡山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1691', '201', '衡东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1692', '201', '祁东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1693', '202', '鹤城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1694', '202', '靖州', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1695', '202', '麻阳', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1696', '202', '通道', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1697', '202', '新晃', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1698', '202', '芷江', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1699', '202', '沅陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1700', '202', '辰溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1701', '202', '溆浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1702', '202', '中方�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1703', '202', '会同�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1704', '202', '洪江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1705', '203', '娄星�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1707', '203', '涟源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1708', '203', '双峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1709', '203', '新化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1710', '204', '城步', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1711', '204', '双清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1712', '204', '大祥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1713', '204', '北塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1714', '204', '武冈�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1715', '204', '邵东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1716', '204', '新邵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1717', '204', '邵阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1718', '204', '隆回�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1719', '204', '洞口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1720', '204', '绥宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1721', '204', '新宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1722', '205', '岳塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1723', '205', '雨湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1724', '205', '湘乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1725', '205', '韶山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1726', '205', '湘潭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1727', '206', '吉首�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1728', '206', '泸溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1729', '206', '凤凰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1730', '206', '花垣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1731', '206', '保靖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1732', '206', '古丈�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1733', '206', '永顺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1734', '206', '龙山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1735', '207', '赫山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1736', '207', '资阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1737', '207', '沅江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1738', '207', '南县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1739', '207', '桃江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1740', '207', '安化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1741', '208', '江华', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1743', '208', '零陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1744', '208', '祁阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1745', '208', '东安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1746', '208', '双牌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1747', '208', '道县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1748', '208', '江永�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1749', '208', '宁远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1750', '208', '蓝山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1751', '208', '新田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1753', '209', '君山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1754', '209', '云溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1755', '209', '汨罗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1756', '209', '临湘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1757', '209', '岳阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1758', '209', '华容�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1759', '209', '湘阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1760', '209', '平江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1761', '210', '天元�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1762', '210', '荷塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1763', '210', '芦淞�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1764', '210', '石峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1765', '210', '醴陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1766', '210', '株洲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1767', '210', '攸县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1768', '210', '茶陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1769', '210', '炎陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1770', '211', '朝阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1771', '211', '宽城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1772', '211', '二道�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1773', '211', '南关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1774', '211', '绿园�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1775', '211', '双阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1780', '211', '德惠�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1781', '211', '九台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1782', '211', '榆树�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1783', '211', '农安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1784', '212', '船营�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1785', '212', '昌邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1786', '212', '龙潭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1787', '212', '丰满�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1788', '212', '蛟河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1789', '212', '桦甸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1790', '212', '舒兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1791', '212', '磐石�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1792', '212', '永吉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1793', '213', '洮北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1794', '213', '洮南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1795', '213', '大安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1796', '213', '镇赉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1797', '213', '通榆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1798', '214', '江源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1799', '214', '八道江区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1800', '214', '长白', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1801', '214', '临江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1802', '214', '抚松�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1803', '214', '靖宇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1804', '215', '龙山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1805', '215', '西安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1806', '215', '东丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1807', '215', '东辽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1808', '216', '铁西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1809', '216', '铁东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1810', '216', '伊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1812', '216', '双辽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1813', '216', '梨树�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1814', '217', '前郭尔罗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1815', '217', '宁江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1816', '217', '长岭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1817', '217', '乾安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1818', '217', '扶余�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1819', '218', '东昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1820', '218', '二道江区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1822', '218', '集安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1823', '218', '通化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1824', '218', '辉南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1825', '218', '柳河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1826', '219', '延吉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1827', '219', '图们�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1828', '219', '敦化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1829', '219', '珲春�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1830', '219', '龙井�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1831', '219', '和龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1832', '219', '安图�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1833', '219', '汪清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1834', '220', '玄武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1835', '220', '鼓楼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1836', '220', '白下�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1837', '220', '建邺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1838', '220', '秦淮�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1840', '220', '下关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1841', '220', '栖霞�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1842', '220', '浦口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1843', '220', '江宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1844', '220', '六合�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1845', '220', '溧水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1846', '220', '高淳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1847', '221', '沧浪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1848', '221', '金阊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1849', '221', '平江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1850', '221', '虎丘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1851', '221', '吴中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1852', '221', '相城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1853', '221', '园区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1854', '221', '新区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1855', '221', '常熟�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1856', '221', '张家港市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1857', '221', '玉山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1858', '221', '巴城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1859', '221', '周市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1860', '221', '陆家�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1861', '221', '花桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1862', '221', '淀山湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1863', '221', '张浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1864', '221', '周庄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1865', '221', '千灯�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1866', '221', '锦溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1867', '221', '开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1868', '221', '吴江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1869', '221', '太仓�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1870', '222', '崇安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1871', '222', '北塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1872', '222', '南长�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1873', '222', '锡山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1874', '222', '惠山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1875', '222', '滨湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1876', '222', '新区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1877', '222', '江阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1878', '222', '宜兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1879', '223', '天宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1880', '223', '钟楼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1882', '223', '郊区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1883', '223', '新北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1884', '223', '武进�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1885', '223', '溧阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1886', '223', '金坛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1887', '224', '清河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1888', '224', '清浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1889', '224', '楚州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1890', '224', '淮阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1891', '224', '涟水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1892', '224', '洪泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1893', '224', '盱眙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1894', '224', '金湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1895', '225', '新浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1896', '225', '连云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1897', '225', '海州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1898', '225', '赣榆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1899', '225', '东海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1900', '225', '灌云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1901', '225', '灌南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1902', '226', '崇川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1903', '226', '港闸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1905', '226', '启东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1906', '226', '如皋�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1907', '226', '通州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1908', '226', '海门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1909', '226', '海安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1910', '226', '如东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1911', '227', '宿城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1912', '227', '宿豫�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1913', '227', '宿豫�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1914', '227', '沭阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1915', '227', '泗阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1916', '227', '泗洪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1917', '228', '海陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1918', '228', '高港�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1919', '228', '兴化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1920', '228', '靖江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1921', '228', '泰兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1922', '228', '姜堰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1923', '229', '云龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1924', '229', '鼓楼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1925', '229', '九里�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1926', '229', '贾汪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1927', '229', '泉山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1928', '229', '新沂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1929', '229', '邳州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1930', '229', '丰县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1931', '229', '沛县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1932', '229', '铜山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1933', '229', '睢宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1934', '230', '城区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1935', '230', '亭湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1936', '230', '盐都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1937', '230', '盐都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1938', '230', '东台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1939', '230', '大丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1940', '230', '响水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1941', '230', '滨海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1942', '230', '阜宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1943', '230', '射阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1944', '230', '建湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1945', '231', '广陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1946', '231', '维扬�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1947', '231', '邗江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1948', '231', '仪征�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1949', '231', '高邮�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1950', '231', '江都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1951', '231', '宝应�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1952', '232', '京口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1953', '232', '润州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1954', '232', '丹徒�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1955', '232', '丹阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1956', '232', '扬中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1957', '232', '句容�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1958', '233', '东湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1959', '233', '西湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1961', '233', '湾里�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1963', '233', '红谷滩新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1964', '233', '昌北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1965', '233', '高新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1966', '233', '南昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1967', '233', '新建�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1968', '233', '安义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1969', '233', '进贤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1970', '234', '临川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1971', '234', '南城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1972', '234', '黎川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1973', '234', '南丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1974', '234', '崇仁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1975', '234', '乐安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1976', '234', '宜黄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1977', '234', '金溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1978', '234', '资溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1979', '234', '东乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1980', '234', '广昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1981', '235', '章贡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1982', '235', '于都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1983', '235', '瑞金�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1984', '235', '南康�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1985', '235', '赣县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1986', '235', '信丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1987', '235', '大余�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1988', '235', '上犹�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1989', '235', '崇义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1990', '235', '安远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1991', '235', '龙南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1992', '235', '定南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1993', '235', '全南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1994', '235', '宁都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1995', '235', '兴国�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1996', '235', '会昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1997', '235', '寻乌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1998', '235', '石城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1999', '236', '安福�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2000', '236', '吉州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2001', '236', '青原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2003', '236', '吉安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2004', '236', '吉水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2005', '236', '峡江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2006', '236', '新干�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2007', '236', '永丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2008', '236', '泰和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2009', '236', '遂川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2010', '236', '万安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2011', '236', '永新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2012', '237', '珠山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2013', '237', '昌江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2014', '237', '乐平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2015', '237', '浮梁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2016', '238', '浔阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2017', '238', '庐山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2018', '238', '瑞昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2019', '238', '九江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2020', '238', '武宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2021', '238', '修水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2022', '238', '永修�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2023', '238', '德安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2024', '238', '星子�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2025', '238', '都昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2026', '238', '湖口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2027', '238', '彭泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2028', '239', '安源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2029', '239', '湘东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2030', '239', '莲花�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2031', '239', '芦溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2032', '239', '上栗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2033', '240', '信州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2034', '240', '德兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2035', '240', '上饶�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2036', '240', '广丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2037', '240', '玉山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2038', '240', '铅山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2039', '240', '横峰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2040', '240', '弋阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2041', '240', '余干�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2042', '240', '波阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2043', '240', '万年�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2044', '240', '婺源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2045', '241', '渝水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2046', '241', '分宜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2047', '242', '袁州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2048', '242', '丰城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2049', '242', '樟树�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2050', '242', '高安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2051', '242', '奉新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2052', '242', '万载�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2053', '242', '上高�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2054', '242', '宜丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2055', '242', '靖安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2056', '242', '铜鼓�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2057', '243', '月湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2058', '243', '贵溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2059', '243', '余江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2060', '244', '沈河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2061', '244', '皇姑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2062', '244', '和平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2063', '244', '大东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2064', '244', '铁西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2066', '244', '东陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2068', '244', '于洪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2070', '244', '新民�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2071', '244', '辽中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2072', '244', '康平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2073', '244', '法库�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2074', '245', '西岗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2075', '245', '中山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2079', '245', '金州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2080', '245', '开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2083', '245', '庄河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2084', '245', '长海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2085', '246', '铁东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2086', '246', '铁西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2087', '246', '立山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2088', '246', '千山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2089', '246', '岫岩', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2090', '246', '海城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2091', '246', '台安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2092', '247', '本溪', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2093', '247', '平山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2094', '247', '明山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2095', '247', '溪湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2096', '247', '南芬�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2097', '247', '桓仁', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2098', '248', '双塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2099', '248', '龙城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2101', '248', '北票�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2102', '248', '凌源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2103', '248', '朝阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2104', '248', '建平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2105', '249', '振兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2106', '249', '元宝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2107', '249', '振安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2108', '249', '宽甸', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2109', '249', '东港�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2110', '249', '凤城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2111', '250', '顺城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2112', '250', '新抚�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2113', '250', '东洲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2114', '250', '望花�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2115', '250', '清原', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2116', '250', '新宾', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2117', '250', '抚顺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2118', '251', '阜新', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2119', '251', '海州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2120', '251', '新邱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2121', '251', '太平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2122', '251', '清河门区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2123', '251', '细河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2124', '251', '彰武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2125', '252', '龙港�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2126', '252', '南票�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2127', '252', '连山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2128', '252', '兴城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2129', '252', '绥中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2130', '252', '建昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2131', '253', '太和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2132', '253', '古塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2133', '253', '凌河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2134', '253', '凌海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2135', '253', '北镇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2136', '253', '黑山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2137', '253', '义县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2138', '254', '白塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2139', '254', '文圣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2140', '254', '宏伟�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2141', '254', '太子河区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2143', '254', '灯塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2144', '254', '辽阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2145', '255', '双台子区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2147', '255', '大洼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2148', '255', '盘山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2149', '256', '银州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2150', '256', '清河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2152', '256', '开原市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2153', '256', '铁岭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2154', '256', '西丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2155', '256', '昌图�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2156', '257', '站前�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2157', '257', '西市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2159', '257', '老边�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2160', '257', '盖州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2162', '258', '回民�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2163', '258', '玉泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2164', '258', '新城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2165', '258', '赛罕�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2166', '258', '清水河县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2167', '258', '土默特左�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2168', '258', '托克托县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2169', '258', '和林格尔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2170', '258', '武川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2171', '259', '阿拉善左�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2172', '259', '阿拉善右�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2174', '260', '临河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2175', '260', '五原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2176', '260', '磴口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2177', '260', '乌拉特前�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2178', '260', '乌拉特中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2179', '260', '乌拉特后�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2182', '261', '青山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2183', '261', '东河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2184', '261', '九原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2185', '261', '石拐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2187', '261', '土默特右�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2188', '261', '固阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2189', '261', '达尔罕茂明安联合�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2190', '262', '红山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2192', '262', '松山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2196', '262', '林西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2197', '262', '克什克腾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2199', '262', '喀喇沁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2200', '262', '宁城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2201', '262', '敖汉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2202', '263', '东胜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2205', '263', '鄂托克前�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2207', '263', '杭锦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2208', '263', '乌审�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2209', '263', '伊金霍洛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2215', '264', '额尔古纳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2216', '264', '根河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2217', '264', '阿荣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2219', '264', '鄂温克族自治�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2220', '264', '陈巴尔虎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2224', '265', '霍林郭勒�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2225', '265', '科尔沁左翼中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2226', '265', '科尔沁左翼后�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2228', '265', '库伦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2229', '265', '奈曼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2232', '266', '乌达�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2233', '266', '海南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2234', '267', '化德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2235', '267', '集宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2236', '267', '丰镇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2237', '267', '卓资�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2238', '267', '商都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2239', '267', '兴和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2240', '267', '凉城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2241', '267', '察哈尔右翼前�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2242', '267', '察哈尔右翼中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2243', '267', '察哈尔右翼后�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2245', '268', '二连浩特�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2246', '268', '锡林浩特�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2248', '268', '苏尼特左�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2249', '268', '苏尼特右�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2253', '268', '镶黄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2255', '268', '正蓝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2256', '268', '多伦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2257', '269', '乌兰浩特�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2259', '269', '科尔沁右翼前�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2260', '269', '科尔沁右翼中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2262', '269', '突泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2263', '270', '西夏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2264', '270', '金凤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2265', '270', '兴庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2266', '270', '灵武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2267', '270', '永宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2268', '270', '贺兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2269', '271', '原州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2270', '271', '海原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2271', '271', '西吉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2272', '271', '隆德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2273', '271', '泾源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2274', '271', '彭阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2275', '272', '惠农�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2276', '272', '大武口区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2277', '272', '惠农�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2278', '272', '陶乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2279', '272', '平罗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2280', '273', '利通区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2281', '273', '中卫�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2283', '273', '中宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2284', '273', '盐池�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2285', '273', '同心�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2287', '274', '海原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2288', '274', '中宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2289', '275', '城中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2290', '275', '城东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2291', '275', '城西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2292', '275', '城北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2293', '275', '湟中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2294', '275', '湟源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2295', '275', '大�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2296', '276', '玛沁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2297', '276', '班玛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2298', '276', '甘德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2299', '276', '达日�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2300', '276', '久治�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2301', '276', '玛多�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2302', '277', '海晏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2303', '277', '祁连�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2304', '277', '刚察�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2305', '277', '门源', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2306', '278', '平安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2307', '278', '乐都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2308', '278', '民和', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2309', '278', '互助', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2310', '278', '化隆', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2311', '278', '循化', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2312', '279', '共和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2313', '279', '同德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2314', '279', '贵德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2315', '279', '兴海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2316', '279', '贵南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2319', '280', '乌兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2320', '280', '都兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2321', '280', '天峻�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2322', '281', '同仁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2323', '281', '尖扎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2324', '281', '泽库�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2326', '282', '玉树�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2327', '282', '杂多�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2328', '282', '称多�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2329', '282', '治多�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2330', '282', '囊谦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2332', '283', '市中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2333', '283', '历下�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2334', '283', '天桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2335', '283', '槐荫�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2336', '283', '历城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2337', '283', '长清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2338', '283', '章丘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2339', '283', '平阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2340', '283', '济阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2341', '283', '商河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2342', '284', '市南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2343', '284', '市北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2344', '284', '城阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2345', '284', '四方�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2346', '284', '李沧�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2347', '284', '黄岛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2348', '284', '崂山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2349', '284', '胶州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2350', '284', '即墨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2351', '284', '平度�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2352', '284', '胶南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2353', '284', '莱西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2354', '285', '滨城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2355', '285', '惠民�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2356', '285', '阳信�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2357', '285', '无棣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2358', '285', '沾化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2359', '285', '博兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2360', '285', '邹平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2361', '286', '德城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2362', '286', '陵县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2363', '286', '乐陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2364', '286', '禹城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2365', '286', '宁津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2366', '286', '庆云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2367', '286', '临邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2368', '286', '齐河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2369', '286', '平原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2370', '286', '夏津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2371', '286', '武城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2372', '287', '东营�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2373', '287', '河口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2374', '287', '垦利�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2375', '287', '利津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2376', '287', '广饶�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2377', '288', '牡丹�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2378', '288', '曹县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2379', '288', '单县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2380', '288', '成武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2381', '288', '巨野�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2382', '288', '郓城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2383', '288', '鄄城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2384', '288', '定陶�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2385', '288', '东明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2386', '289', '市中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2387', '289', '任城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2388', '289', '曲阜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2389', '289', '兖州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2390', '289', '邹城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2391', '289', '微山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2392', '289', '鱼台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2393', '289', '金乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2394', '289', '嘉祥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2395', '289', '汶上�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2396', '289', '泗水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2397', '289', '梁山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2398', '290', '莱城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2399', '290', '钢城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2401', '291', '临清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2402', '291', '阳谷�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2403', '291', '莘县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2404', '291', '茌平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2405', '291', '东阿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2406', '291', '冠县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2407', '291', '高唐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2408', '292', '兰山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2409', '292', '罗庄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2410', '292', '河东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2411', '292', '沂南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2412', '292', '郯城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2413', '292', '沂水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2414', '292', '苍山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2415', '292', '费县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2416', '292', '平邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2417', '292', '莒南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2418', '292', '蒙阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2419', '292', '临沭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2420', '293', '东港�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2421', '293', '岚山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2422', '293', '五莲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2423', '293', '莒县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2424', '294', '泰山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2425', '294', '岱岳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2426', '294', '新泰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2427', '294', '肥城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2428', '294', '宁阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2429', '294', '东平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2430', '295', '荣成�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2431', '295', '乳山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2432', '295', '环翠�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2433', '295', '文登�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2434', '296', '潍城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2435', '296', '寒亭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2436', '296', '坊子�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2437', '296', '奎文�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2438', '296', '青州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2439', '296', '诸城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2440', '296', '寿光�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2441', '296', '安丘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2442', '296', '高密�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2443', '296', '昌邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2444', '296', '临朐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2445', '296', '昌乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2446', '297', '芝罘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2447', '297', '福山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2448', '297', '牟平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2449', '297', '莱山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2450', '297', '开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2451', '297', '龙口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2452', '297', '莱阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2453', '297', '莱州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2454', '297', '蓬莱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2455', '297', '招远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2456', '297', '栖霞�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2457', '297', '海阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2458', '297', '长岛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2459', '298', '市中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2460', '298', '山亭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2461', '298', '峄城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2463', '298', '薛城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2464', '298', '滕州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2465', '299', '张店�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2466', '299', '临淄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2467', '299', '淄川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2468', '299', '博山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2469', '299', '周村�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2470', '299', '桓台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2471', '299', '高青�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2472', '299', '沂源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2474', '300', '小店�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2475', '300', '迎泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2478', '300', '晋源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2482', '300', '清徐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2483', '300', '阳曲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2484', '300', '娄烦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2485', '300', '古交�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2486', '301', '城区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2487', '301', '郊区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2488', '301', '沁县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2489', '301', '潞城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2490', '301', '长治�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2491', '301', '襄垣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2492', '301', '屯留�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2493', '301', '平顺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2494', '301', '黎城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2495', '301', '壶关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2496', '301', '长子�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2497', '301', '武乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2498', '301', '沁源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2499', '302', '城区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2500', '302', '矿区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2501', '302', '南郊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2502', '302', '新荣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2503', '302', '阳高�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2504', '302', '天镇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2505', '302', '广灵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2506', '302', '灵丘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2507', '302', '浑源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2508', '302', '左云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2509', '302', '大同�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2510', '303', '城区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2511', '303', '高平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2512', '303', '沁水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2513', '303', '阳城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2514', '303', '陵川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2515', '303', '泽州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2516', '304', '榆次�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2517', '304', '介休�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2518', '304', '榆社�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2519', '304', '左权�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2520', '304', '和顺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2521', '304', '昔阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2522', '304', '寿阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2523', '304', '太谷�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2524', '304', '祁县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2525', '304', '平遥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2526', '304', '灵石�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2527', '305', '尧都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2528', '305', '侯马�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2529', '305', '霍州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2530', '305', '曲沃�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2531', '305', '翼城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2532', '305', '襄汾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2533', '305', '洪洞�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2534', '305', '吉县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2535', '305', '安泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2536', '305', '浮山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2537', '305', '古县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2538', '305', '乡宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2539', '305', '大宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2540', '305', '隰县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2541', '305', '永和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2542', '305', '蒲县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2543', '305', '汾西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2544', '306', '离石�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2545', '306', '离石�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2546', '306', '孝义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2547', '306', '汾阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2548', '306', '文水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2549', '306', '交城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2550', '306', '兴县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2551', '306', '临县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2552', '306', '柳林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2553', '306', '石楼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2554', '306', '岚县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2555', '306', '方山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2556', '306', '中阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2557', '306', '交口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2558', '307', '朔城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2559', '307', '平鲁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2560', '307', '山阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2561', '307', '应县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2562', '307', '右玉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2564', '308', '忻府�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2565', '308', '原平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2566', '308', '定襄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2567', '308', '五台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2568', '308', '代县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2569', '308', '繁峙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2570', '308', '宁武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2571', '308', '静乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2572', '308', '神池�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2573', '308', '五寨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2574', '308', '岢岚�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2575', '308', '河曲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2576', '308', '保德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2577', '308', '偏关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2578', '309', '城区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2579', '309', '矿区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2580', '309', '郊区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2581', '309', '平定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2582', '309', '盂县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2583', '310', '盐湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2584', '310', '永济�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2585', '310', '河津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2586', '310', '临猗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2587', '310', '万荣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2588', '310', '闻喜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2589', '310', '稷山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2590', '310', '新绛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2591', '310', '绛县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2592', '310', '垣曲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2593', '310', '夏县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2594', '310', '平陆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2595', '310', '芮城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2596', '311', '莲湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2597', '311', '新城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2598', '311', '碑林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2599', '311', '雁塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2600', '311', '灞桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2601', '311', '未央�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2602', '311', '阎良�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2603', '311', '临潼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2604', '311', '长安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2605', '311', '蓝田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2606', '311', '周至�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2607', '311', '户县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2608', '311', '高陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2609', '312', '汉滨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2610', '312', '汉阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2611', '312', '石泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2612', '312', '宁陕�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2613', '312', '紫阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2614', '312', '岚皋�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2615', '312', '平利�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2616', '312', '镇坪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2617', '312', '旬阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2618', '312', '白河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2619', '313', '陈仓�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2620', '313', '渭滨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2621', '313', '金台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2622', '313', '凤翔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2623', '313', '岐山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2624', '313', '扶风�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2625', '313', '眉县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2626', '313', '陇县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2627', '313', '千阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2628', '313', '麟游�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2629', '313', '凤县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2630', '313', '太白�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2631', '314', '汉台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2632', '314', '南郑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2633', '314', '城固�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2634', '314', '洋县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2635', '314', '西乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2636', '314', '勉县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2637', '314', '宁强�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2638', '314', '略阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2639', '314', '镇巴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2640', '314', '留坝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2641', '314', '佛坪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2642', '315', '商州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2643', '315', '洛南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2644', '315', '丹凤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2645', '315', '商南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2646', '315', '山阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2647', '315', '镇安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2648', '315', '柞水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2649', '316', '耀州区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2650', '316', '王益�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2651', '316', '印台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2652', '316', '宜君�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2653', '317', '临渭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2654', '317', '韩城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2655', '317', '华阴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2656', '317', '华县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2657', '317', '潼关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2658', '317', '大荔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2659', '317', '合阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2660', '317', '澄城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2661', '317', '蒲城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2662', '317', '白水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2663', '317', '富平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2664', '318', '秦都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2665', '318', '渭城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2666', '318', '杨陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2667', '318', '兴平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2668', '318', '三原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2669', '318', '泾阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2670', '318', '乾县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2671', '318', '礼泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2672', '318', '永寿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2673', '318', '彬县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2674', '318', '长武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2675', '318', '旬邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2676', '318', '淳化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2677', '318', '武功�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2678', '319', '吴起�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2679', '319', '宝塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2680', '319', '延长�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2681', '319', '延川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2682', '319', '子长�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2683', '319', '安塞�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2684', '319', '志丹�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2685', '319', '甘泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2686', '319', '富县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2687', '319', '洛川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2688', '319', '宜川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2689', '319', '黄龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2690', '319', '黄陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2691', '320', '榆阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2692', '320', '神木�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2693', '320', '府谷�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2694', '320', '横山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2695', '320', '靖边�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2696', '320', '定边�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2697', '320', '绥德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2698', '320', '米脂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2699', '320', '佳县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2700', '320', '吴堡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2701', '320', '清涧�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2702', '320', '子洲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2703', '321', '长宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2704', '321', '闸北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2705', '321', '闵行�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2706', '321', '徐汇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2708', '321', '杨浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2709', '321', '普陀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2710', '321', '静安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2711', '321', '卢湾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2712', '321', '虹口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2713', '321', '黄浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2714', '321', '南汇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2715', '321', '松江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2716', '321', '嘉定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2717', '321', '宝山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2718', '321', '青浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2719', '321', '金山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2720', '321', '奉贤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2721', '321', '崇明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2722', '322', '青羊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2723', '322', '锦江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2724', '322', '金牛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2725', '322', '武侯�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2726', '322', '成华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2728', '322', '青白江区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2729', '322', '新都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2730', '322', '温江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2731', '322', '高新�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2732', '322', '高新西区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2734', '322', '彭州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2735', '322', '邛崃�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2736', '322', '崇州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2737', '322', '金堂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2738', '322', '双流�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2739', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2740', '322', '大邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2741', '322', '蒲江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2742', '322', '新津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2744', '322', '彭州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2745', '322', '邛崃�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2746', '322', '崇州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2747', '322', '金堂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2748', '322', '双流�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2749', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2750', '322', '大邑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2751', '322', '蒲江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2752', '322', '新津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2753', '323', '涪城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2754', '323', '游仙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2755', '323', '江油�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2756', '323', '盐亭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2757', '323', '三台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2758', '323', '平武�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2759', '323', '安县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2760', '323', '梓潼�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2761', '323', '北川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2763', '324', '汶川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2764', '324', '理县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2765', '324', '茂县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2766', '324', '松潘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2768', '324', '金川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2769', '324', '小金�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2770', '324', '黑水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2771', '324', '壤塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2772', '324', '阿坝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2774', '324', '红原�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2775', '325', '巴州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2776', '325', '通江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2777', '325', '南江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2778', '325', '平昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2779', '326', '通川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2780', '326', '万源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2781', '326', '达县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2782', '326', '宣汉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2783', '326', '开江县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2784', '326', '大竹�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2785', '326', '渠县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2786', '327', '旌阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2787', '327', '广汉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2788', '327', '什邡市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2789', '327', '绵竹�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2790', '327', '罗江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2791', '327', '中江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2792', '328', '康定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2793', '328', '丹巴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2794', '328', '泸定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2795', '328', '炉霍�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2796', '328', '九龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2797', '328', '甘孜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2798', '328', '雅江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2799', '328', '新龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2800', '328', '道孚�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2801', '328', '白玉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2802', '328', '理塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2803', '328', '德格�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2804', '328', '乡城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2805', '328', '石渠�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2806', '328', '稻城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2807', '328', '色达�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2808', '328', '巴塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2809', '328', '得荣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2810', '329', '广安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2811', '329', '华蓥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2812', '329', '岳池�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2813', '329', '武胜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2814', '329', '邻水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2815', '330', '利州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2816', '330', '元坝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2817', '330', '朝天�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2818', '330', '旺苍�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2819', '330', '青川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2820', '330', '剑阁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2821', '330', '苍溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2823', '331', '乐山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2824', '331', '犍为�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2825', '331', '井研�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2826', '331', '夹江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2827', '331', '沐川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2828', '331', '峨边', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2829', '331', '马边', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2830', '332', '西昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2831', '332', '盐源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2832', '332', '德昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2833', '332', '会理�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2834', '332', '会东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2835', '332', '宁南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2836', '332', '普格�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2837', '332', '布拖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2838', '332', '金阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2839', '332', '昭觉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2840', '332', '喜德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2841', '332', '冕宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2842', '332', '越西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2843', '332', '甘洛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2844', '332', '美姑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2845', '332', '雷波�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2846', '332', '木里', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2847', '333', '东坡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2848', '333', '仁寿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2849', '333', '彭山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2850', '333', '洪雅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2851', '333', '丹棱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2852', '333', '青神�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2853', '334', '阆中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2854', '334', '南部�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2855', '334', '营山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2856', '334', '蓬安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2857', '334', '仪陇�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2858', '334', '顺庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2859', '334', '高坪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2860', '334', '嘉陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2861', '334', '西充�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2862', '335', '市中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2863', '335', '东兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2864', '335', '威远�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2865', '335', '资中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2866', '335', '隆昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2867', '336', '�\�  �\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2868', '336', '�\�  �\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2869', '336', '仁和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2870', '336', '米易�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2871', '336', '盐边�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2872', '337', '船山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2873', '337', '安居�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2874', '337', '蓬溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2875', '337', '射洪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2876', '337', '大英�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2877', '338', '雨城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2878', '338', '名山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2879', '338', '荥经�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2880', '338', '汉源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2881', '338', '石棉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2882', '338', '天全�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2883', '338', '芦山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2884', '338', '宝兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2885', '339', '翠屏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2886', '339', '宜宾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2887', '339', '南溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2888', '339', '江安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2889', '339', '长宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2890', '339', '高县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2891', '339', '珙县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2892', '339', '筠连�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2893', '339', '兴文�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2894', '339', '屏山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2895', '340', '雁江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2896', '340', '简阳市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2897', '340', '安岳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2898', '340', '乐至�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2899', '341', '大安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2900', '341', '自流井区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2901', '341', '贡井�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2902', '341', '沿滩�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2903', '341', '荣县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2904', '341', '富顺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2905', '342', '江阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2906', '342', '纳溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2908', '342', '泸县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2909', '342', '合江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2910', '342', '叙永�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2911', '342', '古蔺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2912', '343', '和平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2913', '343', '河西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2914', '343', '南开�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2915', '343', '河北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2916', '343', '河东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2917', '343', '红桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2918', '343', '东丽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2919', '343', '津南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2920', '343', '西青�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2921', '343', '北辰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2922', '343', '塘沽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2923', '343', '汉沽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2924', '343', '大港�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2925', '343', '武清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2926', '343', '宝坻�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2928', '343', '宁河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2929', '343', '静海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2930', '343', '蓟县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2931', '344', '城关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2932', '344', '林周�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2933', '344', '当雄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2934', '344', '尼木�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2935', '344', '曲水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2936', '344', '堆龙德庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2937', '344', '达孜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2938', '344', '墨竹工卡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2939', '345', '噶尔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2940', '345', '普兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2941', '345', '札达�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2942', '345', '日土�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2943', '345', '革吉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2944', '345', '改则�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2945', '345', '措勤�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2946', '346', '昌都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2947', '346', '江达�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2948', '346', '贡觉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2950', '346', '丁青�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2951', '346', '察雅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2952', '346', '八宿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2953', '346', '左贡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2954', '346', '芒康�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2955', '346', '洛隆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2956', '346', '边坝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2957', '347', '林芝�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2958', '347', '工布江达�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2959', '347', '米林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2960', '347', '墨脱�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2961', '347', '波密�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2962', '347', '察隅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2963', '347', '朗县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2964', '348', '那曲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2965', '348', '嘉黎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2966', '348', '比如�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2967', '348', '聂荣�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2968', '348', '安多�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2969', '348', '申扎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2970', '348', '索县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2971', '348', '班戈�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2972', '348', '巴青�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2973', '348', '尼玛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2975', '349', '南木林县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2976', '349', '江孜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2977', '349', '定日�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2978', '349', '萨迦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2979', '349', '拉孜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2980', '349', '昂仁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2981', '349', '谢通门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2982', '349', '白朗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2983', '349', '仁布�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2984', '349', '康马�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2985', '349', '定结�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2986', '349', '仲巴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2987', '349', '亚东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2988', '349', '吉隆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2990', '349', '萨嘎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2991', '349', '岗巴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2992', '350', '乃东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2993', '350', '扎囊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2994', '350', '贡嘎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2995', '350', '桑日�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2996', '350', '琼结�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2997', '350', '曲松�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2998', '350', '措美�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2999', '350', '洛扎�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3000', '350', '加查�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3001', '350', '隆子�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3002', '350', '错那�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3004', '351', '天山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3005', '351', '沙依巴克�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3006', '351', '新市�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3010', '351', '米东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3011', '351', '乌鲁木齐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3013', '352', '温宿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3014', '352', '库车�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3015', '352', '沙雅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3016', '352', '新和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3017', '352', '拜城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3018', '352', '乌什�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3020', '352', '柯坪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3023', '354', '轮台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3024', '354', '尉犁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3025', '354', '若羌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3026', '354', '且末�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3027', '354', '焉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3028', '354', '和静�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3029', '354', '和硕�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3030', '354', '博湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3031', '355', '博乐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3032', '355', '精河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3033', '355', '温泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3035', '356', '米泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3036', '356', '昌吉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3037', '356', '阜康�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3039', '356', '奇台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3040', '356', '吉木萨尔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3041', '356', '木垒', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3042', '357', '哈密�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3043', '357', '伊吾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3044', '357', '巴里�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3045', '358', '和田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3046', '358', '和田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3047', '358', '墨玉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3048', '358', '皮山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3049', '358', '洛浦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3050', '358', '策勒�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3051', '358', '于田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3052', '358', '民丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3053', '359', '喀什�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3054', '359', '疏附�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3055', '359', '疏勒�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3057', '359', '泽普�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3058', '359', '莎车�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3059', '359', '叶城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3062', '359', '伽师�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3063', '359', '巴楚�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3064', '359', '塔什库尔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3065', '360', '克拉玛依�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3066', '361', '阿图什�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3069', '361', '乌恰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3070', '362', '石河子市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3071', '363', '图木舒克�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3073', '364', '鄯善�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3078', '366', '伊宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3080', '366', '奎屯�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3081', '366', '乌苏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3082', '366', '额敏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3083', '366', '富蕴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3084', '366', '伊宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3085', '366', '福海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3086', '366', '霍城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3087', '366', '沙湾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3088', '366', '巩留�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3090', '366', '托里�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3091', '366', '青河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3092', '366', '新源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3093', '366', '裕民�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3094', '366', '和布克赛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3096', '366', '昭苏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3100', '367', '盘龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3101', '367', '五华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3102', '367', '官渡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3103', '367', '西山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3104', '367', '东川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3105', '367', '安宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3106', '367', '呈贡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3107', '367', '晋宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3108', '367', '富民�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3109', '367', '宜良�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3110', '367', '嵩明�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3111', '367', '石林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3112', '367', '禄劝', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3113', '367', '寻甸', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3114', '368', '兰坪', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3115', '368', '泸水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3116', '368', '福贡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3117', '368', '贡山', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3118', '369', '宁洱', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3119', '369', '思茅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3120', '369', '墨江', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3121', '369', '景东', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3122', '369', '景谷', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3123', '369', '镇沅', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3124', '369', '江城', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3125', '369', '孟连', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3126', '369', '澜沧', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3127', '369', '西盟', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3128', '370', '古城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3130', '370', '玉龙', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3131', '370', '永胜�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3132', '370', '华坪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3133', '371', '隆阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3134', '371', '施甸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3135', '371', '腾冲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3136', '371', '龙陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3137', '371', '昌宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3138', '372', '楚雄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3139', '372', '双柏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3140', '372', '牟定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3141', '372', '南华�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3142', '372', '姚安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3143', '372', '大姚�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3144', '372', '永仁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3145', '372', '元谋�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3146', '372', '武定�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3147', '372', '禄丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3148', '373', '大理�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3149', '373', '祥云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3150', '373', '宾川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3151', '373', '弥渡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3152', '373', '永平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3153', '373', '云龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3154', '373', '洱源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3155', '373', '剑川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3156', '373', '鹤庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3157', '373', '漾濞', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3158', '373', '南涧', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3159', '373', '巍山', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3160', '374', '潞西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3161', '374', '瑞丽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3162', '374', '梁河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3163', '374', '盈江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3164', '374', '陇川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3165', '375', '香格里拉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3166', '375', '德钦�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3167', '375', '维西', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3168', '376', '泸西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3169', '376', '蒙自�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3170', '376', '个旧�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3171', '376', '开远市', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3172', '376', '绿春�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3173', '376', '建水�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3174', '376', '石屏�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3175', '376', '弥勒�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3176', '376', '元阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3177', '376', '红河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3178', '376', '金平', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3179', '376', '河口', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3180', '376', '屏边', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3181', '377', '临翔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3182', '377', '凤庆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3183', '377', '云县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3184', '377', '永德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3185', '377', '镇康�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3186', '377', '双江', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3187', '377', '耿马', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3188', '377', '沧源', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3189', '378', '麒麟�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3190', '378', '宣威�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3191', '378', '马龙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3192', '378', '陆良�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3193', '378', '师宗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3194', '378', '罗平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3195', '378', '富源�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3196', '378', '会泽�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3197', '378', '沾益�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3198', '379', '文山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3199', '379', '砚山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3200', '379', '西畴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3202', '379', '马关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3203', '379', '丘北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3204', '379', '广南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3205', '379', '富宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3206', '380', '景洪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3207', '380', '勐海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3208', '380', '勐腊�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3209', '381', '红塔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3210', '381', '江川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3211', '381', '澄江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3212', '381', '通海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3213', '381', '华宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3214', '381', '易门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3215', '381', '峨山', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3216', '381', '新平', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3217', '381', '元江', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3218', '382', '昭阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3219', '382', '鲁甸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3220', '382', '巧家�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3221', '382', '盐津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3222', '382', '大关�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3223', '382', '永善�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3224', '382', '绥江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3225', '382', '镇雄�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3226', '382', '彝良�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3227', '382', '威信�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3228', '382', '水富�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3229', '383', '西湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3230', '383', '上城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3231', '383', '下城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3232', '383', '拱墅�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3233', '383', '滨江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3234', '383', '江干�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3235', '383', '萧山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3236', '383', '余杭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3237', '383', '市郊', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3238', '383', '建德�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3239', '383', '富阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3240', '383', '临安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3241', '383', '桐庐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3242', '383', '淳安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3243', '384', '吴兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3244', '384', '南浔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3245', '384', '德清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3246', '384', '长兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3247', '384', '安吉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3248', '385', '南湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3250', '385', '海宁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3251', '385', '嘉善�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3252', '385', '平湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3253', '385', '桐乡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3254', '385', '海盐�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3255', '386', '婺城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3256', '386', '金东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3257', '386', '兰溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3258', '386', '市区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3259', '386', '佛堂�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3260', '386', '上溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3261', '386', '义亭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3262', '386', '大陈�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3263', '386', '苏溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3264', '386', '赤岸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3265', '386', '东阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3266', '386', '永康�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3267', '386', '武义�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3268', '386', '浦江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3269', '386', '磐安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3270', '387', '莲都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3271', '387', '龙泉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3272', '387', '青田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3273', '387', '缙云�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3274', '387', '遂昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3275', '387', '松阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3276', '387', '云和�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3277', '387', '庆元�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3278', '387', '景宁', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3279', '388', '海曙�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3280', '388', '江东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3281', '388', '江北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3282', '388', '镇海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3283', '388', '北仑�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3284', '388', '鄞州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3285', '388', '余姚�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3286', '388', '慈溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3287', '388', '奉化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3288', '388', '象山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3289', '388', '宁海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3290', '389', '越城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3291', '389', '上虞�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3292', '389', '嵊州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3293', '389', '绍兴�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3294', '389', '新昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3295', '389', '诸暨�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3296', '390', '椒江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3297', '390', '黄岩�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3298', '390', '路桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3299', '390', '温岭�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3300', '390', '临海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3301', '390', '玉环�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3302', '390', '三门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3303', '390', '天台�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3304', '390', '仙居�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3305', '391', '鹿城�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3306', '391', '龙湾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3307', '391', '瓯海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3308', '391', '瑞安�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3309', '391', '乐清�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3310', '391', '洞头�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3311', '391', '永嘉�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3312', '391', '平阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3313', '391', '苍南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3314', '391', '文成�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3315', '391', '泰顺�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3316', '392', '定海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3317', '392', '普陀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3318', '392', '岱山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3319', '392', '嵊泗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3320', '393', '衢州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3321', '393', '江山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3322', '393', '常山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3323', '393', '开化县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3324', '393', '龙游�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3325', '394', '合川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3326', '394', '江津�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3327', '394', '南川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3328', '394', '永川�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3329', '394', '南岸�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3330', '394', '渝北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3331', '394', '万盛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3333', '394', '万州�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3334', '394', '北碚�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3336', '394', '巴南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3337', '394', '涪陵�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3338', '394', '江北�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3340', '394', '渝中�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3342', '394', '长寿�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3343', '394', '双桥�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3344', '394', '綦江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3345', '394', '潼南�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3346', '394', '铜梁�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3347', '394', '大足�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3348', '394', '荣昌�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3349', '394', '璧山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3350', '394', '垫江�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3351', '394', '武隆�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3352', '394', '丰都�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3353', '394', '城口�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3354', '394', '梁平�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3355', '394', '开�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3356', '394', '巫溪�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3357', '394', '巫山�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3358', '394', '奉节�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3359', '394', '云阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3360', '394', '忠县', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3361', '394', '石柱', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3362', '394', '彭水', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3363', '394', '酉阳', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3364', '394', '秀�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3365', '395', '沙田�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3366', '395', '东区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3367', '395', '观塘�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3370', '395', '屯门�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3371', '395', '葵青�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3372', '395', '元朗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3374', '395', '西贡�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3375', '395', '大埔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3376', '395', '湾仔�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3378', '395', '北区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3379', '395', '南区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3380', '395', '荃湾�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3381', '395', '中西�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3382', '395', '离岛�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3383', '396', '澳门', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3384', '397', '台北', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3385', '397', '高雄', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3386', '397', '基隆', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3387', '397', '台中', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3388', '397', '台南', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3389', '397', '新竹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3390', '397', '嘉义', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3391', '397', '宜兰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3392', '397', '桃园�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3393', '397', '苗栗�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3394', '397', '彰化�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3395', '397', '南投�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3396', '397', '云林�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3397', '397', '屏东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3398', '397', '台东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3399', '397', '花莲�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3400', '397', '澎湖�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3401', '3', '合肥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3402', '3401', '庐阳�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3403', '3401', '瑶海�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3405', '3401', '包河�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3406', '3401', '长丰�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3407', '3401', '肥东�\�', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3408', '3401', '肥西�\�', '3', '0');
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('1', 'sto_express', '申通快�\�', '江、浙、沪地区首重�\�15�\�/KG，其他地�\�18�\�/KG�\� 续重均为5-6�\�/KG�\� 云南地区�\�8�\�', '0', '0', '1', '', '/images/receipt/dly_sto_express.jpg', 't_shop_address,网店-地址,235,48,131,152,b_shop_address||,||t_shop_name,网店-名称,237,26,131,200,b_shop_name||,||t_shop_tel,网店-联系电话,96,36,144,257,b_shop_tel||,||t_customer_post,收件�\�-邮编,86,23,578,268,b_customer_post||,||t_customer_address,收件�\�-详细地址,232,49,434,149,b_customer_address||,||t_customer_name,收件�\�-姓名,151,27,449,231,b_customer_name||,||t_customer_tel,收件�\�-电话,90,32,452,261,b_customer_tel||,||', '2', '0');
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shipping_area` ( `shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure` ) VALUES  ('1', '申通速�\�', '1', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_number\";}}');
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('101', '1', 'shop_name', 'text', '', '', '中国富硒', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('102', '1', 'shop_title', 'text', '', '', '中国富硒', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('103', '1', 'shop_desc', 'text', '', '', '中国富硒', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('104', '1', 'shop_keywords', 'text', '', '', '中国富硒', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('106', '1', 'shop_province', 'manual', '', '', '2', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('107', '1', 'shop_city', 'manual', '', '', '52', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('108', '1', 'shop_address', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('109', '1', 'qq', 'text', '', '', '123456,1234567,12345678', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('110', '1', 'ww', 'text', '', '', '123456,1234567,12345678', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('115', '1', 'service_phone', 'text', '', '', '12345678', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告�\�', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('121', '1', 'shop_notice', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('202', '2', 'icp_number', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('213', '2', 'sn_prefix', 'text', '', '', 'fuxi', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('229', '2', 'default_storage', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('231', '2', 'visit_stats', 'select', 'on,off', '', 'on', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('239', '2', 'certificate_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('240', '2', 'token', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('303', '3', 'currency_format', 'text', '', '', '�\�%s�\�', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('304', '3', 'thumb_width', 'text', '', '', '230', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('305', '3', 'thumb_height', 'text', '', '', '230', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('306', '3', 'image_width', 'text', '', '', '360', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('307', '3', 'image_height', 'text', '', '', '360', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('312', '3', 'top_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('316', '3', 'article_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('317', '3', 'goods_name_length', 'text', '', '', '36', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('319', '3', 'page_size', 'text', '', '', '20', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('325', '3', 'article_title_length', 'text', '', '', '20', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('327', '3', 'name_of_region_2', 'text', '', '', '�\�', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('328', '3', 'name_of_region_3', 'text', '', '', '�\�', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('329', '3', 'name_of_region_4', 'text', '', '', '�\�', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('330', '3', 'search_keywords', 'text', '', '', '', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('503', '5', 'smtp_user', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('504', '5', 'smtp_pass', 'password', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('505', '5', 'smtp_mail', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('603', '6', 'hash_code', 'hidden', '', '', '31693422540744c0a6b6da635b7a5a93', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('604', '6', 'template', 'hidden', '', '', 'ecmoban_benlai2015', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('605', '6', 'install_date', 'hidden', '', '', '1459232659', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('617', '6', 'captcha', 'hidden', '', '', '12', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('901', '9', 'wap_config', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `consignee`, `email`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `sign_building`, `best_time` ) VALUES  ('1', '', '1', '123', '123@qq.com', '1', '2', '52', '500', '123', '', '123', '', '', '');
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_rank` ( `rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank` ) VALUES  ('1', '注册用户', '0', '10000', '100', '1', '0');
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('1', '123@qq.com', 'admin888', '5714cfd9c3d0a3bb2d3524f8d4c8069a', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '1', '1459877864', '1459989539', '0000-00-00 00:00:00', '127.0.0.1', '3', '0', '0', '3535', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- END ecshop v2.x SQL Dump Program