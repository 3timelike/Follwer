/*
SQLyog Ultimate v10.00 Beta1
MySQL - 8.0.27 : Database - floowers
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`floowers` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `floowers`;

/*Table structure for table `f_floowers` */

DROP TABLE IF EXISTS `f_floowers`;

CREATE TABLE `f_floowers` (
  `f_id` int NOT NULL AUTO_INCREMENT COMMENT '鲜花的id',
  `f_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '鲜花名称',
  `f_color` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '颜色',
  `f_meaning` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '意义',
  `f_exist_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '花期',
  `f_product_area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产地',
  `f_aroma` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '香味',
  `f_petal_num` int NOT NULL DEFAULT '0' COMMENT '花瓣',
  `f_floower_hign` int NOT NULL DEFAULT '0' COMMENT '高度',
  `is_deleted` int DEFAULT '0' COMMENT '逻辑删除',
  `f_create_date` date DEFAULT NULL COMMENT '上传日期',
  `f_num` int NOT NULL DEFAULT '0' COMMENT '库存',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*Data for the table `f_floowers` */

insert  into `f_floowers`(`f_id`,`f_name`,`f_color`,`f_meaning`,`f_exist_time`,`f_product_area`,`f_aroma`,`f_petal_num`,`f_floower_hign`,`is_deleted`,`f_create_date`,`f_num`) values (3,'3','3','3','3','3','3',3,3,0,'2024-05-23',0),(5,'2','2','2','2','2','2',2,2,0,'2024-05-24',95);

/*Table structure for table `order_back` */

DROP TABLE IF EXISTS `order_back`;

CREATE TABLE `order_back` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `o_id` int NOT NULL,
  `f_id` int NOT NULL,
  `f_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int NOT NULL,
  `o_phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `o_area` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `o_note` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `o_time` timestamp NULL DEFAULT NULL,
  `b_time` timestamp NULL DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Data for the table `order_back` */

insert  into `order_back`(`b_id`,`o_id`,`f_id`,`f_name`,`uid`,`o_phone_num`,`phone_num`,`o_area`,`o_note`,`o_time`,`b_time`,`is_deleted`) values (1,8,5,'2',10,'18574325831','18574325831','啊啊啊','111111','2024-05-25 14:44:36','2024-05-25 14:53:44',0),(2,9,5,'2',10,'18574325831','18574325831','啊啊啊','zz','2024-05-25 15:03:56','2024-05-25 15:04:06',0);

/*Table structure for table `order_floowers` */

DROP TABLE IF EXISTS `order_floowers`;

CREATE TABLE `order_floowers` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `f_id` int NOT NULL,
  `uid` int NOT NULL,
  `o_phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `o_area` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `o_note` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `o_time` timestamp NULL DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `f_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

/*Data for the table `order_floowers` */

insert  into `order_floowers`(`o_id`,`f_id`,`uid`,`o_phone_num`,`phone_num`,`o_area`,`o_note`,`o_time`,`is_deleted`,`f_name`) values (1,1,1,'1','1','1','1','2024-05-24 20:40:54',0,NULL),(2,3,10,'18574325831','18574325831','啊啊啊','aaaaaaaa','2024-05-24 20:49:52',0,NULL),(3,3,10,'131454646531','18574325831','啊啊啊','顶顶顶顶顶顶顶顶顶顶','2024-05-24 20:58:17',0,NULL),(4,3,10,'18574325831','18574325831','啊啊啊','顶顶顶顶顶顶顶顶顶顶顶','2024-05-24 20:58:56',0,NULL),(5,3,10,'18574325831','18574325831','啊啊啊','顶顶顶顶顶顶顶顶顶顶顶','2024-05-24 21:01:11',0,NULL),(6,5,10,'18574325831','18574325831','啊啊啊','22222222222222222','2024-05-24 21:25:35',0,NULL),(10,5,10,'18574325831','18574325831','啊啊啊','...','2024-05-25 20:23:57',0,'2');

/*Table structure for table `s_sign` */

DROP TABLE IF EXISTS `s_sign`;

CREATE TABLE `s_sign` (
  `sign_id` int NOT NULL AUTO_INCREMENT,
  `sign_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign_date` date NOT NULL,
  `sign_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sign_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sign_id`,`sign_date`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

/*Data for the table `s_sign` */

insert  into `s_sign`(`sign_id`,`sign_username`,`sign_date`,`sign_time`,`sign_name`) values (1,'zsyyy','2024-05-21','2024-05-21 13:44:05',''),(2,'zsyyyuuu','2024-05-21','2024-05-21 13:47:48',''),(3,'zsyyyuuu','2024-05-21','2024-05-21 13:47:49',''),(4,'zsyyyuuu','2024-05-21','2024-05-21 13:47:50',''),(5,'zsyyyuuu','2024-05-21','2024-05-21 13:47:51',''),(6,'zsyyyuuu','2024-05-21','2024-05-21 13:47:51',''),(7,'zsyyyuuu','2024-05-21','2024-05-21 13:47:52',''),(8,'zsyyy','2024-05-21','2024-05-21 14:41:46',''),(9,'zsyyy','2024-05-21','2024-05-21 14:50:26',''),(10,'zsyyy','2024-05-21','2024-05-21 14:50:30',''),(11,'zsyyy','2024-05-21','2024-05-21 14:50:58',''),(12,'zsyyy','2024-05-21','2024-05-21 18:12:35',''),(13,'zsyyy','2024-05-21','2024-05-21 18:13:34',''),(14,'zsyyy','2024-05-22','2024-05-22 18:21:31',''),(15,'a','2024-05-22','2024-05-22 19:45:14',''),(16,'d','2024-05-22','2024-05-22 19:47:22',''),(17,'aaa','2024-05-22','2024-05-22 19:52:57',''),(18,'bbb','2024-05-22','2024-05-22 19:56:48',''),(19,'ccc','2024-05-22','2024-05-22 19:57:32','ccc'),(20,'aaaaaa','2024-05-24','2024-05-24 18:50:09','啊啊啊啊');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `gender` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '男' COMMENT '性别',
  `age` int NOT NULL COMMENT '年龄',
  `phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `identify` int NOT NULL DEFAULT '0' COMMENT '身份',
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  PRIMARY KEY (`username`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`name`,`gender`,`age`,`phone_num`,`email`,`avatar`,`is_deleted`,`identify`,`uid`) values ('1234','123456','可乐乐','男',22,'15845615879','2544646464@qq.com',NULL,0,0,1),('a','1','d','男',1,'a','a',NULL,0,0,2),('aaa','2','aaa','男',1,'a','a',NULL,0,0,3),('aaaaa','123456','啊啊啊','男',22,'15645615897','1454564131@qq.com','',0,0,4),('aaaaaa','aaaaaa','啊啊啊啊','男',22,'13131231233','132131311@qq.com','',0,0,5),('adad','23','a','男',1,'34','3232321',NULL,0,0,6),('bbb','2','bbb','男',1,'1','1',NULL,0,0,7),('ccc','2','ccc','男',2,'c','c',NULL,0,0,8),('hmjjjjjjj','123456','呼呼呼','女',33,'18554644563','2424467624@qq.com','02fbb1067e6a440aa7f16c14cf060e0e.jpg',0,0,13),('zsy','123','adada','男',11,'adadad','adadad',NULL,0,1,9),('zsyyy','123456789','张顺一','男',20,'18574325831','2424467624@qq.com','be68d91412524691b9502b4178adf273.jpg',0,0,10),('zsyyyyyy','20221504','哈喽','男',22,NULL,'2424467624@qq.com',NULL,0,0,11),('zyyyyyy','20221504','可乐','男',2,'18574325831','2424467624@qq.com',NULL,0,0,12);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
