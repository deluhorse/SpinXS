ALTER TABLE `tbl_om_order_parent`
ADD COLUMN `type` VARCHAR(20) NOT NULL DEFAULT 'normal' AFTER `sale_channel`,
ADD INDEX `type` (`type` ASC);
