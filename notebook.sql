/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : notebook

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2013-08-08 17:28:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `pwd` char(32) DEFAULT NULL COMMENT '登录密码',
  `status` int(11) DEFAULT '1' COMMENT '账号状态',
  `remark` varchar(255) DEFAULT '' COMMENT '备注信息',
  `find_code` char(5) DEFAULT NULL COMMENT '找回账号验证码',
  `time` int(10) DEFAULT NULL COMMENT '开通时间',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '19467285@qq.com', 'admin', '1', '我是超级管理员 哈哈~~', null, '1373267039');

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` smallint(3) DEFAULT NULL COMMENT '所在分类',
  `title` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `keywords` varchar(50) DEFAULT NULL COMMENT '文章关键字',
  `description` mediumtext COMMENT '文章描述',
  `status` tinyint(1) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `create_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  `content` text,
  `aid` smallint(3) DEFAULT NULL COMMENT '发布者UID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('3', '14', '银监会拟引入银行理财业务和机构准入制度', '银行理财', '银行理财业务的迅猛增长，倒逼监管的步步升级。', '1', '银行理财业务的迅猛增长，倒逼监管的步步升级。记者从业内获得的最新统计数据显示，截至2012年末，各银行共存续理财产品32152款，理财资金账面余额7.1万亿元，比2011年末增长约55%。年初以来，银监会已将理财业务列为今年的重点监管工作。消息人士透露，对理财产品加大监管主要表现在两方面：一是将派出机构对银行理财产品销售活动进行专项检查；另一方面，将“资金池”操作模式作为现场检查的重点，“要求商业…', '1363141499', '1373619997', '银行理财业务的迅猛增长，倒逼监管的步步升级。\n<p>\n	记者从业内获得的最新统计数据显示，截至2012年末，各银行共存续理财产品32152款，理财资金账面余额7.1万亿元，比2011年末增长约55%。\n</p>\n<p>\n	年初以来，银监会已将理财业务列为今年的重点监管工作\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	点，“要求商业银行在2-4月份首先对‘资金池’类理财产品进行自查整改。”\n</p>\n<p>\n	随着理财业务的过快发展，监管部门对于理财业务参与机构的风险管理能力、资产管理能力等方面表现出担忧，特别是城商行和农村合作<a href=\"http://licai.so/Jgzl/\" target=\"_blank\">金融机构</a>。消息人士称，因此，监管部门正在酝酿开展理财业务的机构准入和业务准入制度\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', '1');

-- ----------------------------
-- Table structure for `article_cate`
-- ----------------------------
DROP TABLE IF EXISTS `article_cate`;
CREATE TABLE `article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_cate
-- ----------------------------
INSERT INTO `article_cate` VALUES ('17', '0', '全部分类');
INSERT INTO `article_cate` VALUES ('22', '17', '二级分类');
INSERT INTO `article_cate` VALUES ('23', '17', '12121212');
INSERT INTO `article_cate` VALUES ('25', '23', '21212');

-- ----------------------------
-- Table structure for `nt_access`
-- ----------------------------
DROP TABLE IF EXISTS `nt_access`;
CREATE TABLE `nt_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限分配表';

-- ----------------------------
-- Records of nt_access
-- ----------------------------
INSERT INTO `nt_access` VALUES ('2', '8', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '14', '2', '1', '');
INSERT INTO `nt_access` VALUES ('2', '10', '3', '4', '');
INSERT INTO `nt_access` VALUES ('2', '4', '2', '1', '');
INSERT INTO `nt_access` VALUES ('2', '7', '3', '3', '');
INSERT INTO `nt_access` VALUES ('2', '3', '2', '1', '');
INSERT INTO `nt_access` VALUES ('2', '6', '3', '2', '');
INSERT INTO `nt_access` VALUES ('2', '5', '3', '2', '');
INSERT INTO `nt_access` VALUES ('2', '2', '2', '1', '');
INSERT INTO `nt_access` VALUES ('2', '1', '1', '0', '');
INSERT INTO `nt_access` VALUES ('3', '14', '2', '1', '');
INSERT INTO `nt_access` VALUES ('3', '13', '3', '4', '');
INSERT INTO `nt_access` VALUES ('3', '12', '3', '4', '');
INSERT INTO `nt_access` VALUES ('3', '11', '3', '4', '');
INSERT INTO `nt_access` VALUES ('3', '10', '3', '4', '');
INSERT INTO `nt_access` VALUES ('3', '4', '2', '1', '');
INSERT INTO `nt_access` VALUES ('3', '9', '3', '3', '');
INSERT INTO `nt_access` VALUES ('3', '8', '3', '3', '');
INSERT INTO `nt_access` VALUES ('3', '7', '3', '3', '');
INSERT INTO `nt_access` VALUES ('3', '3', '2', '1', '');
INSERT INTO `nt_access` VALUES ('3', '6', '3', '2', '');
INSERT INTO `nt_access` VALUES ('3', '5', '3', '2', '');
INSERT INTO `nt_access` VALUES ('3', '2', '2', '1', '');
INSERT INTO `nt_access` VALUES ('3', '1', '1', '0', '');
INSERT INTO `nt_access` VALUES ('4', '7', '3', '3', '');
INSERT INTO `nt_access` VALUES ('4', '3', '2', '1', '');
INSERT INTO `nt_access` VALUES ('4', '6', '3', '2', '');
INSERT INTO `nt_access` VALUES ('4', '5', '3', '2', '');
INSERT INTO `nt_access` VALUES ('4', '2', '2', '1', '');
INSERT INTO `nt_access` VALUES ('4', '1', '1', '0', '');
INSERT INTO `nt_access` VALUES ('2', '9', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '15', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '16', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '17', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '18', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '19', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '20', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '21', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '22', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '23', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '24', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '25', '3', '14', '');
INSERT INTO `nt_access` VALUES ('2', '26', '2', '1', '');
INSERT INTO `nt_access` VALUES ('2', '27', '3', '26', '');
INSERT INTO `nt_access` VALUES ('2', '28', '3', '26', '');
INSERT INTO `nt_access` VALUES ('2', '29', '3', '26', '');
INSERT INTO `nt_access` VALUES ('2', '30', '3', '26', '');
INSERT INTO `nt_access` VALUES ('2', '31', '3', '26', '');

-- ----------------------------
-- Table structure for `nt_member`
-- ----------------------------
DROP TABLE IF EXISTS `nt_member`;
CREATE TABLE `nt_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `weibo_uid` varchar(15) DEFAULT NULL COMMENT '对应的新浪微博uid',
  `tencent_uid` varchar(20) DEFAULT NULL COMMENT '腾讯微博UID',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱地址',
  `nickname` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `pwd` char(32) DEFAULT NULL COMMENT '密码',
  `reg_date` int(10) DEFAULT NULL,
  `reg_ip` char(15) DEFAULT NULL COMMENT '注册IP地址',
  `verify_status` int(1) DEFAULT '0' COMMENT '电子邮件验证标示 0未验证，1已验证',
  `verify_code` varchar(32) DEFAULT NULL COMMENT '电子邮件验证随机码',
  `verify_time` int(10) DEFAULT NULL COMMENT '邮箱验证时间',
  `verify_exp_time` int(10) DEFAULT NULL COMMENT '验证邮件过期时间',
  `find_fwd_code` varchar(32) DEFAULT NULL COMMENT '找回密码验证随机码',
  `find_pwd_time` int(10) DEFAULT NULL COMMENT '找回密码申请提交时间',
  `find_pwd_exp_time` int(10) DEFAULT NULL COMMENT '找回密码验证随机码过期时间',
  `avatar` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `birthday` int(10) DEFAULT NULL COMMENT '用户生日',
  `sex` int(1) DEFAULT NULL COMMENT '0女1男',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `intr` varchar(500) DEFAULT NULL COMMENT '个人介绍',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `phone` varchar(30) DEFAULT NULL COMMENT '电话',
  `fax` varchar(30) DEFAULT NULL,
  `qq` int(15) DEFAULT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `login_ip` varchar(15) DEFAULT NULL COMMENT '登录ip',
  `login_time` int(10) DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站前台会员表';

-- ----------------------------
-- Records of nt_member
-- ----------------------------

-- ----------------------------
-- Table structure for `nt_node`
-- ----------------------------
DROP TABLE IF EXISTS `nt_node`;
CREATE TABLE `nt_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='权限节点表';

-- ----------------------------
-- Records of nt_node
-- ----------------------------
INSERT INTO `nt_node` VALUES ('1', 'Admin', '后台管理', '1', '网站后台管理项目', '10', '0', '1');
INSERT INTO `nt_node` VALUES ('2', 'Index', '管理首页', '1', '', '1', '1', '2');
INSERT INTO `nt_node` VALUES ('3', 'Member', '注册会员管理', '1', '', '3', '1', '2');
INSERT INTO `nt_node` VALUES ('4', 'Webinfo', '系统管理', '1', '', '4', '1', '2');
INSERT INTO `nt_node` VALUES ('5', 'index', '默认页', '1', '', '5', '2', '3');
INSERT INTO `nt_node` VALUES ('6', 'myInfo', '我的个人信息', '1', '', '6', '2', '3');
INSERT INTO `nt_node` VALUES ('7', 'index', '会员首页', '1', '', '7', '3', '3');
INSERT INTO `nt_node` VALUES ('8', 'index', '管理员列表', '1', '', '8', '14', '3');
INSERT INTO `nt_node` VALUES ('9', 'addAdmin', '添加管理员', '1', '', '9', '14', '3');
INSERT INTO `nt_node` VALUES ('10', 'index', '系统设置首页', '1', '', '10', '4', '3');
INSERT INTO `nt_node` VALUES ('11', 'setEmailConfig', '设置系统邮件', '1', '', '12', '4', '3');
INSERT INTO `nt_node` VALUES ('12', 'testEmailConfig', '发送测试邮件', '1', '', '0', '4', '3');
INSERT INTO `nt_node` VALUES ('13', 'setSafeConfig', '系统安全设置', '1', '', '0', '4', '3');
INSERT INTO `nt_node` VALUES ('14', 'Auth', '权限管理', '1', '权限管理，为系统后台管理员设置不同的权限', '0', '1', '2');
INSERT INTO `nt_node` VALUES ('15', 'nodeList', '查看节点', '1', '节点列表信息', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('16', 'roleList', '角色列表查看', '1', '角色列表查看', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('17', 'addRole', '添加角色', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('18', 'editRole', '编辑角色', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('19', 'opNodeStatus', '便捷开启禁用节点', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('20', 'opRoleStatus', '便捷开启禁用角色', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('21', 'editNode', '编辑节点', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('22', 'addNode', '添加节点', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('23', 'addAdmin', '添加管理员', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('24', 'editAdmin', '编辑管理员信息', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('25', 'changeRole', '权限分配', '1', '', '0', '14', '3');
INSERT INTO `nt_node` VALUES ('26', 'Article', '文章管理', '1', '', '0', '1', '2');
INSERT INTO `nt_node` VALUES ('27', 'index', '新闻列表', '1', '', '0', '26', '3');
INSERT INTO `nt_node` VALUES ('28', 'category', '新闻分类管理', '1', '', '0', '26', '3');
INSERT INTO `nt_node` VALUES ('29', 'add', '发布新闻', '1', '', '0', '26', '3');
INSERT INTO `nt_node` VALUES ('30', 'edit', '编辑新闻', '1', '', '0', '26', '3');
INSERT INTO `nt_node` VALUES ('31', 'del', '删除信息', '0', '', '0', '26', '3');

-- ----------------------------
-- Table structure for `nt_role`
-- ----------------------------
DROP TABLE IF EXISTS `nt_role`;
CREATE TABLE `nt_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限角色表';

-- ----------------------------
-- Records of nt_role
-- ----------------------------
INSERT INTO `nt_role` VALUES ('1', '超级管理员', '0', '1', '系统内置超级管理员组，不受权限分配账号限制');
INSERT INTO `nt_role` VALUES ('2', '管理员', '1', '1', '拥有系统仅此于超级管理员的权限');
INSERT INTO `nt_role` VALUES ('3', '领导', '1', '1', '拥有所有操作的读权限，无增加、删除、修改的权限');
INSERT INTO `nt_role` VALUES ('4', '测试组', '1', '1', '测试');

-- ----------------------------
-- Table structure for `nt_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `nt_role_user`;
CREATE TABLE `nt_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of nt_role_user
-- ----------------------------
