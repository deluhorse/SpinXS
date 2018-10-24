ALTER TABLE `tbl_om_order_sku`
ADD COLUMN `tax_fee` int(11) NOT NULL DEFAULT 0 COMMENT '税费' AFTER `shipping_fee`;

ALTER TABLE `tbl_om_order_sku`
ADD COLUMN `weight` decimal(9, 2) NOT NULL DEFAULT 0.0 COMMENT '重量' AFTER `original_price`;
