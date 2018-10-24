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

 Date: 13/08/2018 16:24:45
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_um_bind_phone
-- ----------------------------
CREATE TABLE `tbl_um_bind_phone` (
  `shop_id` char(16) NOT NULL,
  `buyer_id` varchar(50) NOT NULL COMMENT '买家ID',
  `scene_type` varchar(50) NOT NULL COMMENT 'service_account, mini_app',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`shop_id`,`buyer_id`,`scene_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='买家手机号绑定表';

SET FOREIGN_KEY_CHECKS = 1;
