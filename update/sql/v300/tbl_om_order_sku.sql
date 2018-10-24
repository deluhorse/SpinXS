ALTER TABLE `tbl_om_order_sku`
ADD COLUMN `original_price` INT NOT NULL DEFAULT '0' AFTER `price`,
ADD COLUMN `bar_code` VARCHAR(50) NOT NULL DEFAULT '' AFTER `ext_json`,
ADD COLUMN `type` VARCHAR(20) NOT NULL DEFAULT 'normal' AFTER `bar_code`;
