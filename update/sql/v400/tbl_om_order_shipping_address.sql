ALTER TABLE `tbl_om_order_shipping_address`
ADD COLUMN `email` varchar(64) NULL COMMENT '邮箱' AFTER `id_card`;