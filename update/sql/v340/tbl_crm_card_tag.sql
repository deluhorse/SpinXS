CREATE TABLE `tbl_crm_card_tag` (
  `tag_id` char(32) NOT NULL,
  `shop_id` char(16) NOT NULL COMMENT '店铺ID，系统默认数据则为-1',
  `name` varchar(45) NOT NULL COMMENT '标签名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`shop_id`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;