ALTER TABLE `tbl_fm_withdraw_account`
ADD COLUMN `bank_id` INT(11) NOT NULL DEFAULT '0' AFTER `is_use`,
ADD COLUMN `area_id` INT(11) NOT NULL DEFAULT '0' AFTER `bank_id`;
