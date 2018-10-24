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

 Date: 27/08/2018 14:14:46
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_cfg_address_define_province
-- ----------------------------
CREATE TABLE `tbl_cfg_address_define_province` (
  `province_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '省份id',
  `country_no` int(11) NOT NULL COMMENT '所属国家id',
  `province_name` varchar(32) NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`province_no`),
  KEY `country_index` (`country_no`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cfg_address_define_province
-- ----------------------------
BEGIN;
INSERT INTO `tbl_cfg_address_define_province` VALUES (2, 1, '天津市');
INSERT INTO `tbl_cfg_address_define_province` VALUES (1, 1, '北京市');
INSERT INTO `tbl_cfg_address_define_province` VALUES (3, 1, '河北省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (4, 1, '山西省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (5, 1, '内蒙古自治区');
INSERT INTO `tbl_cfg_address_define_province` VALUES (6, 1, '辽宁省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (7, 1, '吉林省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (8, 1, '黑龙江省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (9, 1, '上海市');
INSERT INTO `tbl_cfg_address_define_province` VALUES (10, 1, '江苏省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (11, 1, '浙江省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (12, 1, '安徽省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (13, 1, '福建省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (14, 1, '江西省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (15, 1, '山东省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (16, 1, '河南省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (17, 1, '湖北省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (18, 1, '湖南省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (19, 1, '广东省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (20, 1, '广西壮族自治区');
INSERT INTO `tbl_cfg_address_define_province` VALUES (21, 1, '海南省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (22, 1, '重庆市');
INSERT INTO `tbl_cfg_address_define_province` VALUES (23, 1, '四川省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (24, 1, '贵州省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (25, 1, '云南省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (26, 1, '西藏自治区');
INSERT INTO `tbl_cfg_address_define_province` VALUES (27, 1, '陕西省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (28, 1, '甘肃省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (29, 1, '青海省');
INSERT INTO `tbl_cfg_address_define_province` VALUES (30, 1, '宁夏回族自治区');
INSERT INTO `tbl_cfg_address_define_province` VALUES (31, 1, '新疆维吾尔自治区');
INSERT INTO `tbl_cfg_address_define_province` VALUES (32, 1, '台湾');
INSERT INTO `tbl_cfg_address_define_province` VALUES (33, 1, '香港');
INSERT INTO `tbl_cfg_address_define_province` VALUES (34, 1, '澳门');
INSERT INTO `tbl_cfg_address_define_province` VALUES (35, 1, '全国默认地区');
INSERT INTO `tbl_cfg_address_define_province` VALUES (94, 2, 'Rhode Island');
INSERT INTO `tbl_cfg_address_define_province` VALUES (93, 2, 'Pennsylvania');
INSERT INTO `tbl_cfg_address_define_province` VALUES (92, 2, 'Oregon');
INSERT INTO `tbl_cfg_address_define_province` VALUES (91, 2, 'Oklahoma');
INSERT INTO `tbl_cfg_address_define_province` VALUES (90, 2, 'Ohio');
INSERT INTO `tbl_cfg_address_define_province` VALUES (89, 2, 'North Dakota');
INSERT INTO `tbl_cfg_address_define_province` VALUES (88, 2, 'North Carolina');
INSERT INTO `tbl_cfg_address_define_province` VALUES (87, 2, 'New York');
INSERT INTO `tbl_cfg_address_define_province` VALUES (86, 2, 'New Mexico');
INSERT INTO `tbl_cfg_address_define_province` VALUES (85, 2, 'New Jersey');
INSERT INTO `tbl_cfg_address_define_province` VALUES (84, 2, 'New Hampshire');
INSERT INTO `tbl_cfg_address_define_province` VALUES (83, 2, 'Nevada');
INSERT INTO `tbl_cfg_address_define_province` VALUES (82, 2, 'Nebraska');
INSERT INTO `tbl_cfg_address_define_province` VALUES (81, 2, 'Montana');
INSERT INTO `tbl_cfg_address_define_province` VALUES (80, 2, 'Missouri');
INSERT INTO `tbl_cfg_address_define_province` VALUES (79, 2, 'Mississippi');
INSERT INTO `tbl_cfg_address_define_province` VALUES (78, 2, 'Minnesota');
INSERT INTO `tbl_cfg_address_define_province` VALUES (77, 2, 'Michigan');
INSERT INTO `tbl_cfg_address_define_province` VALUES (76, 2, 'Massachusetts');
INSERT INTO `tbl_cfg_address_define_province` VALUES (75, 2, 'Maryland');
INSERT INTO `tbl_cfg_address_define_province` VALUES (74, 2, 'Maine');
INSERT INTO `tbl_cfg_address_define_province` VALUES (73, 2, 'Louisiana');
INSERT INTO `tbl_cfg_address_define_province` VALUES (72, 2, 'Kentucky');
INSERT INTO `tbl_cfg_address_define_province` VALUES (71, 2, 'Kansas');
INSERT INTO `tbl_cfg_address_define_province` VALUES (70, 2, 'Iowa');
INSERT INTO `tbl_cfg_address_define_province` VALUES (69, 2, 'Indiana');
INSERT INTO `tbl_cfg_address_define_province` VALUES (68, 2, 'Illinois');
INSERT INTO `tbl_cfg_address_define_province` VALUES (67, 2, 'Idaho');
INSERT INTO `tbl_cfg_address_define_province` VALUES (66, 2, 'Hawaii');
INSERT INTO `tbl_cfg_address_define_province` VALUES (65, 2, 'Georgia');
INSERT INTO `tbl_cfg_address_define_province` VALUES (64, 2, 'Florida');
INSERT INTO `tbl_cfg_address_define_province` VALUES (63, 2, 'Delaware');
INSERT INTO `tbl_cfg_address_define_province` VALUES (62, 2, 'Connecticut');
INSERT INTO `tbl_cfg_address_define_province` VALUES (61, 2, 'Colorado');
INSERT INTO `tbl_cfg_address_define_province` VALUES (60, 2, 'California');
INSERT INTO `tbl_cfg_address_define_province` VALUES (59, 2, 'Arkansas');
INSERT INTO `tbl_cfg_address_define_province` VALUES (58, 2, 'Arizona');
INSERT INTO `tbl_cfg_address_define_province` VALUES (57, 2, 'Alaska');
INSERT INTO `tbl_cfg_address_define_province` VALUES (56, 2, 'Alabama');
INSERT INTO `tbl_cfg_address_define_province` VALUES (95, 2, 'South Carolina');
INSERT INTO `tbl_cfg_address_define_province` VALUES (96, 2, 'South Dakota');
INSERT INTO `tbl_cfg_address_define_province` VALUES (97, 2, 'Tennessee');
INSERT INTO `tbl_cfg_address_define_province` VALUES (98, 2, 'Texas');
INSERT INTO `tbl_cfg_address_define_province` VALUES (99, 2, 'Utah');
INSERT INTO `tbl_cfg_address_define_province` VALUES (100, 2, 'Vermont');
INSERT INTO `tbl_cfg_address_define_province` VALUES (101, 2, 'Virginia');
INSERT INTO `tbl_cfg_address_define_province` VALUES (102, 2, 'Washington');
INSERT INTO `tbl_cfg_address_define_province` VALUES (103, 2, 'West Virginia');
INSERT INTO `tbl_cfg_address_define_province` VALUES (104, 2, 'Wisconsin');
INSERT INTO `tbl_cfg_address_define_province` VALUES (105, 2, 'Wyoming');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
