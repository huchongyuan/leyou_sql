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

/*Table structure for table `tb_specification` */

DROP TABLE IF EXISTS `tb_specification`;

CREATE TABLE `tb_specification` (
  `category_id` bigint(20) NOT NULL COMMENT '规格模板所属商品分类id',
  `specifications` varchar(3000) NOT NULL DEFAULT '' COMMENT '规格参数模板，json格式',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规格参数模板，json格式。';

/*Data for the table `tb_specification` */

set autocommit=0;

insert DELAYED  into `tb_specification`(`category_id`,`specifications`) values (76,'[{\"group\":\"主体\",\"params\":[{\"k\":\"品牌\",\"searchable\":false,\"global\":true,\"options\":[]},{\"k\":\"型号\",\"searchable\":false,\"global\":true,\"options\":[]},{\"k\":\"上市年份\",\"searchable\":false,\"global\":true,\"options\":[],\"numerical\":true,\"unit\":\"年\"}]},{\"group\":\"基本信息\",\"params\":[{\"k\":\"机身颜色\",\"searchable\":false,\"global\":false,\"options\":[]},{\"k\":\"机身重量（g）\",\"searchable\":false,\"global\":true,\"options\":[],\"numerical\":true,\"unit\":\"g\"},{\"k\":\"机身材质工艺\",\"searchable\":false,\"global\":true,\"options\":[]}]},{\"group\":\"操作系统\",\"params\":[{\"k\":\"操作系统\",\"searchable\":true,\"global\":true,\"options\":[\"安卓\",\"IOS\",\"Windows\",\"功能机\"]}]},{\"group\":\"主芯片\",\"params\":[{\"k\":\"CPU品牌\",\"searchable\":true,\"global\":true,\"options\":[\"骁龙（Snapdragon)\",\"麒麟\"]},{\"k\":\"CPU型号\",\"searchable\":false,\"global\":true,\"options\":[]},{\"k\":\"CPU核数\",\"searchable\":true,\"global\":true,\"options\":[\"一核\",\"二核\",\"四核\",\"六核\",\"八核\",\"十核\"]},{\"k\":\"CPU频率\",\"searchable\":true,\"global\":true,\"options\":[],\"numerical\":true,\"unit\":\"GHz\"}]},{\"group\":\"存储\",\"params\":[{\"k\":\"内存\",\"searchable\":true,\"global\":false,\"options\":[\"1GB及以下\",\"2GB\",\"3GB\",\"4GB\",\"6GB\",\"8GB\"],\"numerical\":false,\"unit\":\"\"},{\"k\":\"机身存储\",\"searchable\":true,\"global\":false,\"options\":[\"8GB及以下\",\"16GB\",\"32GB\",\"64GB\",\"128GB\",\"256GB\"],\"numerical\":false,\"unit\":\"\"}]},{\"group\":\"屏幕\",\"params\":[{\"k\":\"主屏幕尺寸（英寸）\",\"searchable\":true,\"global\":true,\"options\":[],\"numerical\":true,\"unit\":\"英寸\"},{\"k\":\"分辨率\",\"searchable\":false,\"global\":true,\"options\":[]}]},{\"group\":\"摄像头\",\"params\":[{\"k\":\"前置摄像头\",\"searchable\":true,\"global\":true,\"options\":[],\"numerical\":true,\"unit\":\"万\"},{\"k\":\"后置摄像头\",\"searchable\":true,\"global\":true,\"options\":[],\"numerical\":true,\"unit\":\"万\"}]},{\"group\":\"电池信息\",\"params\":[{\"k\":\"电池容量（mAh）\",\"searchable\":true,\"global\":true,\"options\":[],\"numerical\":true,\"unit\":\"mAh\"}]}]'),(90,'[{\"group\":\"主体\",\"params\":[{\"k\":\"品牌\",\"searchable\":false,\"global\":true,\"numerical\":false,\"unit\":\"\",\"options\":[]},{\"k\":\"适用机型\",\"searchable\":false,\"global\":false,\"numerical\":false,\"unit\":\"\",\"options\":[]}]},{\"group\":\"规格尺寸\",\"params\":[{\"k\":\"贴膜尺寸\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"英寸\",\"options\":[]},{\"k\":\"材质\",\"searchable\":true,\"global\":true,\"numerical\":false,\"unit\":\"\",\"options\":[\"钢化玻璃\",\"水凝膜\"]},{\"k\":\"类型\",\"searchable\":true,\"global\":true,\"numerical\":false,\"unit\":\"\",\"options\":[\"前膜\",\"后膜\",\"磨砂\",\"防指纹\",\"高透膜\"]}]}]'),(105,'[{\"group\":\"主体参数\",\"params\":[{\"k\":\"品牌\",\"searchable\":false,\"global\":true,\"numerical\":false,\"unit\":\"\",\"options\":[]},{\"k\":\"型号\",\"searchable\":false,\"global\":false,\"numerical\":false,\"unit\":\"\",\"options\":[]},{\"k\":\"产品颜色\",\"searchable\":false,\"global\":true,\"numerical\":false,\"unit\":\"\",\"options\":[]},{\"k\":\"上市日期\",\"searchable\":false,\"global\":true,\"numerical\":false,\"unit\":\"\",\"options\":[]},{\"k\":\"能效等级\",\"searchable\":true,\"global\":true,\"numerical\":false,\"unit\":\"\",\"options\":[\"一级能效\",\"二级能效\",\"三级能效\",\"政府节能\"]}]},{\"group\":\"显示参数\",\"params\":[{\"k\":\"屏幕尺寸\",\"searchable\":true,\"global\":false,\"numerical\":true,\"unit\":\"英寸\",\"options\":[]},{\"k\":\"屏幕分辨率\",\"searchable\":true,\"global\":true,\"numerical\":false,\"unit\":\"\",\"options\":[\"超高清\",\"全高清\",\"高清\"]}]}]');

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
