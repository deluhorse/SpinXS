ALTER TABLE `tbl_om_order_activity`
ADD COLUMN `discount_amount` INT(11) NOT NULL DEFAULT '0' AFTER `detail`,
ADD COLUMN `sponsor_code` VARCHAR(30) NOT NULL DEFAULT '' AFTER `discount_amount`;
