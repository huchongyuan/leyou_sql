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

/*Table structure for table `tb_order_status` */

DROP TABLE IF EXISTS `tb_order_status`;

CREATE TABLE `tb_order_status` (
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `status` int(1) DEFAULT NULL COMMENT '状态：1、未付款 2、已付款,未发货 3、已发货,未确认 4、交易成功 5、交易关闭 6、已评价',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `payment_time` datetime DEFAULT NULL COMMENT '付款时间',
  `consign_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `comment_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '评价时间',
  PRIMARY KEY (`order_id`),
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单状态表';

/*Data for the table `tb_order_status` */

set autocommit=0;

insert DELAYED  into `tb_order_status`(`order_id`,`status`,`create_time`,`payment_time`,`consign_time`,`end_time`,`close_time`,`comment_time`) values (992320617728577536,1,'2018-05-04 16:30:46',NULL,NULL,NULL,NULL,NULL),(992320724226150400,1,'2018-05-04 16:31:12',NULL,NULL,NULL,NULL,NULL),(992320901993336832,3,'2018-05-04 16:31:54','2018-05-02 18:51:41','2018-05-04 18:51:51',NULL,NULL,'2018-05-04 18:51:59'),(992342776106586112,2,'2018-05-04 17:58:49','2018-05-04 18:51:30',NULL,NULL,NULL,'2018-05-04 18:51:33');

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
