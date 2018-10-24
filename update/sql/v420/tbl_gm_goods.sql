ALTER TABLE `tbl_gm_goods`
MODIFY COLUMN `weight` decimal(10, 4) NOT NULL DEFAULT 0.000 COMMENT '重量' AFTER `shipping_template_id`;