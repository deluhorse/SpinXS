ALTER TABLE `tbl_um_buyer_id_card`
CHANGE COLUMN `buyer_id` `buyer_id` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '场景用户id，如在糗百app里就是userId，在微信里就是openId' FIRST,
CHANGE COLUMN `name` `name` VARCHAR(45) NOT NULL DEFAULT '' COMMENT '身份证姓名' AFTER `buyer_id`,
CHANGE COLUMN `create_time` `create_time` DATETIME NULL COMMENT '创建时间' ,
ADD COLUMN `last_update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP AFTER `create_time`;
