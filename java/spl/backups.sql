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
  `imgUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'芒果','/img/avatorImages/1653405074270enterprise@2x.png','2022-02-02 00:00:00',NULL),(2,'荔枝',NULL,'2022-04-03 00:00:00',NULL),(3,'香蕉',NULL,'2022-03-07 00:00:00',NULL),(4,'嘎嘎嘎','88','2022-03-09 00:00:00',NULL),(8,'北岸2','/img/avatorImages/1653367554846ManageIncome.png','2022-03-18 00:00:00','2022-05-24 04:46:01'),(9,'科学课','/img/avatorImages/1653064967678apply@2x.png',NULL,NULL),(16,'画画','blob:http://localhost:2021/240c5406-7d95-459e-ac91-b768f465b224','2022-05-23 15:25:41',NULL),(18,'好好','/img/avatorImages/1653319866982land.png','2022-05-23 15:31:08',NULL),(19,'嘿嘿','/img/avatorImages/1653367250399invoice.png','2022-05-24 04:40:52',NULL),(20,'画好那','/img/avatorImages/1653369177154bill@2x.png','2022-05-24 05:12:36','2022-05-24 05:12:59'),(21,'进击的巨人','/img/avatorImages/1653379096596apply@2x.png','2022-05-24 07:58:18',NULL),(22,'萨克森看','/img/avatorImages/1653379114556PriceManage.png','2022-05-24 07:58:36',NULL),(23,'刚刚2','/img/avatorImages/1653405074270enterprise@2x.png','2022-05-24 15:11:20','2022-05-24 15:11:43');
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
INSERT INTO `role_to_router` VALUES (1,101001000),(2,101001000),(1,101002000),(2,101002000),(1,101003000),(2,101003000),(1,101004000),(2,101004000),(1,101005000),(2,101005000),(1,101006000),(2,101006000),(1,101008000),(2,101008000),(1,101009000),(2,101009000),(1,101010000),(2,101010000),(1,101011000),(2,101011000),(1,101012000),(2,101012000),(1,101013000),(2,101013000),(1,101014000),(2,101014000),(1,101015000),(2,101015000),(1,101016000),(2,101016000),(1,101017000),(2,101017000),(1,101018000),(2,101018000),(1,101019000),(2,101019000),(1,101020000),(2,101020000),(1,102001000),(2,102001000),(1,102002000),(2,102002000),(1,102003000),(2,102003000),(1,102004000),(2,102004000),(1,102005000),(2,102005000),(1,102006000),(2,102006000),(1,102007000),(2,102007000),(1,102999000),(2,102999000),(1,103001000),(2,103001000),(1,103002000),(2,103002000),(1,103002001),(2,103002001),(1,103002002),(2,103002002),(1,103002003),(2,103002003),(1,103002004),(2,103002004),(1,103002005),(2,103002005),(1,103002006),(2,103002006),(1,103003000),(2,103003000),(1,103003001),(2,103003001),(1,103003002),(2,103003002),(1,103003003),(2,103003003),(1,103003004),(2,103003004),(1,103003005),(2,103003005),(1,103003006),(2,103003006),(1,103003007),(2,103003007),(1,103003008),(2,103003008),(1,103003009),(2,103003009),(1,103003010),(2,103003010),(1,103003011),(2,103003011),(1,103003012),(2,103003012),(1,103003013),(2,103003013),(1,103003014),(2,103003014),(1,103004000),(2,103004000),(1,103004002),(2,103004002),(1,103004003),(2,103004003),(1,103004004),(2,103004004),(1,103004005),(2,103004005),(1,103004006),(2,103004006),(1,103004007),(2,103004007),(1,103004008),(2,103004008),(1,103004009),(2,103004009),(1,103004010),(2,103004010),(1,103004011),(2,103004011),(1,103004012),(2,103004012),(1,103004013),(2,103004013),(1,103004014),(2,103004014),(1,103004015),(2,103004015),(1,103004016),(2,103004016),(1,103004017),(2,103004017),(1,103004018),(2,103004018),(1,103004019),(2,103004019),(1,103004020),(2,103004020),(1,103004021),(2,103004021),(1,103004022),(2,103004022),(1,103005000),(2,103005000),(1,103005002),(2,103005002),(1,103005003),(2,103005003),(1,103005004),(2,103005004),(1,103005005),(2,103005005),(1,103005006),(2,103005006),(1,103005007),(2,103005007),(1,103005010),(2,103005010),(1,103005011),(2,103005011),(1,103005012),(2,103005012),(1,103005017),(2,103005017),(1,103005019),(2,103005019),(1,103006000),(2,103006000),(1,103006001),(2,103006001),(1,103006002),(2,103006002),(1,103006003),(2,103006003),(1,103006004),(2,103006004),(1,103006005),(2,103006005),(1,103006006),(2,103006006),(1,103006007),(2,103006007),(1,103007000),(2,103007000),(1,103008000),(2,103008000),(1,103009000),(2,103009000),(1,103009001),(2,103009001),(1,103010000),(2,103010000),(1,103999000),(2,103999000),(1,201001000),(2,201001000),(1,201002000),(2,201002000),(1,201004000),(2,201004000),(1,202001000),(2,202001000),(1,202002001),(2,202002001),(1,202002002),(2,202002002),(1,202002003),(2,202002003),(1,202002004),(2,202002004),(1,202003000),(2,202003000),(1,202004000),(2,202004000),(1,202005000),(2,202005000),(1,202005001),(2,202005001),(1,202006000),(2,202006000),(1,202999000),(2,202999000);
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
INSERT INTO `router` VALUES (101001000,0,'*','找不到该页',-1,'/404'),(101002000,0,'/','默认路由',-1,'/defaultPath'),(101003000,0,'/noPermission','无权限访问该页',-1,'/401'),(101004000,0,'/home','',-1,'/home/index'),(101005000,0,'/adaption','pc自适应',-1,'/adaption/index'),(101006000,0,'/wave','水波',-1,'/home/managementCenter/effect/wave'),(101008000,0,'/line','线路检测',-1,'/login/line'),(101009000,0,'/register','注册',-1,'/register/index'),(101010000,0,'/game','游戏页',-1,'/game/index'),(101011000,0,'/neutralgear','加载中',-1,'/neutralGear/index'),(101012000,0,'/download','下载中心',-1,'/download/index'),(101013000,0,'/attachmentUpload','发票识别',-1,'/home/managementCenter/effect/attachmentUpload'),(101014000,0,'/openTab','浏览器新开窗口',-1,'/home/managementCenter/effect/openTab'),(101015000,0,'/priceManage','价格地图',-1,'/priceManage/index'),(101016000,0,'/vueForm','活动素材',-1,'/vueForm/index'),(101017000,0,'/vueForm2','活动素材',-1,'/vueForm/index2'),(101018000,0,'/formDesign','Schema生成器',-1,'/vueForm/formSchemaDesign/Editor'),(101019000,0,'/activityEditor','活动编辑器',-1,'/vueForm/activityEditor/Editor'),(101020000,0,'/printEditor','打印编辑器',-1,'/printEditor/index'),(102001000,101004000,'homeIndex','首页',0,'/home/homeIndex/index'),(102002000,101004000,'lottery','福气',1,'/home/lottery/index'),(102003000,101004000,'realPerson','真人',2,'/home/realPerson/index'),(102004000,101004000,'sports','体育',3,'/home/sports/index'),(102005000,101004000,'videoGame','电玩',4,'/home/videoGame/index'),(102006000,101004000,'agentSystem','代理',5,'/home/agentSystem/index'),(102007000,101004000,'managementCenter','',6,'/home/managementCenter/index'),(102999000,101004000,'/','默认重定向',-1,'/home/homeIndex'),(103001000,102007000,'crux','管理中心',6,'/home/managementCenter/crux'),(103002000,102007000,'tagStyle/css','样式',6,'/home/managementCenter/tagStyle/css'),(103002001,102007000,'tagStyle/tags','标签',6,'/home/managementCenter/tagStyle/tags'),(103002002,102007000,'tagStyle/flex','flex弹性布局',6,'/home/managementCenter/tagStyle/flex'),(103002003,102007000,'tagStyle/cssDemo','样式例子',6,'/home/managementCenter/tagStyle/cssDemo'),(103002004,102007000,'tagStyle/table','完整table',6,'/home/managementCenter/tagStyle/table'),(103002005,102007000,'tagStyle/cssDemo2','样式例子2',6,'/home/managementCenter/tagStyle/cssDemo2'),(103002006,102007000,'tagStyle/anchorPoint','锚点',6,'/home/managementCenter/tagStyle/anchorPoint'),(103003000,102007000,'javaScript/isString','字符串',6,'/home/managementCenter/javaScript/isString'),(103003001,102007000,'javaScript/isObject','对象',6,'/home/managementCenter/javaScript/isObject'),(103003002,102007000,'javaScript/isArray','数组',6,'/home/managementCenter/javaScript/isArray'),(103003003,102007000,'javaScript/learn1','必学1',6,'/home/managementCenter/javaScript/learn1'),(103003004,102007000,'javaScript/learn2','必学2',6,'/home/managementCenter/javaScript/learn2'),(103003005,102007000,'javaScript/learn3','必学3',6,'/home/managementCenter/javaScript/learn3'),(103003006,102007000,'javaScript/asynchronous','异步顺序',6,'/home/managementCenter/javaScript/asynchronous'),(103003007,102007000,'javaScript/es6','es6',6,'/home/managementCenter/javaScript/es6'),(103003008,102007000,'javaScript/jsDemo','js例子',6,'/home/managementCenter/javaScript/jsDemo'),(103003009,102007000,'javaScript/research','赋值-浅拷贝-深拷贝',6,'/home/managementCenter/javaScript/research'),(103003010,102007000,'javaScript/url_base64_blob','url_base64_blob',6,'/home/managementCenter/javaScript/url_base64_blob'),(103003011,102007000,'javaScript/isDate','时间日期',6,'/home/managementCenter/javaScript/isDate'),(103003012,102007000,'javaScript/isClass','类',6,'/home/managementCenter/javaScript/isClass'),(103003013,102007000,'javaScript/incident','事件',6,'/home/managementCenter/javaScript/incident'),(103003014,102007000,'javaScript/means','函数',6,'/home/managementCenter/javaScript/means'),(103004000,102007000,'knowledge/v_tag','vue指令',6,'/home/managementCenter/knowledge/v_tag'),(103004002,102007000,'knowledge/modifier','vue修饰符',6,'/home/managementCenter/knowledge/modifier'),(103004003,102007000,'knowledge/lifeCycle','生命周期',6,'/home/managementCenter/knowledge/lifeCycle'),(103004004,102007000,'knowledge/vuex','vuex',6,'/home/managementCenter/knowledge/vuex'),(103004005,102007000,'knowledge/router','路由传参',6,'/home/managementCenter/knowledge/router'),(103004006,102007000,'knowledge/class','动态样式',6,'/home/managementCenter/knowledge/class'),(103004007,102007000,'knowledge/exportImport/index','导出与导入',6,'/home/managementCenter/knowledge/exportImport/index'),(103004008,102007000,'knowledge/parent/index','子父通讯',6,'/home/managementCenter/knowledge/parent/index'),(103004009,102007000,'knowledge/public','全局方法',6,'/home/managementCenter/knowledge/public'),(103004010,102007000,'knowledge/watch','watch监听',6,'/home/managementCenter/knowledge/watch'),(103004011,102007000,'knowledge/computed','computed',6,'/home/managementCenter/knowledge/computed'),(103004012,102007000,'knowledge/filters','filters过滤器',6,'/home/managementCenter/knowledge/filters'),(103004013,102007000,'knowledge/transition','transition动画',6,'/home/managementCenter/knowledge/transition'),(103004014,102007000,'knowledge/refs','refs操作Dom',6,'/home/managementCenter/knowledge/refs'),(103004015,102007000,'knowledge/mock','mock模拟接口',6,'/home/managementCenter/knowledge/mock'),(103004016,102007000,'knowledge/cache','浏览器缓存',6,'/home/managementCenter/knowledge/cache'),(103004017,102007000,'knowledge/axios','axios配置',6,'/home/managementCenter/knowledge/axios'),(103004018,102007000,'knowledge/relativePath','图片相对路径',6,'/home/managementCenter/knowledge/relativePath'),(103004019,102007000,'knowledge/vueMixin','mixins混合',6,'/home/managementCenter/knowledge/vueMixin'),(103004020,102007000,'knowledge/vueExtend/index','render动态渲染',6,'/home/managementCenter/knowledge/vueExtend/index'),(103004021,102007000,'knowledge/isLess','less预处理样式',6,'/home/managementCenter/knowledge/isLess'),(103004022,102007000,'knowledge/isSassScss','scss预处理样式',6,'/home/managementCenter/knowledge/isSassScss'),(103005000,102007000,'effect/download','下载',6,'/home/managementCenter/effect/download'),(103005002,102007000,'effect/field','字段变量',6,'/home/managementCenter/effect/field'),(103005003,102007000,'effect/backToTop','返回顶部',6,'/home/managementCenter/effect/backToTop'),(103005004,102007000,'effect/pagination','分页封装',6,'/home/managementCenter/effect/pagination'),(103005005,102007000,'effect/upload/index','上传图片',6,'/home/managementCenter/effect/upload/index'),(103005006,102007000,'effect/lazy','懒加载',6,'/home/managementCenter/effect/lazy'),(103005007,102007000,'effect/video','视频',6,'/home/managementCenter/effect/video'),(103005010,102007000,'effect/listener','浏览器监听',6,'/home/managementCenter/effect/listener'),(103005011,102007000,'effect/websocket','websocket',6,'/home/managementCenter/effect/websocket'),(103005012,102007000,'effect/windowTab','开新窗口',6,'/home/managementCenter/effect/windowTab'),(103005017,102007000,'effect/isAudio','音频',6,'/home/managementCenter/effect/isAudio'),(103005019,102007000,'effect/inputeCheck','表单校验',6,'/home/managementCenter/effect/inputeCheck'),(103006000,102007000,'plugin/copy','copy复制',6,'/home/managementCenter/plugin/copy'),(103006001,102007000,'plugin/vueqr','二维码',6,'/home/managementCenter/plugin/vueqr'),(103006002,102007000,'plugin/editor','富文本编辑器',6,'/home/managementCenter/plugin/editor'),(103006003,102007000,'plugin/guide/index','分步引导',6,'/home/managementCenter/plugin/guide/index'),(103006004,102007000,'plugin/screenfull','全屏',6,'/home/managementCenter/plugin/screenfull'),(103006005,102007000,'plugin/previewPictures','图片预览',6,'/home/managementCenter/plugin/previewPictures'),(103006006,102007000,'plugin/svgIcons','svg',6,'/home/managementCenter/plugin/svgIcons'),(103006007,102007000,'plugin/awesomeIcons','font-awesome',6,'/home/managementCenter/plugin/awesomeIcons'),(103007000,102007000,'reportForm/barLine','echart图表',6,'/home/managementCenter/reportForm/barLine'),(103008000,102007000,'animation/suspension','悬浮图片',6,'/home/managementCenter/animation/suspension'),(103009000,102007000,'expand/canvas','canvas',6,'/home/managementCenter/expand/canvas'),(103009001,102007000,'expand/base64','base64解密',6,'/home/managementCenter/expand/base64'),(103010000,102007000,'talk/talk1','面试要点1',6,'/home/managementCenter/talk/talk1'),(103999000,102007000,'/','默认重定向',-1,'/home/managementCenter/crux'),(201001000,0,'*','404',-1,'/404'),(201002000,0,'/','默认路由',-1,'/defaultPath'),(201004000,0,'/home',NULL,-1,'/home/index'),(202001000,201004000,'world/world','首页',-1,'/home/world/world'),(202002001,201004000,'season/tableEditor/crmTable','综合表格',-1,'/home/season/tableEditor/crmTable'),(202002002,201004000,'season/tableEditor/explainTable','table说明',-1,'/home/season/tableEditor/explainTable'),(202002003,201004000,'season/multilingual/index','多语言翻译',-1,'/home/season/multilingual/index'),(202002004,201004000,'season/activityCenter/activityCenter','活动管理',-1,'/home/season/activityCenter/activityCenter'),(202003000,201004000,'shopUnit/index','商品管理',-1,'/home/shopUnit/index'),(202004000,201004000,'customer/userField/userAccount','账号管理',-1,'/home/customer/userField/userAccount'),(202005000,201004000,'jurisdiction/role','角色列表',-1,'/home/jurisdiction/role'),(202005001,201004000,'jurisdiction/menu','菜单列表',-1,'/home/jurisdiction/menu'),(202006000,201004000,'system/initial','网站设置',-1,'/home/system/initial'),(202999000,201004000,'/','默认重定向',-1,'/home/world/world');
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

-- Dump completed on 2022-05-25  0:15:35
