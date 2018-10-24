ALTER TABLE `tbl_gm_group`
ADD COLUMN `parent_group_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '父节点id' AFTER `group_id`;

ALTER TABLE `tbl_gm_group`
ADD COLUMN `path` varchar(255) NOT NULL DEFAULT '' COMMENT '节点路径' AFTER `parent_group_id`;

ALTER TABLE `tbl_gm_group`
ADD COLUMN `image` varchar(128) NULL COMMENT '图片' AFTER `create_time`,
ADD COLUMN `sort` integer(11) NULL DEFAULT 0 COMMENT '排序字段' AFTER `image`,
ADD COLUMN `is_navigation` smallint(1) NOT NULL DEFAULT 1 COMMENT '是否显示在导航栏，1 是 -1 否' AFTER `sort`;