CREATE TABLE `tbl_pm_coupon_popup` (
  `shop_id` varchar(16) NOT NULL COMMENT '店铺id',
  `name` varchar(20) NOT NULL COMMENT '弹窗标题',
  `activity_id` varchar(200) NOT NULL COMMENT '优惠券活动id',
  `coupon_color` varchar(7) NOT NULL COMMENT '优惠券颜色',
  `button_color` varchar(7) NOT NULL COMMENT '按钮颜色',
  `open_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1 开启 0 关闭',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

