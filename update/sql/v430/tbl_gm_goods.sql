ALTER TABLE `tbl_gm_goods_extend`
ADD COLUMN `keywords` varchar(500) NOT NULL DEFAULT '' COMMENT '页面关键字' AFTER `share_text`;
ALTER TABLE `tbl_gm_goods_extend`
ADD COLUMN `description` varchar(500) NOT NULL DEFAULT '' COMMENT '页面关键字' AFTER `keywords`;
