CREATE TABLE `tbl_pm_coupon_issue_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(16) NOT NULL COMMENT '店铺id',
  `buyer_id` varchar(50) NOT NULL COMMENT '买家id',
  `activity_id_list` varchar(200) NOT NULL COMMENT '领取的优惠券id',
  `success_id_list` varchar(200) NOT NULL COMMENT '领取成功的优惠券id',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '领取时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
