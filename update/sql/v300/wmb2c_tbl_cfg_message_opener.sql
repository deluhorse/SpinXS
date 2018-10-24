ALTER TABLE `tbl_cfg_message_opener`
ADD COLUMN `sale_channel` INT(11) NOT NULL DEFAULT '1' AFTER `message_id`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`shop_id`, `message_id`, `sale_channel`);
