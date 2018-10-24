ALTER TABLE `tbl_fm_withdraw`
DROP COLUMN `process_time`,
ADD COLUMN `approve_remark` VARCHAR(300) NOT NULL DEFAULT '' AFTER `create_time`,
ADD COLUMN `approve_time` DATETIME NOT NULL DEFAULT '2018-01-01 00:00:00' AFTER `approve_remark`,
ADD COLUMN `trade_no` VARCHAR(45) NOT NULL DEFAULT '' AFTER `approve_time`,
ADD COLUMN `pay_screen` VARCHAR(300) NOT NULL DEFAULT '' AFTER `trade_no`;
