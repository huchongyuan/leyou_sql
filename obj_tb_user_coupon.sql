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

/*Table structure for table `tb_user_coupon` */

DROP TABLE IF EXISTS `tb_user_coupon`;

CREATE TABLE `tb_user_coupon` (
  `coupon_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '每张优惠券的编号',
  `coupon_id` bigint(20) NOT NULL COMMENT '优惠卷id（coupon表的id）',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `status` enum('0','1','2','3') NOT NULL COMMENT '是否使用，0、未使用  1、已使用  2、已过期',
  PRIMARY KEY (`coupon_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户持有优惠券的使用情况表';

/*Data for the table `tb_user_coupon` */

set autocommit=0;

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
