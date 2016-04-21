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
-- Table structure for table `crime_prisoner_parole`
--

DROP TABLE IF EXISTS `crime_prisoner_parole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prisoner_parole` (
  `PAROLE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PRISONER_ID` int(11) NOT NULL,
  `EXIT_DATE` date NOT NULL,
  `REENTRY_DATE` date DEFAULT NULL,
  `PAROLE_REASON` varchar(30) NOT NULL,
  PRIMARY KEY (`PAROLE_ID`),
  KEY `FK_PRISONER_PAROLE` (`PRISONER_ID`),
  CONSTRAINT `FK_PRISONER_PAROLE` FOREIGN KEY (`PRISONER_ID`) REFERENCES `crime_prisoner` (`PRISONER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prisoner_parole`
--

LOCK TABLES `crime_prisoner_parole` WRITE;
/*!40000 ALTER TABLE `crime_prisoner_parole` DISABLE KEYS */;
INSERT INTO `crime_prisoner_parole` VALUES (1,1,'2015-12-19','2016-01-19','Marriage'),(2,2,'2015-12-12','2015-01-12','Medical Emergency'),(3,3,'2015-11-11','2015-01-01','Family emergency'),(4,4,'1888-12-20','2015-01-01','Family emergency'),(5,5,'2000-12-25','2015-01-02','Medical Emergency'),(6,6,'2000-12-12','2015-01-03','Family emergency'),(7,7,'2000-12-14','2015-01-04','Medical Emergency'),(8,8,'2000-12-18','2015-01-05','Medical Emergency'),(9,9,'2000-12-13','2015-01-06','Medical Emergency'),(10,10,'2000-12-12','2015-01-07','Medical Emergency');
/*!40000 ALTER TABLE `crime_prisoner_parole` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 21:57:32
