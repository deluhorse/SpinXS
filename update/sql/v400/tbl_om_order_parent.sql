ALTER TABLE `tbl_om_order_parent`
CHANGE COLUMN `money_unit` `currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'CNY' COMMENT '货币';