ALTER TABLE `tbl_gm_fare`
MODIFY COLUMN `init_num` float(11, 2) NOT NULL DEFAULT 0 COMMENT '首n件' AFTER `type`,
MODIFY COLUMN `incre_num` float(11, 2) NOT NULL DEFAULT 0 COMMENT '续n件' AFTER `init_fare`;