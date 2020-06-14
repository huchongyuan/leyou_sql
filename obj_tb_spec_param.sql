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

/*Table structure for table `tb_spec_param` */

DROP TABLE IF EXISTS `tb_spec_param`;

CREATE TABLE `tb_spec_param` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cid` bigint(20) NOT NULL COMMENT '商品分类id',
  `group_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '参数名',
  `numeric` tinyint(1) NOT NULL COMMENT '是否是数字类型 true是 false否',
  `unit` varchar(255) DEFAULT '' COMMENT '数字类型的单位,非数字类型可以为空',
  `generic` tinyint(1) NOT NULL COMMENT '是否是sku通用属性,true或者false',
  `searching` tinyint(1) NOT NULL COMMENT '是否用于搜索过滤,true或者false',
  `segments` varchar(1000) DEFAULT '' COMMENT '数值类型参数如果需要搜索则添加分类字段值',
  PRIMARY KEY (`id`),
  KEY `key_group` (`group_id`),
  KEY `key_category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规格参数组下的参数名称';

/*Data for the table `tb_spec_param` */

set autocommit=0;

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
