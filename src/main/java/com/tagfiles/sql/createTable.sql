/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.27-log : Database - tag_files
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tag_files` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `tag_files`;

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件路径，建议数据为${BASE}/xxx/a.text',
  `path_base` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '对应字段"file_path"字段的${BASE}',
  `tags` text COLLATE utf8mb4_unicode_ci COMMENT '该文件所属的标签,多个以英文逗号分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `files` */

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签名称',
  `description` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签描述',
  `weight` int(10) NOT NULL COMMENT '标签权重',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_uni` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tags` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
