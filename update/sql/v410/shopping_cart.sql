ALTER TABLE `tbl_um_shopping_cart`
ADD COLUMN `goods_name` VARCHAR(180) NOT NULL DEFAULT '' AFTER `goods_id`,
ADD COLUMN `image` VARCHAR(100) NOT NULL DEFAULT '' AFTER `price`,
ADD COLUMN `properties` VARCHAR(300) NOT NULL DEFAULT '' AFTER `image`;
