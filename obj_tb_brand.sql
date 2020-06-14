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

/*Table structure for table `tb_brand` */

DROP TABLE IF EXISTS `tb_brand`;

CREATE TABLE `tb_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `name` varchar(50) NOT NULL COMMENT '品牌名称',
  `image` varchar(200) DEFAULT '' COMMENT '品牌图片地址',
  `letter` char(1) DEFAULT '' COMMENT '品牌的首字母',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325403 DEFAULT CHARSET=utf8 COMMENT='品牌表，一个品牌下有多个商品（spu），一对多关系';

/*Data for the table `tb_brand` */

set autocommit=0;

insert DELAYED  into `tb_brand`(`id`,`name`,`image`,`letter`) values (1115,'HTC','','H'),(1528,'LG','','L'),(1912,'NEC','','N'),(2032,'OPPO','http://img10.360buyimg.com/popshop/jfs/t2119/133/2264148064/4303/b8ab3755/56b2f385N8e4eb051.jpg','O'),(2505,'TCL','','T'),(3177,'爱贝多','','A'),(3539,'安桥（ONKYO）','','A'),(3941,'白金（PLATINUM）','','B'),(4986,'波导（BiRD）','','B'),(6522,'朵唯（DOOV）','','D'),(6742,'飞利浦（PHILIPS）','http://img12.360buyimg.com/popshop/jfs/t18361/122/1318410299/1870/36fe70c9/5ac43a4dNa44a0ce0.jpg','F'),(7174,'富可视（InFocus）','','F'),(7203,'富士通（Fujitsu）','','F'),(7420,'格力（GREE）','','G'),(7817,'海尔（Haier）','http://image.leyou.com/group1/M00/00/00/wKg4ZVrYZcyAVOzoAAB846UcmLg013.png','H'),(7888,'海信（Hisense）','','H'),(8214,'黑莓（BlackBerry）','','H'),(8551,'华硕（ASUS）','','H'),(8557,'华为（HUAWEI）','http://img10.360buyimg.com/popshop/jfs/t5662/36/8888655583/7806/1c629c01/598033b4Nd6055897.jpg','H'),(8740,'惠普（HP）','','H'),(9420,'金立（Gionee）','','J'),(9637,'京瓷（KYOCERA）','','J'),(10317,'康佳（KONKA）','','K'),(10640,'酷派（Coolpad）','http://img10.360buyimg.com/popshop/jfs/t2521/347/883897149/3732/91c917ec/5670cf96Ncffa2ae6.jpg','K'),(11516,'联想（Lenovo）','http://img11.360buyimg.com/popshop/jfs/t6799/74/1348425607/15774/bc286188/59804c98N1944175e.jpg','L'),(12286,'漫步者（EDIFIER）','','M'),(12669,'魅族（MEIZU）','http://img13.360buyimg.com/popshop/jfs/t3511/131/31887105/4943/48f83fa9/57fdf4b8N6e95624d.jpg','M'),(13066,'摩托罗拉（Motorola）','','M'),(13539,'诺基亚（NOKIA）','http://img11.360buyimg.com/popshop/jfs/t2572/102/189476501/7717/16cc5814/563b33d4N6c59780c.jpg','N'),(14026,'Apple','http://img12.360buyimg.com/popshop/jfs/t2989/240/151377693/3895/30ad9044/574d36dbN262ef26d.jpg','A'),(14478,'青橙（GreenOrange）','','Q'),(15127,'三星（SAMSUNG）','http://img14.360buyimg.com/popshop/jfs/t2701/34/484677369/7439/ee13e8fa/5716e2c4Nc925baf3.jpg','S'),(15539,'神舟（HASEE）','','S'),(16506,'索爱（soaiy）','','S'),(16538,'索尼（SONY）','','S'),(16975,'天语（K-Touch）','','T'),(17193,'外星人（Alienware）','','W'),(17424,'威图','','W'),(17440,'微软（Microsoft）','','W'),(18078,'NAMO','','N'),(18362,'小辣椒','http://img14.360buyimg.com/popshop/g14/M00/09/10/rBEhV1K6uOwIAAAAAAAGxx0kTvQAAHWYwPIloIAAAbf434.png','X'),(18374,'小米（MI）','http://img10.360buyimg.com/popshop/jfs/t7084/169/439244907/4647/724c7958/598042c9N6e4e79e5.jpg','X'),(20130,'优思（Uniscope）','','Y'),(20710,'长虹（CHANGHONG）','','C'),(21011,'中兴（ZTE）','http://img13.360buyimg.com/popshop/jfs/t2551/271/1317227522/3284/7419745e/56a855a3Ne38ee719.jpg','Z'),(21360,'beats','','b'),(21553,'本易（BENEVE）','','B'),(22261,'tonino lamborghini','','T'),(22575,'布鲁雅尔（Blueair）','','B'),(23049,'广信（KINGSUN）','','G'),(23130,'夏普（SHARP）','http://img12.360buyimg.com/popshop/jfs/t2458/315/2153417538/12751/2ff4e617/56b15fe9Naae1551d.jpg','X'),(25376,'马歇尔（Marshall）','','M'),(25591,'vivo','http://img13.360buyimg.com/popshop/jfs/t2458/318/1092287831/5774/b7b4ff89/563b3484N9ba68e13.jpg','V'),(27094,'努比亚（nubia）','http://img14.360buyimg.com/popshop/jfs/t2101/155/882410684/3730/b24b14db/5631cd12N7548352d.jpg','N'),(27306,'360','http://img10.360buyimg.com/popshop/jfs/t5182/149/2437584670/15334/2e1ebf3/591aa1abN602ebecf.jpg','S'),(32315,'其他','','Q'),(36404,'金圣达（GRSED）','','J'),(36652,'贝尔丰（BIFER）','','B'),(36654,'大显（DaXian）','','D'),(36657,'朗界（RugGear）','','L'),(38125,'SUGAR','','S'),(38126,'美图（meitu）','http://img14.360buyimg.com/popshop/jfs/t3553/225/1930378991/5787/c2ebdd72/5836e479N88a98abb.jpg','M'),(38605,'MANN','','M'),(43644,'21KE','','E'),(45227,'易百年','','Y'),(45693,'威途（vertu）','','V'),(45757,'欧奇（ouki）','','o'),(49144,'SPIGEN','','S'),(50450,'亿和源（YHYON）','','Y'),(51040,'BIHEE','','B'),(52302,'优购（UooGou）','','Y'),(53317,'迪美（DIM）','','D'),(54347,'尼凯恩（neken）','','N'),(55524,'B&O PLAY','','B'),(56411,'誉品（YEPEN）','','Y'),(59110,'诺亚信（NOAIN）','','N'),(60106,'奥乐迪奥（AoleDior）','','A'),(63032,'一加','http://img14.360buyimg.com/popshop/jfs/t2398/233/975959106/6263/a786f5b8/563b33ffN9c288c6c.jpg','Y'),(63833,'雷蛇（Razer）','','L'),(68927,'詹姆士（GERMY）','','G'),(89010,'纽曼（Newman）','','N'),(91515,'锤子（smartisan）','http://img13.360buyimg.com/popshop/jfs/t1954/102/907711365/5487/9f26868f/5631ccdeNe8df5efb.jpg','C'),(102501,'赛博宇华（SOP）','','S'),(104490,'谷歌（Google）','','G'),(109150,'爱贝多（Babyfit）','','A'),(110303,'万利达（Malata）','','W'),(113718,'优它（YOTAPHONE）','','Y'),(114119,'TETC','','T'),(123856,'炫华（xuanhua）','','X'),(128080,'托尼洛·兰博基尼（Tonino Lamborghini）','','T'),(129098,'木糖醇（MuTuCu）','','M'),(130455,'爱玛（EMMA）','','A'),(131546,'硕尼姆（Sonim）','','S'),(133747,'CAT','','C'),(134922,'ZUK','','Z'),(135967,'sungee','','S'),(149070,'AGM','','A'),(151370,'SOYES','','S'),(151844,'KODAK','','K'),(155608,'施耐德（schneider）','','S'),(159313,'MOQI','','M'),(174275,'Essentials','','E'),(178969,'SAMWEI','','S'),(179105,'小霸王（SUBOR）','','X'),(179528,'VETAS','','V'),(179624,'优学派','','Y'),(180213,'纽曼（Newman）','','N'),(194213,'DEVIALET','','D'),(196065,'SHANGPREE','','S'),(197126,'IMOO','','I'),(203084,'FNNI','','F'),(204089,'小格雷','','X'),(205278,'COTTEE','','C'),(209178,'YAAO','','Y'),(214915,'纽曼','','N'),(219484,'CONQUEST','','C'),(221149,'铂爵（BIOJUET）','','B'),(222294,'荣耀','','R'),(223023,'保千里（PROTRULY）','','B'),(223199,'Blu','','B'),(223316,'unruly','','U'),(225085,'Tonino Lamborghini','','T'),(228280,'守护宝','','S'),(233984,'8848','','B'),(234746,'Gold Elite','','G'),(238798,'HONOR','','H'),(240112,'BIXING','','B'),(246053,'锐族','','R'),(247149,'国美（GOME）','','G'),(247652,'中兴健康（ZTE Health）','','Z'),(248132,'YOSTAR','','Y'),(249404,'创星','','C'),(253520,'VERTU','','V'),(261196,'LBER','','L'),(261480,'滝风（ION MEDIC）','','L'),(262180,'梦幻门（MENG HUAN MEN）','','M'),(262334,'意龍（E&L）','','Y'),(264451,'艾尼卡（Anica）','','A'),(265247,'DMZ DAMUZHI','','D'),(267981,'UNNO','','U'),(271696,'红鸟','','H'),(276102,'紐萬（Niuwan）','','N'),(276381,'Podor','','B'),(276780,'海语（HAIYU）','','H'),(278268,'YISON','','Y'),(278755,'SOAP','','S'),(279173,'renebelle','','R'),(280120,'AKESR','','A'),(280152,'YOTA','','Y'),(284571,'HOOLFINE','','H'),(285331,'金柏利','','J'),(286273,'BLACKPOULO','','B'),(287292,'SIMPLEWAY','','S'),(290104,'KaiDC','','K'),(290682,'奥缇斯（autrise）','','A'),(302250,'橄榄树（Olive tree）','','G'),(304654,'HIGE','','H'),(314866,'360手机','','S'),(316578,'克里特（kreta）','','k'),(316596,'HOOLFINE','','H'),(316618,'RONXS','','R'),(325396,'飞利浦（PHILIPS）','','P'),(325398,'比亚兹（ESK）','','B'),(325399,'亿色(ESR)','','Y'),(325401,'黑马','http://image.leyou.com/group1/M00/00/00/wKg4ZVro8haAdtRLAALAv4YTyno368.png','H'),(325402,'产品01',NULL,'D');

COMMIT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
