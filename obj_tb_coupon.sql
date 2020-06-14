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

/*Table structure for table `tb_coupon` */

DROP TABLE IF EXISTS `tb_coupon`;

CREATE TABLE `tb_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '优惠卷id',
  `name` varchar(20) NOT NULL COMMENT '优惠卷名称',
  `type` enum('1','2') NOT NULL COMMENT '优惠卷类型,1、抵扣  2、折扣(打折）',
  `condition` bigint(20) DEFAULT '0' COMMENT '抵扣或折扣条件，如果没有限制，则设置为0',
  `reduction` bigint(20) DEFAULT '0' COMMENT '优惠金额',
  `discount` int(3) DEFAULT '100' COMMENT '如果没有折扣，为100。如果是八五折，折扣为85',
  `targets` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券可以生效的sku的id拼接，以,分割',
  `stock` int(6) NOT NULL COMMENT '剩余优惠券数量',
  `start_time` datetime NOT NULL COMMENT '优惠券生效时间',
  `end_time` datetime NOT NULL COMMENT '优惠券失效时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠卷表';

/*Data for the table `tb_coupon` */

set autocommit=0;

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
