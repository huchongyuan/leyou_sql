/*
SQLyog Job Agent v12.08 (64 bit) Copyright(c) Webyog Inc. All Rights Reserved.


MySQL - 5.7.24-log : Database - leyou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`leyou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `leyou`;

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码，加密存储',
  `phone` varchar(20) DEFAULT NULL COMMENT '注册手机号',
  `created` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `tb_user` */

set autocommit=0;

insert DELAYED  into `tb_user`(`id`,`username`,`password`,`phone`,`created`) values (16,'huge','1f8fe7059d1a86060f3a82bfcf2ea06e','13688666688','2018-04-29 16:31:35'),(17,'leyou','9ff12f364c1e1d576a6c031af17c6a2c','13800880088','2018-05-01 09:31:33'),(18,'hehe','ec597888142eb7ae821a6bf3555ffc4f','16888668866','2018-05-01 09:35:29'),(19,'haha','b1e2d0f363b8937b72056d39b933eed9','18999999999','2018-05-01 09:38:22'),(20,'heihei','bffbff3726148ca20b8e1edbb96e7d02','13888888888','2018-05-01 09:38:39'),(21,'hugege','0760bf52d18804f9b1ba9ec2526f74db','13600527634','2018-05-01 18:23:46'),(27,'liuyan','ee15b6016cd78661056c5701d6f343e7','17623672016','2018-05-01 18:25:30');

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
