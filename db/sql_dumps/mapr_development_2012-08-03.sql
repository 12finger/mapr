# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.25a)
# Database: mapr_development
# Generation Time: 2012-08-03 13:15:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `gmaps` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `firstname`, `lastname`, `address`, `zip`, `city`, `country`, `created_at`, `updated_at`, `latitude`, `longitude`, `gmaps`)
VALUES
	(2,'Anita-Cornelia-Florica','Kozma','Ultenweg 5','87600','Kaufbeuren','Germany','2012-07-22 13:30:25','2012-08-03 11:02:58',47.8919,10.6222,1),
	(4,'Movi','Stan','Rue des pres Verdy','','Paris','France','2012-07-22 13:31:32','2012-07-22 13:31:32',48.8264,2.20202,1),
	(6,'Patrick','Kozma','Perleberger Str.52','10599','Berlin','Germany','2012-07-22 13:44:24','2012-07-22 13:44:24',52.5314,13.349,1),
	(8,'M','Nie','Mergelteich Str. 51','','Dortmund','Germany','2012-07-29 12:04:49','2012-07-29 12:04:49',51.4717,7.46317,1),
	(13,'Carla ','Kozma','Bahnhofstr. 40a','87616','Marktoberdorf','Deutschland','2012-08-01 14:32:05','2012-08-02 13:26:23',47.7734,10.6124,1),
	(14,'Patrick','Kozma','21 Swan St','7000','North Hobart','Australia','2012-08-02 12:57:42','2012-08-02 13:08:08',-42.8733,147.312,1),
	(19,'Patrick','Kozma','8 Warwick St','7000','North Hobart','Australia','2012-08-03 09:53:39','2012-08-03 09:57:24',-42.8743,147.324,1),
	(20,'Patrick','Kozma','15 Swan St','7000','North Hobart','Australia','2012-08-03 09:59:12','2012-08-03 10:09:10',-42.8733,147.312,NULL),
	(22,'Sabine','Müller','Kieferndamm 30','15566','Berlin','Deutschland','2012-08-03 11:10:33','2012-08-03 11:10:33',52.4634,13.7188,NULL);

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
