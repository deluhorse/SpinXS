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

 Date: 13/08/2018 16:21:57
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_pm_bonus_rule
-- ----------------------------
CREATE TABLE `tbl_pm_bonus_rule` (
  `activity_id` bigint(20) NOT NULL COMMENT '活动id',
  `init_bonus` int(11) NOT NULL DEFAULT '0' COMMENT '初始积分',
  `max_increase_bonus` int(11) NOT NULL DEFAULT '0' COMMENT '用户单次获取积分上限',
  `cost_money_unit` int(11) NOT NULL DEFAULT '0' COMMENT '每增加xx金额(分)，增加值等于increase_bonus的积分',
  `increase_bonus` int(11) NOT NULL DEFAULT '0' COMMENT '对应增加的积分',
  `least_money_to_use` int(11) NOT NULL DEFAULT '0' COMMENT '消费金额满xx(分)时，可使用积分抵扣',
  `max_reduce_bonus` int(11) NOT NULL DEFAULT '0' COMMENT '抵扣现金，单笔使用积分上限',
  `cost_bonus_unit` int(11) NOT NULL DEFAULT '0' COMMENT '每使用xx积分，抵扣等于的现金(分)',
  `reduce_money` int(11) NOT NULL DEFAULT '0' COMMENT '抵扣现金(分)',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
