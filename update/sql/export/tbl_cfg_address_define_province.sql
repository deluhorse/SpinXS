CREATE TABLE `tbl_cfg_address_define_province`  (
  `province_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '省份id',
  `country_no` int(11) NOT NULL COMMENT '所属国家id',
  `province_name` varchar(32) NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`province_no`)
);
ALTER TABLE `tbl_cfg_address_define_province`
ADD INDEX `country_index`(`country_no`) USING BTREE;
