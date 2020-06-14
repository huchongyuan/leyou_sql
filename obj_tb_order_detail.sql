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

/*Table structure for table `tb_order_detail` */

DROP TABLE IF EXISTS `tb_order_detail`;

CREATE TABLE `tb_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单详情id ',
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `sku_id` bigint(20) NOT NULL COMMENT 'sku商品id',
  `num` int(11) NOT NULL COMMENT '购买数量',
  `title` varchar(200) NOT NULL COMMENT '商品标题',
  `own_spec` varchar(1000) DEFAULT '' COMMENT '商品动态属性键值集',
  `price` bigint(20) NOT NULL COMMENT '价格,单位：分',
  `image` varchar(200) DEFAULT '' COMMENT '商品图片',
  PRIMARY KEY (`id`),
  KEY `key_order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='订单详情表';

/*Data for the table `tb_order_detail` */

set autocommit=0;

insert DELAYED  into `tb_order_detail`(`id`,`order_id`,`sku_id`,`num`,`title`,`own_spec`,`price`,`image`) values (19,992320617728577536,27179308371,1,'锤子（smartisan） 坚果32 手机  4GB 4GB 炫黑色特别版 27179308371','{\"机身颜色\":\"炫黑色特别版\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}',199900,'http://image.leyou.com/images/1/5/1524297608684.jpg'),(20,992320724226150400,27038143959,1,'锤子（smartisan） 坚果32 手机  4GB 4GB 酒红色 27038143959','{\"机身颜色\":\"酒红色\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}',169900,'http://image.leyou.com/images/8/14/1524297608290.jpg'),(21,992320901993336832,10987960993,1,'华为（HUAWEI） nova 智能手机 4G手机 皓月银 (4G+64G)高配','{\"机身颜色\":\"皓月银\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}',142900,'http://image.leyou.com/images/10/5/1524297467695.jpg'),(22,992342776106586112,27179308373,1,'锤子（smartisan） 坚果32 手机  4GB 4GB 炫红色特别版 27179308373','{\"机身存储\":\"4GB\",\"内存\":\"4GB\",\"机身颜色\":\"炫红色特别版\"}',179900,'http://image.leyou.com/images/5/11/1524297608996.jpg'),(23,992342776106586112,10987960993,1,'华为（HUAWEI） nova 智能手机 4G手机 皓月银 (4G+64G)高配','{\"机身颜色\":\"皓月银\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}',142900,'http://image.leyou.com/images/10/5/1524297467695.jpg');

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
