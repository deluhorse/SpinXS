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
-- Table structure for table `tbl_cfg_theme`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cfg_theme` (
  `theme_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '模板编号',
  `theme_name` varchar(30) NOT NULL COMMENT '模板名',
  `package_path` varchar(30) NOT NULL DEFAULT '' COMMENT '模板文件夹路径',
  `setting_content` varchar(1000) DEFAULT NULL COMMENT '设置内容，json字符串',
  `dom` mediumtext,
  `image_url` varchar(300) NOT NULL DEFAULT '' COMMENT '模版封面图片',
  `style_type` smallint(6) NOT NULL DEFAULT '0' COMMENT '模板风格类型',
  `industry` smallint(6) NOT NULL DEFAULT '0' COMMENT '行业',
  `is_free` tinyint(1) NOT NULL DEFAULT '1' COMMENT '免费标志  1  免费  0  收费',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认模板，1是，0不是，默认为0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='装修模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cfg_theme`
--

LOCK TABLES `tbl_cfg_theme` WRITE;
/*!40000 ALTER TABLE `tbl_cfg_theme` DISABLE KEYS */;
INSERT INTO `tbl_cfg_theme` VALUES (1,'default','/opt/wmb2c','{\"headlineSize\":\"24px\",\"subtitleSize\":\"18px\",\"contentSize\":\"15px\",\"logo\":\"http://imgcache1.qiniudn.com/51e816b8-c846-683f-3467-b6de860e\",\"headColor\":\"#1F1F1F\",\"contentColor\":\"#A3A3A3\",\"linkColor\":\"#1589EE\",\"footer\":\"\",\"header\":\"\"}','<div class=\"ws-shop\"><div id=\"js-ws-container\"></div></div>','http://imgcache1.qiniudn.com/28707c8a-3f67-4208-4023-375734e0?imageView2/2',0,0,1,1,'2017-05-25 02:38:08');
/*!40000 ALTER TABLE `tbl_cfg_theme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-25 10:52:47
