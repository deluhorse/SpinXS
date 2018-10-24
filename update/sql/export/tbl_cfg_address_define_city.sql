CREATE TABLE `tbl_cfg_address_define_city`  (
  `city_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '城市id',
  `province_no` int(11) NOT NULL COMMENT '所属省份id',
  `city_name` varchar(32) NOT NULL COMMENT '市名',
  PRIMARY KEY (`city_no`)
);
ALTER TABLE `tbl_cfg_address_define_city`
ADD INDEX `province_index`(`province_no`) USING BTREE;