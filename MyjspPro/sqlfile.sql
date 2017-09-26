/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - news
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`news` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `news`;

/*Table structure for table `follow` */

DROP TABLE IF EXISTS `follow`;

CREATE TABLE `follow` (
  `uid` int(11) default NULL,
  `fto` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `follow` */

insert  into `follow`(`uid`,`fto`) values (12,17),(12,18);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `usid` int(20) NOT NULL auto_increment,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `follow` int(20) default NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY  (`usid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`usid`,`uname`,`pass`,`follow`,`type`) values (11,'Prince ','q',0,1),(12,'Prince Jain','q',3,3),(13,'princd jain','q',0,3),(17,'ABP NEWS','q',0,2),(18,'AAJ TAK','Q',0,2);

/*Table structure for table `ndetaile` */

DROP TABLE IF EXISTS `ndetaile`;

CREATE TABLE `ndetaile` (
  `nid` int(20) NOT NULL auto_increment,
  `ntopic` varchar(40) default NULL,
  `ntype` int(2) default NULL,
  `ntext` varchar(400) default NULL,
  `nch` int(20) default NULL,
  PRIMARY KEY  (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `ndetaile` */

insert  into `ndetaile`(`nid`,`ntopic`,`ntype`,`ntext`,`nch`) values (2,'topic 1',2,'aaaaaaaaaaaaaa',17),(3,'topic 2',1,'bbbbbbbbbbb',18),(4,'topic 3',2,'cccccccccccc',17),(5,'topic 4',3,'dddddddddddd',18),(6,'topic 5',4,'eeeeeeeee',17);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
