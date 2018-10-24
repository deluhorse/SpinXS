CREATE TABLE `tbl_cfg_address_define_district`  (
  `district_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '区id',
  `city_no` int(11) NOT NULL COMMENT '所属城市id',
  `district_name` varchar(32) NOT NULL COMMENT '区名',
  PRIMARY KEY (`district_no`)
);
ALTER TABLE `tbl_cfg_address_define_district`
ADD INDEX `city_index`(`city_no`) USING BTREE;