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
-- Table structure for table `tbl_fm_invoice`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fm_invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发票id',
  `admin_order_id` varchar(30) NOT NULL DEFAULT '' COMMENT '充值订单id',
  `shop_id` char(16) NOT NULL DEFAULT '' COMMENT '店铺id',
  `invoice_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 普票 1: 增票',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '公司名称(个人名称)',
  `tax_num` varchar(100) NOT NULL DEFAULT '' COMMENT '税号',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '发票内容',
  `invoice_price` int(11) NOT NULL DEFAULT '0' COMMENT '开票金额',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '注册地址',
  `phone_num` varchar(20) NOT NULL DEFAULT '0' COMMENT '用户电话',
  `bank_info` varchar(200) NOT NULL DEFAULT '' COMMENT '开户行及账号',
  `receiver_name` varchar(200) NOT NULL DEFAULT '' COMMENT '收票人姓名',
  `receiver_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '收票人电话',
  `receiver_province` varchar(200) NOT NULL DEFAULT '' COMMENT '收票人省',
  `receiver_city` varchar(200) NOT NULL DEFAULT '' COMMENT '收票城市',
  `receiver_area` varchar(200) NOT NULL DEFAULT '' COMMENT '收票地区',
  `receiver_address` varchar(500) NOT NULL DEFAULT '' COMMENT '收票详细地址',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_read` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 未读 1: 已读',
  `invoice_code` int(8) NOT NULL DEFAULT '0' COMMENT '发票编码',
  `tracking_num` varchar(20) NOT NULL DEFAULT '' COMMENT '快递单号',
  `invoice_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开票时间',
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='开票信息';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-25 11:24:39
