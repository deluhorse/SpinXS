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

 Date: 14/08/2018 21:58:16
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_crm_member_card_statcalculate_usable_promotionus
-- ----------------------------
CREATE TABLE `tbl_crm_member_card_status` (
  `card_id` varchar(45) NOT NULL COMMENT '第三方会员卡id(微信)',
  `card_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '激活状态(0、未激活 1、已激活 2、审核失败)',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
