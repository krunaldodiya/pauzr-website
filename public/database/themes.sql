# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.16)
# Database: pauzr_website
# Generation Time: 2019-08-18 06:36:27 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
	(3,'2019_04_05_111511_create_themes_table',1),
	(4,'2019_04_05_123208_create_projects_table',1),
	(5,'2019_04_05_141628_create_screens_table',1),
	(6,'2020_04_05_111527_create_tags_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'zekFUtG3Kp4HNpVe',
  `default_theme_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;

INSERT INTO `projects` (`id`, `user_id`, `name`, `description`, `secret_key`, `default_theme_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'My Project',NULL,'zekFUtG3Kp4HNpVe',2,'2019-08-16 05:12:22','2019-08-16 09:54:22');

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table screens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `screens`;

CREATE TABLE `screens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `screens` WRITE;
/*!40000 ALTER TABLE `screens` DISABLE KEYS */;

INSERT INTO `screens` (`id`, `project_id`, `key`, `name`, `created_at`, `updated_at`)
VALUES
	(1,1,'intro_slider_1','Intro Slider 1','2019-08-16 05:20:38','2019-08-16 05:20:38'),
	(2,1,'intro_slider_2','Intro Slider 2','2019-08-16 08:27:55','2019-08-16 08:27:55'),
	(3,1,'intro_slider_3','Intro Slider 3','2019-08-16 08:30:32','2019-08-16 08:30:32'),
	(4,1,'intro_slider_4','Intro Slider 4','2019-08-16 08:30:39','2019-08-16 08:30:39');

/*!40000 ALTER TABLE `screens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint(20) unsigned NOT NULL,
  `theme_id` bigint(20) unsigned NOT NULL,
  `screen_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_project_id_foreign` (`project_id`),
  KEY `tags_theme_id_foreign` (`theme_id`),
  KEY `tags_screen_id_foreign` (`screen_id`),
  CONSTRAINT `tags_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tags_screen_id_foreign` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tags_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `project_id`, `theme_id`, `screen_id`, `type`, `key`, `value`, `description`, `created_at`, `updated_at`)
VALUES
	(7,1,1,1,'String','text','Select the time you want to pause your phone for','text','2019-08-16 06:51:41','2019-08-16 09:51:42'),
	(8,1,2,1,'String','text','Select the time you want to pause your phone for','text','2019-08-16 06:51:41','2019-08-16 06:53:40'),
	(9,1,1,1,'String','image','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Hrithik_at_Rado_launch.jpg/220px-Hrithik_at_Rado_launch.jpg','image','2019-08-16 06:51:55','2019-08-16 09:51:49'),
	(10,1,2,1,'String','image','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Hrithik_at_Rado_launch.jpg/220px-Hrithik_at_Rado_launch.jpg','image','2019-08-16 06:51:55','2019-08-16 06:53:33'),
	(11,1,1,1,'String','backgroundColor','#000000','background color','2019-08-16 06:52:11','2019-08-16 09:51:54'),
	(12,1,2,1,'String','backgroundColor','#0D62A2','background color','2019-08-16 06:52:11','2019-08-16 09:24:01'),
	(17,1,1,2,'String','text','Use points to get freebies/gifts','text','2019-08-16 08:36:02','2019-08-16 08:36:02'),
	(18,1,2,2,'String','text','Use points to get freebies/gifts','text','2019-08-16 08:36:02','2019-08-16 08:36:02'),
	(19,1,1,2,'String','image','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Hrithik_at_Rado_launch.jpg/220px-Hrithik_at_Rado_launch.jpg','image','2019-08-16 08:36:24','2019-08-16 08:36:24'),
	(20,1,2,2,'String','image','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Hrithik_at_Rado_launch.jpg/220px-Hrithik_at_Rado_launch.jpg','image','2019-08-16 08:36:24','2019-08-16 08:36:24'),
	(21,1,1,2,'String','backgroundColor','#000000','background color','2019-08-16 08:36:48','2019-08-16 09:51:58'),
	(22,1,2,2,'String','backgroundColor','#0D62A2','background color','2019-08-16 08:36:48','2019-08-16 09:24:05'),
	(27,1,1,3,'String','text','Compete at national/city level to enter ‘Winners’ list','text','2019-08-16 08:37:58','2019-08-16 08:37:58'),
	(28,1,2,3,'String','text','Compete at national/city level to enter ‘Winners’ list','text','2019-08-16 08:37:58','2019-08-16 08:37:58'),
	(29,1,1,3,'String','image','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Hrithik_at_Rado_launch.jpg/220px-Hrithik_at_Rado_launch.jpg','image','2019-08-16 08:38:10','2019-08-16 08:38:10'),
	(30,1,2,3,'String','image','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Hrithik_at_Rado_launch.jpg/220px-Hrithik_at_Rado_launch.jpg','image','2019-08-16 08:38:10','2019-08-16 08:38:10'),
	(31,1,1,3,'String','backgroundColor','#000000','backgroundColor','2019-08-16 08:38:25','2019-08-16 09:52:08'),
	(32,1,2,3,'String','backgroundColor','#0D62A2','backgroundColor','2019-08-16 08:38:25','2019-08-16 09:24:08'),
	(37,1,1,4,'String','text','Create groups with friends, family for more fun','text','2019-08-16 08:39:35','2019-08-16 08:39:35'),
	(38,1,2,4,'String','text','Create groups with friends, family for more fun','text','2019-08-16 08:39:35','2019-08-16 08:39:35'),
	(39,1,1,4,'String','image','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Hrithik_at_Rado_launch.jpg/220px-Hrithik_at_Rado_launch.jpg','image','2019-08-16 08:40:13','2019-08-16 08:40:13'),
	(40,1,2,4,'String','image','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Hrithik_at_Rado_launch.jpg/220px-Hrithik_at_Rado_launch.jpg','image','2019-08-16 08:40:13','2019-08-16 08:40:13'),
	(41,1,1,4,'String','backgroundColor','#000000','backgroundColor','2019-08-16 08:40:29','2019-08-16 09:52:11'),
	(42,1,2,4,'String','backgroundColor','#0D62A2','backgroundColor','2019-08-16 08:40:29','2019-08-16 09:24:12'),
	(43,1,1,1,'String','key','1','key','2019-08-18 06:32:41','2019-08-18 06:32:41'),
	(44,1,2,1,'String','key','1','key','2019-08-18 06:32:41','2019-08-18 06:32:41'),
	(45,1,1,2,'String','key','2','key','2019-08-18 06:33:28','2019-08-18 06:34:48'),
	(46,1,2,2,'String','key','2','key','2019-08-18 06:33:28','2019-08-18 06:34:30'),
	(47,1,1,3,'String','key','3','key','2019-08-18 06:33:46','2019-08-18 06:34:52'),
	(48,1,2,3,'String','key','3','key','2019-08-18 06:33:46','2019-08-18 06:34:33'),
	(49,1,1,4,'String','key','4','key','2019-08-18 06:33:55','2019-08-18 06:35:01'),
	(50,1,2,4,'String','key','4','key','2019-08-18 06:33:55','2019-08-18 06:34:38');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table themes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `themes`;

CREATE TABLE `themes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;

INSERT INTO `themes` (`id`, `project_id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,1,'Black','2019-08-16 05:12:22','2019-08-16 05:12:22'),
	(2,1,'Blue','2019-08-16 05:22:33','2019-08-16 05:22:33');

/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'krunal dodiya','kunal.dodiya1@gmail.com',NULL,'$2y$10$nDSXYJ4pZC34FH9fUWFB5Oq.NGcB3dq6M4AyAx3D3sfMT5obaeZCS',NULL,'2019-08-16 05:12:22','2019-08-16 05:12:22');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
