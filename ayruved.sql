/*
SQLyog Ultimate v8.55 
MySQL - 5.1.30-community : Database - ayruved
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ayruved` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ayruved`;

/*Table structure for table `email` */

DROP TABLE IF EXISTS `email`;

CREATE TABLE `email` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender` varchar(20) DEFAULT NULL,
  `receiver` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `email` */

insert  into `email`(`id`,`sender`,`receiver`,`date`,`subject`,`message`) values (20,'ankit','abc\r\n','2013-03-30 21:11:52','Regarding the diesease :- fever','sir  i am suffering from fever since 10 days..\r\n');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`,`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`uid`,`uname`,`passwd`,`type`,`fname`,`lname`,`address`,`mobile`) values (1,'admin','admin','admin','administrator','admin','indore','1234567890'),(2,'abc','abc','doctor','Dr.Yogesh Shah','Shah','indore','2345678902'),(3,'xyz','xyz','doctor','Dr. Mahesh Soni','Soni','Delhi','9826012345'),(4,'ankit','ankit','User','ankit','abc','mhow','9999999999');

/*Table structure for table `maintype` */

DROP TABLE IF EXISTS `maintype`;

CREATE TABLE `maintype` (
  `mid` int(20) NOT NULL AUTO_INCREMENT,
  `maintype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `maintype` */

insert  into `maintype`(`mid`,`maintype`) values (1,'malaria'),(2,'mirgain'),(3,'cancer');

/*Table structure for table `prescription` */

DROP TABLE IF EXISTS `prescription`;

CREATE TABLE `prescription` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `mid` int(20) DEFAULT NULL,
  `sid` int(20) DEFAULT NULL,
  `dr` varchar(50) DEFAULT NULL,
  `pres` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `prescription` */

insert  into `prescription`(`id`,`mid`,`sid`,`dr`,`pres`) values (1,1,1,'Dr. Yogesh Shah','Applying a paste of sandalwood powder on the forehead of the patient is also beneficial. The paste can be prepared by mixing a little water in sandalwood powder.'),(2,1,1,'Dr. Mahesh Soni','Mix half a teaspoon of turmeric powder in a cup of warm milk and one teaspoon honey or some other sweetener. Take this decoction twice a day.'),(3,3,7,'Dr.Yogesh Shah','Eat lots of tulsi leaves.');

/*Table structure for table `subtype` */

DROP TABLE IF EXISTS `subtype`;

CREATE TABLE `subtype` (
  `sid` int(20) NOT NULL AUTO_INCREMENT,
  `mid` int(20) DEFAULT NULL,
  `subname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `NewIndex1` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `subtype` */

insert  into `subtype`(`sid`,`mid`,`subname`) values (1,1,'Type A'),(2,1,'Tyoe B'),(3,1,'Type C'),(4,2,'Type 1'),(5,2,'Type 2'),(6,3,'Skin'),(7,3,'Mouth'),(8,3,'lungs'),(9,3,'Blood');

/*Table structure for table `symptom` */

DROP TABLE IF EXISTS `symptom`;

CREATE TABLE `symptom` (
  `ssid` int(20) NOT NULL AUTO_INCREMENT,
  `mid` int(20) DEFAULT NULL,
  `sid` int(20) DEFAULT NULL,
  `symptoms` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ssid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `symptom` */

insert  into `symptom`(`ssid`,`mid`,`sid`,`symptoms`) values (1,2,4,'Regular headache for long period'),(2,1,1,'stomach ache,fever'),(3,1,2,'fever,chill,pain in legs'),(4,3,6,'Unexplained weight loss,Pain,Skin changes,Change in bowel habits or bladder function');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
