-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot7iio7
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot7iio7`
--

/*!40000 DROP DATABASE IF EXISTS `springboot7iio7`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot7iio7` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot7iio7`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-04-08 05:46:03','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaopinxinxi`
--

DROP TABLE IF EXISTS `discusszhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaopinxinxi`
--

LOCK TABLES `discusszhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discusszhaopinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusszhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiuzhixinxi`
--

DROP TABLE IF EXISTS `qiuzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiuzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` longtext COMMENT '头像',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `biyexuexiao` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `gongzuojingli` longtext COMMENT '工作经历',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
    `qzzt` varchar(200) DEFAULT NULL COMMENT '求职状态',
  `gzdd` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `jianlifujian` longtext COMMENT '简历附件',
  `xunzhaozhiwei` varchar(200) NOT NULL COMMENT '寻找职位',
  `daiyuxinchou` varchar(200) DEFAULT NULL COMMENT '待遇薪酬',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='求职信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiuzhixinxi`
--

LOCK TABLES `qiuzhixinxi` WRITE;
/*!40000 ALTER TABLE `qiuzhixinxi` DISABLE KEYS */;
INSERT INTO `qiuzhixinxi` VALUES (51,'2023-04-08 05:46:03','账号1','姓名1','性别1','手机号码1','upload/qiuzhixinxi_touxiang1.jpg,upload/qiuzhixinxi_touxiang2.jpg,upload/qiuzhixinxi_touxiang3.jpg',1,'学历1','毕业学校1','工作经历1','擅长1','','寻找职位1','待遇薪酬1','2023-04-08'),(52,'2023-04-08 05:46:03','账号2','姓名2','性别2','手机号码2','upload/qiuzhixinxi_touxiang2.jpg,upload/qiuzhixinxi_touxiang3.jpg,upload/qiuzhixinxi_touxiang4.jpg',2,'学历2','毕业学校2','工作经历2','擅长2','','寻找职位2','待遇薪酬2','2023-04-08'),(53,'2023-04-08 05:46:03','账号3','姓名3','性别3','手机号码3','upload/qiuzhixinxi_touxiang3.jpg,upload/qiuzhixinxi_touxiang4.jpg,upload/qiuzhixinxi_touxiang5.jpg',3,'学历3','毕业学校3','工作经历3','擅长3','','寻找职位3','待遇薪酬3','2023-04-08'),(54,'2023-04-08 05:46:03','账号4','姓名4','性别4','手机号码4','upload/qiuzhixinxi_touxiang4.jpg,upload/qiuzhixinxi_touxiang5.jpg,upload/qiuzhixinxi_touxiang6.jpg',4,'学历4','毕业学校4','工作经历4','擅长4','','寻找职位4','待遇薪酬4','2023-04-08'),(55,'2023-04-08 05:46:03','账号5','姓名5','性别5','手机号码5','upload/qiuzhixinxi_touxiang5.jpg,upload/qiuzhixinxi_touxiang6.jpg,upload/qiuzhixinxi_touxiang7.jpg',5,'学历5','毕业学校5','工作经历5','擅长5','','寻找职位5','待遇薪酬5','2023-04-08'),(56,'2023-04-08 05:46:03','账号6','姓名6','性别6','手机号码6','upload/qiuzhixinxi_touxiang6.jpg,upload/qiuzhixinxi_touxiang7.jpg,upload/qiuzhixinxi_touxiang8.jpg',6,'学历6','毕业学校6','工作经历6','擅长6','','寻找职位6','待遇薪酬6','2023-04-08'),(57,'2023-04-08 05:46:03','账号7','姓名7','性别7','手机号码7','upload/qiuzhixinxi_touxiang7.jpg,upload/qiuzhixinxi_touxiang8.jpg,upload/qiuzhixinxi_touxiang9.jpg',7,'学历7','毕业学校7','工作经历7','擅长7','','寻找职位7','待遇薪酬7','2023-04-08'),(58,'2023-04-08 05:46:03','账号8','姓名8','性别8','手机号码8','upload/qiuzhixinxi_touxiang8.jpg,upload/qiuzhixinxi_touxiang9.jpg,upload/qiuzhixinxi_touxiang10.jpg',8,'学历8','毕业学校8','工作经历8','擅长8','','寻找职位8','待遇薪酬8','2023-04-08');
/*!40000 ALTER TABLE `qiuzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `yingyezhizhao` longtext COMMENT '营业执照',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2023-04-08 05:46:03','企业账号1','e10adc3949ba59abbe56e057f20f883e','企业名称1','负责人1','男','773890001@qq.com','13823888881','upload/qiye_yingyezhizhao1.jpg'),(22,'2023-04-08 05:46:03','企业账号2','e10adc3949ba59abbe56e057f20f883e','企业名称2','负责人2','男','773890002@qq.com','13823888882','upload/qiye_yingyezhizhao2.jpg'),(23,'2023-04-08 05:46:03','企业账号3','e10adc3949ba59abbe56e057f20f883e','企业名称3','负责人3','男','773890003@qq.com','13823888883','upload/qiye_yingyezhizhao3.jpg'),(24,'2023-04-08 05:46:03','企业账号4','e10adc3949ba59abbe56e057f20f883e','企业名称4','负责人4','男','773890004@qq.com','13823888884','upload/qiye_yingyezhizhao4.jpg'),(25,'2023-04-08 05:46:03','企业账号5','e10adc3949ba59abbe56e057f20f883e','企业名称5','负责人5','男','773890005@qq.com','13823888885','upload/qiye_yingyezhizhao5.jpg'),(26,'2023-04-08 05:46:03','企业账号6','e10adc3949ba59abbe56e057f20f883e','企业名称6','负责人6','男','773890006@qq.com','13823888886','upload/qiye_yingyezhizhao6.jpg'),(27,'2023-04-08 05:46:03','企业账号7','e10adc3949ba59abbe56e057f20f883e','企业名称7','负责人7','男','773890007@qq.com','13823888887','upload/qiye_yingyezhizhao7.jpg'),(28,'2023-04-08 05:46:03','企业账号8','e10adc3949ba59abbe56e057f20f883e','企业名称8','负责人8','男','773890008@qq.com','13823888888','upload/qiye_yingyezhizhao8.jpg');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-04-08 05:46:03','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhixinxi`
--

DROP TABLE IF EXISTS `tongzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongzhimingcheng` varchar(200) NOT NULL COMMENT '通知名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tongzhineirong` longtext COMMENT '通知内容',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `tongzhiriqi` date DEFAULT NULL COMMENT '通知日期',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='通知信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhixinxi`
--

LOCK TABLES `tongzhixinxi` WRITE;
/*!40000 ALTER TABLE `tongzhixinxi` DISABLE KEYS */;
INSERT INTO `tongzhixinxi` VALUES (81,'2023-04-08 05:46:03','通知名称1','账号1','姓名1','通知内容1','企业账号1','企业名称1','2023-04-08',''),(82,'2023-04-08 05:46:03','通知名称2','账号2','姓名2','通知内容2','企业账号2','企业名称2','2023-04-08',''),(83,'2023-04-08 05:46:03','通知名称3','账号3','姓名3','通知内容3','企业账号3','企业名称3','2023-04-08',''),(84,'2023-04-08 05:46:03','通知名称4','账号4','姓名4','通知内容4','企业账号4','企业名称4','2023-04-08',''),(85,'2023-04-08 05:46:03','通知名称5','账号5','姓名5','通知内容5','企业账号5','企业名称5','2023-04-08',''),(86,'2023-04-08 05:46:03','通知名称6','账号6','姓名6','通知内容6','企业账号6','企业名称6','2023-04-08',''),(87,'2023-04-08 05:46:03','通知名称7','账号7','姓名7','通知内容7','企业账号7','企业名称7','2023-04-08',''),(88,'2023-04-08 05:46:03','通知名称8','账号8','姓名8','通知内容8','企业账号8','企业名称8','2023-04-08','');
/*!40000 ALTER TABLE `tongzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toudixinxi`
--

DROP TABLE IF EXISTS `toudixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toudixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '招聘名称',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jianlifujian` longtext COMMENT '简历附件',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xueli` varchar(200) NOT NULL COMMENT '学历',
  `toudibeizhu` varchar(200) DEFAULT NULL COMMENT '投递备注',
  `toudiriqi` date DEFAULT NULL COMMENT '投递日期',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='投递信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toudixinxi`
--

LOCK TABLES `toudixinxi` WRITE;
/*!40000 ALTER TABLE `toudixinxi` DISABLE KEYS */;
INSERT INTO `toudixinxi` VALUES (61,'2023-04-08 05:46:03','招聘名称1','职位名称1','企业账号1','企业名称1','联系手机1','账号1','姓名1','手机号码1','',1,'学历1','投递备注1','2023-04-08','是',''),(62,'2023-04-08 05:46:03','招聘名称2','职位名称2','企业账号2','企业名称2','联系手机2','账号2','姓名2','手机号码2','',2,'学历2','投递备注2','2023-04-08','是',''),(63,'2023-04-08 05:46:03','招聘名称3','职位名称3','企业账号3','企业名称3','联系手机3','账号3','姓名3','手机号码3','',3,'学历3','投递备注3','2023-04-08','是',''),(64,'2023-04-08 05:46:03','招聘名称4','职位名称4','企业账号4','企业名称4','联系手机4','账号4','姓名4','手机号码4','',4,'学历4','投递备注4','2023-04-08','是',''),(65,'2023-04-08 05:46:03','招聘名称5','职位名称5','企业账号5','企业名称5','联系手机5','账号5','姓名5','手机号码5','',5,'学历5','投递备注5','2023-04-08','是',''),(66,'2023-04-08 05:46:03','招聘名称6','职位名称6','企业账号6','企业名称6','联系手机6','账号6','姓名6','手机号码6','',6,'学历6','投递备注6','2023-04-08','是',''),(67,'2023-04-08 05:46:03','招聘名称7','职位名称7','企业账号7','企业名称7','联系手机7','账号7','姓名7','手机号码7','',7,'学历7','投递备注7','2023-04-08','是',''),(68,'2023-04-08 05:46:03','招聘名称8','职位名称8','企业账号8','企业名称8','联系手机8','账号8','姓名8','手机号码8','',8,'学历8','投递备注8','2023-04-08','是','');
/*!40000 ALTER TABLE `toudixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-08 05:46:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-04-08 05:46:03','账号1','e10adc3949ba59abbe56e057f20f883e','姓名1','男',1,'13823888881','初中','upload/xuesheng_touxiang1.jpg'),(12,'2023-04-08 05:46:03','账号2','e10adc3949ba59abbe56e057f20f883e','姓名2','男',2,'13823888882','初中','upload/xuesheng_touxiang2.jpg'),(13,'2023-04-08 05:46:03','账号3','e10adc3949ba59abbe56e057f20f883e','姓名3','男',3,'13823888883','初中','upload/xuesheng_touxiang3.jpg'),(14,'2023-04-08 05:46:03','账号4','e10adc3949ba59abbe56e057f20f883e','姓名4','男',4,'13823888884','初中','upload/xuesheng_touxiang4.jpg'),(15,'2023-04-08 05:46:03','账号5','e10adc3949ba59abbe56e057f20f883e','姓名5','男',5,'13823888885','初中','upload/xuesheng_touxiang5.jpg'),(16,'2023-04-08 05:46:03','账号6','e10adc3949ba59abbe56e057f20f883e','姓名6','男',6,'13823888886','初中','upload/xuesheng_touxiang6.jpg'),(17,'2023-04-08 05:46:03','账号7','e10adc3949ba59abbe56e057f20f883e','姓名7','男',7,'13823888887','初中','upload/xuesheng_touxiang7.jpg'),(18,'2023-04-08 05:46:03','账号8','e10adc3949ba59abbe56e057f20f883e','姓名8','男',8,'13823888888','初中','upload/xuesheng_touxiang8.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianzixun`
--

DROP TABLE IF EXISTS `zaixianzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbianhao` varchar(200) DEFAULT NULL COMMENT '咨询编号',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zixunneirong` longtext COMMENT '咨询内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zixunriqi` date DEFAULT NULL COMMENT '咨询日期',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zixunbianhao` (`zixunbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianzixun`
--

LOCK TABLES `zaixianzixun` WRITE;
/*!40000 ALTER TABLE `zaixianzixun` DISABLE KEYS */;
INSERT INTO `zaixianzixun` VALUES (91,'2023-04-08 05:46:03','1111111111','企业账号1','企业名称1','咨询内容1','账号1','姓名1','2023-04-08',''),(92,'2023-04-08 05:46:03','2222222222','企业账号2','企业名称2','咨询内容2','账号2','姓名2','2023-04-08',''),(93,'2023-04-08 05:46:03','3333333333','企业账号3','企业名称3','咨询内容3','账号3','姓名3','2023-04-08',''),(94,'2023-04-08 05:46:03','4444444444','企业账号4','企业名称4','咨询内容4','账号4','姓名4','2023-04-08',''),(95,'2023-04-08 05:46:03','5555555555','企业账号5','企业名称5','咨询内容5','账号5','姓名5','2023-04-08',''),(96,'2023-04-08 05:46:03','6666666666','企业账号6','企业名称6','咨询内容6','账号6','姓名6','2023-04-08',''),(97,'2023-04-08 05:46:03','7777777777','企业账号7','企业名称7','咨询内容7','账号7','姓名7','2023-04-08',''),(98,'2023-04-08 05:46:03','8888888888','企业账号8','企业名称8','咨询内容8','账号8','姓名8','2023-04-08','');
/*!40000 ALTER TABLE `zaixianzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinmingcheng` varchar(200) NOT NULL COMMENT '招聘名称',
  `zhaopintupian` longtext COMMENT '招聘图片',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `xinchoudaiyu` varchar(200) DEFAULT NULL COMMENT '薪酬待遇',
  `zhaopinjianjie` longtext COMMENT '招聘简介',
  `zhaopinneirong` longtext COMMENT '招聘内容',
  `zhaopinyaoqiu` varchar(200) DEFAULT NULL COMMENT '招聘要求',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (31,'2023-04-08 05:46:03','招聘名称1','upload/zhaopinxinxi_zhaopintupian1.jpg,upload/zhaopinxinxi_zhaopintupian2.jpg,upload/zhaopinxinxi_zhaopintupian3.jpg','职位名称1','薪酬待遇1','招聘简介1','招聘内容1','招聘要求1','企业账号1','企业名称1','联系手机1','2023-04-08','2023-04-08 13:46:03'),(32,'2023-04-08 05:46:03','招聘名称2','upload/zhaopinxinxi_zhaopintupian2.jpg,upload/zhaopinxinxi_zhaopintupian3.jpg,upload/zhaopinxinxi_zhaopintupian4.jpg','职位名称2','薪酬待遇2','招聘简介2','招聘内容2','招聘要求2','企业账号2','企业名称2','联系手机2','2023-04-08','2023-04-08 13:46:03'),(33,'2023-04-08 05:46:03','招聘名称3','upload/zhaopinxinxi_zhaopintupian3.jpg,upload/zhaopinxinxi_zhaopintupian4.jpg,upload/zhaopinxinxi_zhaopintupian5.jpg','职位名称3','薪酬待遇3','招聘简介3','招聘内容3','招聘要求3','企业账号3','企业名称3','联系手机3','2023-04-08','2023-04-08 13:46:03'),(34,'2023-04-08 05:46:03','招聘名称4','upload/zhaopinxinxi_zhaopintupian4.jpg,upload/zhaopinxinxi_zhaopintupian5.jpg,upload/zhaopinxinxi_zhaopintupian6.jpg','职位名称4','薪酬待遇4','招聘简介4','招聘内容4','招聘要求4','企业账号4','企业名称4','联系手机4','2023-04-08','2023-04-08 13:46:03'),(35,'2023-04-08 05:46:03','招聘名称5','upload/zhaopinxinxi_zhaopintupian5.jpg,upload/zhaopinxinxi_zhaopintupian6.jpg,upload/zhaopinxinxi_zhaopintupian7.jpg','职位名称5','薪酬待遇5','招聘简介5','招聘内容5','招聘要求5','企业账号5','企业名称5','联系手机5','2023-04-08','2023-04-08 13:46:03'),(36,'2023-04-08 05:46:03','招聘名称6','upload/zhaopinxinxi_zhaopintupian6.jpg,upload/zhaopinxinxi_zhaopintupian7.jpg,upload/zhaopinxinxi_zhaopintupian8.jpg','职位名称6','薪酬待遇6','招聘简介6','招聘内容6','招聘要求6','企业账号6','企业名称6','联系手机6','2023-04-08','2023-04-08 13:46:03'),(37,'2023-04-08 05:46:03','招聘名称7','upload/zhaopinxinxi_zhaopintupian7.jpg,upload/zhaopinxinxi_zhaopintupian8.jpg,upload/zhaopinxinxi_zhaopintupian9.jpg','职位名称7','薪酬待遇7','招聘简介7','招聘内容7','招聘要求7','企业账号7','企业名称7','联系手机7','2023-04-08','2023-04-08 13:46:03'),(38,'2023-04-08 05:46:03','招聘名称8','upload/zhaopinxinxi_zhaopintupian8.jpg,upload/zhaopinxinxi_zhaopintupian9.jpg,upload/zhaopinxinxi_zhaopintupian10.jpg','职位名称8','薪酬待遇8','招聘简介8','招聘内容8','招聘要求8','企业账号8','企业名称8','联系手机8','2023-04-08','2023-04-08 13:46:03');
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinyiyuan`
--

DROP TABLE IF EXISTS `zhaopinyiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinyiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `yaoqingneirong` varchar(200) DEFAULT NULL COMMENT '邀请内容',
  `yaoqingriqi` date DEFAULT NULL COMMENT '邀请日期',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='招聘意愿';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinyiyuan`
--

LOCK TABLES `zhaopinyiyuan` WRITE;
/*!40000 ALTER TABLE `zhaopinyiyuan` DISABLE KEYS */;
INSERT INTO `zhaopinyiyuan` VALUES (71,'2023-04-08 05:46:03','账号1','姓名1','手机号码1','邀请内容1','2023-04-08','企业账号1','企业名称1','联系手机1',''),(72,'2023-04-08 05:46:03','账号2','姓名2','手机号码2','邀请内容2','2023-04-08','企业账号2','企业名称2','联系手机2',''),(73,'2023-04-08 05:46:03','账号3','姓名3','手机号码3','邀请内容3','2023-04-08','企业账号3','企业名称3','联系手机3',''),(74,'2023-04-08 05:46:03','账号4','姓名4','手机号码4','邀请内容4','2023-04-08','企业账号4','企业名称4','联系手机4',''),(75,'2023-04-08 05:46:03','账号5','姓名5','手机号码5','邀请内容5','2023-04-08','企业账号5','企业名称5','联系手机5',''),(76,'2023-04-08 05:46:03','账号6','姓名6','手机号码6','邀请内容6','2023-04-08','企业账号6','企业名称6','联系手机6',''),(77,'2023-04-08 05:46:03','账号7','姓名7','手机号码7','邀请内容7','2023-04-08','企业账号7','企业名称7','联系手机7',''),(78,'2023-04-08 05:46:03','账号8','姓名8','手机号码8','邀请内容8','2023-04-08','企业账号8','企业名称8','联系手机8','');
/*!40000 ALTER TABLE `zhaopinyiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweimingcheng`
--

DROP TABLE IF EXISTS `zhiweimingcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweimingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) NOT NULL COMMENT '职位名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='职位名称';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweimingcheng`
--

LOCK TABLES `zhiweimingcheng` WRITE;
/*!40000 ALTER TABLE `zhiweimingcheng` DISABLE KEYS */;
INSERT INTO `zhiweimingcheng` VALUES (41,'2023-04-08 05:46:03','职位名称1'),(42,'2023-04-08 05:46:03','职位名称2'),(43,'2023-04-08 05:46:03','职位名称3'),(44,'2023-04-08 05:46:03','职位名称4'),(45,'2023-04-08 05:46:03','职位名称5'),(46,'2023-04-08 05:46:03','职位名称6'),(47,'2023-04-08 05:46:03','职位名称7'),(48,'2023-04-08 05:46:03','职位名称8');
/*!40000 ALTER TABLE `zhiweimingcheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 13:10:37
