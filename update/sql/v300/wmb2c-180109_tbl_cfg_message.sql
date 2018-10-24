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
-- Table structure for table `tbl_cfg_message`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cfg_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `push_type` varchar(30) NOT NULL COMMENT '推送类型，package_send, order_to_pay, pay_success, refund_success,refund_apply_not_pass and more',
  `type` tinyint(1) DEFAULT '1' COMMENT '消息类型，1-订单通知',
  `message_name` varchar(100) DEFAULT '' COMMENT '消息名称',
  `to_user` varchar(20) NOT NULL DEFAULT '1' COMMENT '发送对象，1为大额，2为收货人，多个用,号分隔，如：1,2',
  `info` varchar(45) NOT NULL DEFAULT '' COMMENT '消息说明',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='消息定义表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cfg_message`
--

LOCK TABLES `tbl_cfg_message` WRITE;
/*!40000 ALTER TABLE `tbl_cfg_message` DISABLE KEYS */;
INSERT INTO `tbl_cfg_message` VALUES (1,'package_send',1,'发货通知','1,2','订单发货后，将发送通知给买家'),(2,'order_to_pay',1,'订单催付','1,2','买家下单后。如在特定时间内未付款，将发送通知给买家'),(3,'pay_success',1,'付款成功','1,2','付款成功，将发送通知给买家'),(4,'refund_success',1,'退款成功','1,2','退款成功，将发送通知给买家'),(5,'refund_not_pass',1,'售后未通过','1,2','售后未通过，将发送通知给买家'),(6,'',2,'秒杀提醒','1',''),(7,'',3,'注册验证码','1',''),(8,'coupon_receive_success',1,'卡券领取成功通知','1,2','买家领取卡券成功后，将发送通知给买家');
/*!40000 ALTER TABLE `tbl_cfg_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-24 16:38:33
