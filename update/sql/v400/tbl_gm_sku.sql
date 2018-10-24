ALTER TABLE `tbl_gm_sku`
DROP COLUMN `money_unit`;

ALTER TABLE `tbl_gm_sku`
ADD COLUMN `extra_field` varchar(255) NULL COMMENT '额外预留字段' AFTER `last_update_time`;
