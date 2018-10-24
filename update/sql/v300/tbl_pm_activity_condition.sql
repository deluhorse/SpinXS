ALTER TABLE `tbl_pm_activity_condition`
CHANGE COLUMN `discount_type` `discount_type` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '折扣类型 free_shipping_fee免运费, percent折扣百分比, amount折扣现金' ,
ADD COLUMN `limit_type` VARCHAR(20) NOT NULL DEFAULT 'full_amount' AFTER `limit_amount`,
ADD COLUMN `extend_value` VARCHAR(2000) NOT NULL DEFAULT '' AFTER `limit_type`;
