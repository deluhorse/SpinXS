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

 Date: 13/08/2018 16:20:12
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_crm_bonus_record
-- ----------------------------
CREATE TABLE `tbl_crm_bonus_record` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '积分记录id',
  `shop_id` char(16) NOT NULL,
  `buyer_id` varchar(50) NOT NULL COMMENT '买家ID',
  `op_type` tinyint(1) NOT NULL COMMENT '记录类型，1下单抵扣，2下单赚取, 3人工添加，4人工扣除，5激活赠送，6售后返还, 7过期返还',
  `op_amount` int(11) NOT NULL DEFAULT '0' COMMENT '变化金额',
  `parent_order_id` varchar(30) NOT NULL COMMENT '母订单编号(下单时)',
  `apply_id` char(30) NOT NULL DEFAULT '' COMMENT '售后id(退款)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `settle_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '积分修改完成标志',
  `settle_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '积分修改完成时间',
  PRIMARY KEY (`record_id`) USING BTREE,
  KEY `create_time` (`create_time`),
  KEY `index_buyer_id` (`buyer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
