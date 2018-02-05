# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: local_help
# Generation Time: 2018-02-05 14:59:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table inventories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inventories`;

CREATE TABLE `inventories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `holder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deslocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `it_non_it` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;

INSERT INTO `inventories` (`id`, `item`, `item_number`, `holder`, `deslocation`, `it_non_it`, `created_at`, `updated_at`)
VALUES
	(13,'Печатка','00001','Tashak','315',NULL,NULL,NULL),
	(14,'Системний блок Intel i5-4590/RAM','00002','Khrypko','Склад',NULL,NULL,NULL),
	(15,'Монітор Philips 27','00003','Fabuliak','308',NULL,NULL,NULL),
	(16,'Вебкамера Logitech С270','00004','Fabuliak','318',NULL,NULL,NULL),
	(17,'Миша А4 Tech','00005','Fabuliak','308',NULL,NULL,NULL),
	(18,'Клавіатура А4 Tech KV-300 H USB','00007','Fabuliak','316',NULL,NULL,NULL),
	(19,'Книга наказів','00008','Tashak','315',NULL,NULL,NULL),
	(813,'Мишка 4tech N-600X','00660','Yuriy Sarkisov','308',NULL,NULL,NULL),
	(819,'Системний блок Intel i5-4590/RAM','00026','Fabuliak','Storage',NULL,'2018-01-23 11:36:52','2018-01-23 11:36:52'),
	(820,'Системний блок Intel i5-4590/RAM','00152','Liapandra','IT',NULL,'2018-01-23 12:02:04','2018-01-23 12:02:04'),
	(821,'pc','00054','Test','Tres',NULL,'2018-01-23 13:27:03','2018-01-23 13:27:03'),
	(822,'Test_PC','00011','Tester','It',NULL,'2018-01-23 16:18:12','2018-01-23 16:18:12'),
	(823,'Second_Test_PC','00012','Tester','Storage',NULL,'2018-01-23 16:18:41','2018-01-23 16:18:41'),
	(824,'gt','00552','Face','PD',NULL,'2018-01-24 12:11:38','2018-01-24 12:11:38');

/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2018_01_18_113210_inventory',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table movements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movements`;

CREATE TABLE `movements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `holder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deslocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `it_non_it` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
