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
-- Table structure for table `prisoner_restricted_area_temp`
--

DROP TABLE IF EXISTS `prisoner_restricted_area_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prisoner_restricted_area_temp` (
  `AREA_ID` int(11) NOT NULL DEFAULT '0',
  `AREA_NAME` varchar(20) NOT NULL,
  `PRISONER_ID` int(11) NOT NULL,
  `MOVEMENT_ID` int(11) NOT NULL DEFAULT '0',
  `POLYGON_AREA` longtext,
  `LOCATION` longtext,
  `prisoner_location_boolean` varchar(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prisoner_restricted_area_temp`
--

LOCK TABLES `prisoner_restricted_area_temp` WRITE;
/*!40000 ALTER TABLE `prisoner_restricted_area_temp` DISABLE KEYS */;
INSERT INTO `prisoner_restricted_area_temp` VALUES (4,'AREA1',1,4,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(13 13)','no'),(5,'AREA2',1,4,NULL,'POINT(13 13)','no'),(6,'AREA3',1,4,NULL,'POINT(13 13)','no'),(7,'AREA4',1,4,NULL,'POINT(13 13)','no'),(8,'AREA5',1,4,NULL,'POINT(13 13)','no'),(4,'AREA1',2,5,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(5 5)','yes'),(5,'AREA2',2,5,NULL,'POINT(5 5)','no'),(6,'AREA3',2,5,NULL,'POINT(5 5)','no'),(7,'AREA4',2,5,NULL,'POINT(5 5)','no'),(8,'AREA5',2,5,NULL,'POINT(5 5)','no'),(4,'AREA1',3,6,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(0 5)','yes'),(5,'AREA2',3,6,NULL,'POINT(0 5)','no'),(6,'AREA3',3,6,NULL,'POINT(0 5)','no'),(7,'AREA4',3,6,NULL,'POINT(0 5)','no'),(8,'AREA5',3,6,NULL,'POINT(0 5)','no'),(4,'AREA1',4,7,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(5 0)','yes'),(5,'AREA2',4,7,NULL,'POINT(5 0)','no'),(6,'AREA3',4,7,NULL,'POINT(5 0)','no'),(7,'AREA4',4,7,NULL,'POINT(5 0)','no'),(8,'AREA5',4,7,NULL,'POINT(5 0)','no'),(4,'AREA1',5,8,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(13 13)','no'),(5,'AREA2',5,8,NULL,'POINT(13 13)','no'),(6,'AREA3',5,8,NULL,'POINT(13 13)','no'),(7,'AREA4',5,8,NULL,'POINT(13 13)','no'),(8,'AREA5',5,8,NULL,'POINT(13 13)','no'),(4,'AREA1',6,9,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(100 0)','no'),(5,'AREA2',6,9,NULL,'POINT(100 0)','no'),(6,'AREA3',6,9,NULL,'POINT(100 0)','no'),(7,'AREA4',6,9,NULL,'POINT(100 0)','no'),(8,'AREA5',6,9,NULL,'POINT(100 0)','no'),(4,'AREA1',7,10,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(15 5)','yes'),(5,'AREA2',7,10,NULL,'POINT(15 5)','no'),(6,'AREA3',7,10,NULL,'POINT(15 5)','no'),(7,'AREA4',7,10,NULL,'POINT(15 5)','no'),(8,'AREA5',7,10,NULL,'POINT(15 5)','no'),(4,'AREA1',8,11,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(58 0)','no'),(5,'AREA2',8,11,NULL,'POINT(58 0)','no'),(6,'AREA3',8,11,NULL,'POINT(58 0)','no'),(7,'AREA4',8,11,NULL,'POINT(58 0)','no'),(8,'AREA5',8,11,NULL,'POINT(58 0)','no'),(4,'AREA1',9,12,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(13 85)','no'),(5,'AREA2',9,12,NULL,'POINT(13 85)','no'),(6,'AREA3',9,12,NULL,'POINT(13 85)','no'),(7,'AREA4',9,12,NULL,'POINT(13 85)','no'),(8,'AREA5',9,12,NULL,'POINT(13 85)','no'),(4,'AREA1',10,13,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(5 600)','no'),(5,'AREA2',10,13,NULL,'POINT(5 600)','no'),(6,'AREA3',10,13,NULL,'POINT(5 600)','no'),(7,'AREA4',10,13,NULL,'POINT(5 600)','no'),(8,'AREA5',10,13,NULL,'POINT(5 600)','no'),(4,'AREA1',11,14,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(100 5)','no'),(5,'AREA2',11,14,NULL,'POINT(100 5)','no'),(6,'AREA3',11,14,NULL,'POINT(100 5)','no'),(7,'AREA4',11,14,NULL,'POINT(100 5)','no'),(8,'AREA5',11,14,NULL,'POINT(100 5)','no'),(4,'AREA1',12,15,'POLYGON((20 0,10 0,11 10,0 11,20 0))','POINT(5 200)','no'),(5,'AREA2',12,15,NULL,'POINT(5 200)','no'),(6,'AREA3',12,15,NULL,'POINT(5 200)','no'),(7,'AREA4',12,15,NULL,'POINT(5 200)','no'),(8,'AREA5',12,15,NULL,'POINT(5 200)','no');
/*!40000 ALTER TABLE `prisoner_restricted_area_temp` ENABLE KEYS */;
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
