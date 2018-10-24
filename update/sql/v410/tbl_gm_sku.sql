ALTER TABLE `tbl_gm_sku`
MODIFY COLUMN `properties` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SKU属性，JSON list字符串' AFTER `is_on_shelf`,
ADD INDEX `extra_field`(`extra_field`) USING BTREE;