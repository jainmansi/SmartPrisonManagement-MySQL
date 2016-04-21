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
-- Table structure for table `crime_prisonerhealth_log`
--

DROP TABLE IF EXISTS `crime_prisonerhealth_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prisonerhealth_log` (
  `LAST_UPD_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FITBIT_ID` varchar(10) DEFAULT NULL,
  `BLOOD_PRESSURE` int(11) DEFAULT NULL,
  `HEART_RATE` int(11) DEFAULT NULL,
  `RESPIRATORY_RATE` int(11) DEFAULT NULL,
  `HEALTH_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`HEALTH_ID`),
  KEY `LAST_UPD_TIMESTAMP` (`LAST_UPD_TIMESTAMP`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prisonerhealth_log`
--

LOCK TABLES `crime_prisonerhealth_log` WRITE;
/*!40000 ALTER TABLE `crime_prisonerhealth_log` DISABLE KEYS */;
INSERT INTO `crime_prisonerhealth_log` VALUES ('2015-12-12 01:24:26','FB0001',21,20,19,91),('2015-12-12 01:24:26','FB0002',21,19,19,92),('2015-12-12 01:24:26','FB0003',21,19,19,93),('2015-12-12 01:24:26','FB0004',21,19,19,94),('2015-12-12 01:24:26','FB0005',21,19,19,95),('2015-12-12 01:24:26','FB0006',21,20,19,96),('2015-12-12 01:24:26','FB0007',21,19,19,97),('2015-12-12 01:24:26','FB0008',21,20,19,98),('2015-12-12 01:24:26','FB0009',21,20,19,99),('2015-12-12 01:24:26','FB0010',21,19,19,100),('2015-12-12 01:24:26','FB0011',21,19,19,101),('2015-12-12 01:24:26','FB0012',21,19,19,102),('2015-12-12 01:24:26','FB0013',21,19,19,103),('2015-12-12 01:24:26','FB0014',21,19,19,104),('2015-12-12 01:24:26','FB0015',21,20,19,105),('2015-12-12 01:24:26','FB0016',21,20,19,106),('2015-12-12 01:24:26','FB0017',21,20,19,107),('2015-12-12 01:24:26','FB0018',21,19,19,108),('2015-12-12 01:24:26','FB0019',21,20,19,109),('2015-12-12 01:24:27','FB0020',21,20,19,110),('2015-12-12 01:24:27','FB0021',21,19,19,111),('2015-12-12 01:24:27','FB0022',21,19,19,112),('2015-12-12 01:24:27','FB0023',21,20,19,113),('2015-12-12 01:24:27','FB0024',21,20,19,114),('2015-12-12 01:24:27','FB0025',21,20,19,115),('2015-12-12 01:24:27','FB0026',21,19,19,116),('2015-12-12 01:24:27','FB0027',21,19,19,117),('2015-12-12 01:24:27','FB0028',21,20,19,118),('2015-12-12 01:24:27','FB0029',21,20,19,119),('2015-12-12 01:24:27','FB0030',21,19,19,120),('2015-12-12 01:24:27','FB0031',21,19,19,121),('2015-12-12 01:24:27','FB0032',21,20,19,122),('2015-12-12 01:24:27','FB0033',21,20,19,123),('2015-12-12 01:24:27','FB0034',21,19,19,124),('2015-12-12 01:24:27','FB0035',21,20,19,125),('2015-12-12 01:24:27','FB0036',21,20,19,126),('2015-12-12 01:24:27','FB0037',21,20,19,127),('2015-12-12 01:24:27','FB0038',21,19,19,128),('2015-12-12 01:24:27','FB0039',21,19,19,129),('2015-12-12 01:24:27','FB0040',21,19,19,130);
/*!40000 ALTER TABLE `crime_prisonerhealth_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`crimeadmin`@`localhost`*/ /*!50003 TRIGGER TRIGGER_AFTER_INSERT_ON_HEALTH
AFTER INSERT
ON crime_prisonerhealth_log
FOR EACH ROW 
BEGIN
DECLARE respRate INT;
DECLARE pulseRate INT;
DECLARE bloodPressure INT;
DECLARE bodyTemp FLOAT;
DECLARE ALERT VARCHAR(50);
DECLARE PRISON_ID INT;
SET respRate=80;
SET pulseRate=64;
SET bloodPressure=120;
SET bodyTemp=98;
IF(new.RESPIRATORY_RATE<80 ||  new.HEART_RATE<pulseRate ||  new.BLOOD_PRESSURE>bloodPressure )
THEN
SET ALERT='ABNORMAL';
select prisoner_id INTO PRISON_ID from crime_prisoner where prisoner_mapping =
(select mapping_id from crime_prisoner_mapping where fitbit_id = (SELECT new.fitbit_id FROM crime_prisonerhealth_log group by new.fitbit_id
));
INSERT into crime_health_alert(prisoner_id,health_id,alert_message)VALUES(prison_id,new.health_id,alert);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 21:57:34
