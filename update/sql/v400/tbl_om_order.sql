ALTER TABLE `tbl_om_order`
CHANGE COLUMN `fax_fee` `tax_fee` int(11) NOT NULL DEFAULT 0 COMMENT '税费' AFTER `shipping_fee`;

ALTER TABLE `tbl_om_order`
ADD COLUMN `currency` varchar(10) NOT NULL DEFAULT 'CNY' COMMENT '货币';