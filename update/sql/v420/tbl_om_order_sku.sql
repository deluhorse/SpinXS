ALTER TABLE `tbl_om_order_sku`
ADD COLUMN `extra_field` varchar(255) NULL COMMENT '预留字段' AFTER `type`;