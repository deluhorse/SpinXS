ALTER TABLE `tbl_om_order_shipping_address`
ADD COLUMN `country` varchar(64) NOT NULL DEFAULT '中国' AFTER `mobile`;