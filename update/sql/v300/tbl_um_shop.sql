ALTER TABLE `tbl_um_shop`
CHANGE COLUMN `admin_id` `admin_id` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '店铺创建者，注意在tbl_um_admin不能删除' ,
ADD COLUMN `last_login_time` DATETIME NOT NULL DEFAULT '2018-01-01 00:00:00' AFTER `secret_key`;
