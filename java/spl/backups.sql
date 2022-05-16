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
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date` date DEFAULT NULL,
  `imgUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'芒果','2022-02-08','/img/avatorImages/1649441698643tipheader.png'),(2,'荔枝','2022-04-20',NULL),(3,'香蕉','2022-03-24',NULL),(4,'嘎嘎嘎','2022-03-23','88'),(8,'北岸1','2022-03-29','54');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_name` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `operation_code` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES (1,'user:add','新增'),(2,'user:edit','修改'),(3,'role:add','新增'),(4,'role:list','列表');
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `router_id` int(11) NOT NULL COMMENT '当前id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_to_router`
--

LOCK TABLES `role_to_router` WRITE;
/*!40000 ALTER TABLE `role_to_router` DISABLE KEYS */;
INSERT INTO `role_to_router` VALUES (1,1,1001000),(2,2,1001000),(3,1,1002000),(4,2,1002000),(5,1,1003000),(6,2,1003000),(7,1,1004000),(8,2,1004000),(9,1,1005000),(10,2,1005000),(11,1,1006000),(12,2,1006000),(13,1,1008000),(14,2,1008000),(15,1,1009000),(16,2,1009000),(17,1,1010000),(18,2,1010000),(19,1,1011000),(20,2,1011000),(21,1,1012000),(22,2,1012000),(23,1,1013000),(24,2,1013000),(25,1,1014000),(26,2,1014000),(27,1,1015000),(28,2,1015000),(29,1,1016000),(30,2,1016000),(31,1,1017000),(32,2,1017000),(33,1,1018000),(34,2,1018000),(35,1,1019000),(36,2,1019000),(37,1,1020000),(38,2,1020000),(39,1,2001000),(40,2,2001000),(41,1,2002000),(42,2,2002000),(43,1,2003000),(44,2,2003000),(45,1,2004000),(46,2,2004000),(47,1,2005000),(48,2,2005000),(49,1,2006000),(50,2,2006000),(51,1,2007000),(52,2,2007000),(53,1,2999000),(54,2,2999000),(55,1,3001000),(56,2,3001000),(57,1,3002000),(58,2,3002000),(59,1,3002001),(60,2,3002001),(61,1,3002002),(62,2,3002002),(63,1,3002003),(64,2,3002003),(65,1,3002004),(66,2,3002004),(67,1,3002005),(68,2,3002005),(69,1,3002006),(70,2,3002006),(71,1,3003000),(72,2,3003000),(73,1,3003001),(74,2,3003001),(75,1,3003002),(76,2,3003002),(77,1,3003003),(78,2,3003003),(79,1,3003004),(80,2,3003004),(81,1,3003005),(82,2,3003005),(83,1,3003006),(84,2,3003006),(85,1,3003007),(86,2,3003007),(87,1,3003008),(88,2,3003008),(89,1,3003009),(90,2,3003009),(91,1,3003010),(92,2,3003010),(93,1,3003011),(94,2,3003011),(95,1,3003012),(96,2,3003012),(97,1,3003013),(98,2,3003013),(99,1,3003014),(100,2,3003014),(101,1,3004000),(102,2,3004000),(103,1,3004002),(104,2,3004002),(105,1,3004003),(106,2,3004003),(107,1,3004004),(108,2,3004004),(109,1,3004005),(110,2,3004005),(111,1,3004006),(112,2,3004006),(113,1,3004007),(114,2,3004007),(115,1,3004008),(116,2,3004008),(117,1,3004009),(118,2,3004009),(119,1,3004010),(120,2,3004010),(121,1,3004011),(122,2,3004011),(123,1,3004012),(124,2,3004012),(125,1,3004013),(126,2,3004013),(127,1,3004014),(128,2,3004014),(129,1,3004015),(130,2,3004015),(131,1,3004016),(132,2,3004016),(133,1,3004017),(134,2,3004017),(135,1,3004018),(136,2,3004018),(137,1,3004019),(138,2,3004019),(139,1,3004020),(140,2,3004020),(141,1,3004021),(142,2,3004021),(143,1,3004022),(144,2,3004022),(145,1,3005000),(146,2,3005000),(147,1,3005002),(148,2,3005002),(149,1,3005003),(150,2,3005003),(151,1,3005004),(152,2,3005004),(153,1,3005005),(154,2,3005005),(155,1,3005006),(156,2,3005006),(157,1,3005007),(158,2,3005007),(159,1,3005010),(160,2,3005010),(161,1,3005011),(162,2,3005011),(163,1,3005012),(164,2,3005012),(165,1,3005017),(166,2,3005017),(167,1,3005019),(168,2,3005019),(169,1,3006000),(170,2,3006000),(171,1,3006001),(172,2,3006001),(173,1,3006002),(174,2,3006002),(175,1,3006003),(176,2,3006003),(177,1,3006004),(178,2,3006004),(179,1,3006005),(180,2,3006005),(181,1,3006006),(182,2,3006006),(183,1,3006007),(184,2,3006007),(185,1,3007000),(186,2,3007000),(187,1,3008000),(188,20,3008000),(189,1,3009000),(190,2,3009000),(191,1,3009001),(192,2,3009001),(193,1,3010000),(194,2,3010000),(195,1,3999000),(196,2,3999000);
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
  `metaKey` int(11) DEFAULT '-1' COMMENT '路由导航下标',
  `importPath` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '导入路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `router`
--

LOCK TABLES `router` WRITE;
/*!40000 ALTER TABLE `router` DISABLE KEYS */;
INSERT INTO `router` VALUES (1001000,0,'*','找不到该页',-1,'/404'),(1002000,0,'/','默认路由',-1,'/defaultPath'),(1003000,0,'/noPermission','无权限访问该页',-1,'/401'),(1004000,0,'/home','',-1,'/home/index'),(1005000,0,'/adaption','pc自适应',-1,'/adaption/index'),(1006000,0,'/wave','水波',-1,'/home/managementCenter/effect/wave'),(1008000,0,'/line','线路检测',-1,'/login/line'),(1009000,0,'/register','注册',-1,'/register/index'),(1010000,0,'/game','游戏页',-1,'/game/index'),(1011000,0,'/neutralgear','加载中',-1,'/neutralGear/index'),(1012000,0,'/download','下载中心',-1,'/download/index'),(1013000,0,'/attachmentUpload','发票识别',-1,'/home/managementCenter/effect/attachmentUpload'),(1014000,0,'/openTab','浏览器新开窗口',-1,'/home/managementCenter/effect/openTab'),(1015000,0,'/priceManage','价格地图',-1,'/priceManage/index'),(1016000,0,'/vueForm','活动素材',-1,'/vueForm/index'),(1017000,0,'/vueForm2','活动素材',-1,'/vueForm/index2'),(1018000,0,'/formDesign','Schema生成器',-1,'/vueForm/formSchemaDesign/Editor'),(1019000,0,'/activityEditor','活动编辑器',-1,'/vueForm/activityEditor/Editor'),(1020000,0,'/printEditor','打印编辑器',-1,'/printEditor/index'),(2001000,1004000,'homeIndex','首页',0,'/home/homeIndex/index'),(2002000,1004000,'lottery','福气',1,'/home/lottery/index'),(2003000,1004000,'realPerson','真人',2,'/home/realPerson/index'),(2004000,1004000,'sports','体育',3,'/home/sports/index'),(2005000,1004000,'videoGame','电玩',4,'/home/videoGame/index'),(2006000,1004000,'agentSystem','代理',5,'/home/agentSystem/index'),(2007000,1004000,'managementCenter','',6,'/home/managementCenter/index'),(2999000,1004000,'/','默认重定向',-1,'/home/homeIndex'),(3001000,2007000,'crux','管理中心',6,'/home/managementCenter/crux'),(3002000,2007000,'tagStyle/css','样式',6,'/home/managementCenter/tagStyle/css'),(3002001,2007000,'tagStyle/tags','标签',6,'/home/managementCenter/tagStyle/tags'),(3002002,2007000,'tagStyle/flex','flex弹性布局',6,'/home/managementCenter/tagStyle/flex'),(3002003,2007000,'tagStyle/cssDemo','样式例子',6,'/home/managementCenter/tagStyle/cssDemo'),(3002004,2007000,'tagStyle/table','完整table',6,'/home/managementCenter/tagStyle/table'),(3002005,2007000,'tagStyle/cssDemo2','样式例子2',6,'/home/managementCenter/tagStyle/cssDemo2'),(3002006,2007000,'tagStyle/anchorPoint','锚点',6,'/home/managementCenter/tagStyle/anchorPoint'),(3003000,2007000,'javaScript/isString','字符串',6,'/home/managementCenter/javaScript/isString'),(3003001,2007000,'javaScript/isObject','对象',6,'/home/managementCenter/javaScript/isObject'),(3003002,2007000,'javaScript/isArray','数组',6,'/home/managementCenter/javaScript/isArray'),(3003003,2007000,'javaScript/learn1','必学1',6,'/home/managementCenter/javaScript/learn1'),(3003004,2007000,'javaScript/learn2','必学2',6,'/home/managementCenter/javaScript/learn2'),(3003005,2007000,'javaScript/learn3','必学3',6,'/home/managementCenter/javaScript/learn3'),(3003006,2007000,'javaScript/asynchronous','异步顺序',6,'/home/managementCenter/javaScript/asynchronous'),(3003007,2007000,'javaScript/es6','es6',6,'/home/managementCenter/javaScript/es6'),(3003008,2007000,'javaScript/jsDemo','js例子',6,'/home/managementCenter/javaScript/jsDemo'),(3003009,2007000,'javaScript/research','赋值-浅拷贝-深拷贝',6,'/home/managementCenter/javaScript/research'),(3003010,2007000,'javaScript/url_base64_blob','url_base64_blob',6,'/home/managementCenter/javaScript/url_base64_blob'),(3003011,2007000,'javaScript/isDate','时间日期',6,'/home/managementCenter/javaScript/isDate'),(3003012,2007000,'javaScript/isClass','类',6,'/home/managementCenter/javaScript/isClass'),(3003013,2007000,'javaScript/incident','事件',6,'/home/managementCenter/javaScript/incident'),(3003014,2007000,'javaScript/means','函数',6,'/home/managementCenter/javaScript/means'),(3004000,2007000,'knowledge/v_tag','vue指令',6,'/home/managementCenter/knowledge/v_tag'),(3004002,2007000,'knowledge/modifier','vue修饰符',6,'/home/managementCenter/knowledge/modifier'),(3004003,2007000,'knowledge/lifeCycle','生命周期',6,'/home/managementCenter/knowledge/lifeCycle'),(3004004,2007000,'knowledge/vuex','vuex',6,'/home/managementCenter/knowledge/vuex'),(3004005,2007000,'knowledge/router','路由传参',6,'/home/managementCenter/knowledge/router'),(3004006,2007000,'knowledge/class','动态样式',6,'/home/managementCenter/knowledge/class'),(3004007,2007000,'knowledge/exportImport/index','导出与导入',6,'/home/managementCenter/knowledge/exportImport/index'),(3004008,2007000,'knowledge/parent/index','子父通讯',6,'/home/managementCenter/knowledge/parent/index'),(3004009,2007000,'knowledge/public','全局方法',6,'/home/managementCenter/knowledge/public'),(3004010,2007000,'knowledge/watch','watch监听',6,'/home/managementCenter/knowledge/watch'),(3004011,2007000,'knowledge/computed','computed',6,'/home/managementCenter/knowledge/computed'),(3004012,2007000,'knowledge/filters','filters过滤器',6,'/home/managementCenter/knowledge/filters'),(3004013,2007000,'knowledge/transition','transition动画',6,'/home/managementCenter/knowledge/transition'),(3004014,2007000,'knowledge/refs','refs操作Dom',6,'/home/managementCenter/knowledge/refs'),(3004015,2007000,'knowledge/mock','mock模拟接口',6,'/home/managementCenter/knowledge/mock'),(3004016,2007000,'knowledge/cache','浏览器缓存',6,'/home/managementCenter/knowledge/cache'),(3004017,2007000,'knowledge/axios','axios配置',6,'/home/managementCenter/knowledge/axios'),(3004018,2007000,'knowledge/relativePath','图片相对路径',6,'/home/managementCenter/knowledge/relativePath'),(3004019,2007000,'knowledge/vueMixin','mixins混合',6,'/home/managementCenter/knowledge/vueMixin'),(3004020,2007000,'knowledge/vueExtend/index','render动态渲染',6,'/home/managementCenter/knowledge/vueExtend/index'),(3004021,2007000,'knowledge/isLess','less预处理样式',6,'/home/managementCenter/knowledge/isLess'),(3004022,2007000,'knowledge/isSassScss','scss预处理样式',6,'/home/managementCenter/knowledge/isSassScss'),(3005000,2007000,'effect/download','下载',6,'/home/managementCenter/effect/download'),(3005002,2007000,'effect/field','字段变量',6,'/home/managementCenter/effect/field'),(3005003,2007000,'effect/backToTop','返回顶部',6,'/home/managementCenter/effect/backToTop'),(3005004,2007000,'effect/pagination','分页封装',6,'/home/managementCenter/effect/pagination'),(3005005,2007000,'effect/upload/index','上传图片',6,'/home/managementCenter/effect/upload/index'),(3005006,2007000,'effect/lazy','懒加载',6,'/home/managementCenter/effect/lazy'),(3005007,2007000,'effect/video','视频',6,'/home/managementCenter/effect/video'),(3005010,2007000,'effect/listener','浏览器监听',6,'/home/managementCenter/effect/listener'),(3005011,2007000,'effect/websocket','websocket',6,'/home/managementCenter/effect/websocket'),(3005012,2007000,'effect/windowTab','开新窗口',6,'/home/managementCenter/effect/windowTab'),(3005017,2007000,'effect/isAudio','音频',6,'/home/managementCenter/effect/isAudio'),(3005019,2007000,'effect/inputeCheck','表单校验',6,'/home/managementCenter/effect/inputeCheck'),(3006000,2007000,'plugin/copy','copy复制',6,'/home/managementCenter/plugin/copy'),(3006001,2007000,'plugin/vueqr','二维码',6,'/home/managementCenter/plugin/vueqr'),(3006002,2007000,'plugin/editor','富文本编辑器',6,'/home/managementCenter/plugin/editor'),(3006003,2007000,'plugin/guide/index','分步引导',6,'/home/managementCenter/plugin/guide/index'),(3006004,2007000,'plugin/screenfull','全屏',6,'/home/managementCenter/plugin/screenfull'),(3006005,2007000,'plugin/previewPictures','图片预览',6,'/home/managementCenter/plugin/previewPictures'),(3006006,2007000,'plugin/svgIcons','svg',6,'/home/managementCenter/plugin/svgIcons'),(3006007,2007000,'plugin/awesomeIcons','font-awesome',6,'/home/managementCenter/plugin/awesomeIcons'),(3007000,2007000,'reportForm/barLine','echart图表',6,'/home/managementCenter/reportForm/barLine'),(3008000,2007000,'animation/suspension','悬浮图片',6,'/home/managementCenter/animation/suspension'),(3009000,2007000,'expand/canvas','canvas',6,'/home/managementCenter/expand/canvas'),(3009001,2007000,'expand/base64','base64解密',6,'/home/managementCenter/expand/base64'),(3010000,2007000,'talk/talk1','面试要点1',6,'/home/managementCenter/talk/talk1'),(3999000,2007000,'/','默认重定向',-1,'/home/managementCenter/crux');
/*!40000 ALTER TABLE `router` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_to_role`
--

LOCK TABLES `user_to_role` WRITE;
/*!40000 ALTER TABLE `user_to_role` DISABLE KEYS */;
INSERT INTO `user_to_role` VALUES (1,10001,1),(2,10002,2);
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

-- Dump completed on 2022-05-16 23:54:05
