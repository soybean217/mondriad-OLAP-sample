/*
SQLyog Community v11.1 (64 bit)
MySQL - 5.6.27 : Database - demo_mondriad
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`demo_mondriad` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `demo_mondriad`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cusId` int(11) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`cusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`cusId`,`gender`) values (1,'F'),(2,'M'),(3,'M'),(4,'F');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `proId` int(11) NOT NULL,
  `proTypeId` int(11) DEFAULT NULL,
  `proName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`proId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`proId`,`proTypeId`,`proName`) values (1,1,'洗衣机'),(2,1,'电视机'),(3,2,'mp3'),(4,2,'mp4'),(5,2,'数码相机'),(6,3,'椅子'),(7,3,'桌子');

/*Table structure for table `producttype` */

DROP TABLE IF EXISTS `producttype`;

CREATE TABLE `producttype` (
  `proTypeId` int(11) NOT NULL,
  `proTypeName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`proTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `producttype` */

insert  into `producttype`(`proTypeId`,`proTypeName`) values (1,'电器'),(2,'数码'),(3,'家具');

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `saleId` int(11) NOT NULL,
  `proId` int(11) DEFAULT NULL,
  `cusId` int(11) DEFAULT NULL,
  `unitPrice` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`saleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sale` */

insert  into `sale`(`saleId`,`proId`,`cusId`,`unitPrice`,`number`) values (1,1,1,340.34,2),(2,1,2,140.34,1),(3,2,3,240.34,3),(4,3,4,540.34,4),(5,4,1,80.34,5),(6,5,2,90.34,26),(7,6,3,140.34,7),(8,7,4,640.34,28),(9,6,1,140.34,29),(10,7,2,740.34,29),(11,5,3,30.34,28),(12,4,4,1240.34,72),(13,3,1,314.34,27),(14,3,2,45.34,27);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
