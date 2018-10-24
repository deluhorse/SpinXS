ALTER TABLE `tbl_um_buyer_address`
ADD COLUMN `country` varchar(64) NOT NULL DEFAULT '中国' COMMENT '所在国家' AFTER `mobile`;

ALTER TABLE `tbl_um_buyer_address`
ADD COLUMN `type` varchar(32) NOT NULL DEFAULT 'shipping_address' COMMENT '地址类别  shipping_address   billing_address' AFTER `create_time`;

ALTER TABLE `tbl_um_buyer_address`
ADD INDEX `type`(`type`) USING BTREE;