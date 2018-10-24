ALTER TABLE `wmb2c`.`tbl_cfg_message_template`
ADD COLUMN `sale_channel` INT(11) NOT NULL DEFAULT '1' AFTER `media_type`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`message_id`, `shop_id`, `admin_id`, `media_type`, `sale_channel`);
