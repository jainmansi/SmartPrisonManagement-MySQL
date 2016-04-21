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
-- Table structure for table `crime_prisoner_history`
--

DROP TABLE IF EXISTS `crime_prisoner_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prisoner_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `PRISONER_ID` int(11) NOT NULL,
  `PRISONER_FIRSTNAME` varchar(20) NOT NULL,
  `PRISONER_LAST_NAME` varchar(20) NOT NULL,
  `PRISONER_PHOTO` blob,
  `PRISONER_IDENTITY_MARK` varchar(20) DEFAULT NULL,
  `BIRTH_DATE` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_ENTRY` date NOT NULL,
  `NATIONALITY` varchar(20) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `prisoner_mapping` int(11) NOT NULL,
  `LAST_UPD_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message_log` varchar(50) DEFAULT NULL,
  `CRIME_RECORD_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prisoner_history`
--

LOCK TABLES `crime_prisoner_history` WRITE;
/*!40000 ALTER TABLE `crime_prisoner_history` DISABLE KEYS */;
INSERT INTO `crime_prisoner_history` VALUES (2,1,'Andrew','Nirmal',NULL,'Mole on right hand','1965-03-01','Male','2015-04-05','American','Texas',9,'2015-12-08 09:00:02','UPDATED',109);
/*!40000 ALTER TABLE `crime_prisoner_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 21:57:38
