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
-- Table structure for table `tbl_cfg_theme_page`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cfg_theme_page` (
  `page_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '页面编号',
  `theme_id` bigint(20) NOT NULL COMMENT '模板编号',
  `page_name` varchar(30) NOT NULL DEFAULT '' COMMENT '页面名',
  `dom` mediumtext NOT NULL COMMENT '页面样式',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `comp_list` text NOT NULL COMMENT '页面内容json',
  `is_home_page` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是主页  0  不是主页  1  是主页',
  `is_show_nav` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示导航栏',
  `page_url` varchar(200) NOT NULL DEFAULT '' COMMENT '页面链接',
  `page_index` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='装修模板页面表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cfg_theme_page`
--

LOCK TABLES `tbl_cfg_theme_page` WRITE;
/*!40000 ALTER TABLE `tbl_cfg_theme_page` DISABLE KEYS */;
INSERT INTO `tbl_cfg_theme_page` VALUES (2,1,'首页','<ul class=\"js-shop-component-list\"><li data-comp_key=\"hero_image_4\"></li><li data-comp_key=\"category_1\"></li><li data-comp_key=\"title_2\"></li><li data-comp_key=\"collectin_1\"></li><li data-comp_key=\"picture_1\"></li><li data-comp_key=\"product_grid_3\"></li></ul>','2017-06-14 09:10:32','[{\"comp_id\":45,\"comp_content\":{\"active\":0,\"position\":\"top center\",\"margin\":\"4.284\",\"module\":[{\"text\":\"给你不一样的色彩\",\"imgUrl\":\"http://imgcache1.qiniudn.com/18c1d0b2-e08e-4a92-27a4-0f41872a\",\"title\":\"欧洲大牌官方入驻\"}],\"overlay\":\"0\"},\"comp_type\":4,\"componentKey\":\"componente13c1f58-5d23-b120-4cc6-c84a90773590\",\"comp_name\":\"首焦图片4\",\"create_time\":\"1513307788\",\"comp_key\":\"hero_image_4\",\"theme_id\":0,\"page_id\":0,\"comp_image\":\"http://imgcache1.qiniudn.com/5c7fe0ab-c2d9-6f65-a394-fdcc74a5\",\"scene_type\":1},{\"comp_id\":43,\"comp_content\":{\"module2\":{},\"module\":[{\"content\":\"服装\",\"imgUrl\":\"http://imgcache1.qiniudn.com/2f1022ff-34c3-9899-6cbd-f0460ad6\"},{\"content\":\"鞋子\",\"imgUrl\":\"http://imgcache1.qiniudn.com/5ea1c59e-efef-30c4-1164-dde38fbe\"},{\"content\":\"箱包\",\"imgUrl\":\"http://imgcache1.qiniudn.com/fb89fcda-096b-56b8-a0ed-36a3ee3d\"}],\"bgColor\":\"#fff\",\"length\":3,\"active\":1,\"margin\":\"0\"},\"comp_type\":17,\"componentKey\":\"componentbb0a72f3-8531-fa02-faf9-9a7833d48019\",\"comp_name\":\"商品分类1\",\"create_time\":\"1513218307\",\"comp_key\":\"category_1\",\"theme_id\":0,\"page_id\":0,\"comp_image\":\"http://imgcache1.qiniudn.com/fa9351a8-fb8f-b72e-1b2c-2d6647ea\",\"scene_type\":1},{\"comp_id\":42,\"comp_content\":{\"action_1\":\"查看更多\",\"action_1-color\":\"rgba(91,91,91,1)\",\"title-color\":\"rgba(21,21,21,1)\",\"btnLinkIsSame\":true,\"bgColor\":\"#fff\",\"showBtn\":true,\"title\":\"热卖单品\",\"margin\":\"0\"},\"comp_type\":10,\"componentKey\":\"component96c216b3-cb17-35e5-1b70-ecfa9a8dde51\",\"comp_name\":\"纯文本2\",\"create_time\":\"1513148563\",\"comp_key\":\"title_2\",\"theme_id\":0,\"page_id\":0,\"comp_image\":\"http://imgcache1.qiniudn.com/1132766a-a49b-518f-b0ca-70ac7368\",\"scene_type\":1},{\"comp_id\":44,\"comp_content\":{\"bgColor\":\"#fff\",\"margin\":\"0\",\"module2\":{},\"module\":[{\"content\":\"Mo&Mo shirt\",\"price\":\"0.00\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/0e4c10f2-9a1f-9894-29b5-218697dd\"}},{\"content\":\"Mo&Mo shirt\",\"price\":\"0.00\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/bae3bc8b-9101-339c-055a-c3bcf3f2\"}},{\"content\":\"Mo&Mo shirt\",\"price\":\"0.00\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/802a82a3-c465-ba32-b231-dc8c16e2\"}},{\"content\":\"Mo&Mo shirt\",\"price\":\"0.00\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/c7e80863-0a50-91ec-76ad-9a9b1138\"}}]},\"comp_type\":16,\"componentKey\":\"component59a78d9b-36c3-9e21-cd51-1c6b4b41e640\",\"comp_name\":\"热卖单品1\",\"create_time\":\"1513218323\",\"comp_key\":\"collectin_1\",\"theme_id\":0,\"page_id\":0,\"comp_image\":\"http://imgcache1.qiniudn.com/68139249-0c56-b3d1-a2ce-17dc1ccb\",\"scene_type\":1},{\"comp_id\":32,\"comp_content\":{\"stretch\":\"true\",\"position\":\"top center\",\"margin\":\"2.856\",\"imgUrl\":\"http://imgcache1.qiniudn.com/fb5f9428-9f18-bbc5-3a94-f4e1a86f\"},\"comp_type\":4,\"componentKey\":\"component7514e310-27be-1e9a-281f-76b86a8733d4\",\"comp_name\":\"首焦图片5\",\"create_time\":\"1510646356\",\"comp_key\":\"picture_1\",\"theme_id\":0,\"page_id\":0,\"comp_image\":\"http://imgcache1.qiniudn.com/1127a13c-cffc-6d13-0590-a5e6dcc7\",\"scene_type\":1},{\"comp_id\":46,\"comp_content\":{\"bgColor\":\"#fff\",\"margin\":\"0\",\"module\":[{\"content\":\"Mo&Mo shirt\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/802a82a3-c465-ba32-b231-dc8c16e2\"}},{\"content\":\"Mo&Mo shirt\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/b4411653-6dfc-8da5-5ad8-498ea413\"}},{\"content\":\"Mo&Mo shirt\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/2f1022ff-34c3-9899-6cbd-f0460ad6\"}},{\"content\":\"Mo&Mo shirt\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/ea10cc96-769d-3b7f-8b84-13ef0741\"}},{\"content\":\"Mo&Mo shirt\",\"link\":{\"images\":\"http://imgcache1.qiniudn.com/566317d8-e638-f47c-fc3f-f4270bd7\"}}]},\"comp_type\":7,\"componentKey\":\"component4ed90be4-e2df-3eed-85ac-104b05d0bcca\",\"comp_name\":\"商品列表3移动端\",\"create_time\":\"1513307829\",\"comp_key\":\"product_grid_3\",\"theme_id\":0,\"page_id\":0,\"comp_image\":\"http://imgcache1.qiniudn.com/f2274042-39b4-9cd7-39b6-a60e55e3\",\"scene_type\":1}]',1,1,'',0),(3,1,'全部商品','<ul class=\"js-shop-component-list\"><li data-comp_key=\"header_1\"></li><li data-comp_key=\"title_1\"></li><li data-comp_key=\"product_grid_2\"></li><li data-comp_key=\"footer_1\"></li></ul>','2017-06-14 09:10:32','[{\"comp_id\":2,\"comp_content\":{},\"comp_type\":1,\"comp_name\":\" 顶部导航1\",\"create_time\":\"1497431840\",\"comp_key\":\"header_1\",\"theme_id\":0,\"page_id\":0,\"componentKey\":\"component83c097a7-f028-51ef-9917-41daad139890\"},{\"comp_id\":27,\"comp_content\":{\"title\":\"新品热卖\",\"btnLinkIsSame\":true,\"margin\":\"4.284\",\"line-color\":\"#3DA2E0\",\"title-color\":\"rgb(31, 31, 31)\",\"showBtn\":false,\"btnBgColor\":\"#3DA2E0\",\"bgColor\":\"#fff\",\"action_1\":\"查看更多\",\"action_1-color\":\"rgb(31, 31, 31)\"},\"comp_type\":10,\"comp_name\":\"纯文本1\",\"create_time\":\"1497439456\",\"comp_key\":\"title_1\",\"theme_id\":0,\"page_id\":0,\"componentKey\":\"component6043f9ff-3f7b-2cde-db7b-18c56814b8f7\"},{\"comp_id\":25,\"comp_content\":{\"filter\":false,\"column_num\":\"2\",\"row_num\":1,\"margin\":\"4.284\",\"group_num\":\"\"},\"comp_type\":7,\"comp_name\":\"商品列表2\",\"create_time\":\"1497439435\",\"comp_key\":\"product_grid_2\",\"theme_id\":0,\"page_id\":0,\"componentKey\":\"componentea139a20-fdb5-9936-20ac-e037a688f00c\"},{\"comp_id\":3,\"comp_content\":{},\"comp_type\":2,\"comp_name\":\"底部导航1\",\"create_time\":\"1497431840\",\"comp_key\":\"footer_1\",\"theme_id\":0,\"page_id\":0,\"componentKey\":\"component4dce0d12-f984-dd03-925f-6d4b2dda8b62\"}]',0,1,'',0);
/*!40000 ALTER TABLE `tbl_cfg_theme_page` ENABLE KEYS */;
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
