/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : exam_system

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 21/05/2022 17:53:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '答案表的主键',
  `all_option` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '当前题目所有答案的信息',
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '答案的图片路径',
  `analysis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '答案解析',
  `question_id` int(50) NOT NULL COMMENT '对应题目的id',
  `true_option` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '正确的选项对应的下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (1, '1,2', '', '1', 5, '0');
INSERT INTO `answer` VALUES (3, '语文,数学,英语,选修课', ',', NULL, 6, '0,1,2');
INSERT INTO `answer` VALUES (12, '0,1', '', '121', 12, '0');
INSERT INTO `answer` VALUES (12, '12,16', '', '16', 12, '1');
INSERT INTO `answer` VALUES (12, '9,8', '', '9', 13, '0');
INSERT INTO `answer` VALUES (13, '4,3', '', '4', 14, '0');
INSERT INTO `answer` VALUES (14, '18,12', '', '18', 15, '0');
INSERT INTO `answer` VALUES (15, '1', '', '1', 16, '0');
INSERT INTO `answer` VALUES (16, '4,3', '', '4', 17, '0');
INSERT INTO `answer` VALUES (17, '1,2,3,4', ',,,', NULL, 18, '0,1');
INSERT INTO `answer` VALUES (18, '奇数,偶数', '', '奇数', 19, '0');
INSERT INTO `answer` VALUES (19, '奇数,偶数', '', '奇数', 20, '0');
INSERT INTO `answer` VALUES (20, '121,222,333', '', NULL, 21, '0,1,2');
INSERT INTO `answer` VALUES (22, '', '', '', 23, '0');
INSERT INTO `answer` VALUES (23, '每个分组自身携带有足够的信息，它的传送是被单独处理的,在整个传送过程中，不需要建立虚电路,所有分钟按顺序达到目的端系统,网络节点要为每个分组做出路由选择', '', '', 26, '2');
INSERT INTO `answer` VALUES (24, 'IP,HTTP,FTP,Telnet', '', '', 27, '1');
INSERT INTO `answer` VALUES (25, 'PING,LOGIN,IPCONFIG', '', NULL, 28, '0,2');
INSERT INTO `answer` VALUES (26, '数据库,数据库管理系统,数据模型,软件工具', '', '', 29, '1');
INSERT INTO `answer` VALUES (27, '数据结构化,数据冗余度大,数据独立性高,数据由DBMS统一管理和控制', '', '', 30, '1');
INSERT INTO `answer` VALUES (28, '树,图,索引,关系', '', '', 31, '3');
INSERT INTO `answer` VALUES (29, '错误,正确', '', '', 32, '0');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `exam_id` int(50) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试名称',
  `exam_desc` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '考试描述',
  `type` int(15) NOT NULL DEFAULT 1 COMMENT '1完全公开  2需要密码',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '需要密码考试的密码',
  `duration` int(50) NOT NULL COMMENT '考试时长',
  `start_time` date NULL DEFAULT NULL COMMENT '考试开始时间',
  `end_time` date NULL DEFAULT NULL COMMENT '考试结束时间',
  `total_score` int(30) NOT NULL COMMENT '考试总分',
  `pass_score` int(30) NOT NULL COMMENT '考试通过线',
  `status` int(15) NOT NULL DEFAULT 1 COMMENT '1有效 2无效',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (12, '多选题练习考试', '滴滴', 1, NULL, 1, '2022-05-01', '2022-05-30', 1, 1, 1);
INSERT INTO `exam` VALUES (12, '简答测试', '', 2, '123456', 1, '2022-05-01', '2022-05-30', 1, 1, 1);
INSERT INTO `exam` VALUES (16, '混合测试', '', 1, NULL, 1, '2022-05-01', '2022-05-30', 3, 2, 1);
INSERT INTO `exam` VALUES (18, '数据库测试3', '', 1, NULL, 12, '2022-05-01', '2022-05-30', 1, 1, 1);
INSERT INTO `exam` VALUES (19, '数据库测试2', '', 1, NULL, 1, '2022-05-01', '2022-05-30', 2, 1, 1);
INSERT INTO `exam` VALUES (20, '自由组卷测试', '', 1, NULL, 1, '2022-05-01', '2022-05-30', 1, 1, 1);

-- ----------------------------
-- Table structure for exam_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `question_ids` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试的题目id列表',
  `exam_id` int(50) NOT NULL COMMENT '考试的id',
  `scores` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '每一题的分数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_question
-- ----------------------------
INSERT INTO `exam_question` VALUES (6, '18', 12, '1');
INSERT INTO `exam_question` VALUES (7, '3', 12, '1');
INSERT INTO `exam_question` VALUES (15, '12,32,12', 16, '1,1,1');
INSERT INTO `exam_question` VALUES (21, '31', 18, '1');
INSERT INTO `exam_question` VALUES (22, '30,29', 19, '1,1');
INSERT INTO `exam_question` VALUES (23, '24', 20, '1');

-- ----------------------------
-- Table structure for exam_record
-- ----------------------------
DROP TABLE IF EXISTS `exam_record`;
CREATE TABLE `exam_record`  (
  `record_id` int(50) NOT NULL AUTO_INCREMENT COMMENT '考试记录的id',
  `user_id` int(50) NOT NULL COMMENT '考试用户的id',
  `user_answers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户的答案列表',
  `credit_img_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '考试诚信截图',
  `exam_id` int(50) NOT NULL COMMENT '考试的id',
  `logic_score` int(50) NULL DEFAULT NULL COMMENT '考试的逻辑得分(除简答)',
  `exam_time` datetime NOT NULL COMMENT '考试时间',
  `question_ids` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试的题目信息',
  `total_score` int(50) NULL DEFAULT NULL COMMENT '考试总分数 (逻辑+简答)',
  `error_question_ids` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户考试的错题',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_record
-- ----------------------------
INSERT INTO `exam_record` VALUES (1, 1, '1-1-0-1-0-1,2-1,2-1-java是全世界最好的语言.jpg-小学是童年', '', 9, 3, '2021-12-05 19:28:40', '12,13,14,12,15,6,18,19,3,8', 5, '12,13,6,18,19,14');
INSERT INTO `exam_record` VALUES (2, 1, '1', '', 12, 0, '2021-12-07 12:34:50', '3', 1, NULL);
INSERT INTO `exam_record` VALUES (3, 1, '0-1-0-0-0-0,1,2-0,1-0,1,2-0-0-12345-56', '', 12, 12, '2021-12-08 09:15:16', '12,12,13,14,15,6,18,21,19,20,3,8', 12, NULL);
INSERT INTO `exam_record` VALUES (4, 2, '0-0-0-1-0-0,1,2-0,1-0-wqe-eqweq', '', 9, 8, '2021-12-08 09:20:27', '12,13,14,12,15,6,18,19,3,8', 12, NULL);
INSERT INTO `exam_record` VALUES (5, 2, '0,1,2-1,2', '', 12, 1, '2021-12-08 12:57:00', '6,18', 1, '18');
INSERT INTO `exam_record` VALUES (6, 1, '0-0-0-0-1-1-2-1-23-156', '', 9, 5, '2021-12-01 21:41:58', '12,15,13,14,12,18,6,19,3,8', 5, '18,6,19');
INSERT INTO `exam_record` VALUES (7, 1, '0-0-0-1-0-0,1,2-0,1-0-java-大大', '', 9, 8, '2021-12-01 21:45:30', '12,13,14,12,15,6,18,19,3,8', 9, NULL);
INSERT INTO `exam_record` VALUES (9, 1, '0-1-0-0-0-1-2-1-是-sad', '', 9, 3, '2021-12-01 21:48:45', '12,13,14,12,15,6,18,19,3,8', 3, '13,12,6,18,19');
INSERT INTO `exam_record` VALUES (12, 1, '0-0-0-0-0-1,3-1,2,3-1-656', '', 9, 4, '2021-01-14 18:45:42', '12,13,15,12,14,6,18,19,3,8', 6, '12,6,18,19');
INSERT INTO `exam_record` VALUES (14, 1, '0-1-0-1-1-1--1 -', '', 9, 1, '2021-01-15 12:25:05', '12,12,14,13,15,6,18,19,3,8', NULL, '12,12,13,15,6,18,19');
INSERT INTO `exam_record` VALUES (15, 2, '1-0-0 - - - - - -', '', 9, 2, '2021-01-15 12:18:54', '12,13,15,12,14,6,18,19,3,8', 4, '15,12,14,6,18,19');
INSERT INTO `exam_record` VALUES (18, 1, '0,1,2-0,1', '', 12, 2, '2021-02-08 13:38:57', '6,18', NULL, NULL);
INSERT INTO `exam_record` VALUES (19, 2, '0,1,2-0,1', '', 12, 2, '2022-03-03 18:52:39', '6,18', NULL, NULL);
INSERT INTO `exam_record` VALUES (20, 1, '0', '', 16, 5, '2022-03-14 15:25:57', '32', 5, NULL);
INSERT INTO `exam_record` VALUES (21, 18, '3', '', 18, 1, '2022-03-14 23:15:36', '31', 1, NULL);
INSERT INTO `exam_record` VALUES (22, 18, '1-1', '', 19, 2, '2022-03-14 23:16:38', '29,30', 2, NULL);
INSERT INTO `exam_record` VALUES (23, 18, '1-0', '', 19, 1, '2022-03-14 23:17:00', '29,30', 1, '30');
INSERT INTO `exam_record` VALUES (24, 18, 'java', '', 12, 0, '2022-03-22 13:59:49', '3', NULL, NULL);
INSERT INTO `exam_record` VALUES (25, 18, '1-1', '', 19, 2, '2022-03-22 22:49:16', '29,30', 2, NULL);
INSERT INTO `exam_record` VALUES (26, 18, '-  -', '', 19, 0, '2022-03-22 22:53:13', '29', NULL, '29');
INSERT INTO `exam_record` VALUES (27, 18, '- -  - -', '', 19, 0, '2022-03-22 22:55:59', '29,30', NULL, '29,30');
INSERT INTO `exam_record` VALUES (28, 18, '1-1', '', 19, 2, '2022-03-22 22:56:15', '29,30', NULL, NULL);
INSERT INTO `exam_record` VALUES (35, 1, '- -  - -', '', 19, 0, '2022-03-23 12:30:51', '30,29', NULL, '30,29');
INSERT INTO `exam_record` VALUES (36, 1, ' -', '', 19, 0, '2022-03-23 12:32:00', '30', NULL, '30');
INSERT INTO `exam_record` VALUES (37, 20, '- -  - -', '', 19, 0, '2022-03-23 15:32:00', '30,29', NULL, '30,29');
INSERT INTO `exam_record` VALUES (38, 18, '- -  - -', '', 19, 0, '2022-03-23 15:33:51', '30,29', NULL, '30,29');
INSERT INTO `exam_record` VALUES (39, 18, '- -  - -', '', 19, 0, '2022-03-23 15:46:38', '30,29', NULL, '30,29');
INSERT INTO `exam_record` VALUES (40, 18, ' -', '', 19, 0, '2022-03-23 15:52:31', '30', NULL, '30');
INSERT INTO `exam_record` VALUES (41, 18, '0-0', '', 16, 2, '2022-03-23 15:56:30', '12,32', NULL, NULL);
INSERT INTO `exam_record` VALUES (42, 18, '先空着', '', 20, 0, '2022-03-24 00:45:14', '24', 0, NULL);
INSERT INTO `exam_record` VALUES (43, 18, '运输层\n网际层\n', '', 20, 0, '2022-04-29 15:49:50', '24', 0, NULL);
INSERT INTO `exam_record` VALUES (44, 18, '应用层，\n运输层，\n网际层，\n数据链路层，\n物理层，', '', 20, 0, '2022-04-29 16:01:25', '24', 1, NULL);
INSERT INTO `exam_record` VALUES (45, 20, '不会怎么办', '', 20, 0, '2022-05-16 22:00:32', '24', 0, NULL);
INSERT INTO `exam_record` VALUES (46, 18, '123', '', 20, 0, '2022-05-17 09:36:03', '24', NULL, NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `n_id` int(64) NOT NULL AUTO_INCREMENT COMMENT '系统公告id',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '公告创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新此公告时间',
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0(不是当前系统公告) 1(是当前系统公告)',
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '<ul><li><font color=\"#c24f4a\">欢迎使用课堂教学助手</font></li></ul><hr/><ul><li><font color=\"#c24f4a\">目前实现的功能</font></li></ul><hr/><ul><li><font color=\"#c24f4a\">开题报告设想</font></li></ul>', '2021-02-07 15:52:45', '2022-03-13 19:56:15', 1);
INSERT INTO `notice` VALUES (4, '<p>发布公告测试<br/></p>', '2021-12-07 17:02:07', '2021-12-07 17:05:13', 0);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `qu_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '问题内容',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `qu_type` int(12) NOT NULL COMMENT '问题类型 1单选 2多选 3判断 4简答',
  `level` int(12) NOT NULL DEFAULT 1 COMMENT '题目难度 1简单 2中等 3困难',
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片',
  `qu_bank_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属题库id',
  `qu_bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属题库名称',
  `analysis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '解析',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (3, '实现web后端的语言', '2021-12-24 16:30:08', 'jjr', 4, 2, NULL, '5', 'java开发', '解析');
INSERT INTO `question` VALUES (6, '以下哪些语言是必修课', '2021-12-02 12:12:28', 'jjr', 2, 1, NULL, '5', 'java开发', '语文 数学 英语');
INSERT INTO `question` VALUES (12, '1-1', '2021-12-27 14:35:33', 'jjr', 1, 1, NULL, '1', '小学数学题库', '0');
INSERT INTO `question` VALUES (12, '8+8', '2021-12-27 15:32:44', 'jjr', 1, 3, NULL, '1', '小学数学题库', '16');
INSERT INTO `question` VALUES (13, '1 * 9', '2021-12-27 15:13:38', 'jjr', 1, 1, NULL, '1', '小学数学题库', '9');
INSERT INTO `question` VALUES (14, '2+2', '2021-12-27 16:17:09', 'jjr', 1, 1, NULL, '1', '小学数学题库', '4');
INSERT INTO `question` VALUES (15, '9+9', '2021-12-27 15:53:14', 'jjr', 1, 1, NULL, '1', '小学数学题库', '18');
INSERT INTO `question` VALUES (18, '最接近0的两个数', '2021-12-02 12:09:13', 'jjr', 2, 2, NULL, '1', '小学数学题库', '1和2');
INSERT INTO `question` VALUES (19, '1是不是奇数', '2021-12-31 14:54:09', 'jjr', 3, 1, NULL, '1', '小学数学题库', '是');
INSERT INTO `question` VALUES (20, '9是奇数还是偶数', '2021-12-02 12:21:19', 'jjr', 3, 1, NULL, '1', '小学数学题库', '奇数');
INSERT INTO `question` VALUES (21, '哪几个是三位数', '2021-12-05 14:42:56', 'jjr', 2, 1, NULL, '1', '小学数学题库', '数数');
INSERT INTO `question` VALUES (23, '简述OSI体系结构', '2022-03-14 13:21:40', 'admin', 4, 1, NULL, '7', '计网题库', '物理层、数据链路层、网络层、传输层、会话层、表示层、应用层。');
INSERT INTO `question` VALUES (24, '简述TCP/IP体系结构', '2022-03-14 13:23:35', 'admin', 4, 1, NULL, '7', '计网题库', '网络接口层、 网际层、运输层、 应用层。');
INSERT INTO `question` VALUES (25, '简述五层协议结构', '2022-03-14 13:24:18', 'admin', 4, 1, NULL, '7', '计网题库', '物理层、数据链路层、网络层、运输层、 应用层。');
INSERT INTO `question` VALUES (26, '以下各项中，不是IP数据包操作特点的是（）', '2022-03-14 13:40:27', 'admin', 1, 1, NULL, '7', '计网题库', '');
INSERT INTO `question` VALUES (27, '在Internet上浏览网页时，浏览器和WWW服务器之间传输网页使用的协议是（）', '2022-03-14 13:46:56', 'admin', 1, 1, NULL, '7', '计网题库', '');
INSERT INTO `question` VALUES (28, 'DNS服务器和客户机设置完毕后，以下命令可以测试其设置是否正确的（）', '2022-03-14 13:49:57', 'admin', 2, 1, NULL, '7', '计网题库', '');
INSERT INTO `question` VALUES (29, '数据库系统的核心是（）', '2022-03-14 14:03:06', 'admin', 1, 1, NULL, '8', '数据库题库', '');
INSERT INTO `question` VALUES (30, '下列不属于数据库系统特点的是（）', '2022-03-14 14:05:13', 'admin', 1, 1, NULL, '8', '数据库题库', '');
INSERT INTO `question` VALUES (31, '关系数据模型的基本数据结构是（）', '2022-03-14 14:06:08', 'admin', 1, 1, NULL, '8', '数据库题库', '');
INSERT INTO `question` VALUES (32, '数据库系统的的特点之一为数据的共享性高，冗余度低且不易扩充', '2022-03-14 14:08:24', 'admin', 3, 1, NULL, '8', '数据库题库', '');

-- ----------------------------
-- Table structure for question_bank
-- ----------------------------
DROP TABLE IF EXISTS `question_bank`;
CREATE TABLE `question_bank`  (
  `bank_id` int(40) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_bank
-- ----------------------------
INSERT INTO `question_bank` VALUES (1, '小学数学题库');
INSERT INTO `question_bank` VALUES (5, 'java开发');
INSERT INTO `question_bank` VALUES (7, '计网题库');
INSERT INTO `question_bank` VALUES (8, '数据库题库');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `role_id` int(12) NOT NULL DEFAULT 1 COMMENT '1(学生) 2(教师) 3(管理员)',
  `username` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `true_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(12) NOT NULL DEFAULT 1 COMMENT '用户是否被禁用 1正常 2禁用',
  `create_date` datetime NOT NULL COMMENT '用户创建时间',
  `last_login_date` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上次登录时间',
  `last_login_ip` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上次登录IP',
  `last_login_mac` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上次登录MAC',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 3, 'admin', '超级管理员', '7e2aa2e6c397494c5814db9a8167aeef', 'c667d6', 1, '2021-12-22 15:05:15', '2022-05-18 20:22:14', '192.168.1.123', 'F8-63-3F-DE-71-82');
INSERT INTO `user` VALUES (17, 1, '2018001', '2018001', '70548d6e6f9c0ee214cf78f0fa7be649', '8a6b37', 1, '2022-03-12 14:46:19', NULL, NULL, NULL);
INSERT INTO `user` VALUES (18, 1, '201801201214', '贾金锐', 'f9dbcc47ce9182d818ab9b3cd5f0a0ca', '656ec4', 1, '2022-03-14 14:12:25', '2022-05-17 09:34:50', '192.168.179.127', 'F8-63-3F-DE-71-82');
INSERT INTO `user` VALUES (19, 1, '201801201213', '加昌', 'f63c6c251779450a7d300d56ff2060cc', '23e9fc', 1, '2022-03-14 23:17:45', NULL, NULL, NULL);
INSERT INTO `user` VALUES (20, 1, '201801201215', '邝天豪', 'aabaf3d0a0769f7e5f5bd172eb22a753', '36e35e', 1, '2022-03-14 23:18:57', '2022-05-16 21:59:20', '192.168.1.123', 'F8-63-3F-DE-71-82');
INSERT INTO `user` VALUES (21, 1, '201801201216', '雷晨龙', '022f4d35e3b7d2287bf8df8b89edf15c', 'cf4012', 1, '2022-03-14 23:19:30', '2022-03-24 00:21:41', '192.168.1.126', NULL);
INSERT INTO `user` VALUES (22, 2, 'teacher', '教师', '7d679e47bba548b3b228f63d30a30889', '745ced', 1, '2022-03-14 23:23:03', '2022-03-24 00:54:41', '192.168.1.126', NULL);
INSERT INTO `user` VALUES (23, 1, '201801201217', '李璐旭', 'c74c5ba808b527ed8483f9561fdb40ff', '0f346d', 1, '2022-03-24 00:23:28', '2022-03-24 00:25:15', '192.168.1.126', NULL);
INSERT INTO `user` VALUES (24, 1, '201801201221', '刘剑', '315796b994d79778b8d5abefbad1be37', '1fdb8a', 1, '2022-04-29 16:06:02', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(12) NOT NULL,
  `role_id` int(12) NOT NULL DEFAULT 1 COMMENT '1学生 2教师 3超级管理员',
  `role_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menu_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主页的菜单信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, '学生', '[{\"topMenuName\":\"产品介绍\",\"topIcon\":\"el-icon-odometer\",\"url\":\"/dashboard\"},{\"topMenuName\":\"在线考试\",\"topIcon\":\"el-icon-menu\",\"submenu\":[{\"name\":\"在线考试\",\"icon\":\"el-icon-s-promotion\",\"url\":\"/examOnline\"},{\"name\":\"我的成绩\",\"icon\":\"el-icon-trophy\",\"url\":\"/myGrade\"},{\"name\":\"我的题库\",\"icon\":\"el-icon-notebook-2\",\"url\":\"/myQuestionBank\"}]}]');
INSERT INTO `user_role` VALUES (2, 2, '教师', '[{\"topMenuName\":\"产品介绍\",\"topIcon\":\"el-icon-odometer\",\"url\":\"/dashboard\"},{\"topMenuName\":\"考试管理\",\"topIcon\":\"el-icon-bangzhu\",\"submenu\":[{\"name\":\"题库管理\",\"icon\":\"el-icon-aim\",\"url\":\"/questionBankMange\"},{\"name\":\"试题管理\",\"icon\":\"el-icon-news\",\"url\":\"/questionManage\"},{\"name\":\"考试管理\",\"icon\":\"el-icon-tickets\",\"url\":\"/examManage\"},{\"name\":\"阅卷管理\",\"icon\":\"el-icon-view\",\"url\":\"/markManage\"}]},{\"topMenuName\":\"考试统计\",\"topIcon\":\"el-icon-pie-chart\",\"submenu\":[{\"name\":\"统计总览\",\"icon\":\"el-icon-data-line\",\"url\":\"/staticOverview\"}]}]');
INSERT INTO `user_role` VALUES (3, 3, '超级管理员', '[{\"topMenuName\":\"产品介绍\",\"topIcon\":\"el-icon-odometer\",\"url\":\"/dashboard\"},{\"topMenuName\":\"在线考试\",\"topIcon\":\"el-icon-menu\",\"submenu\":[{\"name\":\"在线考试\",\"icon\":\"el-icon-s-promotion\",\"url\":\"/examOnline\"},{\"name\":\"我的成绩\",\"icon\":\"el-icon-trophy\",\"url\":\"/myGrade\"},{\"name\":\"我的题库\",\"icon\":\"el-icon-notebook-2\",\"url\":\"/myQuestionBank\"}]},{\"topMenuName\":\"考试管理\",\"topIcon\":\"el-icon-bangzhu\",\"submenu\":[{\"name\":\"题库管理\",\"icon\":\"el-icon-aim\",\"url\":\"/questionBankMange\"},{\"name\":\"试题管理\",\"icon\":\"el-icon-news\",\"url\":\"/questionManage\"},{\"name\":\"考试管理\",\"icon\":\"el-icon-tickets\",\"url\":\"/examManage\"},{\"name\":\"阅卷管理\",\"icon\":\"el-icon-view\",\"url\":\"/markManage\"}]},{\"topMenuName\":\"考试统计\",\"topIcon\":\"el-icon-pie-chart\",\"submenu\":[{\"name\":\"统计总览\",\"icon\":\"el-icon-data-line\",\"url\":\"/staticOverview\"}]},{\"topMenuName\":\"系统设置\",\"topIcon\":\"el-icon-setting\",\"submenu\":[{\"name\":\"公告管理\",\"icon\":\"el-icon-bell\",\"url\":\"/noticeManage\"},{\"name\":\"角色管理\",\"icon\":\"el-icon-s-custom\",\"url\":\"/roleManage\"},{\"name\":\"用户管理\",\"icon\":\"el-icon-user-solid\",\"url\":\"/userManage\"}]}]');

SET FOREIGN_KEY_CHECKS = 1;
