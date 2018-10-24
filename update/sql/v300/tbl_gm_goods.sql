ALTER TABLE `tbl_gm_goods`
ADD COLUMN `is_deleted` TINYINT(1) NOT NULL DEFAULT '0' AFTER `weight`,
ADD COLUMN `is_gift` TINYINT(1) NOT NULL DEFAULT '0' AFTER `is_deleted`;
