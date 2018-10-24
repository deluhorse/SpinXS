-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 121.40.116.65    Database: wmb2c-180109
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_pm_group_buy_define`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pm_group_buy_define` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '活动id同pm_activity表id',
  `name` varchar(30) NOT NULL DEFAULT '',
  `shop_id` char(16) NOT NULL COMMENT '商铺id',
  `goods_id` varchar(20) NOT NULL DEFAULT '' COMMENT '拼团商品',
  `activity_price` int(11) NOT NULL COMMENT '拼团价',
  `buyer_num` int(11) NOT NULL DEFAULT '0' COMMENT '成团人数',
  `count_limit` int(11) NOT NULL DEFAULT '0' COMMENT '参与次数限制',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `persist_time` int(11) NOT NULL DEFAULT '0' COMMENT '拼团成团时间(分)',
  `order_expire_time` int(11) NOT NULL COMMENT '活动订单过期时间(分钟)',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '拼团活动类型（1、普通团 2、新人团）',
  `shipping_fee_free` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否免邮费（0、不免邮费 1、免邮费）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '活动状态（1、未开始 2、进行中 3、已结束）',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标志位（0、未删除 1、已删除）',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COMMENT='拼团活动定义表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-25 15:55:18
