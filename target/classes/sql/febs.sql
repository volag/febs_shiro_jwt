/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : febs_shiro_jwt

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-05-08 10:16:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `COMPANY_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `COMPANY_NAME` varchar(100) NOT NULL COMMENT '部门名称',
  `COMPANY_ADDRESS` varchar(100) NOT NULL COMMENT '公司地址',
  `finance` varchar(100) NOT NULL COMMENT '融资情况',
  `scale` varchar(100) NOT NULL COMMENT '公司规模',
  `nature` varchar(100) NOT NULL COMMENT '公司性质',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司介绍',
  `tag1` varchar(100) NOT NULL COMMENT '公司标签1',
  `tag2` varchar(100) NOT NULL COMMENT '公司标签2',
  `tag3` varchar(100) NOT NULL COMMENT '公司标签3',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `avatar` varchar(100) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL COMMENT '行业',
  PRIMARY KEY (`COMPANY_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '开发部', '上海', '未融资', '1-49人', '国有企业', '北京三峡鑫泰投资基金管理有限公司（以下简称“公司”）成立于2017年3月，注册资本2000万元人民币。', '绩效奖金', '交通补助', '通讯津贴', '2019-04-06 12:46:40', '2019-04-14 03:06:13', '3c387d8f-f034-4d9c-a81e-18fbab99b83d.jpg', '基金');
INSERT INTO `t_company` VALUES ('2', '腾讯', '深圳-南山区', 'IPO上市', '10000以上', '上市公司', '腾讯公司成立于1998年11月，是目前中国最大的互联网综合服务提供商之一，也是中国服务用户最多的互联网企业之一。成立十年多以来，腾讯一直秉承“一切以用户价值为依归”的经营理念，始终处于稳健发展的状态。', '为亿万网民服务', '弹性工作', '领导好', '2019-04-07 11:45:00', null, '0c814cbd-7ad3-4af6-96c8-3f6a7acc0a16.png', '互联网');
INSERT INTO `t_company` VALUES ('7', '阿里巴巴', '杭州', 'IPO上市', '10000以上', '上市公司', '阿里巴巴集团的使命是让天下没有难做的生意。', '管理规范', '股票期权', '绩效奖金', '2019-04-07 11:46:48', null, '6e9131d8-a722-44e1-840c-34f158ae7b0d.png', '互联网');
INSERT INTO `t_company` VALUES ('8', 'yoho', '南京', 'D轮', '500-999人', '上市公司', 'YOHO!新力传媒(南京新与力文化传播有限公司)，中国潮流文化产业传播者、引领者和创造者。', 'IT/互联网', '电子商务', '消费品', '2019-04-07 11:48:02', null, 'd8e32c6f-848e-4795-8a9d-4341a14445ee.png', '互联网');
INSERT INTO `t_company` VALUES ('9', '滴滴', '北京-海淀市', 'D轮', '5000-10000人', '上市公司', '滴滴出行是一站式移动出行平台；为5.5亿用户提供出租车、快车、专车、豪华车、公交、代驾、企业级、共享单车、共享电单车、共享汽车、外卖等多元化的出行和运输服务。在滴滴平台，超过3100万车主及司机获得灵活的工作和收入机会。', '独角兽', '2018互联网300强', 'IT/互联网', '2019-04-07 11:49:15', null, 'f09ed505-09a1-47cc-9f12-ae77b06e4630.jpg', '互联网');
INSERT INTO `t_company` VALUES ('10', '盛大', '上海', 'OIP', '1-49人', '上市公司', '很棒', '绩效奖金', '五险一金', '带薪年假', '2019-04-11 01:37:55', null, 'cbe8345e-c344-4ee8-b8ad-de726376196e.png', '互联网');
INSERT INTO `t_company` VALUES ('11', '上海汉得', '上海', 'B轮', '10000人', '上市公司', '无', '五险一金', '绩效考核', '带薪年假', '2019-04-14 02:29:37', null, '870e0bd9-fd8c-41c8-a6a2-683208498e8c.png', 'IT');
INSERT INTO `t_company` VALUES ('12', '今日头条', '北京-海淀区', 'D轮', '10000以上', '上市公司', '今日头条是基于数据挖掘的智能推荐引擎，现在处于非常好的发展期，一年多的时间内用户数已达到9000万。', '社交社区', '人工智能', '推荐引擎', '2019-05-06 09:58:26', null, '7dfd0cd7-ee1e-4a55-a847-87c80e13a8ad.png', '互联网');
INSERT INTO `t_company` VALUES ('13', '华为', '深圳', '未融资', '10000以上', '事业单位', '我们一直专注于ICT领域，为运营商、企业客户和消费者提供有竞争力的ICT解决方案、产品和服务。', '人工智能', '智能家居', '独角兽', '2019-05-06 10:00:11', null, 'fc97e8ad-3305-4906-8786-d09a91a2dd65.png', '通信');
INSERT INTO `t_company` VALUES ('14', '上海挚极', '上海', '天使轮', '100-499人', '政府/非盈利单位', '上海挚极信息科技有限公司前身是上海宝信软件股份有限公司车联网业务部，', '生产制造', '汽车交通', '能源环保', '2019-05-06 10:01:46', null, null, '计算机软件');
INSERT INTO `t_company` VALUES ('15', '惠州市宝高', '武汉', '无', '500-999人', '私营/民营企业', '宝高科技专注于移动互联网项目，涉及业务比较广泛，主要有休闲游戏类', '绩效奖金', '管理规范', '外派津贴', '2019-05-06 10:03:26', null, null, '互联网');
INSERT INTO `t_company` VALUES ('16', '珠海一讯牵', '珠海', '未融资', '1-49人', '外企/外商独资', ' 珠海一讯牵通讯科技有限公司为澳门电讯有限公司', '带薪年假', '年底双薪', '交通补助', '2019-05-06 10:09:01', null, null, '计算机软件');

-- ----------------------------
-- Table structure for t_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_contract`;
CREATE TABLE `t_contract` (
  `CONTRACT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'CONTRACT_ID',
  `CONTRACT_CODE` varchar(255) NOT NULL COMMENT '合同编号',
  `CONTRACT_NAME` varchar(255) NOT NULL COMMENT '合同名称',
  `START_TIME` datetime NOT NULL COMMENT '开始日期',
  `FINISH_TIME` datetime NOT NULL COMMENT '完成日期',
  `MAKE_INVOICE_TIME` datetime NOT NULL COMMENT '开票日期',
  `PAY_WAY` varchar(255) NOT NULL COMMENT '支付方式',
  `COMPANY_SIGNED` varchar(255) NOT NULL COMMENT '公司签约人',
  `CUSTOMER_SIGNED` varchar(255) NOT NULL COMMENT '客户签约人',
  `SIGNED_TIME` datetime DEFAULT NULL COMMENT '签约时间',
  `SIGNED_ADDRESS` varchar(255) NOT NULL COMMENT '签约地点',
  `STORE_ADDRESS` varchar(255) NOT NULL COMMENT '存放地点',
  `FILL_TIME` date DEFAULT NULL COMMENT '归档日期',
  `MONEY` double(255,0) NOT NULL COMMENT '金额',
  `EXECUTE_STATUS` varchar(255) NOT NULL COMMENT '执行状态',
  `CONTRACT_INFO` varchar(255) NOT NULL COMMENT '合同内容',
  `ORDER_NUMBER` varchar(255) NOT NULL COMMENT '对应订单',
  `INFO` varchar(255) NOT NULL COMMENT '备注',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`CONTRACT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='合同表';

-- ----------------------------
-- Records of t_contract
-- ----------------------------
INSERT INTO `t_contract` VALUES ('1', 'Aqwe123', '人才引荐合同', '2019-04-10 00:00:00', '2019-04-11 00:00:00', '2019-04-18 00:00:00', '招商银行', '张三', '王二妹子', '2019-04-24 00:00:00', '上海', '上海浦东', '2019-04-25', '500', '正在执行', '。。。', 'NCHU', '无', '1', '2019-04-10 11:15:37', '2019-04-14 06:25:45');
INSERT INTO `t_contract` VALUES ('2', 'ADSAD', '人才引荐合同', '2019-04-17 16:00:00', '2019-04-24 16:00:00', '2019-04-10 16:00:00', '农业银行', '张三', '王二', '2019-04-10 16:00:00', '上海', '上海', null, '100', '0', '人才引荐', 'ADS', 'qwe', '1', '2019-04-11 03:00:17', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
INSERT INTO `t_dict` VALUES ('34', '0', '未收款', 'GATHER_STATUS', 't_project');
INSERT INTO `t_dict` VALUES ('35', '1', '已收款', 'GATHER_STATUS', 't_project');
INSERT INTO `t_dict` VALUES ('36', '0', '进行中', 'projectStatus', 't_project');
INSERT INTO `t_dict` VALUES ('37', '1', '完成', 'projectStatus', 't_project');

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
) ENGINE=InnoDB AUTO_INCREMENT=2247 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('2234', 'mrbird', '修改菜单/按钮', '127', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=149, parentId=148, menuName=客户信息, path=/company/company, component=company/company/Company, perms=company:view, icon=file-text, type=0, orderNum=1.0, createTime=null, modifyTime=Sun Apr 28 13:55:03 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-04-28 05:55:04', '');
INSERT INTO `t_log` VALUES ('2235', 'mrbird', '删除菜单/按钮', '132', 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"147\"', '127.0.0.1', '2019-04-28 05:55:17', '');
INSERT INTO `t_log` VALUES ('2236', 'mrbird', '修改菜单/按钮', '181', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=141, parentId=0, menuName=职位管理, path=/position, component=PageView, perms=position:view, icon=team, type=0, orderNum=4.0, createTime=null, modifyTime=Sun Apr 28 13:55:51 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-04-28 05:55:52', '');
INSERT INTO `t_log` VALUES ('2237', 'mrbird', '删除菜单/按钮', '133', 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"190\"', '127.0.0.1', '2019-04-28 05:56:01', '');
INSERT INTO `t_log` VALUES ('2238', 'mrbird', '修改菜单/按钮', '205', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=152, parentId=0, menuName=项目管理, path=/project, component=PageView, perms=project:view, icon=folder-open, type=0, orderNum=7.0, createTime=null, modifyTime=Sun Apr 28 13:56:34 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-04-28 05:56:35', '');
INSERT INTO `t_log` VALUES ('2239', 'mrbird', '修改菜单/按钮', '82', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=153, parentId=0, menuName=合同管理, path=/contract, component=PageView, perms=contract:view, icon=file, type=0, orderNum=8.0, createTime=null, modifyTime=Sun Apr 28 13:56:55 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-04-28 05:56:55', '');
INSERT INTO `t_log` VALUES ('2240', 'mrbird', '修改菜单/按钮', '129', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=162, parentId=0, menuName=人才库, path=/person, component=PageView, perms=person:view, icon=user, type=0, orderNum=9.0, createTime=null, modifyTime=Sun Apr 28 13:57:09 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-04-28 05:57:10', '');
INSERT INTO `t_log` VALUES ('2241', 'mrbird', '新增用户', '125', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=17, username=蹦跶蹦跶, password=86296b165286224d5f8032025a79c2f6, companyName=null, email=15779551333@163.com, mobile=15779551333, status=1, createTime=Sun Apr 28 14:46:48 CST 2019, modifyTime=null, birthday=null, lastLoginTime=null, ssex=0, description=null, avatar=default.jpg, resume=null, roleId=1, roleName=null, sortField=null, sortOrder=null, createTimeFrom=null, createTimeTo=null, id=null)\"', '127.0.0.1', '2019-04-28 06:46:49', '');
INSERT INTO `t_log` VALUES ('2242', 'mrbird', '修改菜单/按钮', '661', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=140, parentId=139, menuName=简历查看, path=/resume/resume, component=resume/resume/Resume, perms=null, icon=meh, type=0, orderNum=1.0, createTime=null, modifyTime=Tue Apr 30 15:41:22 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-04-30 07:41:23', '');
INSERT INTO `t_log` VALUES ('2243', 'mrbird', '新增菜单/按钮', '147', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=191, parentId=0, menuName=文件管理, path=/file, component=PageView, perms=null, icon=folder-open, type=0, orderNum=9.0, createTime=Tue Apr 30 16:10:21 CST 2019, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-04-30 08:10:21', '');
INSERT INTO `t_log` VALUES ('2244', 'mrbird', '修改菜单/按钮', '127', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=191, parentId=0, menuName=文件管理, path=/file, component=PageView, perms=null, icon=folder-open, type=0, orderNum=10.0, createTime=null, modifyTime=Tue Apr 30 16:10:37 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-04-30 08:10:37', '');
INSERT INTO `t_log` VALUES ('2245', 'mrbird', '修改简历信息', '1407', 'cc.mrbird.febs.resume.controller.ResumeController.updateResume()', ' resume: \"Resume(resumeId=1, userId=null, photo=null, profession=null, userAddress=null, selfAssessment=积极向上、充满活力、认真负SRM移动端部署主要是, status=null, account=null, schoolName=南昌航空大学, majorName=软件工程, studyStart=Thu Apr 23 00:00:00 CST 2015, studyEnd=Tue Apr 23 00:00:00 CST 2019, education=本科, recruitmentFlag=Y, userCompany=null, companyTrade=互联网/移动互联网/电子商务, positionName=程序员, companyAddress=上海, underNumber=0, employmentPeriodFrom=Tue Apr 23 00:00:00 CST 2019, employmentPeriodTo=Wed Apr 24 00:00:00 CST 2019, jobPerformance=后端开发，完成SRM移动端接口, department=SRM, companyNature=国内上市公司, companyScale=1000人, companyIntro=无, monthlyPayNumber=8000.0, monthlyPay=12, addInformation=技能资格证书、专利等，填写文字1000字以内, labelName=web后端开发, language=日语, proficiency=读写精通N2, grade=四级, projectName=SRM移动端部署, companyName=上海汉得信息技术股份有限公司, timeStart=Mon Jan 01 00:00:00 CST 2018, timeEnd=Mon Apr 01 00:00:00 CST 2019, description=主要是把PC端部分功能在移动端展示，包括微信服务号、企业号、APP、钉钉。在移动端开发pc端的功能，例如：订单查询，确认、工作流审批、, duty=部署微信服务号、企业号、APP以及钉钉。包括前端代码打包以及后端的接口开发，同时包括接口的开发、测试。, performance=以及成功部署了上十个移动端项目，并且其中也完成了2-3个功能二开，包括微信前端代码打包，以及发布到蒲公英。, resumeName=null, trade=互联网/移动互联网/电子商务, functional=软件工程师, workAddress=上海, annualSalary=14.4, currentSalary=9.6)\"', '127.0.0.1', '2019-05-01 03:09:05', '');
INSERT INTO `t_log` VALUES ('2246', 'mrbird', '修改职位信息', '469', 'cc.mrbird.febs.person.controller.PersonController.updatePerson()', ' person: \"Person(personId=7, personName=张三, personSex=1, personSort=客户联系人, personLevel=经理, birthday=Tue Apr 09 00:00:00 CST 2019, workYears=3年, graduateTime=Tue Apr 09 00:00:00 CST 2019, graduateInstitutions=北京大学, major=软件工程, educationBackground=研究生, email=1261567819@163.com, mobilePhone=15779551676, workPhone=15779551676, familyPhone=15779551676, identityCard=15779551676, nationality=中国, nation=汉, height=170, weight=65, account=中国江西, maritalStatus=0, nativePlace=中国江西, currentAddress=江西南昌, companyName=百度, positionName=经理, currentSalary=10.0, officeTerm=3, selfAssessment=优秀, workExperience=3年工作经验, projectExperience=3年项目经验, educationRecord=本科研究生, trainRecord=1年培训经验, languageSkill=英语日语, computer=计算机二级, relatedSkill=机车驾驶证, content=无, resume=null, userId=null, createTime=null, modifyTime=Mon May 06 11:50:58 CST 2019, createTimeFrom=null, createTimeTo=null)\"', '127.0.0.1', '2019-05-06 03:50:59', '');

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
INSERT INTO `t_login_log` VALUES ('jack', '2019-04-22 04:08:23', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('jack', '2019-04-22 04:14:34', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-22 04:16:00', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-22 05:52:34', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-22 06:53:42', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-22 08:02:28', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-22 08:35:16', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-22 09:35:56', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-22 12:50:05', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-22 14:03:04', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 01:54:52', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 02:58:30', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 03:11:10', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 03:39:13', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('jack', '2019-04-23 04:01:46', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 04:04:37', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 04:23:08', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 05:23:37', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 07:35:27', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 08:48:34', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 10:49:10', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-23 12:22:01', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 02:55:28', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:29:14', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:31:09', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:32:09', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:33:58', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:34:12', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:34:40', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:36:23', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:43:13', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 05:47:51', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 06:52:02', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 06:52:25', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 07:54:58', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-24 08:59:58', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-25 02:36:19', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-25 03:02:49', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-25 03:51:53', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-25 04:51:54', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('liuqiang', '2019-04-26 04:07:52', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-26 04:15:27', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-26 07:30:03', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-26 07:36:06', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-26 09:27:06', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-27 09:06:17', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-27 09:06:39', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-27 09:11:33', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-27 09:51:54', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-27 10:53:10', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 01:55:23', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 03:16:05', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 03:16:29', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 03:16:53', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 04:50:09', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 05:46:00', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 05:47:43', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 05:50:09', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 05:52:17', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 05:53:40', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 05:57:20', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 05:57:23', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-28 06:46:16', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-30 07:19:33', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-30 07:42:36', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-04-30 07:43:00', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-01 02:52:57', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-01 03:55:39', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-01 05:40:07', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 01:35:22', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 01:35:43', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 02:35:50', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 02:36:05', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 02:36:28', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 03:36:38', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 06:00:30', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 07:58:32', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 07:58:47', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 07:58:49', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 07:59:09', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 07:59:12', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 07:59:39', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 07:59:42', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 07:59:49', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 08:00:40', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 08:00:46', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 08:00:51', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 08:00:54', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 08:07:46', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 08:34:35', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('zhb666', '2019-05-06 08:49:47', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 08:51:26', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('zhb666', '2019-05-06 09:05:38', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 09:06:15', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('zhb666', '2019-05-06 09:29:11', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('zhb666', '2019-05-06 09:29:19', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('zhb666', '2019-05-06 09:29:53', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 09:32:09', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 09:32:14', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-06 09:33:36', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-07 02:45:27', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('zhb666', '2019-05-07 02:48:46', '', '127.0.0.1');
INSERT INTO `t_login_log` VALUES ('mrbird', '2019-05-07 02:49:14', '', '127.0.0.1');

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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统管理', '/system', 'PageView', null, 'appstore-o', '0', '1', '2017-12-27 16:39:07', '2019-04-08 08:37:10');
INSERT INTO `t_menu` VALUES ('2', '0', '系统监控', '/monitor', 'PageView', null, 'dashboard', '0', '2', '2017-12-27 16:45:51', '2019-04-08 08:37:17');
INSERT INTO `t_menu` VALUES ('3', '1', '用户管理', '/system/user', 'system/user/User', 'user:view', '', '0', '1', '2017-12-27 16:47:13', '2019-01-22 06:45:55');
INSERT INTO `t_menu` VALUES ('4', '1', '角色管理', '/system/role', 'system/role/Role', 'role:view', '', '0', '2', '2017-12-27 16:48:09', '2018-04-25 09:01:12');
INSERT INTO `t_menu` VALUES ('5', '1', '菜单管理', '/system/menu', 'system/menu/Menu', 'menu:view', '', '0', '3', '2017-12-27 16:48:57', '2018-04-25 09:01:30');
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
INSERT INTO `t_menu` VALUES ('23', '8', '踢出用户', '', '', 'user:kickout', null, '1', null, '2017-12-27 17:11:13', null);
INSERT INTO `t_menu` VALUES ('24', '10', '删除日志', '', '', 'log:delete', null, '1', null, '2017-12-27 17:11:45', null);
INSERT INTO `t_menu` VALUES ('64', '1', '字典管理', '/system/dict', 'system/dict/Dict', 'dict:view', '', '0', '5', '2018-01-18 10:38:25', '2018-04-25 09:01:50');
INSERT INTO `t_menu` VALUES ('65', '64', '新增字典', '', '', 'dict:add', null, '1', null, '2018-01-18 19:10:08', null);
INSERT INTO `t_menu` VALUES ('66', '64', '修改字典', '', '', 'dict:update', null, '1', null, '2018-01-18 19:10:27', null);
INSERT INTO `t_menu` VALUES ('67', '64', '删除字典', '', '', 'dict:delete', null, '1', null, '2018-01-18 19:10:47', null);
INSERT INTO `t_menu` VALUES ('113', '2', 'Redis监控', '/monitor/redis/info', 'monitor/RedisInfo', 'redis:view', '', '0', '3', '2018-06-28 14:29:42', null);
INSERT INTO `t_menu` VALUES ('121', '2', '请求追踪', '/monitor/httptrace', 'monitor/Httptrace', null, null, '0', '4', '2019-01-18 02:30:29', null);
INSERT INTO `t_menu` VALUES ('122', '2', '系统信息', '/monitor/system', 'EmptyPageView', null, null, '0', '5', '2019-01-18 02:31:48', '2019-01-18 02:39:46');
INSERT INTO `t_menu` VALUES ('123', '122', 'Tomcat信息', '/monitor/system/tomcatinfo', 'monitor/TomcatInfo', null, null, '0', '2', '2019-01-18 02:32:53', '2019-01-18 02:46:57');
INSERT INTO `t_menu` VALUES ('124', '122', 'JVM信息', '/monitor/system/jvminfo', 'monitor/JvmInfo', null, null, '0', '1', '2019-01-18 02:33:30', '2019-01-18 02:46:51');
INSERT INTO `t_menu` VALUES ('127', '122', '服务器信息', '/monitor/system/info', 'monitor/SystemInfo', null, null, '0', '3', '2019-01-21 07:53:43', '2019-01-21 07:57:00');
INSERT INTO `t_menu` VALUES ('130', '3', '导出Excel', null, null, 'user:export', null, '1', null, '2019-01-23 06:35:16', null);
INSERT INTO `t_menu` VALUES ('131', '4', '导出Excel', null, null, 'role:export', null, '1', null, '2019-01-23 06:35:36', null);
INSERT INTO `t_menu` VALUES ('132', '5', '导出Excel', null, null, 'menu:export', null, '1', null, '2019-01-23 06:36:05', null);
INSERT INTO `t_menu` VALUES ('134', '64', '导出Excel', null, null, 'dict:export', null, '1', null, '2019-01-23 06:36:43', null);
INSERT INTO `t_menu` VALUES ('135', '3', '密码重置', null, null, 'user:reset', null, '1', null, '2019-01-23 06:37:00', null);
INSERT INTO `t_menu` VALUES ('136', '10', '导出Excel', null, null, 'log:export', null, '1', null, '2019-01-23 06:37:27', null);
INSERT INTO `t_menu` VALUES ('137', '102', '导出Excel', null, null, 'job:export', null, '1', null, '2019-01-23 06:37:59', null);
INSERT INTO `t_menu` VALUES ('138', '109', '导出Excel', null, null, 'jobLog:export', null, '1', null, '2019-01-23 06:38:32', null);
INSERT INTO `t_menu` VALUES ('139', '0', '简历管理', '/resume', 'PageView', '', 'file-text', '0', '3', '2019-03-25 02:59:14', '2019-04-08 08:37:24');
INSERT INTO `t_menu` VALUES ('140', '139', '简历查看', '/resume/resume', 'resume/resume/Resume', null, 'meh', '0', '1', '2019-03-25 03:02:48', '2019-04-30 07:41:22');
INSERT INTO `t_menu` VALUES ('141', '0', '职位管理', '/position', 'PageView', 'position:view', 'team', '0', '4', '2019-03-25 04:13:50', '2019-04-28 05:55:52');
INSERT INTO `t_menu` VALUES ('142', '141', '投递的职位', '/position/send', 'position/send/Send', null, 'gift', '0', '1', '2019-03-25 04:16:16', '2019-04-22 08:33:37');
INSERT INTO `t_menu` VALUES ('143', '141', '收藏的职位', '/position/collect', 'position/collect/Collect', null, 'star', '0', '2', '2019-03-25 04:21:23', '2019-04-22 08:33:24');
INSERT INTO `t_menu` VALUES ('144', '141', '发布的职位', '/position/post', 'position/post/Post', null, 'branches', '0', '3', '2019-03-25 04:24:31', '2019-04-22 08:33:08');
INSERT INTO `t_menu` VALUES ('146', '141', '职位搜索', '/position/search', 'position/search/Search', null, 'search', '0', '5', '2019-03-26 05:46:16', null);
INSERT INTO `t_menu` VALUES ('148', '0', '客户管理', '/company', 'PageView', null, 'cluster', '0', '5', '2019-04-05 08:20:41', '2019-04-08 08:13:04');
INSERT INTO `t_menu` VALUES ('149', '148', '客户信息', '/company/company', 'company/company/Company', 'company:view', 'file-text', '0', '1', '2019-04-05 08:22:14', '2019-04-28 05:55:03');
INSERT INTO `t_menu` VALUES ('152', '0', '项目管理', '/project', 'PageView', 'project:view', 'folder-open', '0', '7', '2019-04-08 07:23:56', '2019-04-28 05:56:35');
INSERT INTO `t_menu` VALUES ('153', '0', '合同管理', '/contract', 'PageView', 'contract:view', 'file', '0', '8', '2019-04-08 07:24:33', '2019-04-28 05:56:55');
INSERT INTO `t_menu` VALUES ('156', '152', '项目联系', '/project/projectContact', 'project/projectContact/ProjectContact', null, 'database', '0', '1', '2019-04-08 08:27:15', '2019-04-17 03:30:59');
INSERT INTO `t_menu` VALUES ('157', '152', '我的项目', '/project/myProject', 'project/myProject/MyProject', null, 'folder-open', '0', '2', '2019-04-08 08:29:03', '2019-04-17 03:31:06');
INSERT INTO `t_menu` VALUES ('158', '153', '合同管理', '/contract/contractManage', 'contract/contractManage/ContractManage', null, 'read', '0', '1', '2019-04-08 08:32:39', null);
INSERT INTO `t_menu` VALUES ('161', '152', '项目列表', '/project/projects', 'project/projects/Projects', null, 'bars', '0', '3', '2019-04-08 09:11:58', '2019-04-17 03:31:13');
INSERT INTO `t_menu` VALUES ('162', '0', '人才库', '/person', 'PageView', 'person:view', 'user', '0', '9', '2019-04-08 09:15:07', '2019-04-28 05:57:10');
INSERT INTO `t_menu` VALUES ('163', '162', '人才列表', '/person/personList', 'person/personList/PersonList', null, 'team', '0', '1', '2019-04-08 09:16:05', '2019-04-22 08:34:18');
INSERT INTO `t_menu` VALUES ('164', '152', '项目人才列表', '/project/personProject', 'project/personProject/PersonProject', null, 'team', '0', '4', '2019-04-17 03:30:41', '2019-04-22 08:33:58');
INSERT INTO `t_menu` VALUES ('165', '144', '新增', null, null, 'position:add', null, '1', null, '2019-04-28 02:47:11', null);
INSERT INTO `t_menu` VALUES ('166', '144', '删除', null, null, 'position:delete', null, '1', null, '2019-04-28 02:48:00', null);
INSERT INTO `t_menu` VALUES ('167', '144', '修改', null, null, 'position:update', null, '1', null, '2019-04-28 02:48:43', '2019-04-28 02:49:02');
INSERT INTO `t_menu` VALUES ('168', '149', '新增', null, null, 'company:add', null, '1', null, '2019-04-28 02:52:52', null);
INSERT INTO `t_menu` VALUES ('169', '149', '修改', null, null, 'company:update', null, '1', null, '2019-04-28 02:53:18', null);
INSERT INTO `t_menu` VALUES ('170', '149', '删除', null, null, 'company:delete', null, '1', null, '2019-04-28 02:53:40', null);
INSERT INTO `t_menu` VALUES ('171', '149', '导出Excel', null, null, 'company:export', null, '1', null, '2019-04-28 02:55:14', null);
INSERT INTO `t_menu` VALUES ('172', '149', '导入Excel', null, null, 'company:import', null, '1', null, '2019-04-28 02:56:29', null);
INSERT INTO `t_menu` VALUES ('173', '163', '新增', null, null, 'person:add', null, '1', null, '2019-04-28 03:17:26', null);
INSERT INTO `t_menu` VALUES ('174', '163', '删除', null, null, 'person:delete', null, '1', null, '2019-04-28 03:17:46', null);
INSERT INTO `t_menu` VALUES ('175', '163', '修改', null, null, 'person:update', null, '1', null, '2019-04-28 03:18:07', null);
INSERT INTO `t_menu` VALUES ('176', '163', '导出Excel', null, null, 'person:export', null, '1', null, '2019-04-28 03:18:32', null);
INSERT INTO `t_menu` VALUES ('177', '163', '导入Excel', null, null, 'person:import', null, '1', null, '2019-04-28 03:18:51', null);
INSERT INTO `t_menu` VALUES ('178', '158', '新增', null, null, 'contract:add', null, '1', null, '2019-04-28 04:50:46', null);
INSERT INTO `t_menu` VALUES ('179', '158', '修改', null, null, 'contract:update', null, '1', null, '2019-04-28 04:51:05', null);
INSERT INTO `t_menu` VALUES ('180', '158', '删除', null, null, 'contract:delete', null, '1', null, '2019-04-28 04:52:32', '2019-04-28 04:53:59');
INSERT INTO `t_menu` VALUES ('181', '158', '合同信息', null, null, 'contract:view', null, '1', null, '2019-04-28 04:53:16', null);
INSERT INTO `t_menu` VALUES ('182', '158', '导出Excel', null, null, 'contract:export', null, '1', null, '2019-04-28 04:53:42', null);
INSERT INTO `t_menu` VALUES ('183', '163', '人才信息', null, null, 'person:view', null, '1', null, '2019-04-28 04:54:29', null);
INSERT INTO `t_menu` VALUES ('184', '161', '新增', null, null, 'project:add', null, '1', null, '2019-04-28 04:55:55', null);
INSERT INTO `t_menu` VALUES ('185', '161', '修改', null, null, 'project:update', null, '1', null, '2019-04-28 04:56:13', null);
INSERT INTO `t_menu` VALUES ('186', '161', '项目信息', null, null, 'project:view', null, '1', null, '2019-04-28 04:56:34', null);
INSERT INTO `t_menu` VALUES ('187', '161', '删除', null, null, 'project:delete', null, '1', null, '2019-04-28 04:57:00', null);
INSERT INTO `t_menu` VALUES ('188', '161', '导出Excel', null, null, 'project:export', null, '1', null, '2019-04-28 04:57:43', null);
INSERT INTO `t_menu` VALUES ('189', '161', '导入Excel', null, null, 'project:import', null, '1', null, '2019-04-28 04:58:07', null);
INSERT INTO `t_menu` VALUES ('191', '0', '文件管理', '/file', 'PageView', null, 'folder-open', '0', '10', '2019-04-30 08:10:21', '2019-04-30 08:10:37');

-- ----------------------------
-- Table structure for t_person
-- ----------------------------
DROP TABLE IF EXISTS `t_person`;
CREATE TABLE `t_person` (
  `PERSON_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '人才ID',
  `PERSON_NAME` varchar(20) NOT NULL COMMENT '人才姓名',
  `PERSON_SEX` char(1) NOT NULL COMMENT '人才性别',
  `PERSON_SORT` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '人才类别',
  `PERSON_LEVEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '人才级别',
  `BIRTHDAY` date DEFAULT NULL COMMENT '出生日期',
  `WORK_YEARS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作年限',
  `GRADUATE_TIME` date DEFAULT NULL COMMENT '毕业时间',
  `GRADUATE_INSTITUTIONS` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '毕业院校',
  `MAJOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '专业',
  `EDUCATION_BACKGROUND` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学历',
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电子邮件',
  `MOBILE_PHONE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `WORK_PHONE` varchar(100) DEFAULT NULL COMMENT '办公电话',
  `FAMILY_PHONE` varchar(100) DEFAULT NULL COMMENT '家庭电话',
  `IDENTITY_CARD` varchar(100) DEFAULT NULL COMMENT '身份证号',
  `NATIONALITY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '国籍',
  `NATION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '民族',
  `HEIGHT` varchar(100) DEFAULT NULL COMMENT '身高',
  `WEIGHT` varchar(100) DEFAULT NULL COMMENT '体重',
  `ACCOUNT` varchar(100) DEFAULT NULL COMMENT '户口',
  `MARITAL_STATUS` char(1) DEFAULT NULL COMMENT '婚姻状况',
  `NATIVE_PLACE` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `CURRENT_ADDRESS` varchar(100) DEFAULT NULL COMMENT '现在居住地',
  `COMPANY_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '现任公司',
  `POSITION_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位',
  `CURRENT_SALARY` double DEFAULT NULL COMMENT '目前薪资',
  `OFFICE_TERM` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '任职年限',
  `SELF_ASSESSMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '自我评价',
  `WORK_EXPERIENCE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作经历',
  `PROJECT_EXPERIENCE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目经验',
  `EDUCATION_RECORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '教育经历',
  `TRAIN_RECORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '培训经历',
  `LANGUAGE_SKILL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '语言能力',
  `COMPUTER` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '计算机',
  `RELATED_SKILL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '相关技能',
  `CONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `RESUME` varchar(255) DEFAULT NULL COMMENT '简历路径',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`PERSON_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_person
-- ----------------------------
INSERT INTO `t_person` VALUES ('7', '张三', '1', '客户联系人', '经理', '2019-04-08', '3年', '2019-04-08', '北京大学', '软件工程', '研究生', '1261567819@163.com', '15779551676', '15779551676', '15779551676', '15779551676', '中国', '汉', '170', '65', '中国江西', '0', '中国江西', '江西南昌', '百度', '经理', '10', '3', '优秀', '3年工作经验', '3年项目经验', '本科研究生', '1年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-04-09 11:54:02', '2019-05-06 03:50:58');
INSERT INTO `t_person` VALUES ('8', '王二', '0', '客户联系人', '普通', '2019-04-09', '3年', '2019-04-09', '南昌航空大学', '软件工程', '本科', '15779551676@163.com', '15779551676', '15779551676', '15779551676', '15779551676', '中国', '汉', '170', '65', '江西', '0', '江西', '江西', '上海汉得', 'SRM移动端技术顾问', '10', '3', '无', '无', '无', '无', '无', '无', '无', '无', '无', null, '1', '2019-04-10 09:34:17', null);
INSERT INTO `t_person` VALUES ('9', '张伟', '1', '候选人', '普通', '2019-05-06', '3年', '2019-05-06', '上海大学', '软件工程', '博士', '15779551671@163.com', '15779551671', '', '', '', '中国', '汉', '', '', '中国江西', '0', '中国江西', '江西南昌', '阿里巴巴', 'CTO', '50', '5', '优秀', '5年工作经验', '5年项目经验', '博士生', '2年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('10', '刘建', '1', '客户联系人', '普通', '2019-05-06', '5年', '2019-05-06', '天津大学', '软件工程', '本科', '15779551625@163.com', '15779551625', '', '', '', '中国', '汉', '', '', '中国天津', '0', '中国天津', '天津市', '百度', 'CTO', '45', '5', '优秀', '5年工作经验', '5年项目经验', '硕士生', '2年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('11', '刘丽丽', '0', '候选人', '主管', '2019-05-07', '5年', '2019-05-07', '湖南大学', '软件工程', '研究生', '15779551624@163.com', '15779551624', '', '', '', '中国', '汉', '', '', '中国安徽', '0', '中国安徽', '安徽合肥', '腾讯', 'CTO', '48', '5', '优秀', '5年工作经验', '5年项目经验', '博士生', '3年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('12', '张雨琪', '0', '客户联系人', '主管', '2019-05-07', '5年', '2019-05-07', '兰州大学', '软件工程', '本科', '15779551623@163.com', '15779551623', '', '', '', '中国', '汉', '', '', '中国安徽', '0', '中国安徽', '安徽合肥', '汉得', 'CTO', '30', '5', '优秀', '5年工作经验', '5年项目经验', '硕士生', '3年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('13', '张伟', '1', '客户联系人', '主管', '2019-05-08', '10年', '2019-05-08', '北京航天航空大学', '软件工程', '研究生', '15779551622@163.com', '15779551622', '', '', '', '中国', '汉', '', '', '中国北京', '0', '中国北京', '北京市', '今日头条', 'CTO', '35', '5', '优秀', '5年工作经验', '5年项目经验', '硕士生', '3年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('14', '张伟', '1', '候选人', '主管', '2019-05-08', '10年', '2019-05-08', '复旦大学', '软件工程', '博士', '15779551621@163.com', '15779551621', '', '', '', '中国', '汉', '', '', '中国湖南', '0', '中国湖南', '湖南湘潭', 'yoho', 'CTO', '36', '5', '优秀', '5年工作经验', '5年项目经验', '博士生', '2年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('15', '张伟', '1', '客户联系人', '主管', '2019-05-08', '6年', '2019-05-08', '中山大学', '软件工程', '研究生', '15779551616@163.com', '15779551616', '', '', '', '中国', '汉', '', '', '中国湖南', '0', '中国湖南', '湖南长沙', '滴滴', 'CTO', '42', '5', '优秀', '5年工作经验', '5年项目经验', '硕士生', '5年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('16', '张伟', '1', '候选人', '主管', '2019-05-09', '6年', '2019-05-09', '厦门大学', '软件工程', '博士', '15779551615@163.com', '15779551615', '', '', '', '中国', '汉', '', '', '中国辽宁', '0', '中国辽宁', '辽宁沈阳', '华为', 'CTO', '28', '5', '优秀', '5年工作经验', '5年项目经验', '博士生', '2年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('17', '张伟', '1', '候选人', '经理', '2019-05-09', '6年', '2019-05-09', '武汉大学', '软件工程', '博士后', '15779551614@163.com', '15779551614', '', '', '', '中国', '汉', '', '', '中国辽宁', '0', '中国辽宁', '辽宁沈阳', '阿里巴巴', 'CTO', '30', '5', '优秀', '5年工作经验', '5年项目经验', '硕士生', '5年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('18', '张伟', '1', '客户联系人', '经理', '2019-05-10', '3年', '2019-05-10', '上海大学', '软件工程', '博士', '15779551613@163.com', '15779551613', '', '', '', '中国', '汉', '', '', '中国河北', '0', '中国河北', '河北石家庄', '腾讯', 'CTO', '50', '5', '优秀', '5年工作经验', '5年项目经验', '博士生', '2年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('19', '张伟', '1', '候选人', '经理', '2019-05-06', '1年', '2019-05-06', '四川大学', '软件工程', '博士', '15779551612@163.com', '15779551612', '', '', '', '中国', '汉', '', '', '中国河北', '0', '中国河北', '河北石家庄', '上海挚极', 'CTO', '40', '5', '优秀', '5年工作经验', '5年项目经验', '硕士生', '2年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');
INSERT INTO `t_person` VALUES ('20', '张伟', '1', '客户联系人', '经理', '2019-05-06', '1年', '2019-05-06', '中国科技电子大学', '软件工程', '博士', '15779551611@163.com', '15779551611', '', '', '', '中国', '汉', '', '', '中国北京', '0', '中国北京', '北京市', '华为', 'CTO', '30', '5', '优秀', '5年工作经验', '5年项目经验', '博士生', '2年培训经验', '英语日语', '计算机二级', '机车驾驶证', '无', '无', '1', '2019-05-06 11:54:02', '2019-05-06 04:33:22');

-- ----------------------------
-- Table structure for t_person_project
-- ----------------------------
DROP TABLE IF EXISTS `t_person_project`;
CREATE TABLE `t_person_project` (
  `PERSON_PROJECT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PERSON_PROJECT_ID',
  `PROJECT_ID` bigint(20) NOT NULL COMMENT '项目ID',
  `PERSON_ID` bigint(20) NOT NULL COMMENT '人才ID',
  `PERSON_STATUS` varchar(255) DEFAULT '',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人ID',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `TITLE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERSON_PROJECT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='人才项目表';

-- ----------------------------
-- Records of t_person_project
-- ----------------------------
INSERT INTO `t_person_project` VALUES ('1', '1', '7', '候选', '1', '2019-04-16 08:20:53', '2019-04-18 02:46:18', '123', '312');
INSERT INTO `t_person_project` VALUES ('3', '2', '8', '放弃', '1', '2019-04-16 09:20:20', null, null, null);

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `issue_time` date DEFAULT NULL COMMENT '发布时间',
  `need_work_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作经验',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位标题',
  `position_sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `need_education` varchar(255) DEFAULT NULL COMMENT '学历要求',
  `salary` varchar(255) DEFAULT NULL,
  `issue_company` varchar(255) DEFAULT NULL COMMENT '发布公司',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位描述',
  `user_id` bigint(20) DEFAULT NULL,
  `requested` varchar(255) DEFAULT NULL COMMENT '职责要求',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2064 DEFAULT CHARSET=utf8 COMMENT='职位表';

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES ('2052', '2019-04-22', '1-3年', 'web工程师', '企业职位', '上海', '本科', '15-20万', '上海汉得', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2054', '2019-04-22', '1年', 'java开发工程师', '猎头职位', '广州', '大专', '10-15万', '阿里巴巴', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2055', '2019-05-06', '1年', 'android开发工程师', '猎头职位', '上海', '本科', '13-26万', '通铭', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2056', '2019-05-07', '3年', '高级java开发工程师', '猎头职位', '杭州西湖', '本科', '22-30万', '浙江甬润科技有限公司', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2057', '2019-05-08', '3年', 'java开发工程师中级', '猎头职位', '上海-杨浦区', '本科', '13-26万', '上海贝锐', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2058', '2019-05-09', '2年', '高级c++软件工程师', '猎头职位', '上海-五角场', '本科', '13-26万', '上海析鲸', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2059', '2019-04-16', '2年', 'Java高级开发工程师', '企业职位', '上海', '本科', '13-26万', '上海航数', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2060', '2019-04-17', '5年', '大数据开发工程师', '猎头职位', '上海-田林', '本科', '13-26万', '中智关爱通', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2061', '2019-04-18', '2年', 'java开发工程师', '企业职位', '上海-闵行区', '本科', '13-26万', '集享卡', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2062', '2019-04-19', '3年', '产品经理（物联网）', '猎头职位', '上海', '本科', '13-26万', '上海麦杰', '无', '1', '无');
INSERT INTO `t_position` VALUES ('2063', '2019-04-20', '2年', '.NET开发工程师', '企业职位', '上海', '本科', '13-26万', '上海挚极', '无', '1', '无');

-- ----------------------------
-- Table structure for t_position_collect
-- ----------------------------
DROP TABLE IF EXISTS `t_position_collect`;
CREATE TABLE `t_position_collect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `position_id` bigint(20) NOT NULL COMMENT '职位ID',
  `collect_time` datetime DEFAULT NULL COMMENT '职位标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='职位收藏表';

-- ----------------------------
-- Records of t_position_collect
-- ----------------------------
INSERT INTO `t_position_collect` VALUES ('7', '1', '45', null);
INSERT INTO `t_position_collect` VALUES ('9', '1', '42', '2019-04-22 04:17:03');
INSERT INTO `t_position_collect` VALUES ('10', '2', '41', null);
INSERT INTO `t_position_collect` VALUES ('11', '1', '2052', '2019-04-27 10:49:07');
INSERT INTO `t_position_collect` VALUES ('12', '1', '2054', '2019-04-27 10:55:09');

-- ----------------------------
-- Table structure for t_position_send
-- ----------------------------
DROP TABLE IF EXISTS `t_position_send`;
CREATE TABLE `t_position_send` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `position_id` bigint(20) NOT NULL COMMENT '职位ID',
  `send_time` datetime DEFAULT NULL COMMENT '投递的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='职位投递表';

-- ----------------------------
-- Records of t_position_send
-- ----------------------------
INSERT INTO `t_position_send` VALUES ('9', '2', '41', null);
INSERT INTO `t_position_send` VALUES ('10', '1', '41', null);
INSERT INTO `t_position_send` VALUES ('12', '1', '2052', '2019-04-27 10:49:06');
INSERT INTO `t_position_send` VALUES ('13', '1', '2054', '2019-04-27 10:55:07');

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project` (
  `PROJECT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PROJECT_ID',
  `PROJECT_CODE` varchar(255) NOT NULL COMMENT '项目编号',
  `PROJECT_NAME` varchar(255) NOT NULL COMMENT '项目名称',
  `START_TIME` date NOT NULL COMMENT '开始日期',
  `PLAN_FINISH_TIME` date NOT NULL COMMENT '计划完成日期',
  `PROJECT_STATUS` varchar(255) NOT NULL COMMENT '项目状态',
  `PRIORITY_LEVEL` varchar(255) NOT NULL COMMENT '优先级别',
  `COMPANY_NAME` varchar(255) NOT NULL COMMENT '客户名称',
  `GATHER_STATUS` varchar(255) NOT NULL COMMENT '收款状态',
  `CUSTOMER_MANAGER` varchar(255) NOT NULL COMMENT '客户经理',
  `BUSINESS_PERSON` varchar(255) NOT NULL COMMENT '业务人员',
  `PROJECT_CHARGE` varchar(255) NOT NULL COMMENT '项目主管',
  `PROJECT_COUNSELOR` varchar(255) NOT NULL COMMENT '项目顾问',
  `COMPANY_CONTACT` varchar(255) NOT NULL COMMENT '客户联系人',
  `SEARCH_PERSON` varchar(255) NOT NULL COMMENT '寻访员',
  `COMPANY_PAYER` varchar(255) NOT NULL COMMENT '客户付款人',
  `COMPANY_INFO` varchar(255) NOT NULL COMMENT '公司简介',
  `REPORT_OBJECT` varchar(255) NOT NULL COMMENT '汇报对象',
  `SUBORDINATE_POSITION` varchar(255) NOT NULL COMMENT '下属职位',
  `WORK_ADDRESS` varchar(255) NOT NULL COMMENT '工作地点',
  `NUMBER` varchar(255) NOT NULL COMMENT '招聘人数',
  `TRADE` varchar(255) NOT NULL COMMENT '行业',
  `SUITABLE_FUNCTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '适合职能',
  `LANGUAGE_REQUIRE` varchar(255) NOT NULL COMMENT '外语要求',
  `SEX_REQUIRE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '2' COMMENT '性别要求',
  `POSITION_LEVEL` varchar(255) NOT NULL COMMENT '职位级别',
  `POSITION_SORT` varchar(255) NOT NULL COMMENT '职位类型',
  `AGE_REQUIRE` int(11) NOT NULL COMMENT '年龄要求',
  `POSITION_INFO` varchar(255) NOT NULL COMMENT '职位描述',
  `POSITION_REASON` varchar(255) NOT NULL COMMENT '职位开发原因',
  `SALARY_RANGE` varchar(255) NOT NULL COMMENT '薪资范围',
  `BONUS` varchar(255) NOT NULL COMMENT '奖金',
  `WELFARE` varchar(255) NOT NULL COMMENT '福利',
  `PROGRESS` varchar(255) NOT NULL COMMENT '委托前进展',
  `EXECUTION_ANALYZE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行分析',
  `USER_ID` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`PROJECT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='项目表';

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES ('1', 'ASDD', '设计主管', '2019-04-09', '2019-04-11', '1', '正常', '百度', '1', '王本强', '刘丽丽', '康丁', '周晓明', '刘二', '王伟', '李四', '公司信息', '徐三', '10', '上海', '5', '互联网', 'IT', '英语四级', '2', '优先', 'IT', '20', 'asd ', 'asdasdas', '10-20k', '10k', '五险一金', '进展无', '分析无', '1', '2019-04-09 12:52:18', '2019-04-14 03:57:13');
INSERT INTO `t_project` VALUES ('2', 'ADS', '项目经理', '2019-04-11', '2019-04-18', '0', '优先', '上海汉得', '0', '王飞', '孙国盛', '刘伟', '周薇', '张三', '张三', '张三', '无', '张三', '经理', '上个', '10', 'IT', '经理', '无', '0', '经理', '经理', '20', '无', '无', '10-20', '10', '无', '无', '无', '1', '2019-04-11 02:30:48', null);
INSERT INTO `t_project` VALUES ('3', 'ASDD', '数据建模专家', '2019-04-09', '2019-04-11', '1', '正常', '百度', '1', '王伟', '孙卫东', '孙慧', '周小艺', '刘二', '王伟', '李四', '公司信息', '徐三', '10', '上海', '5', '互联网', 'IT', '英语四级', '2', '优先', 'IT', '20', 'asd', 'asdasdas', '10-20k', '10k', '五险一金', '进展无', '分析无', '1', '2019-04-24 07:57:05', null);
INSERT INTO `t_project` VALUES ('4', 'ADS', '高级机电经理', '2019-04-11', '2019-04-18', '0', '优先', '上海汉得', '0', '王昊', '何能', '韩星', '周国亮', '张三', '张三', '张三', '无', '张三', '经理', '上个', '10', 'IT', '经理', '无', '0', '经理', '经理', '20', '无', '无', '10-20', '10', '无', '无', '无', '1', '2019-04-24 07:57:05', null);
INSERT INTO `t_project` VALUES ('5', 'ASDD', 'web高级工程师', '2019-04-09', '2019-04-11', '2', '正常', '百度', '1', '王行', '何晨', '李白', '周捷', '刘二', '王伟', '李四', '公司信息', '徐三', '10', '上海', '5', '互联网', 'IT', '英语四级', '2', '优先', 'IT', '20', 'asd', 'asdasdas', '10-20k', '10k', '五险一金', '进展无', '分析无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('6', 'ADS', 'java高级开发经理', '2019-04-09', '2019-04-11', '3', '优先', '上海汉得', '0', '李昊然', '何伟军', '孙桥', '周赢', '张三', '张三', '张三', '无', '张三', '经理', '上个', '10', 'IT', '经理', '无', '0', '经理', '经理', '20', '无', '无', '10-20', '10', '无', '无', '无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('7', 'ASDD', '高级c++工程师', '2019-04-09', '2019-04-11', '4', '正常', '百度', '1', '王虹', '何芳', '孙路', '周志惠', '刘二', '王伟', '李四', '公司信息', '徐三', '10', '上海', '5', '互联网', 'IT', '英语四级', '2', '优先', 'IT', '20', 'asd', 'asdasdas', '10-20k', '10k', '五险一金', '进展无', '分析无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('8', 'ADS', '高级安卓工程师', '2019-04-09', '2019-04-11', '1', '优先', '上海汉得', '0', '张德兴', '何家晶', '孙星瞳', '周静', '张三', '张三', '张三', '无', '张三', '经理', '上个', '10', 'IT', '经理', '无', '0', '经理', '经理', '20', '无', '无', '10-20', '10', '无', '无', '无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('9', 'ASDD', '系统建模工程师', '2019-04-09', '2019-04-11', '1', '正常', '百度', '1', '李建国', '杨明', '孙财和', '周洁', '刘二', '王伟', '李四', '公司信息', '徐三', '10', '上海', '5', '互联网', 'IT', '英语四级', '2', '优先', 'IT', '20', 'asd', 'asdasdas', '10-20k', '10k', '五险一金', '进展无', '分析无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('10', 'ADS', '高级区块链工程师', '2019-04-09', '2019-04-11', '1', '优先', '上海汉得', '0', '胡亚新', '杨晚飞', '孙叶叶', '周涛', '张三', '张三', '张三', '无', '张三', '经理', '上个', '10', 'IT', '经理', '无', '0', '经理', '经理', '20', '无', '无', '10-20', '10', '无', '无', '无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('11', 'ASDD', '推荐算法工程师', '2019-04-09', '2019-04-11', '0', '正常', '百度', '1', '韩惺忪', '杨圣飞', '孙岳', '周小丁', '刘二', '王伟', '李四', '公司信息', '徐三', '10', '上海', '5', '互联网', 'IT', '英语四级', '2', '优先', 'IT', '20', 'asd', 'asdasdas', '10-20k', '10k', '五险一金', '进展无', '分析无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('12', 'ADS', '视觉算法', '2019-04-09', '2019-04-11', '1', '优先', '上海汉得', '0', '王源', '杨芹菜', '何静', '周孝承', '张三', '张三', '张三', '无', '张三', '经理', '上个', '10', 'IT', '经理', '无', '0', '经理', '经理', '20', '无', '无', '10-20', '10', '无', '无', '无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('13', 'ASDD', '信息安全开发师', '2019-04-09', '2019-04-11', '1', '正常', '百度', '1', '王国忠', '杨宁', '何立源', '周丽丽', '刘二', '王伟', '李四', '公司信息', '徐三', '10', '上海', '5', '互联网', 'IT', '英语四级', '2', '优先', 'IT', '20', 'asd', 'asdasdas', '10-20k', '10k', '五险一金', '进展无', '分析无', '1', '2019-04-24 07:58:36', null);
INSERT INTO `t_project` VALUES ('14', 'ADS', 'java资深开发', '2019-04-09', '2019-04-11', '1', '优先', '上海汉得', '0', '王娟', '杨艺', '何晓', '周早早', '张三', '张三', '张三', '无', '张三', '经理', '上个', '10', 'IT', '经理', '无', '0', '经理', '经理', '20', '无', '无', '10-20', '10', '无', '无', '无', '1', '2019-04-24 07:58:36', null);

-- ----------------------------
-- Table structure for t_project_contact
-- ----------------------------
DROP TABLE IF EXISTS `t_project_contact`;
CREATE TABLE `t_project_contact` (
  `PROJECT_CONTACT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'PROJECT_CONTACT_ID',
  `PERSON_PROJECT_ID` bigint(20) NOT NULL,
  `CONTACT_TYPE` varchar(10) NOT NULL COMMENT '联系类型',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PROJECT_CONTACT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='项目联系表';

-- ----------------------------
-- Records of t_project_contact
-- ----------------------------
INSERT INTO `t_project_contact` VALUES ('1', '1', '陌生寻访', '2019-04-17 10:31:50', null, null);
INSERT INTO `t_project_contact` VALUES ('2', '1', '普通联系', '2019-04-17 04:12:48', null, '1');
INSERT INTO `t_project_contact` VALUES ('3', '1', '陌生寻访', '2019-04-17 04:16:12', null, '1');
INSERT INTO `t_project_contact` VALUES ('4', '2', '普通联系', '2019-04-17 04:16:52', null, '1');
INSERT INTO `t_project_contact` VALUES ('5', '3', '面试联系', '2019-04-17 04:17:26', null, '1');

-- ----------------------------
-- Table structure for t_resume
-- ----------------------------
DROP TABLE IF EXISTS `t_resume`;
CREATE TABLE `t_resume` (
  `resume_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NOT NULL,
  `photo` varchar(255) NOT NULL COMMENT '简历头像',
  `profession` varchar(255) DEFAULT NULL COMMENT '职业',
  `user_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '语言',
  `proficiency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '熟练程度',
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '等级',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `account` varchar(255) DEFAULT NULL COMMENT '户口',
  `trade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '期望行业',
  `functional` varchar(255) DEFAULT NULL COMMENT '期望职能',
  `work_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '期望工作地点',
  `annual_salary` double DEFAULT NULL COMMENT '期望薪资',
  `current_salary` double DEFAULT NULL COMMENT '当前薪资',
  `user_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司名称',
  `company_trade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司行业',
  `company_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作地点',
  `under_number` int(11) DEFAULT NULL COMMENT '下属人数',
  `employment_period_from` date DEFAULT NULL COMMENT '任职时间从',
  `employment_period_to` date DEFAULT NULL COMMENT '任职时间到',
  `job_performance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职责业绩',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所在部门',
  `company_nature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司性质',
  `company_scale` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司规模',
  `company_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司简介',
  `monthly_pay_number` double DEFAULT NULL COMMENT '月薪',
  `monthly_pay` int(11) DEFAULT NULL COMMENT '月薪数',
  `label_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标签名',
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学校名称',
  `major_name` varchar(255) DEFAULT NULL COMMENT '专业名称',
  `study_start` date DEFAULT NULL COMMENT '就读时间从',
  `study_end` date DEFAULT NULL COMMENT '就读时间至',
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学历',
  `recruitment_flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否统招',
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目名称',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司名称',
  `time_start` date DEFAULT NULL COMMENT '工作时间从',
  `time_end` date DEFAULT NULL COMMENT '工作时间至',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目描述',
  `duty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目职责',
  `performance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目业绩',
  `self_assessment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '自我评价',
  `add_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '附加信息内容',
  `resume_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '附件地址',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位名称',
  PRIMARY KEY (`resume_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='简历表';

-- ----------------------------
-- Records of t_resume
-- ----------------------------
INSERT INTO `t_resume` VALUES ('1', '1', '981e0711-2da6-4570-8a7f-a93dfa76164b.jpg', '软件工程师', '江西南昌', '日语', '读写精通N2', '四级', '在职', '宜春', '互联网/移动互联网/电子商务', '软件工程师', '上海', '14.4', '9.6', '上海汉得信息技术股份有限公司', '互联网/移动互联网/电子商务', '上海', '0', '2019-04-22', '2019-04-23', '后端开发，完成SRM移动端接口', 'SRM', '国内上市公司', '1000人', '无', '8000', '12', 'web后端开发', '南昌航空大学', '软件工程', '2015-04-22', '2019-04-22', '本科', 'Y', 'SRM移动端部署', '上海汉得信息技术股份有限公司', '2017-12-31', '2019-03-31', '主要是把PC端部分功能在移动端展示，包括微信服务号、企业号、APP、钉钉。在移动端开发pc端的功能，例如：订单查询，确认、工作流审批、', '部署微信服务号、企业号、APP以及钉钉。包括前端代码打包以及后端的接口开发，同时包括接口的开发、测试。', '以及成功部署了上十个移动端项目，并且其中也完成了2-3个功能二开，包括微信前端代码打包，以及发布到蒲公英。', '积极向上、充满活力、认真负SRM移动端部署主要是', '技能资格证书、专利等，填写文字1000字以内', '无', '程序员');

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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', '管理员', '2017-12-27 16:23:11', '2019-04-28 05:50:02');
INSERT INTO `t_role` VALUES ('2', '注册用户', '可查看，新增，导出', '2019-01-04 14:11:28', '2019-04-26 07:37:13');
INSERT INTO `t_role` VALUES ('72', '普通用户', '只可查看，好可怜哦', '2019-01-23 07:33:20', null);
INSERT INTO `t_role` VALUES ('75', '客户', '需要招聘人才的公司。', '2019-04-08 07:17:43', null);
INSERT INTO `t_role` VALUES ('76', '猎头', '寻找客户需求的高端人才。', '2019-04-08 07:18:31', null);
INSERT INTO `t_role` VALUES ('77', '公司高管', '除创建新用户的所有权限。', '2019-04-08 07:41:13', null);
INSERT INTO `t_role` VALUES ('78', '客户拓展人员', '帮助寻找有需求的客户。', '2019-04-08 07:42:39', null);

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
INSERT INTO `t_role_menu` VALUES ('75', '148');
INSERT INTO `t_role_menu` VALUES ('75', '144');
INSERT INTO `t_role_menu` VALUES ('76', '145');
INSERT INTO `t_role_menu` VALUES ('76', '146');
INSERT INTO `t_role_menu` VALUES ('77', '139');
INSERT INTO `t_role_menu` VALUES ('77', '141');
INSERT INTO `t_role_menu` VALUES ('77', '148');
INSERT INTO `t_role_menu` VALUES ('77', '151');
INSERT INTO `t_role_menu` VALUES ('77', '152');
INSERT INTO `t_role_menu` VALUES ('77', '153');
INSERT INTO `t_role_menu` VALUES ('77', '2');
INSERT INTO `t_role_menu` VALUES ('78', '146');
INSERT INTO `t_role_menu` VALUES ('2', '3');
INSERT INTO `t_role_menu` VALUES ('2', '1');
INSERT INTO `t_role_menu` VALUES ('2', '4');
INSERT INTO `t_role_menu` VALUES ('2', '5');
INSERT INTO `t_role_menu` VALUES ('2', '6');
INSERT INTO `t_role_menu` VALUES ('2', '64');
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
INSERT INTO `t_role_menu` VALUES ('2', '103');
INSERT INTO `t_role_menu` VALUES ('2', '137');
INSERT INTO `t_role_menu` VALUES ('2', '138');
INSERT INTO `t_role_menu` VALUES ('2', '131');
INSERT INTO `t_role_menu` VALUES ('2', '11');
INSERT INTO `t_role_menu` VALUES ('2', '139');
INSERT INTO `t_role_menu` VALUES ('2', '140');
INSERT INTO `t_role_menu` VALUES ('2', '141');
INSERT INTO `t_role_menu` VALUES ('2', '142');
INSERT INTO `t_role_menu` VALUES ('2', '143');
INSERT INTO `t_role_menu` VALUES ('2', '146');
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
INSERT INTO `t_role_menu` VALUES ('1', '128');
INSERT INTO `t_role_menu` VALUES ('1', '129');
INSERT INTO `t_role_menu` VALUES ('1', '130');
INSERT INTO `t_role_menu` VALUES ('1', '135');
INSERT INTO `t_role_menu` VALUES ('1', '131');
INSERT INTO `t_role_menu` VALUES ('1', '132');
INSERT INTO `t_role_menu` VALUES ('1', '133');
INSERT INTO `t_role_menu` VALUES ('1', '134');
INSERT INTO `t_role_menu` VALUES ('1', '137');
INSERT INTO `t_role_menu` VALUES ('1', '138');
INSERT INTO `t_role_menu` VALUES ('1', '139');
INSERT INTO `t_role_menu` VALUES ('1', '140');
INSERT INTO `t_role_menu` VALUES ('1', '141');
INSERT INTO `t_role_menu` VALUES ('1', '142');
INSERT INTO `t_role_menu` VALUES ('1', '143');
INSERT INTO `t_role_menu` VALUES ('1', '144');
INSERT INTO `t_role_menu` VALUES ('1', '145');
INSERT INTO `t_role_menu` VALUES ('1', '146');
INSERT INTO `t_role_menu` VALUES ('1', '147');
INSERT INTO `t_role_menu` VALUES ('1', '148');
INSERT INTO `t_role_menu` VALUES ('1', '149');
INSERT INTO `t_role_menu` VALUES ('1', '151');
INSERT INTO `t_role_menu` VALUES ('1', '152');
INSERT INTO `t_role_menu` VALUES ('1', '153');
INSERT INTO `t_role_menu` VALUES ('1', '154');
INSERT INTO `t_role_menu` VALUES ('1', '155');
INSERT INTO `t_role_menu` VALUES ('1', '156');
INSERT INTO `t_role_menu` VALUES ('1', '158');
INSERT INTO `t_role_menu` VALUES ('1', '157');
INSERT INTO `t_role_menu` VALUES ('1', '159');
INSERT INTO `t_role_menu` VALUES ('1', '161');
INSERT INTO `t_role_menu` VALUES ('1', '162');
INSERT INTO `t_role_menu` VALUES ('1', '163');
INSERT INTO `t_role_menu` VALUES ('1', '164');
INSERT INTO `t_role_menu` VALUES ('1', '2');
INSERT INTO `t_role_menu` VALUES ('1', '8');
INSERT INTO `t_role_menu` VALUES ('1', '10');
INSERT INTO `t_role_menu` VALUES ('1', '113');
INSERT INTO `t_role_menu` VALUES ('1', '121');
INSERT INTO `t_role_menu` VALUES ('1', '122');
INSERT INTO `t_role_menu` VALUES ('1', '123');
INSERT INTO `t_role_menu` VALUES ('1', '124');
INSERT INTO `t_role_menu` VALUES ('1', '127');
INSERT INTO `t_role_menu` VALUES ('1', '23');
INSERT INTO `t_role_menu` VALUES ('1', '24');
INSERT INTO `t_role_menu` VALUES ('1', '136');
INSERT INTO `t_role_menu` VALUES ('1', '165');
INSERT INTO `t_role_menu` VALUES ('1', '166');
INSERT INTO `t_role_menu` VALUES ('1', '167');
INSERT INTO `t_role_menu` VALUES ('1', '168');
INSERT INTO `t_role_menu` VALUES ('1', '169');
INSERT INTO `t_role_menu` VALUES ('1', '170');
INSERT INTO `t_role_menu` VALUES ('1', '171');
INSERT INTO `t_role_menu` VALUES ('1', '172');
INSERT INTO `t_role_menu` VALUES ('1', '184');
INSERT INTO `t_role_menu` VALUES ('1', '185');
INSERT INTO `t_role_menu` VALUES ('1', '186');
INSERT INTO `t_role_menu` VALUES ('1', '187');
INSERT INTO `t_role_menu` VALUES ('1', '188');
INSERT INTO `t_role_menu` VALUES ('1', '189');
INSERT INTO `t_role_menu` VALUES ('1', '178');
INSERT INTO `t_role_menu` VALUES ('1', '179');
INSERT INTO `t_role_menu` VALUES ('1', '180');
INSERT INTO `t_role_menu` VALUES ('1', '181');
INSERT INTO `t_role_menu` VALUES ('1', '182');
INSERT INTO `t_role_menu` VALUES ('1', '173');
INSERT INTO `t_role_menu` VALUES ('1', '174');
INSERT INTO `t_role_menu` VALUES ('1', '175');
INSERT INTO `t_role_menu` VALUES ('1', '176');
INSERT INTO `t_role_menu` VALUES ('1', '177');
INSERT INTO `t_role_menu` VALUES ('1', '183');
INSERT INTO `t_role_menu` VALUES ('1', '190');

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
-- Table structure for t_trade
-- ----------------------------
DROP TABLE IF EXISTS `t_trade`;
CREATE TABLE `t_trade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `trade_name` varchar(255) NOT NULL COMMENT '行业名称',
  `trade_code` varchar(255) NOT NULL COMMENT '行业代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行业表';

-- ----------------------------
-- Records of t_trade
-- ----------------------------

-- ----------------------------
-- Table structure for t_trade_direction
-- ----------------------------
DROP TABLE IF EXISTS `t_trade_direction`;
CREATE TABLE `t_trade_direction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `trade_id` bigint(20) NOT NULL COMMENT '行业ID',
  `direction_name` varchar(255) NOT NULL COMMENT '方向名称',
  `direction_code` varchar(255) NOT NULL COMMENT '方向代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行业方向表';

-- ----------------------------
-- Records of t_trade_direction
-- ----------------------------

-- ----------------------------
-- Table structure for t_trade_kind
-- ----------------------------
DROP TABLE IF EXISTS `t_trade_kind`;
CREATE TABLE `t_trade_kind` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `direction_id` bigint(20) NOT NULL COMMENT '行业方向ID',
  `kind_code` varchar(255) NOT NULL COMMENT '方向种类名称',
  `kind_name` varchar(255) NOT NULL COMMENT '方向种类代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行业方向种类表';

-- ----------------------------
-- Records of t_trade_kind
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `COMPANY_NAME` varchar(100) DEFAULT NULL COMMENT '公司ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `BIRTHDAY` date DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'mrbird', '94f860c4bbfeb2f49c84e321fdda4b07', '开发部', 'mrbird123@hotmail.com', '15779551676', '1', '2017-12-27 15:47:19', '2019-04-04 07:50:49', '2019-05-07 02:49:14', '2', '我是帅比作者。', '3bd3b7bc-1856-49c1-82bb-629d2bd53de4.jpg', '2019-04-23', '4fb65dcd-f066-4b5a-9263-86608183beba.pdf');
INSERT INTO `t_user` VALUES ('2', 'scott', '7b44a5363e3fd52435beb472e1d2b91f', '开发一部', 'scott@qq.com', '15134627380', '1', '2017-12-29 16:16:39', '2019-01-18 00:59:09', '2019-03-21 12:39:56', '0', '我是scott，嗯嗯', 'jZUIxmJycoymBprLOUbT.png', null, null);
INSERT INTO `t_user` VALUES ('12', 'jack', '552649f10640385d0728a80a4242893e', '开发部', 'jack@hotmail.com', null, '1', '2019-01-23 07:34:05', '2019-01-24 03:08:01', '2019-04-23 04:01:46', '0', null, 'http://127.0.0.1:9527/webapps/resume/2019-04-08/简历.pdf', null, null);
INSERT INTO `t_user` VALUES ('15', 'liuqiang', 'a73249e6db38c18df3e2c994d0c7046d', '开发部', '15779551676@163.com', '15779551677', '1', '2019-03-29 04:38:30', '2019-04-04 07:51:12', '2019-04-26 04:07:52', '0', null, 'default.jpg', null, null);
INSERT INTO `t_user` VALUES ('16', 'zhb666', '77d2a9d24326a998ef3ebe489783cbce', null, null, '18166431387', '1', '2019-04-26 07:35:01', null, '2019-05-07 02:48:46', '2', '注册用户', 'default.jpg', null, null);
INSERT INTO `t_user` VALUES ('17', '蹦跶蹦跶', '86296b165286224d5f8032025a79c2f6', null, '15779551333@163.com', '15779551333', '1', '2019-04-28 06:46:49', null, null, '0', null, 'default.jpg', null, null);

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
INSERT INTO `t_user_config` VALUES ('1', 'light', 'head', '1', '1', '1', 'rgb(47, 84, 235)');
INSERT INTO `t_user_config` VALUES ('2', 'light', 'head', '0', '1', '1', 'rgb(24, 144, 255)');
INSERT INTO `t_user_config` VALUES ('12', 'dark', 'side', '1', '1', '1', 'rgb(66, 185, 131)');
INSERT INTO `t_user_config` VALUES ('15', 'dark', 'side', '0', '1', '1', 'rgb(66, 185, 131)');
INSERT INTO `t_user_config` VALUES ('16', 'dark', 'side', '0', '1', '1', 'rgb(66, 185, 131)');
INSERT INTO `t_user_config` VALUES ('17', 'dark', 'side', '0', '1', '1', 'rgb(66, 185, 131)');

-- ----------------------------
-- Table structure for t_user_resume
-- ----------------------------
DROP TABLE IF EXISTS `t_user_resume`;
CREATE TABLE `t_user_resume` (
  `USER_ID` bigint(20) NOT NULL,
  `RESUME_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_resume
-- ----------------------------

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
INSERT INTO `t_user_role` VALUES ('2', '2');
INSERT INTO `t_user_role` VALUES ('12', '72');
INSERT INTO `t_user_role` VALUES ('1', '1');
INSERT INTO `t_user_role` VALUES ('1', '2');
INSERT INTO `t_user_role` VALUES ('1', '72');
INSERT INTO `t_user_role` VALUES ('16', '2');
INSERT INTO `t_user_role` VALUES ('17', '1');

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