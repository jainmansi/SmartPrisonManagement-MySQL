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
-- Table structure for table `crime_health_alert`
--

DROP TABLE IF EXISTS `crime_health_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_health_alert` (
  `ALERT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PRISONER_ID` int(11) NOT NULL,
  `HEALTH_ID` int(11) NOT NULL,
  `ALERT_MESSAGE` varchar(100) DEFAULT NULL,
  `LAST_UPD_TIMESTAMP` datetime NOT NULL,
  PRIMARY KEY (`ALERT_ID`),
  KEY `fk_crime_prisonerhealth_1` (`PRISONER_ID`),
  KEY `fk_crime_prisonerhealth_2` (`HEALTH_ID`),
  CONSTRAINT `fk_crime_prisonerhealth_1` FOREIGN KEY (`PRISONER_ID`) REFERENCES `crime_prisoner` (`PRISONER_ID`),
  CONSTRAINT `fk_crime_prisonerhealth_2` FOREIGN KEY (`HEALTH_ID`) REFERENCES `crime_prisonerhealth_log` (`HEALTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_health_alert`
--

LOCK TABLES `crime_health_alert` WRITE;
/*!40000 ALTER TABLE `crime_health_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `crime_health_alert` ENABLE KEYS */;
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
