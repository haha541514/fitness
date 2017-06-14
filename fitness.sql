/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50112
Source Host           : localhost:3306
Source Database       : fitness

Target Server Type    : MYSQL
Target Server Version : 50112
File Encoding         : 65001

Date: 2017-06-14 18:14:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` varchar(13) NOT NULL COMMENT '新闻ID',
  `news_title` varchar(50) NOT NULL COMMENT '新闻标题',
  `news_createtime` datetime NOT NULL COMMENT '发布时间',
  `news_opcode` varchar(255) NOT NULL COMMENT '发布人',
  `news_type` varchar(10) NOT NULL COMMENT '新闻类型',
  `news_del` int(5) DEFAULT NULL COMMENT '删除人',
  PRIMARY KEY (`news_id`),
  KEY `fk_news_type` (`news_type`),
  CONSTRAINT `fk_news_type` FOREIGN KEY (`news_type`) REFERENCES `newstype` (`newst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('N170328001', '健身饮食蛋白质的补充', '2016-08-05 10:43:03', '10000', 'NT0002', null);
INSERT INTO `news` VALUES ('N170328002', '如何正确的进行跑步健身', '2016-08-05 10:43:03', '10000', 'NT0003', null);
INSERT INTO `news` VALUES ('N170328003', '游泳健身的相关技巧', '2016-09-05 10:43:03', '10000', 'NT0002', null);
INSERT INTO `news` VALUES ('N170328004', '男生如何锻炼诱人的胸肌', '2016-10-05 10:43:03', '10000', 'NT0005', null);
INSERT INTO `news` VALUES ('N170328005', '教你一招锻炼S型', '2016-10-15 10:43:03', '10000', 'NT0006', null);
INSERT INTO `news` VALUES ('N170413092059', 'test', '2017-04-13 09:20:59', '10000', 'NT0001', null);

-- ----------------------------
-- Table structure for newscontent
-- ----------------------------
DROP TABLE IF EXISTS `newscontent`;
CREATE TABLE `newscontent` (
  `newsc_id` varchar(13) NOT NULL,
  `newsc_content` varchar(10240) DEFAULT NULL COMMENT '新闻内容',
  `newsc_shuming` varchar(20) NOT NULL COMMENT '新闻卷稿人',
  `newsc_phone` varchar(13) NOT NULL COMMENT '新闻联系电话',
  `newsc_hotline` varchar(13) DEFAULT NULL COMMENT '联系热线',
  PRIMARY KEY (`newsc_id`),
  CONSTRAINT `fk_news_newscid` FOREIGN KEY (`newsc_id`) REFERENCES `news` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newscontent
-- ----------------------------
INSERT INTO `newscontent` VALUES ('N170328001', '三国杀神吕蒙是风包的神将之一，三国杀网页版神吕蒙技能是涉猎和攻心。</br>涉猎：摸牌阶段，你可以选择执行以下行动来取代摸牌：从牌堆顶亮出五张牌，拿走不同花色的牌各一张，弃掉其余的。</br>攻心：出牌阶段，你可以观看一次任意一名角色的手牌，并可以展示其中一张红桃牌，然后弃掉它或将它置于牌堆顶。</br>下面是三国杀网页版神吕蒙FAQ：</br>[Q]神吕蒙能否对自己发动【攻心】？</br>[A]可以。</br>[Q]神吕蒙属于吴势力角色吗？</br>[A]神武将可以是任何国家的。', '热心视频张大爷', '110', '110');
INSERT INTO `newscontent` VALUES ('N170328002', '界限突破·黄盖</br>吴，4勾玉</br>【苦肉】出牌阶段限一次，你可以弃置一张牌，然后失去1点体力。</br>【诈降】锁定技，当你失去1点体力后，你摸三张牌，然后若此时在你的出牌阶段内，则直到回合结束，你使用红色【杀】无距离限制且不能被【闪】响应，你使用【杀】的次数上限+1', '刘教练', '110', '110');
INSERT INTO `newscontent` VALUES ('N170328003', '界限突破·陆逊吴，3勾玉【谦逊】当一张延时类锦囊牌或其他角色使用的非延时类锦囊牌对你生效时，若此牌的目标角色数为1，你可以将所有手牌扣置于武将牌上。若如此做，此回合结束时，你获得武将牌上的所有牌。【连营】当你失去手牌后，若你没有手牌，则你可以令至多X名角色各摸一张牌（X为你此次失去的手牌数）。', '刘教练', '110', '110');
INSERT INTO `newscontent` VALUES ('N170413092059', 'test', 'admin', '110', '110');

-- ----------------------------
-- Table structure for newstype
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype` (
  `newst_id` varchar(10) NOT NULL COMMENT '新闻类型id',
  `newst_type` varchar(20) NOT NULL COMMENT '新闻类型',
  `newst_time` datetime NOT NULL COMMENT '类型创建时间',
  `newst_username` varchar(255) NOT NULL COMMENT '类型创建人',
  `newst_del` int(5) DEFAULT NULL COMMENT '类型删除人',
  PRIMARY KEY (`newst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES ('NT0001', '有氧运动', '2016-08-05 10:43:03', '10000', null);
INSERT INTO `newstype` VALUES ('NT0002', '游泳运动', '2016-08-05 10:43:03', '10000', null);
INSERT INTO `newstype` VALUES ('NT0003', '跑步运动', '2016-08-05 10:43:03', '10000', null);
INSERT INTO `newstype` VALUES ('NT0004', '健身饮食', '2016-08-05 10:43:03', '10000', null);
INSERT INTO `newstype` VALUES ('NT0005', '胸肌运动', '2016-08-05 10:43:03', '10000', null);
INSERT INTO `newstype` VALUES ('NT0006', '塑性运动', '2016-08-05 10:43:03', '10000', null);

-- ----------------------------
-- Table structure for tb_bbs
-- ----------------------------
DROP TABLE IF EXISTS `tb_bbs`;
CREATE TABLE `tb_bbs` (
  `bbs_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '论坛id',
  `bbs_title` varchar(70) DEFAULT NULL COMMENT '论坛标题',
  `bbs_content` varchar(2000) DEFAULT NULL COMMENT '论坛内容',
  `bbs_sender` int(5) DEFAULT NULL COMMENT '发送人',
  `bbs_sendTime` datetime DEFAULT NULL COMMENT '发送时间',
  `bbs_face` varchar(10) DEFAULT NULL COMMENT '创建人人头像',
  `bbs_opTime` datetime DEFAULT NULL COMMENT '创建人时间',
  `bbs_isTop` varchar(1) DEFAULT NULL COMMENT '是否置顶',
  `bbs_toTopTime` datetime DEFAULT NULL COMMENT '置顶时间',
  `bbs_isGood` varchar(1) DEFAULT NULL COMMENT '是否加精',
  `bbs_toGoodTime` datetime DEFAULT NULL COMMENT '加精时间',
  PRIMARY KEY (`bbs_id`),
  KEY `fk_bbs_create` (`bbs_sender`),
  CONSTRAINT `fk_bbs_create` FOREIGN KEY (`bbs_sender`) REFERENCES `t_op_operator` (`op_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bbs
-- ----------------------------
INSERT INTO `tb_bbs` VALUES ('421172349', 'test', 'test', '10000', null, null, '2017-04-21 17:23:49', null, null, null, null);
INSERT INTO `tb_bbs` VALUES ('421173029', 'test', 'test', '10000', null, null, '2017-04-21 17:30:29', null, null, null, null);
INSERT INTO `tb_bbs` VALUES ('2017032801', 'TEST', 'this test bbs,this test bbs,,this test bbs,this test bbs,this test bbs', '10000', '2016-08-05 10:43:03', '1.jsp', '2016-08-05 10:43:03', 'N', null, 'N', null);
INSERT INTO `tb_bbs` VALUES ('2017032802', 'TEST2', 'this test2 bbs,this test bbs,,this test bbs,this test bbs,this test bbs', '10000', '2016-08-05 10:43:03', '2.jsp', '2016-08-05 10:43:03', 'N', null, 'N', null);
INSERT INTO `tb_bbs` VALUES ('2017032803', 'TEST3', 'this test2 bbs,this test bbs,,this test bbs,this test bbs,this test bbs', '10000', '2016-08-05 10:43:03', '2.jsp', '2016-08-05 10:43:03', 'N', null, 'N', null);

-- ----------------------------
-- Table structure for tb_bbsanswer
-- ----------------------------
DROP TABLE IF EXISTS `tb_bbsanswer`;
CREATE TABLE `tb_bbsanswer` (
  `answer_id` varchar(20) NOT NULL COMMENT '回帖id',
  `bbsAnswer_id` int(11) NOT NULL COMMENT '回帖人id',
  `bbsAnswer_bbsid` int(11) DEFAULT NULL COMMENT '被回复的帖子',
  `bbsAnswer_content` varchar(2000) DEFAULT NULL COMMENT '回帖内容',
  `bbsAnswer_sendTime` datetime DEFAULT NULL COMMENT '回帖人时间',
  `bbsAnswer_face` varchar(10) DEFAULT NULL COMMENT '回帖人头像',
  PRIMARY KEY (`answer_id`),
  KEY `fk_bbsan_bbasid` (`bbsAnswer_bbsid`),
  KEY `fk_bbsan_opcode` (`bbsAnswer_id`),
  CONSTRAINT `fk_bbsan_bbasid` FOREIGN KEY (`bbsAnswer_bbsid`) REFERENCES `tb_bbs` (`bbs_id`),
  CONSTRAINT `fk_bbsan_opcode` FOREIGN KEY (`bbsAnswer_id`) REFERENCES `t_op_operator` (`op_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bbsanswer
-- ----------------------------
INSERT INTO `tb_bbsanswer` VALUES ('2017041111604376', '10000', '2017032801', '你好a', '2017-04-21 16:16:11', '1');
INSERT INTO `tb_bbsanswer` VALUES ('2017041111604652', '10000', '2017032801', '123', '2017-04-21 16:16:34', '1');
INSERT INTO `tb_bbsanswer` VALUES ('2017041111604859', '10000', '2017032801', 'test', '2017-04-21 16:16:01', '1');
INSERT INTO `tb_bbsanswer` VALUES ('201704111163939', '10000', '2017032802', 'test', '2017-04-21 16:39:39', '1');
INSERT INTO `tb_bbsanswer` VALUES ('201704111173018', '10000', '421172349', 'test', '2017-04-21 17:30:18', '1');
INSERT INTO `tb_bbsanswer` VALUES ('201704112165538', '10000', '421173029', 'test', '2017-04-22 16:55:38', '1');
INSERT INTO `tb_bbsanswer` VALUES ('201704114163307', '10000', '421172349', 'test', '2017-04-24 16:33:07', '1');
INSERT INTO `tb_bbsanswer` VALUES ('20170421', '10003', '2017032801', '楼主锻炼精神值得称赞', '2016-08-05 10:43:03', '1.jsp');

-- ----------------------------
-- Table structure for t_op_operator
-- ----------------------------
DROP TABLE IF EXISTS `t_op_operator`;
CREATE TABLE `t_op_operator` (
  `op_code` int(5) NOT NULL AUTO_INCREMENT,
  `op_name` varchar(20) NOT NULL COMMENT '用户名',
  `op_pass` varchar(20) NOT NULL COMMENT '用户密码',
  `op_qqnum` varchar(13) NOT NULL COMMENT '用户qq号',
  `op_role` int(5) NOT NULL COMMENT '角色',
  PRIMARY KEY (`op_code`),
  KEY `fk_opcode_rcode` (`op_role`),
  CONSTRAINT `fk_opcode_rcode` FOREIGN KEY (`op_role`) REFERENCES `t_op_role` (`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_op_operator
-- ----------------------------
INSERT INTO `t_op_operator` VALUES ('10000', 'admin', '123', '541514716', '9001');
INSERT INTO `t_op_operator` VALUES ('10001', 'leis', '123', '541514716', '9000');
INSERT INTO `t_op_operator` VALUES ('10002', 'wkq', '123', '541514716', '9000');
INSERT INTO `t_op_operator` VALUES ('10003', '丐帮', '123', '2584442539', '9000');
INSERT INTO `t_op_operator` VALUES ('10004', '藏剑', '123', '2584442539', '9000');
INSERT INTO `t_op_operator` VALUES ('10005', '苍云', '123', '2584442539', '9000');
INSERT INTO `t_op_operator` VALUES ('10006', '霸刀', '123', '2584442539', '9000');
INSERT INTO `t_op_operator` VALUES ('10007', '李教练', '123', '2584442539', '9000');
INSERT INTO `t_op_operator` VALUES ('10008', '刘教练', '123', '2584442539', '9000');
INSERT INTO `t_op_operator` VALUES ('10009', '学员1', '123', '2584442539', '9000');
INSERT INTO `t_op_operator` VALUES ('10010', '学员2', '123', '2584442539', '9000');
INSERT INTO `t_op_operator` VALUES ('10011', 'teest', '123', '5156464', '9001');
INSERT INTO `t_op_operator` VALUES ('10012', 'teest', '123', '5156464', '9001');
INSERT INTO `t_op_operator` VALUES ('10013', 'teest', '123', '5156464', '9001');
INSERT INTO `t_op_operator` VALUES ('10014', 'teest', '123', '5156464', '9001');
INSERT INTO `t_op_operator` VALUES ('10015', 'teest', '123', '5156464', '9001');
INSERT INTO `t_op_operator` VALUES ('10016', 'teest', '123', '5156464', '9001');
INSERT INTO `t_op_operator` VALUES ('10017', 'teest', '123', '5156464', '9001');

-- ----------------------------
-- Table structure for t_op_role
-- ----------------------------
DROP TABLE IF EXISTS `t_op_role`;
CREATE TABLE `t_op_role` (
  `role_code` int(4) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL COMMENT '角色名',
  `role_createtime` varchar(20) NOT NULL COMMENT '角色密码',
  PRIMARY KEY (`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_op_role
-- ----------------------------
INSERT INTO `t_op_role` VALUES ('9000', 'admin', '2013-08-05 10:43:03');
INSERT INTO `t_op_role` VALUES ('9001', 'user', '2013-08-05 10:43:03');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `video_id` varchar(20) NOT NULL COMMENT '视频ID',
  `video_title` varchar(100) NOT NULL COMMENT '视频标题',
  `video_createtime` datetime NOT NULL COMMENT '发布时间',
  `video_opcode` varchar(20) NOT NULL COMMENT '发布人',
  `video_del` varchar(10) DEFAULT NULL COMMENT '删除人',
  `video_url` varchar(100) NOT NULL COMMENT '视频存储路径',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('V170328V001', '健身器材大购买', '2016-10-05 10:43:03', '1000', null, 'E:/finess/video/test.mp4');
INSERT INTO `video` VALUES ('V170328V002', '跑步锻炼视频', '2016-10-25 10:43:03', '1000', null, 'E:/finess/video/test1.mp4');
INSERT INTO `video` VALUES ('V170328V003', '哑铃锻炼视频', '2016-10-15 10:43:03', '1000', null, 'E:/finess/video/test2.mp4');
