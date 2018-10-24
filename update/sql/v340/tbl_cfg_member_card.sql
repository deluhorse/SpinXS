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

 Date: 14/08/2018 21:59:47
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_cfg_member_card
-- ----------------------------
CREATE TABLE `tbl_cfg_member_card` (
  `activity_id` bigint(20) NOT NULL COMMENT '活动ID',
  `shop_id` char(16) NOT NULL,
  `card_id` varchar(45) NOT NULL DEFAULT '' COMMENT '会员卡id',
  `brand_name` varchar(45) NOT NULL COMMENT '品牌名称',
  `card_name` varchar(45) NOT NULL COMMENT '会员卡名称',
  `card_logo` varchar(500) NOT NULL DEFAULT '' COMMENT '会员卡logo',
  `card_color` varchar(50) NOT NULL DEFAULT '' COMMENT '会员卡颜色',
  `front_cover_logo` varchar(500) NOT NULL DEFAULT '' COMMENT '会员卡封面',
  `wechat_background_logo` varchar(500) NOT NULL DEFAULT '' COMMENT '微信会员卡封面',
  `notice` text NOT NULL COMMENT '使用须知',
  `card_limit` varchar(50) NOT NULL DEFAULT 'forever' COMMENT '会员期限',
  `card_info` varchar(500) NOT NULL DEFAULT '' COMMENT '会员卡信息',
  `use_way` varchar(50) NOT NULL DEFAULT 'wechat' COMMENT '使用方式',
  `update_bonus_url` varchar(200) NOT NULL DEFAULT '' COMMENT '修改积分url',
  `get_bonus_url` varchar(200) NOT NULL DEFAULT '' COMMENT '积分查询url',
  `create_member_url` varchar(200) NOT NULL DEFAULT '' COMMENT '创建会员url',
  `update_member_url` varchar(200) NOT NULL DEFAULT '' COMMENT '修改会员url',
  `get_member_url` varchar(200) NOT NULL DEFAULT '' COMMENT '拉取会员url',
  `get_member_list_url` varchar(200) NOT NULL DEFAULT '' COMMENT '拉取会员列表url',
  `secret_key` varchar(32) NOT NULL DEFAULT '' COMMENT '秘钥',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`shop_id`) USING BTREE,
  KEY `card_name` (`card_name`),
  KEY `create_time` (`create_time`),
  KEY `activity_id` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
