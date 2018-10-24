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
-- Table structure for table `tbl_pm_member_rule`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pm_member_rule` (
  `rule_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '会员卡规则id',
  `card_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员卡id',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '规则类型 consume 消费送积分,单次上限 single_limit, 激活送积分 active, 抵扣条件 condition, 用户激活条件 active_condition',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '规则的具体描述 消费送积分 consume:{money: 1000, credit:100}, 单次上限single_limit:100, 激活送积分active:20, 1元抵扣100积分rate:100, 抵扣条件,订单满xxx元可用,单笔上限xxx积分condition:{money:1000, limit:100}, 会员卡激活条件active_condition:name,mobile_no',
  PRIMARY KEY (`rule_id`,`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员卡规则表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-25 15:55:17
