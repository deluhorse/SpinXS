CREATE TABLE `tbl_azoya_order_send_log`  (
  `parent_order_id` varchar(30) NOT NULL,
  `send_content` varchar(3000) NOT NULL,
  `status` smallint(1) NOT NULL,
  `message` varchar(255) NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`parent_order_id`)
);