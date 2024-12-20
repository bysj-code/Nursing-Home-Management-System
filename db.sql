/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yanglaoyaunguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yanglaoyaunguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yanglaoyaunguanlixitong`;

/*Table structure for table `chuangwei` */

DROP TABLE IF EXISTS `chuangwei`;

CREATE TABLE `chuangwei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangjian_id` int(11) DEFAULT NULL COMMENT '房间',
  `chuangwei_name` varchar(200) DEFAULT NULL COMMENT '床位名称  Search111 ',
  `chuangwei_uuid_number` varchar(200) DEFAULT NULL COMMENT '床位编号',
  `chuangwei_photo` varchar(200) DEFAULT NULL COMMENT '床位照片',
  `chuangwei_address` varchar(200) DEFAULT NULL COMMENT '床位地点',
  `chuangwei_types` int(11) DEFAULT NULL COMMENT '床位类型 Search111',
  `chuangwei_content` longtext COMMENT '床位介绍 ',
  `chuangwei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='床位';

/*Data for the table `chuangwei` */

insert  into `chuangwei`(`id`,`fangjian_id`,`chuangwei_name`,`chuangwei_uuid_number`,`chuangwei_photo`,`chuangwei_address`,`chuangwei_types`,`chuangwei_content`,`chuangwei_delete`,`insert_time`,`create_time`) values (1,1,'床位名称1','1682404126302','upload/chuangwei1.jpg','床位地点1',2,'床位介绍1',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(2,2,'床位名称2','1682404126328','upload/chuangwei2.jpg','床位地点2',1,'床位介绍2',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(3,3,'床位名称3','1682404126298','upload/chuangwei3.jpg','床位地点3',2,'床位介绍3',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(4,4,'床位名称4','1682404126336','upload/chuangwei4.jpg','床位地点4',2,'床位介绍4',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(5,5,'床位名称5','1682404126346','upload/chuangwei5.jpg','床位地点5',2,'床位介绍5',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(6,6,'床位名称6','1682404126299','upload/chuangwei6.jpg','床位地点6',1,'床位介绍6',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(7,7,'床位名称7','1682404126344','upload/chuangwei7.jpg','床位地点7',2,'床位介绍7',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(8,8,'床位名称8','1682404126350','upload/chuangwei8.jpg','床位地点8',2,'床位介绍8',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(9,9,'床位名称9','1682404126307','upload/chuangwei9.jpg','床位地点9',2,'床位介绍9',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(10,10,'床位名称10','1682404126325','upload/chuangwei10.jpg','床位地点10',1,'床位介绍10',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(11,11,'床位名称11','1682404126306','upload/chuangwei11.jpg','床位地点11',2,'床位介绍11',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(12,12,'床位名称12','1682404126296','upload/chuangwei12.jpg','床位地点12',1,'床位介绍12',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(13,13,'床位名称13','1682404126337','upload/chuangwei13.jpg','床位地点13',2,'床位介绍13',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(14,14,'床位名称14','1682404126349','upload/chuangwei14.jpg','床位地点14',2,'床位介绍14',1,'2023-04-25 14:28:46','2023-04-25 14:28:46');

/*Table structure for table `chuangwei_yuyue` */

DROP TABLE IF EXISTS `chuangwei_yuyue`;

CREATE TABLE `chuangwei_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangwei_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `chuangwei_id` int(11) DEFAULT NULL COMMENT '床位',
  `chuangwei_yuyue_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '床位调动申请时间',
  `chuangwei_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `chuangwei_yuyue_yesno_text` longtext COMMENT '审核回复',
  `chuangwei_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='床位调动申请';

/*Data for the table `chuangwei_yuyue` */

insert  into `chuangwei_yuyue`(`id`,`chuangwei_yuyue_uuid_number`,`yonghu_id`,`laoren_id`,`chuangwei_id`,`chuangwei_yuyue_text`,`insert_time`,`chuangwei_yuyue_yesno_types`,`chuangwei_yuyue_yesno_text`,`chuangwei_yuyue_shenhe_time`,`create_time`) values (1,'1682404126330',3,1,1,'报名理由1','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(2,'1682404126325',1,2,2,'报名理由2','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(3,'1682404126307',3,3,3,'报名理由3','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(4,'1682404126314',1,4,4,'报名理由4','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(5,'1682404126366',2,5,5,'报名理由5','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(6,'1682404126347',1,6,6,'报名理由6','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(7,'1682404126350',2,7,7,'报名理由7','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(8,'1682404126320',2,8,8,'报名理由8','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(9,'1682404126383',1,9,9,'报名理由9','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(10,'1682404126357',2,10,10,'报名理由10','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(11,'1682404126310',2,11,11,'报名理由11','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(12,'1682404126341',1,12,12,'报名理由12','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(13,'1682404126332',2,13,13,'报名理由13','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(14,'1682404126314',2,14,14,'报名理由14','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(15,'1682409270117',1,7,12,'申请换床','2023-04-25 15:54:44',2,'哈多','2023-04-25 16:04:39','2023-04-25 15:54:44');

/*Table structure for table `chuyaun` */

DROP TABLE IF EXISTS `chuyaun`;

CREATE TABLE `chuyaun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuyaun_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `jiashu_id` int(11) DEFAULT NULL COMMENT '家属',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `chuyaun_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '出院申请时间',
  `chuyaun_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `chuyaun_yesno_text` longtext COMMENT '审核回复',
  `chuyaun_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='出院申请';

/*Data for the table `chuyaun` */

insert  into `chuyaun`(`id`,`chuyaun_uuid_number`,`jiashu_id`,`laoren_id`,`chuyaun_text`,`insert_time`,`chuyaun_yesno_types`,`chuyaun_yesno_text`,`chuyaun_shenhe_time`,`create_time`) values (1,'1682404126327',3,1,'报名理由1','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(2,'1682404126370',3,2,'报名理由2','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(3,'1682404126386',1,3,'报名理由3','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(4,'1682404126368',3,4,'报名理由4','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(5,'1682404126315',3,5,'报名理由5','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(6,'1682404126380',3,6,'报名理由6','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(7,'1682404126340',2,7,'报名理由7','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(8,'1682404126304',1,8,'报名理由8','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(9,'1682404126375',2,9,'报名理由9','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(10,'1682404126299',2,10,'报名理由10','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(11,'1682404126381',1,11,'报名理由11','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(12,'1682404126356',1,12,'报名理由12','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(13,'1682404126307',2,13,'报名理由13','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(14,'1682404126362',2,14,'报名理由14','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(15,'1682409463889',1,1,'出院回家','2023-04-25 15:57:53',2,'阿萨德才','2023-04-25 16:04:49','2023-04-25 15:57:53');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `diaodong` */

DROP TABLE IF EXISTS `diaodong`;

CREATE TABLE `diaodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `diaodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `jiashu_id` int(11) DEFAULT NULL COMMENT '家属',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `chuangwei_id` int(11) DEFAULT NULL COMMENT '床位',
  `diaodong_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '床位调动申请时间',
  `diaodong_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `diaodong_yesno_text` longtext COMMENT '审核回复',
  `diaodong_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='调动申请';

/*Data for the table `diaodong` */

insert  into `diaodong`(`id`,`diaodong_uuid_number`,`jiashu_id`,`laoren_id`,`chuangwei_id`,`diaodong_text`,`insert_time`,`diaodong_yesno_types`,`diaodong_yesno_text`,`diaodong_shenhe_time`,`create_time`) values (1,'1682404126367',1,1,1,'报名理由1','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(2,'1682404126312',1,2,2,'报名理由2','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(3,'1682404126381',3,3,3,'报名理由3','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(4,'1682404126321',2,4,4,'报名理由4','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(5,'1682404126389',1,5,5,'报名理由5','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(6,'1682404126355',1,6,6,'报名理由6','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(7,'1682404126329',1,7,7,'报名理由7','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(8,'1682404126378',1,8,8,'报名理由8','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(9,'1682404126381',3,9,9,'报名理由9','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(10,'1682404126386',2,10,10,'报名理由10','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(11,'1682404126387',3,11,11,'报名理由11','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(12,'1682404126365',3,12,12,'报名理由12','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(13,'1682404126308',3,13,13,'报名理由13','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(14,'1682404126355',1,14,14,'报名理由14','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(15,'1682409481305',1,10,12,'更换床位','2023-04-25 15:58:12',2,'sad是 ','2023-04-25 16:04:58','2023-04-25 15:58:12');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'yonghu_types','护工等级',1,'一级',NULL,NULL,'2023-04-25 14:28:38'),(2,'yonghu_types','护工等级',2,'二级',NULL,NULL,'2023-04-25 14:28:38'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-25 14:28:38'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-25 14:28:38'),(5,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-25 14:28:38'),(6,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-25 14:28:38'),(7,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-25 14:28:38'),(8,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-25 14:28:38'),(9,'fangjian_types','房间类型',1,'单人间',NULL,NULL,'2023-04-25 14:28:38'),(10,'fangjian_types','房间类型',2,'双人间',NULL,NULL,'2023-04-25 14:28:38'),(11,'fangjian_types','房间类型',3,'四人间',NULL,NULL,'2023-04-25 14:28:38'),(12,'fangjian_types','房间类型',4,'六人间',NULL,NULL,'2023-04-25 14:28:38'),(13,'chuangwei_types','床位类型',1,'已分配',NULL,NULL,'2023-04-25 14:28:38'),(14,'chuangwei_types','床位类型',2,'未分配',NULL,NULL,'2023-04-25 14:28:38'),(15,'qingjia_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-25 14:28:38'),(16,'qingjia_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-25 14:28:38'),(17,'qingjia_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-25 14:28:38'),(18,'lizhi_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-25 14:28:38'),(19,'lizhi_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-25 14:28:38'),(20,'lizhi_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-25 14:28:38'),(21,'chuangwei_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-25 14:28:38'),(22,'chuangwei_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-25 14:28:38'),(23,'chuangwei_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-25 14:28:38'),(24,'chuyaun_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-25 14:28:38'),(25,'chuyaun_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-25 14:28:38'),(26,'chuyaun_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-25 14:28:38'),(27,'laorenqingjia_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-25 14:28:38'),(28,'laorenqingjia_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-25 14:28:38'),(29,'laorenqingjia_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-25 14:28:38'),(30,'diaodong_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-25 14:28:38'),(31,'diaodong_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-25 14:28:38'),(32,'diaodong_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-25 14:28:38'),(33,'hugong_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-25 14:28:38'),(34,'hugong_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-25 14:28:38'),(35,'hugong_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-25 14:28:38');

/*Table structure for table `fangjian` */

DROP TABLE IF EXISTS `fangjian`;

CREATE TABLE `fangjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangjian_name` varchar(200) DEFAULT NULL COMMENT '房间名称  Search111 ',
  `fangjian_uuid_number` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangjian_photo` varchar(200) DEFAULT NULL COMMENT '房间照片',
  `fangjian_address` varchar(200) DEFAULT NULL COMMENT '房间地点',
  `fangjian_types` int(11) DEFAULT NULL COMMENT '房间类型 Search111',
  `fangjian_content` longtext COMMENT '房间介绍 ',
  `fangjian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='房间';

/*Data for the table `fangjian` */

insert  into `fangjian`(`id`,`fangjian_name`,`fangjian_uuid_number`,`fangjian_photo`,`fangjian_address`,`fangjian_types`,`fangjian_content`,`fangjian_delete`,`insert_time`,`create_time`) values (1,'房间名称1','1682404126335','upload/fangjian1.jpg','房间地点1',4,'房间介绍1',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(2,'房间名称2','1682404126379','upload/fangjian2.jpg','房间地点2',3,'房间介绍2',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(3,'房间名称3','1682404126308','upload/fangjian3.jpg','房间地点3',4,'房间介绍3',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(4,'房间名称4','1682404126394','upload/fangjian4.jpg','房间地点4',1,'房间介绍4',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(5,'房间名称5','1682404126385','upload/fangjian5.jpg','房间地点5',1,'房间介绍5',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(6,'房间名称6','1682404126375','upload/fangjian6.jpg','房间地点6',3,'房间介绍6',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(7,'房间名称7','1682404126318','upload/fangjian7.jpg','房间地点7',2,'房间介绍7',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(8,'房间名称8','1682404126358','upload/fangjian8.jpg','房间地点8',3,'房间介绍8',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(9,'房间名称9','1682404126379','upload/fangjian9.jpg','房间地点9',2,'房间介绍9',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(10,'房间名称10','1682404126329','upload/fangjian10.jpg','房间地点10',2,'房间介绍10',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(11,'房间名称11','1682404126348','upload/fangjian11.jpg','房间地点11',3,'房间介绍11',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(12,'房间名称12','1682404126398','upload/fangjian12.jpg','房间地点12',4,'房间介绍12',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(13,'房间名称13','1682404126396','upload/fangjian13.jpg','房间地点13',4,'房间介绍13',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(14,'房间名称14','1682404126353','upload/fangjian14.jpg','房间地点14',3,'房间介绍14',1,'2023-04-25 14:28:46','2023-04-25 14:28:46');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-25 14:28:46','公告详情1','2023-04-25 14:28:46'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-25 14:28:46','公告详情2','2023-04-25 14:28:46'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-25 14:28:46','公告详情3','2023-04-25 14:28:46'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-25 14:28:46','公告详情4','2023-04-25 14:28:46'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-25 14:28:46','公告详情5','2023-04-25 14:28:46'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-25 14:28:46','公告详情6','2023-04-25 14:28:46'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-25 14:28:46','公告详情7','2023-04-25 14:28:46'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-25 14:28:46','公告详情8','2023-04-25 14:28:46'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-25 14:28:46','公告详情9','2023-04-25 14:28:46'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-25 14:28:46','公告详情10','2023-04-25 14:28:46'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-25 14:28:46','公告详情11','2023-04-25 14:28:46'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-25 14:28:46','公告详情12','2023-04-25 14:28:46'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-25 14:28:46','公告详情13','2023-04-25 14:28:46'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-25 14:28:46','公告详情14','2023-04-25 14:28:46');

/*Table structure for table `hugong` */

DROP TABLE IF EXISTS `hugong`;

CREATE TABLE `hugong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hugong_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `jiashu_id` int(11) DEFAULT NULL COMMENT '家属',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `hugong_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '护工更换申请时间',
  `hugong_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `hugong_yesno_text` longtext COMMENT '审核回复',
  `hugong_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='护工更换申请';

/*Data for the table `hugong` */

insert  into `hugong`(`id`,`hugong_uuid_number`,`jiashu_id`,`laoren_id`,`hugong_text`,`insert_time`,`hugong_yesno_types`,`hugong_yesno_text`,`hugong_shenhe_time`,`create_time`) values (1,'1682404126348',3,1,'报名理由1','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(2,'1682404126383',2,2,'报名理由2','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(3,'1682404126354',1,3,'报名理由3','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(4,'1682404126400',2,4,'报名理由4','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(5,'1682404126331',1,5,'报名理由5','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(6,'1682404126357',3,6,'报名理由6','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(7,'1682404126351',3,7,'报名理由7','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(8,'1682404126377',1,8,'报名理由8','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(9,'1682404126347',3,9,'报名理由9','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(10,'1682404126353',1,10,'报名理由10','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(11,'1682404126371',3,11,'报名理由11','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(12,'1682404126365',1,12,'报名理由12','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(13,'1682404126363',1,13,'报名理由13','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(14,'1682404126347',1,14,'报名理由14','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(15,'1682409496084',1,1,'换成2号护工','2023-04-25 15:58:27',3,'sad是','2023-04-25 16:05:07','2023-04-25 15:58:27');

/*Table structure for table `jiashu` */

DROP TABLE IF EXISTS `jiashu`;

CREATE TABLE `jiashu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiashu_uuid_number` varchar(200) DEFAULT NULL COMMENT '家属编号 Search111 ',
  `jiashu_name` varchar(200) DEFAULT NULL COMMENT '家属姓名 Search111 ',
  `jiashu_phone` varchar(200) DEFAULT NULL COMMENT '家属手机号',
  `jiashu_id_number` varchar(200) DEFAULT NULL COMMENT '家属身份证号',
  `jiashu_photo` varchar(200) DEFAULT NULL COMMENT '家属头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiashu_email` varchar(200) DEFAULT NULL COMMENT '家属邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='家属';

/*Data for the table `jiashu` */

insert  into `jiashu`(`id`,`username`,`password`,`jiashu_uuid_number`,`jiashu_name`,`jiashu_phone`,`jiashu_id_number`,`jiashu_photo`,`sex_types`,`jiashu_email`,`create_time`) values (1,'a1','123456','1682404126388','家属姓名1','17703786901','410224199010102001','upload/jiashu1.jpg',2,'1@qq.com','2023-04-25 14:28:46'),(2,'a2','123456','1682404126340','家属姓名2','17703786902','410224199010102002','upload/jiashu2.jpg',1,'2@qq.com','2023-04-25 14:28:46'),(3,'a3','123456','1682404126304','家属姓名3','17703786903','410224199010102003','upload/jiashu3.jpg',2,'3@qq.com','2023-04-25 14:28:46');

/*Table structure for table `jilu` */

DROP TABLE IF EXISTS `jilu`;

CREATE TABLE `jilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '护工',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `jilu_name` varchar(200) DEFAULT NULL COMMENT '记录名称  Search111 ',
  `jilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '记录编号',
  `jilu_photo` varchar(200) DEFAULT NULL COMMENT '记录照片',
  `jilu_tiwen` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `jilu_xueya` decimal(10,2) DEFAULT NULL COMMENT '血压',
  `jilu_content` longtext COMMENT '健康介绍 ',
  `jilu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='健康信息';

/*Data for the table `jilu` */

insert  into `jilu`(`id`,`yonghu_id`,`laoren_id`,`jilu_name`,`jilu_uuid_number`,`jilu_photo`,`jilu_tiwen`,`jilu_xueya`,`jilu_content`,`jilu_delete`,`insert_time`,`create_time`) values (1,3,1,'记录名称1','1682404126337','upload/jilu1.jpg','60.43','718.15','健康介绍1',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(2,1,2,'记录名称2','1682404126367','upload/jilu2.jpg','964.92','814.15','健康介绍2',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(3,2,3,'记录名称3','1682404126363','upload/jilu3.jpg','147.78','313.62','健康介绍3',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(4,2,4,'记录名称4','1682404126349','upload/jilu4.jpg','461.50','863.44','健康介绍4',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(5,1,5,'记录名称5','1682404126371','upload/jilu5.jpg','432.77','505.10','健康介绍5',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(6,2,6,'记录名称6','1682404126326','upload/jilu6.jpg','470.91','576.25','健康介绍6',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(7,1,7,'记录名称7','1682404126307','upload/jilu7.jpg','791.77','838.63','健康介绍7',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(8,2,8,'记录名称8','1682404126310','upload/jilu8.jpg','658.73','839.68','健康介绍8',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(9,1,9,'记录名称9','1682404126351','upload/jilu9.jpg','595.71','830.70','健康介绍9',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(10,3,10,'记录名称10','1682404126322','upload/jilu10.jpg','863.59','452.42','健康介绍10',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(11,1,11,'记录名称11','1682404126310','upload/jilu11.jpg','26.31','132.84','健康介绍11',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(12,2,12,'记录名称12','1682404126326','upload/jilu12.jpg','791.36','141.47','健康介绍12',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(13,3,13,'记录名称13','1682404126351','upload/jilu13.jpg','922.11','569.75','健康介绍13',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(14,2,14,'记录名称14','1682404126329','upload/jilu14.jpg','239.34','472.32','健康介绍14',1,'2023-04-25 14:28:46','2023-04-25 14:28:46'),(15,1,10,'呀','1682409302707','upload/1682409315008.jpg','26.00','84.00','手打撒',1,'2023-04-25 15:55:20','2023-04-25 15:55:20');

/*Table structure for table `laoren` */

DROP TABLE IF EXISTS `laoren`;

CREATE TABLE `laoren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '护工',
  `chuangwei_id` int(11) DEFAULT NULL COMMENT '床位',
  `jiashu_id` int(11) DEFAULT NULL COMMENT '家属',
  `kanhuren_name` varchar(200) DEFAULT NULL COMMENT '看护人姓名 Search111 ',
  `kanhuren_phone` varchar(200) DEFAULT NULL COMMENT '看护人联系方式',
  `laoren_name` varchar(200) DEFAULT NULL COMMENT '老人姓名 Search111 ',
  `laoren_phone` varchar(200) DEFAULT NULL COMMENT '老人手机号',
  `laoren_id_number` varchar(200) DEFAULT NULL COMMENT '老人身份证号',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `laoren_photo` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `laoren_content` text COMMENT '老人描述',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='老人';

/*Data for the table `laoren` */

insert  into `laoren`(`id`,`yonghu_id`,`chuangwei_id`,`jiashu_id`,`kanhuren_name`,`kanhuren_phone`,`laoren_name`,`laoren_phone`,`laoren_id_number`,`sex_types`,`age`,`laoren_photo`,`laoren_content`,`insert_time`,`create_time`) values (1,1,1,1,'看护人姓名1','17703786901','老人姓名1','17703786901','410224199010102001',2,498,'upload/laoren1.jpg','老人描述1','2023-04-25 14:28:46','2023-04-25 14:28:46'),(2,3,2,2,'看护人姓名2','17703786902','老人姓名2','17703786902','410224199010102002',2,172,'upload/laoren2.jpg','老人描述2','2023-04-25 14:28:46','2023-04-25 14:28:46'),(3,3,3,1,'看护人姓名3','17703786903','老人姓名3','17703786903','410224199010102003',1,227,'upload/laoren3.jpg','老人描述3','2023-04-25 14:28:46','2023-04-25 14:28:46'),(4,2,4,1,'看护人姓名4','17703786904','老人姓名4','17703786904','410224199010102004',2,222,'upload/laoren4.jpg','老人描述4','2023-04-25 14:28:46','2023-04-25 14:28:46'),(5,2,5,3,'看护人姓名5','17703786905','老人姓名5','17703786905','410224199010102005',1,456,'upload/laoren5.jpg','老人描述5','2023-04-25 14:28:46','2023-04-25 14:28:46'),(6,2,6,1,'看护人姓名6','17703786906','老人姓名6','17703786906','410224199010102006',2,158,'upload/laoren6.jpg','老人描述6','2023-04-25 14:28:46','2023-04-25 14:28:46'),(7,1,7,3,'看护人姓名7','17703786907','老人姓名7','17703786907','410224199010102007',1,245,'upload/laoren7.jpg','老人描述7','2023-04-25 14:28:46','2023-04-25 14:28:46'),(8,3,8,3,'看护人姓名8','17703786908','老人姓名8','17703786908','410224199010102008',1,53,'upload/laoren8.jpg','老人描述8','2023-04-25 14:28:46','2023-04-25 14:28:46'),(9,3,9,1,'看护人姓名9','17703786909','老人姓名9','17703786909','410224199010102009',2,411,'upload/laoren9.jpg','老人描述9','2023-04-25 14:28:46','2023-04-25 14:28:46'),(10,1,10,1,'看护人姓名10','17703786910','老人姓名10','17703786910','410224199010102010',1,161,'upload/laoren10.jpg','老人描述10','2023-04-25 14:28:46','2023-04-25 14:28:46'),(11,2,11,3,'看护人姓名11','17703786911','老人姓名11','17703786911','410224199010102011',1,205,'upload/laoren11.jpg','老人描述11','2023-04-25 14:28:46','2023-04-25 14:28:46'),(12,1,12,2,'看护人姓名12','17703786912','老人姓名12','17703786912','410224199010102012',2,324,'upload/laoren12.jpg','老人描述12','2023-04-25 14:28:46','2023-04-25 14:28:46'),(13,2,13,3,'看护人姓名13','17703786913','老人姓名13','17703786913','410224199010102013',1,245,'upload/laoren13.jpg','老人描述13','2023-04-25 14:28:46','2023-04-25 14:28:46'),(14,3,14,1,'看护人姓名14','17703786914','老人姓名14','17703786914','410224199010102014',1,442,'upload/laoren14.jpg','老人描述14','2023-04-25 14:28:46','2023-04-25 14:28:46');

/*Table structure for table `laorenqingjia` */

DROP TABLE IF EXISTS `laorenqingjia`;

CREATE TABLE `laorenqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laorenqingjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `jiashu_id` int(11) DEFAULT NULL COMMENT '家属',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `laorenqingjia_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '老人请假申请时间',
  `laorenqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `laorenqingjia_yesno_text` longtext COMMENT '审核回复',
  `laorenqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='老人请假申请';

/*Data for the table `laorenqingjia` */

insert  into `laorenqingjia`(`id`,`laorenqingjia_uuid_number`,`jiashu_id`,`laoren_id`,`laorenqingjia_text`,`insert_time`,`laorenqingjia_yesno_types`,`laorenqingjia_yesno_text`,`laorenqingjia_shenhe_time`,`create_time`) values (1,'1682404126390',1,1,'报名理由1','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(2,'1682404126377',3,2,'报名理由2','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(3,'1682404126380',3,3,'报名理由3','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(4,'1682404126364',3,4,'报名理由4','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(5,'1682404126394',2,5,'报名理由5','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(6,'1682404126340',3,6,'报名理由6','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(7,'1682404126365',1,7,'报名理由7','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(8,'1682404126315',3,8,'报名理由8','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(9,'1682404126318',2,9,'报名理由9','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(10,'1682404126371',2,10,'报名理由10','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(11,'1682404126339',2,11,'报名理由11','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(12,'1682404126370',3,12,'报名理由12','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(13,'1682404126311',1,13,'报名理由13','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(14,'1682404126349',1,14,'报名理由14','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(15,'1682409511415',1,3,'请假','2023-04-25 15:58:40',2,'和不v','2023-04-25 16:05:15','2023-04-25 15:58:40');

/*Table structure for table `lizhi` */

DROP TABLE IF EXISTS `lizhi`;

CREATE TABLE `lizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lizhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lizhi_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '离职申请时间',
  `lizhi_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `lizhi_yesno_text` longtext COMMENT '审核回复',
  `lizhi_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='离职申请';

/*Data for the table `lizhi` */

insert  into `lizhi`(`id`,`lizhi_uuid_number`,`yonghu_id`,`lizhi_text`,`insert_time`,`lizhi_yesno_types`,`lizhi_yesno_text`,`lizhi_shenhe_time`,`create_time`) values (1,'1682404126410',2,'报名理由1','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(2,'1682404126356',3,'报名理由2','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(3,'1682404126395',3,'报名理由3','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(4,'1682404126311',1,'报名理由4','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(5,'1682404126404',3,'报名理由5','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(6,'1682404126401',2,'报名理由6','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(7,'1682404126316',3,'报名理由7','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(8,'1682404126393',3,'报名理由8','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(9,'1682404126376',1,'报名理由9','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(10,'1682404126370',2,'报名理由10','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(11,'1682404126315',1,'报名理由11','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(12,'1682404126397',1,'报名理由12','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(13,'1682404126361',3,'报名理由13','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(14,'1682404126313',1,'报名理由14','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(15,'1682409327112',1,'离职','2023-04-25 15:55:30',3,'sad撒','2023-04-25 16:05:25','2023-04-25 15:55:30');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qingjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qingjia_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '请假申请时间',
  `qingjia_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `qingjia_yesno_text` longtext COMMENT '审核回复',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='请假申请';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`qingjia_uuid_number`,`yonghu_id`,`qingjia_text`,`insert_time`,`qingjia_yesno_types`,`qingjia_yesno_text`,`qingjia_shenhe_time`,`create_time`) values (1,'1682404126390',3,'报名理由1','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(2,'1682404126373',1,'报名理由2','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(3,'1682404126405',1,'报名理由3','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(4,'1682404126400',2,'报名理由4','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(5,'1682404126352',3,'报名理由5','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(6,'1682404126402',3,'报名理由6','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(7,'1682404126328',3,'报名理由7','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(8,'1682404126313',1,'报名理由8','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(9,'1682404126317',2,'报名理由9','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(10,'1682404126350',3,'报名理由10','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(11,'1682404126383',2,'报名理由11','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(12,'1682404126333',3,'报名理由12','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(13,'1682404126376',3,'报名理由13','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(14,'1682404126369',2,'报名理由14','2023-04-25 14:28:46',1,NULL,NULL,'2023-04-25 14:28:46'),(15,'1682409335204',1,'明天请假','2023-04-25 15:55:44',2,'哈多','2023-04-25 16:05:33','2023-04-25 15:55:44');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','护工','qvmwb07o15rvip50yv5vqdhcj1fcj89v','2023-04-25 14:42:01','2023-04-25 16:53:41'),(2,1,'a1','jiashu','家属','5rtcwy7wy0e5kd4ey8ko02yk7pk0l0yp','2023-04-25 15:47:42','2023-04-25 16:57:13'),(3,1,'admin','users','管理员','irvdoey15ga74g5cmz9pzc2epinegtdl','2023-04-25 15:58:46','2023-04-25 16:58:47');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-25 14:28:38');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '护工编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '护工姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '护工手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '护工身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '护工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '护工等级',
  `yonghu_jaiwei` varchar(200) DEFAULT NULL COMMENT '价钱',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '护工邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='护工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_types`,`yonghu_jaiwei`,`yonghu_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1682404126371','护工姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,1,'价钱1','1@qq.com',1,'2023-04-25 14:28:46'),(2,'a2','123456','1682404126379','护工姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,1,'价钱2','2@qq.com',1,'2023-04-25 14:28:46'),(3,'a3','123456','1682404126401','护工姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,2,'价钱3','3@qq.com',1,'2023-04-25 14:28:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
