CREATE DATABASE  IF NOT EXISTS `reg_tab_info` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `reg_tab_info`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: localhost    Database: reg_tab_info
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `twoflightsregistrationinfo`
--

DROP TABLE IF EXISTS `twoflightsregistrationinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twoflightsregistrationinfo` (
  `id` varchar(255) NOT NULL,
  `flight1` bigint(20) DEFAULT NULL,
  `flight2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_84ll5f9oornlox6jslykm9x7p` (`flight1`),
  KEY `FK_i82w7j8ngq3tu7idg8bv0o2am` (`flight2`),
  CONSTRAINT `FK_84ll5f9oornlox6jslykm9x7p` FOREIGN KEY (`flight1`) REFERENCES `regularflight` (`id`),
  CONSTRAINT `FK_i82w7j8ngq3tu7idg8bv0o2am` FOREIGN KEY (`flight2`) REFERENCES `regularflight` (`id`),
  CONSTRAINT `FK_t2c3b3dkbye407q28qkjp9mw2` FOREIGN KEY (`id`) REFERENCES `monitorinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twoflightsregistrationinfo`
--

LOCK TABLES `twoflightsregistrationinfo` WRITE;
/*!40000 ALTER TABLE `twoflightsregistrationinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `twoflightsregistrationinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-23  6:48:38