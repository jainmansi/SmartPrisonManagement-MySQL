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
-- Table structure for table `crime_prisoner_movement_alert`
--

DROP TABLE IF EXISTS `crime_prisoner_movement_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prisoner_movement_alert` (
  `RESTRICTED_ALERT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PRISONER_ID` int(11) NOT NULL,
  `MOVEMENT_ID` int(11) DEFAULT NULL,
  `ALERT_MESSAGE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RESTRICTED_ALERT_ID`),
  KEY `FK_PRISONER_ID` (`PRISONER_ID`),
  KEY `FK_MOVEMENT_ID` (`MOVEMENT_ID`),
  CONSTRAINT `FK_MOVEMENT_ID` FOREIGN KEY (`MOVEMENT_ID`) REFERENCES `crime_prisoner_movement` (`MOVEMENT_ID`),
  CONSTRAINT `FK_PRISONER_ID` FOREIGN KEY (`PRISONER_ID`) REFERENCES `crime_prisoner` (`PRISONER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prisoner_movement_alert`
--

LOCK TABLES `crime_prisoner_movement_alert` WRITE;
/*!40000 ALTER TABLE `crime_prisoner_movement_alert` DISABLE KEYS */;
INSERT INTO `crime_prisoner_movement_alert` VALUES (1,2,5,'Prisoner has entered the restricted area'),(2,3,6,'Prisoner has entered the restricted area'),(3,4,7,'Prisoner has entered the restricted area'),(4,7,10,'Prisoner has entered the restricted area');
/*!40000 ALTER TABLE `crime_prisoner_movement_alert` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 21:57:33
