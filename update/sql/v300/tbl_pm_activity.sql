ALTER TABLE `tbl_pm_activity`
ADD COLUMN `open_flag` TINYINT(1) NOT NULL DEFAULT '1' AFTER `is_deleted`;
