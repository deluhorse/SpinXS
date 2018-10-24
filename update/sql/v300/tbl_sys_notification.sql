ALTER TABLE `tbl_sys_notification`
CHANGE COLUMN `target` `target` VARCHAR(200) NOT NULL DEFAULT '0' COMMENT '目标对象，ID' ,
ADD COLUMN `notice_type` VARCHAR(200) NOT NULL DEFAULT '' AFTER `target`;
