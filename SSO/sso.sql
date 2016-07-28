/*
SQLyog Community v8.6 Beta2
MySQL - 5.0.26-community : Database - sso
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sso` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sso`;

/*Table structure for table `tb_app` */

DROP TABLE IF EXISTS `tb_app`;

CREATE TABLE `tb_app` (
  `app_id` bigint(20) NOT NULL auto_increment,
  `app_name` text,
  `app_info` text,
  `app_phone` text,
  `app_state` int(11) default NULL,
  `create_time` datetime default NULL,
  `owner_id` bigint(20) default NULL,
  `modify_time` datetime default NULL,
  PRIMARY KEY  (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_app` */

/*Table structure for table `tb_group` */

DROP TABLE IF EXISTS `tb_group`;

CREATE TABLE `tb_group` (
  `group_id` bigint(20) NOT NULL auto_increment,
  `group_url` text,
  `app_id` bigint(20) default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_group` */

/*Table structure for table `tb_url` */

DROP TABLE IF EXISTS `tb_url`;

CREATE TABLE `tb_url` (
  `url_id` bigint(20) NOT NULL auto_increment,
  `url_group` bigint(20) default NULL,
  `url_content` text,
  PRIMARY KEY  (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_url` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `user_id` bigint(20) NOT NULL auto_increment,
  `user_name` text,
  `user_password` text,
  `user_state` int(11) default NULL,
  `app_id` bigint(20) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`user_id`,`user_name`,`user_password`,`user_state`,`app_id`) values (1,'admin','123456',1,1);

/*Table structure for table `user_group` */

DROP TABLE IF EXISTS `user_group`;

CREATE TABLE `user_group` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` bigint(20) default NULL,
  `group_id` bigint(20) default NULL,
  `app_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_group` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
