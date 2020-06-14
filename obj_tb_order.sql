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

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `total_pay` bigint(20) NOT NULL COMMENT '总金额，单位为分',
  `actual_pay` bigint(20) NOT NULL COMMENT '实付金额。单位:分。如:20007，表示:200元7分',
  `promotion_ids` varchar(255) COLLATE utf8_bin DEFAULT '',
  `payment_type` tinyint(1) unsigned zerofill NOT NULL COMMENT '支付类型，1、在线支付，2、货到付款',
  `post_fee` bigint(20) NOT NULL COMMENT '邮费。单位:分。如:20007，表示:200元7分',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `shipping_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流单号',
  `user_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户id',
  `buyer_message` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '买家留言',
  `buyer_nick` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '买家昵称',
  `buyer_rate` tinyint(1) DEFAULT NULL COMMENT '买家是否已经评价,0未评价，1已评价',
  `receiver_state` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '收获地址（省）',
  `receiver_city` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '收获地址（市）',
  `receiver_district` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '收获地址（区/县）',
  `receiver_address` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '收获地址（街道、住址等详细地址）',
  `receiver_mobile` varchar(12) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人手机',
  `receiver_zip` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人邮编',
  `receiver` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人',
  `invoice_type` int(1) DEFAULT '0' COMMENT '发票类型(0无发票1普通发票，2电子发票，3增值税发票)',
  `source_type` int(1) DEFAULT '2' COMMENT '订单来源：1:app端，2：pc端，3：M端，4：微信端，5：手机qq端',
  PRIMARY KEY (`order_id`),
  KEY `create_time` (`create_time`),
  KEY `buyer_nick` (`buyer_nick`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_order` */

set autocommit=0;

insert DELAYED  into `tb_order`(`order_id`,`total_pay`,`actual_pay`,`promotion_ids`,`payment_type`,`post_fee`,`create_time`,`shipping_name`,`shipping_code`,`user_id`,`buyer_message`,`buyer_nick`,`buyer_rate`,`receiver_state`,`receiver_city`,`receiver_district`,`receiver_address`,`receiver_mobile`,`receiver_zip`,`receiver`,`invoice_type`,`source_type`) values (992320617728577536,199900,199900,'',2,0,'2018-05-04 16:30:46',NULL,NULL,'16',NULL,'huge',0,'上海','上海','浦东新区','航头镇航头路18号传智播客 3号楼','15800000000','210000','虎哥',0,2),(992320724226150400,169900,169900,'',2,0,'2018-05-04 16:31:12',NULL,NULL,'16',NULL,'huge',0,'上海','上海','浦东新区','航头镇航头路18号传智播客 3号楼','15800000000','210000','虎哥',0,2),(992320901993336832,142900,142900,'',2,0,'2018-05-04 16:31:54',NULL,NULL,'16',NULL,'huge',0,'上海','上海','浦东新区','航头镇航头路18号传智播客 3号楼','15800000000','210000','虎哥',0,2),(992342776106586112,322800,322800,'',2,0,'2018-05-04 17:58:49',NULL,NULL,'16',NULL,'huge',0,'上海','上海','浦东新区','航头镇航头路18号传智播客 3号楼','15800000000','210000','虎哥',0,2);

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
