-- MariaDB dump 10.19  Distrib 10.6.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_warmup_join
-- ------------------------------------------------------
-- Server version	10.6.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `current_guest_room`
--

DROP TABLE IF EXISTS `current_guest_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `current_guest_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guest_id` int(10) unsigned NOT NULL,
  `room_id` int(10) unsigned NOT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `current_guest_room_FK` (`guest_id`),
  KEY `current_guest_room_FK_1` (`room_id`),
  CONSTRAINT `current_guest_room_FK` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `current_guest_room_FK_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_guest_room`
--

LOCK TABLES `current_guest_room` WRITE;
/*!40000 ALTER TABLE `current_guest_room` DISABLE KEYS */;
INSERT INTO `current_guest_room` VALUES (6,1,1,'2022-09-17','2022-09-20'),(7,2,1,'2022-09-17','2022-09-20'),(8,3,2,'2022-09-17','2022-09-20'),(9,4,2,'2022-09-17','2022-09-20'),(10,5,2,'2022-09-17','2022-09-20');
/*!40000 ALTER TABLE `current_guest_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'Gabriel','2022-09-17','15878880999'),(2,'Natalia','2022-09-17','15878880977'),(3,'Daniel','2022-09-17','15878880966'),(4,'Jose','2022-09-17','15878880944'),(5,'Damaris','2022-09-17','15878880971'),(6,'Angelina','2022-09-17','15878880952'),(7,'Chicago','2022-09-17','15878880912'),(8,'Ira','2022-09-17','15878880944'),(9,'Nascimento','2022-09-17','15878880978'),(10,'Pipoca','2022-09-17','15878880900');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historical_guest_room`
--

DROP TABLE IF EXISTS `historical_guest_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historical_guest_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guest_id` int(10) unsigned NOT NULL,
  `room_id` int(10) unsigned NOT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `historical_guest_room_FK` (`guest_id`),
  KEY `historical_guest_room_FK_1` (`room_id`),
  CONSTRAINT `historical_guest_room_FK` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `historical_guest_room_FK_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historical_guest_room`
--

LOCK TABLES `historical_guest_room` WRITE;
/*!40000 ALTER TABLE `historical_guest_room` DISABLE KEYS */;
INSERT INTO `historical_guest_room` VALUES (1,1,1,'2022-09-17','2022-09-20'),(2,2,1,'2022-09-17','2022-09-20'),(3,3,2,'2022-09-17','2022-09-20'),(4,4,2,'2022-09-17','2022-09-20'),(5,5,2,'2022-09-17','2022-09-20'),(6,6,1,'2022-09-17','2022-09-20'),(7,7,1,'2022-09-17','2022-09-20'),(8,8,2,'2022-09-17','2022-09-20'),(9,9,2,'2022-09-17','2022-09-20'),(10,10,2,'2022-09-17','2022-09-20'),(11,1,1,'2022-09-17','2022-09-20'),(12,2,1,'2022-09-17','2022-09-20'),(13,3,2,'2022-09-17','2022-09-20'),(14,4,2,'2022-09-17','2022-09-20'),(15,5,2,'2022-09-17','2022-09-20'),(16,1,1,'2022-09-17','2022-09-20'),(17,2,1,'2022-09-17','2022-09-20'),(18,3,2,'2022-09-17','2022-09-20'),(19,4,2,'2022-09-17','2022-09-20'),(20,5,2,'2022-09-17','2022-09-20'),(21,1,1,'2022-09-17','2022-09-20'),(22,2,1,'2022-09-17','2022-09-20'),(23,3,2,'2022-09-17','2022-09-20'),(24,4,2,'2022-09-17','2022-09-20'),(25,5,2,'2022-09-17','2022-09-20'),(26,1,1,'2022-09-17','2022-09-20'),(27,2,1,'2022-09-17','2022-09-20'),(28,3,2,'2022-09-17','2022-09-20'),(29,4,2,'2022-09-17','2022-09-20'),(30,5,2,'2022-09-17','2022-09-20'),(31,1,1,'2019-01-01','2019-01-02');
/*!40000 ALTER TABLE `historical_guest_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_number` int(10) unsigned DEFAULT NULL,
  `square_feet` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,10,25),(2,11,25),(3,12,25),(4,13,25),(5,14,25),(6,15,25),(7,16,25),(8,17,25),(9,18,25),(10,19,25),(11,20,25),(12,21,25),(13,22,25),(14,23,25),(15,24,25),(16,25,25),(17,26,25),(18,27,25),(19,28,25),(20,29,25),(21,30,50);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_warmup_join'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-17 11:11:56
