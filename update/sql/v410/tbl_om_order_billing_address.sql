CREATE TABLE `tbl_om_order_billing_address` (
  `parent_order_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '收货人',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `country` varchar(64) NOT NULL DEFAULT '中国',
  `province` varchar(15) NOT NULL COMMENT '省',
  `city` varchar(15) NOT NULL COMMENT '市',
  `district` varchar(15) NOT NULL COMMENT '区',
  `street` varchar(100) NOT NULL COMMENT '街道地址',
  `zip_code` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `city_no` int(11) NOT NULL DEFAULT '0' COMMENT '城市编号',
  `id_card` varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`parent_order_id`)
)