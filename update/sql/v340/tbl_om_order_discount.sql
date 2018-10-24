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

 Date: 13/08/2018 16:21:35
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_om_order_discount
-- ----------------------------
CREATE TABLE `tbl_om_order_discount` (
  `order_id` varchar(30) NOT NULL COMMENT '订单id',
  `type` varchar(45) NOT NULL DEFAULT '' COMMENT '优惠种类',
  `discount_amount` int(11) NOT NULL COMMENT '优惠金额',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `extra` varchar(500) NOT NULL COMMENT '额外信息, 当优惠类型为积分抵扣时，记录抵扣的积分以及赠送的积分',
  PRIMARY KEY (`order_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
