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
INSERT INTO `goods` VALUES (1,'芒果','2022-02-08','/img/avatorImages/1648105932906enterprise@2x.png'),(2,'荔枝','2022-04-20',NULL),(3,'香蕉','2022-03-24',NULL),(4,'嘎嘎嘎','2022-03-23','88'),(8,'北岸1','2022-03-29','54');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
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
INSERT INTO `router` VALUES (101,0,'*','找不到该页',-1,'/404'),(102,0,'/','默认路由',-1,'/defaultPath'),(103,0,'/noPermission','无权限访问该页',-1,'/401'),(104,0,'/home','',-1,'/home/index'),(105,0,'/adaption','pc自适应',-1,'/home/managementCenter/effect/adaption'),(106,0,'/wave','水波',-1,'/home/managementCenter/effect/wave'),(108,0,'/line','线路检测',-1,'/login/line'),(109,0,'/register','注册',-1,'/register/index'),(110,0,'/game','游戏页',-1,'/game/index'),(111,0,'/neutralgear','加载中',-1,'/neutralGear/index'),(112,0,'/download','下载中心',-1,'/download/index'),(113,0,'/attachmentUpload','发票识别',-1,'/home/managementCenter/effect/attachmentUpload'),(114,0,'/openTab','浏览器新开窗口',-1,'/home/managementCenter/effect/openTab'),(115,0,'/priceManage','价格地图',-1,'/priceManage/index'),(116,0,'/vueForm','活动素材',-1,'/vueForm/index'),(117,0,'/vueForm2','活动素材',-1,'/vueForm/index2'),(118,0,'/formDesign','Schema生成器',-1,'/vueForm/formSchemaDesign/Editor'),(119,0,'/activityEditor','活动编辑器',-1,'/vueForm/activityEditor/Editor'),(201,104,'homeIndex','首页',0,'/home/homeIndex/index'),(202,104,'lottery','福气',1,'/home/lottery/index'),(203,104,'realPerson','真人',2,'/home/realPerson/index'),(204,104,'sports','体育',3,'/home/sports/index'),(205,104,'videoGame','电玩',4,'/home/videoGame/index'),(206,104,'agentSystem','代理',5,'/home/agentSystem/index'),(207,104,'managementCenter','',6,'/home/managementCenter/index'),(299,104,'/','默认重定向',-1,'/home/homeIndex'),(301,207,'crux','管理中心',6,'/home/managementCenter/crux'),(302,207,'tagStyle/css','样式',6,'/home/managementCenter/tagStyle/css'),(303,207,'tagStyle/tags','标签',6,'/home/managementCenter/tagStyle/tags'),(304,207,'tagStyle/flex','flex弹性布局',6,'/home/managementCenter/tagStyle/flex'),(305,207,'tagStyle/cssDemo','样式例子',6,'/home/managementCenter/tagStyle/cssDemo'),(306,207,'tagStyle/table','完整table',6,'/home/managementCenter/tagStyle/table'),(307,207,'tagStyle/cssDemo2','样式例子2',6,'/home/managementCenter/tagStyle/cssDemo2'),(308,207,'javaScript/isString','字符串',6,'/home/managementCenter/javaScript/isString'),(309,207,'javaScript/isObject','对象',6,'/home/managementCenter/javaScript/isObject'),(310,207,'javaScript/isArray','数组',6,'/home/managementCenter/javaScript/isArray'),(311,207,'javaScript/learn1','必学1',6,'/home/managementCenter/javaScript/learn1'),(312,207,'javaScript/learn2','必学2',6,'/home/managementCenter/javaScript/learn2'),(313,207,'javaScript/learn3','必学3',6,'/home/managementCenter/javaScript/learn3'),(314,207,'javaScript/processing','处理数据',6,'/home/managementCenter/javaScript/processing'),(315,207,'javaScript/es6','es6',6,'/home/managementCenter/javaScript/es6'),(316,207,'javaScript/jsDemo','js例子',6,'/home/managementCenter/javaScript/jsDemo'),(317,207,'javaScript/research','赋值-浅拷贝-深拷贝',6,'/home/managementCenter/javaScript/research'),(318,207,'javaScript/url_base64_blob','url_base64_blob',6,'/home/managementCenter/javaScript/url_base64_blob'),(319,207,'javaScript/isDate','时间日期',6,'/home/managementCenter/javaScript/isDate'),(320,207,'knowledge/v_tag','vue指令',6,'/home/managementCenter/knowledge/v_tag'),(321,207,'knowledge/modifier','vue修饰符',6,'/home/managementCenter/knowledge/modifier'),(322,207,'knowledge/lifeCycle','生命周期',6,'/home/managementCenter/knowledge/lifeCycle'),(323,207,'knowledge/vuex','vuex',6,'/home/managementCenter/knowledge/vuex'),(324,207,'knowledge/router','路由传参',6,'/home/managementCenter/knowledge/router'),(325,207,'knowledge/class','动态样式',6,'/home/managementCenter/knowledge/class'),(326,207,'knowledge/exportImport','导出与导入',6,'/home/managementCenter/knowledge/exportImport'),(327,207,'knowledge/parent','子父通讯',6,'/home/managementCenter/knowledge/parent'),(328,207,'knowledge/public','全局方法',6,'/home/managementCenter/knowledge/public'),(329,207,'knowledge/watch','watch监听',6,'/home/managementCenter/knowledge/watch'),(330,207,'knowledge/computed','computed',6,'/home/managementCenter/knowledge/computed'),(331,207,'knowledge/filters','filters过滤器',6,'/home/managementCenter/knowledge/filters'),(332,207,'knowledge/transition','transition动画',6,'/home/managementCenter/knowledge/transition'),(333,207,'knowledge/refs','refs操作Dom',6,'/home/managementCenter/knowledge/refs'),(334,207,'knowledge/mock','mock模拟接口',6,'/home/managementCenter/knowledge/mock'),(335,207,'knowledge/cache','浏览器缓存',6,'/home/managementCenter/knowledge/cache'),(336,207,'knowledge/axios','axios配置',6,'/home/managementCenter/knowledge/axios'),(337,207,'knowledge/relativePath','图片相对路径',6,'/home/managementCenter/knowledge/relativePath'),(338,207,'knowledge/vueMixin','mixins混合',6,'/home/managementCenter/knowledge/vueMixin'),(339,207,'knowledge/vueExtend','动态渲染组件',6,'/home/managementCenter/knowledge/vueExtend'),(340,207,'knowledge/isLess','less预处理样式',6,'/home/managementCenter/knowledge/isLess'),(341,207,'knowledge/isSassScss','scss预处理样式',6,'/home/managementCenter/knowledge/isSassScss'),(342,207,'effect/download','下载',6,'/home/managementCenter/effect/download'),(343,207,'effect/copy','copy复制',6,'/home/managementCenter/effect/copy'),(344,207,'effect/field','字段变量',6,'/home/managementCenter/effect/field'),(345,207,'effect/backToTop','返回顶部',6,'/home/managementCenter/effect/backToTop'),(346,207,'effect/pagination','分页封装',6,'/home/managementCenter/effect/pagination'),(347,207,'effect/upload','上传图片列表',6,'/home/managementCenter/effect/upload'),(348,207,'effect/upload1','单个上传图片',6,'/home/managementCenter/effect/upload1'),(349,207,'effect/lazy','懒加载',6,'/home/managementCenter/effect/lazy'),(350,207,'effect/video','视频',6,'/home/managementCenter/effect/video'),(351,207,'effect/editor','文本编辑器',6,'/home/managementCenter/effect/editor'),(352,207,'effect/vueqr','二维码',6,'/home/managementCenter/effect/vueqr'),(353,207,'effect/listener','浏览器监听',6,'/home/managementCenter/effect/listener'),(354,207,'effect/websocket','websocket',6,'/home/managementCenter/effect/websocket'),(355,207,'effect/windowTab','开新窗口',6,'/home/managementCenter/effect/windowTab'),(356,207,'effect/svgIcons','svg',6,'/home/managementCenter/effect/svgIcons'),(357,207,'effect/awesomeIcons','font-awesome',6,'/home/managementCenter/effect/awesomeIcons'),(358,207,'effect/guide','分步引导',6,'/home/managementCenter/effect/guide'),(359,207,'effect/screenfull','全屏',6,'/home/managementCenter/effect/screenfull'),(360,207,'effect/isAudio','音频',6,'/home/managementCenter/effect/isAudio'),(361,207,'effect/previewPictures','图片预览',6,'/home/managementCenter/effect/previewPictures'),(362,207,'effect/inputeCheck','表单校验',6,'/home/managementCenter/effect/inputeCheck'),(363,207,'effect/customAvatar','头像上传裁切',6,'/home/managementCenter/effect/customAvatar'),(364,207,'effect/suspension','悬浮图片',6,'/home/managementCenter/effect/suspension'),(365,207,'reportForm/demo1','echart图表',6,'/home/managementCenter/reportForm/demo1'),(366,207,'expand/canvas','canvas',6,'/home/managementCenter/expand/canvas'),(367,207,'expand/base64','base64解密',6,'/home/managementCenter/expand/base64'),(368,207,'talk/talk1','面试要点1',6,'/home/managementCenter/talk/talk1'),(399,207,'/','默认重定向',-1,'/home/managementCenter/crux');
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
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `phone_num` char(15) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `email` char(30) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `birth` date DEFAULT NULL COMMENT '生日',
  `introduction` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '介绍',
  `location` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '哪里人',
  `avator` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '头像',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `perms` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限',
  `roleName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'rafael','123456',0,'17817836866','1456300075@qq.com','2022-03-10','噢耶','广东',NULL,'2022-03-25 22:44:28','2022-03-25 22:46:53','user:add',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 16:47:46
