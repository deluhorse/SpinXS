ALTER TABLE `tbl_dm_theme_page`
ADD COLUMN `keywords` varchar(500) NOT NULL DEFAULT '' COMMENT '页面关键字' AFTER `component_data`;
ALTER TABLE `tbl_dm_theme_page`
ADD COLUMN `description` varchar(500) NOT NULL DEFAULT '' COMMENT '页面描述' AFTER `keywords`;
