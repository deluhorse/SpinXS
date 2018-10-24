CREATE TABLE `tbl_crm_member_search_condition` (
  `condition_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` char(16) NOT NULL COMMENT '店铺ID',
  `name` varchar(45) NOT NULL COMMENT '条件名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`condition_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;