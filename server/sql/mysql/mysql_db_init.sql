-- MySQL dump 10.13  Distrib 8.0.11, for Linux (x86_64)
--
-- Host: localhost    Database: ipsm_dba
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_client_service`
--

DROP TABLE IF EXISTS `auth_client_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_client_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178295930045` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_client_service`
--

LOCK TABLES `auth_client_service` WRITE;
/*!40000 ALTER TABLE `auth_client_service` DISABLE KEYS */;
INSERT INTO `auth_client_service` VALUES (1,'3','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'2','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'2','3',NULL,'2017-12-31 00:58:03','null','null','null',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'1','7',NULL,'2018-11-15 11:50:50','9','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'2','7',NULL,'2018-11-15 11:50:50','9','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'3','7',NULL,'2018-11-15 11:50:50','9','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'7','7',NULL,'2018-11-15 11:50:50','9','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `auth_client_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_element`
--

DROP TABLE IF EXISTS `base_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178345917581` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_element`
--

LOCK TABLES `base_element` WRITE;
/*!40000 ALTER TABLE `base_element` DISABLE KEYS */;
INSERT INTO `base_element` VALUES (4,'menuManager:element','uri','按钮页面','/admin/element','6',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'menuManager:btn_add','button','新增','/admin/menu/{*}','6',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'menuManager:btn_edit','button','编辑','/admin/menu/{*}','6','','','PUT','','2017-06-23 16:00:00','','','','','','','','','','',''),(7,'menuManager:btn_del','button','删除','/admin/menu/{*}','6','','','DELETE','','2017-06-23 16:00:00','','','','','','','','','','',''),(8,'menuManager:btn_element_add','button','新增元素','/admin/element','6',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'menuManager:btn_element_edit','button','编辑元素','/admin/element/{*}','6',NULL,NULL,'PUT','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'menuManager:btn_element_del','button','删除元素','/admin/element/{*}','6',NULL,NULL,'DELETE','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'groupManager:btn_edit','button','编辑','/admin/group/{*}','7',NULL,NULL,'PUT','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'groupManager:btn_userManager','button','分配用户','/admin/group/{*}/user','7',NULL,NULL,'PUT','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'groupManager:btn_resourceManager','button','分配权限','/admin/group/{*}/authority','7',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'groupManager:menu','uri','分配菜单','/admin/group/{*}/authority/menu','7',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'groupManager:element','uri','分配资源','/admin/group/{*}/authority/element','7',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'menuManager:view','uri','查看','/admin/menu/{*}','6','','','GET','','2017-06-25 16:00:00','','','','','','','','','','',''),(20,'menuManager:element_view','uri','查看','/admin/element/{*}','6',NULL,NULL,'GET',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'groupTypeManager:view','uri','查看','/admin/groupType/{*}','8',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'groupTypeManager:btn_add','button','新增','/admin/groupType','8',NULL,NULL,'POST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'groupTypeManager:btn_edit','button','编辑','/admin/groupType/{*}','8',NULL,NULL,'PUT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'groupTypeManager:btn_del','button','删除','/admin/groupType/{*}','8',NULL,NULL,'DELETE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'serviceManager:view','URI','查看','/auth/service/{*}','10',NULL,NULL,'GET',NULL,'2017-12-26 12:17:42','1','Mr.AG','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'serviceManager:btn_add','button','新增','/auth/service','10',NULL,NULL,'POST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'serviceManager:btn_edit','button','编辑','/auth/service/{*}','10',NULL,NULL,'PUT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'serviceManager:btn_del','button','删除','/auth/service/{*}','10',NULL,NULL,'DELETE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'serviceManager:btn_clientManager','button','服务授权','/auth/service/{*}/client','10',NULL,NULL,'POST',NULL,'2017-12-30 08:32:48','1','Mr.AG','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'home','uri','查看','home/','16',NULL,NULL,'GET',NULL,'2018-11-08 09:50:05','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'userManager:btn_add','button','添加','','1',NULL,NULL,'POST','','2020-09-17 01:31:03','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_group`
--

DROP TABLE IF EXISTS `base_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `group_type` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` timestamp NULL DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178352287356` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_group`
--

LOCK TABLES `base_group` WRITE;
/*!40000 ALTER TABLE `base_group` DISABLE KEYS */;
INSERT INTO `base_group` VALUES (7,'financeDepart','财务部',6,'/company/financeDepart',NULL,2,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'hrDepart','人力资源部',6,'/company/hrDepart',NULL,2,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'admin','管理员',-1,NULL,NULL,1,'管理员','2020-09-16 08:52:18','1','admin','127.0.0.1','2020-09-16 08:52:18','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'youke','游客',-1,NULL,NULL,1,'aaa','2020-10-26 08:10:37','1','admin','127.0.0.1','2020-10-26 08:10:37','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_group_leader`
--

DROP TABLE IF EXISTS `base_group_leader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_group_leader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` timestamp NULL DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178357041319` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_group_leader`
--

LOCK TABLES `base_group_leader` WRITE;
/*!40000 ALTER TABLE `base_group_leader` DISABLE KEYS */;
INSERT INTO `base_group_leader` VALUES (32,4,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,3,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,9,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_group_leader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_group_member`
--

DROP TABLE IF EXISTS `base_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_group_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` timestamp NULL DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178361150862` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_group_member`
--

LOCK TABLES `base_group_member` WRITE;
/*!40000 ALTER TABLE `base_group_member` DISABLE KEYS */;
INSERT INTO `base_group_member` VALUES (54,4,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,3,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,1,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,9,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_group_type`
--

DROP TABLE IF EXISTS `base_group_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_group_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` timestamp NULL DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178366074910` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_group_type`
--

LOCK TABLES `base_group_type` WRITE;
/*!40000 ALTER TABLE `base_group_type` DISABLE KEYS */;
INSERT INTO `base_group_type` VALUES (1,'role','角色类型','role',NULL,NULL,NULL,NULL,'2017-08-25 09:52:37','1','Mr.AG','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'depart','部门类型','部门类型',NULL,NULL,NULL,NULL,'2020-08-01 11:25:34','1','Mr.AG','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'free','自定义类型','sadf',NULL,NULL,NULL,NULL,'2017-08-26 00:22:25','1','Mr.AG','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_group_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_menu`
--

DROP TABLE IF EXISTS `base_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `href` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `type` char(10) DEFAULT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  `enabled` char(1) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` timestamp NULL DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178377753991` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_menu`
--

LOCK TABLES `base_menu` WRITE;
/*!40000 ALTER TABLE `base_menu` DISABLE KEYS */;
INSERT INTO `base_menu` VALUES (1,'userManager','用户管理',5,'com.epri.fx.client.gui.uicomponents.admin.user.UserManagementController','yonghuguanli_huaban','menu',11,'','/adminSys/baseManager/userManager',NULL,'2020-10-14 07:59:15','1','admin','127.0.0.1','2020-10-14 07:59:15','1','admin','127.0.0.1','admin/user/index',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'baseManager','基础配置管理',13,'/admin','jichupeizhi','dirt',2,'','/adminSys/baseManager',NULL,'2020-10-14 08:15:25','1','admin','127.0.0.1','2020-10-14 08:15:25','1','admin','127.0.0.1','Layout',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'menuManager','菜单管理',5,'com.epri.fx.client.gui.uicomponents.admin.menu.MenuManagementController','jiaoyixulie','menu',12,'你大爷','/adminSys/baseManager/menuManager',NULL,'2020-09-18 08:53:22','1','admin','127.0.0.1','2020-09-18 08:53:22','1','admin','127.0.0.1','admin/menu/index',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'groupManager','角色权限管理',5,'com.epri.fx.client.gui.uicomponents.admin.group.GroupManagementController','gongnengjiaosequanxianguanli','menu',13,'','/adminSys/baseManager/groupManager',NULL,'2020-08-20 07:45:42','1','admin','127.0.0.1','2020-08-20 07:45:42','1','admin','127.0.0.1','admin/group/index',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'groupTypeManager','角色类型管理',5,'com.epri.fx.client.gui.uicomponents.admin.grouptype.GroupTypeManagementController','jiaoseleixing','menu',14,'','/adminSys/baseManager/groupTypeManager',NULL,'2020-08-20 07:45:49','1','admin','127.0.0.1','2020-08-20 07:45:49','1','admin','127.0.0.1','admin/groupType/index',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'adminSys','系统菜单',-1,'/base','align-justify','dirt',0,'','/adminSys',NULL,'2020-08-02 10:39:35','1','admin','127.0.0.1','2020-08-02 10:39:35','1','admin','127.0.0.1','Layout',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'gateLogManager','操作日志',5,'/admin/gateLog','caozuorizhi','menu',15,'','/adminSys/baseManager/gateLogManager',NULL,'2020-08-20 07:45:55','1','admin','127.0.0.1','2020-08-20 07:45:55','1','admin','127.0.0.1','admin/gateLog/index',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'home','主页',13,'com.epri.fx.client.gui.uicomponents.home.HomeController','home-outline',NULL,0,'','com.epri.fx.client.gui.uicomponents.home.HomeController',NULL,'2020-08-03 07:51:48','1','admin','127.0.0.1','2020-08-03 07:51:48','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'baseInfo','基础信息录入',13,'','jichuxinxi',NULL,1,'基础信息录入',NULL,NULL,'2020-10-14 09:20:25','1','admin','127.0.0.1','2020-10-14 09:20:25','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'base','基础参数',45,'com.epri.fx.client.gui.uicomponents.basicInfo.BasicDataSetController','jichucanshu',NULL,0,'',NULL,NULL,'2020-10-14 09:20:04','1','admin','127.0.0.1','2020-10-14 09:20:04','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'','煤价差',45,'com.epri.fx.client.gui.uicomponents.basicInfo.CoalPriceDiffController','Energy-',NULL,1,'',NULL,NULL,'2020-10-14 09:19:47','1','admin','127.0.0.1','2020-10-14 09:19:47','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'','铁路成本',45,'com.epri.fx.client.gui.uicomponents.basicInfo.RailwayCostController','tieluyunshu',NULL,2,'',NULL,NULL,'2020-10-14 09:20:41','1','admin','127.0.0.1','2020-10-14 09:20:41','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'','现行运价',45,'com.epri.fx.client.gui.uicomponents.basicInfo.CurrentFreightController','hangzheng',NULL,3,'',NULL,NULL,'2020-10-14 09:21:09','1','admin','127.0.0.1','2020-10-14 09:21:09','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_resource_authority`
--

DROP TABLE IF EXISTS `base_resource_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_resource_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority_id` varchar(255) DEFAULT NULL,
  `authority_type` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178383042404` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2347 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_resource_authority`
--

LOCK TABLES `base_resource_authority` WRITE;
/*!40000 ALTER TABLE `base_resource_authority` DISABLE KEYS */;
INSERT INTO `base_resource_authority` VALUES (2165,'1','group','1','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2166,'1','group','5','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2167,'1','group','4','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2168,'1','group','5','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2169,'1','group','6','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2170,'1','group','7','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2171,'1','group','8','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2172,'1','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2173,'1','group','10','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2174,'1','group','19','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2175,'1','group','20','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2176,'1','group','6','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2177,'1','group','11','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2178,'1','group','12','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2179,'1','group','13','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2180,'1','group','14','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2181,'1','group','15','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2182,'1','group','16','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2183,'1','group','17','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2184,'1','group','21','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2185,'1','group','26','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2186,'1','group','7','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2187,'1','group','22','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2188,'1','group','23','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2189,'1','group','24','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2190,'1','group','25','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2191,'1','group','8','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2192,'1','group','27','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2193,'1','group','44','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2316,'9','group','37','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2317,'9','group','1','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2318,'9','group','5','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2319,'9','group','4','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2320,'9','group','5','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2321,'9','group','6','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2322,'9','group','7','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2323,'9','group','8','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2324,'9','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2325,'9','group','10','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2326,'9','group','19','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2327,'9','group','20','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2328,'9','group','6','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2329,'9','group','12','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2330,'9','group','14','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2331,'9','group','15','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2332,'9','group','16','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2333,'9','group','17','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2334,'9','group','7','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2335,'9','group','22','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2336,'9','group','23','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2337,'9','group','24','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2338,'9','group','25','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2339,'9','group','8','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2340,'9','group','27','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2341,'9','group','44','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2342,'9','group','45','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2343,'9','group','46','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2344,'9','group','47','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2345,'9','group','48','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2346,'9','group','49','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_resource_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_rsa_key`
--

DROP TABLE IF EXISTS `base_rsa_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_rsa_key` (
  `rsa_key` varchar(200) NOT NULL,
  `key_value` varchar(2000) NOT NULL,
  PRIMARY KEY (`rsa_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_rsa_key`
--

LOCK TABLES `base_rsa_key` WRITE;
/*!40000 ALTER TABLE `base_rsa_key` DISABLE KEYS */;
INSERT INTO `base_rsa_key` VALUES ('IPSM:AUTH:JWT:PRI','MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAIaPvusxk+x8KcVONjFUo+ursfLx\nSwOIvci5q0xPa+nUm3C0uu3jX1RQP+s3hWqCb7KgR67HDcZUS8bn2pNzJJWJ352lrpVrb1wftOot\nmrWPhnrdr9sdcgE2pLV8HAy18pq+agXmjWnkf+T558zo5k3I8VBVcTfzsL6HLc5mFt/dAgMBAAEC\ngYAYkZpsWwsFPM5rphIjA69CUoEVOJVXudndEnmCX2X2tckD1RvkX4WCYXyqN+L2RYabeMRd1x5e\nvflwAdlY3sco+otA0Ld9vP9yadlbfjuxzA8XyuvomaZPeJjMxL3dZnEvy29SMkNx3358ILp3BwGg\ne16GYPNZAjbB9fF+9YcggQJBAMs67m65cu2/h9Fe8+kevU32VVF6WZ3+506tYJFmsEbNILp+HFMK\nyp/OXX5DIMJIVA5f9ZYzG9GIgyaNMaKaFlECQQCpgEkflrwhwMkyOqJ0bJDB6GDk6iql2onR4bzF\n2sExbwYh5FjKdSQay+UIvrxLDvJOHyiySKL3rHxQggrgtbHNAkBVfQSvLvNZbygCup5/gZ7AHM7m\n50CrZX6HagclIr0kC0WpLUNc6z0w2+4YHsS49RPmuBbmh7k7+uCwZtRqQccBAkAeFunkM6v+Ce0t\nf38rT8J6ybe5q2AaxSrGGV6bePPmxKDAD3s7pYPdRejInqNqZ6LX/2wICiDz+qiu2gb4UQjZAkAx\nRtRw7QzNu/5aLnU5pxdD33lE+fubQSkq17y3JfeLO2/HsIl0BnKUQGg4TaKpYOaEoHZpgyd2pwlm\nUuNuRalU\n'),('IPSM:AUTH:JWT:PUB','MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGj77rMZPsfCnFTjYxVKPrq7Hy8UsDiL3IuatM\nT2vp1JtwtLrt419UUD/rN4Vqgm+yoEeuxw3GVEvG59qTcySVid+dpa6Va29cH7TqLZq1j4Z63a/b\nHXIBNqS1fBwMtfKavmoF5o1p5H/k+efM6OZNyPFQVXE387C+hy3OZhbf3QIDAQAB\n');
/*!40000 ALTER TABLE `base_rsa_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_user`
--

DROP TABLE IF EXISTS `base_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `base_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `tel_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_user`
--

LOCK TABLES `base_user` WRITE;
/*!40000 ALTER TABLE `base_user` DISABLE KEYS */;
INSERT INTO `base_user` VALUES (1,'admin','$2a$12$/Xa6YcdVm387zA.EE/6xce11UX.AZBiwerBztXLAVBMhVKQ/pZfNW','liwen','',NULL,'',NULL,'','男',NULL,NULL,'','2020-09-10 16:58:10','1','admin','127.0.0.1','2020-10-28 10:08:32','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'blog','$2a$12$oAXfILUbaRuD.ccalygnSeGvgg0MKkg9IqKHaYEf.rEtppqB67lrS','Mr.Liwen(博主)','',NULL,'',NULL,'','男',NULL,NULL,'12','2020-10-22 09:51:08','1','admin','127.0.0.1','2020-10-22 09:51:08','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'test','$2a$12$OjXths1o8rJ3oGykW3yQyuDokbZqMUlp2KXNfgYA2IObA8HVqXlJK','test',NULL,NULL,NULL,NULL,NULL,'男',NULL,NULL,'test','2020-08-03 16:48:49','1','admin','127.0.0.1','2020-08-04 17:17:42','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'liwen','$2a$12$oU7IR69sZ7.9ro.rgaAvDugdH8vLpOajI9d/hRvBTc14nPIMqRHbi','liwen',NULL,NULL,NULL,NULL,NULL,'男',NULL,NULL,'admin','2020-11-25 02:37:33','1','admin','127.0.0.1','2020-11-25 02:37:33','1','admin','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gate_log`
--

DROP TABLE IF EXISTS `gate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) DEFAULT NULL,
  `opt` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `crt_time` timestamp NULL DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178398875749` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gate_log`
--

LOCK TABLES `gate_log` WRITE;
/*!40000 ALTER TABLE `gate_log` DISABLE KEYS */;
INSERT INTO `gate_log` VALUES (23,'用户管理','删除','/admin/user/{*}','2018-11-16 06:33:52','9','admin','/127.0.0.1:53169'),(24,'用户管理','编辑','/admin/user/{*}','2018-11-16 06:35:39','9','admin','/127.0.0.1:53169'),(25,'用户管理','编辑','/admin/user/{*}','2018-11-16 06:36:44','9','admin','/127.0.0.1:53169'),(26,'用户管理','编辑','/admin/user/{*}','2018-11-16 06:39:28','9','admin','/127.0.0.1:53169'),(27,'用户管理','编辑','/admin/user/{*}','2018-11-16 06:40:56','9','admin','/127.0.0.1:53169'),(28,'用户管理','编辑','/admin/user/{*}','2018-11-16 06:42:25','9','admin','/127.0.0.1:53169'),(29,'用户管理','编辑','/admin/user/{*}','2018-11-16 06:43:54','9','admin','/127.0.0.1:53169'),(30,'角色类型管理','删除','/admin/groupType/{*}','2018-11-16 07:17:57','9','admin','/127.0.0.1:54049'),(31,'角色类型管理','删除','/admin/groupType/{*}','2018-11-16 07:17:58','9','admin','/127.0.0.1:54049'),(32,'角色权限管理','分配资源','/admin/group/{*}/authority/element','2018-11-16 07:40:51','9','admin','/127.0.0.1:54428'),(33,'角色权限管理','分配资源','/admin/group/{*}/authority/element','2018-11-16 07:40:52','9','admin','/127.0.0.1:54428'),(34,'角色权限管理','分配资源','/admin/group/{*}/authority/element','2018-11-16 07:40:53','9','admin','/127.0.0.1:54428'),(35,'角色权限管理','分配资源','/admin/group/{*}/authority/element','2018-11-16 07:40:54','9','admin','/127.0.0.1:54428'),(36,'角色权限管理','分配资源','/admin/group/{*}/authority/element','2018-11-16 07:40:55','9','admin','/127.0.0.1:54428'),(37,'角色权限管理','分配资源','/admin/group/{*}/authority/element','2018-11-16 07:40:57','9','admin','/127.0.0.1:54428'),(38,'角色权限管理','分配菜单','/admin/group/{*}/authority/menu','2018-11-16 07:41:54','9','admin','/127.0.0.1:54428'),(39,'角色类型管理','新增','/admin/groupType','2018-11-16 07:43:08','9','admin','/127.0.0.1:54454'),(40,'角色权限管理','新增','/admin/group','2018-11-16 07:52:53','9','admin','/127.0.0.1:54780'),(41,'角色权限管理','新增','/admin/group','2018-11-16 07:53:18','9','admin','/127.0.0.1:54780'),(42,'角色类型管理','删除','/admin/groupType/{*}','2018-11-16 07:59:20','9','admin','/127.0.0.1:54909'),(43,'菜单管理','编辑','/admin/menu/{*}','2018-11-21 03:02:49','9','admin','/127.0.0.1:56699'),(44,'菜单管理','编辑','/admin/menu/{*}','2018-11-21 03:03:03','9','admin','/127.0.0.1:56699'),(45,'菜单管理','编辑','/admin/menu/{*}','2018-11-21 03:03:18','9','admin','/127.0.0.1:56699'),(46,'菜单管理','编辑','/admin/menu/{*}','2018-11-21 03:04:27','9','admin','/127.0.0.1:56747'),(47,'菜单管理','编辑','/admin/menu/{*}','2018-11-21 03:04:53','9','admin','/127.0.0.1:56747'),(48,'菜单管理','编辑','/admin/menu/{*}','2018-11-21 03:05:06','9','admin','/127.0.0.1:56747'),(49,'角色权限管理','分配资源','/admin/group/{*}/authority/element','2018-11-29 02:29:00','9','admin','/127.0.0.1:53564'),(50,'角色权限管理','分配菜单','/admin/group/{*}/authority/menu','2018-11-29 02:29:05','9','admin','/127.0.0.1:53564'),(51,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:29:56','9','admin','/127.0.0.1:53611'),(52,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:34:34','9','admin','/127.0.0.1:53688'),(53,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:37:14','9','admin','/127.0.0.1:53745'),(54,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:37:16','9','admin','/127.0.0.1:53745'),(55,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:37:17','9','admin','/127.0.0.1:53745'),(56,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:37:33','9','admin','/127.0.0.1:53745'),(57,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:38:27','9','admin','/127.0.0.1:53745'),(58,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:39:24','9','admin','/127.0.0.1:53745'),(59,'用户管理','编辑','/admin/user/{*}','2018-11-29 02:39:48','9','admin','/127.0.0.1:53745');
/*!40000 ALTER TABLE `gate_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-05 21:27:31
