ALTER TABLE `tbl_gm_faretmplt`
ADD COLUMN `warehouse_id` int(11) NULL DEFAULT -1 COMMENT '仓库id，默认为-1，即没有对应仓库';