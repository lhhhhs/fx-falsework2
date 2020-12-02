/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80022
Source Host           : localhost:3306
Source Database       : ipsm_dba

Target Server Type    : MYSQL
Target Server Version : 80022
File Encoding         : 65001

Date: 2020-12-02 15:50:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_client_service
-- ----------------------------
DROP TABLE IF EXISTS `auth_client_service`;
CREATE TABLE `auth_client_service` (
  `id` int NOT NULL AUTO_INCREMENT,
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

-- ----------------------------
-- Records of auth_client_service
-- ----------------------------
INSERT INTO `auth_client_service` VALUES ('1', '3', '1', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `auth_client_service` VALUES ('2', '2', '1', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `auth_client_service` VALUES ('3', '2', '3', null, '2017-12-31 08:58:03', 'null', 'null', 'null', null, null, null, null, null, null, null, null);
INSERT INTO `auth_client_service` VALUES ('16', '1', '7', null, '2018-11-15 19:50:50', '9', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `auth_client_service` VALUES ('17', '2', '7', null, '2018-11-15 19:50:50', '9', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `auth_client_service` VALUES ('18', '3', '7', null, '2018-11-15 19:50:50', '9', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `auth_client_service` VALUES ('19', '7', '7', null, '2018-11-15 19:50:50', '9', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_element
-- ----------------------------
DROP TABLE IF EXISTS `base_element`;
CREATE TABLE `base_element` (
  `id` int NOT NULL AUTO_INCREMENT,
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

-- ----------------------------
-- Records of base_element
-- ----------------------------
INSERT INTO `base_element` VALUES ('4', 'menuManager:element', 'uri', '按钮页面', '/admin/element', '6', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('5', 'menuManager:btn_add', 'button', '新增', '/admin/menu/{*}', '6', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('6', 'menuManager:btn_edit', 'button', '编辑', '/admin/menu/{*}', '6', '', '', 'PUT', '', '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('7', 'menuManager:btn_del', 'button', '删除', '/admin/menu/{*}', '6', '', '', 'DELETE', '', '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('8', 'menuManager:btn_element_add', 'button', '新增元素', '/admin/element', '6', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('9', 'menuManager:btn_element_edit', 'button', '编辑元素', '/admin/element/{*}', '6', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('10', 'menuManager:btn_element_del', 'button', '删除元素', '/admin/element/{*}', '6', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('12', 'groupManager:btn_edit', 'button', '编辑', '/admin/group/{*}', '7', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('14', 'groupManager:btn_userManager', 'button', '分配用户', '/admin/group/{*}/user', '7', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('15', 'groupManager:btn_resourceManager', 'button', '分配权限', '/admin/group/{*}/authority', '7', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('16', 'groupManager:menu', 'uri', '分配菜单', '/admin/group/{*}/authority/menu', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('17', 'groupManager:element', 'uri', '分配资源', '/admin/group/{*}/authority/element', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('19', 'menuManager:view', 'uri', '查看', '/admin/menu/{*}', '6', '', '', 'GET', '', '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('20', 'menuManager:element_view', 'uri', '查看', '/admin/element/{*}', '6', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('22', 'groupTypeManager:view', 'uri', '查看', '/admin/groupType/{*}', '8', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('23', 'groupTypeManager:btn_add', 'button', '新增', '/admin/groupType', '8', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('24', 'groupTypeManager:btn_edit', 'button', '编辑', '/admin/groupType/{*}', '8', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('25', 'groupTypeManager:btn_del', 'button', '删除', '/admin/groupType/{*}', '8', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('27', 'serviceManager:view', 'URI', '查看', '/auth/service/{*}', '10', null, null, 'GET', null, '2017-12-26 20:17:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('28', 'serviceManager:btn_add', 'button', '新增', '/auth/service', '10', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('29', 'serviceManager:btn_edit', 'button', '编辑', '/auth/service/{*}', '10', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('30', 'serviceManager:btn_del', 'button', '删除', '/auth/service/{*}', '10', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('31', 'serviceManager:btn_clientManager', 'button', '服务授权', '/auth/service/{*}/client', '10', null, null, 'POST', null, '2017-12-30 16:32:48', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('34', 'home', 'uri', '查看', 'home/', '16', null, null, 'GET', null, '2018-11-08 17:50:05', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('37', 'userManager:btn_add', 'button', '添加', '', '1', null, null, 'POST', '', '2020-09-17 09:31:03', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_group
-- ----------------------------
DROP TABLE IF EXISTS `base_group`;
CREATE TABLE `base_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int NOT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `group_type` int NOT NULL,
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

-- ----------------------------
-- Records of base_group
-- ----------------------------
INSERT INTO `base_group` VALUES ('7', 'financeDepart', '财务部', '6', '/company/financeDepart', null, '2', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('8', 'hrDepart', '人力资源部', '6', '/company/hrDepart', null, '2', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('9', 'admin', '管理员', '-1', null, null, '1', '管理员', '2020-09-16 16:52:18', '1', 'admin', '127.0.0.1', '2020-09-16 16:52:18', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('10', 'youke', '游客', '-1', null, null, '1', 'aaa', '2020-10-26 16:10:37', '1', 'admin', '127.0.0.1', '2020-10-26 16:10:37', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_group_leader
-- ----------------------------
DROP TABLE IF EXISTS `base_group_leader`;
CREATE TABLE `base_group_leader` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
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

-- ----------------------------
-- Records of base_group_leader
-- ----------------------------
INSERT INTO `base_group_leader` VALUES ('32', '4', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_leader` VALUES ('35', '3', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_leader` VALUES ('36', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_leader` VALUES ('37', '9', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_group_member
-- ----------------------------
DROP TABLE IF EXISTS `base_group_member`;
CREATE TABLE `base_group_member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
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

-- ----------------------------
-- Records of base_group_member
-- ----------------------------
INSERT INTO `base_group_member` VALUES ('54', '4', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('57', '3', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('58', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('59', '1', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('60', '1', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('61', '9', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_group_type
-- ----------------------------
DROP TABLE IF EXISTS `base_group_type`;
CREATE TABLE `base_group_type` (
  `id` int NOT NULL AUTO_INCREMENT,
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

-- ----------------------------
-- Records of base_group_type
-- ----------------------------
INSERT INTO `base_group_type` VALUES ('1', 'role', '角色类型', 'role', null, null, null, null, '2017-08-25 17:52:37', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('2', 'depart', '部门类型', '部门类型', null, null, null, null, '2020-08-01 19:25:34', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('3', 'free', '自定义类型', 'sadf', null, null, null, null, '2017-08-26 08:22:25', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int NOT NULL,
  `href` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `type` char(10) DEFAULT NULL,
  `order_num` int NOT NULL DEFAULT '0',
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

-- ----------------------------
-- Records of base_menu
-- ----------------------------
INSERT INTO `base_menu` VALUES ('1', 'userManager', '用户管理', '5', 'com.epri.fx.client.gui.uicomponents.admin.user.UserManagementController', 'yonghuguanli_huaban', 'menu', '11', '', '/adminSys/baseManager/userManager', null, '2020-10-14 15:59:15', '1', 'admin', '127.0.0.1', '2020-10-14 15:59:15', '1', 'admin', '127.0.0.1', 'admin/user/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('5', 'baseManager', '基础配置管理', '13', '/admin', 'jichupeizhi', 'dirt', '2', '', '/adminSys/baseManager', null, '2020-10-14 16:15:25', '1', 'admin', '127.0.0.1', '2020-10-14 16:15:25', '1', 'admin', '127.0.0.1', 'Layout', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('6', 'menuManager', '菜单管理', '5', 'com.epri.fx.client.gui.uicomponents.admin.menu.MenuManagementController', 'jiaoyixulie', 'menu', '12', '你大爷', '/adminSys/baseManager/menuManager', null, '2020-09-18 16:53:22', '1', 'admin', '127.0.0.1', '2020-09-18 16:53:22', '1', 'admin', '127.0.0.1', 'admin/menu/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('7', 'groupManager', '角色权限管理', '5', 'com.epri.fx.client.gui.uicomponents.admin.group.GroupManagementController', 'gongnengjiaosequanxianguanli', 'menu', '13', '', '/adminSys/baseManager/groupManager', null, '2020-08-20 15:45:42', '1', 'admin', '127.0.0.1', '2020-08-20 15:45:42', '1', 'admin', '127.0.0.1', 'admin/group/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('8', 'groupTypeManager', '角色类型管理', '5', 'com.epri.fx.client.gui.uicomponents.admin.grouptype.GroupTypeManagementController', 'jiaoseleixing', 'menu', '14', '', '/adminSys/baseManager/groupTypeManager', null, '2020-08-20 15:45:49', '1', 'admin', '127.0.0.1', '2020-08-20 15:45:49', '1', 'admin', '127.0.0.1', 'admin/groupType/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('13', 'adminSys', '系统菜单', '-1', '/base', 'align-justify', 'dirt', '0', '', '/adminSys', null, '2020-08-02 18:39:35', '1', 'admin', '127.0.0.1', '2020-08-02 18:39:35', '1', 'admin', '127.0.0.1', 'Layout', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('27', 'gateLogManager', '操作日志', '5', '/admin/gateLog', 'caozuorizhi', 'menu', '15', '', '/adminSys/baseManager/gateLogManager', null, '2020-08-20 15:45:55', '1', 'admin', '127.0.0.1', '2020-08-20 15:45:55', '1', 'admin', '127.0.0.1', 'admin/gateLog/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('44', 'home', '主页', '13', 'com.epri.fx.client.gui.uicomponents.home.HomeController', 'home-outline', null, '0', '', 'com.epri.fx.client.gui.uicomponents.home.HomeController', null, '2020-08-03 15:51:48', '1', 'admin', '127.0.0.1', '2020-08-03 15:51:48', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('45', 'baseInfo', '基础信息录入', '13', '', 'jichuxinxi', null, '1', '基础信息录入', null, null, '2020-10-14 17:20:25', '1', 'admin', '127.0.0.1', '2020-10-14 17:20:25', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('46', 'base', '基础参数', '45', 'com.epri.fx.client.gui.uicomponents.basicInfo.BasicDataSetController', 'jichucanshu', null, '0', '', null, null, '2020-10-14 17:20:04', '1', 'admin', '127.0.0.1', '2020-10-14 17:20:04', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('47', '', '煤价差', '45', 'com.epri.fx.client.gui.uicomponents.basicInfo.CoalPriceDiffController', 'Energy-', null, '1', '', null, null, '2020-10-14 17:19:47', '1', 'admin', '127.0.0.1', '2020-10-14 17:19:47', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('48', '', '铁路成本', '45', 'com.epri.fx.client.gui.uicomponents.basicInfo.RailwayCostController', 'tieluyunshu', null, '2', '', null, null, '2020-10-14 17:20:41', '1', 'admin', '127.0.0.1', '2020-10-14 17:20:41', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('49', '', '现行运价', '45', 'com.epri.fx.client.gui.uicomponents.basicInfo.CurrentFreightController', 'hangzheng', null, '3', '', null, null, '2020-10-14 17:21:09', '1', 'admin', '127.0.0.1', '2020-10-14 17:21:09', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_resource_authority
-- ----------------------------
DROP TABLE IF EXISTS `base_resource_authority`;
CREATE TABLE `base_resource_authority` (
  `id` int NOT NULL AUTO_INCREMENT,
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

-- ----------------------------
-- Records of base_resource_authority
-- ----------------------------
INSERT INTO `base_resource_authority` VALUES ('2165', '1', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2166', '1', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2167', '1', 'group', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2168', '1', 'group', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2169', '1', 'group', '6', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2170', '1', 'group', '7', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2171', '1', 'group', '8', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2172', '1', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2173', '1', 'group', '10', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2174', '1', 'group', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2175', '1', 'group', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2176', '1', 'group', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2177', '1', 'group', '11', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2178', '1', 'group', '12', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2179', '1', 'group', '13', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2180', '1', 'group', '14', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2181', '1', 'group', '15', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2182', '1', 'group', '16', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2183', '1', 'group', '17', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2184', '1', 'group', '21', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2185', '1', 'group', '26', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2186', '1', 'group', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2187', '1', 'group', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2188', '1', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2189', '1', 'group', '24', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2190', '1', 'group', '25', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2191', '1', 'group', '8', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2192', '1', 'group', '27', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2193', '1', 'group', '44', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2316', '9', 'group', '37', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2317', '9', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2318', '9', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2319', '9', 'group', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2320', '9', 'group', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2321', '9', 'group', '6', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2322', '9', 'group', '7', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2323', '9', 'group', '8', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2324', '9', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2325', '9', 'group', '10', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2326', '9', 'group', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2327', '9', 'group', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2328', '9', 'group', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2329', '9', 'group', '12', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2330', '9', 'group', '14', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2331', '9', 'group', '15', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2332', '9', 'group', '16', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2333', '9', 'group', '17', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2334', '9', 'group', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2335', '9', 'group', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2336', '9', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2337', '9', 'group', '24', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2338', '9', 'group', '25', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2339', '9', 'group', '8', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2340', '9', 'group', '27', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2341', '9', 'group', '44', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2342', '9', 'group', '45', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2343', '9', 'group', '46', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2344', '9', 'group', '47', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2345', '9', 'group', '48', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2346', '9', 'group', '49', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_rsa_key
-- ----------------------------
DROP TABLE IF EXISTS `base_rsa_key`;
CREATE TABLE `base_rsa_key` (
  `rsa_key` varchar(200) NOT NULL,
  `key_value` varchar(2000) NOT NULL,
  PRIMARY KEY (`rsa_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_rsa_key
-- ----------------------------
INSERT INTO `base_rsa_key` VALUES ('IPSM:AUTH:JWT:PRI', 'MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAIaPvusxk+x8KcVONjFUo+ursfLx\nSwOIvci5q0xPa+nUm3C0uu3jX1RQP+s3hWqCb7KgR67HDcZUS8bn2pNzJJWJ352lrpVrb1wftOot\nmrWPhnrdr9sdcgE2pLV8HAy18pq+agXmjWnkf+T558zo5k3I8VBVcTfzsL6HLc5mFt/dAgMBAAEC\ngYAYkZpsWwsFPM5rphIjA69CUoEVOJVXudndEnmCX2X2tckD1RvkX4WCYXyqN+L2RYabeMRd1x5e\nvflwAdlY3sco+otA0Ld9vP9yadlbfjuxzA8XyuvomaZPeJjMxL3dZnEvy29SMkNx3358ILp3BwGg\ne16GYPNZAjbB9fF+9YcggQJBAMs67m65cu2/h9Fe8+kevU32VVF6WZ3+506tYJFmsEbNILp+HFMK\nyp/OXX5DIMJIVA5f9ZYzG9GIgyaNMaKaFlECQQCpgEkflrwhwMkyOqJ0bJDB6GDk6iql2onR4bzF\n2sExbwYh5FjKdSQay+UIvrxLDvJOHyiySKL3rHxQggrgtbHNAkBVfQSvLvNZbygCup5/gZ7AHM7m\n50CrZX6HagclIr0kC0WpLUNc6z0w2+4YHsS49RPmuBbmh7k7+uCwZtRqQccBAkAeFunkM6v+Ce0t\nf38rT8J6ybe5q2AaxSrGGV6bePPmxKDAD3s7pYPdRejInqNqZ6LX/2wICiDz+qiu2gb4UQjZAkAx\nRtRw7QzNu/5aLnU5pxdD33lE+fubQSkq17y3JfeLO2/HsIl0BnKUQGg4TaKpYOaEoHZpgyd2pwlm\nUuNuRalU\n');
INSERT INTO `base_rsa_key` VALUES ('IPSM:AUTH:JWT:PUB', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGj77rMZPsfCnFTjYxVKPrq7Hy8UsDiL3IuatM\nT2vp1JtwtLrt419UUD/rN4Vqgm+yoEeuxw3GVEvG59qTcySVid+dpa6Va29cH7TqLZq1j4Z63a/b\nHXIBNqS1fBwMtfKavmoF5o1p5H/k+efM6OZNyPFQVXE387C+hy3OZhbf3QIDAQAB\n');

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES ('1', 'admin', '$2a$12$/Xa6YcdVm387zA.EE/6xce11UX.AZBiwerBztXLAVBMhVKQ/pZfNW', 'liwen', '', null, '', null, '', '男', null, null, '', '2020-09-10 16:58:10', '1', 'admin', '127.0.0.1', '2020-10-28 10:08:32', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('4', 'blog', '$2a$12$oAXfILUbaRuD.ccalygnSeGvgg0MKkg9IqKHaYEf.rEtppqB67lrS', 'Mr.Liwen(博主)', '', null, '', null, '', '男', null, null, '12', '2020-10-22 09:51:08', '1', 'admin', '127.0.0.1', '2020-10-22 09:51:08', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('29', 'test', '$2a$12$OjXths1o8rJ3oGykW3yQyuDokbZqMUlp2KXNfgYA2IObA8HVqXlJK', 'test', null, null, null, null, null, '男', null, null, 'test', '2020-08-03 16:48:49', '1', 'admin', '127.0.0.1', '2020-08-04 17:17:42', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('30', 'liwen', '$2a$12$oU7IR69sZ7.9ro.rgaAvDugdH8vLpOajI9d/hRvBTc14nPIMqRHbi', 'liwen', null, null, null, null, null, '男', null, null, 'admin', '2020-11-25 02:37:33', '1', 'admin', '127.0.0.1', '2020-11-25 02:37:33', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for gate_log
-- ----------------------------
DROP TABLE IF EXISTS `gate_log`;
CREATE TABLE `gate_log` (
  `id` int NOT NULL AUTO_INCREMENT,
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

-- ----------------------------
-- Records of gate_log
-- ----------------------------
INSERT INTO `gate_log` VALUES ('23', '用户管理', '删除', '/admin/user/{*}', '2018-11-16 14:33:52', '9', 'admin', '/127.0.0.1:53169');
INSERT INTO `gate_log` VALUES ('24', '用户管理', '编辑', '/admin/user/{*}', '2018-11-16 14:35:39', '9', 'admin', '/127.0.0.1:53169');
INSERT INTO `gate_log` VALUES ('25', '用户管理', '编辑', '/admin/user/{*}', '2018-11-16 14:36:44', '9', 'admin', '/127.0.0.1:53169');
INSERT INTO `gate_log` VALUES ('26', '用户管理', '编辑', '/admin/user/{*}', '2018-11-16 14:39:28', '9', 'admin', '/127.0.0.1:53169');
INSERT INTO `gate_log` VALUES ('27', '用户管理', '编辑', '/admin/user/{*}', '2018-11-16 14:40:56', '9', 'admin', '/127.0.0.1:53169');
INSERT INTO `gate_log` VALUES ('28', '用户管理', '编辑', '/admin/user/{*}', '2018-11-16 14:42:25', '9', 'admin', '/127.0.0.1:53169');
INSERT INTO `gate_log` VALUES ('29', '用户管理', '编辑', '/admin/user/{*}', '2018-11-16 14:43:54', '9', 'admin', '/127.0.0.1:53169');
INSERT INTO `gate_log` VALUES ('30', '角色类型管理', '删除', '/admin/groupType/{*}', '2018-11-16 15:17:57', '9', 'admin', '/127.0.0.1:54049');
INSERT INTO `gate_log` VALUES ('31', '角色类型管理', '删除', '/admin/groupType/{*}', '2018-11-16 15:17:58', '9', 'admin', '/127.0.0.1:54049');
INSERT INTO `gate_log` VALUES ('32', '角色权限管理', '分配资源', '/admin/group/{*}/authority/element', '2018-11-16 15:40:51', '9', 'admin', '/127.0.0.1:54428');
INSERT INTO `gate_log` VALUES ('33', '角色权限管理', '分配资源', '/admin/group/{*}/authority/element', '2018-11-16 15:40:52', '9', 'admin', '/127.0.0.1:54428');
INSERT INTO `gate_log` VALUES ('34', '角色权限管理', '分配资源', '/admin/group/{*}/authority/element', '2018-11-16 15:40:53', '9', 'admin', '/127.0.0.1:54428');
INSERT INTO `gate_log` VALUES ('35', '角色权限管理', '分配资源', '/admin/group/{*}/authority/element', '2018-11-16 15:40:54', '9', 'admin', '/127.0.0.1:54428');
INSERT INTO `gate_log` VALUES ('36', '角色权限管理', '分配资源', '/admin/group/{*}/authority/element', '2018-11-16 15:40:55', '9', 'admin', '/127.0.0.1:54428');
INSERT INTO `gate_log` VALUES ('37', '角色权限管理', '分配资源', '/admin/group/{*}/authority/element', '2018-11-16 15:40:57', '9', 'admin', '/127.0.0.1:54428');
INSERT INTO `gate_log` VALUES ('38', '角色权限管理', '分配菜单', '/admin/group/{*}/authority/menu', '2018-11-16 15:41:54', '9', 'admin', '/127.0.0.1:54428');
INSERT INTO `gate_log` VALUES ('39', '角色类型管理', '新增', '/admin/groupType', '2018-11-16 15:43:08', '9', 'admin', '/127.0.0.1:54454');
INSERT INTO `gate_log` VALUES ('40', '角色权限管理', '新增', '/admin/group', '2018-11-16 15:52:53', '9', 'admin', '/127.0.0.1:54780');
INSERT INTO `gate_log` VALUES ('41', '角色权限管理', '新增', '/admin/group', '2018-11-16 15:53:18', '9', 'admin', '/127.0.0.1:54780');
INSERT INTO `gate_log` VALUES ('42', '角色类型管理', '删除', '/admin/groupType/{*}', '2018-11-16 15:59:20', '9', 'admin', '/127.0.0.1:54909');
INSERT INTO `gate_log` VALUES ('43', '菜单管理', '编辑', '/admin/menu/{*}', '2018-11-21 11:02:49', '9', 'admin', '/127.0.0.1:56699');
INSERT INTO `gate_log` VALUES ('44', '菜单管理', '编辑', '/admin/menu/{*}', '2018-11-21 11:03:03', '9', 'admin', '/127.0.0.1:56699');
INSERT INTO `gate_log` VALUES ('45', '菜单管理', '编辑', '/admin/menu/{*}', '2018-11-21 11:03:18', '9', 'admin', '/127.0.0.1:56699');
INSERT INTO `gate_log` VALUES ('46', '菜单管理', '编辑', '/admin/menu/{*}', '2018-11-21 11:04:27', '9', 'admin', '/127.0.0.1:56747');
INSERT INTO `gate_log` VALUES ('47', '菜单管理', '编辑', '/admin/menu/{*}', '2018-11-21 11:04:53', '9', 'admin', '/127.0.0.1:56747');
INSERT INTO `gate_log` VALUES ('48', '菜单管理', '编辑', '/admin/menu/{*}', '2018-11-21 11:05:06', '9', 'admin', '/127.0.0.1:56747');
INSERT INTO `gate_log` VALUES ('49', '角色权限管理', '分配资源', '/admin/group/{*}/authority/element', '2018-11-29 10:29:00', '9', 'admin', '/127.0.0.1:53564');
INSERT INTO `gate_log` VALUES ('50', '角色权限管理', '分配菜单', '/admin/group/{*}/authority/menu', '2018-11-29 10:29:05', '9', 'admin', '/127.0.0.1:53564');
INSERT INTO `gate_log` VALUES ('51', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:29:56', '9', 'admin', '/127.0.0.1:53611');
INSERT INTO `gate_log` VALUES ('52', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:34:34', '9', 'admin', '/127.0.0.1:53688');
INSERT INTO `gate_log` VALUES ('53', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:37:14', '9', 'admin', '/127.0.0.1:53745');
INSERT INTO `gate_log` VALUES ('54', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:37:16', '9', 'admin', '/127.0.0.1:53745');
INSERT INTO `gate_log` VALUES ('55', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:37:17', '9', 'admin', '/127.0.0.1:53745');
INSERT INTO `gate_log` VALUES ('56', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:37:33', '9', 'admin', '/127.0.0.1:53745');
INSERT INTO `gate_log` VALUES ('57', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:38:27', '9', 'admin', '/127.0.0.1:53745');
INSERT INTO `gate_log` VALUES ('58', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:39:24', '9', 'admin', '/127.0.0.1:53745');
INSERT INTO `gate_log` VALUES ('59', '用户管理', '编辑', '/admin/user/{*}', '2018-11-29 10:39:48', '9', 'admin', '/127.0.0.1:53745');
