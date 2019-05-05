-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: its16_frostmoon
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'Timo','Strüker','timo.strueker@yahoo.de','$2y$10$QS3TSGF4PcnbZCgCdbVdN.RXJUsauoik2flntQu3Sm8YW5A9eRJ96','57c3d0a5-5bdd-4af7-a04e-a67e70c87e42','','','','',''),(2,5,'Timo','Strüker','timomrx1@yahoo.de','$2y$10$QS3TSGF4PcnbZCgCdbVdN.RXJUsauoik2flntQu3Sm8YW5A9eRJ96','25a73b55-1b58-4c49-8ca4-2a391640f5c8','50','Danziger Str','Quickborn','34567890','25451'),(3,7,'Test','Test','test@test.com','$2y$12$COk/EJoWF2puzwddg6TF/OREpJ4kQntGsTugXTv5QSIOwA/ODE3Ie','93c2af18-2a85-41db-b87f-0b543b398005','50','Dant','Tasda','121324','2345');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exports`
--

DROP TABLE IF EXISTS `exports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_export` datetime NOT NULL,
  `end_export` datetime NOT NULL,
  `filename` varchar(255) NOT NULL,
  `sha` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exports`
--

LOCK TABLES `exports` WRITE;
/*!40000 ALTER TABLE `exports` DISABLE KEYS */;
/*!40000 ALTER TABLE `exports` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
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
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_begin` datetime DEFAULT NULL,
  `contract_end` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `cost` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_uuid_uindex` (`uuid`),
  KEY `IDX_F52993986BF700BD` (`status_id`),
  KEY `IDX_F52993989395C3F3` (`customer_id`),
  KEY `IDX_F5299398B07F531E` (`last_edit_employee_id`),
  CONSTRAINT `FK_F52993986BF700BD` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`id`),
  CONSTRAINT `FK_F52993989395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_F5299398B07F531E` FOREIGN KEY (`last_edit_employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priv`
--

LOCK TABLES `priv` WRITE;
/*!40000 ALTER TABLE `priv` DISABLE KEYS */;
INSERT INTO `priv` VALUES (1,'admin',0),(2,'anonymous',999),(3,'customer',400),(4,'employee',300),(5,'employer',200),(6,'authenticated',500),(7,'accounting',350);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_key`
--

LOCK TABLES `room_key` WRITE;
/*!40000 ALTER TABLE `room_key` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,'index','/',2,'index'),(2,'login','/login',2,'login'),(3,'register','/register',2,'register'),(4,'logoff','/logout',2,'logoff'),(5,'dump','/debug/dump',2,'dump'),(6,'admin_user_create','/admin/user/new',1,'admin_user_create'),(7,'arrays','/debug/arrays',1,'test_array'),(8,'createroute','/admin/route/create',1,'create_route'),(9,'deleteroute','/admin/route/delete',1,'delete_route'),(10,'routes','/admin/routes',1,'list_routes'),(11,'customer_profile','/customer/profile',3,'customer_profile'),(13,'customer_profile_edit','/customer/profile/edit',3,'customer_profile_edit'),(14,'customer_dashboard','/customer',3,'customer_dashboard'),(15,'debug_if','/debug/if',1,'debug_if'),(16,'admin_dashboard','/admin',1,'admin_dashboard'),(17,'employee_dashboard','/employee',4,'employee_dashboard'),(18,'order_actions','/actions/orders',6,'order_actions'),(19,'employee_profile','/employee/profile',4,'employee_profile'),(20,'employee_profile_edit','/employee/profile/edit',4,'employee_profile_edit'),(21,'user_actions','/actions/users',4,'user_actions'),(22,'key_actions','/actions/keys',6,'key_actions'),(23,'employee_actions','/actions/employee',5,'employee_actions'),(24,'employee_list','/employee/employees',5,'list_employees'),(25,'customer_list','/employee/customers',4,'list_customers'),(26,'orders_list','/employee/orders',4,'list_orders'),(27,'employee_user_create','/employee/user/create',5,'employee_user_create'),(28,'employee_edit','/employee/employee/edit',5,'employee_edit'),(29,'key_list','/employee/keys',4,'list_keys'),(30,'create_order','/customer/order/new',3,'create_order'),(31,'legal','/legal',2,'legal'),(32,'create_room','/employee/room/new',5,'create_room'),(33,'password_reset','/password/reset',2,'password_reset'),(34,'room_eval','/employee/eval',5,'room_evaluation'),(35,'create_csv','/employee/csv/new',5,'create_csv'),(37,'download','/download',7,'download'),(38,'csv_actions','/actions/csv',6,'csv_actions'),(39,'password_new','/password/new',2,'password_new');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
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

-- Dump completed on 2019-02-03 23:49:59
