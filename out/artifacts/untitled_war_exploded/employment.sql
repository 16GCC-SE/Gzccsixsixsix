/*
SQLyog Community Edition- MySQL GUI v8.12 
MySQL - 5.1.40-community : Database - employment
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`employment` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `employment`;

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `company` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `industry` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `jianli` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `company` */

/*Table structure for table `stuannounce` */

DROP TABLE IF EXISTS `stuannounce`;

CREATE TABLE `stuannounce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `posi` varchar(30) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `indate` int(10) DEFAULT NULL,
  `remark` text,
  `specialty` varchar(30) DEFAULT NULL,
  `mydate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_stuannounce` (`userid`),
  CONSTRAINT `FK_stuannounce` FOREIGN KEY (`userid`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `stuannounce` */

insert  into `stuannounce`(`id`,`userid`,`posi`,`salary`,`indate`,`remark`,`specialty`,`mydate`) values (8,1,'techo',20000,3,'nothing','computer','2010-10-16 17:26:39'),(9,2,'asdfdfg',1500,7,'no','sdfadfg','2010-10-16 17:27:23'),(10,6,'数学教师',2300,20,'可教高中数学，小学数学。','教育','2010-10-17 10:39:45'),(15,13,'java软件开发工程师',2000,50,'无','计算机软件','2010-10-18 15:34:46');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `university` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `xueli` varchar(20) DEFAULT NULL,
  `jianli` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`username`,`pwd`,`realname`,`age`,`sex`,`birthday`,`university`,`email`,`major`,`xueli`,`jianli`) values (1,'wj','123','qq',23,'1','1200-1-1','sdf','ck5906@163.COM','sad','sad','sagdfg'),(2,'aaa','aaa','null',21,'1','1985-12-1','不详','不详','409144281@qq.com','不详','无'),(6,'az','11','null',45,'1','1045-1-1','不详','不详','409144281','不详','无'),(7,'qw','11','df',23,'1','1985-12-1','不详','不详','409144281@qq.com','不详','无'),(10,'aaa','11','xcv',23,'男','1985-12-1','不详','不详','ck5906@163.COM','不详','无'),(11,'carrie','111','紫菱',25,'女','1985-1-12','西安邮电学院','化学工艺','ck5906@163.COM','化学工艺','无'),(12,'Alex','111','飞雪',21,'男','1990-1-12','西安电子科技大学','国际外语','caifeng_100_2006@126','国际外语','无'),(13,'Alexa','123','无锡',24,'男','1985-1-12','西安外事学院','计算机科学与技术','ck5906@163.COM','计算机科学与技术','无');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
