ALTER TABLE `tbl_om_order_send`
MODIFY COLUMN `tracking_result` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单物流轨迹' AFTER `create_time`;