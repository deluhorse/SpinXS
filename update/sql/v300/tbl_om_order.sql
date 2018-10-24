ALTER TABLE `tbl_om_order`
ADD COLUMN `type` VARCHAR(20) NULL DEFAULT 'normal' AFTER `create_time`;
