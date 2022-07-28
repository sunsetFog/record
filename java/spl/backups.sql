-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_news
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Current Database: `db_news`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_news` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_news`;

--
-- Table structure for table `cms_help`
--

DROP TABLE IF EXISTS `cms_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `read_count` int(1) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_help`
--

LOCK TABLES `cms_help` WRITE;
/*!40000 ALTER TABLE `cms_help` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_help_category`
--

DROP TABLE IF EXISTS `cms_help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_help_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `help_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_help_category`
--

LOCK TABLES `cms_help_category` WRITE;
/*!40000 ALTER TABLE `cms_help_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_member_report`
--

DROP TABLE IF EXISTS `cms_member_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_member_report` (
  `id` bigint(20) DEFAULT NULL,
  `report_type` int(1) DEFAULT NULL COMMENT '举报类型：0->商品评价；1->话题内容；2->用户评论',
  `report_member_name` varchar(100) DEFAULT NULL COMMENT '举报人',
  `create_time` datetime DEFAULT NULL,
  `report_object` varchar(100) DEFAULT NULL,
  `report_status` int(1) DEFAULT NULL COMMENT '举报状态：0->未处理；1->已处理',
  `handle_status` int(1) DEFAULT NULL COMMENT '处理结果：0->无效；1->有效；2->恶意',
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户举报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_member_report`
--

LOCK TABLES `cms_member_report` WRITE;
/*!40000 ALTER TABLE `cms_member_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_member_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_prefrence_area`
--

DROP TABLE IF EXISTS `cms_prefrence_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_prefrence_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `pic` varbinary(500) DEFAULT NULL COMMENT '展示图片',
  `sort` int(11) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优选专区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_prefrence_area`
--

LOCK TABLES `cms_prefrence_area` WRITE;
/*!40000 ALTER TABLE `cms_prefrence_area` DISABLE KEYS */;
INSERT INTO `cms_prefrence_area` VALUES (1,'让音质更出众','音质不打折 完美现场感',NULL,NULL,1),(2,'让音质更出众22','让音质更出众22',NULL,NULL,NULL),(3,'让音质更出众33',NULL,NULL,NULL,NULL),(4,'让音质更出众44',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_prefrence_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_prefrence_area_product_relation`
--

DROP TABLE IF EXISTS `cms_prefrence_area_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_prefrence_area_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prefrence_area_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='优选专区和产品关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_prefrence_area_product_relation`
--

LOCK TABLES `cms_prefrence_area_product_relation` WRITE;
/*!40000 ALTER TABLE `cms_prefrence_area_product_relation` DISABLE KEYS */;
INSERT INTO `cms_prefrence_area_product_relation` VALUES (1,1,12),(2,1,13),(3,1,14),(4,1,18),(5,1,7),(6,2,7),(7,1,22),(24,1,23);
/*!40000 ALTER TABLE `cms_prefrence_area_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_subject`
--

DROP TABLE IF EXISTS `cms_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL COMMENT '专题主图',
  `product_count` int(11) DEFAULT NULL COMMENT '关联产品数量',
  `recommend_status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `collect_count` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `album_pics` varchar(1000) DEFAULT NULL COMMENT '画册图片用逗号分割',
  `description` varchar(1000) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `content` text,
  `forward_count` int(11) DEFAULT NULL COMMENT '转发数',
  `category_name` varchar(200) DEFAULT NULL COMMENT '专题分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='专题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_subject`
--

LOCK TABLES `cms_subject` WRITE;
/*!40000 ALTER TABLE `cms_subject` DISABLE KEYS */;
INSERT INTO `cms_subject` VALUES (1,1,'polo衬衫的也时尚',NULL,NULL,NULL,'2018-11-11 13:26:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'服装专题'),(2,2,'大牌手机低价秒',NULL,NULL,NULL,'2018-11-12 13:27:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'手机专题'),(3,2,'晓龙845新品上市',NULL,NULL,NULL,'2018-11-13 13:27:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'手机专题'),(4,1,'夏天应该穿什么',NULL,NULL,NULL,'2018-11-01 13:27:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'服装专题'),(5,1,'夏季精选',NULL,NULL,NULL,'2018-11-06 13:27:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'服装专题'),(6,2,'品牌手机降价',NULL,NULL,NULL,'2018-11-07 13:27:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'手机专题');
/*!40000 ALTER TABLE `cms_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_subject_category`
--

DROP TABLE IF EXISTS `cms_subject_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_subject_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专题分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_subject_category`
--

LOCK TABLES `cms_subject_category` WRITE;
/*!40000 ALTER TABLE `cms_subject_category` DISABLE KEYS */;
INSERT INTO `cms_subject_category` VALUES (1,'服装专题',NULL,NULL,NULL,NULL),(2,'手机专题',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_subject_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_subject_comment`
--

DROP TABLE IF EXISTS `cms_subject_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_subject_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_subject_comment`
--

LOCK TABLES `cms_subject_comment` WRITE;
/*!40000 ALTER TABLE `cms_subject_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_subject_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_subject_product_relation`
--

DROP TABLE IF EXISTS `cms_subject_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_subject_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='专题商品关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_subject_product_relation`
--

LOCK TABLES `cms_subject_product_relation` WRITE;
/*!40000 ALTER TABLE `cms_subject_product_relation` DISABLE KEYS */;
INSERT INTO `cms_subject_product_relation` VALUES (1,1,12),(2,1,13),(3,1,14),(4,1,18),(5,1,7),(6,2,7),(7,1,22),(29,1,23),(30,4,23),(31,5,23),(41,2,26),(42,3,26),(43,6,26);
/*!40000 ALTER TABLE `cms_subject_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_topic`
--

DROP TABLE IF EXISTS `cms_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `attend_count` int(11) DEFAULT NULL COMMENT '参与人数',
  `attention_count` int(11) DEFAULT NULL COMMENT '关注人数',
  `read_count` int(11) DEFAULT NULL,
  `award_name` varchar(100) DEFAULT NULL COMMENT '奖品名称',
  `attend_type` varchar(100) DEFAULT NULL COMMENT '参与方式',
  `content` text COMMENT '话题内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_topic`
--

LOCK TABLES `cms_topic` WRITE;
/*!40000 ALTER TABLE `cms_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_topic_category`
--

DROP TABLE IF EXISTS `cms_topic_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_topic_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_topic_category`
--

LOCK TABLES `cms_topic_category` WRITE;
/*!40000 ALTER TABLE `cms_topic_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_topic_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_topic_comment`
--

DROP TABLE IF EXISTS `cms_topic_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_topic_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_topic_comment`
--

LOCK TABLES `cms_topic_comment` WRITE;
/*!40000 ALTER TABLE `cms_topic_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_topic_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `imgUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'芒果','/img/avatorImages/1657202607013AR.png','2022-02-02 00:00:00',NULL),(2,'荔枝',NULL,'2022-04-03 00:00:00',NULL),(3,'香蕉',NULL,'2022-03-07 00:00:00',NULL),(4,'嘎嘎嘎','88','2022-03-09 00:00:00',NULL),(8,'北岸2','/img/avatorImages/1653367554846ManageIncome.png','2022-03-18 00:00:00','2022-05-24 04:46:01'),(9,'科学课','/img/avatorImages/1653064967678apply@2x.png',NULL,NULL),(16,'画画','blob:http://localhost:2021/240c5406-7d95-459e-ac91-b768f465b224','2022-05-23 15:25:41',NULL),(18,'好好','/img/avatorImages/1653319866982land.png','2022-05-23 15:31:08',NULL),(19,'嘿嘿','/img/avatorImages/1653367250399invoice.png','2022-05-24 04:40:52',NULL),(20,'画好那','/img/avatorImages/1653369177154bill@2x.png','2022-05-24 05:12:36','2022-05-24 05:12:59'),(21,'进击的巨人','/img/avatorImages/1653379096596apply@2x.png','2022-05-24 07:58:18',NULL),(22,'萨克森看','/img/avatorImages/1653379114556PriceManage.png','2022-05-24 07:58:36',NULL),(23,'刚刚2','/img/avatorImages/1653405074270enterprise@2x.png','2022-05-24 15:11:20','2022-05-24 15:11:43'),(24,'帆帆2','/img/avatorImages/1653482670589apply@2x.png','2022-05-25 12:44:47','2022-05-25 12:45:04');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_cart_item`
--

DROP TABLE IF EXISTS `oms_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_cart_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_sku_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '添加到购物车的价格',
  `product_pic` varchar(1000) DEFAULT NULL COMMENT '商品主图',
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `product_sub_title` varchar(500) DEFAULT NULL COMMENT '商品副标题（卖点）',
  `product_sku_code` varchar(200) DEFAULT NULL COMMENT '商品sku条码',
  `member_nickname` varchar(500) DEFAULT NULL COMMENT '会员昵称',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delete_status` int(1) DEFAULT '0' COMMENT '是否删除',
  `product_category_id` bigint(20) DEFAULT NULL COMMENT '商品分类',
  `product_brand` varchar(200) DEFAULT NULL,
  `product_sn` varchar(200) DEFAULT NULL,
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_cart_item`
--

LOCK TABLES `oms_cart_item` WRITE;
/*!40000 ALTER TABLE `oms_cart_item` DISABLE KEYS */;
INSERT INTO `oms_cart_item` VALUES (12,26,90,1,1,3788.00,NULL,'华为 HUAWEI P20','AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待','201806070026001','windir','2018-08-27 16:53:44',NULL,1,19,NULL,NULL,NULL),(13,27,98,1,3,2699.00,NULL,'小米8','骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购','201808270027001','windir','2018-08-27 17:11:53',NULL,1,19,NULL,NULL,NULL),(14,28,102,1,1,649.00,NULL,'红米5A','8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购','201808270028001','windir','2018-08-27 17:18:02',NULL,1,19,NULL,NULL,NULL),(15,28,103,1,1,699.00,NULL,'红米5A','8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购','201808270028001','windir','2018-08-28 10:22:45',NULL,1,19,NULL,NULL,NULL),(16,29,106,1,1,5499.00,NULL,'Apple iPhone 8 Plus','【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。','201808270029001','windir','2018-08-28 10:50:50',NULL,1,19,NULL,NULL,NULL),(19,36,163,1,3,100.00,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','202002210036001','windir','2020-02-25 15:51:59',NULL,1,29,'NIKE','6799345','[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(20,36,164,1,2,120.00,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','202002210036001','windir','2020-02-25 15:54:23',NULL,1,29,'NIKE','6799345','[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(21,36,164,1,2,120.00,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','202002210036001','windir','2020-02-25 16:49:53',NULL,1,29,'NIKE','6799345','[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
/*!40000 ALTER TABLE `oms_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_company_address`
--

DROP TABLE IF EXISTS `oms_company_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_company_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(200) DEFAULT NULL COMMENT '地址名称',
  `send_status` int(1) DEFAULT NULL COMMENT '默认发货地址：0->否；1->是',
  `receive_status` int(1) DEFAULT NULL COMMENT '是否默认收货地址：0->否；1->是',
  `name` varchar(64) DEFAULT NULL COMMENT '收发货人姓名',
  `phone` varchar(64) DEFAULT NULL COMMENT '收货人电话',
  `province` varchar(64) DEFAULT NULL COMMENT '省/直辖市',
  `city` varchar(64) DEFAULT NULL COMMENT '市',
  `region` varchar(64) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公司收发货地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_company_address`
--

LOCK TABLES `oms_company_address` WRITE;
/*!40000 ALTER TABLE `oms_company_address` DISABLE KEYS */;
INSERT INTO `oms_company_address` VALUES (1,'深圳发货点',1,1,'大梨','18000000000','广东省','深圳市','南山区','科兴科学园'),(2,'北京发货点',0,0,'大梨','18000000000','北京市',NULL,'南山区','科兴科学园'),(3,'南京发货点',0,0,'大梨','18000000000','江苏省','南京市','南山区','科兴科学园');
/*!40000 ALTER TABLE `oms_company_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order`
--

DROP TABLE IF EXISTS `oms_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `member_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '提交时间',
  `member_username` varchar(64) DEFAULT NULL COMMENT '用户帐号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '订单总金额',
  `pay_amount` decimal(10,2) DEFAULT NULL COMMENT '应付金额（实际支付金额）',
  `freight_amount` decimal(10,2) DEFAULT NULL COMMENT '运费金额',
  `promotion_amount` decimal(10,2) DEFAULT NULL COMMENT '促销优化金额（促销价、满减、阶梯价）',
  `integration_amount` decimal(10,2) DEFAULT NULL COMMENT '积分抵扣金额',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠券抵扣金额',
  `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '管理员后台调整订单使用的折扣金额',
  `pay_type` int(1) DEFAULT NULL COMMENT '支付方式：0->未支付；1->支付宝；2->微信',
  `source_type` int(1) DEFAULT NULL COMMENT '订单来源：0->PC订单；1->app订单',
  `status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `order_type` int(1) DEFAULT NULL COMMENT '订单类型：0->正常订单；1->秒杀订单',
  `delivery_company` varchar(64) DEFAULT NULL COMMENT '物流公司(配送方式)',
  `delivery_sn` varchar(64) DEFAULT NULL COMMENT '物流单号',
  `auto_confirm_day` int(11) DEFAULT NULL COMMENT '自动确认时间（天）',
  `integration` int(11) DEFAULT NULL COMMENT '可以获得的积分',
  `growth` int(11) DEFAULT NULL COMMENT '可以活动的成长值',
  `promotion_info` varchar(100) DEFAULT NULL COMMENT '活动信息',
  `bill_type` int(1) DEFAULT NULL COMMENT '发票类型：0->不开发票；1->电子发票；2->纸质发票',
  `bill_header` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `bill_content` varchar(200) DEFAULT NULL COMMENT '发票内容',
  `bill_receiver_phone` varchar(32) DEFAULT NULL COMMENT '收票人电话',
  `bill_receiver_email` varchar(64) DEFAULT NULL COMMENT '收票人邮箱',
  `receiver_name` varchar(100) NOT NULL COMMENT '收货人姓名',
  `receiver_phone` varchar(32) NOT NULL COMMENT '收货人电话',
  `receiver_post_code` varchar(32) DEFAULT NULL COMMENT '收货人邮编',
  `receiver_province` varchar(32) DEFAULT NULL COMMENT '省份/直辖市',
  `receiver_city` varchar(32) DEFAULT NULL COMMENT '城市',
  `receiver_region` varchar(32) DEFAULT NULL COMMENT '区',
  `receiver_detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `note` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `confirm_status` int(1) DEFAULT NULL COMMENT '确认收货状态：0->未确认；1->已确认',
  `delete_status` int(1) NOT NULL DEFAULT '0' COMMENT '删除状态：0->未删除；1->已删除',
  `use_integration` int(11) DEFAULT NULL COMMENT '下单时使用的积分',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `receive_time` datetime DEFAULT NULL COMMENT '确认收货时间',
  `comment_time` datetime DEFAULT NULL COMMENT '评价时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order`
--

LOCK TABLES `oms_order` WRITE;
/*!40000 ALTER TABLE `oms_order` DISABLE KEYS */;
INSERT INTO `oms_order` VALUES (12,1,2,'201809150101000001','2018-09-15 12:24:27','test',18732.00,16377.75,20.00,2344.25,0.00,10.00,10.00,0,1,4,0,'','',15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','江苏省','常州市','天宁区','东晓街道','2哈哥哥备注2',0,0,NULL,NULL,NULL,NULL,NULL,'2022-06-21 15:15:27'),(13,1,2,'201809150102000002','2018-09-15 14:24:29','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,2,0,'顺丰快递','123',15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,1000,'2018-10-11 14:04:19','2022-06-21 22:32:05',NULL,NULL,NULL),(14,1,2,'201809130101000001','2018-09-13 16:57:40','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,2,0,'顺丰快递','201707196398345',15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,'2018-10-13 13:44:04','2018-10-16 13:43:41',NULL,NULL,NULL),(15,1,2,'201809130102000002','2018-09-13 17:03:00','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,3,0,'顺丰快递','201707196398346',15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,1,0,NULL,'2018-10-13 13:44:54','2018-10-16 13:45:01','2018-10-18 14:05:31',NULL,NULL),(16,1,2,'201809140101000001','2018-09-14 16:16:16','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,4,0,NULL,NULL,15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(17,1,2,'201809150101000003','2018-09-15 12:24:27','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,0,1,4,0,'顺丰快递','201707196398345',15,NULL,NULL,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,'2018-10-12 14:01:28',NULL,NULL,NULL),(18,1,2,'201809150102000004','2018-09-15 14:24:29','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,1,0,'圆通快递','xx',15,NULL,NULL,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨SB','18033441849','518000','广东省','深圳市','福田区','东晓街道','66',0,0,1000,NULL,'2018-10-16 14:42:17',NULL,NULL,'2022-07-03 01:48:48'),(19,1,2,'201809130101000003','2018-09-13 16:57:40','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,2,0,NULL,NULL,15,NULL,NULL,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(20,1,2,'201809130102000004','2018-09-13 17:03:00','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,3,0,NULL,NULL,15,NULL,NULL,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(21,1,2,'201809140101000002','2018-09-14 16:16:16','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,4,0,NULL,NULL,15,18682,18682,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL),(22,1,2,'201809150101000005','2018-09-15 12:24:27','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,0,1,4,0,'顺丰快递','201707196398345',15,0,0,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,'2018-10-12 14:01:28',NULL,NULL,NULL),(23,1,2,'201809150102000006','2018-09-15 14:24:29','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,1,0,'顺丰快递','xxx',15,0,0,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,1000,NULL,'2018-10-16 14:41:28',NULL,NULL,NULL),(24,1,2,'201809130101000005','2018-09-13 16:57:40','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,2,0,NULL,NULL,15,18682,18682,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(25,1,2,'201809130102000006','2018-09-13 17:03:00','test',18732.00,16377.75,10.00,2344.25,0.00,10.00,5.00,1,1,4,0,NULL,NULL,15,18682,18682,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨22','18033441849','518000','北京市','北京城区','东城区','东城街道','xxx',0,0,NULL,NULL,NULL,NULL,NULL,'2018-10-30 15:08:31'),(26,1,2,'201809140101000003','2018-09-14 16:16:16','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,4,0,NULL,NULL,15,18682,18682,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL),(27,1,NULL,'202002250100000001','2020-02-25 15:59:20','test',540.00,540.00,0.00,0.00,0.00,0.00,0.00,0,1,0,0,NULL,NULL,NULL,0,0,'无优惠,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','南山区','科兴科学园',NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL),(28,1,NULL,'202002250100000002','2020-02-25 16:05:47','test',540.00,540.00,0.00,0.00,0.00,0.00,0.00,0,1,0,0,NULL,NULL,NULL,0,0,'无优惠,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','南山区','科兴科学园',NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL),(29,1,NULL,'202002250100000003','2020-02-25 16:07:58','test',540.00,540.00,11.00,0.00,0.00,0.00,15.00,0,1,0,0,NULL,NULL,NULL,0,0,'无优惠,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','南山区','科兴科学园',NULL,0,0,NULL,NULL,NULL,NULL,NULL,'2022-07-03 05:51:52'),(30,1,NULL,'202002250100000004','2020-02-25 16:50:13','test',240.00,240.00,20.00,0.00,0.00,0.00,10.00,0,1,2,0,'顺丰快递','12333333',NULL,0,0,'无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','南山区','科兴科学园',NULL,0,1,NULL,'2020-02-25 16:53:29','2020-02-25 16:54:03',NULL,NULL,'2020-02-25 16:52:51');
/*!40000 ALTER TABLE `oms_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_item`
--

DROP TABLE IF EXISTS `oms_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `product_id` bigint(20) DEFAULT NULL,
  `product_pic` varchar(500) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_brand` varchar(200) DEFAULT NULL,
  `product_sn` varchar(64) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `product_quantity` int(11) DEFAULT NULL COMMENT '购买数量',
  `product_sku_id` bigint(20) DEFAULT NULL COMMENT '商品sku编号',
  `product_sku_code` varchar(50) DEFAULT NULL COMMENT '商品sku条码',
  `product_category_id` bigint(20) DEFAULT NULL COMMENT '商品分类id',
  `promotion_name` varchar(200) DEFAULT NULL COMMENT '商品促销名称',
  `promotion_amount` decimal(10,2) DEFAULT NULL COMMENT '商品促销分解金额',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠券优惠分解金额',
  `integration_amount` decimal(10,2) DEFAULT NULL COMMENT '积分优惠分解金额',
  `real_amount` decimal(10,2) DEFAULT NULL COMMENT '该商品经过优惠后的分解金额',
  `gift_integration` int(11) DEFAULT '0',
  `gift_growth` int(11) DEFAULT '0',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='订单中所包含的商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_item`
--

LOCK TABLES `oms_order_item` WRITE;
/*!40000 ALTER TABLE `oms_order_item` DISABLE KEYS */;
INSERT INTO `oms_order_item` VALUES (21,12,'201809150101000001',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,'单品促销',200.00,2.02,0.00,3585.98,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(22,12,'201809150101000001',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(23,12,'201809150101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(24,12,'201809150101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(25,12,'201809150101000001',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,'无优惠',0.00,2.94,0.00,5496.06,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(26,13,'201809150102000002',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,'单品促销',200.00,2.02,0.00,3585.98,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(27,13,'201809150102000002',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(28,13,'201809150102000002',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(29,13,'201809150102000002',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(30,13,'201809150102000002',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,'无优惠',0.00,2.94,0.00,5496.06,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(31,14,'201809130101000001',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,'单品促销',200.00,2.02,0.00,3585.98,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(32,14,'201809130101000001',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(33,14,'201809130101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(34,14,'201809130101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(35,14,'201809130101000001',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,'无优惠',0.00,2.94,0.00,5496.06,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(36,15,'201809130101000001',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,'单品促销',200.00,2.02,0.00,3585.98,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(37,15,'201809130101000001',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(38,15,'201809130101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(39,15,'201809130101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(40,15,'201809130101000001',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,'无优惠',0.00,2.94,0.00,5496.06,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(41,16,'201809140101000001',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,'单品促销',200.00,2.02,0.00,3585.98,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(42,16,'201809140101000001',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(43,16,'201809140101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(44,16,'201809140101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(45,16,'201809140101000001',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,'无优惠',0.00,2.94,0.00,5496.06,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(46,27,'202002250100000001',36,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','NIKE','6799345',100.00,3,163,'202002210036001',29,'无优惠',0.00,0.00,0.00,100.00,0,0,NULL),(47,27,'202002250100000001',36,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','NIKE','6799345',120.00,2,164,'202002210036001',29,'无优惠',0.00,0.00,0.00,120.00,0,0,NULL),(48,28,'202002250100000002',36,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','NIKE','6799345',100.00,3,163,'202002210036001',29,'无优惠',0.00,0.00,0.00,100.00,0,0,NULL),(49,28,'202002250100000002',36,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','NIKE','6799345',120.00,2,164,'202002210036001',29,'无优惠',0.00,0.00,0.00,120.00,0,0,NULL),(50,29,'202002250100000003',36,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','NIKE','6799345',100.00,3,163,'202002210036001',29,'无优惠',0.00,0.00,0.00,100.00,0,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(51,29,'202002250100000003',36,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','NIKE','6799345',120.00,2,164,'202002210036001',29,'无优惠',0.00,0.00,0.00,120.00,0,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(52,30,'202002250100000004',36,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','NIKE','6799345',120.00,2,164,'202002210036001',29,'无优惠',0.00,0.00,0.00,120.00,0,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
/*!40000 ALTER TABLE `oms_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_operate_history`
--

DROP TABLE IF EXISTS `oms_order_operate_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_operate_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `order_status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='订单操作历史记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_operate_history`
--

LOCK TABLES `oms_order_operate_history` WRITE;
/*!40000 ALTER TABLE `oms_order_operate_history` DISABLE KEYS */;
INSERT INTO `oms_order_operate_history` VALUES (5,12,'后台管理员','2018-10-12 14:01:29',2,'完成发货'),(6,13,'后台管理员','2018-10-12 14:01:29',2,'完成发货'),(7,12,'后台管理员','2018-10-12 14:13:10',4,'订单关闭:买家退货'),(8,13,'后台管理员','2018-10-12 14:13:10',4,'订单关闭:买家退货'),(9,22,'后台管理员','2018-10-15 16:31:48',4,'订单关闭:xxx'),(10,22,'后台管理员','2018-10-15 16:35:08',4,'订单关闭:xxx'),(11,22,'后台管理员','2018-10-15 16:35:59',4,'订单关闭:xxx'),(12,17,'后台管理员','2018-10-15 16:43:40',4,'订单关闭:xxx'),(13,25,'后台管理员','2018-10-15 16:52:14',4,'订单关闭:xxx'),(14,26,'后台管理员','2018-10-15 16:52:14',4,'订单关闭:xxx'),(15,23,'后台管理员','2018-10-16 14:41:28',2,'完成发货'),(16,13,'后台管理员','2018-10-16 14:42:17',2,'完成发货'),(17,18,'后台管理员','2018-10-16 14:42:17',2,'完成发货'),(18,26,'后台管理员','2018-10-30 14:37:44',4,'订单关闭:关闭订单'),(19,25,'后台管理员','2018-10-30 15:07:01',0,'修改收货人信息'),(20,25,'后台管理员','2018-10-30 15:08:13',0,'修改费用信息'),(21,25,'后台管理员','2018-10-30 15:08:31',0,'修改备注信息：xxx'),(22,25,'后台管理员','2018-10-30 15:08:39',4,'订单关闭:2222'),(23,12,'后台管理员','2019-11-09 16:50:28',4,'修改备注信息：111'),(24,30,'后台管理员','2020-02-25 16:52:37',0,'修改费用信息'),(25,30,'后台管理员','2020-02-25 16:52:51',0,'修改费用信息'),(26,30,'后台管理员','2020-02-25 16:54:03',2,'完成发货'),(27,13,'后台管理员','2022-06-21 14:32:05',2,'完成发货'),(28,12,'后台管理员','2022-06-21 15:01:55',4,'修改备注信息：哈哥哥备注'),(29,12,'后台管理员','2022-06-21 15:15:27',4,'修改备注信息：2哈哥哥备注2'),(30,18,'后台管理员','2022-07-02 17:45:48',1,'修改收货人信息'),(31,18,'后台管理员','2022-07-03 01:48:48',1,'修改备注信息：66'),(32,29,'后台管理员','2022-07-03 05:45:16',0,'修改费用信息'),(33,29,'后台管理员','2022-07-03 05:51:53',0,'修改费用信息');
/*!40000 ALTER TABLE `oms_order_operate_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_return_apply`
--

DROP TABLE IF EXISTS `oms_order_return_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_return_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `company_address_id` bigint(20) DEFAULT NULL COMMENT '收货地址表id',
  `product_id` bigint(20) DEFAULT NULL COMMENT '退货商品id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `member_username` varchar(64) DEFAULT NULL COMMENT '会员用户名',
  `return_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `return_name` varchar(100) DEFAULT NULL COMMENT '退货人姓名',
  `return_phone` varchar(100) DEFAULT NULL COMMENT '退货人电话',
  `status` int(1) DEFAULT NULL COMMENT '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
  `handle_time` datetime DEFAULT NULL COMMENT '处理时间',
  `product_pic` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `product_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `product_brand` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性：颜色：红色；尺码：xl;',
  `product_count` int(11) DEFAULT NULL COMMENT '退货数量',
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
  `product_real_price` decimal(10,2) DEFAULT NULL COMMENT '商品实际支付单价',
  `reason` varchar(200) DEFAULT NULL COMMENT '原因',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `proof_pics` varchar(1000) DEFAULT NULL COMMENT '凭证图片，以逗号隔开',
  `handle_note` varchar(500) DEFAULT NULL COMMENT '处理备注',
  `handle_man` varchar(100) DEFAULT NULL COMMENT '处理人员',
  `receive_man` varchar(100) DEFAULT NULL COMMENT '收货人',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `receive_note` varchar(500) DEFAULT NULL COMMENT '收货备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单退货申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_return_apply`
--

LOCK TABLES `oms_order_return_apply` WRITE;
/*!40000 ALTER TABLE `oms_order_return_apply` DISABLE KEYS */;
INSERT INTO `oms_order_return_apply` VALUES (3,12,1,26,'201809150101000001','2018-10-17 14:34:57','test',0.00,'大梨','18000000000',1,'2022-06-22 06:53:10','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg',NULL,'admin',NULL,NULL,NULL),(4,12,2,27,'201809150101000001','2018-10-17 14:40:21','test',3585.98,'大梨','18000000000',1,'2018-10-18 13:54:10','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','','已经处理了','admin',NULL,NULL,NULL),(5,12,3,28,'201809150101000001','2018-10-17 14:44:18','test',3585.98,'大梨','18000000000',2,'2018-10-18 13:55:28','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','','已经处理了','admin','admin','2018-10-18 13:55:58','已经处理了'),(8,13,NULL,28,'201809150102000002','2018-10-17 14:44:18','test',NULL,'大梨','18000000000',3,'2018-10-18 13:57:12','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','','理由不够充分','admin',NULL,NULL,NULL),(9,14,2,26,'201809130101000001','2018-10-17 14:34:57','test',3500.00,'大梨','18000000000',2,'2018-10-24 15:44:56','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','','呵呵','admin','admin','2018-10-24 15:46:35','收货了'),(10,14,NULL,27,'201809130101000001','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',3,'2018-10-24 15:46:57','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','','就是不退','admin',NULL,NULL,NULL),(11,14,2,28,'201809130101000001','2018-10-17 14:44:18','test',591.05,'大梨','18000000000',2,'2018-10-24 17:09:04','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','','可以退款','admin',NULL,'2022-07-04 04:59:17','Are you ok?'),(12,15,3,26,'201809130102000002','2018-10-17 14:34:57','test',3500.00,'大梨','18000000000',2,'2018-10-24 17:22:54','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','','退货了','admin','admin','2018-10-24 17:23:06','收货了'),(13,15,NULL,27,'201809130102000002','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',3,'2018-10-24 17:23:30','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','','无法退货','admin',NULL,NULL,NULL),(15,16,NULL,26,'201809140101000001','2018-10-17 14:34:57','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','',NULL,NULL,NULL,NULL,NULL),(16,16,NULL,27,'201809140101000001','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','',NULL,NULL,NULL,NULL,NULL),(17,16,NULL,28,'201809140101000001','2018-10-17 14:44:18','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','',NULL,NULL,NULL,NULL,NULL),(18,17,NULL,26,'201809150101000003','2018-10-17 14:34:57','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','',NULL,NULL,NULL,NULL,NULL),(19,17,NULL,27,'201809150101000003','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','',NULL,NULL,NULL,NULL,NULL),(20,17,NULL,28,'201809150101000003','2018-10-17 14:44:18','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','',NULL,NULL,NULL,NULL,NULL),(21,18,NULL,26,'201809150102000004','2018-10-17 14:34:57','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','',NULL,NULL,NULL,NULL,NULL),(22,18,NULL,27,'201809150102000004','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','',NULL,NULL,NULL,NULL,NULL),(23,18,NULL,28,'201809150102000004','2018-10-17 14:44:18','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','',NULL,NULL,NULL,NULL,NULL),(24,19,NULL,26,'201809130101000003','2018-10-17 14:34:57','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','',NULL,NULL,NULL,NULL,NULL),(25,19,NULL,27,'201809130101000003','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','',NULL,NULL,NULL,NULL,NULL),(26,19,NULL,28,'201809130101000003','2018-10-17 14:44:18','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oms_order_return_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_return_reason`
--

DROP TABLE IF EXISTS `oms_order_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_return_reason` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '退货类型',
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态：0->不启用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='退货原因表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_return_reason`
--

LOCK TABLES `oms_order_return_reason` WRITE;
/*!40000 ALTER TABLE `oms_order_return_reason` DISABLE KEYS */;
INSERT INTO `oms_order_return_reason` VALUES (1,'质量问题',1,1,'2018-10-17 10:00:45'),(2,'尺码太大',1,1,'2018-10-17 10:01:03'),(3,'颜色不喜欢',1,1,'2018-10-17 10:01:13'),(4,'7天无理由退货',1,1,'2018-10-17 10:01:47'),(5,'价格问题',1,0,'2018-10-17 10:01:57'),(13,'其他问题',0,1,'2018-10-19 16:28:51'),(14,'物流问题',0,1,'2018-10-19 16:29:01'),(15,'售后问题',0,1,'2018-10-19 16:29:11');
/*!40000 ALTER TABLE `oms_order_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_setting`
--

DROP TABLE IF EXISTS `oms_order_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flash_order_overtime` int(11) DEFAULT NULL COMMENT '秒杀订单超时关闭时间(分)',
  `normal_order_overtime` int(11) DEFAULT NULL COMMENT '正常订单超时时间(分)',
  `confirm_overtime` int(11) DEFAULT NULL COMMENT '发货后自动确认收货时间（天）',
  `finish_overtime` int(11) DEFAULT NULL COMMENT '自动完成交易时间，不能申请售后（天）',
  `comment_overtime` int(11) DEFAULT NULL COMMENT '订单完成后自动好评时间（天）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_setting`
--

LOCK TABLES `oms_order_setting` WRITE;
/*!40000 ALTER TABLE `oms_order_setting` DISABLE KEYS */;
INSERT INTO `oms_order_setting` VALUES (1,60,120,15,7,7);
/*!40000 ALTER TABLE `oms_order_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_code` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `operation_name` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0' COMMENT '禁用true,隐藏false',
  `hidden` tinyint(1) DEFAULT '0' COMMENT '隐藏true,禁用false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES (1,'user:add','新增',1,0),(2,'user:edit','修改',0,1),(3,'role:add','新增',0,0),(4,'role:list','列表',0,0);
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_album`
--

DROP TABLE IF EXISTS `pms_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `cover_pic` varchar(1000) DEFAULT NULL,
  `pic_count` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='相册表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_album`
--

LOCK TABLES `pms_album` WRITE;
/*!40000 ALTER TABLE `pms_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_album_pic`
--

DROP TABLE IF EXISTS `pms_album_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_album_pic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) DEFAULT NULL,
  `pic` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='画册图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_album_pic`
--

LOCK TABLES `pms_album_pic` WRITE;
/*!40000 ALTER TABLE `pms_album_pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_album_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_brand`
--

DROP TABLE IF EXISTS `pms_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `first_letter` varchar(8) DEFAULT NULL COMMENT '首字母',
  `sort` int(11) DEFAULT NULL,
  `factory_status` int(1) DEFAULT NULL COMMENT '是否为品牌制造商：0->不是；1->是',
  `show_status` int(1) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL COMMENT '产品数量',
  `product_comment_count` int(11) DEFAULT NULL COMMENT '产品评论数量',
  `logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
  `big_pic` varchar(255) DEFAULT NULL COMMENT '专区大图',
  `brand_story` text COMMENT '品牌故事',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='品牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_brand`
--

LOCK TABLES `pms_brand` WRITE;
/*!40000 ALTER TABLE `pms_brand` DISABLE KEYS */;
INSERT INTO `pms_brand` VALUES (1,'万和','W',0,1,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(5).jpg','','Victoria\'s Secret的故事'),(2,'三星','S',100,1,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (1).jpg',NULL,'三星的故事'),(3,'华为','H',100,1,0,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (2).jpg',NULL,'Victoria\'s Secret的故事'),(4,'格力','G',30,1,0,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (3).jpg',NULL,'Victoria\'s Secret的故事'),(5,'方太','F',20,1,0,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (4).jpg',NULL,'Victoria\'s Secret的故事'),(6,'小米','M',500,1,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5a912944N474afb7a.png','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5afd7778Nf7800b75.jpg','小米手机的故事'),(21,'OPPO','O',0,1,1,88,500,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(6).jpg','','string'),(49,'七匹狼','S',200,1,1,77,400,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/1522738681.jpg',NULL,'BOOB的故事'),(50,'海澜之家','H',200,1,1,66,300,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/LOGO1024.png','','海澜之家的故事'),(51,'苹果','A',200,1,1,55,200,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg',NULL,'苹果的故事'),(58,'NIKE','N',0,1,1,33,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/timg (51).jpg','','NIKE的故事');
/*!40000 ALTER TABLE `pms_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_comment`
--

DROP TABLE IF EXISTS `pms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `star` int(3) DEFAULT NULL COMMENT '评价星数：0->5',
  `member_ip` varchar(64) DEFAULT NULL COMMENT '评价的ip',
  `create_time` datetime DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  `product_attribute` varchar(255) DEFAULT NULL COMMENT '购买时的商品属性',
  `collect_couont` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `content` text,
  `pics` varchar(1000) DEFAULT NULL COMMENT '上传图片地址，以逗号隔开',
  `member_icon` varchar(255) DEFAULT NULL COMMENT '评论用户头像',
  `replay_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评价表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_comment`
--

LOCK TABLES `pms_comment` WRITE;
/*!40000 ALTER TABLE `pms_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_comment_replay`
--

DROP TABLE IF EXISTS `pms_comment_replay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_comment_replay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '评论人员类型；0->会员；1->管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品评价回复表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_comment_replay`
--

LOCK TABLES `pms_comment_replay` WRITE;
/*!40000 ALTER TABLE `pms_comment_replay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_comment_replay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_feight_template`
--

DROP TABLE IF EXISTS `pms_feight_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_feight_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `charge_type` int(1) DEFAULT NULL COMMENT '计费类型:0->按重量；1->按件数',
  `first_weight` decimal(10,2) DEFAULT NULL COMMENT '首重kg',
  `first_fee` decimal(10,2) DEFAULT NULL COMMENT '首费（元）',
  `continue_weight` decimal(10,2) DEFAULT NULL,
  `continme_fee` decimal(10,2) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL COMMENT '目的地（省、市）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运费模版';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_feight_template`
--

LOCK TABLES `pms_feight_template` WRITE;
/*!40000 ALTER TABLE `pms_feight_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_feight_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_member_price`
--

DROP TABLE IF EXISTS `pms_member_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_member_price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `member_level_id` bigint(20) DEFAULT NULL,
  `member_price` decimal(10,2) DEFAULT NULL COMMENT '会员价格',
  `member_level_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8 COMMENT='商品会员价格表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_member_price`
--

LOCK TABLES `pms_member_price` WRITE;
/*!40000 ALTER TABLE `pms_member_price` DISABLE KEYS */;
INSERT INTO `pms_member_price` VALUES (26,7,1,500.00,NULL),(27,8,1,500.00,NULL),(28,9,1,500.00,NULL),(29,10,1,500.00,NULL),(30,11,1,500.00,NULL),(31,12,1,500.00,NULL),(32,13,1,500.00,NULL),(33,14,1,500.00,NULL),(37,18,1,500.00,NULL),(44,7,2,480.00,NULL),(45,7,3,450.00,NULL),(52,22,1,NULL,NULL),(53,22,2,NULL,NULL),(54,22,3,NULL,NULL),(58,24,1,NULL,NULL),(59,24,2,NULL,NULL),(60,24,3,NULL,NULL),(112,23,1,88.00,'黄金会员'),(113,23,2,88.00,'白金会员'),(114,23,3,66.00,'钻石会员'),(142,31,1,NULL,'黄金会员'),(143,31,2,NULL,'白金会员'),(144,31,3,NULL,'钻石会员'),(148,32,1,NULL,'黄金会员'),(149,32,2,NULL,'白金会员'),(150,32,3,NULL,'钻石会员'),(154,33,1,NULL,'黄金会员'),(155,33,2,NULL,'白金会员'),(156,33,3,NULL,'钻石会员'),(175,34,1,NULL,'黄金会员'),(176,34,2,NULL,'白金会员'),(177,34,3,NULL,'钻石会员'),(178,30,1,NULL,'黄金会员'),(179,30,2,NULL,'白金会员'),(180,30,3,NULL,'钻石会员'),(192,27,1,NULL,'黄金会员'),(193,27,2,NULL,'白金会员'),(194,27,3,NULL,'钻石会员'),(195,28,1,NULL,'黄金会员'),(196,28,2,NULL,'白金会员'),(197,28,3,NULL,'钻石会员'),(198,29,1,NULL,'黄金会员'),(199,29,2,NULL,'白金会员'),(200,29,3,NULL,'钻石会员'),(201,26,1,NULL,'黄金会员'),(202,26,2,NULL,'白金会员'),(203,26,3,NULL,'钻石会员'),(246,36,1,NULL,'黄金会员'),(247,36,2,NULL,'白金会员'),(248,36,3,NULL,'钻石会员'),(249,35,1,NULL,'黄金会员'),(250,35,2,NULL,'白金会员'),(251,35,3,NULL,'钻石会员'),(252,39,1,NULL,'黄金会员'),(253,39,2,NULL,'白金会员'),(254,39,3,NULL,'钻石会员'),(255,40,1,NULL,'黄金会员'),(256,40,2,NULL,'白金会员'),(257,40,3,NULL,'钻石会员'),(264,41,1,NULL,'黄金会员'),(265,41,2,NULL,'白金会员'),(266,41,3,NULL,'钻石会员');
/*!40000 ALTER TABLE `pms_member_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product`
--

DROP TABLE IF EXISTS `pms_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  `feight_template_id` bigint(20) DEFAULT NULL,
  `product_attribute_category_id` bigint(20) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `product_sn` varchar(64) NOT NULL COMMENT '货号',
  `delete_status` int(1) DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
  `publish_status` int(1) DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
  `new_status` int(1) DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
  `recommand_status` int(1) DEFAULT NULL COMMENT '推荐状态；0->不推荐；1->推荐',
  `verify_status` int(1) DEFAULT NULL COMMENT '审核状态：0->未审核；1->审核通过',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `sale` int(11) DEFAULT NULL COMMENT '销量',
  `price` decimal(10,2) DEFAULT NULL,
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '促销价格',
  `gift_growth` int(11) DEFAULT '0' COMMENT '赠送的成长值',
  `gift_point` int(11) DEFAULT '0' COMMENT '赠送的积分',
  `use_point_limit` int(11) DEFAULT NULL COMMENT '限制使用的积分数',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '副标题',
  `description` text COMMENT '商品描述',
  `original_price` decimal(10,2) DEFAULT NULL COMMENT '市场价',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `low_stock` int(11) DEFAULT NULL COMMENT '库存预警值',
  `unit` varchar(16) DEFAULT NULL COMMENT '单位',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '商品重量，默认为克',
  `preview_status` int(1) DEFAULT NULL COMMENT '是否为预告商品：0->不是；1->是',
  `service_ids` varchar(64) DEFAULT NULL COMMENT '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
  `keywords` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `album_pics` varchar(255) DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
  `detail_title` varchar(255) DEFAULT NULL,
  `detail_desc` text,
  `detail_html` text COMMENT '产品详情网页内容',
  `detail_mobile_html` text COMMENT '移动端网页详情',
  `promotion_start_time` datetime DEFAULT NULL COMMENT '促销开始时间',
  `promotion_end_time` datetime DEFAULT NULL COMMENT '促销结束时间',
  `promotion_per_limit` int(11) DEFAULT NULL COMMENT '活动限购数量',
  `promotion_type` int(1) DEFAULT NULL COMMENT '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `product_category_name` varchar(255) DEFAULT NULL COMMENT '商品分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product`
--

LOCK TABLES `pms_product` WRITE;
/*!40000 ALTER TABLE `pms_product` DISABLE KEYS */;
INSERT INTO `pms_product` VALUES (1,49,7,0,0,'银色星芒刺绣网纱底裤','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,1,1,1,1,100,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'七匹狼','外套'),(2,49,7,0,0,'银色星芒刺绣网纱底裤2','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86578',1,1,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤2','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','<p>银色星芒刺绣网纱底裤</p>','<p>银色星芒刺绣网纱底裤</p>',NULL,NULL,NULL,0,'七匹狼','外套'),(3,1,7,0,0,'银色星芒刺绣网纱底裤3','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86579',1,1,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤3','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'万和','外套'),(4,1,7,0,0,'银色星芒刺绣网纱底裤4','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86580',1,1,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤4','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'万和','外套'),(5,1,7,0,0,'银色星芒刺绣网纱底裤5','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86581',1,0,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤5','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'万和','外套'),(6,1,7,0,0,'银色星芒刺绣网纱底裤6','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86582',1,1,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤6','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'万和','外套'),(7,1,7,0,1,'女式超柔软拉毛运动开衫','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,0,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(8,1,7,0,1,'女式超柔软拉毛运动开衫1','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,0,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(9,1,7,0,1,'女式超柔软拉毛运动开衫1','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,0,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(10,1,7,0,1,'女式超柔软拉毛运动开衫1','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,0,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(11,1,7,0,1,'女式超柔软拉毛运动开衫1','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,1,0,1,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(12,1,7,0,1,'女式超柔软拉毛运动开衫2','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,1,0,1,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(13,1,7,0,1,'女式超柔软拉毛运动开衫3','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,1,0,1,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(14,1,7,0,1,'女式超柔软拉毛运动开衫3','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,1,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(18,1,7,0,1,'女式超柔软拉毛运动开衫3','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,1,0,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套'),(22,6,7,0,1,'test','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg','',1,1,0,0,0,0,0,0.00,NULL,0,0,0,'test','',0.00,100,0,'',0.00,1,'1,2','','','','','','','',NULL,NULL,0,0,'小米','外套'),(23,6,19,0,1,'毛衫测试','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg','NO.1098',1,1,1,1,0,0,0,99.00,NULL,99,99,1000,'毛衫测试11','xxx',109.00,100,0,'件',1000.00,1,'1,2,3','毛衫测试','毛衫测试','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg','毛衫测试','毛衫测试','<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/155x54.bmp\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录bg1080.jpg\" width=\"500\" height=\"500\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录界面.jpg\" width=\"500\" height=\"500\" /></p>','',NULL,NULL,0,2,'小米','手机数码'),(24,6,7,0,NULL,'xxx','','',1,0,0,0,0,0,0,0.00,NULL,0,0,0,'xxx','',0.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'小米','外套'),(26,3,19,0,3,'华为 HUAWEI P20 ','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','6946605',0,1,1,1,0,100,0,3788.00,NULL,3788,3788,0,'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待','',4288.00,1000,0,'件',0.00,1,'2,3,1','','','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ab46a3cN616bdc41.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf5fN2522b9dc.jpg','','','<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44f1cNf51f3bb0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa8Nfcf71c10.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa9N40e78ee0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f4N1c94bdda.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f5Nd30de41d.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5b10fb0eN0eb053fb.jpg\" /></p>','',NULL,NULL,0,1,'华为','手机通讯'),(27,6,19,0,3,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','7437788',0,1,1,1,0,0,0,2699.00,NULL,2699,2699,0,'骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购','小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',2699.00,100,0,'',0.00,0,'','','','','','','<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b2254e8N414e6d3a.jpg\" width=\"500\" /></p>','',NULL,NULL,0,3,'小米','手机数码'),(28,6,19,0,3,'小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','7437789',0,1,1,1,0,0,0,649.00,NULL,649,649,0,'8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购','',649.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,4,'小米','手机数码'),(29,51,19,0,3,'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','7437799',0,1,1,1,0,0,0,5499.00,NULL,5499,5499,0,'【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。','',5499.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'苹果','手机数码'),(30,50,8,0,1,'HLA海澜之家简约动物印花短袖T恤','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ad83a4fN6ff67ecd.jpg!cc_350x449.jpg','HNTBJ2E042A',0,1,1,1,0,0,0,98.00,NULL,0,0,0,'2018夏季新品微弹舒适新款短T男生 6月6日-6月20日，满300减30，参与互动赢百元礼券，立即分享赢大奖','',98.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'海澜之家','T恤'),(31,50,8,0,1,'HLA海澜之家蓝灰花纹圆领针织布短袖T恤','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ac98b64N70acd82f.jpg!cc_350x449.jpg','HNTBJ2E080A',0,1,0,0,0,0,0,98.00,NULL,0,0,0,'2018夏季新品短袖T恤男HNTBJ2E080A 蓝灰花纹80 175/92A/L80A 蓝灰花纹80 175/92A/L','',98.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'海澜之家','T恤'),(32,50,8,0,NULL,'HLA海澜之家短袖T恤男基础款','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a51eb88Na4797877.jpg','HNTBJ2E153A',0,1,0,0,0,0,0,68.00,NULL,0,0,0,'HLA海澜之家短袖T恤男基础款简约圆领HNTBJ2E153A藏青(F3)175/92A(50)','',68.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'海澜之家','T恤'),(33,6,35,0,NULL,'小米（MI）小米电视4A ','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b02804dN66004d73.jpg','4609652',0,1,0,0,0,0,0,2499.00,NULL,0,0,0,'小米（MI）小米电视4A 55英寸 L55M5-AZ/L55M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视','',2499.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'小米','手机数码'),(34,6,35,0,NULL,'小米（MI）小米电视4A 65英寸','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b028530N51eee7d4.jpg','4609660',0,1,0,0,0,0,0,3999.00,NULL,0,0,0,' L65M5-AZ/L65M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视','',3999.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'小米','手机数码'),(35,58,29,0,11,'耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg','6799342',0,1,0,0,0,0,0,369.00,NULL,0,0,0,'耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码','',369.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'NIKE','男鞋'),(36,58,29,0,11,'耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','6799345',0,1,1,1,0,0,0,499.00,NULL,0,0,0,'耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','',499.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'NIKE','男鞋'),(39,6,8,0,1,'二哈','','666',1,1,1,0,0,0,0,6.00,NULL,12,10,1,'哈哥','nice',8.00,1000,0,'只',1200.00,1,'1','c','d','','a','b','<p>qqqqqqqqqqqq</p>','',NULL,NULL,0,0,'小米','T恤'),(40,6,8,0,1,'二哈','','666',0,1,1,0,0,0,0,6.00,NULL,12,10,1,'哈哥','nice',8.00,1000,0,'只',1200.00,1,'1','c','d','','a','b','<p>qqqqqqqqqqqq</p>','',NULL,NULL,0,0,'小米','T恤'),(41,6,8,0,1,'二哈666','','666',0,1,1,0,0,0,0,6.00,NULL,12,10,1,'哈哥','nice',8.00,1000,0,'只',1200.00,1,'1','c','d','','a','b','<p>qqqqqqqqqqqq</p>','',NULL,NULL,0,0,'小米','T恤'),(42,6,7,0,1,'二哈','','222',0,1,1,1,0,0,0,100.00,NULL,20,10,50,'哈','嘿嘿嘿',200.00,600,0,'只',1000.00,1,'1','Detal','d2','','Detal','点点滴滴','<p>qqqqqqqqqqqq</p>','',NULL,NULL,0,0,'小米','外套'),(43,6,8,0,1,'二哈','','666',0,1,1,0,0,0,0,6.00,NULL,12,10,1,'哈哥','nice',8.00,1000,0,'只',1200.00,1,'1','c','d','','a','b','<p>qqqqqqqqqqqq</p>','',NULL,NULL,0,0,'小米','T恤'),(44,NULL,NULL,0,NULL,'','','',1,0,0,0,0,0,0,0.00,NULL,0,0,0,'','',0.00,0,0,'',NULL,0,'1','','','','','','<p>qqqqqqqqqqqq</p>','',NULL,NULL,0,0,'','');
/*!40000 ALTER TABLE `pms_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_attribute`
--

DROP TABLE IF EXISTS `pms_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_attribute_category_id` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `select_type` int(1) DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
  `input_type` int(1) DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
  `input_list` varchar(255) DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
  `sort` int(11) DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
  `filter_type` int(1) DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
  `search_type` int(1) DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
  `related_status` int(1) DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
  `hand_add_status` int(1) DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
  `type` int(1) DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='商品属性参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_attribute`
--

LOCK TABLES `pms_product_attribute` WRITE;
/*!40000 ALTER TABLE `pms_product_attribute` DISABLE KEYS */;
INSERT INTO `pms_product_attribute` VALUES (1,1,'尺寸',2,1,'M,X,XL,2XL,3XL,4XL',0,0,0,0,0,0),(7,1,'颜色',2,1,'黑色,红色,白色,粉色',100,0,0,0,1,0),(13,0,'上市年份',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(14,0,'上市年份1',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(15,0,'上市年份2',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(16,0,'上市年份3',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(17,0,'上市年份4',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(18,0,'上市年份5',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(19,0,'适用对象',1,1,'青年女性,中年女性',0,0,0,0,0,1),(20,0,'适用对象1',2,1,'青年女性,中年女性',0,0,0,0,0,1),(21,0,'适用对象3',2,1,'青年女性,中年女性',0,0,0,0,0,1),(24,1,'商品编号',1,0,'',0,0,0,0,0,1),(25,1,'适用季节',1,1,'春季,夏季,秋季,冬季',0,0,0,0,0,1),(32,2,'适用人群',0,1,'老年,青年,中年',0,0,0,0,0,1),(33,2,'风格',0,1,'嘻哈风格,基础大众,商务正装',0,0,0,0,0,1),(35,2,'颜色',0,0,'',100,0,0,0,1,0),(37,1,'适用人群',1,1,'儿童,青年,中年,老年',0,0,0,0,0,1),(38,1,'上市时间',1,1,'2017年秋,2017年冬,2018年春,2018年夏',0,0,0,0,0,1),(39,1,'袖长',1,1,'短袖,长袖,中袖',0,0,0,0,0,1),(40,2,'尺码',0,1,'29,30,31,32,33,34',0,0,0,0,0,0),(41,2,'适用场景',0,1,'居家,运动,正装',0,0,0,0,0,1),(42,2,'上市时间',0,1,'2018年春,2018年夏',0,0,0,0,0,1),(43,3,'颜色',0,0,'',100,0,0,0,1,0),(44,3,'容量',0,1,'16G,32G,64G,128G',0,0,0,0,0,0),(45,3,'屏幕尺寸',0,0,'',0,0,0,0,0,1),(46,3,'网络',0,1,'3G,4G',0,0,0,0,0,1),(47,3,'系统',0,1,'Android,IOS',0,0,0,0,0,1),(48,3,'电池容量',0,0,'',0,0,0,0,0,1),(49,11,'颜色',0,1,'红色,蓝色,绿色',0,1,0,0,0,0),(50,11,'尺寸',0,1,'38,39,40',0,0,0,0,0,0),(51,11,'风格',0,1,'夏季,秋季',0,0,0,0,0,0);
/*!40000 ALTER TABLE `pms_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_attribute_category`
--

DROP TABLE IF EXISTS `pms_product_attribute_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_attribute_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `attribute_count` int(11) DEFAULT '0' COMMENT '属性数量',
  `param_count` int(11) DEFAULT '0' COMMENT '参数数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='产品属性分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_attribute_category`
--

LOCK TABLES `pms_product_attribute_category` WRITE;
/*!40000 ALTER TABLE `pms_product_attribute_category` DISABLE KEYS */;
INSERT INTO `pms_product_attribute_category` VALUES (1,'服装-T恤',6,5),(2,'服装-裤装',2,4),(3,'手机数码-手机通讯',2,4),(4,'配件',0,0),(5,'居家',0,0),(6,'洗护',0,0),(10,'测试分类',0,0),(11,'服装-鞋帽',3,0);
/*!40000 ALTER TABLE `pms_product_attribute_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_attribute_value`
--

DROP TABLE IF EXISTS `pms_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_attribute_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_attribute_id` bigint(20) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL COMMENT '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8 COMMENT='存储产品参数信息的表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_attribute_value`
--

LOCK TABLES `pms_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `pms_product_attribute_value` DISABLE KEYS */;
INSERT INTO `pms_product_attribute_value` VALUES (1,9,1,'X'),(2,10,1,'X'),(3,11,1,'X'),(4,12,1,'X'),(5,13,1,'X'),(6,14,1,'X'),(7,18,1,'X'),(8,7,1,'X'),(9,7,1,'XL'),(10,7,1,'XXL'),(11,22,7,'x,xx'),(12,22,24,'no110'),(13,22,25,'春季'),(14,22,37,'青年'),(15,22,38,'2018年春'),(16,22,39,'长袖'),(124,23,7,'米白色,浅黄色'),(125,23,24,'no1098'),(126,23,25,'春季'),(127,23,37,'青年'),(128,23,38,'2018年春'),(129,23,39,'长袖'),(130,1,13,NULL),(131,1,14,NULL),(132,1,15,NULL),(133,1,16,NULL),(134,1,17,NULL),(135,1,18,NULL),(136,1,19,NULL),(137,1,20,NULL),(138,1,21,NULL),(139,2,13,NULL),(140,2,14,NULL),(141,2,15,NULL),(142,2,16,NULL),(143,2,17,NULL),(144,2,18,NULL),(145,2,19,NULL),(146,2,20,NULL),(147,2,21,NULL),(183,31,24,NULL),(184,31,25,'夏季'),(185,31,37,'青年'),(186,31,38,'2018年夏'),(187,31,39,'短袖'),(198,30,24,NULL),(199,30,25,'夏季'),(200,30,37,'青年'),(201,30,38,'2018年夏'),(202,30,39,'短袖'),(213,27,43,'黑色,蓝色'),(214,27,45,'5.8'),(215,27,46,'4G'),(216,27,47,'Android'),(217,27,48,'3000ml'),(218,28,43,'金色,银色'),(219,28,45,'5.0'),(220,28,46,'4G'),(221,28,47,'Android'),(222,28,48,'2800ml'),(223,29,43,'金色,银色'),(224,29,45,'4.7'),(225,29,46,'4G'),(226,29,47,'IOS'),(227,29,48,'1960ml'),(228,26,43,'金色,银色'),(229,26,45,'5.0'),(230,26,46,'4G'),(231,26,47,'Android'),(232,26,48,'3000'),(233,39,24,'21'),(234,39,25,'春季'),(235,39,37,'儿童'),(236,39,38,'2018年春'),(237,39,39,'中袖'),(238,40,24,'21'),(239,40,25,'春季'),(240,40,37,'儿童'),(241,40,38,'2018年春'),(242,40,39,'中袖'),(253,41,24,'21'),(254,41,25,'春季'),(255,41,37,'儿童'),(256,41,38,'2018年春'),(257,41,39,'中袖');
/*!40000 ALTER TABLE `pms_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_category`
--

DROP TABLE IF EXISTS `pms_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上机分类的编号：0表示一级分类',
  `name` varchar(64) DEFAULT NULL,
  `level` int(1) DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
  `product_count` int(11) DEFAULT NULL,
  `product_unit` varchar(64) DEFAULT NULL,
  `nav_status` int(1) DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) DEFAULT NULL,
  `description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_category`
--

LOCK TABLES `pms_product_category` WRITE;
/*!40000 ALTER TABLE `pms_product_category` DISABLE KEYS */;
INSERT INTO `pms_product_category` VALUES (1,0,'服装',0,100,'件',1,1,1,'','服装','服装分类'),(2,0,'手机数码',0,100,'件',1,1,1,NULL,'手机数码','手机数码'),(3,0,'家用电器',0,100,'件',1,1,1,NULL,'家用电器','家用电器'),(4,0,'家具家装',0,100,'件',1,1,1,NULL,'家具家装','家具家装'),(5,0,'汽车用品',0,100,'件',1,1,1,NULL,'汽车用品','汽车用品'),(7,1,'外套',1,100,'件',1,1,0,'','外套','外套'),(8,1,'T恤',1,100,'件',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','T恤','T恤'),(9,1,'休闲裤',1,100,'件',1,1,0,NULL,'休闲裤','休闲裤'),(10,1,'牛仔裤',1,100,'件',1,1,0,NULL,'牛仔裤','牛仔裤'),(11,1,'衬衫',1,100,'件',1,1,0,NULL,'衬衫','衬衫分类'),(13,12,'家电子分类1',1,1,'string',0,1,0,'string','string','string'),(14,12,'家电子分类2',1,1,'string',0,1,0,'string','string','string'),(19,2,'手机通讯',1,0,'件',0,0,0,'','手机通讯','手机通讯'),(29,1,'男鞋',1,0,'',0,0,0,'','',''),(30,2,'手机配件',1,0,'',0,0,0,'','手机配件','手机配件'),(31,2,'摄影摄像',1,0,'',0,0,0,'','',''),(32,2,'影音娱乐',1,0,'',0,0,0,'','',''),(33,2,'数码配件',1,0,'',0,0,0,'','',''),(34,2,'智能设备',1,0,'',0,0,0,'','',''),(35,3,'电视',1,0,'',0,0,0,'','',''),(36,3,'空调',1,0,'',0,0,0,'','',''),(37,3,'洗衣机',1,0,'',0,0,0,'','',''),(38,3,'冰箱',1,0,'',0,0,0,'','',''),(39,3,'厨卫大电',1,0,'',0,0,0,'','',''),(40,3,'厨房小电',1,0,'',0,0,0,'','',''),(41,3,'生活电器',1,0,'',0,0,0,'','',''),(42,3,'个护健康',1,0,'',0,0,0,'','',''),(43,4,'厨房卫浴',1,0,'',0,0,0,'','',''),(44,4,'灯饰照明',1,0,'',0,0,0,'','',''),(45,4,'五金工具',1,0,'',0,0,0,'','',''),(46,4,'卧室家具',1,0,'',0,0,0,'','',''),(47,4,'客厅家具',1,0,'',0,0,0,'','',''),(48,5,'全新整车',1,0,'',0,0,0,'','',''),(49,5,'车载电器',1,0,'',0,0,0,'','',''),(50,5,'维修保养',1,0,'',0,0,0,'','',''),(51,5,'汽车装饰',1,0,'',0,0,0,'','','');
/*!40000 ALTER TABLE `pms_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_category_attribute_relation`
--

DROP TABLE IF EXISTS `pms_product_category_attribute_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_category_attribute_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_attribute_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_category_attribute_relation`
--

LOCK TABLES `pms_product_category_attribute_relation` WRITE;
/*!40000 ALTER TABLE `pms_product_category_attribute_relation` DISABLE KEYS */;
INSERT INTO `pms_product_category_attribute_relation` VALUES (1,24,24),(5,26,24),(7,28,24),(9,25,24),(10,25,25),(12,NULL,33),(13,NULL,33),(14,NULL,33),(15,NULL,33),(22,1,24),(23,1,25),(24,1,37);
/*!40000 ALTER TABLE `pms_product_category_attribute_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_full_reduction`
--

DROP TABLE IF EXISTS `pms_product_full_reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_full_reduction` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `full_price` decimal(10,2) DEFAULT NULL,
  `reduce_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='产品满减表(只针对同商品)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_full_reduction`
--

LOCK TABLES `pms_product_full_reduction` WRITE;
/*!40000 ALTER TABLE `pms_product_full_reduction` DISABLE KEYS */;
INSERT INTO `pms_product_full_reduction` VALUES (1,7,100.00,20.00),(2,8,100.00,20.00),(3,9,100.00,20.00),(4,10,100.00,20.00),(5,11,100.00,20.00),(6,12,100.00,20.00),(7,13,100.00,20.00),(8,14,100.00,20.00),(9,18,100.00,20.00),(10,7,200.00,50.00),(11,7,300.00,100.00),(14,22,0.00,0.00),(16,24,0.00,0.00),(34,23,0.00,0.00),(44,31,0.00,0.00),(46,32,0.00,0.00),(48,33,0.00,0.00),(55,34,0.00,0.00),(56,30,0.00,0.00),(59,27,0.00,0.00),(60,28,500.00,50.00),(61,28,1000.00,120.00),(62,29,0.00,0.00),(63,26,0.00,0.00),(78,36,0.00,0.00),(79,35,0.00,0.00),(80,39,0.00,0.00),(81,40,0.00,0.00),(84,41,0.00,0.00);
/*!40000 ALTER TABLE `pms_product_full_reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_ladder`
--

DROP TABLE IF EXISTS `pms_product_ladder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_ladder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '满足的商品数量',
  `discount` decimal(10,2) DEFAULT NULL COMMENT '折扣',
  `price` decimal(10,2) DEFAULT NULL COMMENT '折后价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='产品阶梯价格表(只针对同商品)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_ladder`
--

LOCK TABLES `pms_product_ladder` WRITE;
/*!40000 ALTER TABLE `pms_product_ladder` DISABLE KEYS */;
INSERT INTO `pms_product_ladder` VALUES (1,7,3,0.70,0.00),(2,8,3,0.70,0.00),(3,9,3,0.70,0.00),(4,10,3,0.70,0.00),(5,11,3,0.70,0.00),(6,12,3,0.70,0.00),(7,13,3,0.70,0.00),(8,14,3,0.70,0.00),(12,18,3,0.70,0.00),(14,7,4,0.60,0.00),(15,7,5,0.50,0.00),(18,22,0,0.00,0.00),(20,24,0,0.00,0.00),(38,23,0,0.00,0.00),(48,31,0,0.00,0.00),(50,32,0,0.00,0.00),(52,33,0,0.00,0.00),(59,34,0,0.00,0.00),(60,30,0,0.00,0.00),(64,27,2,0.80,0.00),(65,27,3,0.75,0.00),(66,28,0,0.00,0.00),(67,29,0,0.00,0.00),(68,26,0,0.00,0.00),(83,36,0,0.00,0.00),(84,35,0,0.00,0.00),(85,39,0,0.00,0.00),(86,40,0,0.00,0.00),(89,41,0,0.00,0.00);
/*!40000 ALTER TABLE `pms_product_ladder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_operate_log`
--

DROP TABLE IF EXISTS `pms_product_operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_operate_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL,
  `sale_price_old` decimal(10,2) DEFAULT NULL,
  `sale_price_new` decimal(10,2) DEFAULT NULL,
  `gift_point_old` int(11) DEFAULT NULL COMMENT '赠送的积分',
  `gift_point_new` int(11) DEFAULT NULL,
  `use_point_limit_old` int(11) DEFAULT NULL,
  `use_point_limit_new` int(11) DEFAULT NULL,
  `operate_man` varchar(64) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_operate_log`
--

LOCK TABLES `pms_product_operate_log` WRITE;
/*!40000 ALTER TABLE `pms_product_operate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_product_operate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_vertify_record`
--

DROP TABLE IF EXISTS `pms_product_vertify_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_vertify_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `vertify_man` varchar(64) DEFAULT NULL COMMENT '审核人',
  `status` int(1) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL COMMENT '反馈详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品审核记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_vertify_record`
--

LOCK TABLES `pms_product_vertify_record` WRITE;
/*!40000 ALTER TABLE `pms_product_vertify_record` DISABLE KEYS */;
INSERT INTO `pms_product_vertify_record` VALUES (1,1,'2018-04-27 16:36:41','test',1,'验证通过'),(2,2,'2018-04-27 16:36:41','test',1,'验证通过');
/*!40000 ALTER TABLE `pms_product_vertify_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_sku_stock`
--

DROP TABLE IF EXISTS `pms_sku_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_sku_stock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `sku_code` varchar(64) NOT NULL COMMENT 'sku编码',
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `low_stock` int(11) DEFAULT NULL COMMENT '预警库存',
  `pic` varchar(255) DEFAULT NULL COMMENT '展示图片',
  `sale` int(11) DEFAULT NULL COMMENT '销量',
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '单品促销价格',
  `lock_stock` int(11) DEFAULT '0' COMMENT '锁定库存',
  `sp_data` varchar(500) DEFAULT NULL COMMENT '商品销售属性，json格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COMMENT='sku的库存';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_sku_stock`
--

LOCK TABLES `pms_sku_stock` WRITE;
/*!40000 ALTER TABLE `pms_sku_stock` DISABLE KEYS */;
INSERT INTO `pms_sku_stock` VALUES (98,27,'201808270027001',2699.00,97,NULL,NULL,NULL,NULL,-24,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(99,27,'201808270027002',2999.00,100,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"64G\"}]'),(100,27,'201808270027003',2699.00,100,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(101,27,'201808270027004',2999.00,100,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"64G\"}]'),(102,28,'201808270028001',649.00,99,NULL,NULL,NULL,NULL,-8,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(103,28,'201808270028002',699.00,99,NULL,NULL,NULL,NULL,-8,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(104,28,'201808270028003',649.00,100,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(105,28,'201808270028004',699.00,100,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(106,29,'201808270029001',5499.00,99,NULL,NULL,NULL,NULL,-8,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(107,29,'201808270029002',6299.00,100,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"64G\"}]'),(108,29,'201808270029003',5499.00,100,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(109,29,'201808270029004',6299.00,100,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]'),(110,26,'201806070026001',3788.00,499,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(111,26,'201806070026002',3999.00,500,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(112,26,'201806070026003',3788.00,500,10,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'),(113,26,'201806070026004',3999.00,501,NULL,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'),(163,36,'202002210036001',100.00,100,25,NULL,NULL,NULL,9,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(164,36,'202002210036002',120.00,98,20,NULL,NULL,NULL,6,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(165,36,'202002210036003',100.00,100,20,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(166,36,'202002210036004',100.00,100,20,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(167,36,'202002210036005',100.00,100,20,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(168,36,'202002210036006',100.00,100,20,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(169,36,'202002210036007',100.00,100,20,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(170,36,'202002210036008',100.00,100,20,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(171,35,'202002250035001',200.00,100,50,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(172,35,'202002250035002',240.00,100,50,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(173,35,'202002250035003',200.00,100,50,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(174,35,'202002250035004',200.00,100,50,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(175,35,'202002250035005',200.00,100,50,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(176,35,'202002250035006',200.00,100,50,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]'),(177,35,'202002250035007',200.00,100,50,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]'),(178,35,'202002250035008',200.00,100,50,NULL,NULL,NULL,0,'[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
/*!40000 ALTER TABLE `pms_sku_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'超级管理员','2022-05-11 14:16:02',NULL),(2,'管理员',NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_to_operation`
--

DROP TABLE IF EXISTS `role_to_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_to_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_to_operation`
--

LOCK TABLES `role_to_operation` WRITE;
/*!40000 ALTER TABLE `role_to_operation` DISABLE KEYS */;
INSERT INTO `role_to_operation` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4);
/*!40000 ALTER TABLE `role_to_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_to_router`
--

DROP TABLE IF EXISTS `role_to_router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_to_router` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `router_id` int(11) NOT NULL COMMENT '当前id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_to_router`
--

LOCK TABLES `role_to_router` WRITE;
/*!40000 ALTER TABLE `role_to_router` DISABLE KEYS */;
INSERT INTO `role_to_router` VALUES (1,101003000),(2,101003000),(1,101004000),(2,101004000),(1,101005000),(2,101005000),(1,101006000),(2,101006000),(1,101008000),(2,101008000),(1,101009000),(2,101009000),(1,101010000),(2,101010000),(1,101011000),(2,101011000),(1,101012000),(2,101012000),(1,101013000),(2,101013000),(1,101014000),(2,101014000),(1,101015000),(2,101015000),(1,101016000),(2,101016000),(1,101017000),(2,101017000),(1,101018000),(2,101018000),(1,101019000),(2,101019000),(1,101020000),(2,101020000),(1,102001000),(2,102001000),(1,102002000),(2,102002000),(1,102003000),(2,102003000),(1,102004000),(2,102004000),(1,102005000),(2,102005000),(1,102006000),(2,102006000),(1,102007000),(2,102007000),(1,102999000),(2,102999000),(1,103001000),(2,103001000),(1,103002000),(2,103002000),(1,103002001),(2,103002001),(1,103002002),(2,103002002),(1,103002003),(2,103002003),(1,103002004),(2,103002004),(1,103002005),(2,103002005),(1,103002006),(2,103002006),(1,103003000),(2,103003000),(1,103003001),(2,103003001),(1,103003002),(2,103003002),(1,103003003),(2,103003003),(1,103003004),(2,103003004),(1,103003005),(2,103003005),(1,103003006),(2,103003006),(1,103003007),(2,103003007),(1,103003008),(2,103003008),(1,103003009),(2,103003009),(1,103003010),(2,103003010),(1,103003011),(2,103003011),(1,103003012),(2,103003012),(1,103003013),(2,103003013),(1,103003014),(2,103003014),(1,103004000),(2,103004000),(1,103004002),(2,103004002),(1,103004003),(2,103004003),(1,103004004),(2,103004004),(1,103004005),(2,103004005),(1,103004006),(2,103004006),(1,103004007),(2,103004007),(1,103004008),(2,103004008),(1,103004009),(2,103004009),(1,103004010),(2,103004010),(1,103004011),(2,103004011),(1,103004012),(2,103004012),(1,103004013),(2,103004013),(1,103004014),(2,103004014),(1,103004015),(2,103004015),(1,103004016),(2,103004016),(1,103004017),(2,103004017),(1,103004018),(2,103004018),(1,103004019),(2,103004019),(1,103004020),(2,103004020),(1,103004021),(2,103004021),(1,103004022),(2,103004022),(1,103005000),(2,103005000),(1,103005002),(2,103005002),(1,103005003),(2,103005003),(1,103005004),(2,103005004),(1,103005005),(2,103005005),(1,103005006),(2,103005006),(1,103005007),(2,103005007),(1,103005010),(2,103005010),(1,103005011),(2,103005011),(1,103005012),(2,103005012),(1,103005017),(2,103005017),(1,103005019),(2,103005019),(1,103006000),(2,103006000),(1,103006001),(2,103006001),(1,103006002),(2,103006002),(1,103006003),(2,103006003),(1,103006004),(2,103006004),(1,103006005),(2,103006005),(1,103006006),(2,103006006),(1,103006007),(2,103006007),(1,103007000),(2,103007000),(1,103008000),(2,103008000),(1,103009000),(2,103009000),(1,103009001),(2,103009001),(1,103010000),(2,103010000),(1,103999000),(2,103999000),(1,201004000),(2,201004000),(1,202001000),(2,202001000),(1,202002001),(2,202002001),(1,202002002),(2,202002002),(1,202002003),(2,202002003),(1,202002004),(2,202002004),(1,202002005),(2,202002005),(1,202002006),(2,202002006),(1,202003001),(2,202003001),(1,202003002),(2,202003002),(1,202003003),(2,202003003),(1,202003004),(2,202003004),(1,202003005),(2,202003005),(1,202004000),(2,202004000),(1,202004001),(2,202004001),(1,202004002),(2,202004002),(1,202004003),(2,202004003),(1,202004004),(2,202004004),(1,202004005),(2,202004005),(1,202005000),(2,202005000),(1,202005001),(2,202005001),(1,202005002),(2,202005002),(1,202005003),(2,202005003),(1,202005004),(2,202005004),(1,202005005),(2,202005005),(1,202005006),(2,202005006),(1,202005007),(2,202005007),(1,202005008),(2,202005008),(1,202005009),(2,202005009),(1,202005010),(2,202005010),(1,202006000),(2,202006000),(1,202006001),(2,202006001),(1,202006002),(2,202006002),(1,202006003),(2,202006003),(1,202006004),(2,202006004),(1,202006005),(2,202006005),(1,202006006),(2,202006006),(1,202999000),(2,202999000);
/*!40000 ALTER TABLE `role_to_router` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `router`
--

DROP TABLE IF EXISTS `router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `router` (
  `id` int(11) NOT NULL COMMENT '当前id',
  `parentId` int(11) DEFAULT '0' COMMENT '父级id',
  `path` varchar(180) COLLATE utf8_bin DEFAULT NULL COMMENT '路由path',
  `metaTitle` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '路由标题',
  `importPath` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '导入路径',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `router`
--

LOCK TABLES `router` WRITE;
/*!40000 ALTER TABLE `router` DISABLE KEYS */;
INSERT INTO `router` VALUES (101003000,0,'/noPermission','无权限访问该页','/401',NULL),(101004000,0,'/home','','/home/index',NULL),(101005000,0,'/adaption','pc自适应','/adaption/index',NULL),(101006000,0,'/wave','水波','/home/managementCenter/effect/wave',NULL),(101008000,0,'/line','线路检测','/login/line',NULL),(101009000,0,'/register','注册','/register/index',NULL),(101010000,0,'/game','游戏页','/game/index',NULL),(101011000,0,'/neutralgear','加载中','/neutralGear/index',NULL),(101012000,0,'/download','下载中心','/download/index',NULL),(101013000,0,'/attachmentUpload','发票识别','/home/managementCenter/effect/attachmentUpload',NULL),(101014000,0,'/openTab','浏览器新开窗口','/home/managementCenter/effect/openTab',NULL),(101015000,0,'/priceManage','价格地图','/priceManage/index',NULL),(101016000,0,'/vueForm','活动素材','/vueForm/index',NULL),(101017000,0,'/vueForm2','活动素材','/vueForm/index2',NULL),(101018000,0,'/formDesign','Schema生成器','/vueForm/formSchemaDesign/Editor',NULL),(101019000,0,'/activityEditor','活动编辑器','/vueForm/activityEditor/Editor',NULL),(101020000,0,'/printEditor','打印编辑器','/printEditor/index',NULL),(102001000,101004000,'homeIndex','首页','/home/homeIndex/index',NULL),(102002000,101004000,'lottery','福气','/home/lottery/index',NULL),(102003000,101004000,'realPerson','真人','/home/realPerson/index',NULL),(102004000,101004000,'sports','体育','/home/sports/index',NULL),(102005000,101004000,'videoGame','电玩','/home/videoGame/index',NULL),(102006000,101004000,'agentSystem','代理','/home/agentSystem/index',NULL),(102007000,101004000,'managementCenter','','/home/managementCenter/index',NULL),(102999000,101004000,'/','默认重定向','/home/homeIndex',NULL),(103001000,102007000,'crux','管理中心','/home/managementCenter/crux',NULL),(103002000,102007000,'tagStyle/css','样式','/home/managementCenter/tagStyle/css',NULL),(103002001,102007000,'tagStyle/tags','标签','/home/managementCenter/tagStyle/tags',NULL),(103002002,102007000,'tagStyle/flex','flex弹性布局','/home/managementCenter/tagStyle/flex',NULL),(103002003,102007000,'tagStyle/cssDemo','样式例子','/home/managementCenter/tagStyle/cssDemo',NULL),(103002004,102007000,'tagStyle/table','完整table','/home/managementCenter/tagStyle/table',NULL),(103002005,102007000,'tagStyle/cssDemo2','样式例子2','/home/managementCenter/tagStyle/cssDemo2',NULL),(103002006,102007000,'tagStyle/anchorPoint','锚点','/home/managementCenter/tagStyle/anchorPoint',NULL),(103003000,102007000,'javaScript/isString','字符串','/home/managementCenter/javaScript/isString',NULL),(103003001,102007000,'javaScript/isObject','对象','/home/managementCenter/javaScript/isObject',NULL),(103003002,102007000,'javaScript/isArray','数组','/home/managementCenter/javaScript/isArray',NULL),(103003003,102007000,'javaScript/learn1','必学1','/home/managementCenter/javaScript/learn1',NULL),(103003004,102007000,'javaScript/learn2','必学2','/home/managementCenter/javaScript/learn2',NULL),(103003005,102007000,'javaScript/learn3','必学3','/home/managementCenter/javaScript/learn3',NULL),(103003006,102007000,'javaScript/asynchronous','异步顺序','/home/managementCenter/javaScript/asynchronous',NULL),(103003007,102007000,'javaScript/es6','es6','/home/managementCenter/javaScript/es6',NULL),(103003008,102007000,'javaScript/jsDemo','js例子','/home/managementCenter/javaScript/jsDemo',NULL),(103003009,102007000,'javaScript/research','赋值-浅拷贝-深拷贝','/home/managementCenter/javaScript/research',NULL),(103003010,102007000,'javaScript/url_base64_blob','url_base64_blob','/home/managementCenter/javaScript/url_base64_blob',NULL),(103003011,102007000,'javaScript/isDate','时间日期','/home/managementCenter/javaScript/isDate',NULL),(103003012,102007000,'javaScript/isClass','类','/home/managementCenter/javaScript/isClass',NULL),(103003013,102007000,'javaScript/incident','事件','/home/managementCenter/javaScript/incident',NULL),(103003014,102007000,'javaScript/means','函数','/home/managementCenter/javaScript/means',NULL),(103004000,102007000,'knowledge/v_tag','vue指令','/home/managementCenter/knowledge/v_tag',NULL),(103004002,102007000,'knowledge/modifier','vue修饰符','/home/managementCenter/knowledge/modifier',NULL),(103004003,102007000,'knowledge/lifeCycle','生命周期','/home/managementCenter/knowledge/lifeCycle',NULL),(103004004,102007000,'knowledge/vuex','vuex','/home/managementCenter/knowledge/vuex',NULL),(103004005,102007000,'knowledge/router','路由传参','/home/managementCenter/knowledge/router',NULL),(103004006,102007000,'knowledge/class','动态样式','/home/managementCenter/knowledge/class',NULL),(103004007,102007000,'knowledge/exportImport/index','导出与导入','/home/managementCenter/knowledge/exportImport/index',NULL),(103004008,102007000,'knowledge/parent/index','子父通讯','/home/managementCenter/knowledge/parent/index',NULL),(103004009,102007000,'knowledge/public','全局方法','/home/managementCenter/knowledge/public',NULL),(103004010,102007000,'knowledge/watch','watch监听','/home/managementCenter/knowledge/watch',NULL),(103004011,102007000,'knowledge/computed','computed','/home/managementCenter/knowledge/computed',NULL),(103004012,102007000,'knowledge/filters','filters过滤器','/home/managementCenter/knowledge/filters',NULL),(103004013,102007000,'knowledge/transition','transition动画','/home/managementCenter/knowledge/transition',NULL),(103004014,102007000,'knowledge/refs','refs操作Dom','/home/managementCenter/knowledge/refs',NULL),(103004015,102007000,'knowledge/mock','mock模拟接口','/home/managementCenter/knowledge/mock',NULL),(103004016,102007000,'knowledge/cache','浏览器缓存','/home/managementCenter/knowledge/cache',NULL),(103004017,102007000,'knowledge/axios','axios配置','/home/managementCenter/knowledge/axios',NULL),(103004018,102007000,'knowledge/relativePath','图片相对路径','/home/managementCenter/knowledge/relativePath',NULL),(103004019,102007000,'knowledge/vueMixin','mixins混合','/home/managementCenter/knowledge/vueMixin',NULL),(103004020,102007000,'knowledge/vueExtend/index','render动态渲染','/home/managementCenter/knowledge/vueExtend/index',NULL),(103004021,102007000,'knowledge/isLess','less预处理样式','/home/managementCenter/knowledge/isLess',NULL),(103004022,102007000,'knowledge/isSassScss','scss预处理样式','/home/managementCenter/knowledge/isSassScss',NULL),(103005000,102007000,'effect/download','下载','/home/managementCenter/effect/download',NULL),(103005002,102007000,'effect/field','字段变量','/home/managementCenter/effect/field',NULL),(103005003,102007000,'effect/backToTop','返回顶部','/home/managementCenter/effect/backToTop',NULL),(103005004,102007000,'effect/pagination','分页封装','/home/managementCenter/effect/pagination',NULL),(103005005,102007000,'effect/upload/index','上传图片','/home/managementCenter/effect/upload/index',NULL),(103005006,102007000,'effect/lazy','懒加载','/home/managementCenter/effect/lazy',NULL),(103005007,102007000,'effect/video','视频','/home/managementCenter/effect/video',NULL),(103005010,102007000,'effect/listener','浏览器监听','/home/managementCenter/effect/listener',NULL),(103005011,102007000,'effect/websocket','websocket','/home/managementCenter/effect/websocket',NULL),(103005012,102007000,'effect/windowTab','开新窗口','/home/managementCenter/effect/windowTab',NULL),(103005017,102007000,'effect/isAudio','音频','/home/managementCenter/effect/isAudio',NULL),(103005019,102007000,'effect/inputeCheck','表单校验','/home/managementCenter/effect/inputeCheck',NULL),(103006000,102007000,'plugin/copy','copy复制','/home/managementCenter/plugin/copy',NULL),(103006001,102007000,'plugin/vueqr','二维码','/home/managementCenter/plugin/vueqr',NULL),(103006002,102007000,'plugin/editor','富文本编辑器','/home/managementCenter/plugin/editor',NULL),(103006003,102007000,'plugin/guide/index','分步引导','/home/managementCenter/plugin/guide/index',NULL),(103006004,102007000,'plugin/screenfull','全屏','/home/managementCenter/plugin/screenfull',NULL),(103006005,102007000,'plugin/previewPictures','图片预览','/home/managementCenter/plugin/previewPictures',NULL),(103006006,102007000,'plugin/svgIcons','svg','/home/managementCenter/plugin/svgIcons',NULL),(103006007,102007000,'plugin/awesomeIcons','font-awesome','/home/managementCenter/plugin/awesomeIcons',NULL),(103007000,102007000,'reportForm/barLine','echart图表','/home/managementCenter/reportForm/barLine',NULL),(103008000,102007000,'animation/suspension','悬浮图片','/home/managementCenter/animation/suspension',NULL),(103009000,102007000,'expand/canvas','canvas','/home/managementCenter/expand/canvas',NULL),(103009001,102007000,'expand/base64','base64解密','/home/managementCenter/expand/base64',NULL),(103010000,102007000,'talk/talk1','面试要点1','/home/managementCenter/talk/talk1',NULL),(103999000,102007000,'/','默认重定向','/home/managementCenter/crux',NULL),(201004000,0,'/home',NULL,'/home/index',NULL),(202001000,201004000,'world/world','首页','/home/world/world',NULL),(202002001,201004000,'season/tableEditor/crmTable','综合表格','/home/season/tableEditor/crmTable',NULL),(202002002,201004000,'season/tableEditor/explainTable','table说明','/home/season/tableEditor/explainTable',NULL),(202002003,201004000,'season/multilingual/index','多语言翻译','/home/season/multilingual/index',NULL),(202002004,201004000,'season/activityCenter/activityCenter','活动管理','/home/season/activityCenter/activityCenter',NULL),(202002005,201004000,'season/popover-selection-page/index','勾选分页','/home/season/popover-selection-page/index',NULL),(202002006,201004000,'season/example/index','商品demo','/home/season/example/index',NULL),(202003001,201004000,'shopUnit/product/index','商品列表','/home/shopUnit/product/index',NULL),(202003002,201004000,'shopUnit/productCate/index','商品分类','/home/shopUnit/productCate/index',NULL),(202003003,201004000,'shopUnit/productAttr/index','商品类型','/home/shopUnit/productAttr/index',NULL),(202003004,201004000,'shopUnit/productAttr/productAttrList/index','商品属性与参数','/home/shopUnit/productAttr/productAttrList/index',NULL),(202003005,201004000,'shopUnit/brand/index','品牌管理','/home/shopUnit/brand/index',NULL),(202004000,201004000,'orderUnit/orderList/index','订单列表','/home/orderUnit/orderList/index',NULL),(202004001,201004000,'orderUnit/orderList/orderDetail/index','订单详情','/home/orderUnit/orderList/orderDetail/index',NULL),(202004002,201004000,'orderUnit/orderSetting/index','订单设置','/home/orderUnit/orderSetting/index',NULL),(202004003,201004000,'orderUnit/returnApply/index','退货申请','/home/orderUnit/returnApply/index',NULL),(202004004,201004000,'orderUnit/returnApply/applyDetail','退货详情','/home/orderUnit/returnApply/applyDetail',NULL),(202004005,201004000,'orderUnit/returnReason/index','退货原因','/home/orderUnit/returnReason/index',NULL),(202005000,201004000,'marketingUnit/flash/index','限时购列表','/home/marketingUnit/flash/index',NULL),(202005001,201004000,'marketingUnit/flash/flashSession','秒杀时间段','/home/marketingUnit/flash/flashSession',NULL),(202005002,201004000,'marketingUnit/flash/flashProductRelation/index','限时购和商品','/home/marketingUnit/flash/flashProductRelation/index',NULL),(202005003,201004000,'marketingUnit/flash/flashSession/index','秒杀时间段','/home/marketingUnit/flash/flashSession/index',NULL),(202005004,201004000,'marketingUnit/coupon/index','优惠券列表','/home/marketingUnit/coupon/index',NULL),(202005005,201004000,'marketingUnit/coupon/couponHistory','领取详情','/home/marketingUnit/coupon/couponHistory',NULL),(202005006,201004000,'marketingUnit/brand/index','品牌推荐','/home/marketingUnit/brand/index',NULL),(202005007,201004000,'marketingUnit/fresh/index','新品推荐','/home/marketingUnit/fresh/index',NULL),(202005008,201004000,'marketingUnit/hot/index','人气推荐','/home/marketingUnit/hot/index',NULL),(202005009,201004000,'marketingUnit/subject/index','专题推荐','/home/marketingUnit/subject/index',NULL),(202005010,201004000,'marketingUnit/advertise/index','广告列表','/home/marketingUnit/advertise/index',NULL),(202006000,201004000,'jurisdiction/customer/index','用户列表','/home/jurisdiction/customer/index',NULL),(202006001,201004000,'jurisdiction/role/index','角色列表','/home/jurisdiction/role/index',NULL),(202006002,201004000,'jurisdiction/menu/index','菜单列表','/home/jurisdiction/menu/index',NULL),(202006003,201004000,'jurisdiction/role/assignMenu','分配菜单','/home/jurisdiction/role/assignMenu',NULL),(202006004,201004000,'jurisdiction/role/allocateResources','分配资源','/home/jurisdiction/role/allocateResources',NULL),(202006005,201004000,'jurisdiction/resource/index','资源列表','/home/jurisdiction/resource/index',NULL),(202006006,201004000,'jurisdiction/resource/resourceCategory/index','资源分类','/home/jurisdiction/resource/resourceCategory/index',NULL),(202999000,201004000,'/','默认重定向','/home/world/world',NULL);
/*!40000 ALTER TABLE `router` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_coupon`
--

DROP TABLE IF EXISTS `sms_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL COMMENT '优惠券类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
  `name` varchar(100) DEFAULT NULL,
  `platform` int(1) DEFAULT NULL COMMENT '使用平台：0->全部；1->移动；2->PC',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `per_limit` int(11) DEFAULT NULL COMMENT '每人限领张数',
  `min_point` decimal(10,2) DEFAULT NULL COMMENT '使用门槛；0表示无门槛',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `use_type` int(1) DEFAULT NULL COMMENT '使用类型：0->全场通用；1->指定分类；2->指定商品',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `publish_count` int(11) DEFAULT NULL COMMENT '发行数量',
  `use_count` int(11) DEFAULT NULL COMMENT '已使用数量',
  `receive_count` int(11) DEFAULT NULL COMMENT '领取数量',
  `enable_time` datetime DEFAULT NULL COMMENT '可以领取的日期',
  `code` varchar(64) DEFAULT NULL COMMENT '优惠码',
  `member_level` int(1) DEFAULT NULL COMMENT '可领取的会员类型：0->无限时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='优惠券表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_coupon`
--

LOCK TABLES `sms_coupon` WRITE;
/*!40000 ALTER TABLE `sms_coupon` DISABLE KEYS */;
INSERT INTO `sms_coupon` VALUES (2,0,'全品类通用券',0,92,10.00,1,100.00,'2018-08-27 16:40:47','2018-11-23 16:40:47',0,'满100减10',100,0,8,'2018-08-27 16:40:47',NULL,NULL),(3,0,'小米手机专用券',0,92,50.00,1,1000.00,'2018-08-27 16:40:47','2018-11-16 16:40:47',2,'小米手机专用优惠券',100,0,8,'2018-08-27 16:40:47',NULL,NULL),(4,0,'手机品类专用券',0,92,300.00,1,2000.00,'2018-08-27 16:40:47','2018-09-15 16:40:47',1,'手机分类专用优惠券',100,0,8,'2018-08-27 16:40:47',NULL,NULL),(7,0,'T恤分类专用优惠券',0,93,50.00,1,500.00,'2018-08-27 16:40:47','2018-08-15 16:40:47',1,'满500减50',100,0,7,'2018-08-27 16:40:47',NULL,NULL),(8,0,'新优惠券',0,100,100.00,1,1000.00,'2018-11-08 00:00:00','2018-11-27 00:00:00',0,'测试',100,0,1,NULL,NULL,NULL),(9,0,'全品类通用券',0,100,5.00,1,100.00,'2018-11-08 00:00:00','2018-11-10 00:00:00',0,NULL,100,0,1,NULL,NULL,NULL),(10,0,'全品类通用券',0,100,15.00,1,200.00,'2018-11-08 00:00:00','2018-11-10 00:00:00',0,NULL,100,0,1,NULL,NULL,NULL),(11,0,'全品类通用券',0,1000,50.00,1,1000.00,'2018-11-08 00:00:00','2018-11-10 00:00:00',0,NULL,1000,0,0,NULL,NULL,NULL),(12,0,'移动端全品类通用券',1,1,10.00,1,100.00,'2018-11-08 00:00:00','2018-11-10 00:00:00',0,NULL,100,0,0,NULL,NULL,NULL),(19,0,'手机分类专用',0,100,100.00,1,1000.00,'2018-11-09 00:00:00','2018-11-17 00:00:00',1,'手机分类专用',100,0,0,NULL,NULL,NULL),(20,0,'小米手机专用',0,100,200.00,1,1000.00,'2018-11-09 00:00:00','2018-11-24 00:00:00',2,'小米手机专用',100,0,0,NULL,NULL,NULL),(21,0,'xxx',0,100,10.00,1,100.00,'2018-11-09 00:00:00','2018-11-30 00:00:00',2,NULL,100,0,0,NULL,NULL,NULL),(22,0,'string',0,0,0.00,0,0.00,'2019-08-18 15:36:11','2019-08-18 15:36:11',0,'string',0,0,0,'2019-08-18 15:36:11','string',0),(23,0,'有效期测试',0,100,10.00,1,100.00,'2019-10-05 00:00:00','2019-10-09 00:00:00',0,NULL,100,0,0,NULL,NULL,NULL),(25,0,'二哈',0,10,5.00,2,40.00,'2022-07-06 00:00:00','2022-07-14 00:00:00',2,'erhaha',10,0,0,'2022-07-06 00:00:00',NULL,NULL),(26,0,'奶瓶',0,12,2.00,1,60.00,'2022-07-06 00:00:00','2022-07-30 00:00:00',1,'原因',12,0,0,'2022-07-13 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `sms_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_coupon_history`
--

DROP TABLE IF EXISTS `sms_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_coupon_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `coupon_code` varchar(64) DEFAULT NULL,
  `member_nickname` varchar(64) DEFAULT NULL COMMENT '领取人昵称',
  `get_type` int(1) DEFAULT NULL COMMENT '获取类型：0->后台赠送；1->主动获取',
  `create_time` datetime DEFAULT NULL,
  `use_status` int(1) DEFAULT NULL COMMENT '使用状态：0->未使用；1->已使用；2->已过期',
  `use_time` datetime DEFAULT NULL COMMENT '使用时间',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `order_sn` varchar(100) DEFAULT NULL COMMENT '订单号码',
  PRIMARY KEY (`id`),
  KEY `idx_member_id` (`member_id`) USING BTREE,
  KEY `idx_coupon_id` (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='优惠券使用、领取历史表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_coupon_history`
--

LOCK TABLES `sms_coupon_history` WRITE;
/*!40000 ALTER TABLE `sms_coupon_history` DISABLE KEYS */;
INSERT INTO `sms_coupon_history` VALUES (2,2,1,'4931048380330002','windir',1,'2018-08-29 14:04:12',1,'2018-11-12 14:38:47',12,'201809150101000001'),(3,3,1,'4931048380330003','windir',1,'2018-08-29 14:04:29',0,NULL,NULL,NULL),(4,4,1,'4931048380330004','windir',1,'2018-08-29 14:04:32',0,NULL,NULL,NULL),(11,7,1,'4931048380330001','windir',1,'2018-09-04 16:21:50',0,NULL,NULL,NULL),(12,2,4,'0340981248320004','zhensan',1,'2018-11-12 14:16:50',0,NULL,NULL,NULL),(13,3,4,'0342977234360004','zhensan',1,'2018-11-12 14:17:10',0,NULL,NULL,NULL),(14,4,4,'0343342928830004','zhensan',1,'2018-11-12 14:17:13',0,NULL,NULL,NULL),(15,2,5,'0351883832180005','lisi',1,'2018-11-12 14:18:39',0,NULL,NULL,NULL),(16,3,5,'0352201672680005','lisi',1,'2018-11-12 14:18:42',0,NULL,NULL,NULL),(17,4,5,'0352505810180005','lisi',1,'2018-11-12 14:18:45',0,NULL,NULL,NULL),(18,2,6,'0356114588380006','wangwu',1,'2018-11-12 14:19:21',0,NULL,NULL,NULL),(19,3,6,'0356382856920006','wangwu',1,'2018-11-12 14:19:24',0,NULL,NULL,NULL),(20,4,6,'0356656798470006','wangwu',1,'2018-11-12 14:19:27',0,NULL,NULL,NULL),(21,2,3,'0363644984620003','windy',1,'2018-11-12 14:20:36',0,NULL,NULL,NULL),(22,3,3,'0363932820300003','windy',1,'2018-11-12 14:20:39',0,NULL,NULL,NULL),(23,4,3,'0364238275840003','windy',1,'2018-11-12 14:20:42',0,NULL,NULL,NULL),(24,2,7,'0385034833070007','lion',1,'2018-11-12 14:24:10',0,NULL,NULL,NULL),(25,3,7,'0385350208650007','lion',1,'2018-11-12 14:24:13',0,NULL,NULL,NULL),(26,4,7,'0385632733900007','lion',1,'2018-11-12 14:24:16',0,NULL,NULL,NULL),(27,2,8,'0388779132990008','shari',1,'2018-11-12 14:24:48',0,NULL,NULL,NULL),(28,3,8,'0388943658810008','shari',1,'2018-11-12 14:24:49',0,NULL,NULL,NULL),(29,4,8,'0389069398320008','shari',1,'2018-11-12 14:24:51',0,NULL,NULL,NULL),(30,2,9,'0390753935250009','aewen',1,'2018-11-12 14:25:08',0,NULL,NULL,NULL),(31,3,9,'0390882954470009','aewen',1,'2018-11-12 14:25:09',0,NULL,NULL,NULL),(32,4,9,'0391025542810009','aewen',1,'2018-11-12 14:25:10',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sms_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_coupon_product_category_relation`
--

DROP TABLE IF EXISTS `sms_coupon_product_category_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_coupon_product_category_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_category_name` varchar(200) DEFAULT NULL COMMENT '产品分类名称',
  `parent_category_name` varchar(200) DEFAULT NULL COMMENT '父分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='优惠券和产品分类关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_coupon_product_category_relation`
--

LOCK TABLES `sms_coupon_product_category_relation` WRITE;
/*!40000 ALTER TABLE `sms_coupon_product_category_relation` DISABLE KEYS */;
INSERT INTO `sms_coupon_product_category_relation` VALUES (4,19,30,'手机配件','手机数码'),(5,26,7,'外套','服装');
/*!40000 ALTER TABLE `sms_coupon_product_category_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_coupon_product_relation`
--

DROP TABLE IF EXISTS `sms_coupon_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_coupon_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `product_sn` varchar(200) DEFAULT NULL COMMENT '商品编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='优惠券和产品的关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_coupon_product_relation`
--

LOCK TABLES `sms_coupon_product_relation` WRITE;
/*!40000 ALTER TABLE `sms_coupon_product_relation` DISABLE KEYS */;
INSERT INTO `sms_coupon_product_relation` VALUES (9,21,33,'小米（MI）小米电视4A ','4609652'),(11,24,27,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待','7437788'),(12,25,26,'华为 HUAWEI P20 ','6946605');
/*!40000 ALTER TABLE `sms_coupon_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_flash_promotion`
--

DROP TABLE IF EXISTS `sms_flash_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_flash_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `status` int(1) DEFAULT NULL COMMENT '上下线状态',
  `create_time` datetime DEFAULT NULL COMMENT '秒杀时间段名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='限时购表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_flash_promotion`
--

LOCK TABLES `sms_flash_promotion` WRITE;
/*!40000 ALTER TABLE `sms_flash_promotion` DISABLE KEYS */;
INSERT INTO `sms_flash_promotion` VALUES (2,'春季家电家具疯狂秒杀1','2018-11-12','2018-11-23',1,'2018-11-16 11:12:13'),(3,'手机特卖','2018-11-03','2018-11-10',1,'2018-11-16 11:11:31'),(4,'春季家电家具疯狂秒杀3','2018-11-24','2018-11-25',1,'2018-11-16 11:12:19'),(5,'春季家电家具疯狂秒杀4','2018-11-16','2018-11-16',1,'2018-11-16 11:12:24'),(6,'春季家电家具疯狂秒杀5','2018-11-16','2018-11-16',1,'2018-11-16 11:12:31'),(7,'春季家电家具疯狂秒杀6','2018-11-16','2018-11-16',1,'2018-11-16 11:12:35'),(8,'春季家电家具疯狂秒杀7','2018-11-16','2018-11-16',0,'2018-11-16 11:12:39'),(9,'春季家电家具疯狂秒杀8','2018-11-16','2018-11-16',0,'2018-11-16 11:12:42'),(13,'测试','2018-11-01','2018-11-30',0,'2018-11-19 10:34:24');
/*!40000 ALTER TABLE `sms_flash_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_flash_promotion_log`
--

DROP TABLE IF EXISTS `sms_flash_promotion_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_flash_promotion_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `member_phone` varchar(64) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `subscribe_time` datetime DEFAULT NULL COMMENT '会员订阅时间',
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='限时购通知记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_flash_promotion_log`
--

LOCK TABLES `sms_flash_promotion_log` WRITE;
/*!40000 ALTER TABLE `sms_flash_promotion_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_flash_promotion_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_flash_promotion_product_relation`
--

DROP TABLE IF EXISTS `sms_flash_promotion_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_flash_promotion_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flash_promotion_id` bigint(20) DEFAULT NULL,
  `flash_promotion_session_id` bigint(20) DEFAULT NULL COMMENT '编号',
  `product_id` bigint(20) DEFAULT NULL,
  `flash_promotion_price` decimal(10,2) DEFAULT NULL COMMENT '限时购价格',
  `flash_promotion_count` int(11) DEFAULT NULL COMMENT '限时购数量',
  `flash_promotion_limit` int(11) DEFAULT NULL COMMENT '每人限购数量',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='商品限时购与商品关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_flash_promotion_product_relation`
--

LOCK TABLES `sms_flash_promotion_product_relation` WRITE;
/*!40000 ALTER TABLE `sms_flash_promotion_product_relation` DISABLE KEYS */;
INSERT INTO `sms_flash_promotion_product_relation` VALUES (1,2,1,26,3000.00,10,1,0),(2,2,1,27,2000.00,10,1,20),(3,2,1,28,599.00,19,1,0),(4,2,1,29,4998.00,12,1,100),(9,2,2,26,2999.00,100,1,0),(10,2,2,27,NULL,NULL,NULL,NULL),(11,2,2,28,NULL,NULL,NULL,NULL),(12,2,2,29,NULL,NULL,NULL,NULL),(13,2,2,30,NULL,NULL,NULL,NULL),(14,2,3,31,NULL,NULL,NULL,NULL),(15,2,3,32,NULL,NULL,NULL,NULL),(16,2,4,33,NULL,NULL,NULL,NULL),(17,2,4,34,NULL,NULL,NULL,NULL),(18,2,5,36,NULL,NULL,NULL,NULL),(19,2,6,33,NULL,NULL,NULL,NULL),(20,2,6,34,NULL,NULL,NULL,NULL),(21,2,1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sms_flash_promotion_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_flash_promotion_session`
--

DROP TABLE IF EXISTS `sms_flash_promotion_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_flash_promotion_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '场次名称',
  `start_time` time DEFAULT NULL COMMENT '每日开始时间',
  `end_time` time DEFAULT NULL COMMENT '每日结束时间',
  `status` int(1) DEFAULT NULL COMMENT '启用状态：0->不启用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='限时购场次表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_flash_promotion_session`
--

LOCK TABLES `sms_flash_promotion_session` WRITE;
/*!40000 ALTER TABLE `sms_flash_promotion_session` DISABLE KEYS */;
INSERT INTO `sms_flash_promotion_session` VALUES (1,'8:00','08:00:29','09:00:33',1,'2018-11-16 13:22:17'),(2,'10:00','10:00:33','11:00:33',1,'2018-11-16 13:22:34'),(3,'12:00','12:00:00','13:00:22',1,'2018-11-16 13:22:37'),(4,'14:00','14:00:00','15:00:00',1,'2018-11-16 13:22:41'),(5,'16:00','16:00:00','17:00:00',1,'2018-11-16 13:22:45'),(6,'18:00','18:00:00','19:00:00',1,'2018-11-16 13:21:34'),(7,'20:00','20:00:33','21:00:33',0,'2018-11-16 13:22:55');
/*!40000 ALTER TABLE `sms_flash_promotion_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_advertise`
--

DROP TABLE IF EXISTS `sms_home_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_advertise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '轮播位置：0->PC首页轮播；1->app首页轮播',
  `pic` varchar(500) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '上下线状态：0->下线；1->上线',
  `click_count` int(11) DEFAULT NULL COMMENT '点击数',
  `order_count` int(11) DEFAULT NULL COMMENT '下单数',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='首页轮播广告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_advertise`
--

LOCK TABLES `sms_home_advertise` WRITE;
/*!40000 ALTER TABLE `sms_home_advertise` DISABLE KEYS */;
INSERT INTO `sms_home_advertise` VALUES (2,'夏季大热促销',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','2018-11-01 14:01:37','2018-11-15 14:01:37',1,0,0,NULL,'夏季大热促销',0),(3,'夏季大热促销1',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','2018-11-13 14:01:37','2018-11-13 14:01:37',0,0,0,NULL,'夏季大热促销1',0),(4,'夏季大热促销2',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','2018-11-13 14:01:37','2018-11-13 14:01:37',1,0,0,NULL,'夏季大热促销2',0),(9,'电影推荐广告',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/movie_ad.jpg','2018-11-01 00:00:00','2018-11-24 23:59:59',1,0,0,'www.baidu.com','电影推荐广告',100),(10,'汽车促销广告',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad.jpg','2018-11-13 00:00:00','2018-11-24 00:00:00',1,0,0,'xxx',NULL,99),(11,'汽车推荐广告',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad2.jpg','2018-11-13 00:00:00','2018-11-30 00:00:00',1,0,0,'xxx',NULL,98);
/*!40000 ALTER TABLE `sms_home_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_brand`
--

DROP TABLE IF EXISTS `sms_home_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) DEFAULT NULL,
  `brand_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='首页推荐品牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_brand`
--

LOCK TABLES `sms_home_brand` WRITE;
/*!40000 ALTER TABLE `sms_home_brand` DISABLE KEYS */;
INSERT INTO `sms_home_brand` VALUES (1,1,'万和',1,200),(2,2,'三星',1,0),(6,6,'小米',1,300),(8,5,'方太',1,100),(31,49,'七匹狼',0,0),(32,50,'海澜之家',1,0),(33,51,'苹果',1,0),(34,2,'三星',0,0),(35,3,'华为',1,0),(36,4,'格力',1,0),(37,5,'方太',1,0),(38,1,'万和',1,0),(39,21,'OPPO',1,0);
/*!40000 ALTER TABLE `sms_home_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_new_product`
--

DROP TABLE IF EXISTS `sms_home_new_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_new_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='新鲜好物表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_new_product`
--

LOCK TABLES `sms_home_new_product` WRITE;
/*!40000 ALTER TABLE `sms_home_new_product` DISABLE KEYS */;
INSERT INTO `sms_home_new_product` VALUES (2,27,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',1,200),(8,26,'华为 HUAWEI P20 ',0,0),(9,27,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',1,0),(10,28,'小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待',1,0),(12,30,'HLA海澜之家简约动物印花短袖T恤',1,1);
/*!40000 ALTER TABLE `sms_home_new_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_recommend_product`
--

DROP TABLE IF EXISTS `sms_home_recommend_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_recommend_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='人气推荐商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_recommend_product`
--

LOCK TABLES `sms_home_recommend_product` WRITE;
/*!40000 ALTER TABLE `sms_home_recommend_product` DISABLE KEYS */;
INSERT INTO `sms_home_recommend_product` VALUES (3,26,'华为 HUAWEI P20 ',1,0),(4,27,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',1,0),(5,28,'小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待',1,0),(6,29,'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机',1,0),(7,30,'HLA海澜之家简约动物印花短袖T恤',1,100),(9,8,'女式超柔软拉毛运动开衫1',1,1);
/*!40000 ALTER TABLE `sms_home_recommend_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_recommend_subject`
--

DROP TABLE IF EXISTS `sms_home_recommend_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_recommend_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `subject_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='首页推荐专题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_recommend_subject`
--

LOCK TABLES `sms_home_recommend_subject` WRITE;
/*!40000 ALTER TABLE `sms_home_recommend_subject` DISABLE KEYS */;
INSERT INTO `sms_home_recommend_subject` VALUES (14,1,'polo衬衫的也时尚',1,0),(15,2,'大牌手机低价秒',1,0),(16,3,'晓龙845新品上市',1,0),(17,4,'夏天应该穿什么',1,0),(18,5,'夏季精选',1,100),(19,6,'品牌手机降价',1,0);
/*!40000 ALTER TABLE `sms_home_recommend_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_admin`
--

DROP TABLE IF EXISTS `ums_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int(1) DEFAULT '1' COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='后台用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_admin`
--

LOCK TABLES `ums_admin` WRITE;
/*!40000 ALTER TABLE `ums_admin` DISABLE KEYS */;
INSERT INTO `ums_admin` VALUES (1,'rafael','123456','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg','test@qq.com','测试账号',NULL,'2018-09-29 13:55:30','2018-09-29 13:55:39',0),(3,'admin','$2a$10$.E1FokumK5GIXWgKlg.Hc.i/0/2.qdAwYFL1zc5QHdyzpXOr38RZO','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg','admin@163.com','系统管理员','系统管理员','2018-10-08 13:32:47','2019-04-20 12:45:16',1),(4,'macro','$2a$10$Bx4jZPR7GhEpIQfefDQtVeS58GfT5n6mxs/b4nLLK65eMFa16topa','string','macro@qq.com','macro','macro专用','2019-10-06 15:53:51','2020-02-03 14:55:55',1),(6,'productAdmin','$2a$10$6/.J.p.6Bhn7ic4GfoB5D.pGd7xSiD1a9M6ht6yO0fxzlKJPjRAGm',NULL,'product@qq.com','商品管理员','只有商品权限','2020-02-07 16:15:08',NULL,0),(7,'orderAdmin','$2a$10$UqEhA9UZXjHHA3B.L9wNG.6aerrBjC6WHTtbv1FdvYPUI.7lkL6E.',NULL,'order@qq.com','订单管理员','只有订单管理权限','2020-02-07 16:15:50',NULL,1),(10,'wahaha222','123456','/img/avatorImages/1656157792424AR.png','wa@qq.com','哇哈哈','喜欢吗','2022-06-25 11:50:28',NULL,1);
/*!40000 ALTER TABLE `ums_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_admin_login_log`
--

DROP TABLE IF EXISTS `ums_admin_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_admin_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_agent` varchar(100) DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COMMENT='后台用户登录日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_admin_login_log`
--

LOCK TABLES `ums_admin_login_log` WRITE;
/*!40000 ALTER TABLE `ums_admin_login_log` DISABLE KEYS */;
INSERT INTO `ums_admin_login_log` VALUES (1,3,'2018-12-23 14:27:00','0:0:0:0:0:0:0:1',NULL,NULL),(2,3,'2019-04-07 16:04:39','0:0:0:0:0:0:0:1',NULL,NULL),(3,3,'2019-04-08 21:47:52','0:0:0:0:0:0:0:1',NULL,NULL),(4,3,'2019-04-08 21:48:18','0:0:0:0:0:0:0:1',NULL,NULL),(5,3,'2019-04-18 22:18:40','0:0:0:0:0:0:0:1',NULL,NULL),(6,3,'2019-04-20 12:45:16','0:0:0:0:0:0:0:1',NULL,NULL),(7,3,'2019-05-19 14:52:12','0:0:0:0:0:0:0:1',NULL,NULL),(8,3,'2019-05-25 15:00:17','0:0:0:0:0:0:0:1',NULL,NULL),(9,3,'2019-06-19 20:11:42','0:0:0:0:0:0:0:1',NULL,NULL),(10,3,'2019-06-30 10:33:48','0:0:0:0:0:0:0:1',NULL,NULL),(11,3,'2019-06-30 10:34:31','0:0:0:0:0:0:0:1',NULL,NULL),(12,3,'2019-06-30 10:35:34','0:0:0:0:0:0:0:1',NULL,NULL),(13,3,'2019-07-27 17:11:01','0:0:0:0:0:0:0:1',NULL,NULL),(14,3,'2019-07-27 17:13:18','0:0:0:0:0:0:0:1',NULL,NULL),(15,3,'2019-07-27 17:15:35','0:0:0:0:0:0:0:1',NULL,NULL),(16,3,'2019-07-27 17:17:11','0:0:0:0:0:0:0:1',NULL,NULL),(17,3,'2019-07-27 17:18:34','0:0:0:0:0:0:0:1',NULL,NULL),(18,3,'2019-07-27 21:21:52','0:0:0:0:0:0:0:1',NULL,NULL),(19,3,'2019-07-27 21:34:29','0:0:0:0:0:0:0:1',NULL,NULL),(20,3,'2019-07-27 21:35:17','0:0:0:0:0:0:0:1',NULL,NULL),(21,3,'2019-07-27 21:35:48','0:0:0:0:0:0:0:1',NULL,NULL),(22,3,'2019-07-27 21:40:33','0:0:0:0:0:0:0:1',NULL,NULL),(23,3,'2019-08-18 16:00:38','0:0:0:0:0:0:0:1',NULL,NULL),(24,3,'2019-08-18 16:01:06','0:0:0:0:0:0:0:1',NULL,NULL),(25,3,'2019-08-18 16:47:01','0:0:0:0:0:0:0:1',NULL,NULL),(26,3,'2019-10-06 15:54:23','0:0:0:0:0:0:0:1',NULL,NULL),(27,3,'2019-10-06 16:03:28','0:0:0:0:0:0:0:1',NULL,NULL),(28,3,'2019-10-06 16:04:51','0:0:0:0:0:0:0:1',NULL,NULL),(29,3,'2019-10-06 16:06:44','0:0:0:0:0:0:0:1',NULL,NULL),(30,3,'2019-10-06 16:14:51','0:0:0:0:0:0:0:1',NULL,NULL),(31,1,'2019-10-06 16:15:09','0:0:0:0:0:0:0:1',NULL,NULL),(32,1,'2019-10-06 16:16:14','0:0:0:0:0:0:0:1',NULL,NULL),(33,3,'2019-10-06 16:16:35','0:0:0:0:0:0:0:1',NULL,NULL),(34,3,'2019-10-06 16:16:42','0:0:0:0:0:0:0:1',NULL,NULL),(35,3,'2019-10-07 15:20:48','0:0:0:0:0:0:0:1',NULL,NULL),(36,3,'2019-10-07 15:40:07','0:0:0:0:0:0:0:1',NULL,NULL),(37,3,'2019-10-07 16:34:15','0:0:0:0:0:0:0:1',NULL,NULL),(38,3,'2019-10-09 21:19:08','0:0:0:0:0:0:0:1',NULL,NULL),(39,4,'2019-10-09 21:30:35','0:0:0:0:0:0:0:1',NULL,NULL),(40,4,'2019-10-09 21:31:30','0:0:0:0:0:0:0:1',NULL,NULL),(41,4,'2019-10-09 21:32:39','0:0:0:0:0:0:0:1',NULL,NULL),(42,4,'2019-10-09 21:33:27','0:0:0:0:0:0:0:1',NULL,NULL),(43,4,'2019-10-09 21:33:50','0:0:0:0:0:0:0:1',NULL,NULL),(44,3,'2019-10-20 16:02:53','0:0:0:0:0:0:0:1',NULL,NULL),(45,3,'2019-10-23 21:20:55','0:0:0:0:0:0:0:1',NULL,NULL),(46,3,'2019-10-27 21:41:45','0:0:0:0:0:0:0:1',NULL,NULL),(47,3,'2019-11-09 16:44:57','0:0:0:0:0:0:0:1',NULL,NULL),(48,3,'2019-11-09 16:46:56','0:0:0:0:0:0:0:1',NULL,NULL),(49,3,'2019-11-09 16:49:55','0:0:0:0:0:0:0:1',NULL,NULL),(50,3,'2019-11-23 14:17:16','0:0:0:0:0:0:0:1',NULL,NULL),(51,6,'2019-11-23 14:52:30','0:0:0:0:0:0:0:1',NULL,NULL),(52,3,'2019-11-23 15:07:24','0:0:0:0:0:0:0:1',NULL,NULL),(53,3,'2019-11-30 21:25:30','192.168.3.185',NULL,NULL),(54,3,'2019-11-30 21:27:54','192.168.3.185',NULL,NULL),(55,3,'2019-12-28 15:23:01','0:0:0:0:0:0:0:1',NULL,NULL),(56,3,'2020-01-01 15:21:46','0:0:0:0:0:0:0:1',NULL,NULL),(57,3,'2020-01-04 16:00:54','192.168.3.185',NULL,NULL),(58,3,'2020-02-01 15:05:19','0:0:0:0:0:0:0:1',NULL,NULL),(59,3,'2020-02-01 15:36:05','0:0:0:0:0:0:0:1',NULL,NULL),(60,3,'2020-02-01 15:36:36','0:0:0:0:0:0:0:1',NULL,NULL),(61,3,'2020-02-01 15:37:30','0:0:0:0:0:0:0:1',NULL,NULL),(62,3,'2020-02-01 15:37:46','0:0:0:0:0:0:0:1',NULL,NULL),(63,3,'2020-02-01 15:38:20','0:0:0:0:0:0:0:1',NULL,NULL),(64,3,'2020-02-01 15:38:33','0:0:0:0:0:0:0:1',NULL,NULL),(65,3,'2020-02-01 15:39:06','0:0:0:0:0:0:0:1',NULL,NULL),(66,3,'2020-02-01 15:41:31','0:0:0:0:0:0:0:1',NULL,NULL),(67,3,'2020-02-01 15:43:17','0:0:0:0:0:0:0:1',NULL,NULL),(68,3,'2020-02-01 15:44:34','0:0:0:0:0:0:0:1',NULL,NULL),(69,3,'2020-02-01 15:45:10','0:0:0:0:0:0:0:1',NULL,NULL),(70,3,'2020-02-01 15:46:04','0:0:0:0:0:0:0:1',NULL,NULL),(71,3,'2020-02-01 15:48:33','0:0:0:0:0:0:0:1',NULL,NULL),(72,3,'2020-02-01 16:00:07','0:0:0:0:0:0:0:1',NULL,NULL),(73,3,'2020-02-01 16:07:25','0:0:0:0:0:0:0:1',NULL,NULL),(74,3,'2020-02-01 16:08:22','0:0:0:0:0:0:0:1',NULL,NULL),(75,3,'2020-02-02 15:28:13','0:0:0:0:0:0:0:1',NULL,NULL),(76,3,'2020-02-02 15:44:37','0:0:0:0:0:0:0:1',NULL,NULL),(77,3,'2020-02-02 15:45:25','0:0:0:0:0:0:0:1',NULL,NULL),(78,3,'2020-02-02 15:52:32','0:0:0:0:0:0:0:1',NULL,NULL),(79,3,'2020-02-02 15:53:44','0:0:0:0:0:0:0:1',NULL,NULL),(80,3,'2020-02-02 15:54:36','0:0:0:0:0:0:0:1',NULL,NULL),(81,3,'2020-02-02 16:01:00','0:0:0:0:0:0:0:1',NULL,NULL),(82,3,'2020-02-02 16:05:19','0:0:0:0:0:0:0:1',NULL,NULL),(83,3,'2020-02-02 16:06:31','0:0:0:0:0:0:0:1',NULL,NULL),(84,3,'2020-02-02 16:17:26','0:0:0:0:0:0:0:1',NULL,NULL),(85,3,'2020-02-02 16:18:45','0:0:0:0:0:0:0:1',NULL,NULL),(86,3,'2020-02-02 16:19:05','0:0:0:0:0:0:0:1',NULL,NULL),(87,3,'2020-02-02 16:19:23','0:0:0:0:0:0:0:1',NULL,NULL),(88,3,'2020-02-02 16:22:27','0:0:0:0:0:0:0:1',NULL,NULL),(89,3,'2020-02-02 16:23:30','0:0:0:0:0:0:0:1',NULL,NULL),(90,3,'2020-02-02 16:23:48','0:0:0:0:0:0:0:1',NULL,NULL),(91,3,'2020-02-02 16:24:38','0:0:0:0:0:0:0:1',NULL,NULL),(92,3,'2020-02-02 16:25:22','0:0:0:0:0:0:0:1',NULL,NULL),(93,3,'2020-02-02 16:26:19','0:0:0:0:0:0:0:1',NULL,NULL),(94,3,'2020-02-02 16:26:31','0:0:0:0:0:0:0:1',NULL,NULL),(95,3,'2020-02-02 16:27:08','0:0:0:0:0:0:0:1',NULL,NULL),(96,3,'2020-02-02 16:31:02','0:0:0:0:0:0:0:1',NULL,NULL),(97,3,'2020-02-02 16:31:08','0:0:0:0:0:0:0:1',NULL,NULL),(98,3,'2020-02-02 16:31:25','0:0:0:0:0:0:0:1',NULL,NULL),(99,3,'2020-02-02 16:31:50','0:0:0:0:0:0:0:1',NULL,NULL),(100,3,'2020-02-02 16:33:22','0:0:0:0:0:0:0:1',NULL,NULL),(101,3,'2020-02-02 16:33:41','0:0:0:0:0:0:0:1',NULL,NULL),(102,3,'2020-02-02 16:34:58','0:0:0:0:0:0:0:1',NULL,NULL),(103,3,'2020-02-02 16:38:42','0:0:0:0:0:0:0:1',NULL,NULL),(104,3,'2020-02-02 16:39:41','0:0:0:0:0:0:0:1',NULL,NULL),(105,3,'2020-02-02 16:42:22','0:0:0:0:0:0:0:1',NULL,NULL),(106,3,'2020-02-02 16:46:21','0:0:0:0:0:0:0:1',NULL,NULL),(107,3,'2020-02-02 16:50:23','0:0:0:0:0:0:0:1',NULL,NULL),(108,3,'2020-02-02 16:51:11','0:0:0:0:0:0:0:1',NULL,NULL),(109,3,'2020-02-02 16:51:22','0:0:0:0:0:0:0:1',NULL,NULL),(110,3,'2020-02-02 16:52:00','0:0:0:0:0:0:0:1',NULL,NULL),(111,3,'2020-02-02 17:01:05','0:0:0:0:0:0:0:1',NULL,NULL),(112,3,'2020-02-03 10:43:22','0:0:0:0:0:0:0:1',NULL,NULL),(113,3,'2020-02-03 10:45:29','0:0:0:0:0:0:0:1',NULL,NULL),(114,3,'2020-02-03 10:46:33','0:0:0:0:0:0:0:1',NULL,NULL),(115,3,'2020-02-03 10:54:33','0:0:0:0:0:0:0:1',NULL,NULL),(116,3,'2020-02-03 14:24:47','0:0:0:0:0:0:0:1',NULL,NULL),(117,3,'2020-02-03 14:25:38','0:0:0:0:0:0:0:1',NULL,NULL),(118,5,'2020-02-03 15:22:28','0:0:0:0:0:0:0:1',NULL,NULL),(119,5,'2020-02-03 15:23:00','0:0:0:0:0:0:0:1',NULL,NULL),(120,5,'2020-02-03 15:24:29','0:0:0:0:0:0:0:1',NULL,NULL),(121,3,'2020-02-03 15:24:50','0:0:0:0:0:0:0:1',NULL,NULL),(122,5,'2020-02-03 15:27:18','0:0:0:0:0:0:0:1',NULL,NULL),(123,3,'2020-02-03 15:27:33','0:0:0:0:0:0:0:1',NULL,NULL),(124,3,'2020-02-03 15:29:06','0:0:0:0:0:0:0:1',NULL,NULL),(125,5,'2020-02-03 15:33:25','0:0:0:0:0:0:0:1',NULL,NULL),(126,3,'2020-02-03 15:33:51','0:0:0:0:0:0:0:1',NULL,NULL),(127,1,'2020-02-03 15:34:35','0:0:0:0:0:0:0:1',NULL,NULL),(128,3,'2020-02-03 15:34:47','0:0:0:0:0:0:0:1',NULL,NULL),(129,3,'2020-02-04 14:14:46','0:0:0:0:0:0:0:1',NULL,NULL),(130,3,'2020-02-05 10:33:35','0:0:0:0:0:0:0:1',NULL,NULL),(131,3,'2020-02-05 10:36:21','0:0:0:0:0:0:0:1',NULL,NULL),(132,3,'2020-02-05 16:34:37','0:0:0:0:0:0:0:1',NULL,NULL),(133,4,'2020-02-05 16:58:37','0:0:0:0:0:0:0:1',NULL,NULL),(134,3,'2020-02-05 16:59:03','0:0:0:0:0:0:0:1',NULL,NULL),(135,3,'2020-02-06 10:25:02','0:0:0:0:0:0:0:1',NULL,NULL),(136,3,'2020-02-07 14:34:34','0:0:0:0:0:0:0:1',NULL,NULL),(137,3,'2020-02-07 14:36:20','0:0:0:0:0:0:0:1',NULL,NULL),(138,1,'2020-02-07 14:43:34','0:0:0:0:0:0:0:1',NULL,NULL),(139,3,'2020-02-07 15:18:06','0:0:0:0:0:0:0:1',NULL,NULL),(140,3,'2020-02-07 15:20:07','0:0:0:0:0:0:0:1',NULL,NULL),(141,3,'2020-02-07 15:22:20','0:0:0:0:0:0:0:1',NULL,NULL),(142,3,'2020-02-07 15:22:28','0:0:0:0:0:0:0:1',NULL,NULL),(143,3,'2020-02-07 15:55:11','0:0:0:0:0:0:0:1',NULL,NULL),(144,3,'2020-02-07 15:56:04','0:0:0:0:0:0:0:1',NULL,NULL),(145,3,'2020-02-07 15:58:49','0:0:0:0:0:0:0:1',NULL,NULL),(146,6,'2020-02-07 16:16:21','0:0:0:0:0:0:0:1',NULL,NULL),(147,7,'2020-02-07 16:16:37','0:0:0:0:0:0:0:1',NULL,NULL),(148,3,'2020-02-07 16:18:39','0:0:0:0:0:0:0:1',NULL,NULL),(149,7,'2020-02-07 16:20:06','0:0:0:0:0:0:0:1',NULL,NULL),(150,3,'2020-02-07 16:20:44','0:0:0:0:0:0:0:1',NULL,NULL),(151,3,'2020-02-07 16:32:31','0:0:0:0:0:0:0:1',NULL,NULL),(152,3,'2020-02-07 19:32:34','0:0:0:0:0:0:0:1',NULL,NULL),(153,3,'2020-02-07 19:32:48','0:0:0:0:0:0:0:1',NULL,NULL),(154,3,'2020-02-07 19:33:01','0:0:0:0:0:0:0:1',NULL,NULL),(155,3,'2020-02-07 19:33:06','0:0:0:0:0:0:0:1',NULL,NULL),(156,3,'2020-02-07 19:33:21','0:0:0:0:0:0:0:1',NULL,NULL),(157,3,'2020-02-07 19:35:33','0:0:0:0:0:0:0:1',NULL,NULL),(158,3,'2020-02-07 19:37:10','0:0:0:0:0:0:0:1',NULL,NULL),(159,3,'2020-02-07 19:37:14','0:0:0:0:0:0:0:1',NULL,NULL),(160,3,'2020-02-07 19:37:25','0:0:0:0:0:0:0:1',NULL,NULL),(161,3,'2020-02-07 19:45:41','0:0:0:0:0:0:0:1',NULL,NULL),(162,3,'2020-02-07 19:47:45','0:0:0:0:0:0:0:1',NULL,NULL),(163,3,'2020-02-07 20:02:25','0:0:0:0:0:0:0:1',NULL,NULL),(164,6,'2020-02-07 20:10:55','0:0:0:0:0:0:0:1',NULL,NULL),(165,6,'2020-02-07 20:11:02','0:0:0:0:0:0:0:1',NULL,NULL),(166,6,'2020-02-07 20:13:44','0:0:0:0:0:0:0:1',NULL,NULL),(167,6,'2020-02-07 20:17:14','0:0:0:0:0:0:0:1',NULL,NULL),(168,3,'2020-02-07 20:17:44','0:0:0:0:0:0:0:1',NULL,NULL),(169,6,'2020-02-07 20:18:13','0:0:0:0:0:0:0:1',NULL,NULL),(170,3,'2020-02-10 10:28:14','0:0:0:0:0:0:0:1',NULL,NULL),(171,3,'2020-02-10 10:45:15','0:0:0:0:0:0:0:1',NULL,NULL),(172,3,'2020-02-10 10:57:46','0:0:0:0:0:0:0:1',NULL,NULL),(173,3,'2020-02-10 10:59:06','0:0:0:0:0:0:0:1',NULL,NULL),(174,3,'2020-02-10 11:04:19','0:0:0:0:0:0:0:1',NULL,NULL),(175,3,'2020-02-10 11:05:55','0:0:0:0:0:0:0:1',NULL,NULL),(176,3,'2020-02-10 11:06:45','0:0:0:0:0:0:0:1',NULL,NULL),(177,3,'2020-02-10 11:07:41','0:0:0:0:0:0:0:1',NULL,NULL),(178,3,'2020-02-10 11:08:13','0:0:0:0:0:0:0:1',NULL,NULL),(179,3,'2020-02-10 11:10:02','0:0:0:0:0:0:0:1',NULL,NULL),(180,6,'2020-02-10 14:25:17','0:0:0:0:0:0:0:1',NULL,NULL),(181,6,'2020-02-10 14:29:14','0:0:0:0:0:0:0:1',NULL,NULL),(182,3,'2020-02-10 16:09:16','0:0:0:0:0:0:0:1',NULL,NULL),(183,3,'2020-02-20 14:39:19','0:0:0:0:0:0:0:1',NULL,NULL),(184,8,'2020-02-20 17:14:58','0:0:0:0:0:0:0:1',NULL,NULL),(185,8,'2020-02-20 17:17:04','0:0:0:0:0:0:0:1',NULL,NULL),(186,8,'2020-02-20 17:17:42','0:0:0:0:0:0:0:1',NULL,NULL),(187,8,'2020-02-21 10:26:56','0:0:0:0:0:0:0:1',NULL,NULL),(188,8,'2020-02-21 10:28:54','0:0:0:0:0:0:0:1',NULL,NULL),(189,8,'2020-02-21 10:32:25','0:0:0:0:0:0:0:1',NULL,NULL),(190,8,'2020-02-21 10:33:41','0:0:0:0:0:0:0:1',NULL,NULL),(191,8,'2020-02-21 10:35:58','0:0:0:0:0:0:0:1',NULL,NULL),(192,8,'2020-02-21 10:36:49','0:0:0:0:0:0:0:1',NULL,NULL),(193,3,'2020-02-21 11:10:11','0:0:0:0:0:0:0:1',NULL,NULL),(194,3,'2020-02-25 16:11:13','0:0:0:0:0:0:0:1',NULL,NULL),(195,3,'2020-02-25 16:46:29','0:0:0:0:0:0:0:1',NULL,NULL);
/*!40000 ALTER TABLE `ums_admin_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_admin_permission_relation`
--

DROP TABLE IF EXISTS `ums_admin_permission_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_admin_permission_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户和权限关系表(除角色中定义的权限以外的加减权限)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_admin_permission_relation`
--

LOCK TABLES `ums_admin_permission_relation` WRITE;
/*!40000 ALTER TABLE `ums_admin_permission_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_admin_permission_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_admin_role_relation`
--

DROP TABLE IF EXISTS `ums_admin_role_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_admin_role_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='后台用户和角色关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_admin_role_relation`
--

LOCK TABLES `ums_admin_role_relation` WRITE;
/*!40000 ALTER TABLE `ums_admin_role_relation` DISABLE KEYS */;
INSERT INTO `ums_admin_role_relation` VALUES (26,3,5),(27,6,1),(28,7,2),(30,4,5),(41,1,2),(42,1,5),(43,1,1);
/*!40000 ALTER TABLE `ums_admin_role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_growth_change_history`
--

DROP TABLE IF EXISTS `ums_growth_change_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_growth_change_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int(1) DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='成长值变化历史记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_growth_change_history`
--

LOCK TABLES `ums_growth_change_history` WRITE;
/*!40000 ALTER TABLE `ums_growth_change_history` DISABLE KEYS */;
INSERT INTO `ums_growth_change_history` VALUES (1,1,'2018-08-29 17:16:35',0,1000,'test','测试使用',1);
/*!40000 ALTER TABLE `ums_growth_change_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_integration_change_history`
--

DROP TABLE IF EXISTS `ums_integration_change_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_integration_change_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int(1) DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分变化历史记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_integration_change_history`
--

LOCK TABLES `ums_integration_change_history` WRITE;
/*!40000 ALTER TABLE `ums_integration_change_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_integration_change_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_integration_consume_setting`
--

DROP TABLE IF EXISTS `ums_integration_consume_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_integration_consume_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deduction_per_amount` int(11) DEFAULT NULL COMMENT '每一元需要抵扣的积分数量',
  `max_percent_per_order` int(11) DEFAULT NULL COMMENT '每笔订单最高抵用百分比',
  `use_unit` int(11) DEFAULT NULL COMMENT '每次使用积分最小单位100',
  `coupon_status` int(1) DEFAULT NULL COMMENT '是否可以和优惠券同用；0->不可以；1->可以',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='积分消费设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_integration_consume_setting`
--

LOCK TABLES `ums_integration_consume_setting` WRITE;
/*!40000 ALTER TABLE `ums_integration_consume_setting` DISABLE KEYS */;
INSERT INTO `ums_integration_consume_setting` VALUES (1,100,50,100,1);
/*!40000 ALTER TABLE `ums_integration_consume_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member`
--

DROP TABLE IF EXISTS `ums_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_level_id` bigint(20) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(64) DEFAULT NULL COMMENT '手机号码',
  `status` int(1) DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `gender` int(1) DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `city` varchar(64) DEFAULT NULL COMMENT '所做城市',
  `job` varchar(100) DEFAULT NULL COMMENT '职业',
  `personalized_signature` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `source_type` int(1) DEFAULT NULL COMMENT '用户来源',
  `integration` int(11) DEFAULT NULL COMMENT '积分',
  `growth` int(11) DEFAULT NULL COMMENT '成长值',
  `luckey_count` int(11) DEFAULT NULL COMMENT '剩余抽奖次数',
  `history_integration` int(11) DEFAULT NULL COMMENT '历史积分数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  UNIQUE KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member`
--

LOCK TABLES `ums_member` WRITE;
/*!40000 ALTER TABLE `ums_member` DISABLE KEYS */;
INSERT INTO `ums_member` VALUES (1,4,'test','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','windir','18061581849',1,'2018-08-02 10:35:44',NULL,1,'2009-06-01','上海','学生','test',NULL,5000,NULL,NULL,NULL),(3,4,'windy','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','windy','18061581848',1,'2018-08-03 16:46:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,'zhengsan','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','zhengsan','18061581847',1,'2018-11-12 14:12:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,4,'lisi','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','lisi','18061581841',1,'2018-11-12 14:12:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,4,'wangwu','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','wangwu','18061581842',1,'2018-11-12 14:13:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,4,'lion','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','lion','18061581845',1,'2018-11-12 14:21:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,4,'shari','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','shari','18061581844',1,'2018-11-12 14:22:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,4,'aewen','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','aewen','18061581843',1,'2018-11-12 14:22:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ums_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_level`
--

DROP TABLE IF EXISTS `ums_member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth_point` int(11) DEFAULT NULL,
  `default_status` int(1) DEFAULT NULL COMMENT '是否为默认等级：0->不是；1->是',
  `free_freight_point` decimal(10,2) DEFAULT NULL COMMENT '免运费标准',
  `comment_growth_point` int(11) DEFAULT NULL COMMENT '每次评价获取的成长值',
  `priviledge_free_freight` int(1) DEFAULT NULL COMMENT '是否有免邮特权',
  `priviledge_sign_in` int(1) DEFAULT NULL COMMENT '是否有签到特权',
  `priviledge_comment` int(1) DEFAULT NULL COMMENT '是否有评论获奖励特权',
  `priviledge_promotion` int(1) DEFAULT NULL COMMENT '是否有专享活动特权',
  `priviledge_member_price` int(1) DEFAULT NULL COMMENT '是否有会员价格特权',
  `priviledge_birthday` int(1) DEFAULT NULL COMMENT '是否有生日特权',
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员等级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_level`
--

LOCK TABLES `ums_member_level` WRITE;
/*!40000 ALTER TABLE `ums_member_level` DISABLE KEYS */;
INSERT INTO `ums_member_level` VALUES (1,'黄金会员',1000,0,199.00,5,1,1,1,1,1,1,NULL),(2,'白金会员',5000,0,99.00,10,1,1,1,1,1,1,NULL),(3,'钻石会员',15000,0,69.00,15,1,1,1,1,1,1,NULL),(4,'普通会员',1,1,199.00,20,1,1,1,1,0,0,NULL);
/*!40000 ALTER TABLE `ums_member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_login_log`
--

DROP TABLE IF EXISTS `ums_member_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `login_type` int(1) DEFAULT NULL COMMENT '登录类型：0->PC；1->android;2->ios;3->小程序',
  `province` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员登录记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_login_log`
--

LOCK TABLES `ums_member_login_log` WRITE;
/*!40000 ALTER TABLE `ums_member_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_member_tag_relation`
--

DROP TABLE IF EXISTS `ums_member_member_tag_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_member_tag_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和标签关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_member_tag_relation`
--

LOCK TABLES `ums_member_member_tag_relation` WRITE;
/*!40000 ALTER TABLE `ums_member_member_tag_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_member_tag_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_product_category_relation`
--

DROP TABLE IF EXISTS `ums_member_product_category_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_product_category_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员与产品分类关系表（用户喜欢的分类）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_product_category_relation`
--

LOCK TABLES `ums_member_product_category_relation` WRITE;
/*!40000 ALTER TABLE `ums_member_product_category_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_product_category_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_receive_address`
--

DROP TABLE IF EXISTS `ums_member_receive_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_receive_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '收货人名称',
  `phone_number` varchar(64) DEFAULT NULL,
  `default_status` int(1) DEFAULT NULL COMMENT '是否为默认',
  `post_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(100) DEFAULT NULL COMMENT '省份/直辖市',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `region` varchar(100) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(128) DEFAULT NULL COMMENT '详细地址(街道)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员收货地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_receive_address`
--

LOCK TABLES `ums_member_receive_address` WRITE;
/*!40000 ALTER TABLE `ums_member_receive_address` DISABLE KEYS */;
INSERT INTO `ums_member_receive_address` VALUES (1,1,'大梨','18033441849',0,'518000','广东省','深圳市','南山区','科兴科学园'),(3,1,'大梨','18033441849',0,'518000','广东省','深圳市','福田区','清水河街道'),(4,1,'大梨','18033441849',1,'518000','广东省','深圳市','福田区','东晓街道');
/*!40000 ALTER TABLE `ums_member_receive_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_rule_setting`
--

DROP TABLE IF EXISTS `ums_member_rule_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_rule_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `continue_sign_day` int(11) DEFAULT NULL COMMENT '连续签到天数',
  `continue_sign_point` int(11) DEFAULT NULL COMMENT '连续签到赠送数量',
  `consume_per_point` decimal(10,2) DEFAULT NULL COMMENT '每消费多少元获取1个点',
  `low_order_amount` decimal(10,2) DEFAULT NULL COMMENT '最低获取点数的订单金额',
  `max_point_per_order` int(11) DEFAULT NULL COMMENT '每笔订单最高获取点数',
  `type` int(1) DEFAULT NULL COMMENT '类型：0->积分规则；1->成长值规则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分成长规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_rule_setting`
--

LOCK TABLES `ums_member_rule_setting` WRITE;
/*!40000 ALTER TABLE `ums_member_rule_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_rule_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_statistics_info`
--

DROP TABLE IF EXISTS `ums_member_statistics_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_statistics_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `consume_amount` decimal(10,2) DEFAULT NULL COMMENT '累计消费金额',
  `order_count` int(11) DEFAULT NULL COMMENT '订单数量',
  `coupon_count` int(11) DEFAULT NULL COMMENT '优惠券数量',
  `comment_count` int(11) DEFAULT NULL COMMENT '评价数',
  `return_order_count` int(11) DEFAULT NULL COMMENT '退货数量',
  `login_count` int(11) DEFAULT NULL COMMENT '登录次数',
  `attend_count` int(11) DEFAULT NULL COMMENT '关注数量',
  `fans_count` int(11) DEFAULT NULL COMMENT '粉丝数量',
  `collect_product_count` int(11) DEFAULT NULL,
  `collect_subject_count` int(11) DEFAULT NULL,
  `collect_topic_count` int(11) DEFAULT NULL,
  `collect_comment_count` int(11) DEFAULT NULL,
  `invite_friend_count` int(11) DEFAULT NULL,
  `recent_order_time` datetime DEFAULT NULL COMMENT '最后一次下订单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员统计信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_statistics_info`
--

LOCK TABLES `ums_member_statistics_info` WRITE;
/*!40000 ALTER TABLE `ums_member_statistics_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_statistics_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_tag`
--

DROP TABLE IF EXISTS `ums_member_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `finish_order_count` int(11) DEFAULT NULL COMMENT '自动打标签完成订单数量',
  `finish_order_amount` decimal(10,2) DEFAULT NULL COMMENT '自动打标签完成订单金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_tag`
--

LOCK TABLES `ums_member_tag` WRITE;
/*!40000 ALTER TABLE `ums_member_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_task`
--

DROP TABLE IF EXISTS `ums_member_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth` int(11) DEFAULT NULL COMMENT '赠送成长值',
  `intergration` int(11) DEFAULT NULL COMMENT '赠送积分',
  `type` int(1) DEFAULT NULL COMMENT '任务类型：0->新手任务；1->日常任务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_task`
--

LOCK TABLES `ums_member_task` WRITE;
/*!40000 ALTER TABLE `ums_member_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_menu`
--

DROP TABLE IF EXISTS `ums_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父级ID',
  `title` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `level` int(4) DEFAULT NULL COMMENT '菜单级数',
  `sort` int(4) DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) DEFAULT NULL COMMENT '前端图标',
  `hidden` int(1) DEFAULT NULL COMMENT '前端隐藏',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_menu`
--

LOCK TABLES `ums_menu` WRITE;
/*!40000 ALTER TABLE `ums_menu` DISABLE KEYS */;
INSERT INTO `ums_menu` VALUES (1,0,'商品',0,0,'pms','product',0,'2020-02-02 14:50:36'),(2,1,'商品列表',1,0,'product','product-list',0,'2020-02-02 14:51:50'),(3,1,'添加商品',1,0,'addProduct','product-add',0,'2020-02-02 14:52:44'),(4,1,'商品分类',1,0,'productCate','product-cate',0,'2020-02-02 14:53:51'),(5,1,'商品类型',1,0,'productAttr','product-attr',0,'2020-02-02 14:54:51'),(6,1,'品牌管理',1,0,'brand','product-brand',0,'2020-02-02 14:56:29'),(7,0,'订单',0,0,'oms','order',0,'2020-02-02 16:54:07'),(8,7,'订单列表',1,0,'order','product-list',0,'2020-02-02 16:55:18'),(9,7,'订单设置',1,0,'orderSetting','order-setting',0,'2020-02-02 16:56:46'),(10,7,'退货申请处理',1,0,'returnApply','order-return',0,'2020-02-02 16:57:39'),(11,7,'退货原因设置',1,0,'returnReason','order-return-reason',0,'2020-02-02 16:59:40'),(12,0,'营销',0,0,'sms','sms',0,'2020-02-04 16:18:00'),(13,12,'秒杀活动列表',1,0,'flash','sms-flash',0,'2020-02-04 16:19:22'),(14,12,'优惠券列表',1,0,'coupon','sms-coupon',0,'2020-02-04 16:20:16'),(16,12,'品牌推荐',1,0,'homeBrand','product-brand',0,'2020-02-07 16:22:38'),(17,12,'新品推荐',1,0,'homeNew','sms-new',0,'2020-02-07 16:23:14'),(18,12,'人气推荐',1,0,'homeHot','sms-hot',0,'2020-02-07 16:26:38'),(19,12,'专题推荐',1,0,'homeSubject','sms-subject',0,'2020-02-07 16:28:16'),(20,12,'广告列表',1,0,'homeAdvertise','sms-ad',0,'2020-02-07 16:28:42'),(21,0,'权限',0,0,'ums','ums',0,'2020-02-07 16:29:13'),(22,21,'用户列表',1,0,'admin','ums-admin',0,'2020-02-07 16:29:51'),(23,21,'角色列表',1,0,'role','ums-role',0,'2020-02-07 16:30:13'),(24,21,'菜单列表',1,0,'menu','ums-menu',0,'2020-02-07 16:30:53'),(25,21,'资源列表',1,0,'resource','ums-resource',0,'2020-02-07 16:31:13'),(27,26,'长城',NULL,7,'gg','hh',0,'2022-06-27 05:59:18'),(28,0,'二哈',0,0,'er','icon',0,'2022-07-28 04:34:32');
/*!40000 ALTER TABLE `ums_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) DEFAULT NULL COMMENT '图标',
  `type` int(1) DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) DEFAULT NULL COMMENT '前端资源路径',
  `status` int(1) DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='后台用户权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_permission`
--

LOCK TABLES `ums_permission` WRITE;
/*!40000 ALTER TABLE `ums_permission` DISABLE KEYS */;
INSERT INTO `ums_permission` VALUES (1,0,'商品',NULL,NULL,0,NULL,1,'2018-09-29 16:15:14',0),(2,1,'商品列表','pms:product:read',NULL,1,'/pms/product/index',1,'2018-09-29 16:17:01',0),(3,1,'添加商品','pms:product:create',NULL,1,'/pms/product/add',1,'2018-09-29 16:18:51',0),(4,1,'商品分类','pms:productCategory:read',NULL,1,'/pms/productCate/index',1,'2018-09-29 16:23:07',0),(5,1,'商品类型','pms:productAttribute:read',NULL,1,'/pms/productAttr/index',1,'2018-09-29 16:24:43',0),(6,1,'品牌管理','pms:brand:read',NULL,1,'/pms/brand/index',1,'2018-09-29 16:25:45',0),(7,2,'编辑商品','pms:product:update',NULL,2,'/pms/product/updateProduct',1,'2018-09-29 16:34:23',0),(8,2,'删除商品','pms:product:delete',NULL,2,'/pms/product/delete',1,'2018-09-29 16:38:33',0),(9,4,'添加商品分类','pms:productCategory:create',NULL,2,'/pms/productCate/create',1,'2018-09-29 16:43:23',0),(10,4,'修改商品分类','pms:productCategory:update',NULL,2,'/pms/productCate/update',1,'2018-09-29 16:43:55',0),(11,4,'删除商品分类','pms:productCategory:delete',NULL,2,'/pms/productAttr/delete',1,'2018-09-29 16:44:38',0),(12,5,'添加商品类型','pms:productAttribute:create',NULL,2,'/pms/productAttr/create',1,'2018-09-29 16:45:25',0),(13,5,'修改商品类型','pms:productAttribute:update',NULL,2,'/pms/productAttr/update',1,'2018-09-29 16:48:08',0),(14,5,'删除商品类型','pms:productAttribute:delete',NULL,2,'/pms/productAttr/delete',1,'2018-09-29 16:48:44',0),(15,6,'添加品牌','pms:brand:create',NULL,2,'/pms/brand/add',1,'2018-09-29 16:49:34',0),(16,6,'修改品牌','pms:brand:update',NULL,2,'/pms/brand/update',1,'2018-09-29 16:50:55',0),(17,6,'删除品牌','pms:brand:delete',NULL,2,'/pms/brand/delete',1,'2018-09-29 16:50:59',0),(18,0,'首页',NULL,NULL,0,NULL,1,'2018-09-29 16:51:57',0);
/*!40000 ALTER TABLE `ums_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_resource`
--

DROP TABLE IF EXISTS `ums_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `category_id` bigint(20) DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='后台资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_resource`
--

LOCK TABLES `ums_resource` WRITE;
/*!40000 ALTER TABLE `ums_resource` DISABLE KEYS */;
INSERT INTO `ums_resource` VALUES (1,'2020-02-04 17:04:55','商品品牌管理','/brand/**',NULL,1),(2,'2020-02-04 17:05:35','商品属性分类管理','/productAttribute/**',NULL,1),(3,'2020-02-04 17:06:13','商品属性管理','/productAttribute/**',NULL,1),(4,'2020-02-04 17:07:15','商品分类管理','/productCategory/**',NULL,1),(5,'2020-02-04 17:09:16','商品管理','/product/**',NULL,1),(6,'2020-02-04 17:09:53','商品库存管理','/sku/**',NULL,1),(8,'2020-02-05 14:43:37','订单管理','/order/**','',2),(9,'2020-02-05 14:44:22',' 订单退货申请管理','/returnApply/**','',2),(10,'2020-02-05 14:45:08','退货原因管理','/returnReason/**','',2),(11,'2020-02-05 14:45:43','订单设置管理','/orderSetting/**','',2),(12,'2020-02-05 14:46:23','收货地址管理','/companyAddress/**','',2),(13,'2020-02-07 16:37:22','优惠券管理','/coupon/**','',3),(14,'2020-02-07 16:37:59','优惠券领取记录管理','/couponHistory/**','',3),(15,'2020-02-07 16:38:28','限时购活动管理','/flash/**','',3),(16,'2020-02-07 16:38:59','限时购商品关系管理','/flashProductRelation/**','',3),(17,'2020-02-07 16:39:22','限时购场次管理','/flashSession/**','',3),(18,'2020-02-07 16:40:07','首页轮播广告管理','/home/advertise/**','',3),(19,'2020-02-07 16:40:34','首页品牌管理','/home/brand/**','',3),(20,'2020-02-07 16:41:06','首页新品管理','/home/newProduct/**','',3),(21,'2020-02-07 16:42:16','首页人气推荐管理','/home/recommendProduct/**','',3),(22,'2020-02-07 16:42:48','首页专题推荐管理','/home/recommendSubject/**','',3),(23,'2020-02-07 16:44:56',' 商品优选管理','/prefrenceArea/**','',5),(24,'2020-02-07 16:45:39','商品专题管理','/subject/**','',5),(25,'2020-02-07 16:47:34','后台用户管理','/admin/**','',4),(26,'2020-02-07 16:48:24','后台用户角色管理','/role/**','',4),(27,'2020-02-07 16:48:48','后台菜单管理','/menu/**','',4),(28,'2020-02-07 16:49:18','后台资源分类管理','/resourceCategory/**','',4),(29,'2020-02-07 16:49:45','后台资源管理','/resource/**','',4);
/*!40000 ALTER TABLE `ums_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_resource_category`
--

DROP TABLE IF EXISTS `ums_resource_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_resource_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int(4) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='资源分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_resource_category`
--

LOCK TABLES `ums_resource_category` WRITE;
/*!40000 ALTER TABLE `ums_resource_category` DISABLE KEYS */;
INSERT INTO `ums_resource_category` VALUES (1,'2020-02-05 10:21:44','商品模块',0),(2,'2020-02-05 10:22:34','订单模块',0),(3,'2020-02-05 10:22:48','营销模块',0),(4,'2020-02-05 10:23:04','权限模块',0),(5,'2020-02-07 16:34:27','内容模块',0),(6,'2020-02-07 16:35:49','其他模块',0);
/*!40000 ALTER TABLE `ums_resource_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(1) DEFAULT '1' COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='后台用户角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_role`
--

LOCK TABLES `ums_role` WRITE;
/*!40000 ALTER TABLE `ums_role` DISABLE KEYS */;
INSERT INTO `ums_role` VALUES (1,'商品管理员','只能查看及操作商品',0,'2020-02-03 16:50:37',1,0),(2,'订单管理员','只能查看及操作订单',0,'2018-09-30 15:53:45',1,0),(5,'超级管理员','拥有所有查看和操作功能',0,'2020-02-02 15:11:05',1,0);
/*!40000 ALTER TABLE `ums_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_role_menu_relation`
--

DROP TABLE IF EXISTS `ums_role_menu_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_role_menu_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='后台角色菜单关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_role_menu_relation`
--

LOCK TABLES `ums_role_menu_relation` WRITE;
/*!40000 ALTER TABLE `ums_role_menu_relation` DISABLE KEYS */;
INSERT INTO `ums_role_menu_relation` VALUES (53,2,7),(54,2,8),(55,2,9),(56,2,10),(57,2,11),(72,5,1),(73,5,2),(74,5,3),(75,5,4),(76,5,5),(77,5,6),(78,5,7),(79,5,8),(80,5,9),(81,5,10),(82,5,11),(83,5,12),(84,5,13),(85,5,14),(86,5,16),(87,5,17),(88,5,18),(89,5,19),(90,5,20),(91,5,21),(92,5,22),(93,5,23),(94,5,24),(95,5,25),(117,1,1),(118,1,2),(119,1,3),(120,1,4),(121,1,5),(122,1,6);
/*!40000 ALTER TABLE `ums_role_menu_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_role_permission_relation`
--

DROP TABLE IF EXISTS `ums_role_permission_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_role_permission_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='后台用户角色和权限关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_role_permission_relation`
--

LOCK TABLES `ums_role_permission_relation` WRITE;
/*!40000 ALTER TABLE `ums_role_permission_relation` DISABLE KEYS */;
INSERT INTO `ums_role_permission_relation` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,7),(5,1,8),(6,2,4),(7,2,9),(8,2,10),(9,2,11),(10,3,5),(11,3,12),(12,3,13),(13,3,14),(14,4,6),(15,4,15),(16,4,16),(17,4,17);
/*!40000 ALTER TABLE `ums_role_permission_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_role_resource_relation`
--

DROP TABLE IF EXISTS `ums_role_resource_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_role_resource_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint(20) DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 COMMENT='后台角色资源关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_role_resource_relation`
--

LOCK TABLES `ums_role_resource_relation` WRITE;
/*!40000 ALTER TABLE `ums_role_resource_relation` DISABLE KEYS */;
INSERT INTO `ums_role_resource_relation` VALUES (103,2,8),(104,2,9),(105,2,10),(106,2,11),(107,2,12),(142,5,1),(143,5,2),(144,5,3),(145,5,4),(146,5,5),(147,5,6),(148,5,8),(149,5,9),(150,5,10),(151,5,11),(152,5,12),(153,5,13),(154,5,14),(155,5,15),(156,5,16),(157,5,17),(158,5,18),(159,5,19),(160,5,20),(161,5,21),(162,5,22),(163,5,23),(164,5,24),(165,5,25),(166,5,26),(167,5,27),(168,5,28),(169,5,29),(220,1,1),(221,1,2),(222,1,3),(223,1,4),(224,1,5),(225,1,6),(226,1,23),(227,1,24);
/*!40000 ALTER TABLE `ums_role_resource_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `nickname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `phone_num` char(15) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `birth` date DEFAULT NULL COMMENT '生日',
  `location` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '哪里人',
  `avator` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '头像',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10001,'rafael','123456','红酒',0,'17817836866','2022-03-10','广东',NULL,'2022-03-25 22:44:28','2022-03-25 22:46:53'),(10002,'apple','123456','苹果',1,'15412458469','2022-05-11','上海',NULL,'2022-05-11 21:55:37','2022-05-12 21:55:42');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_to_role`
--

DROP TABLE IF EXISTS `user_to_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_to_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_to_role`
--

LOCK TABLES `user_to_role` WRITE;
/*!40000 ALTER TABLE `user_to_role` DISABLE KEYS */;
INSERT INTO `user_to_role` VALUES (1,1,1),(2,10002,2);
/*!40000 ALTER TABLE `user_to_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-28 12:38:33
