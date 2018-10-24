ALTER TABLE `tbl_gm_goods`
ADD COLUMN `tax_rate` DECIMAL(9,2) NOT NULL DEFAULT 0.00 COMMENT '税率' AFTER `weight`;

ALTER TABLE `tbl_gm_goods`
ADD COLUMN `limited` VARCHAR(300) NOT NULL DEFAULT '' COMMENT '限购，json对象，如{\"order\": 1, \"buyer\": 1}' AFTER `tax_rate`;

ALTER TABLE `tbl_gm_goods`
MODIFY COLUMN `warehouse_id` int(11) NOT NULL DEFAULT -1 COMMENT '仓库ID';

