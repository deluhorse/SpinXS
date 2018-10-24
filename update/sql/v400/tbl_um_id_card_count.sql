-- ----------------------------
-- Table structure for tbl_um_id_card_count.sql
-- ----------------------------
CREATE TABLE `tbl_um_id_card_count` (
  `buyer_id` varchar(50) NOT NULL COMMENT '场景用户id',
  `shop_id` char(16) NOT NULL COMMENT '商户id',
  `count` smallint(5) NOT NULL DEFAULT '1' COMMENT '第三方验证次数 默认1',
  PRIMARY KEY (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;