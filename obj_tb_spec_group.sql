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

/*Table structure for table `tb_spec_group` */

DROP TABLE IF EXISTS `tb_spec_group`;

CREATE TABLE `tb_spec_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cid` bigint(20) NOT NULL COMMENT '商品分类id,一个分类下有多个规格组',
  `name` varchar(50) NOT NULL COMMENT '规格组的名称',
  PRIMARY KEY (`id`),
  KEY `key_category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规格参数的分组表,每个商品分类下有多个规格组';

/*Data for the table `tb_spec_group` */

set autocommit=0;

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
