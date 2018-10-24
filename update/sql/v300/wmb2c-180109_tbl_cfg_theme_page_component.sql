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
-- Table structure for table `tbl_cfg_theme_page_component`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cfg_theme_page_component` (
  `comp_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '组件编号',
  `page_id` bigint(20) NOT NULL COMMENT '页面编号',
  `theme_id` bigint(20) NOT NULL COMMENT '模板编号',
  `comp_key` varchar(30) NOT NULL DEFAULT '',
  `comp_name` varchar(30) NOT NULL DEFAULT '' COMMENT '组件名',
  `comp_content` varchar(500) NOT NULL DEFAULT '' COMMENT '组件内容json',
  `comp_image` varchar(300) NOT NULL DEFAULT '' COMMENT '组件图片',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `comp_type` int(11) NOT NULL DEFAULT '0' COMMENT '组件分类',
  `scene_type` smallint(6) NOT NULL DEFAULT '0' COMMENT '适合场景，1为所有，0为h5，默认为0',
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='装修模板页面组件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cfg_theme_page_component`
--

LOCK TABLES `tbl_cfg_theme_page_component` WRITE;
/*!40000 ALTER TABLE `tbl_cfg_theme_page_component` DISABLE KEYS */;
INSERT INTO `tbl_cfg_theme_page_component` VALUES (2,0,0,'header_1',' 顶部导航1','','http://imgcache1.qiniudn.com/e32d85ee-5058-7187-b294-47c46c04','2017-06-14 09:17:20',1,0),(3,0,0,'footer_1','底部导航1','','http://imgcache1.qiniudn.com/e39dfc4d-2264-b926-41c3-ea41c420','2017-06-14 09:17:20',2,0),(4,0,0,'banner_1','条幅广告1','','http://imgcache1.qiniudn.com/03de2968-c4a2-31ed-7985-6a290895','2017-06-14 09:17:21',3,1),(5,0,0,'hero_image_1','首焦图片1','','http://imgcache1.qiniudn.com/0db12c55-ada1-480c-6a40-4e97bc44','2017-06-14 09:17:21',4,0),(6,0,0,'mosaic_1',' 格栅展示/网格1','','http://imgcache1.qiniudn.com/d167cef9-bae0-b109-2dba-3bf0ea15','2017-06-14 09:17:21',5,0),(7,0,0,'banner_side_by_side_1','多格条幅广告1','','http://imgcache1.qiniudn.com/184aa4e8-35a0-5ca2-399d-8e9fd8e3','2017-06-14 09:17:21',6,2),(8,0,0,'product_grid_1','商品列表1','','http://imgcache1.qiniudn.com/b470345f-47f8-6cb1-f6fe-763b571a','2017-06-14 09:17:21',7,1),(9,0,0,'slider_1','轮播图1','','http://imgcache1.qiniudn.com/e09b97b4-76a1-4085-772d-fc2fc262','2017-06-14 09:17:21',8,2),(10,0,0,'stripe_1','图文混排1','','http://imgcache1.qiniudn.com/1cc08dc2-ba8b-dfb7-2f94-e01c2959','2017-06-14 09:17:21',9,2),(12,0,0,'stripe_2','图文混排2','','http://imgcache1.qiniudn.com/c1085e95-9ccb-e810-842f-e720a5c6','2017-06-14 11:23:55',9,2),(13,0,0,'stripe_3','图文混排3','','http://imgcache1.qiniudn.com/0495a646-3516-8545-963e-7bcc2d5d','2017-06-14 11:23:55',9,2),(14,0,0,'stripe_4','图文混排4','','http://imgcache1.qiniudn.com/c156b63b-2c7e-a3fc-4e6a-821731e1','2017-06-14 11:23:55',9,2),(16,0,0,'slider_2','轮播图2','','http://imgcache1.qiniudn.com/54f0b5b5-df45-e8a4-3202-3e798d11','2017-06-14 11:23:55',8,2),(17,0,0,'slider_3','轮播图3','','http://imgcache1.qiniudn.com/2f7322d5-ad47-ec1e-160b-94b18ba3','2017-06-14 11:23:55',8,1),(18,0,0,'hero_image_2','首焦图片2','','http://imgcache1.qiniudn.com/d92069a6-af51-f71b-b6db-09dddbb4','2017-06-14 11:23:55',4,0),(19,0,0,'hero_image_3','首焦图片3','','http://imgcache1.qiniudn.com/88ca5413-f384-618a-c3e2-618d83c5','2017-06-14 11:23:55',4,2),(20,0,0,'hero_image_slider_1','首焦轮播图片1','','http://imgcache1.qiniudn.com/db2a37f4-80e8-1057-6e10-ed8224bd','2017-06-14 11:23:55',8,0),(21,0,0,'mosaic_2',' 格栅展示/网格2','','http://imgcache1.qiniudn.com/6e347f31-ce06-0079-5513-378dc7cb','2017-06-14 11:23:55',5,0),(22,0,0,'mosaic_3',' 格栅展示/网格3','','http://imgcache1.qiniudn.com/23d606ef-7c26-2bdc-c721-d7840d3b','2017-06-14 11:23:55',5,0),(24,0,0,'banner_side_by_side_2','多格条幅广告2','','http://imgcache1.qiniudn.com/0ccdb476-3ddd-925d-af0a-394fb846','2017-06-14 11:23:55',6,2),(25,0,0,'product_grid_2','商品列表2','','http://imgcache1.qiniudn.com/2367648c-9cd8-d11c-19e5-46f5e85b','2017-06-14 11:23:55',7,0),(27,0,0,'title_1','纯文本1','','http://imgcache1.qiniudn.com/135abdf6-35b2-ede6-f92b-df18d798','2017-06-14 11:24:16',10,0),(30,0,0,'hero_image_slider_2','首焦轮播图片2','','http://imgcache1.qiniudn.com/2f66370f-9a56-69f0-d79d-c414247c','2017-06-23 06:35:19',8,1),(31,0,0,'coupon_1','优惠券1','','http://imgcache1.qiniudn.com/c347470a-8810-d4d3-0eae-61810708','2017-07-13 06:18:09',11,1),(32,0,0,'hero_image_4','首焦图片4','','http://imgcache1.qiniudn.com/5c7fe0ab-c2d9-6f65-a394-fdcc74a5','2017-12-15 03:16:28',4,1),(33,0,0,'brand_wall_1','品牌墙1','','http://imgcache1.qiniudn.com/6c85968f-74c6-e4cb-934f-93ae17eb','2017-12-05 03:10:50',12,1),(34,0,0,'pic_nav_1','图片导航1','','http://imgcache1.qiniudn.com/fc9f154c-a3a9-3424-2fe2-226e9c0c','2017-12-05 07:06:45',13,0),(35,0,0,'text_nav_1','文字导航1','','http://imgcache1.qiniudn.com/8a2e1b84-f59b-55c6-1de7-748129ad','2017-12-05 09:26:04',14,0),(36,0,0,'text_nav_2','文字导航2','','http://imgcache1.qiniudn.com/85993a3d-a59e-cad0-d0fc-6bb79295','2017-12-05 09:26:04',14,0),(37,0,0,'announcement_1','公告栏1','','http://imgcache1.qiniudn.com/3b254663-84e6-2ac9-a0c4-99342d30','2017-12-05 10:20:28',15,1),(38,0,0,'announcement_2','公告栏2','','http://imgcache1.qiniudn.com/5143f989-83df-2e8a-718a-7f7d3c40','2017-12-05 10:20:28',15,1),(39,0,0,'announcement_3','公告栏3','','http://imgcache1.qiniudn.com/ea67b213-4ea0-3194-95a3-fd1b062d','2017-12-05 10:20:28',15,1),(41,0,0,'text_nav_4','文字导航4','','http://imgcache1.qiniudn.com/3643c361-8d6c-83c3-9fb2-8f2f160e','2017-12-12 11:08:29',14,1),(42,0,0,'title_2','纯文本2','','http://imgcache1.qiniudn.com/1132766a-a49b-518f-b0ca-70ac7368','2017-12-13 07:02:43',10,1),(43,0,0,'category_1','商品分类1','','http://imgcache1.qiniudn.com/fa9351a8-fb8f-b72e-1b2c-2d6647ea','2017-12-14 02:25:07',17,1),(44,0,0,'collectin_1','热卖单品1','','http://imgcache1.qiniudn.com/68139249-0c56-b3d1-a2ce-17dc1ccb','2017-12-14 02:25:23',16,1),(45,0,0,'picture_1','首焦图片5','','http://imgcache1.qiniudn.com/1127a13c-cffc-6d13-0590-a5e6dcc7','2017-11-14 07:59:16',4,1),(46,0,0,'product_grid_3','商品列表3移动端','','http://imgcache1.qiniudn.com/f2274042-39b4-9cd7-39b6-a60e55e3','2017-12-15 03:17:09',7,1),(47,0,0,'search_box_1','搜索1','','http://imgcache1.qiniudn.com/d842a82e-af45-63e0-4044-3926c862','2017-12-20 02:36:21',18,1),(48,0,0,'search_box_2','搜索2','','http://imgcache1.qiniudn.com/ffae758b-11c0-e4c8-1ff7-7d89624c','2017-12-20 06:04:47',18,1),(49,0,0,'recommendation_1','精品推荐1','','http://imgcache1.qiniudn.com/58762b09-4489-b779-b1ee-3b1bfcd0','2017-12-20 07:43:43',19,1),(50,0,0,'banner_side_by_side_3','多格条幅广告3（移动端）','','http://imgcache1.qiniudn.com/5c506134-af00-af1c-4d25-b9fab21a','2017-12-26 08:29:38',6,1),(51,0,0,'mosaic_4',' 格栅展示/网格4','','http://imgcache1.qiniudn.com/d848787c-4f1e-a91b-cb50-2dc6f07c','2017-12-26 08:53:34',5,1),(52,0,0,'coupon_2','优惠券2','','http://imgcache1.qiniudn.com/c347470a-8810-d4d3-0eae-61810708','2018-03-21 06:53:02',11,1),(53,0,0,'flash_1','闪购','','https://imgcache1.wemartimg.cn/d7db4b0f-cff3-9f85-9505-82e81b3d','2018-05-21 08:59:44',20,1),(55,0,0,'video','视频','','','2018-06-06 03:45:13',21,1),(56,0,0,'group_buy_1','拼团','','https://imgcache1.wemartimg.cn/9601d4ab-2f3b-75ce-5e5b-cee342a2','2018-06-25 07:52:25',20,3);
/*!40000 ALTER TABLE `tbl_cfg_theme_page_component` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-25 10:52:46
