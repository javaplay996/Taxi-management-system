/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chuzucheguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chuzucheguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chuzucheguanlixitong`;

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiashiyuan_id` int(11) DEFAULT NULL COMMENT '驾驶员',
  `car_number` varchar(200) DEFAULT NULL COMMENT '车牌号  ',
  `chejia_number` varchar(200) DEFAULT NULL COMMENT '车架号  ',
  `goumai_time` timestamp NULL DEFAULT NULL COMMENT '购买日期',
  `car_content` varchar(200) DEFAULT NULL COMMENT '车辆备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `car` */

insert  into `car`(`id`,`jiashiyuan_id`,`car_number`,`chejia_number`,`goumai_time`,`car_content`,`create_time`) values (1,3,'a111111','a101101','2020-03-23 00:00:00','车牌号a111111的备注\r\n','2021-03-23 19:09:46'),(2,4,'a77777','a707707','2021-03-23 00:00:00','','2021-03-23 20:08:35');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-23 16:08:44'),(2,'sex_types','性别',2,'女',NULL,'2021-03-23 16:08:44'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-23 16:08:44'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-23 16:08:44'),(5,'nianshen_types','年审结果',1,'年审通过',NULL,'2021-03-23 16:08:44'),(6,'nianshen_types','年审结果',2,'年审不通过',NULL,'2021-03-23 16:08:44'),(7,'shigu_types','事故类型',1,'全部责任',NULL,'2021-03-23 16:08:44'),(8,'shigu_types','事故类型',2,'主要责任',NULL,'2021-03-23 16:08:44'),(9,'shigu_types','事故类型',3,'同等责任',NULL,'2021-03-23 16:08:44'),(10,'shigu_types','事故类型',4,'次要责任',NULL,'2021-03-23 16:08:44'),(11,'shigu_types','事故类型',5,'无责任',NULL,'2021-03-23 16:08:44'),(12,'shiguchuli_types','是否处理',1,'已处理',NULL,'2021-03-23 16:08:44'),(13,'shiguchuli_types','是否处理',2,'未处理',NULL,'2021-03-23 16:08:44');

/*Table structure for table `jiashiyuan` */

DROP TABLE IF EXISTS `jiashiyuan`;

CREATE TABLE `jiashiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `card_number` varchar(200) DEFAULT NULL COMMENT '驾驶证号   ',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `jiashiyuan_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='驾驶员';

/*Data for the table `jiashiyuan` */

insert  into `jiashiyuan`(`id`,`card_number`,`name`,`sex_types`,`id_number`,`phone`,`jiashiyuan_photo`,`age`,`politics_types`,`address`,`create_time`) values (1,'a11','张11',2,'410224199610232011','17703789911','http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616497360237.jpg',1,1,'郑州东郊','2021-03-23 19:02:52'),(2,'a22','张22',2,'410224199610232022','17703789922','http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616497394438.jpg',19,1,'北京朝阳区朝阳街道','2021-03-23 19:05:01'),(3,'a33','张33',2,'410224199610232033','17703789933','http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616497549075.jpg',23,2,'北京2环','2021-03-23 19:06:01'),(4,'a44','张44',1,'410224199610232014','17703789994','http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616501239140.jpg',19,1,'郑州东郊','2021-03-23 20:07:32');

/*Table structure for table `nianshen` */

DROP TABLE IF EXISTS `nianshen`;

CREATE TABLE `nianshen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_id` int(11) DEFAULT NULL COMMENT '车辆',
  `nianshen_time` timestamp NULL DEFAULT NULL COMMENT '年审日期',
  `nianshen_types` int(11) DEFAULT NULL COMMENT '年审结果  ',
  `nianshen_number` int(11) DEFAULT NULL COMMENT '年审费用  ',
  `nianshen_photo` varchar(200) DEFAULT NULL COMMENT '年审照片',
  `nianshen_content` varchar(200) DEFAULT NULL COMMENT '年审备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='年审';

/*Data for the table `nianshen` */

insert  into `nianshen`(`id`,`car_id`,`nianshen_time`,`nianshen_types`,`nianshen_number`,`nianshen_photo`,`nianshen_content`,`create_time`) values (1,1,'2021-03-23 00:00:00',2,998,'http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616500566834.jpg','无\r\n','2021-03-23 19:56:11'),(2,1,'2020-03-21 00:00:00',2,78,'http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616500596462.jpg','是\r\n','2021-03-23 19:57:39'),(3,2,'2021-03-22 00:00:00',1,998,'http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616501337576.jpg','年审通过\r\n','2021-03-23 20:09:09'),(4,2,'2020-03-16 00:00:00',1,87,'http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616501373663.jpg','年审通过\r\n','2021-03-23 20:10:03');

/*Table structure for table `shigu` */

DROP TABLE IF EXISTS `shigu`;

CREATE TABLE `shigu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_id` int(11) DEFAULT NULL COMMENT '车辆',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '事故时间  ',
  `shigu_types` int(11) DEFAULT NULL COMMENT '事故类型  ',
  `shigu_photo` varchar(200) DEFAULT NULL COMMENT '事故照片',
  `shiguchuli_types` int(11) DEFAULT NULL COMMENT '是否处理  ',
  `shigu_content` varchar(200) DEFAULT NULL COMMENT '事故备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='事故';

/*Data for the table `shigu` */

insert  into `shigu`(`id`,`car_id`,`insert_time`,`shigu_types`,`shigu_photo`,`shiguchuli_types`,`shigu_content`,`create_time`) values (1,1,'2021-03-23 20:00:27',4,'http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616500819389.jpg',1,'','2021-03-23 20:00:27');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','5nw41x72g8q6y4bb6myrmaoswplyj5j2','2021-03-23 16:13:10','2021-03-23 21:01:55'),(2,1,'a1','yonghu','用户','bd2zrfgj0gzbddkvjshwmp2j7gvttww5','2021-03-23 20:11:19','2021-03-23 21:14:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-23 16:08:44','日常公告','日常公告','公告信息','2021-03-23 16:08:44'),(2,'2021-03-23 16:08:44','紧急公告','紧急公告','公告信息','2021-03-23 16:08:44'),(3,'2021-03-23 16:08:44','其他公告','其他公告','公告信息','2021-03-23 16:08:44');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`sex_types`,`id_number`,`phone`,`yonghu_photo`,`nation`,`politics_types`,`address`,`create_time`) values (1,'a1','123456','张1',2,'410224199610232011','17703789991','http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616487603316.jpg','汉',1,'郑州东郊11','2021-03-23 16:20:09'),(2,'a2','123456','张2',1,'410224199610232012','17703789992','http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616487625865.jpg','汉',2,'北京朝阳区朝阳街道','2021-03-23 16:20:32'),(3,'a3','123456','张3',2,'410224199610232013','17703789993','http://localhost:8080/chuzucheguanlixitong/file/download?fileName=1616500965738.jpg','汉',2,'郑州东郊','2021-03-23 20:03:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
