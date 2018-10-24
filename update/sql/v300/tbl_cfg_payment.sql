ALTER TABLE `wmb2c`.`tbl_cfg_payment`
DROP COLUMN `admin_id`,
ADD COLUMN `is_shelf` TINYINT(1) NOT NULL DEFAULT '0' AFTER `shop_id`;
