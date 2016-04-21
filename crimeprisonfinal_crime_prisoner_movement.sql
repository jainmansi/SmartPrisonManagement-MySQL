CREATE DATABASE  IF NOT EXISTS `crimeprisonfinal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `crimeprisonfinal`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: crimeprisonfinal
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `crime_prisoner_movement`
--

DROP TABLE IF EXISTS `crime_prisoner_movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prisoner_movement` (
  `MOVEMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRISONER_ID` int(11) NOT NULL,
  `location` point DEFAULT NULL,
  `LAST_UPD_TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`MOVEMENT_ID`),
  KEY `FK_PRISON_MOVEMENT` (`PRISONER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prisoner_movement`
--

LOCK TABLES `crime_prisoner_movement` WRITE;
/*!40000 ALTER TABLE `crime_prisoner_movement` DISABLE KEYS */;
INSERT INTO `crime_prisoner_movement` VALUES (4,1,'\0\0\0\0\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0\0*@','2015-12-07 21:22:14'),(5,2,'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@','2015-12-07 21:22:14'),(6,3,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@','2015-12-07 21:22:14'),(7,4,'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0','2015-12-07 21:22:14'),(8,5,'\0\0\0\0\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0\0*@','2015-12-07 21:22:14'),(9,6,'\0\0\0\0\0\0\0\0\0\0\0\0\0Y@\0\0\0\0\0\0\0\0','2015-12-07 21:22:15'),(10,7,'\0\0\0\0\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0@','2015-12-07 21:22:15'),(11,8,'\0\0\0\0\0\0\0\0\0\0\0\0\0M@\0\0\0\0\0\0\0\0','2015-12-07 21:22:15'),(12,9,'\0\0\0\0\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0@U@','2015-12-07 21:22:15'),(13,10,'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0À‚@','2015-12-07 21:22:15'),(14,11,'\0\0\0\0\0\0\0\0\0\0\0\0\0Y@\0\0\0\0\0\0@','2015-12-07 21:22:15'),(15,12,'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0i@','2015-12-07 21:22:15');
/*!40000 ALTER TABLE `crime_prisoner_movement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 21:57:31
