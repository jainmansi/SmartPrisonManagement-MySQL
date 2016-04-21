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
-- Table structure for table `crime_prison_staff`
--

DROP TABLE IF EXISTS `crime_prison_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prison_staff` (
  `STAFF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STAFF_NAME` varchar(20) NOT NULL,
  `STAFF_ROLE` varchar(20) NOT NULL,
  `STAFF_MAPPING_ID` int(11) DEFAULT NULL,
  `LAST_UPD_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`STAFF_ID`),
  KEY `FK_CRIME_PRISON_STAFF` (`STAFF_MAPPING_ID`),
  CONSTRAINT `FK_CRIME_PRISON_STAFF` FOREIGN KEY (`STAFF_MAPPING_ID`) REFERENCES `crime_staff_mapping` (`STAFF_MAPPING_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prison_staff`
--

LOCK TABLES `crime_prison_staff` WRITE;
/*!40000 ALTER TABLE `crime_prison_staff` DISABLE KEYS */;
INSERT INTO `crime_prison_staff` VALUES (30,'Yardley','Doctor',39,'2015-12-08 01:05:01'),(31,'Fritz','Doctor',40,'2015-12-08 01:05:02'),(32,'Colin','Doctor',41,'2015-12-08 01:05:02'),(33,'Cooper','Doctor',42,'2015-12-08 01:05:02'),(34,'QuinnMagee','Doctor',43,'2015-12-08 01:05:02'),(35,'Scott','Doctor',44,'2015-12-08 01:05:03'),(36,'Troy','Doctor',45,'2015-12-08 01:05:03'),(37,'John','Doctor',46,'2015-12-08 01:05:03'),(38,'Micheal','Doctor',47,'2015-12-08 01:05:03'),(39,'Richard','Doctor',48,'2015-12-08 01:05:03'),(40,'Curran','Cook',49,'2015-12-08 01:05:03'),(41,'Erich','Cook',50,'2015-12-08 01:05:03'),(42,'Scott','Cook',51,'2015-12-08 01:05:04'),(43,'Troy','Cook',52,'2015-12-08 01:05:04'),(44,'Cooper','Cook',53,'2015-12-08 01:05:04'),(45,'Richard','Cook',54,'2015-12-08 01:05:04'),(46,'Yardley','Cook',55,'2015-12-08 01:05:04'),(47,'Micheal','Cook',56,'2015-12-08 01:05:04'),(48,'Jone','Cook',57,'2015-12-08 01:05:05'),(49,'Ritz','Cook',58,'2015-12-08 01:05:05'),(50,'Rohan','Security',59,'2015-12-08 01:05:05'),(51,'Rohit','Security',60,'2015-12-08 01:05:05'),(52,'Tom','Security',61,'2015-12-08 01:05:05'),(53,'Dick','Security',62,'2015-12-08 01:05:05'),(54,'Harry','Security',63,'2015-12-08 01:05:06'),(55,'Richard','Security',64,'2015-12-08 01:05:06'),(56,'Yardley','Security',65,'2015-12-08 01:05:06'),(57,'Micheal','Security',66,'2015-12-08 01:05:06'),(58,'Jone','Security',67,'2015-12-08 01:05:06'),(59,'Ritz','Security',68,'2015-12-08 01:05:06');
/*!40000 ALTER TABLE `crime_prison_staff` ENABLE KEYS */;
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
