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
-- Table structure for table `crime_prison_users`
--

DROP TABLE IF EXISTS `crime_prison_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prison_users` (
  `EMP_FIRST_NAME` varchar(20) NOT NULL,
  `EMP_LAST_NAME` varchar(20) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIVE` varchar(10) NOT NULL,
  `USER_CD` varchar(10) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `PASSWORD_EXPIRY_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_UPD_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`USER_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prison_users`
--

LOCK TABLES `crime_prison_users` WRITE;
/*!40000 ALTER TABLE `crime_prison_users` DISABLE KEYS */;
INSERT INTO `crime_prison_users` VALUES ('Greg','Chappel','2018-10-25 04:00:00','Y','chapgre','chapgre','2018-10-25 04:00:00','2015-12-08 00:48:23'),('Tony','Craig','2014-10-25 04:00:00','Y','craton','craton','2020-10-25 04:00:00','2015-12-08 00:48:23'),('Tyson','Gay','2014-10-25 04:00:00','Y','gaytys','gaytys','2020-10-25 04:00:00','2015-12-08 00:48:23'),('Hari','Krishna','2014-10-25 04:00:00','Y','krisha','krisha','2018-10-25 04:00:00','2015-12-08 00:48:23'),('Rafael','Nadal','2018-10-25 04:00:00','Y','nadraf','nadraf','2018-10-25 04:00:00','2015-12-08 00:48:23'),('Thejas','Sampathkumar','2014-10-25 04:00:00','Y','sampthe','sampthe','2018-10-25 04:00:00','2015-12-08 00:48:23');
/*!40000 ALTER TABLE `crime_prison_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 21:57:39
