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

 Date: 13/08/2018 16:21:25
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_crm_member_tag
-- ----------------------------
CREATE TABLE `tbl_crm_member_tag` (
  `shop_id` char(16) NOT NULL,
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `tag_id` char(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`shop_id`,`mobile`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员标签表';

SET FOREIGN_KEY_CHECKS = 1;
