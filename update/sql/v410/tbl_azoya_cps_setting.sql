CREATE TABLE `tbl_azoya_cps_setting`  (
  `shop_id` char(16) NOT NULL COMMENT '店铺id',
  `store_id` varchar(32) NOT NULL COMMENT 'cps系统站点id',
  `store_key` varchar(255) NOT NULL COMMENT '验签key',
  PRIMARY KEY (`shop_id`)
);