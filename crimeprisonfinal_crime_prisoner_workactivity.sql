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
-- Table structure for table `crime_prisoner_workactivity`
--

DROP TABLE IF EXISTS `crime_prisoner_workactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prisoner_workactivity` (
  `WORK_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PRISONER_ID` int(10) NOT NULL,
  `NO_OF_HOURS_WORKED` int(5) NOT NULL,
  `TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`WORK_ID`),
  KEY `FK_PRISONER_ACTIVITY` (`PRISONER_ID`),
  CONSTRAINT `FK_PRISONER_ACTIVITY` FOREIGN KEY (`PRISONER_ID`) REFERENCES `crime_prisoner` (`PRISONER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prisoner_workactivity`
--

LOCK TABLES `crime_prisoner_workactivity` WRITE;
/*!40000 ALTER TABLE `crime_prisoner_workactivity` DISABLE KEYS */;
INSERT INTO `crime_prisoner_workactivity` VALUES (1,1,10,'2015-12-07 21:30:13'),(2,1,10,'2015-12-07 21:30:41'),(3,2,10,'2015-12-07 21:31:19'),(4,2,10,'2015-12-07 21:31:21'),(5,3,10,'2015-12-07 21:31:19'),(6,3,10,'2015-12-07 21:31:24'),(7,4,10,'2015-12-07 21:31:24'),(8,4,10,'2015-12-07 21:31:25'),(9,5,10,'2015-12-07 21:31:24'),(10,5,10,'2015-12-07 21:31:25'),(11,6,10,'2015-12-07 21:32:28'),(12,6,10,'2015-12-07 21:32:29'),(13,6,10,'2015-12-07 21:32:30'),(14,7,10,'2015-12-07 21:32:29'),(15,7,10,'2015-12-07 21:32:30'),(16,7,10,'2015-12-07 21:32:31'),(17,8,10,'2015-12-07 21:32:31'),(18,8,10,'2015-12-07 21:32:32');
/*!40000 ALTER TABLE `crime_prisoner_workactivity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 21:57:35
