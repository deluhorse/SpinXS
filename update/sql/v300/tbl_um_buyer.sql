ALTER TABLE `tbl_um_buyer`
ADD COLUMN `name` VARCHAR(30) NOT NULL DEFAULT '' AFTER `origin`,
ADD COLUMN `head_img` VARCHAR(300) NOT NULL DEFAULT '' AFTER `name`;
