/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.59.165
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 192.168.59.165:3307
 Source Schema         : springboot7iio7

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 11/05/2024 14:56:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2023-04-08 13:46:03', '关于我们', 'ABOUT US', '<h1>我们致力于为学生和企业提供服</h1><h1>务，做学生和企业之间的“桥</h1><h1>梁”。</h1><h1>如有需要就联系我们：</h1><h1>15761396530</h1><h1>join us：657175129@qq..com</h1>', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `number` int(0) NOT NULL COMMENT '序号',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `pid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '（岗位分类）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES (1, '1', 1, '1', '1');
INSERT INTO `classification` VALUES (2, '软件开发', 1, '软件和IT服务', NULL);
INSERT INTO `classification` VALUES (3, '市场营销', 2, '市场推广与销售', NULL);
INSERT INTO `classification` VALUES (4, '人力资源', 3, '员工管理与招聘', NULL);
INSERT INTO `classification` VALUES (5, 'IT支持', 4, '技术支持服务', NULL);
INSERT INTO `classification` VALUES (6, '财务分析', 5, '企业财务管理', NULL);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(0) NULL DEFAULT NULL COMMENT '关联表id',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `employment_id` int(0) NULL DEFAULT NULL,
  `student_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `employment_id`(`employment_id`) USING BTREE,
  INDEX `student_id`(`student_id`) USING BTREE,
  CONSTRAINT `employment_id` FOREIGN KEY (`employment_id`) REFERENCES `employments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1713408298965 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1713408298955, '2024-05-08 14:48:04', NULL, 16, 'upload/1714996760452.exe', '111', '111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298956, '2024-05-08 14:48:20', NULL, 16, 'upload/1714996760452.exe', '111', '111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298957, '2024-05-08 14:48:45', NULL, 16, 'upload/1714996760452.exe', '111', '1111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298958, '2024-05-08 14:57:21', NULL, 16, 'upload/1714996760452.exe', '111', '1111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298959, '2024-05-08 14:59:02', NULL, 16, 'upload/1714996760452.exe', '111', '111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298960, '2024-05-08 14:59:24', NULL, 16, 'upload/1714996760452.exe', '111', '1111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298961, '2024-05-08 15:12:31', NULL, 16, 'upload/1714996760452.exe', '111', '11', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298962, '2024-05-08 15:14:03', NULL, 16, 'upload/1714996760452.exe', '111', '111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298963, '2024-05-08 15:14:23', 5, 16, 'upload/1714996760452.exe', '111', '1111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298964, '2024-05-08 15:14:48', 5, 16, 'upload/1714996760452.exe', '111', '11111', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (1713408298965, '2024-05-08 15:14:52', 5, 16, 'upload/1714996760452.exe', '111', '111', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for consult
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(0) NOT NULL COMMENT '学生外键',
  `enterprise_id` int(0) NOT NULL COMMENT '企业外键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '咨询编号',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '咨询内容',
  `date` date NULL DEFAULT NULL COMMENT '咨询日期',
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `enterprise_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprise_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zixunbianhao`(`number`) USING BTREE,
  INDEX `FK4_student_id`(`student_id`) USING BTREE,
  INDEX `FK4_enterprise_id`(`enterprise_id`) USING BTREE,
  CONSTRAINT `consult_ibfk_1` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprises` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `consult_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线咨询' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consult
-- ----------------------------
INSERT INTO `consult` VALUES (1, 11, 5, '2024-04-02 17:46:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consult` VALUES (2, 11, 1, '2024-04-29 17:39:24', 'CN001', 'I would like to know more about your internship programs.', '2024-04-25', 'We offer several internship programs across different departments.', 'InnovateX', 'innovatex_accounts', 'alice_student', 'Alice');
INSERT INTO `consult` VALUES (3, 12, 2, '2024-04-29 17:39:24', 'CN002', 'Can you provide details about the work environment?', '2024-04-24', 'Our work environment is dynamic, inclusive, and geared towards fostering creativity.', 'TechPioneers', 'techpio_acc', 'bob_student', 'Bob');
INSERT INTO `consult` VALUES (4, 13, 1, '2024-04-29 17:39:24', 'CN003', 'What are the growth opportunities for new hires?', '2024-04-23', 'New hires can expect structured career progression through mentorship and ongoing training.', 'BuildRight', 'buildright_hr', 'carol_student', 'Carol');
INSERT INTO `consult` VALUES (5, 12, 4, '2024-04-29 17:39:24', 'CN004', 'Is there flexibility in work hours for interns?', '2024-04-22', 'Yes, we offer flexible work hours for interns to accommodate their academic commitments.', 'DesignWorks', 'designworks_hr', 'dave_student', 'Dave');
INSERT INTO `consult` VALUES (6, 11, 5, '2024-04-29 17:39:24', 'CN005', 'What are the main projects for the next quarter?', '2024-04-21', 'The main projects will focus on AI and machine learning applications in healthcare.', 'HealthTech Innovations', 'healthtech_hr', 'eve_student', 'Eve');
INSERT INTO `consult` VALUES (7, 11, 1, '2024-05-05 17:55:42', '1714902046651', '<p>1111111</p>', '2024-05-05', NULL, '企业A', 'ent001', '11111', 'ceshi');
INSERT INTO `consult` VALUES (8, 11, 1, '2024-05-06 20:05:50', '1714997107619', '<p>可以参加面试吗</p>', '2024-05-06', NULL, '腾讯', '222', '111', '马牛');
INSERT INTO `consult` VALUES (12, 11, 1, '2024-05-06 20:06:27', '1714997171489', '<p>可以参加面试吗</p>', '2024-05-06', NULL, '腾讯', '222', '111', '马牛');

-- ----------------------------
-- Table structure for deliverys
-- ----------------------------
DROP TABLE IF EXISTS `deliverys`;
CREATE TABLE `deliverys`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `employment_id` int(0) NOT NULL COMMENT '企业外键',
  `student_id` int(0) NOT NULL COMMENT '学生外键',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘名称',
  `postion_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `enterprise_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `enterprise_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `resume` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简历附件',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投递备注',
  `date` date NULL DEFAULT NULL COMMENT '投递日期',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '审核状态',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系手机',
  `accout` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `deliver_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投递手机号',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK1_student_id`(`student_id`) USING BTREE,
  INDEX `FK6_enterprise_id`(`employment_id`) USING BTREE,
  CONSTRAINT `deliverys_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `deliverys_ibfk_3` FOREIGN KEY (`employment_id`) REFERENCES `employments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投递信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deliverys
-- ----------------------------
INSERT INTO `deliverys` VALUES (3, 1, 12, '高级Java开发', '高级Java开发', 'enterpriseA', '企业A', '王小明的简历...', '非常期待加入贵公司', '2023-04-15', '', '待审核', '13700001111', 'enterpriseA', '王小明', '13700001111', 23, '硕士', '2023-04-15 08:30:00');
INSERT INTO `deliverys` VALUES (4, 2, 13, '市场总监助理', '市场总监助理', 'enterpriseB', '企业B', '李晓芳的简历...', '请查看附件简历', '2023-04-15', '', '待审核', '13700002222', 'enterpriseB', '李晓芳', '13700002222', 21, '本科', '2023-04-15 09:00:00');
INSERT INTO `deliverys` VALUES (5, 1, 11, '软件开发工程师', '高级软件工程师', 'ent001', '企业A', 'upload/1714901654997.doc', 'qqqq', '2024-05-05', NULL, '待审核', '1234567890', '11111', 'ceshi', '15789434568', 18, '初中', NULL);
INSERT INTO `deliverys` VALUES (6, 1, 11, '666', '666', '666', '66', 'upload/1714916926612.txt', '6', '2024-05-05', NULL, '待审核', '13984578826', '456', '马小跳', '13687956320', 29, '本科', NULL);
INSERT INTO `deliverys` VALUES (7, 1, 11, '2024校招', '职位名称1', '222', '腾讯', 'upload/1714997094360.txt', '应届生', '2024-05-06', NULL, '是', '16654896322', '111', '马牛', '16598632010', 28, '本科', NULL);
INSERT INTO `deliverys` VALUES (8, 1, 11, '软件开发工程师', '高级软件工程师', 'ent001', '企业A', '', '', '2024-05-07', NULL, '待审核', '1234567890', '', '马小跳', '13687956320', 29, '本科', NULL);
INSERT INTO `deliverys` VALUES (9, 1, 11, '2024校招', '职位名称1', '222', '腾讯', '', '', '2024-05-07', NULL, '是', '16654896322', '', '马小跳', '13687956320', 29, '本科', NULL);

-- ----------------------------
-- Table structure for employments
-- ----------------------------
DROP TABLE IF EXISTS `employments`;
CREATE TABLE `employments`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `enterprise_id` int(0) NOT NULL COMMENT '企业外键',
  `enterprise_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业名称',
  `enterprise_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业账号',
  `job_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '招聘图片',
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '招聘名称',
  `postion_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位名称',
  `classification_id` int(0) NOT NULL COMMENT '分类外键',
  `recruit_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '招聘内容',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '招聘简介',
  `requirement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位要求',
  `salary` decimal(10, 2) NULL DEFAULT NULL COMMENT '薪资待遇',
  `publish_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '发布时间',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '招聘人数',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '招聘状态',
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作地点',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系手机',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK1_enterprise_id`(`enterprise_id`) USING BTREE,
  INDEX `FK_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `employments_ibfk_2` FOREIGN KEY (`classification_id`) REFERENCES `classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `employments_ibfk_3` FOREIGN KEY (`enterprise_id`) REFERENCES `employments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '（招聘信息）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employments
-- ----------------------------
INSERT INTO `employments` VALUES (1, 1, NULL, NULL, 'upload/zhaopinxinxi_zhaopintupian1.jpg,upload/zhaopinxinxi_zhaopintupian2.jpg,upload/zhaopinxinxi_zhaopintupian3.jpg', NULL, NULL, 1, NULL, 'xxxxxx', 'xxxxx', 222.00, '2024-04-27 09:14:20', '1', '1', 'xxxx', NULL, '2024-05-07 16:57:00', NULL);
INSERT INTO `employments` VALUES (2, 1, '企业A', 'ent001', 'upload/zhaopinxinxi_zhaopintupian1.jpg,upload/zhaopinxinxi_zhaopintupian2.jpg,upload/zhaopinxinxi_zhaopintupian3.jpg', '软件开发工程师', '高级软件工程师', 1, '加入我们的开发团队，面向未来', '快速发展的科技公司', '具备5年以上开发经验，精通Java', 25000.00, '2024-05-10 22:43:19', '3', '招聘中', '上海', '2024-04-27 09:24:00', '2024-05-08 14:31:02', '1234567890');
INSERT INTO `employments` VALUES (3, 2, '企业B', 'ent002', 'upload/zhaopinxinxi_zhaopintupian3.jpg,upload/zhaopinxinxi_zhaopintupian4.jpg,upload/zhaopinxinxi_zhaopintupian5.jpg', '市场经理', '市场营销经理', 2, '寻找市场营销专家，扩大品牌影响力', '市场领先企业', '具有市场营销背景，优秀的沟通能力', 20000.00, '2024-05-10 22:43:20', '2', '招聘中', '北京', '2024-04-27 09:24:00', '2024-05-08 14:58:51', '1234567891');
INSERT INTO `employments` VALUES (4, 3, '企业C', 'ent003', 'upload/zhaopinxinxi_zhaopintupian4.jpg,upload/zhaopinxinxi_zhaopintupian5.jpg,upload/zhaopinxinxi_zhaopintupian6.jpg', '人力资源顾问', '人力资源主管', 3, '加入我们的HR团队，优化人才结构', '我们是一家全球公司', '具有相关工作经验，人际交往能力强', 18000.00, '2024-05-10 22:43:21', '1', '招聘中', '广州', '2024-04-27 09:24:00', '2024-05-06 09:59:21', '1234567892');
INSERT INTO `employments` VALUES (5, 4, '企业D', 'ent004', 'upload/zhaopinxinxi_zhaopintupian5.jpg,upload/zhaopinxinxi_zhaopintupian6.jpg,upload/zhaopinxinxi_zhaopintupian7.jpg', 'IT支持工程师', 'IT支持工程师', 4, 'IT支持岗位招聘，确保系统稳定运行', 'IT行业领导者', 'IT相关学历要求，应急处理能力', 15000.00, '2024-05-10 22:43:21', '5', '招聘中', '深圳', '2024-04-27 09:24:00', '2024-05-08 15:14:30', '1234567893');
INSERT INTO `employments` VALUES (6, 5, '企业E', 'ent005', 'upload/zhaopinxinxi_zhaopintupian5.jpg,upload/zhaopinxinxi_zhaopintupian6.jpg,upload/zhaopinxinxi_zhaopintupian8.jpg', '财务分析师', '财务分析师', 5, '招聘财务分析师，优化财务流程', '财务稳健的企业', '需财务分析经验，精通各种财务工具', 22000.00, '2024-05-10 22:43:23', '4', '招聘中', '南京', '2024-04-27 09:24:00', '2024-04-27 09:24:00', '1234567894');
INSERT INTO `employments` VALUES (7, 5, '测试企业', 'qiyezhanghao', 'upload/1714827697364.png', '1111', '职位名称1', 2, '<p>111111111</p>', '11111111', '111', 111.00, '2024-05-04 00:00:00', NULL, NULL, NULL, NULL, '2024-05-06 09:59:26', '11113223476');
INSERT INTO `employments` VALUES (8, 5, '华为', '123', 'upload/1714958030364.png', '1111', '职位名称1', 2, '<p data-sider-select-id=\"5d1d9ef9-4baf-4359-abf3-79782dd02f4f\">2222</p>', '11111', '11111', 11111.00, '2024-05-06 00:00:00', NULL, NULL, NULL, NULL, '2024-05-07 15:34:34', '13545663222');
INSERT INTO `employments` VALUES (9, 5, '腾讯', '222', 'upload/1714996843330.png', '2024校招', '职位名称1', 2, '<p>666</p>', '666', '2024应届生', 8000.00, '2024-05-10 22:43:12', '2', '招聘中', '北京', NULL, '2024-05-07 16:58:07', '16654896322');

-- ----------------------------
-- Table structure for enterprises
-- ----------------------------
DROP TABLE IF EXISTS `enterprises`;
CREATE TABLE `enterprises`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '企业账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业名称',
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业联系人',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业标志',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业简介',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业联系电话',
  `e_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '企业信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprises
-- ----------------------------
INSERT INTO `enterprises` VALUES (1, '1', '1', '1', '1', 'upload/qiye_yingyezhizhao5.jpg', '1', '1', '1', NULL, '男');
INSERT INTO `enterprises` VALUES (2, 'ent001', 'pass1234', '企业A', '张三', 'upload/qiye_yingyezhizhao1.jpg', '领先的技术解决方案提供商', '1234567890', 'contact@a.com', NULL, '男');
INSERT INTO `enterprises` VALUES (3, 'ent002', 'pass1234', '企业B', '李四', 'upload/qiye_yingyezhizhao2.jpg', '专注于市场营销的企业', '1234567891', 'contact@b.com', NULL, '男');
INSERT INTO `enterprises` VALUES (4, 'ent003', 'pass1234', '企业C', '王五', 'upload/qiye_yingyezhizhao3.jpg', '全球领先的HR服务', '1234567892', 'contact@c.com', NULL, '男');
INSERT INTO `enterprises` VALUES (5, 'ent004', 'pass1234', '企业D', '赵六', '/logos/logo4.png', 'IT支持和服务', '1234567893', 'contact@d.com', NULL, '男');
INSERT INTO `enterprises` VALUES (6, 'ent005', 'pass1234', '企业E', '钱七', 'upload/qiye_yingyezhizhao4.jpg', '专业的财务分析服务', '1234567894', 'contact@e.com', NULL, '男');
INSERT INTO `enterprises` VALUES (7, 'qiyezhanghao', 'e10adc3949ba59abbe56e057f20f883e', '测试企业', '测试人', 'upload/1714825860532.png', NULL, '11113223476', '11111111@qq.com', NULL, '男');
INSERT INTO `enterprises` VALUES (8, '123', '202cb962ac59075b964b07152d234b70', '华为', '任正非', 'upload/1714916657627.exe', NULL, '13545663222', '6571266@qq.com', NULL, '男');
INSERT INTO `enterprises` VALUES (9, '222', 'bcbe3365e6ac95ea2c0343a2395834dd', '腾讯', '马化腾', NULL, NULL, '16654896322', '6574216662@qq.com', NULL, '男');

-- ----------------------------
-- Table structure for informs
-- ----------------------------
DROP TABLE IF EXISTS `informs`;
CREATE TABLE `informs`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知名称',
  `salary` decimal(10, 2) NULL DEFAULT NULL COMMENT '薪资待遇',
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地点',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '通知内容',
  `data` date NULL DEFAULT NULL COMMENT '通知日期',
  `details` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `addtime` datetime(0) NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprise_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprse_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deliverys_id` int(0) NULL DEFAULT NULL,
  `interviewtime` datetime(0) NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `informs_ibfk_1`(`deliverys_id`) USING BTREE,
  CONSTRAINT `informs_ibfk_1` FOREIGN KEY (`deliverys_id`) REFERENCES `deliverys` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of informs
-- ----------------------------
INSERT INTO `informs` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (2, 'Software Internship Offer', 3500.00, 'Beijing', 'We are pleased to offer you an internship position...', '2024-04-01', 'I accept the offer. Looking forward to joining.', '2024-04-29 08:30:00', 'alice2024', 'Alice', 'Tech Innovations', 'tech_inno123', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (3, 'Project Assistant Role', 4500.50, 'Shanghai', 'Join our project team to work on cutting-edge technology projects...', '2024-03-15', 'I will need to discuss this further.', '2024-04-29 09:00:00', 'bob2024', 'Bob', 'Creative Solutions', 'creativesol_456', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (4, 'Graduate Trainee Program', 3000.00, 'Guangzhou', 'Our graduate trainee program is designed to give fresh graduates...', '2024-01-20', 'Thank you for the opportunity, I accept.', '2024-04-29 10:00:00', 'carol2024', 'Carol', 'Enterprise Builders', 'entbuild789', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (5, 'Research Analyst Position', 5500.75, 'Shenzhen', 'We are looking for a Research Analyst to dive deep into market trends...', '2024-02-28', 'Unfortunately, I have to decline as I accepted another offer.', '2024-04-29 11:00:00', 'dave2024', 'Dave', 'Market Research Inc.', 'market_inc1234', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (6, 'Data Scientist Opportunity', 6000.00, 'Nanjing', 'We offer a position for a Data Scientist willing to work on big data projects...', '2024-02-10', 'I am excited to join your team!', '2024-04-29 12:00:00', 'eve2024', 'Eve', 'Data Analytics Corp.', 'data_analytix987', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (7, 'Software Internship Offer', 3500.00, 'Beijing', 'We are pleased to offer you an internship position...', '2024-04-01', 'I accept the offer. Looking forward to joining.', '2024-04-29 08:30:00', 'alice2024', 'Alice', 'Tech Innovations', 'tech_inno123', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (8, 'Project Assistant Role', 4500.50, 'Shanghai', 'Join our project team to work on cutting-edge technology projects...', '2024-03-15', 'I will need to discuss this further.', '2024-04-29 09:00:00', 'bob2024', 'Bob', 'Creative Solutions', 'creativesol_456', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (9, 'Graduate Trainee Program', 3000.00, 'Guangzhou', 'Our graduate trainee program is designed to give fresh graduates...', '2024-01-20', 'Thank you for the opportunity, I accept.', '2024-04-29 10:00:00', 'carol2024', 'Carol', 'Enterprise Builders', 'entbuild789', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (10, 'Research Analyst Position', 5500.75, 'Shenzhen', 'We are looking for a Research Analyst to dive deep into market trends...', '2024-02-28', 'Unfortunately, I have to decline as I accepted another offer.', '2024-04-29 11:00:00', 'dave2024', 'Dave', 'Market Research Inc.', 'market_inc1234', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (11, 'Data Scientist Opportunity', 6000.00, 'Nanjing', 'We offer a position for a Data Scientist willing to work on big data projects...', '2024-02-10', 'I am excited to join your team!', '2024-04-29 12:00:00', 'eve2024', 'Eve', 'Data Analytics Corp.', 'data_analytix987', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (12, '1', NULL, NULL, '通过', '2024-05-06', '', NULL, '111', '马牛', '腾讯', '222', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (13, '面试通知', NULL, NULL, '通过，参加面试', '2024-05-06', '准时参加', NULL, '111', '马牛', '腾讯', '222', NULL, NULL, NULL, NULL);
INSERT INTO `informs` VALUES (14, '通知111', 1000.00, '测试', '面试', '2024-05-07', '', NULL, '', '马小跳', '腾讯', '222', NULL, '2024-05-10 23:01:12', '通过', '拒绝');

-- ----------------------------
-- Table structure for interviews
-- ----------------------------
DROP TABLE IF EXISTS `interviews`;
CREATE TABLE `interviews`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `employment_id` int(0) NOT NULL COMMENT '企业外键',
  `interview_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '面试时间',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '详细内容',
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '面试结果',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生回复内容',
  `addtime` datetime(0) NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enterprise_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业账号',
  `enterprise_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `connect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系手机',
  `search_id` int(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `search_id`(`search_id`) USING BTREE,
  INDEX `employment_id`(`employment_id`) USING BTREE,
  CONSTRAINT `interviews_ibfk_1` FOREIGN KEY (`search_id`) REFERENCES `search` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `interviews_ibfk_2` FOREIGN KEY (`employment_id`) REFERENCES `employments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '招聘意愿' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interviews
-- ----------------------------
INSERT INTO `interviews` VALUES (1, 1, '2023-04-20 14:00:00', 'Discuss role responsibilities.', 'Pending', 'Looking forward to your feedback', '2023-04-10 08:30:00', 'stu001', 'John Doe', '1234567890', 'ent001', 'Enterprise A', '1234567890', 7, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (2, 2, '2023-04-21 15:00:00', 'Review project requirements.', 'Accepted', 'Thank you for the opportunity', '2023-04-11 09:00:00', 'stu002', 'Jane Smith', '0987654321', 'ent002', 'Enterprise B', '0987654321', 8, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (3, 3, '2023-04-22 16:00:00', 'Discuss salary and benefits.', 'Rejected', 'Thank you for considering me', '2023-04-12 10:00:00', 'stu003', 'Alice Johnson', '1122334455', 'ent003', 'Enterprise C', '1122334455', 9, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (4, 4, '2023-04-23 17:00:00', 'Technical interview on software development.', 'Pending', 'Please let me know the next steps', '2023-04-13 11:00:00', 'stu004', 'Bob Brown', '2233445566', 'ent004', 'Enterprise D', '2233445566', 10, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (5, 5, '2023-04-24 00:00:00', 'Discuss team collaboration methods.', 'Accepted', 'Excited about this role', '2023-04-14 12:00:00', 'stu005', 'Carol White', '3344556677', 'ent005', 'Enterprise E', '3344556677', 11, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (6, 2, NULL, '', NULL, '', NULL, 'eve2024', 'Eve', '5678901234', '123', '华为', '13545663222', NULL, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (7, 2, NULL, '', NULL, '', NULL, 'eve2024', 'Eve', '5678901234', '123', '华为', '13545663222', NULL, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (8, 2, '2024-05-06 00:00:00', '通过筛选，邀请面试', NULL, '收到，准时参加', NULL, '111', '马牛', '16598632010', '222', '腾讯', '16654896322', NULL, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (9, 2, NULL, '', NULL, '', NULL, '111', '马牛', '16598632010', '222', '腾讯', '16654896322', NULL, NULL, NULL, NULL);
INSERT INTO `interviews` VALUES (10, 2, '2024-05-11 09:42:19', '', NULL, '', NULL, 'eve2024', 'Eve', '5678901234', '222', '腾讯', '16654896322', NULL, '通过', '20000', '地点');

-- ----------------------------
-- Table structure for managers
-- ----------------------------
DROP TABLE IF EXISTS `managers`;
CREATE TABLE `managers`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of managers
-- ----------------------------
INSERT INTO `managers` VALUES (1, 'admin', 'admin', '管理员', '2023-04-08 13:46:03');

-- ----------------------------
-- Table structure for offers
-- ----------------------------
DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `offer_time` timestamp(0) NULL DEFAULT NULL COMMENT '通知时间',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '通知内容',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  `inform_id` int(0) NULL DEFAULT NULL,
  `interview_id` int(0) NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enterprise_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enterprsie_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `apply_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `offer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `inform_id`(`inform_id`) USING BTREE,
  INDEX `interview_id`(`interview_id`) USING BTREE,
  CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`inform_id`) REFERENCES `informs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `offers_ibfk_2` FOREIGN KEY (`interview_id`) REFERENCES `interviews` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of offers
-- ----------------------------
INSERT INTO `offers` VALUES (1, '2024-05-04 00:00:00', '111111', NULL, NULL, NULL, '1111', '11111', '测试企业', 'qiyezhanghao', '11111111', '11113223476', '', NULL);
INSERT INTO `offers` VALUES (2, '2024-05-06 00:00:00', '1245864676', NULL, NULL, NULL, '111', '马牛', '腾讯', '222', '1245864676', '16654896322', '接受', NULL);
INSERT INTO `offers` VALUES (3, '2024-05-06 00:00:00', '21486486466', NULL, NULL, NULL, '11', '马牛', '腾讯', '222', '21486486466', '16654896322', '拒绝', NULL);
INSERT INTO `offers` VALUES (4, NULL, '', NULL, NULL, NULL, '', '', '腾讯', '222', '', '16654896322', '', NULL);
INSERT INTO `offers` VALUES (5, NULL, NULL, NULL, NULL, NULL, '', '马小跳', '腾讯', '222', NULL, '16654896322', '', NULL);
INSERT INTO `offers` VALUES (6, '2024-05-08 00:00:00', '111', NULL, NULL, NULL, '111', '马牛', '腾讯', '222', '16598632010', '16654896322', '', NULL);
INSERT INTO `offers` VALUES (7, NULL, '', NULL, NULL, NULL, '111', '马牛', '腾讯', '222', '16598632010', '16654896322', '', NULL);
INSERT INTO `offers` VALUES (8, '2024-05-06 00:00:00', '通过筛选，邀请面试', NULL, NULL, NULL, '111', '马牛', '腾讯', '222', '16598632010', '16654896322', '收到，准时参加', NULL);
INSERT INTO `offers` VALUES (9, '2024-05-06 00:00:00', '通过筛选，邀请面试', NULL, NULL, NULL, '111', '马牛', '腾讯', '222', '16598632010', '16654896322', '收到，准时参加', '1');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `position_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职位名称' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (41, '2023-04-08 13:46:03', '职位名称1');
INSERT INTO `position` VALUES (42, '2023-04-08 13:46:03', '职位名称2');
INSERT INTO `position` VALUES (43, '2023-04-08 13:46:03', '职位名称3');
INSERT INTO `position` VALUES (44, '2023-04-08 13:46:03', '职位名称4');
INSERT INTO `position` VALUES (45, '2023-04-08 13:46:03', '职位名称5');
INSERT INTO `position` VALUES (46, '2023-04-08 13:46:03', '职位名称6');
INSERT INTO `position` VALUES (47, '2023-04-08 13:46:03', '职位名称7');
INSERT INTO `position` VALUES (48, '2023-04-08 13:46:03', '职位名称8');

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(0) NOT NULL COMMENT '学生外键',
  `classification_id` int(0) NOT NULL COMMENT '岗位分类外键',
  `salary` decimal(10, 2) NULL DEFAULT NULL COMMENT '期望薪资',
  `resume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简历附件',
  `publish_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '发布时间',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '求职状态',
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '期望工作地点',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `avator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头想',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历',
  `gra_schcool` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `work_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作经历',
  `skill` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '技能',
  `work_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '求职状态',
  `find_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '寻找职位',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK5_student_id`(`student_id`) USING BTREE,
  INDEX `FK2_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `search_ibfk_1` FOREIGN KEY (`classification_id`) REFERENCES `classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `search_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '（求职信息）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES (7, 11, 1, 5000.00, 'resume_1.pdf', '2024-04-20 14:30:00', 'active', 'Shanghai', '2024-04-20 08:00:00', 'alice2024', 'Alice', 'female', '1234567890', 'avatar_1.jpg', 24, 'Bachelor', 'Shanghai University', '2 years in marketing', 'Data analysis', 'Looking', 'Marketing Specialist');
INSERT INTO `search` VALUES (8, 12, 2, 7000.00, 'resume_2.pdf', '2024-04-21 15:00:00', 'active', 'Beijing', '2024-04-21 09:00:00', 'bob2024', 'Bob', 'male', '2345678901', 'avatar_2.jpg', 26, 'Master', 'Beijing University', '3 years in software development', 'Java, Python', 'Looking', 'Software Developer');
INSERT INTO `search` VALUES (9, 13, 3, 8000.00, 'resume_3.pdf', '2024-04-22 16:00:00', 'active', 'Guangzhou', '2024-04-22 10:00:00', 'carol2024', 'Carol', 'female', '3456789012', 'avatar_3.jpg', 28, 'Master', 'Guangzhou University', '4 years in financial analysis', 'Financial modeling', 'Looking', 'Financial Analyst');
INSERT INTO `search` VALUES (10, 13, 4, 6000.00, 'resume_4.pdf', '2024-04-23 17:00:00', 'active', 'Shenzhen', '2024-04-23 11:00:00', 'dave2024', 'Dave', 'male', '4567890123', 'avatar_4.jpg', 22, 'Bachelor', 'Shenzhen University', '1 year in sales', 'Negotiation, Sales skills', 'Looking', 'Sales Executive');
INSERT INTO `search` VALUES (11, 12, 5, 5500.00, 'resume_5.pdf', '2024-04-24 18:00:00', 'active', 'Chengdu', '2024-04-24 12:00:00', 'eve2024', 'Eve', 'female', '5678901234', 'avatar_5.jpg', 23, 'Bachelor', 'Chengdu University', 'Internship in project management', 'Project management, Organization', 'Looking', 'Project Manager');
INSERT INTO `search` VALUES (12, 11, 2, 1.00, 'upload/1714961503611.doc', '2024-05-06 00:00:00', NULL, '111', NULL, '111', '马小跳', '男', '13687956320', '', 29, '本科', '111', '111', '1111', '111', '职位名称1');
INSERT INTO `search` VALUES (13, 11, 2, 6666.00, 'upload/1714997419823.txt', '2024-05-11 00:00:00', NULL, '北京', NULL, '111', '马牛', '男', '16598632010', 'upload/1714996760452.exe', 28, '本科', '北京大学', '6', '打篮球', '看看机会', '职位名称1');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `refid` bigint(0) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1713408277018 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1713408059280, '2024-04-18 10:40:58', 1713370107593, 1713403238761, 'zhaopinxinxi', '普联软件股份有限公司', 'upload/1713402725253.jpg', '1', NULL, NULL);
INSERT INTO `storeup` VALUES (1713408277018, '2024-04-18 10:44:36', 1713370107593, 1713403828158, 'zhaopinxinxi', '普联软件股份有限公司', 'upload/1713403254561.jpg', '1', NULL, NULL);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历',
  `e_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (11, '账号1', 'e10adc3949ba59abbe56e057f20f883e', '姓名1', '男', 18, '11111111111', 'upload/xuesheng_touxiang1.jpg', '初中', 'xxx', NULL);
INSERT INTO `students` VALUES (12, 'S1001', 'password1', '王小明', 'M', 23, '13700001111', 'upload/xuesheng_touxiang2.jpg', '硕士', 'wangxiaoming@example.com', NULL);
INSERT INTO `students` VALUES (13, 'S1002', 'password2', '李晓芳', 'F', 21, '13700002222', 'upload/xuesheng_touxiang3.jpg', '本科', 'lixiaofang@example.com', NULL);
INSERT INTO `students` VALUES (14, 'ceshixuesheng', 'e10adc3949ba59abbe56e057f20f883e', 'ceshi', '男', 18, '15789434568', 'upload/1714900161135.png', '初中', NULL, NULL);
INSERT INTO `students` VALUES (15, '456', '250cf8b51c773f3f8dc8b4be867a9a02', '马小跳', '男', 29, '13687956320', NULL, '本科', NULL, NULL);
INSERT INTO `students` VALUES (16, '111', '698d51a19d8a121ce581499d7b701668', '马牛', '男', 28, '16598632010', 'upload/1714996760452.exe', '本科', NULL, NULL);

-- ----------------------------
-- Table structure for systemintro
-- ----------------------------
DROP TABLE IF EXISTS `systemintro`;
CREATE TABLE `systemintro`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of systemintro
-- ----------------------------
INSERT INTO `systemintro` VALUES (1, '2023-04-08 13:46:03', '系统简介', 'SYSTEM INTRODUCTION', '<p>本系统包括以下功能：</p><p>1. 学生注册和简历上传：学生可以在系统中注册账号，并上传个人简历和求职意向。</p><p>2. 招聘信息发布：企业可以在系统中发布招聘信息，包括职位描述、薪资待遇、工作地点等信息。</p><p>3. 求职搜索和匹配：学生可以通过系统搜索筛选符合自己需求的工作机会。</p><p>4. 在线申请和面试安排：学生可以在系统中直接在线申请感兴趣的职位，企业在收到申请后会协助安排面试。</p><p>5. 企业管理：企业可以通过系统管理招聘信息、查看应聘者简历、安排面试等。</p><p><br></p>', 'upload/systemintro_picture1.jpg', 'upload/systemintro_picture2.jpg', 'upload/systemintro_picture3.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'h3elbg5zxqspxq68gyllckpa5g7b2wnf', '2024-04-16 22:22:56', '2024-05-11 12:03:17');
INSERT INTO `token` VALUES (2, 11, '账号1', 'xuesheng', '学生', 'qsiursin4zlavu1gk0vpl3xvh2zlha0b', '2024-04-16 22:50:16', '2024-05-03 16:54:56');
INSERT INTO `token` VALUES (3, 21, '企业账号1', 'qiye', '企业', 'm1uco565a316i0b4edvwvel4cicw48gi', '2024-04-16 23:12:16', '2024-04-17 00:25:05');
INSERT INTO `token` VALUES (4, 1713370107593, '123', 'xuesheng', '学生', 'd09mccu6za732oqtgzj5s8c1zowlhx7t', '2024-04-18 00:10:06', '2024-04-26 10:49:02');
INSERT INTO `token` VALUES (5, 1713370148978, '456', 'qiye', '企业', 'tyvxawofhrxueoe4xfjxm0g5t3lo5pt7', '2024-04-18 09:10:37', '2024-04-26 12:09:23');
INSERT INTO `token` VALUES (6, 1713404245999, '789', 'qiye', '企业', 'rbadzztfe4blzbwyozfcbfx7nz9ocblq', '2024-04-18 09:37:32', '2024-04-19 20:03:55');
INSERT INTO `token` VALUES (7, 1713404856789, '111', 'qiye', '企业', '582mtfxa4l9pekqejp34zmq0ozztnxdq', '2024-04-18 09:47:40', '2024-04-18 11:11:38');
INSERT INTO `token` VALUES (8, 1713406596114, '222', 'xuesheng', '学生', '46gpi3niviy8gz8tjw74n2ejcyd7tfbt', '2024-04-18 10:16:41', '2024-04-18 23:47:18');
INSERT INTO `token` VALUES (9, 1713406849457, '333', 'qiye', '企业', 'f9469hpl0r7ctw5i3sthqxoz7yf12v2a', '2024-04-18 10:20:59', '2024-04-18 21:10:01');
INSERT INTO `token` VALUES (10, 7, 'qiyezhanghao', 'qiye', '企业', '2l7ntmyce2c0hxco2fv89lymyq5u02vv', '2024-05-04 20:45:57', '2024-05-05 18:08:24');
INSERT INTO `token` VALUES (11, 14, 'ceshixuesheng', 'student', '学生', 't8i1f3wbixs4h6bfux13e2uyjs5rn75g', '2024-05-05 17:32:51', '2024-05-05 18:33:38');
INSERT INTO `token` VALUES (12, 8, '123', 'qiye', '企业', 'xqvcrlwrcq5pj7mfbzzrb0zo97bssgze', '2024-05-05 21:45:18', '2024-05-10 23:26:14');
INSERT INTO `token` VALUES (13, 15, '456', 'student', '学生', 'ww72u1h699sj2724g3wd4hzc08veh117', '2024-05-05 21:47:12', '2024-05-08 22:15:54');
INSERT INTO `token` VALUES (14, 9, '222', 'qiye', '企业', 'iz5go2f2emzjt7h8kqhe8wijifz5faci', '2024-05-06 20:00:14', '2024-05-11 11:02:18');
INSERT INTO `token` VALUES (15, 16, '111', 'student', '学生', 'e8nearpyf12od5kc6dpm8tquhsgpwnnv', '2024-05-06 20:04:12', '2024-05-11 12:03:29');

SET FOREIGN_KEY_CHECKS = 1;
