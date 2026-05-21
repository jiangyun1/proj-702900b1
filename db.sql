/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - jiaotongguanlizaixianfuwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaotongguanlizaixianfuwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaotongguanlizaixianfuwu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2022-05-06 10:34:32'),(2,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2022-05-06 10:34:32'),(3,'jiashizheng_types','驾驶证业务类型',1,'证期满换证',NULL,NULL,'2022-05-06 10:34:32'),(4,'jiashizheng_types','驾驶证业务类型',2,'遗失换证',NULL,NULL,'2022-05-06 10:34:32'),(5,'jiashizheng_types','驾驶证业务类型',3,'损毁换证',NULL,NULL,'2022-05-06 10:34:33'),(6,'jiashizheng_types','驾驶证业务类型',4,'超龄换证',NULL,NULL,'2022-05-06 10:34:33'),(7,'jiashizheng_types','驾驶证业务类型',5,'延期审验和换证',NULL,NULL,'2022-05-06 10:34:33'),(8,'jiashizheng_yesno_types','申请状态',1,'处理中',NULL,NULL,'2022-05-06 10:34:33'),(9,'jiashizheng_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-05-06 10:34:33'),(10,'jiashizheng_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-05-06 10:34:33'),(11,'jidongche_types','机动车业务类型',1,'预选机动车号牌',NULL,NULL,'2022-05-06 10:34:33'),(12,'jidongche_types','机动车业务类型',2,'补换领机动车行驶证',NULL,NULL,'2022-05-06 10:34:33'),(13,'jidongche_types','机动车业务类型',3,'机动车检验预约',NULL,NULL,'2022-05-06 10:34:33'),(14,'jidongche_types','机动车业务类型',4,'免检标志申领',NULL,NULL,'2022-05-06 10:34:33'),(15,'jidongche_yesno_types','申请状态',1,'处理中',NULL,NULL,'2022-05-06 10:34:33'),(16,'jidongche_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-05-06 10:34:33'),(17,'jidongche_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-05-06 10:34:33'),(18,'weifachulki_types','违法处理业务类型',1,'电子监控处理',NULL,NULL,'2022-05-06 10:34:33'),(19,'weifachulki_types','违法处理业务类型',2,'缴纳罚款',NULL,NULL,'2022-05-06 10:34:33'),(20,'weifachulki_status_types','业务状态',1,'未完成',NULL,NULL,'2022-05-06 10:34:33'),(21,'weifachulki_status_types','业务状态',2,'已处理',NULL,NULL,'2022-05-06 10:34:33'),(22,'sex_types','性别类型',1,'男',NULL,NULL,'2022-05-06 10:34:33'),(23,'sex_types','性别类型',2,'女',NULL,NULL,'2022-05-06 10:34:33');

/*Table structure for table `jiashizheng` */

DROP TABLE IF EXISTS `jiashizheng`;

CREATE TABLE `jiashizheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiashizheng_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `jiashizheng_types` int(11) DEFAULT NULL COMMENT '驾驶证业务类型 Search111',
  `jiashizheng_time` timestamp NULL DEFAULT NULL COMMENT '申请时间 Search111',
  `jiashizheng_file` varchar(200) DEFAULT NULL COMMENT '相关文件',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申请用户',
  `jiashizheng_content` text COMMENT '详情 ',
  `jiashizheng_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `jiashizheng_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='驾驶证业务';

/*Data for the table `jiashizheng` */

insert  into `jiashizheng`(`id`,`jiashizheng_name`,`jiashizheng_types`,`jiashizheng_time`,`jiashizheng_file`,`yonghu_id`,`jiashizheng_content`,`jiashizheng_yesno_types`,`jiashizheng_yesno_text`,`create_time`) values (1,'标题1',5,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/file.rar',2,'详情1',1,NULL,'2022-05-06 10:34:46'),(2,'标题2',1,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/file.rar',1,'详情2',1,NULL,'2022-05-06 10:34:46'),(3,'标题3',5,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/file.rar',3,'详情3',1,NULL,'2022-05-06 10:34:46'),(4,'标题4',4,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/file.rar',3,'详情4',1,NULL,'2022-05-06 10:34:46'),(5,'标题5',5,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/file.rar',2,'详情5',2,'通过1212','2022-05-06 10:34:46');

/*Table structure for table `jidongche` */

DROP TABLE IF EXISTS `jidongche`;

CREATE TABLE `jidongche` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jidongche_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `jidongche_types` int(11) DEFAULT NULL COMMENT '机动车业务类型 Search111',
  `jidongche_time` timestamp NULL DEFAULT NULL COMMENT '申请时间 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申请用户',
  `jidongche_content` text COMMENT '详情 ',
  `jidongche_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `jidongche_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='机动车业务';

/*Data for the table `jidongche` */

insert  into `jidongche`(`id`,`jidongche_name`,`jidongche_types`,`jidongche_time`,`yonghu_id`,`jidongche_content`,`jidongche_yesno_types`,`jidongche_yesno_text`,`create_time`) values (1,'标题1',3,'2022-05-06 10:34:46',2,'详情1',1,NULL,'2022-05-06 10:34:46'),(2,'标题2',3,'2022-05-06 10:34:46',1,'详情2',1,NULL,'2022-05-06 10:34:46'),(3,'标题3',4,'2022-05-06 10:34:46',1,'详情3',1,NULL,'2022-05-06 10:34:46'),(4,'标题4',3,'2022-05-06 10:34:46',2,'详情4',1,NULL,'2022-05-06 10:34:46'),(5,'标题5',2,'2022-05-06 10:34:46',1,'详情5',3,'123','2022-05-06 10:34:46');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/news1.jpg',1,'2022-05-06 10:34:46','新闻详情1','2022-05-06 10:34:46'),(2,'新闻名称2','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/news2.jpg',2,'2022-05-06 10:34:46','新闻详情2','2022-05-06 10:34:46'),(3,'新闻名称3','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/news3.jpg',1,'2022-05-06 10:34:46','新闻详情3','2022-05-06 10:34:46'),(4,'新闻名称4','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/news4.jpg',1,'2022-05-06 10:34:46','新闻详情4','2022-05-06 10:34:46'),(5,'新闻名称5','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/news5.jpg',2,'2022-05-06 10:34:46','新闻详情5','2022-05-06 10:34:46');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','rejxupa0aaxcxwxka3el70uk3hi7un05','2022-05-06 10:54:36','2022-05-06 14:33:18'),(2,1,'a1','yonghu','用户','2g8uz8huayweotzkahcgu2btoiwww977','2022-05-06 10:55:41','2022-05-06 13:07:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-08-01 08:15:04');

/*Table structure for table `weifachulki` */

DROP TABLE IF EXISTS `weifachulki`;

CREATE TABLE `weifachulki` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `weifachulki_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `weifachulki_types` int(11) DEFAULT NULL COMMENT '违法处理业务类型 Search111',
  `weifachulki_time` timestamp NULL DEFAULT NULL COMMENT '时间 Search111',
  `weifachulki_video` varchar(200) DEFAULT NULL COMMENT '内容',
  `weifachulki_money` decimal(10,2) DEFAULT NULL COMMENT '内容',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `weifachulki_content` text COMMENT '详情 ',
  `weifachulki_status_types` int(11) DEFAULT NULL COMMENT '业务状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='违法处理业务';

/*Data for the table `weifachulki` */

insert  into `weifachulki`(`id`,`weifachulki_name`,`weifachulki_types`,`weifachulki_time`,`weifachulki_video`,`weifachulki_money`,`yonghu_id`,`weifachulki_content`,`weifachulki_status_types`,`create_time`) values (1,'标题1',2,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/video.mp4','227.67',1,'详情1',1,'2022-05-06 10:34:46'),(2,'标题2',2,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/video.mp4','456.42',1,'详情2',2,'2022-05-06 10:34:46'),(3,'标题3',1,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/video.mp4','535.54',3,'详情3',1,'2022-05-06 10:34:46'),(4,'标题4',1,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/video.mp4','802.83',2,'详情4',2,'2022-05-06 10:34:46'),(5,'标题5',1,'2022-05-06 10:34:46','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/video.mp4','712.70',2,'详情5',2,'2022-05-06 10:34:46');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/yonghu1.jpg',2,'1@qq.com','2022-05-06 10:34:46'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/yonghu2.jpg',2,'2@qq.com','2022-05-06 10:34:46'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/jiaotongguanlizaixianfuwu/upload/yonghu3.jpg',1,'3@qq.com','2022-05-06 10:34:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
