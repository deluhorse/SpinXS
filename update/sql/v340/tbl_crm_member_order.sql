/*
 Navicat Premium Data Transfer

 Source Server         : b2c
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : 121.40.116.65:3306
 Source Schema         : wmb2c-180109

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : 65001

 Date: 13/08/2018 16:20:31
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_crm_member_order
-- ----------------------------
CREATE TABLE `tbl_crm_member_order` (
  `shop_id` char(16) NOT NULL,
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `order_count` int(11) NOT NULL DEFAULT '0' COMMENT '成交订单数',
  `order_amount` int(11) NOT NULL DEFAULT '0' COMMENT '成交订单金额合计',
  `order_refund_count` int(11) NOT NULL DEFAULT '0' COMMENT '退款订单数',
  `order_refund_amount` int(11) NOT NULL DEFAULT '0' COMMENT '订单退款金额合计',
  `last_order_time` datetime NOT NULL DEFAULT '2018-08-13 00:00:00' COMMENT '最后一次下单时间',
  `last_order_origin` varchar(10) NOT NULL DEFAULT '' COMMENT '最后一次下单来源，wechat微信,web网页,app',
  PRIMARY KEY (`shop_id`,`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员订单统计表';

SET FOREIGN_KEY_CHECKS = 1;
