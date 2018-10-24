ALTER TABLE `tbl_gm_brand`
ADD COLUMN `is_hot` TINYINT(1) NOT NULL DEFAULT 0 AFTER `description`;

ALTER TABLE `tbl_gm_brand`
ADD COLUMN `first_letter` CHAR(1) NOT NULL DEFAULT '' AFTER `description`;

ALTER TABLE `tbl_gm_brand`
ADD INDEX `first_letter` (`first_letter` ASC);

