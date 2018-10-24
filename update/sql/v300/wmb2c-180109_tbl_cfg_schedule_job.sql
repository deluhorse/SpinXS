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
-- Table structure for table `tbl_cfg_schedule_job`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cfg_schedule_job` (
  `job_id` varchar(100) NOT NULL DEFAULT '' COMMENT '任务编号(买家定义)',
  `group_name` varchar(100) NOT NULL DEFAULT '' COMMENT '任务分组编号',
  `start_time` varchar(30) NOT NULL COMMENT '开始时间',
  `limit_time` int(11) NOT NULL DEFAULT '0' COMMENT '间隔时间(以秒为单位)',
  `repeat_count` int(11) NOT NULL DEFAULT '0' COMMENT '重复次数(-1 为无限循环)',
  `cron` varchar(20) NOT NULL DEFAULT '' COMMENT 'cron表达式',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT 'service路径',
  `method` varchar(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `params` mediumtext NOT NULL COMMENT '传入参数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务job表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cfg_schedule_job`
--

LOCK TABLES `tbl_cfg_schedule_job` WRITE;
/*!40000 ALTER TABLE `tbl_cfg_schedule_job` DISABLE KEYS */;
INSERT INTO `tbl_cfg_schedule_job` VALUES ('group_buy_refund','default','2018-07-25 10:40:00',86400,-1,'0 0/10 * * *','plugins.promotion.group_buy.task.refund.service','check_refund_list','{}','2018-04-03 03:45:14'),('order_task','default','2018-07-26 01:00:00',86400,-1,'0 0 1 * *','order.clear.service','do_settle','{}','2017-07-06 07:48:21'),('send_shop_email_task','defalut','2018-07-26 07:00:00',86400,-1,'0 0 7 * *','user.validity.task.service','send_shop_email','{}','2018-07-23 02:36:01'),('shop_status_change','defalut','2018-07-26 01:00:00',86400,-1,'0 0 1 * *','user.validity.task.service','shop_status_schedule','{}','2018-07-13 08:26:25');
/*!40000 ALTER TABLE `tbl_cfg_schedule_job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-25 10:36:47
