/*
Navicat MySQL Data Transfer

Source Server         : 111.230.157.133_3306_ubuntu
Source Server Version : 50721
Source Host           : 111.230.157.133:3306
Source Database       : febs

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-01-28 10:30:38
*/

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `COMPANY_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `COMPANY_NAME` varchar(100) NOT NULL COMMENT '公司名称',
  `COMPANY_ADDRESS` varchar(100) NOT NULL COMMENT '公司地址',
  `finance` varchar(100) NOT NULL COMMENT '融资情况',
  `scale` varchar(100) NOT NULL COMMENT '公司规模',
  `nature` varchar(100) NOT NULL COMMENT '公司性质',
  `info` varchar(100) NOT NULL COMMENT '公司介绍',
  `tag1` varchar(100) NOT NULL COMMENT '公司标签1',
  `tag2` varchar(100) NOT NULL COMMENT '公司标签2',
  `tag3` varchar(100) NOT NULL COMMENT '公司标签3',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`COMPANY_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `DICT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典ID',
  `KEYY` bigint(20) NOT NULL COMMENT '键',
  `VALUEE` varchar(100) NOT NULL COMMENT '值',
  `FIELD_NAME` varchar(100) NOT NULL COMMENT '字段名称',
  `TABLE_NAME` varchar(100) NOT NULL COMMENT '表名',
  PRIMARY KEY (`DICT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', '0', '男', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES ('2', '1', '女', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES ('3', '2', '保密', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES ('4', '1', '有效', 'status', 't_user');
INSERT INTO `t_dict` VALUES ('5', '0', '锁定', 'status', 't_user');
INSERT INTO `t_dict` VALUES ('6', '0', '菜单', 'type', 't_menu');
INSERT INTO `t_dict` VALUES ('7', '1', '按钮', 'type', 't_menu');
INSERT INTO `t_dict` VALUES ('30', '0', '正常', 'status', 't_job');
INSERT INTO `t_dict` VALUES ('31', '1', '暂停', 'status', 't_job');
INSERT INTO `t_dict` VALUES ('32', '0', '成功', 'status', 't_job_log');
INSERT INTO `t_dict` VALUES ('33', '1', '失败', 'status', 't_job_log');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text COMMENT '操作方法',
  `PARAMS` text COMMENT '方法参数',
  `IP` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1839 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('1815', 'mrbird', '删除用户', '301', 'cc.mrbird.febs.system.controller.UserController.deleteUsers()', ' userIds: \"11\"', '127.0.0.1', '2019-01-23 06:26:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1816', 'mrbird', '修改菜单/按钮', '170', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=2, parentId=0, menuName=系统监控, path=/monitor, component=PageView, perms=null, icon=dashboard, type=0, orderNum=2.0, createTime=null, modifyTime=Wed Jan 23 14:27:12 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:27:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1817', 'mrbird', '修改部门', '90', 'cc.mrbird.febs.system.controller.DeptController.updateDept()', ' company: \"Company(deptId=4, parentId=0, deptName=市场部, orderNum=2.0, createTime=null, modifyTime=Wed Jan 23 14:27:55 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:27:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1818', 'mrbird', '修改部门', '596', 'cc.mrbird.febs.system.controller.DeptController.updateDept()', ' company: \"Company(deptId=5, parentId=0, deptName=人事部, orderNum=3.0, createTime=null, modifyTime=Wed Jan 23 14:27:59 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:28:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1819', 'mrbird', '执行定时任务', '146', 'cc.mrbird.febs.job.controller.JobController.runJob()', ' jobId: \"1\"', '127.0.0.1', '2019-01-23 06:28:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1820', 'mrbird', '新增菜单/按钮', '160', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=130, parentId=3, menuName=导出Excel, path=null, component=null, perms=user:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:35:15 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:35:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1821', 'mrbird', '新增菜单/按钮', '255', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=131, parentId=4, menuName=导出Excel, path=null, component=null, perms=role:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:35:36 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:35:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1822', 'mrbird', '新增菜单/按钮', '172', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=132, parentId=5, menuName=导出Excel, path=null, component=null, perms=menu:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:36:04 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:36:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1823', 'mrbird', '新增菜单/按钮', '188', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=133, parentId=6, menuName=导出Excel, path=null, component=null, perms=company:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:36:24 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:36:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1824', 'mrbird', '新增菜单/按钮', '186', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=134, parentId=64, menuName=导出Excel, path=null, component=null, perms=dict:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:36:43 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:36:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1825', 'mrbird', '新增菜单/按钮', '160', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=135, parentId=3, menuName=密码重置, path=null, component=null, perms=user:reset, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:36:59 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:37:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1826', 'mrbird', '新增菜单/按钮', '181', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=136, parentId=10, menuName=导出Excel, path=null, component=null, perms=log:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:37:26 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:37:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1827', 'mrbird', '新增菜单/按钮', '146', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=137, parentId=102, menuName=导出Excel, path=null, component=null, perms=job:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:37:59 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:37:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1828', 'mrbird', '新增菜单/按钮', '164', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=138, parentId=109, menuName=导出Excel, path=null, component=null, perms=jobLog:export, icon=null, type=1, orderNum=null, createTime=Wed Jan 23 14:38:32 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-01-23 06:38:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1829', 'mrbird', '修改角色', '3132', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=管理员, remark=管理员, createTime=null, modifyTime=Wed Jan 23 14:45:28 CST 2019, createTimeFrom=null, createTimeTo=null, menuId=1,3,11,12,13,4,14,15,16,5,17,18,19,6,20,21,22,64,65,66,67,2,8,23,10,24,113,121,122,124,123,125,101,102,103,104,105,106,107,108,109,110,58,59,61,81,82,83,127,128,129,130,135,131,132,133,134,136,137,138)\"', '127.0.0.1', '2019-01-23 06:45:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1830', 'mrbird', '修改角色', '1730', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=2, roleName=注册用户, remark=只可查看不可操作, createTime=null, modifyTime=Wed Jan 23 15:31:07 CST 2019, createTimeFrom=null, createTimeTo=null, menuId=3,1,4,5,6,64,2,8,10,113,121,122,124,123,125,101,102,109,58,59,61,81,82,83,127,128,129)\"', '127.0.0.1', '2019-01-23 07:31:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1831', 'mrbird', '修改角色', '1997', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=2, roleName=注册用户, remark=可查看，新增，导出, createTime=null, modifyTime=Wed Jan 23 15:32:20 CST 2019, createTimeFrom=null, createTimeTo=null, menuId=3,1,4,5,6,64,2,8,10,113,121,122,124,123,125,101,102,109,58,59,61,81,82,83,127,128,129,130,14,17,132,20,133,65,134,136,103,137,138)\"', '127.0.0.1', '2019-01-23 07:32:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1832', 'mrbird', '新增角色', '1428', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=72, roleName=普通用户, remark=只可查看，好可怜哦, createTime=Wed Jan 23 15:33:20 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null, menuId=1,3,4,5,6,64,2,8,10,113,121,122,124,123,127,101,102,109,58,59,61,81,82,83,128,129)\"', '127.0.0.1', '2019-01-23 07:33:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1833', 'mrbird', '新增用户', '338', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=12, username=jack, password=552649f10640385d0728a80a4242893e, deptId=6, deptName=null, email=jack@hotmail.com, mobile=null, status=1, createTime=Wed Jan 23 15:34:05 CST 2019, modifyTime=null, lastLoginTime=null, ssex=0, description=null, avatar=default.jpg, roleId=72, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '127.0.0.1', '2019-01-23 07:34:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1834', 'mrbird', '修改角色', '2160', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=2, roleName=注册用户, remark=可查看，新增，导出, createTime=null, modifyTime=Wed Jan 23 15:37:08 CST 2019, createTimeFrom=null, createTimeTo=null, menuId=3,1,4,5,6,64,2,8,10,113,121,122,124,123,125,101,102,109,58,59,61,81,82,83,127,128,129,130,14,17,132,20,133,65,134,136,103,137,138,131)\"', '127.0.0.1', '2019-01-23 07:37:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1835', 'mrbird', '新增角色', '169', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=73, roleName=测试xss, remark=<style>body{background:red !important}</style>, createTime=Wed Jan 23 15:47:04 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null, menuId=1,3)\"', '127.0.0.1', '2019-01-23 07:47:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1836', 'mrbird', '删除角色', '54', 'cc.mrbird.febs.system.controller.RoleController.deleteRoles()', ' roleIds: \"73\"', '218.104.237.213', '2019-01-24 03:03:41', '中国|华东|福建省|福州市|联通');
INSERT INTO `t_log` VALUES ('1837', 'mrbird', '修改用户', '39', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=12, username=jack, password=null, deptId=6, deptName=null, email=jack@hotmail.com, mobile=null, status=1, createTime=null, modifyTime=Thu Jan 24 11:08:00 CST 2019, lastLoginTime=null, ssex=0, description=null, avatar=null, roleId=72, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '218.104.237.213', '2019-01-24 03:08:01', '中国|华东|福建省|福州市|联通');
INSERT INTO `t_log` VALUES ('1838', 'mrbird', '执行定时任务', '41', 'cc.mrbird.febs.job.controller.JobController.runJob()', ' jobId: \"1\"', '218.104.237.213', '2019-01-24 05:39:59', '中国|华东|福建省|福州市|联通');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `USERNAME` varchar(100) NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(255) DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(100) DEFAULT NULL COMMENT 'IP地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-12 03:18:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-10 03:18:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-09 03:18:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-11 03:18:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-12 04:23:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 03:31:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 03:36:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 06:05:36', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 08:44:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 09:02:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-15 09:24:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-15 09:25:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 10:14:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-15 10:48:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-14 11:02:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-13 11:02:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-15 11:02:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 01:20:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 02:25:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 03:25:11', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 03:44:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 05:44:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 05:51:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-16 05:51:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 05:54:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 06:18:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 06:31:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-16 07:32:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 01:10:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 02:21:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:07:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:45:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:46:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:54:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:54:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 06:55:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 07:38:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 07:39:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 07:40:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 07:41:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-17 07:42:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-17 07:43:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 08:13:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 08:39:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 09:26:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 09:26:58', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 09:30:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbirdd', '2019-01-17 10:31:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('jack', '2019-01-17 10:41:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('abcd', '2019-01-17 10:47:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('abcd', '2019-01-17 10:48:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('abcd', '2019-01-17 10:48:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('abcd', '2019-01-17 10:51:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('wuyouzhugu', '2019-01-17 10:54:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 10:56:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 10:59:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 10:59:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 11:01:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 11:08:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 11:12:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-17 11:13:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 00:56:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 01:21:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 01:33:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:03:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:27:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:36:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:41:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:53:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 02:56:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 03:00:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 05:36:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 05:57:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 06:50:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 07:09:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 08:57:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-18 09:00:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 01:13:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 01:14:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 01:50:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:05:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:06:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:11:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:12:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:12:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:33:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-19 02:40:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 03:05:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 03:16:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 05:43:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 05:44:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 06:47:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 06:49:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 07:48:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 07:50:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 07:55:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 07:57:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 08:35:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 08:58:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-21 11:05:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 00:47:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 01:02:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 01:38:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 02:39:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 05:39:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 05:44:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:04:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:04:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:13:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:13:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-22 06:13:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-22 06:14:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-22 06:15:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('hello', '2019-01-22 06:15:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('hello', '2019-01-22 06:17:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('hello', '2019-01-22 06:18:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:19:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 06:20:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 07:04:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 07:06:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 07:06:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 08:37:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-22 10:29:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 00:50:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 01:51:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 02:58:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 06:11:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-23 06:46:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 06:48:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-23 06:51:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 07:30:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-23 07:34:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('jack', '2019-01-23 07:35:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-23 07:36:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:30:13', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:42:03', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:48:10', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:50:12', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 01:50:28', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 02:57:48', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 03:02:53', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-24 03:14:51', '中国|华东|福建省|厦门市|电信', '120.36.172.239');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 03:41:10', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 05:38:30', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 08:50:44', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('jack', '2019-01-24 08:52:03', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-24 08:52:31', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 11:12:33', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-24 11:24:04', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-24 11:47:56', '中国|华东|福建省|福州市|电信', '27.155.195.27');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-24 11:48:28', '中国|华东|福建省|福州市|电信', '27.155.195.27');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-28 01:53:06', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-01-28 01:53:58', '中国|华东|福建省|福州市|联通', '218.104.237.213');
INSERT INTO `t_login_log` VALUES ('scott', '2019-01-28 01:54:09', '中国|华东|福建省|福州市|联通', '218.104.237.213');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `PATH` varchar(255) DEFAULT NULL COMMENT '对应路由path',
  `COMPONENT` varchar(255) DEFAULT NULL COMMENT '对应路由组件component',
  `PERMS` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` double(20,0) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统管理', '/system', 'PageView', null, 'appstore-o', '0', '1', '2017-12-27 16:39:07', '2019-01-05 11:13:14');
INSERT INTO `t_menu` VALUES ('2', '0', '系统监控', '/monitor', 'PageView', null, 'dashboard', '0', '2', '2017-12-27 16:45:51', '2019-01-23 06:27:12');
INSERT INTO `t_menu` VALUES ('3', '1', '用户管理', '/system/user', 'system/user/User', 'user:view', '', '0', '1', '2017-12-27 16:47:13', '2019-01-22 06:45:55');
INSERT INTO `t_menu` VALUES ('4', '1', '角色管理', '/system/role', 'system/role/Role', 'role:view', '', '0', '2', '2017-12-27 16:48:09', '2018-04-25 09:01:12');
INSERT INTO `t_menu` VALUES ('5', '1', '菜单管理', '/system/menu', 'system/menu/Menu', 'menu:view', '', '0', '3', '2017-12-27 16:48:57', '2018-04-25 09:01:30');
INSERT INTO `t_menu` VALUES ('6', '1', '部门管理', '/system/company', 'system/company/Company', 'company:view', '', '0', '4', '2017-12-27 16:57:33', '2018-04-25 09:01:40');
INSERT INTO `t_menu` VALUES ('8', '2', '在线用户', '/monitor/online', 'monitor/Online', 'user:online', '', '0', '1', '2017-12-27 16:59:33', '2018-04-25 09:02:04');
INSERT INTO `t_menu` VALUES ('10', '2', '系统日志', '/monitor/systemlog', 'monitor/SystemLog', 'log:view', '', '0', '2', '2017-12-27 17:00:50', '2018-04-25 09:02:18');
INSERT INTO `t_menu` VALUES ('11', '3', '新增用户', '', '', 'user:add', null, '1', null, '2017-12-27 17:02:58', null);
INSERT INTO `t_menu` VALUES ('12', '3', '修改用户', '', '', 'user:update', null, '1', null, '2017-12-27 17:04:07', null);
INSERT INTO `t_menu` VALUES ('13', '3', '删除用户', '', '', 'user:delete', null, '1', null, '2017-12-27 17:04:58', null);
INSERT INTO `t_menu` VALUES ('14', '4', '新增角色', '', '', 'role:add', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('15', '4', '修改角色', '', '', 'role:update', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('16', '4', '删除角色', '', '', 'role:delete', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('17', '5', '新增菜单', '', '', 'menu:add', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('18', '5', '修改菜单', '', '', 'menu:update', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('19', '5', '删除菜单', '', '', 'menu:delete', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('20', '6', '新增部门', '', '', 'company:add', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('21', '6', '修改部门', '', '', 'company:update', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('22', '6', '删除部门', '', '', 'company:delete', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('23', '8', '踢出用户', '', '', 'user:kickout', null, '1', null, '2017-12-27 17:11:13', null);
INSERT INTO `t_menu` VALUES ('24', '10', '删除日志', '', '', 'log:delete', null, '1', null, '2017-12-27 17:11:45', null);
INSERT INTO `t_menu` VALUES ('58', '0', '网络资源', '/web', 'PageView', null, 'compass', '0', '4', '2018-01-12 15:28:48', '2018-01-22 19:49:26');
INSERT INTO `t_menu` VALUES ('59', '58', '天气查询', '/web/weather', 'web/Weather', 'weather:view', '', '0', '1', '2018-01-12 15:40:02', '2019-01-22 05:43:19');
INSERT INTO `t_menu` VALUES ('61', '58', '每日一文', '/web/dailyArticle', 'web/DailyArticle', 'article:view', '', '0', '2', '2018-01-15 17:17:14', '2019-01-22 05:43:27');
INSERT INTO `t_menu` VALUES ('64', '1', '字典管理', '/system/dict', 'system/dict/Dict', 'dict:view', '', '0', '5', '2018-01-18 10:38:25', '2018-04-25 09:01:50');
INSERT INTO `t_menu` VALUES ('65', '64', '新增字典', '', '', 'dict:add', null, '1', null, '2018-01-18 19:10:08', null);
INSERT INTO `t_menu` VALUES ('66', '64', '修改字典', '', '', 'dict:update', null, '1', null, '2018-01-18 19:10:27', null);
INSERT INTO `t_menu` VALUES ('67', '64', '删除字典', '', '', 'dict:delete', null, '1', null, '2018-01-18 19:10:47', null);
INSERT INTO `t_menu` VALUES ('81', '58', '影视资讯', '/web/movie', 'EmptyPageView', null, null, '0', '3', '2018-01-22 14:12:59', '2019-01-22 05:43:35');
INSERT INTO `t_menu` VALUES ('82', '81', '正在热映', '/web/movie/hot', 'web/MovieHot', 'movie:hot', '', '0', '1', '2018-01-22 14:13:47', '2019-01-22 05:43:52');
INSERT INTO `t_menu` VALUES ('83', '81', '即将上映', '/web/movie/coming', 'web/MovieComing', 'movie:coming', '', '0', '2', '2018-01-22 14:14:36', '2019-01-22 05:43:58');
INSERT INTO `t_menu` VALUES ('101', '0', '任务调度', '/job', 'PageView', null, 'clock-circle-o', '0', '3', '2018-01-11 15:52:57', null);
INSERT INTO `t_menu` VALUES ('102', '101', '定时任务', '/job/job', 'quartz/job/Job', 'job:view', '', '0', '1', '2018-02-24 15:53:53', '2019-01-22 05:42:50');
INSERT INTO `t_menu` VALUES ('103', '102', '新增任务', '', '', 'job:add', null, '1', null, '2018-02-24 15:55:10', null);
INSERT INTO `t_menu` VALUES ('104', '102', '修改任务', '', '', 'job:update', null, '1', null, '2018-02-24 15:55:53', null);
INSERT INTO `t_menu` VALUES ('105', '102', '删除任务', '', '', 'job:delete', null, '1', null, '2018-02-24 15:56:18', null);
INSERT INTO `t_menu` VALUES ('106', '102', '暂停任务', '', '', 'job:pause', null, '1', null, '2018-02-24 15:57:08', null);
INSERT INTO `t_menu` VALUES ('107', '102', '恢复任务', '', '', 'job:resume', null, '1', null, '2018-02-24 15:58:21', null);
INSERT INTO `t_menu` VALUES ('108', '102', '立即执行任务', '', '', 'job:run', null, '1', null, '2018-02-24 15:59:45', null);
INSERT INTO `t_menu` VALUES ('109', '101', '调度日志', '/job/log', 'quartz/log/JobLog', 'jobLog:view', '', '0', '2', '2018-02-24 16:00:45', '2019-01-22 05:42:59');
INSERT INTO `t_menu` VALUES ('110', '109', '删除日志', '', '', 'jobLog:delete', null, '1', null, '2018-02-24 16:01:21', null);
INSERT INTO `t_menu` VALUES ('113', '2', 'Redis监控', '/monitor/redis/info', 'monitor/RedisInfo', 'redis:view', '', '0', '3', '2018-06-28 14:29:42', null);
INSERT INTO `t_menu` VALUES ('121', '2', '请求追踪', '/monitor/httptrace', 'monitor/Httptrace', null, null, '0', '4', '2019-01-18 02:30:29', null);
INSERT INTO `t_menu` VALUES ('122', '2', '系统信息', '/monitor/system', 'EmptyPageView', null, null, '0', '5', '2019-01-18 02:31:48', '2019-01-18 02:39:46');
INSERT INTO `t_menu` VALUES ('123', '122', 'Tomcat信息', '/monitor/system/tomcatinfo', 'monitor/TomcatInfo', null, null, '0', '2', '2019-01-18 02:32:53', '2019-01-18 02:46:57');
INSERT INTO `t_menu` VALUES ('124', '122', 'JVM信息', '/monitor/system/jvminfo', 'monitor/JvmInfo', null, null, '0', '1', '2019-01-18 02:33:30', '2019-01-18 02:46:51');
INSERT INTO `t_menu` VALUES ('127', '122', '服务器信息', '/monitor/system/info', 'monitor/SystemInfo', null, null, '0', '3', '2019-01-21 07:53:43', '2019-01-21 07:57:00');
INSERT INTO `t_menu` VALUES ('128', '0', '其他模块', '/others', 'PageView', null, 'coffee', '0', '5', '2019-01-22 06:49:59', '2019-01-22 06:50:13');
INSERT INTO `t_menu` VALUES ('129', '128', '导入导出', '/others/excel', 'others/Excel', null, null, '0', '1', '2019-01-22 06:51:36', '2019-01-22 07:06:45');
INSERT INTO `t_menu` VALUES ('130', '3', '导出Excel', null, null, 'user:export', null, '1', null, '2019-01-23 06:35:16', null);
INSERT INTO `t_menu` VALUES ('131', '4', '导出Excel', null, null, 'role:export', null, '1', null, '2019-01-23 06:35:36', null);
INSERT INTO `t_menu` VALUES ('132', '5', '导出Excel', null, null, 'menu:export', null, '1', null, '2019-01-23 06:36:05', null);
INSERT INTO `t_menu` VALUES ('133', '6', '导出Excel', null, null, 'company:export', null, '1', null, '2019-01-23 06:36:25', null);
INSERT INTO `t_menu` VALUES ('134', '64', '导出Excel', null, null, 'dict:export', null, '1', null, '2019-01-23 06:36:43', null);
INSERT INTO `t_menu` VALUES ('135', '3', '密码重置', null, null, 'user:reset', null, '1', null, '2019-01-23 06:37:00', null);
INSERT INTO `t_menu` VALUES ('136', '10', '导出Excel', null, null, 'log:export', null, '1', null, '2019-01-23 06:37:27', null);
INSERT INTO `t_menu` VALUES ('137', '102', '导出Excel', null, null, 'job:export', null, '1', null, '2019-01-23 06:37:59', null);
INSERT INTO `t_menu` VALUES ('138', '109', '导出Excel', null, null, 'jobLog:export', null, '1', null, '2019-01-23 06:38:32', null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(10) NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', '管理员', '2017-12-27 16:23:11', '2019-01-23 06:45:29');
INSERT INTO `t_role` VALUES ('2', '注册用户', '可查看，新增，导出', '2019-01-04 14:11:28', '2019-01-23 07:37:08');
INSERT INTO `t_role` VALUES ('72', '普通用户', '只可查看，好可怜哦', '2019-01-23 07:33:20', null);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL,
  `MENU_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('1', '1');
INSERT INTO `t_role_menu` VALUES ('1', '3');
INSERT INTO `t_role_menu` VALUES ('1', '11');
INSERT INTO `t_role_menu` VALUES ('1', '12');
INSERT INTO `t_role_menu` VALUES ('1', '13');
INSERT INTO `t_role_menu` VALUES ('1', '4');
INSERT INTO `t_role_menu` VALUES ('1', '14');
INSERT INTO `t_role_menu` VALUES ('1', '15');
INSERT INTO `t_role_menu` VALUES ('1', '16');
INSERT INTO `t_role_menu` VALUES ('1', '5');
INSERT INTO `t_role_menu` VALUES ('1', '17');
INSERT INTO `t_role_menu` VALUES ('1', '18');
INSERT INTO `t_role_menu` VALUES ('1', '19');
INSERT INTO `t_role_menu` VALUES ('1', '6');
INSERT INTO `t_role_menu` VALUES ('1', '20');
INSERT INTO `t_role_menu` VALUES ('1', '21');
INSERT INTO `t_role_menu` VALUES ('1', '22');
INSERT INTO `t_role_menu` VALUES ('1', '64');
INSERT INTO `t_role_menu` VALUES ('1', '65');
INSERT INTO `t_role_menu` VALUES ('1', '66');
INSERT INTO `t_role_menu` VALUES ('1', '67');
INSERT INTO `t_role_menu` VALUES ('1', '2');
INSERT INTO `t_role_menu` VALUES ('1', '8');
INSERT INTO `t_role_menu` VALUES ('1', '23');
INSERT INTO `t_role_menu` VALUES ('1', '10');
INSERT INTO `t_role_menu` VALUES ('1', '24');
INSERT INTO `t_role_menu` VALUES ('1', '113');
INSERT INTO `t_role_menu` VALUES ('1', '121');
INSERT INTO `t_role_menu` VALUES ('1', '122');
INSERT INTO `t_role_menu` VALUES ('1', '124');
INSERT INTO `t_role_menu` VALUES ('1', '123');
INSERT INTO `t_role_menu` VALUES ('1', '125');
INSERT INTO `t_role_menu` VALUES ('1', '101');
INSERT INTO `t_role_menu` VALUES ('1', '102');
INSERT INTO `t_role_menu` VALUES ('1', '103');
INSERT INTO `t_role_menu` VALUES ('1', '104');
INSERT INTO `t_role_menu` VALUES ('1', '105');
INSERT INTO `t_role_menu` VALUES ('1', '106');
INSERT INTO `t_role_menu` VALUES ('1', '107');
INSERT INTO `t_role_menu` VALUES ('1', '108');
INSERT INTO `t_role_menu` VALUES ('1', '109');
INSERT INTO `t_role_menu` VALUES ('1', '110');
INSERT INTO `t_role_menu` VALUES ('1', '58');
INSERT INTO `t_role_menu` VALUES ('1', '59');
INSERT INTO `t_role_menu` VALUES ('1', '61');
INSERT INTO `t_role_menu` VALUES ('1', '81');
INSERT INTO `t_role_menu` VALUES ('1', '82');
INSERT INTO `t_role_menu` VALUES ('1', '83');
INSERT INTO `t_role_menu` VALUES ('1', '127');
INSERT INTO `t_role_menu` VALUES ('1', '128');
INSERT INTO `t_role_menu` VALUES ('1', '129');
INSERT INTO `t_role_menu` VALUES ('1', '130');
INSERT INTO `t_role_menu` VALUES ('1', '135');
INSERT INTO `t_role_menu` VALUES ('1', '131');
INSERT INTO `t_role_menu` VALUES ('1', '132');
INSERT INTO `t_role_menu` VALUES ('1', '133');
INSERT INTO `t_role_menu` VALUES ('1', '134');
INSERT INTO `t_role_menu` VALUES ('1', '136');
INSERT INTO `t_role_menu` VALUES ('1', '137');
INSERT INTO `t_role_menu` VALUES ('1', '138');
INSERT INTO `t_role_menu` VALUES ('72', '1');
INSERT INTO `t_role_menu` VALUES ('72', '3');
INSERT INTO `t_role_menu` VALUES ('72', '4');
INSERT INTO `t_role_menu` VALUES ('72', '5');
INSERT INTO `t_role_menu` VALUES ('72', '6');
INSERT INTO `t_role_menu` VALUES ('72', '64');
INSERT INTO `t_role_menu` VALUES ('72', '2');
INSERT INTO `t_role_menu` VALUES ('72', '8');
INSERT INTO `t_role_menu` VALUES ('72', '10');
INSERT INTO `t_role_menu` VALUES ('72', '113');
INSERT INTO `t_role_menu` VALUES ('72', '121');
INSERT INTO `t_role_menu` VALUES ('72', '122');
INSERT INTO `t_role_menu` VALUES ('72', '124');
INSERT INTO `t_role_menu` VALUES ('72', '123');
INSERT INTO `t_role_menu` VALUES ('72', '127');
INSERT INTO `t_role_menu` VALUES ('72', '101');
INSERT INTO `t_role_menu` VALUES ('72', '102');
INSERT INTO `t_role_menu` VALUES ('72', '109');
INSERT INTO `t_role_menu` VALUES ('72', '58');
INSERT INTO `t_role_menu` VALUES ('72', '59');
INSERT INTO `t_role_menu` VALUES ('72', '61');
INSERT INTO `t_role_menu` VALUES ('72', '81');
INSERT INTO `t_role_menu` VALUES ('72', '82');
INSERT INTO `t_role_menu` VALUES ('72', '83');
INSERT INTO `t_role_menu` VALUES ('72', '128');
INSERT INTO `t_role_menu` VALUES ('72', '129');
INSERT INTO `t_role_menu` VALUES ('2', '3');
INSERT INTO `t_role_menu` VALUES ('2', '1');
INSERT INTO `t_role_menu` VALUES ('2', '4');
INSERT INTO `t_role_menu` VALUES ('2', '5');
INSERT INTO `t_role_menu` VALUES ('2', '6');
INSERT INTO `t_role_menu` VALUES ('2', '64');
INSERT INTO `t_role_menu` VALUES ('2', '2');
INSERT INTO `t_role_menu` VALUES ('2', '8');
INSERT INTO `t_role_menu` VALUES ('2', '10');
INSERT INTO `t_role_menu` VALUES ('2', '113');
INSERT INTO `t_role_menu` VALUES ('2', '121');
INSERT INTO `t_role_menu` VALUES ('2', '122');
INSERT INTO `t_role_menu` VALUES ('2', '124');
INSERT INTO `t_role_menu` VALUES ('2', '123');
INSERT INTO `t_role_menu` VALUES ('2', '125');
INSERT INTO `t_role_menu` VALUES ('2', '101');
INSERT INTO `t_role_menu` VALUES ('2', '102');
INSERT INTO `t_role_menu` VALUES ('2', '109');
INSERT INTO `t_role_menu` VALUES ('2', '58');
INSERT INTO `t_role_menu` VALUES ('2', '59');
INSERT INTO `t_role_menu` VALUES ('2', '61');
INSERT INTO `t_role_menu` VALUES ('2', '81');
INSERT INTO `t_role_menu` VALUES ('2', '82');
INSERT INTO `t_role_menu` VALUES ('2', '83');
INSERT INTO `t_role_menu` VALUES ('2', '127');
INSERT INTO `t_role_menu` VALUES ('2', '128');
INSERT INTO `t_role_menu` VALUES ('2', '129');
INSERT INTO `t_role_menu` VALUES ('2', '130');
INSERT INTO `t_role_menu` VALUES ('2', '14');
INSERT INTO `t_role_menu` VALUES ('2', '17');
INSERT INTO `t_role_menu` VALUES ('2', '132');
INSERT INTO `t_role_menu` VALUES ('2', '20');
INSERT INTO `t_role_menu` VALUES ('2', '133');
INSERT INTO `t_role_menu` VALUES ('2', '65');
INSERT INTO `t_role_menu` VALUES ('2', '134');
INSERT INTO `t_role_menu` VALUES ('2', '136');
INSERT INTO `t_role_menu` VALUES ('2', '103');
INSERT INTO `t_role_menu` VALUES ('2', '137');
INSERT INTO `t_role_menu` VALUES ('2', '138');
INSERT INTO `t_role_menu` VALUES ('2', '131');

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `FIELD1` varchar(20) NOT NULL,
  `FIELD2` int(11) NOT NULL,
  `FIELD3` varchar(100) NOT NULL,
  `CREATE_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES ('字段1', '1', 'mrbird@gmail.com', '2019-01-22 16:26:51');
INSERT INTO `t_test` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', '10', 'mrbird9@gmail.com', '2019-01-23 03:01:03');
INSERT INTO `t_test` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', '10', 'mrbird9@gmail.com', '2019-01-23 03:03:49');
INSERT INTO `t_test` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2019-01-23 03:07:47');
INSERT INTO `t_test` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', '10', 'mrbird9@gmail.com', '2019-01-23 03:08:09');
INSERT INTO `t_test` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2019-01-23 03:19:52');
INSERT INTO `t_test` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2019-01-23 03:20:56');
INSERT INTO `t_test` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '7', 'mrbird6@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '8', 'mrbird7@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '9', 'mrbird8@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '11', 'mrbird10@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '12', 'mrbird11@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '14', 'mrbird13@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '15', 'mrbird14@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '16', 'mrbird15@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '18', 'mrbird17@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '19', 'mrbird18@gmail.com', '2019-01-23 06:12:38');
INSERT INTO `t_test` VALUES ('字段1', '20', 'mrbird19@gmail.com', '2019-01-23 06:12:38');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'mrbird', '94f860c4bbfeb2f49c84e321fdda4b07', '1', 'mrbird123@hotmail.com', '13455533233', '1', '2017-12-27 15:47:19', '2019-01-17 02:34:19', '2019-01-28 01:53:58', '2', '我是帅比作者。', 'ubnKSIfAJTxIgXOKlciN.png');
INSERT INTO `t_user` VALUES ('2', 'scott', '7b44a5363e3fd52435beb472e1d2b91f', '6', 'scott@qq.com', '15134627380', '1', '2017-12-29 16:16:39', '2019-01-18 00:59:09', '2019-01-28 01:54:09', '0', '我是scott，嗯嗯', 'jZUIxmJycoymBprLOUbT.png');
INSERT INTO `t_user` VALUES ('12', 'jack', '552649f10640385d0728a80a4242893e', '6', 'jack@hotmail.com', null, '1', '2019-01-23 07:34:05', '2019-01-24 03:08:01', '2019-01-24 08:52:03', '0', null, 'default.jpg');

-- ----------------------------
-- Table structure for t_user_config
-- ----------------------------
DROP TABLE IF EXISTS `t_user_config`;
CREATE TABLE `t_user_config` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `THEME` varchar(10) DEFAULT NULL COMMENT '系统主题 dark暗色风格，light明亮风格',
  `LAYOUT` varchar(10) DEFAULT NULL COMMENT '系统布局 side侧边栏，head顶部栏',
  `MULTI_PAGE` char(1) DEFAULT NULL COMMENT '页面风格 1多标签页 0单页',
  `FIX_SIDERBAR` char(1) DEFAULT NULL COMMENT '页面滚动是否固定侧边栏 1固定 0不固定',
  `FIX_HEADER` char(1) DEFAULT NULL COMMENT '页面滚动是否固定顶栏 1固定 0不固定',
  `COLOR` varchar(20) DEFAULT NULL COMMENT '主题颜色 RGB值',
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_config
-- ----------------------------
INSERT INTO `t_user_config` VALUES ('1', 'light', 'side', '1', '1', '1', 'rgb(24, 144, 255)');
INSERT INTO `t_user_config` VALUES ('2', 'light', 'head', '0', '1', '1', 'rgb(24, 144, 255)');
INSERT INTO `t_user_config` VALUES ('12', 'dark', 'side', '1', '1', '1', 'rgb(66, 185, 131)');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1');
INSERT INTO `t_user_role` VALUES ('2', '2');
INSERT INTO `t_user_role` VALUES ('12', '72');

-- ----------------------------
-- Function structure for findDeptChildren
-- ----------------------------
DROP FUNCTION IF EXISTS `findDeptChildren`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `findDeptChildren`(rootId INT) RETURNS varchar(4000) CHARSET utf8
  BEGIN
    DECLARE sTemp VARCHAR(4000);
    DECLARE sTempChd VARCHAR(4000);
    SET sTemp = '$';
    SET sTempChd = CAST(rootId as CHAR);
    WHILE sTempChd is not null DO
      SET sTemp = CONCAT(sTemp,',',sTempChd);
      SELECT GROUP_CONCAT(dept_id) INTO sTempChd FROM t_dept
      WHERE FIND_IN_SET(parent_id,sTempChd)>0;
    END WHILE;
    RETURN sTemp;
  END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for findMenuChildren
-- ----------------------------
DROP FUNCTION IF EXISTS `findMenuChildren`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `findMenuChildren`(rootId INT) RETURNS varchar(4000) CHARSET utf8
BEGIN
  DECLARE sTemp VARCHAR(4000);
    DECLARE sTempChd VARCHAR(4000);
    SET sTemp = '$';
    SET sTempChd = CAST(rootId as CHAR);
    WHILE sTempChd is not null DO
    SET sTemp = CONCAT(sTemp,',',sTempChd);
    SELECT GROUP_CONCAT(menu_id) INTO sTempChd FROM t_menu
    WHERE FIND_IN_SET(parent_id,sTempChd)>0;
END WHILE;
RETURN sTemp;
END
;;
DELIMITER ;

set global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `sys_resume`;
CREATE TABLE `resume` (
  `resume_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `photo` varchar(255) NOT NULL COMMENT '简历头像',
  `profession` varchar(255) DEFAULT NULL COMMENT'职业',
  `user_address` varchar(255) NOT NULL COMMENT '地址',
  `language_1` varchar(255) NOT NULL COMMENT '语言',
  `proficiency_1` varchar(255) DEFAULT NULL COMMENT'熟练程度',
  `grade_1` varchar(255) NOT NULL COMMENT '等级',
  `status` varchar(255) NOT NULL COMMENT '状态',
  `account` varchar(255) DEFAULT NULL COMMENT'户口',
  `trade` varchar(255) NOT NULL COMMENT '期望行业',
  `functional` varchar(255) DEFAULT NULL COMMENT'期望职能',
  `work_address` varchar(255) NOT NULL COMMENT '期望工作地点',
  `annual_salary` DOUBLE DEFAULT NULL COMMENT'期望薪资',
  `current_salary` DOUBLE NOT NULL COMMENT '当前薪资',
  `user_company` varchar(255) NOT NULL COMMENT '公司名称',
  `company_trade` varchar(255) DEFAULT NULL COMMENT'公司行业',
  `company_address` varchar(255) NOT NULL COMMENT '工作地点',
  `under_number` INT DEFAULT NULL COMMENT'下属人数',
  `employment_period_from` DATETIME DEFAULT NULL COMMENT '任职时间从',
  `employment_period_to` DATETIME DEFAULT NULL COMMENT '任职时间到',
  `job_performance` varchar(255) DEFAULT NULL COMMENT'职责业绩',
  `department` varchar(255) NOT NULL COMMENT '所在部门',
  `company_nature` varchar(255) DEFAULT NULL COMMENT'公司性质',
  `company_scale` varchar(255) DEFAULT NULL COMMENT '公司规模',
  `company_intro` varchar(255) DEFAULT NULL COMMENT '公司简介',
  `monthly_pay_number` DOUBLE DEFAULT NULL COMMENT'月薪',
  `monthly_pay` int DEFAULT NULL COMMENT '月薪数',
  `label_name` varchar(255) NOT NULL COMMENT '标签名',
  `school_name` varchar(255) NOT NULL COMMENT '学校名称',
  `major_name` varchar(255) DEFAULT NULL COMMENT'专业名称',
  `study_start` DATE NOT NULL COMMENT '就读时间从',
  `study_end` DATE DEFAULT NULL COMMENT'就读时间至',
  `education` varchar(255) NOT NULL COMMENT '学历',
  `recruitment_flag` varchar(10) NOT NULL COMMENT '是否统招',
  `project_name` varchar(255) NOT NULL COMMENT '项目名称',
  `company_name` varchar(255) NOT NULL COMMENT '公司名称',
  `time_start` DATE DEFAULT NULL COMMENT '工作时间从',
  `time_end` DATE DEFAULT NULL COMMENT'工作时间至',
  `description` varchar(255) DEFAULT NULL COMMENT '项目描述',
  `duty` varchar(255) DEFAULT NULL COMMENT '项目职责',
  `performance` varchar(255) DEFAULT NULL COMMENT '项目业绩',
  `self_assessmet` varchar(255) DEFAULT NULL COMMENT '自我评价',
  `add_information` varchar(255) DEFAULT NULL COMMENT '附加信息内容',
  PRIMARY KEY (`resume_id`) USING BTREE
) COMMENT '简历表' ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `issue_time` DATETIME DEFAULT NULL COMMENT'发布时间',
  `need_worktime` varchar(255) DEFAULT NULL COMMENT'工作经验',
  `name` varchar(255) DEFAULT NULL COMMENT '职位标题',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `salary` DOUBLE DEFAULT NULL COMMENT '薪资',
  `need_education` varchar(255) DEFAULT NULL COMMENT '学历要求',
  `issue_company` varchar(255) DEFAULT NULL COMMENT '发布公司',
  `description` varchar(255) DEFAULT NULL COMMENT '职位描述',
  `requested` varchar(255) DEFAULT NULL COMMENT '职责要求',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT '职位表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for position_collect
-- ----------------------------
DROP TABLE IF EXISTS `position_collect`;
CREATE TABLE `position_collect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NOT NULL COMMENT'用户ID',
  `position_id` bigint(20) NOT NULL COMMENT'职位ID',
  `collect_time` DATETIME DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT '职位收藏表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for position_send
-- ----------------------------
DROP TABLE IF EXISTS `position_send`;
CREATE TABLE `position_send` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NOT NULL COMMENT'用户ID',
  `position_id` bigint(20) NOT NULL COMMENT'职位ID',
  `send_time` DATETIME DEFAULT NULL COMMENT '投递的时间',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT '职位投递表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_trade
-- ----------------------------
DROP TABLE IF EXISTS `sys_trade`;
CREATE TABLE `sys_trade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `trade_name` varchar(255) NOT NULL COMMENT'行业名称',
  `trade_code` varchar(255) NOT NULL COMMENT'行业代码',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT '行业表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for trade_direction
-- ----------------------------
DROP TABLE IF EXISTS `trade_direction`;
CREATE TABLE `trade_direction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `trade_id` bigint(20) NOT NULL COMMENT'行业ID',
  `direction_name` varchar(255) NOT NULL COMMENT'方向名称',
  `direction_code` varchar(255) NOT NULL COMMENT'方向代码',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT '行业方向表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for trade_direction
-- ----------------------------
DROP TABLE IF EXISTS `trade_kind`;
CREATE TABLE `trade_kind` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `direction_id` bigint(20) NOT NULL COMMENT'行业方向ID',
  `kind_code` varchar(255) NOT NULL COMMENT'方向种类名称',
  `kind_name` varchar(255) NOT NULL COMMENT'方向种类代码',
  PRIMARY KEY (`id`) USING BTREE
) COMMENT '行业方向种类表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_person
-- ----------------------------
DROP TABLE IF EXISTS `t_person`;
CREATE TABLE `t_person` (
  `PERSON_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '人才ID',
  `PERSON_NAME` varchar(20) NOT NULL COMMENT '人才姓名',
  `PERSON_SEX` char(1) NOT NULL COMMENT '人才性别',
  `PERSON_SORT` varchar(20) NOT NULL COMMENT '人才类别',
  `PERSON_LEVEL` varchar(20) NOT NULL COMMENT '人才级别',
  `BIRTHDAY` DATE NOT NULL COMMENT '出生日期',
  `WORK_YEARS` varchar(10) NOT NULL COMMENT '工作年限',
  `GRADUATE_TIME` DATE NOT NULL COMMENT '毕业时间',
  `GRADUATE_INSTITUTIONS` varchar(100) NOT NULL COMMENT '毕业院校',
  `MAJOR` varchar(100) NOT NULL COMMENT '专业',
  `EDUCATION_BACKGROUND` varchar(100) NOT NULL COMMENT '学历',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '电子邮件',
  `MOBILE_PHONE` varchar(100) NOT NULL COMMENT '手机号码',
  `WORK_PHONE` varchar(100) DEFAULT NULL COMMENT '办公电话',
  `FAMILY_PHONE` varchar(100) DEFAULT NULL COMMENT '家庭电话',
  `IDENTITY_CARD` varchar(100) DEFAULT NULL COMMENT '身份证号',
  `NATIONALITY` varchar(100) NOT NULL COMMENT '国籍',
  `NATION` varchar(100) NOT NULL COMMENT '民族',
  `HEIGHT` varchar(100) DEFAULT NULL COMMENT '身高',
  `WEIGHT` varchar(100) DEFAULT NULL COMMENT '体重',
  `ACCOUNT` varchar(100) DEFAULT NULL COMMENT '户口',
  `MARITAL_STATUS` char(1) DEFAULT NULL COMMENT '婚姻状况',
  `NATIVE_PLACE` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `CURRENT_ADDRESS` varchar(100) DEFAULT NULL COMMENT '现在居住地',
  `COMPANY_NAME` varchar(100) NOT NULL COMMENT '现任公司',
  `POSITION_NAME` varchar(100) NOT NULL COMMENT '职位',
  `CURRENT_SALARY` DOUBLE NOT NULL COMMENT '目前薪资',
  `OFFICE_TERM` varchar(100) NOT NULL COMMENT '任职年限',
  `SELF_ASSESSMENT` varchar(255) NOT NULL COMMENT '自我评价',
  `WORK_EXPERIENCE` varchar(255) NOT NULL COMMENT '工作经历',
  `PROJECT_EXPERIENCE` varchar(255) NOT NULL COMMENT '项目经验',
  `EDUCATION_RECORD` varchar(255) NOT NULL COMMENT '教育经历',
  `TRAIN_RECORD` varchar(255) NOT NULL COMMENT '培训经历',
  `LANGUAGE_SKILL` varchar(100) NOT NULL COMMENT '语言能力',
  `COMPUTER` varchar(255) NOT NULL COMMENT '计算机',
  `RELATED_SKILL` varchar(255) NOT NULL COMMENT '相关技能',
  `CONTEN` varchar(255) NOT NULL COMMENT '备注',
  `RESUME` varchar(255) DEFAULT NULL COMMENT '简历路径',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`PERSON_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project` (
  `PROJECT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PROJECT_ID',
  `PROJECT_CODE` varchar(255) NOT NULL COMMENT'项目编号',
  `PROJECT_NAME` varchar(255) NOT NULL COMMENT'项目名称',
  `START_TIME` DATE NOT NULL COMMENT'开始日期',
  `PLAN_FINISH_TIME` DATE NOT NULL COMMENT'计划完成日期',
  `PROJECT_STATUS` varchar(255) NOT NULL COMMENT'项目状态',
  `PRIORITY_LEVEL` varchar(255) NOT NULL COMMENT'优先级别',
  `COMPANY_NAME` varchar(255) NOT NULL COMMENT'客户名称',
  `GATHER_STATUS` varchar(255) NOT NULL COMMENT'收款状态',
  `CUSTOMER_MANAGER` varchar(255) NOT NULL COMMENT'客户经理',
  `BUSINESS_PERSON` varchar(255) NOT NULL COMMENT'业务人员',
  `PROJECT_CHARGE` varchar(255) NOT NULL COMMENT'项目主管',
  `PROJECT_COUNSELOR` varchar(255) NOT NULL COMMENT'项目顾问',
  `COMPANY_CONTACT` varchar(255) NOT NULL COMMENT'客户联系人',
  `SEARCH_PERSON` varchar(255) NOT NULL COMMENT'寻访员',
  `COMPANY_PAYER` varchar(255) NOT NULL COMMENT'客户付款人',
  `COMPANY_INFO` varchar(255) NOT NULL COMMENT'公司简介',
  `REPORT_OBJECT` varchar(255) NOT NULL COMMENT'汇报对象',
  `SUBORDINATE_POSITION` varchar(255) NOT NULL COMMENT'下属职位',
  `WORK_ADDRESS` varchar(255) NOT NULL COMMENT'工作地点',
  `NUMBER` varchar(255) NOT NULL COMMENT'招聘人数',
  `TRADE` varchar(255) NOT NULL COMMENT'行业',
  `SUITABLE_FUNCTION` varchar(255) NOT NULL COMMENT'适合职能',
  `LANGUAGE_REQUIRE` varchar(255) NOT NULL COMMENT'外语要求',
  `SEX_REQUIRE` CHAR NOT NULL COMMENT'性别要求',
  `POSITION_LEVEL` varchar(255) NOT NULL COMMENT'职位级别',
  `POSITION_SORT` varchar(255) NOT NULL COMMENT'职位类型',
  `AGE_REQUIRE` INT NOT NULL COMMENT'年龄要求',
  `POSITION_INFO` varchar(255) NOT NULL COMMENT'职位描述',
  `POSITION_REASON` varchar(255) NOT NULL COMMENT'职位开发原因',
  `SALARY_RANGE` varchar(255) NOT NULL COMMENT'薪资范围',
  `BONUS` varchar(255) NOT NULL COMMENT'奖金',
  `WELFARE` varchar(255) NOT NULL COMMENT'福利',
  `PROGRESS` varchar(255) NOT NULL COMMENT'委托前进展',
  `EXECUTION_ANALYZE` varchar(255) NOT NULL COMMENT'执行分析',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`project_id`) USING BTREE
) COMMENT '项目表' ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_contract`;
CREATE TABLE `t_contract` (
  `CONTRACT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'CONTRACT_ID',
  `CONTRACT_CODE` varchar(255) NOT NULL COMMENT'合同编号',
  `CONTRACT_NAME` varchar(255) NOT NULL COMMENT'合同名称',
  `START_TIME` DATE NOT NULL COMMENT'开始日期',
  `FINISH_TIME` DATE NOT NULL COMMENT'完成日期',
  `MAKE_INVOICE_TIME` DATE NOT NULL COMMENT'开票日期',
  `PAY_WAY` varchar(255) NOT NULL COMMENT'支付方式',
  `COMPANY_SIGNED` varchar(255) NOT NULL COMMENT'公司签约人',
  `CUSTOMER_SIGNED` varchar(255) NOT NULL COMMENT'客户签约人',
  `SIGNED_TIME` DATE NOT NULL COMMENT'签约时间',
  `SIGNED_ADDRESS` varchar(255) NOT NULL COMMENT'签约地点',
  `STORE_ADDRESS` varchar(255) NOT NULL COMMENT'存放地点',
  `FILL_TIME` DATE NOT NULL COMMENT'归档日期',
  `MONEY` DOUBLE NOT NULL COMMENT'金额',
  `EXECUTE_STATUS` varchar(255) NOT NULL COMMENT'执行状态',
  `CONTRACT_INFO` varchar(255) NOT NULL COMMENT'合同内容',
  `ORDER_NUMBER` varchar(255) NOT NULL COMMENT'对应订单',
  `INFO` varchar(255) NOT NULL COMMENT'备注',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`CONTRACT_ID`) USING BTREE
) COMMENT '合同表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_person_project
-- ----------------------------
DROP TABLE IF EXISTS `t_person_project`;
CREATE TABLE `t_person_project` (
  `PERSON_PROJECT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PERSON_PROJECT_ID',
  `PROJECT_ID` bigint(20) NOT NULL COMMENT'项目ID',
  `PERSON_ID` bigint(20) NOT NULL COMMENT '人才ID',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人ID',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`PERSON_PROJECT_ID`) USING BTREE
) COMMENT '人才项目表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_person_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project_contact`;
CREATE TABLE `t_project_contact` (
  `PROJECT_CONTACT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PROJECT_CONTACT_ID',
  `PROJECT_ID` bigint(20) NOT NULL COMMENT'项目ID',
  `PERSON_ID` bigint(20) NOT NULL COMMENT '人才ID',
  `CONTACT_TYPE` VARCHAR(10) NOT NULL COMMENT '联系类型',
  `PERSON_STATUS` VARCHAR(10) NOT NULL COMMENT '人才状态',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`PROJECT_CONTACT_ID`) USING BTREE
) COMMENT '项目联系表' ENGINE=InnoDB DEFAULT CHARSET=utf8;

set global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';