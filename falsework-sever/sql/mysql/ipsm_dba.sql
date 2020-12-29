/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80022
Source Host           : localhost:3306
Source Database       : ipsm_dba

Target Server Type    : MYSQL
Target Server Version : 80022
File Encoding         : 65001

Date: 2020-12-04 10:46:34
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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_element
-- ----------------------------
INSERT INTO `base_element` VALUES ('4', 'menuManager:element', 'uri', '按钮页面', '/admin/element', '6', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('5', 'menuManager:btn_add', 'button', '新增', '/menu/{*}', '6', null, null, 'POST', '', '2020-12-03 13:25:44', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('6', 'menuManager:btn_edit', 'button', '编辑', '/menu', '6', '', '', 'PUT', '', '2020-12-03 13:26:03', '1', 'admin', '127.0.0.1', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('7', 'menuManager:btn_del', 'button', '删除', '/menu/{*}', '6', '', '', 'DELETE', '', '2020-12-03 13:26:12', '1', 'admin', '127.0.0.1', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('8', 'menuManager:btn_element_add', 'button', '新增元素', '/element', '6', null, null, 'POST', '', '2020-12-03 13:26:26', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('9', 'menuManager:btn_element_edit', 'button', '编辑元素', '/element', '6', null, null, 'PUT', '', '2020-12-03 13:26:37', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('10', 'menuManager:btn_element_del', 'button', '删除元素', '/element/{*}', '6', null, null, 'DELETE', '', '2020-12-03 13:26:43', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('12', 'groupManager:btn_edit', 'button', '编辑', '/group', '7', null, null, 'PUT', '', '2020-12-03 13:46:59', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('14', 'groupManager:btn_userManager', 'button', '分配用户', '/group/{*}/user', '7', null, null, 'PUT', '', '2020-12-03 13:26:58', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('15', 'groupManager:btn_resourceManager', 'button', '分配权限', '/group/{*}/authority/menu', '7', null, null, 'PUT', '', '2020-12-03 13:48:31', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('19', 'menuManager:view', 'uri', '查看', '/admin/menu/{*}', '6', '', '', 'GET', '', '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('20', 'menuManager:element_view', 'uri', '查看', '/admin/element/{*}', '6', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('22', 'groupTypeManager:view', 'uri', '查看', '/admin/groupType/{*}', '8', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('23', 'groupTypeManager:btn_add', 'button', '新增', '/groupType', '8', null, null, 'POST', null, '2020-12-03 13:17:51', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('24', 'groupTypeManager:btn_edit', 'button', '编辑', '/groupType', '8', null, null, 'PUT', null, '2020-12-03 13:22:14', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('25', 'groupTypeManager:btn_del', 'button', '删除', '/groupType/{*}', '8', null, null, 'DELETE', null, '2020-12-03 13:18:12', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('27', 'serviceManager:view', 'URI', '查看', '/auth/service/{*}', '10', null, null, 'GET', null, '2017-12-26 20:17:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('28', 'serviceManager:btn_add', 'button', '新增', '/auth/service', '10', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('29', 'serviceManager:btn_edit', 'button', '编辑', '/auth/service/{*}', '10', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('30', 'serviceManager:btn_del', 'button', '删除', '/auth/service/{*}', '10', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('31', 'serviceManager:btn_clientManager', 'button', '服务授权', '/auth/service/{*}/client', '10', null, null, 'POST', null, '2017-12-30 16:32:48', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('34', 'home', 'uri', '查看', 'home/', '16', null, null, 'GET', null, '2018-11-08 17:50:05', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('37', 'userManager:btn_add', 'button', '添加', '/user', '1', null, null, 'POST', '', '2020-12-03 13:23:40', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('38', 'userManager:btn_del', 'button', '删除', '/user/{*}', '1', null, null, 'DELETE', '', '2020-12-03 13:24:35', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('39', 'userManager:btn_edit', 'button', '修改', '/user/{*}', '1', null, null, 'PUT', '', '2020-12-03 13:35:36', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('42', 'groupManager:btn_del', 'button', '删除', '/group', '7', null, null, 'DELETE', '', '2020-12-03 13:48:03', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('41', 'groupManager:btn_add', 'button', '新增', '/group', '7', null, null, 'POST', '', '2020-12-03 13:47:29', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('40', 'userManage:rest', 'button', '重置密码', '/user/password/{*}', '1', null, null, 'PUT', '', '2020-12-03 13:42:38', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_group_leader
-- ----------------------------
INSERT INTO `base_group_leader` VALUES ('32', '4', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_leader` VALUES ('35', '3', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_leader` VALUES ('36', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_leader` VALUES ('38', '9', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_group_member
-- ----------------------------
INSERT INTO `base_group_member` VALUES ('54', '4', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('57', '3', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('58', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('59', '1', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('60', '1', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('62', '9', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_group_type
-- ----------------------------
INSERT INTO `base_group_type` VALUES ('1', 'role', '角色类型', 'role', null, null, null, null, '2017-08-25 17:52:37', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('2', 'depart', '部门类型', '部门类型', null, null, null, null, '2020-08-01 19:25:34', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('3', 'freeaa', '自定义类型', 'sadf', null, null, null, null, '2020-12-03 19:57:40', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);

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
INSERT INTO `base_menu` VALUES ('1', 'userManager', '用户管理', '5', 'com.epri.fx.client.gui.uicomponents.admin.user.UserManagementController', 'yonghuguanli_huaban', 'menu', '11', 'aaaa', '/adminSys/baseManager/userManager', null, '2020-12-03 13:43:21', '1', 'admin', '127.0.0.1', '2020-12-03 13:43:21', '1', 'admin', '127.0.0.1', 'admin/user/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('5', 'baseManager', '基础配置管理', '13', '/admin', 'jichupeizhi', 'dirt', '2', '', '/adminSys/baseManager', null, '2020-10-14 16:15:25', '1', 'admin', '127.0.0.1', '2020-10-14 16:15:25', '1', 'admin', '127.0.0.1', 'Layout', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('6', 'menuManager', '菜单管理', '5', 'com.epri.fx.client.gui.uicomponents.admin.menu.MenuManagementController', 'jiaoyixulie', 'menu', '12', '你大爷', '/adminSys/baseManager/menuManager', null, '2020-09-18 16:53:22', '1', 'admin', '127.0.0.1', '2020-09-18 16:53:22', '1', 'admin', '127.0.0.1', 'admin/menu/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('7', 'groupManager', '角色权限管理', '5', 'com.epri.fx.client.gui.uicomponents.admin.group.GroupManagementController', 'gongnengjiaosequanxianguanli', 'menu', '13', '', '/adminSys/baseManager/groupManager', null, '2020-08-20 15:45:42', '1', 'admin', '127.0.0.1', '2020-08-20 15:45:42', '1', 'admin', '127.0.0.1', 'admin/group/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('8', 'groupTypeManager', '角色类型管理', '5', 'com.epri.fx.client.gui.uicomponents.admin.grouptype.GroupTypeManagementController', 'jiaoseleixing', 'menu', '14', '', '/adminSys/baseManager/groupTypeManager', null, '2020-08-20 15:45:49', '1', 'admin', '127.0.0.1', '2020-08-20 15:45:49', '1', 'admin', '127.0.0.1', 'admin/groupType/index', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('13', 'adminSys', '系统菜单', '-1', '/base', 'align-justify', 'dirt', '0', '', '/adminSys', null, '2020-08-02 18:39:35', '1', 'admin', '127.0.0.1', '2020-08-02 18:39:35', '1', 'admin', '127.0.0.1', 'Layout', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('27', 'gateLogManager', '操作日志', '5', 'com.epri.fx.client.gui.uicomponents.admin.log.LogManagementController', 'caozuorizhi', 'menu', '15', '', '/adminSys/baseManager/gateLogManager', null, '2020-12-04 10:30:20', '1', 'admin', '127.0.0.1', '2020-12-04 10:30:20', '1', 'admin', '127.0.0.1', 'admin/gateLog/index', null, null, null, null, null, null, null);
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
) ENGINE=MyISAM AUTO_INCREMENT=2516 DEFAULT CHARSET=utf8;

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
INSERT INTO `base_resource_authority` VALUES ('2515', '9', 'group', '49', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2514', '9', 'group', '48', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2513', '9', 'group', '47', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2512', '9', 'group', '46', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2511', '9', 'group', '45', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2510', '9', 'group', '44', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2509', '9', 'group', '27', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2508', '9', 'group', '8', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2507', '9', 'group', '25', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2506', '9', 'group', '24', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2505', '9', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2504', '9', 'group', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2503', '9', 'group', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2502', '9', 'group', '41', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2501', '9', 'group', '42', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2500', '9', 'group', '15', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2499', '9', 'group', '14', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2497', '9', 'group', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2498', '9', 'group', '12', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2496', '9', 'group', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2495', '9', 'group', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2494', '9', 'group', '10', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2493', '9', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2492', '9', 'group', '8', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2491', '9', 'group', '7', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2490', '9', 'group', '6', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2489', '9', 'group', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2488', '9', 'group', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2487', '9', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2486', '9', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2485', '9', 'group', '40', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2484', '9', 'group', '39', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2482', '9', 'group', '37', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('2483', '9', 'group', '38', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES ('1', 'admin', '$2a$12$/Xa6YcdVm387zA.EE/6xce11UX.AZBiwerBztXLAVBMhVKQ/pZfNW', 'liwen', '', null, '', null, '', '男', null, null, '', '2020-12-03 17:19:07', '1', 'admin', '127.0.0.1', '2020-12-03 17:19:07', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('4', 'blog', '$2a$12$qWkIM1ZwBhzfs6eHgu6yFOeZB0Rtklt/MlzTg/YkagS19k8EmeV2C', 'Mr.Liwen(博主)', '', null, '', null, '', '女', null, null, '12', '2020-12-03 19:56:04', '1', 'admin', '127.0.0.1', '2020-12-03 19:56:36', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('30', 'liwen', '$2a$12$TsY.B4VLwtuIfGSTIpWjHu3tiuwjmVoFoqYTbJv7f/193kdCCRIXO', 'liwen', null, null, null, null, null, '男', null, null, 'admin', '2020-11-25 02:37:33', '1', 'admin', '127.0.0.1', '2020-12-03 13:42:11', '1', 'admin', '127.0.0.1', null, null, null, null, null, null, null, null);

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
  `body` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_13178398875749` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gate_log
-- ----------------------------
INSERT INTO `gate_log` VALUES ('102', '用户管理', '修改', '/user/{*}', '2020-12-03 19:56:04', '1', 'liwen', '127.0.0.1', '{  \"id\" : 4,  \"username\" : \"blog\",  \"name\" : \"Mr.Liwen(博主)\",  \"sex\" : \"女\",  \"description\" : \"12\"}');
INSERT INTO `gate_log` VALUES ('103', '用户管理', '重置密码', '/user/password/{*}', '2020-12-03 19:56:36', '1', 'liwen', '127.0.0.1', '');
INSERT INTO `gate_log` VALUES ('104', '角色权限管理', '分配权限', '/group/{*}/authority/menu', '2020-12-03 19:57:06', '1', 'liwen', '127.0.0.1', '[ {  \"id\" : 1,  \"code\" : \"userManager\",  \"title\" : \"用户管理\",  \"parentId\" : 5,  \"href\" : \"com.epri.fx.client.gui.uicomponents.admin.user.UserManagementController\",  \"icon\" : \"yonghuguanli_huaban\",  \"type\" : \"menu\",  \"orderNum\" : 11,  \"description\" : \"aaaa\",  \"path\" : \"/adminSys/baseManager/userManager\",  \"sel\" : true,  \"elementVOS\" : [ {    \"id\" : 37,    \"code\" : \"userManager:btn_add\",    \"type\" : \"button\",    \"name\" : \"添加\",    \"uri\" : \"/user\",    \"menuId\" : \"1\",    \"method\" : \"POST\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 38,    \"code\" : \"userManager:btn_del\",    \"type\" : \"button\",    \"name\" : \"删除\",    \"uri\" : \"/user/{*}\",    \"menuId\" : \"1\",    \"method\" : \"DELETE\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 39,    \"code\" : \"userManager:btn_edit\",    \"type\" : \"button\",    \"name\" : \"修改\",    \"uri\" : \"/user/{*}\",    \"menuId\" : \"1\",    \"method\" : \"PUT\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 40,    \"code\" : \"userManage:rest\",    \"type\" : \"button\",    \"name\" : \"重置密码\",    \"uri\" : \"/user/password/{*}\",    \"menuId\" : \"1\",    \"method\" : \"PUT\",    \"description\" : \"\",    \"sel\" : true  } ]}, {  \"id\" : 5,  \"code\" : \"baseManager\",  \"title\" : \"基础配置管理\",  \"parentId\" : 13,  \"href\" : \"/admin\",  \"icon\" : \"jichupeizhi\",  \"type\" : \"dirt\",  \"orderNum\" : 2,  \"description\" : \"\",  \"path\" : \"/adminSys/baseManager\",  \"sel\" : true,  \"elementVOS\" : [ ]}, {  \"id\" : 6,  \"code\" : \"menuManager\",  \"title\" : \"菜单管理\",  \"parentId\" : 5,  \"href\" : \"com.epri.fx.client.gui.uicomponents.admin.menu.MenuManagementController\",  \"icon\" : \"jiaoyixulie\",  \"type\" : \"menu\",  \"orderNum\" : 12,  \"description\" : \"你大爷\",  \"path\" : \"/adminSys/baseManager/menuManager\",  \"sel\" : true,  \"elementVOS\" : [ {    \"id\" : 4,    \"code\" : \"menuManager:element\",    \"type\" : \"uri\",    \"name\" : \"按钮页面\",    \"uri\" : \"/admin/element\",    \"menuId\" : \"6\",    \"method\" : \"GET\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 5,    \"code\" : \"menuManager:btn_add\",    \"type\" : \"button\",    \"name\" : \"新增\",    \"uri\" : \"/menu/{*}\",    \"menuId\" : \"6\",    \"method\" : \"POST\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 6,    \"code\" : \"menuManager:btn_edit\",    \"type\" : \"button\",    \"name\" : \"编辑\",    \"uri\" : \"/menu\",    \"menuId\" : \"6\",    \"parentId\" : \"\",    \"path\" : \"\",    \"method\" : \"PUT\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 7,    \"code\" : \"menuManager:btn_del\",    \"type\" : \"button\",    \"name\" : \"删除\",    \"uri\" : \"/menu/{*}\",    \"menuId\" : \"6\",    \"parentId\" : \"\",    \"path\" : \"\",    \"method\" : \"DELETE\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 8,    \"code\" : \"menuManager:btn_element_add\",    \"type\" : \"button\",    \"name\" : \"新增元素\",    \"uri\" : \"/element\",    \"menuId\" : \"6\",    \"method\" : \"POST\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 9,    \"code\" : \"menuManager:btn_element_edit\",    \"type\" : \"button\",    \"name\" : \"编辑元素\",    \"uri\" : \"/element\",    \"menuId\" : \"6\",    \"method\" : \"PUT\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 10,    \"code\" : \"menuManager:btn_element_del\",    \"type\" : \"button\",    \"name\" : \"删除元素\",    \"uri\" : \"/element/{*}\",    \"menuId\" : \"6\",    \"method\" : \"DELETE\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 19,    \"code\" : \"menuManager:view\",    \"type\" : \"uri\",    \"name\" : \"查看\",    \"uri\" : \"/admin/menu/{*}\",    \"menuId\" : \"6\",    \"parentId\" : \"\",    \"path\" : \"\",    \"method\" : \"GET\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 20,    \"code\" : \"menuManager:element_view\",    \"type\" : \"uri\",    \"name\" : \"查看\",    \"uri\" : \"/admin/element/{*}\",    \"menuId\" : \"6\",    \"method\" : \"GET\",    \"sel\" : true  } ]}, {  \"id\" : 7,  \"code\" : \"groupManager\",  \"title\" : \"角色权限管理\",  \"parentId\" : 5,  \"href\" : \"com.epri.fx.client.gui.uicomponents.admin.group.GroupManagementController\",  \"icon\" : \"gongnengjiaosequanxianguanli\",  \"type\" : \"menu\",  \"orderNum\" : 13,  \"description\" : \"\",  \"path\" : \"/adminSys/baseManager/groupManager\",  \"sel\" : true,  \"elementVOS\" : [ {    \"id\" : 12,    \"code\" : \"groupManager:btn_edit\",    \"type\" : \"button\",    \"name\" : \"编辑\",    \"uri\" : \"/group\",    \"menuId\" : \"7\",    \"method\" : \"PUT\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 14,    \"code\" : \"groupManager:btn_userManager\",    \"type\" : \"button\",    \"name\" : \"分配用户\",    \"uri\" : \"/group/{*}/user\",    \"menuId\" : \"7\",    \"method\" : \"PUT\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 15,    \"code\" : \"groupManager:btn_resourceManager\",    \"type\" : \"button\",    \"name\" : \"分配权限\",    \"uri\" : \"/group/{*}/authority/menu\",    \"menuId\" : \"7\",    \"method\" : \"PUT\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 42,    \"code\" : \"groupManager:btn_del\",    \"type\" : \"button\",    \"name\" : \"删除\",    \"uri\" : \"/group\",    \"menuId\" : \"7\",    \"method\" : \"DELETE\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 41,    \"code\" : \"groupManager:btn_add\",    \"type\" : \"button\",    \"name\" : \"新增\",    \"uri\" : \"/group\",    \"menuId\" : \"7\",    \"method\" : \"POST\",    \"description\" : \"\",    \"sel\" : true  } ]}, {  \"id\" : 8,  \"code\" : \"groupTypeManager\",  \"title\" : \"角色类型管理\",  \"parentId\" : 5,  \"href\" : \"com.epri.fx.client.gui.uicomponents.admin.grouptype.GroupTypeManagementController\",  \"icon\" : \"jiaoseleixing\",  \"type\" : \"menu\",  \"orderNum\" : 14,  \"description\" : \"\",  \"path\" : \"/adminSys/baseManager/groupTypeManager\",  \"sel\" : true,  \"elementVOS\" : [ {    \"id\" : 22,    \"code\" : \"groupTypeManager:view\",    \"type\" : \"uri\",    \"name\" : \"查看\",    \"uri\" : \"/admin/groupType/{*}\",    \"menuId\" : \"8\",    \"method\" : \"GET\",    \"description\" : \"\",    \"sel\" : true  }, {    \"id\" : 23,    \"code\" : \"groupTypeManager:btn_add\",    \"type\" : \"button\",    \"name\" : \"新增\",    \"uri\" : \"/groupType\",    \"menuId\" : \"8\",    \"method\" : \"POST\",    \"sel\" : true  }, {    \"id\" : 24,    \"code\" : \"groupTypeManager:btn_edit\",    \"type\" : \"button\",    \"name\" : \"编辑\",    \"uri\" : \"/groupType\",    \"menuId\" : \"8\",    \"method\" : \"PUT\",    \"sel\" : true  }, {    \"id\" : 25,    \"code\" : \"groupTypeManager:btn_del\",    \"type\" : \"button\",    \"name\" : \"删除\",    \"uri\" : \"/groupType/{*}\",    \"menuId\" : \"8\",    \"method\" : \"DELETE\",    \"sel\" : true  } ]}, {  \"id\" : 27,  \"code\" : \"gateLogManager\",  \"title\" : \"操作日志\",  \"parentId\" : 5,  \"href\" : \"/admin/gateLog\",  \"icon\" : \"caozuorizhi\",  \"type\" : \"menu\",  \"orderNum\" : 15,  \"description\" : \"\",  \"path\" : \"/adminSys/baseManager/gateLogManager\",  \"sel\" : true,  \"elementVOS\" : [ ]}, {  \"id\" : 44,  \"code\" : \"home\",  \"title\" : \"主页\",  \"parentId\" : 13,  \"href\" : \"com.epri.fx.client.gui.uicomponents.home.HomeController\",  \"icon\" : \"home-outline\",  \"orderNum\" : 0,  \"description\" : \"\",  \"path\" : \"com.epri.fx.client.gui.uicomponents.home.HomeController\",  \"sel\" : true,  \"elementVOS\" : [ ]}, {  \"id\" : 45,  \"code\" : \"baseInfo\",  \"title\" : \"基础信息录入\",  \"parentId\" : 13,  \"href\" : \"\",  \"icon\" : \"jichuxinxi\",  \"orderNum\" : 1,  \"description\" : \"基础信息录入\",  \"sel\" : true,  \"elementVOS\" : [ ]}, {  \"id\" : 46,  \"code\" : \"base\",  \"title\" : \"基础参数\",  \"parentId\" : 45,  \"href\" : \"com.epri.fx.client.gui.uicomponents.basicInfo.BasicDataSetController\",  \"icon\" : \"jichucanshu\",  \"orderNum\" : 0,  \"description\" : \"\",  \"sel\" : true,  \"elementVOS\" : [ ]}, {  \"id\" : 47,  \"code\" : \"\",  \"title\" : \"煤价差\",  \"parentId\" : 45,  \"href\" : \"com.epri.fx.client.gui.uicomponents.basicInfo.CoalPriceDiffController\",  \"icon\" : \"Energy-\",  \"orderNum\" : 1,  \"description\" : \"\",  \"sel\" : true,  \"elementVOS\" : [ ]}, {  \"id\" : 48,  \"code\" : \"\",  \"title\" : \"铁路成本\",  \"parentId\" : 45,  \"href\" : \"com.epri.fx.client.gui.uicomponents.basicInfo.RailwayCostController\",  \"icon\" : \"tieluyunshu\",  \"orderNum\" : 2,  \"description\" : \"\",  \"sel\" : true,  \"elementVOS\" : [ ]}, {  \"id\" : 49,  \"code\" : \"\",  \"title\" : \"现行运价\",  \"parentId\" : 45,  \"href\" : \"com.epri.fx.client.gui.uicomponents.basicInfo.CurrentFreightController\",  \"icon\" : \"hangzheng\",  \"orderNum\" : 3,  \"description\" : \"\",  \"sel\" : true,  \"elementVOS\" : [ ]} ]');
INSERT INTO `gate_log` VALUES ('101', '用户管理', '修改', '/user/{*}', '2020-12-03 17:19:07', '1', 'liwen', '127.0.0.1', '{  \"id\" : 1,  \"username\" : \"admin\",  \"name\" : \"liwen\",  \"sex\" : \"男\",  \"description\" : \"\"}');
INSERT INTO `gate_log` VALUES ('105', '角色类型管理', '编辑', '/groupType', '2020-12-03 19:57:40', '1', 'liwen', '127.0.0.1', '{  \"id\" : 3,  \"code\" : \"freeaa\",  \"name\" : \"自定义类型\",  \"description\" : \"sadf\"}');
INSERT INTO `gate_log` VALUES ('106', '菜单管理', '编辑', '/menu', '2020-12-04 10:30:20', '1', 'liwen', '127.0.0.1', '{  \"id\" : 27,  \"code\" : \"gateLogManager\",  \"title\" : \"操作日志\",  \"parentId\" : 5,  \"href\" : \"com.epri.fx.client.gui.uicomponents.admin.log.LogManagementController\",  \"icon\" : \"caozuorizhi\",  \"type\" : \"menu\",  \"orderNum\" : 15,  \"description\" : \"\",  \"path\" : \"/adminSys/baseManager/gateLogManager\",  \"sel\" : false,  \"elementVOS\" : [ ]}');
