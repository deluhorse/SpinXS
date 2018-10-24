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
-- Table structure for table `tbl_cfg_extensions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cfg_extensions` (
  `id` char(32) NOT NULL,
  `trigger_position` varchar(45) NOT NULL COMMENT '触发位置，用于描述在什么功能模块下执行',
  `package_path` varchar(150) NOT NULL COMMENT '包路径，执行程序包路径',
  `method` varchar(100) NOT NULL COMMENT '执行方法名',
  `is_off` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否关闭，默认为不关闭（0）',
  `description` varchar(150) NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`trigger_position`,`package_path`,`method`),
  KEY `trigger_position` (`trigger_position`),
  KEY `is_off` (`is_off`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='扩展程序包路径';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cfg_extensions`
--

LOCK TABLES `tbl_cfg_extensions` WRITE;
/*!40000 ALTER TABLE `tbl_cfg_extensions` DISABLE KEYS */;
INSERT INTO `tbl_cfg_extensions` VALUES ('1','create_order_after','channel.rain_card.task.service','create_order_relation',0,'创建订单和rain card的关系','0000-00-00 00:00:00'),('2','order_pay_success','channel.rain_card.task.service','update_channel_sale',1,'','0000-00-00 00:00:00'),('3','create_order_after','crm.customer.task.service','create',0,'创建订单，生成新顾客信息','0000-00-00 00:00:00'),('4','refund_approve_after','crm.customer.task.service','update_order_refund_data',0,'','0000-00-00 00:00:00'),('5','order_pay_success_after','crm.customer.task.service','create_pay_success',0,'支付完成生成新顾客','0000-00-00 00:00:00'),('6','refund_submit_after','crm.customer.task.service','update_order_refund_data',0,'退款成功，更新顾客退款总额','0000-00-00 00:00:00'),('7','order_pay_success_after','plugins.promotion.service','update_count',0,'支付完成，更新营销数据','0000-00-00 00:00:00'),('8','order_pay_success_after','task.distribution.order.service','create_supply_order',1,'向供货系统发消息，创建供货订单','0000-00-00 00:00:00'),('9','create_order_after','buyer.id_card.service','create_id_card',0,'创建买家身分证信息','0000-00-00 00:00:00'),('10','order_pay_success_after','buyer.account.service','send_reward',0,'发放奖励金','0000-00-00 00:00:00'),('11','refund_submit_after','buyer.account.service','create_buyer_balance_refund',0,'退款成功，添加买家余额变化流水','0000-00-00 00:00:00'),('969b709776816c8c1d7e447686cd637d','test_trigger_position','task.service','test',0,'测试添加任务','2018-06-19 09:28:30'),('4ac7cebff865b18ac4da2a95365a1223','order_pay_success','goods.stock.service','update_stock_sale',1,'更新商品及SKU销量','2018-06-21 03:36:47'),('1e4753a1add5fd8a6d8518144fd1ce7d','create_order_after','thirdpart.statistics.service','create_web_event',0,'发送数据到统计服务','2018-06-22 03:11:30'),('12','order_pay_success_after','thirdpart.statistics.service','create_web_event',0,'发送统计埋点数据','2018-06-25 06:49:54'),('13','order_pay_success_after','goods.stock.service','update_sales',0,'更新商品销量','2018-06-26 02:59:25'),('1d81799259cf3a5e13df846283e0b6c9','decrease_sku_stock','goods.stock.service','update_stock',0,'扣减库存','2018-06-26 03:48:53'),('d4f79a74ba3fb26283b8818730f68e4f','return_sku_stock','goods.stock.service','update_stock',0,'还原库存','2018-06-26 06:34:03'),('33f7ffabcd80f9f4f99bafce2c1edf0d','create_order_after','order.service','_add_schedule_job',0,'创建订单添加定时任务','2018-06-27 03:10:22'),('11fc66c816f8e0c6dcfd9b1297f4c9af','order_pay_success_after','order.clear.service','do_clear',0,'订单清算','2018-06-27 06:21:43'),('37cb035068516bb613c6ced71e8bb690','order_pay_success_after','plugins.notify.send.service','send_message',0,'发送支付成功消息','2018-06-27 09:41:44'),('fa18448f3e7688b71e913ede197c1d44','after_order_send','plugins.notify.send.service','send_message',0,'发货后发模板消息','2018-06-28 05:45:33'),('204c7305807ab5c8bf01b7aaaac61ef5','after_order_receive','task.distribution.order.receive.service','send_receive',1,'确认收货后向供货系统发消息','2018-06-28 06:08:10'),('d688329793f5bcd2f45006afe72e0ba8','refund_submit_after','plugins.notify.send.service','send_message',0,'退款成功发模板消息','2018-06-28 06:13:45'),('265d8de2db5738f1f14e09bf7608d286','send_coupon','plugins.promotion.m_coupon.receive.service','batch_receive',0,'批量发送优惠券','2018-06-28 07:04:22'),('e544e812b83f97c5b00200a833ff19ac','after_receive_coupon','plugins.notify.send.service','send_message',0,'收到优惠券以后，发送优惠券模板消息','2018-06-28 07:07:19'),('090e50eedc3315ce56459dc33d15ee3f','refund_approve_after','plugins.notify.send.service','send_message',0,'退款审核后，发模板消息','2018-06-28 07:19:38'),('6fad5b16fdac06633773a51a4717bc33','order_pay_success_after','order.payment.service','do_promotion_extension',0,'查询支付成功后营销活动有关的数据改动','2018-07-10 09:40:00'),('2087a3190994974616998156a73c34f6','create_order_after','plugins.promotion.group_buy.order.service','add_schedule_job',0,'拼团订单额外活动相关数据更新','2018-07-10 11:37:09');
/*!40000 ALTER TABLE `tbl_cfg_extensions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-24 16:33:08
