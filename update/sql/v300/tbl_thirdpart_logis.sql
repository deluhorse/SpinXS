ALTER TABLE `tbl_thirdpart_logis`
CHANGE COLUMN `shipper_code` `shipper_code` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '快递公司编码' ,
CHANGE COLUMN `shipper_name` `shipper_name` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '快递公司名称' ,
ADD COLUMN `type` VARCHAR(200) NOT NULL DEFAULT 'kuaidi100' AFTER `shipper_name`;
