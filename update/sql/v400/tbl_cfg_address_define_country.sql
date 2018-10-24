/*
 Navicat Premium Data Transfer

 Source Server         : b2c-dev
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : 121.40.116.65:3306
 Source Schema         : wmb2c-180109

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : 65001

 Date: 27/08/2018 14:14:30
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_cfg_address_define_country
-- ----------------------------
CREATE TABLE `tbl_cfg_address_define_country` (
  `country_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '国家id',
  `country_name` varchar(32) NOT NULL COMMENT '国家名称',
  PRIMARY KEY (`country_no`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cfg_address_define_country
-- ----------------------------
BEGIN;
INSERT INTO `tbl_cfg_address_define_country` VALUES (1, '中国');
INSERT INTO `tbl_cfg_address_define_country` VALUES (2, 'USA');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
