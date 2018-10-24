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

 Date: 13/08/2018 16:20:47
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_crm_member_shipping_address
-- ----------------------------
CREATE TABLE `tbl_crm_member_shipping_address` (
  `member_address_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` char(16) NOT NULL,
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `province` varchar(15) NOT NULL COMMENT '省',
  `city` varchar(15) NOT NULL COMMENT '市',
  `district` varchar(15) NOT NULL COMMENT '区',
  `street` varchar(100) NOT NULL COMMENT '街道地址',
  `zip_code` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `city_no` int(11) NOT NULL DEFAULT '0' COMMENT '城市编号',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址，0为否，1为是',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`member_address_id`),
  KEY `shop_id` (`shop_id`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=849 DEFAULT CHARSET=utf8 COMMENT='会员地址表';

SET FOREIGN_KEY_CHECKS = 1;
