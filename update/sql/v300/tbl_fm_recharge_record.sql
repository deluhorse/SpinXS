ALTER TABLE `tbl_fm_recharge_record`
ADD COLUMN `type` VARCHAR(20) NOT NULL DEFAULT '' AFTER `amount`,
ADD COLUMN `pay_type` TINYINT(1) NOT NULL DEFAULT '0' AFTER `type`,
ADD COLUMN `remark` TEXT NOT NULL AFTER `pay_type`,
ADD COLUMN `is_invoice` TINYINT(1) NOT NULL DEFAULT '0' AFTER `remark`;
