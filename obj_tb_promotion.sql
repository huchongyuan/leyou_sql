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

/*Table structure for table `tb_promotion` */

DROP TABLE IF EXISTS `tb_promotion`;

CREATE TABLE `tb_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '促销活动id',
  `type` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT '活动类型，目前可选的有：0没有促销，1满减，2满额送抵扣券，3秒杀',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '促销活动说明',
  `condition` bigint(20) DEFAULT '0' COMMENT '满减条件，秒杀的话设置为0',
  `reduction` bigint(20) DEFAULT '0' COMMENT '满减后的折扣金额',
  `seckill_price` bigint(20) DEFAULT '0' COMMENT '秒杀价格，如果是秒杀活动，需要填写',
  `coupon_id` bigint(20) DEFAULT '0' COMMENT '满额送券，关联的优惠券id',
  `targets` varchar(255) NOT NULL DEFAULT '' COMMENT '作用的目标sku的id拼接，以'',''拼接',
  `start_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `end_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_promotion` */

set autocommit=0;

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
