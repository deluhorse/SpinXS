CREATE TABLE `tbl_um_shop_warehouse`  (
  `warehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` char(16) NOT NULL,
  `warehouse_name` varchar(64) NOT NULL,
  `oversea` int(1) NOT NULL DEFAULT -1 COMMENT '是否为海外仓库  -1 否， 1 是',
  `address` varchar(64) NOT NULL COMMENT '仓库地址',
  `return_address` varchar(64) NOT NULL COMMENT '仓库退货地址',
  PRIMARY KEY (`warehouse_id`)
) COMMENT = '商户仓库维护表';