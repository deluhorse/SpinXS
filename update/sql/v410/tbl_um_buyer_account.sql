CREATE TABLE `tbl_um_buyer_account` (
  `account` varchar(50) NOT NULL COMMENT '账户',
  `shop_id` char(16) NOT NULL COMMENT '店铺ID',
  `buyer_id` varchar(50) NOT NULL COMMENT '买家ID',
  `type` varchar(20) NOT NULL COMMENT 'email/mobile/mini_app/wechat(公众号)',
  `password` char(32) NOT NULL DEFAULT '' COMMENT ' md5密码',
  `salt` char(6) NOT NULL DEFAULT '' COMMENT '盐',
  `bind_buyer_id` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定用户',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`account`,`shop_id`) USING BTREE,
  UNIQUE KEY `unique_index` (`buyer_id`,`shop_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;