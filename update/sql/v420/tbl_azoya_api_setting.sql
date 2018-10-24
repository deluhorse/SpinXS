CREATE TABLE `tbl_azoya_api_setting` (
  `shop_id` char(16) NOT NULL COMMENT '店铺id',
  `aes_mode` char(20) NOT NULL,
  `aeskey` char(30) NOT NULL,
  `iv` char(20) NOT NULL,
  `md5key` char(50) NOT NULL,
  `provider_code` char(30) NOT NULL,
  `block_size` int(10) NOT NULL,
  `extra` varchar(200) NOT NULL COMMENT '预留字段',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `tbl_azoya_api_setting`(`shop_id`, `aes_mode`, `aeskey`, `iv`, `md5key`, `provider_code`, `block_size`, `extra`) VALUES ('124', 'AES.MODE_CBC', '1qa2ws4rf3edzxcv', 'dfg452ws', 'WC0nZjXgRWhUxvetS@TEST#MD5_2017', 'wemart', 16, '');