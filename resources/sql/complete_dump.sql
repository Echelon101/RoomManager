-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: its16_frostmoon
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priv_id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsnr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_5D9F75A1749855C2` (`priv_id`),
  CONSTRAINT `FK_5D9F75A1749855C2` FOREIGN KEY (`priv_id`) REFERENCES `priv` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,3,'Timo','Strüker','timomrx1@gmail.com','$2y$10$2pb6O.jjrR8EJxRJKooFBe1HWsx8nlYmU3WYu0uzIcueyo5plmKqO','TestCompany','DE58140500585620','GENODEF1PIN','015238798283','Danziger Str','50','Quickborn','de','25451','4b9783d0-8877-4822-b1fb-316ff13505d5',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priv_id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsnr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5D9F75A1749855C1` (`priv_id`),
  CONSTRAINT `FK_5D9F75A1749855C1` FOREIGN KEY (`priv_id`) REFERENCES `priv` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'Timo','Strüker','timo.strueker@yahoo.de','$2y$10$QS3TSGF4PcnbZCgCdbVdN.RXJUsauoik2flntQu3Sm8YW5A9eRJ96','57c3d0a5-5bdd-4af7-a04e-a67e70c87e42','','','','',''),(2,4,'Timo','Strüker','timomrx1@yahoo.de','$2y$10$QS3TSGF4PcnbZCgCdbVdN.RXJUsauoik2flntQu3Sm8YW5A9eRJ96','25a73b55-1b58-4c49-8ca4-2a391640f5c8','50','Danziger Str','Quickborn','34567890','25451');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsnr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Buchenweg','1','Norderstedt','22850','Deutschland');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `last_edit_employee_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `last_edit_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F52993986BF700BD` (`status_id`),
  KEY `IDX_F52993989395C3F3` (`customer_id`),
  KEY `IDX_F5299398B07F531E` (`last_edit_employee_id`),
  CONSTRAINT `FK_F52993986BF700BD` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`id`),
  CONSTRAINT `FK_F52993989395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_F5299398B07F531E` FOREIGN KEY (`last_edit_employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,NULL,1,'2018-12-29 13:18:32');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_room`
--

DROP TABLE IF EXISTS `order_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_room` (
  `order_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`order_id`,`room_id`),
  KEY `IDX_3F6E6B8C54177093` (`room_id`),
  KEY `IDX_3F6E6B8C8D9F6D38` (`order_id`),
  CONSTRAINT `FK_3F6E6B8C54177093` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_3F6E6B8C8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_room`
--

LOCK TABLES `order_room` WRITE;
/*!40000 ALTER TABLE `order_room` DISABLE KEYS */;
INSERT INTO `order_room` VALUES (1,1,1),(1,2,1);
/*!40000 ALTER TABLE `order_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'open'),(2,'running'),(3,'declined'),(4,'cancelled');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priv`
--

DROP TABLE IF EXISTS `priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priv_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priv`
--

LOCK TABLES `priv` WRITE;
/*!40000 ALTER TABLE `priv` DISABLE KEYS */;
INSERT INTO `priv` VALUES (1,'admin',0),(2,'anonymous',999),(3,'customer',400),(4,'employee',300),(5,'employer',200),(6,'authenticated',500);
/*!40000 ALTER TABLE `priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type_id` int(11) NOT NULL,
  `room_key_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_name_uindex` (`name`),
  KEY `IDX_729F519B296E3073` (`room_type_id`),
  KEY `IDX_729F519B4C5A93F2` (`room_key_id`),
  KEY `IDX_729F519B64D218E` (`location_id`),
  CONSTRAINT `FK_729F519B296E3073` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`id`),
  CONSTRAINT `FK_729F519B4C5A93F2` FOREIGN KEY (`room_key_id`) REFERENCES `room_key` (`id`),
  CONSTRAINT `FK_729F519B64D218E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,5,1,'1_5'),(2,1,7,1,'2_5');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_key`
--

DROP TABLE IF EXISTS `room_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL,
  `room_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_key_uuid_uindex` (`uuid`),
  KEY `IDX_881616B46BF700BD` (`status_id`),
  CONSTRAINT `FK_881616B46BF700BD` FOREIGN KEY (`status_id`) REFERENCES `room_key_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_key`
--

LOCK TABLES `room_key` WRITE;
/*!40000 ALTER TABLE `room_key` DISABLE KEYS */;
INSERT INTO `room_key` VALUES (1,3,'12345','c56730cb-982d-41f4-a10b-b8eecf958768'),(2,3,'08953377','ff27b40d-7c49-4e90-8187-2256bb650f44'),(3,3,'11127762','ef55e6bb-0d98-40c6-9a82-5d7accaafdaf'),(4,3,'49332546','baf2d666-eaf6-449b-881a-7333a2ee4f70'),(5,1,'21807188','4a3eb892-d8f1-4ac1-a7db-a9636824e945'),(6,3,'05840080','0aef83b4-34a2-4576-946a-edbf6136773f'),(7,1,'12828353','0ebebf4f-f578-416c-aebc-6cee39ce3b5e');
/*!40000 ALTER TABLE `room_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_key_status`
--

DROP TABLE IF EXISTS `room_key_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_key_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_key_status`
--

LOCK TABLES `room_key_status` WRITE;
/*!40000 ALTER TABLE `room_key_status` DISABLE KEYS */;
INSERT INTO `room_key_status` VALUES (1,'active'),(2,'expired'),(3,'revoked');
/*!40000 ALTER TABLE `room_key_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `size` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,5,5),(2,15,10),(3,50,50);
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `priv` int(11) DEFAULT NULL,
  `function` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `routes_name_uindex` (`name`),
  UNIQUE KEY `routes_route_uindex` (`route`),
  KEY `FK_route_priv` (`priv`),
  CONSTRAINT `FK_route_priv` FOREIGN KEY (`priv`) REFERENCES `priv` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,'index','/',2,'index'),(2,'login','/login',2,'login'),(3,'register','/register',2,'register'),(4,'logoff','/logout',2,'logoff'),(5,'dump','/debug/dump',2,'dump'),(6,'adminusercreate','/admin/user/new',1,'admin_user_create'),(7,'arrays','/debug/arrays',1,'test_array'),(8,'createroute','/admin/route/create',1,'create_route'),(9,'deleteroute','/admin/route/delete',1,'delete_route'),(10,'routes','/admin/routes',1,'list_routes'),(11,'customer_profile','/customer/profile',3,'customer_profile'),(13,'customer_profile_edit','/customer/profile/edit',3,'customer_profile_edit'),(14,'customer_dashboard','/customer',3,'customer_dashboard'),(15,'debug_if','/debug/if',1,'debug_if'),(16,'admin_dashboard','/admin',1,'admin_dashboard'),(17,'employee_dashboard','/employee',4,'employee_dashboard'),(18,'order_actions','/actions/orders',6,'order_actions'),(19,'employee_profile','/employee/profile',4,'employee_profile'),(20,'employee_profile_edit','/employee/profile/edit',4,'employee_profile_edit'),(21,'user_actions','/actions/users',4,'user_actions'),(22,'key_actions','/actions/keys',6,'key_actions');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_uuid` varchar(36) NOT NULL,
  `user_uuid` varchar(36) NOT NULL,
  `session_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_session_uuid_uindex` (`session_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (2,'81e55b27-2118-50b7-b873-3d4f20e9b18e','25a73b55-1b58-4c49-8ca4-2a391640f5c8','2018-12-29 12:49:57','2018-12-29 12:40:28',0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(3,'ce6d0916-d24d-5936-a6e6-16390988d874','4b9783d0-8877-4822-b1fb-316ff13505d5','2018-12-29 19:59:01','2018-12-29 12:50:06',0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(4,'dd6a6167-b7e8-5186-9ba7-eca9dca66f26','57c3d0a5-5bdd-4af7-a04e-a67e70c87e42','2018-12-29 20:02:48','2018-12-29 20:02:48',0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(5,'42bdf900-e7c8-505f-b50a-ed5f5402d02c','57c3d0a5-5bdd-4af7-a04e-a67e70c87e42','2018-12-29 20:09:22','2018-12-29 20:09:21',0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(6,'22734501-17d2-5761-8266-836c4f9864e4','57c3d0a5-5bdd-4af7-a04e-a67e70c87e42','2018-12-29 20:13:15','2018-12-29 20:13:15',0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(7,'3e31302e-8760-523c-b775-a6176fba90b8','57c3d0a5-5bdd-4af7-a04e-a67e70c87e42','2019-01-01 20:28:40','2019-01-01 20:22:39',0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(8,'8c748ca0-d4cd-5811-9fb9-4231f22db786','4b9783d0-8877-4822-b1fb-316ff13505d5','2019-01-01 20:40:31','2019-01-01 20:28:54',0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(9,'cf8f42f6-989d-56c5-bf49-46aedf3c128a','57c3d0a5-5bdd-4af7-a04e-a67e70c87e42','2019-01-06 15:01:19','2019-01-06 15:00:46',0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(10,'a1e90cf0-977f-5f9a-9afd-a68ac10ab89a','25a73b55-1b58-4c49-8ca4-2a391640f5c8','2019-01-06 20:55:35','2019-01-06 15:01:30',1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),(11,'30aa6db4-eeab-5983-8606-1a8db2361b36','57c3d0a5-5bdd-4af7-a04e-a67e70c87e42','2019-01-06 19:01:39','2019-01-06 16:02:02',1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-06 22:13:14
