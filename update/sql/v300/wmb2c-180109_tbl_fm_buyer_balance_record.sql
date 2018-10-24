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
-- Table structure for table `tbl_fm_buyer_balance_record`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fm_buyer_balance_record` (
  `flow_no` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '奖励金流水号',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '交易类型  1  分享获取奖励金 2 退款扣除奖励金  3  提现扣除奖励金',
  `order_id` varchar(30) NOT NULL DEFAULT '' COMMENT '订单id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `buyer_id` varchar(50) NOT NULL DEFAULT '' COMMENT '发起人买家id',
  `visitor_buyer_id` varchar(50) NOT NULL DEFAULT '' COMMENT '参与人id',
  `parent_order_id` varchar(30) NOT NULL DEFAULT '' COMMENT '母单号',
  `shop_id` char(16) NOT NULL COMMENT '店铺id',
  `sku_id` varchar(32) NOT NULL DEFAULT '' COMMENT 'sku_id',
  `op_amount` int(11) NOT NULL DEFAULT '0' COMMENT '奖励金额 增加为正, 扣除为负',
  `detail` varchar(2000) NOT NULL DEFAULT '' COMMENT '订单奖励金详情, 记录下每个sku对应的奖励金金额,  用于后续退款扣除余额',
  `trade_no` varchar(45) NOT NULL DEFAULT '' COMMENT '三方交易流水号',
  `settle_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '结算标志 0 未结算, 1 已结算',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `settle_time` timestamp NOT NULL DEFAULT '2000-12-31 16:00:00' COMMENT '订单结算时间',
  PRIMARY KEY (`flow_no`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='买家余额流水表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-25 11:24:38
