ALTER TABLE `tbl_cfg_customer_service`
ADD COLUMN `is_open` TINYINT(1) NOT NULL DEFAULT 0 AFTER `code`;
