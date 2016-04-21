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
-- Table structure for table `crime_prisoner`
--

DROP TABLE IF EXISTS `crime_prisoner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_prisoner` (
  `PRISONER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRISONER_FIRSTNAME` varchar(20) NOT NULL,
  `PRISONER_LAST_NAME` varchar(20) NOT NULL,
  `prisoner_photo` longblob,
  `PRISONER_IDENTITY_MARK` varchar(20) DEFAULT NULL,
  `BIRTH_DATE` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_ENTRY` date NOT NULL,
  `NATIONALITY` varchar(20) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `prisoner_mapping` int(11) NOT NULL,
  `CRIME_RECORD_ID` int(11) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRISONER_ID`),
  KEY `FK_MAPPING` (`prisoner_mapping`),
  KEY `CRIME_RECORD_ID` (`CRIME_RECORD_ID`),
  CONSTRAINT `FK_MAPPING` FOREIGN KEY (`prisoner_mapping`) REFERENCES `crime_prisoner_mapping` (`MAPPING_ID`),
  CONSTRAINT `FK_P_MAP` FOREIGN KEY (`prisoner_mapping`) REFERENCES `crime_prisoner_mapping` (`MAPPING_ID`),
  CONSTRAINT `crime_prisoner_ibfk_1` FOREIGN KEY (`CRIME_RECORD_ID`) REFERENCES `crime_record` (`CRIME_RECORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_prisoner`
--

LOCK TABLES `crime_prisoner` WRITE;
/*!40000 ALTER TABLE `crime_prisoner` DISABLE KEYS */;
INSERT INTO `crime_prisoner` VALUES (1,'Andrew','Nirmal',NULL,'Mole on right hand','1965-03-01','Male','2015-04-05','American','Texas',9,109,50),(2,'Andrew','Jack',NULL,'Mole on right hand','1965-03-01','Male','2015-04-05','American','Texas',9,109,50),(3,'Matt','Smith',NULL,'Mole on right hand','1966-03-01','Male','2015-04-05','Mexican','Carolina',10,110,49),(4,'Mathew','Jones',NULL,'Mole on right hand','1967-03-01','Male','2015-04-05','American','Carolina',11,111,48),(5,'John','Smith',NULL,'Mole on left hand','1988-03-01','Male','2015-04-05','American','Boston',12,112,30),(6,'Samuel','Antony',NULL,'Mole on right hand','1987-03-01','Male','2015-04-05','American','Texas',13,113,31),(7,'Jone','Smith',NULL,'Mole on right hand','1971-03-01','Male','2015-04-05','American','New Jersey',14,114,44),(8,'Matthhew','John',NULL,'Mole on left hand','1970-03-01','Male','2015-04-05','American','Carolina',15,115,45),(9,'Jone','Smith',NULL,'Mole on right hand','1980-03-01','Male','2015-04-05','American','New Jersey',16,116,35),(10,'Raz','Andrew',NULL,'Mole on right hand','1969-03-01','Male','2015-04-05','American','New York',17,117,46),(11,'Tony','Greg',NULL,'Mole on right hand','1965-03-01','Male','2015-04-05','Indian','Boston',20,120,50),(12,'Ian','Chappel',NULL,'Mole on right hand','1975-03-01','Male','2015-04-05','American','California',21,121,40),(13,'Bob','Milton',NULL,'Mole on right hand','1985-03-01','Male','2015-04-05','Mexican','Texas',22,122,30),(14,'Sunil','Dutt',NULL,'Mole on right hand','1975-03-01','Male','2015-04-05','American','Houston',23,123,40),(15,'Kiran','Reddy',NULL,'Mole on right hand','1955-03-01','Male','2015-04-05','Indian','Texas',24,124,60),(16,'Sanjay','Gupta',NULL,'Mole on right hand','1945-03-01','Male','2015-04-05','Indian','Houston',25,125,70),(17,'Nirmal','Anand',NULL,'Mole on right hand','1975-03-01','Male','2015-04-05','American','California',26,126,40),(18,'kiran','Milton',NULL,'Mole on right hand','1985-03-01','Female','2015-04-05','Mexican','Texas',27,127,30),(19,'Ayushi','Dutt',NULL,'Mole on right hand','1975-03-01','Female','2015-04-05','American','Houston',28,128,40),(20,'Mansi','Reddy',NULL,'Mole on right hand','1955-03-01','Female','2015-04-05','Indian','Texas',29,129,60),(21,'Kareena','Gupta',NULL,'Mole on right hand','1945-03-01','Female','2015-04-05','Indian','Houston',30,130,70),(22,'Harish','Greg',NULL,'Mole on right hand','1965-03-01','Male','2015-04-05','Indian','Boston',31,131,50),(23,'Queen','Chappel',NULL,'Mole on right hand','1975-03-01','Male','2015-04-05','American','California',32,132,40),(24,'Bob','King',NULL,'Mole on right hand','1985-03-01','Male','2015-04-05','Mexican','Texas',33,132,30),(25,'Fana','Dutt',NULL,'Mole on right hand','1975-03-01','Male','2015-04-05','American','Houston',34,133,40),(26,'Matthew','Smith',NULL,'Mole on right hand','1966-03-01','Male','2015-04-05','Mexican','Carolina',35,135,49),(27,'Smith','Jones',NULL,'Mole on right hand','1967-03-01','Male','2015-04-05','American','Carolina',36,136,48),(28,'John','Smith',NULL,'Mole on left hand','1968-03-01','Male','2015-04-05','American','Boston',37,137,47),(29,'Samuel','Antony',NULL,'Mole on right hand','1969-03-01','Male','2015-04-05','American','Texas',38,138,46),(30,'Jone','Smith',NULL,'Mole on right hand','1970-03-01','Male','2015-04-05','American','New Jersey',39,139,45),(31,'Matthhew','John',NULL,'Mole on left hand','1971-03-01','Male','2015-04-05','American','Carolina',40,140,44),(32,'Jone','Smith',NULL,'Mole on right hand','1972-03-01','Male','2015-04-05','American','New Jersey',41,141,43),(33,'Raz','Andrew',NULL,'Mole on right hand','1973-03-01','Male','2015-04-05','American','New York',42,142,42),(34,'Raz','Andrew',NULL,'Mole on right hand','1972-03-01','Male','2015-04-05','American','New York',43,143,43),(35,'Raz','Andrew',NULL,'Mole on right hand','1971-03-01','Male','2015-04-05','American','New York',44,144,44),(36,'Raz','Andrew',NULL,'Mole on right hand','1970-03-01','Male','2015-04-05','American','New York',45,145,45),(37,'King','John',NULL,'Mole on right hand','1980-03-01','Male','2015-04-05','Mexican','New York',46,146,35),(38,'ken','berg',NULL,'Mole on right hand','1981-03-01','Male','2015-04-05','American','New York',47,147,34),(39,'Raz','Andrew',NULL,'Mole on right hand','1982-03-01','Male','2015-04-05','Mexican','New York',48,148,33),(40,'Smith','John',NULL,'Mole on right hand','1983-03-01','Male','2015-04-05','American','New York',49,149,32);
/*!40000 ALTER TABLE `crime_prisoner` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`crimeadmin`@`localhost`*/ /*!50003 TRIGGER TRIGGER_AFTER_INSERT_ON_PRISONER
AFTER INSERT 
ON CRIME_PRISONER
for each row
insert into CRIME_PRISONER_HISTORY(prisoner_id,prisoner_firstname,prisoner_last_name,
prisoner_photo,
prisoner_identity_mark,birth_Date,gender,date_of_entry,nationality,address,CRIME_RECORD_ID,
prisoner_mapping,last_upd_timestamp,message_log)
values
(new.prisoner_id,new.prisoner_firstname,new.prisoner_last_name,
new.prisoner_photo,
new.prisoner_identity_mark,new.birth_Date,new.gender,new.date_of_entry,
new.nationality,new.address,new.crime_record_id,new.prisoner_mapping,
current_timestamp,"INSERTED") */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`crimeadmin`@`localhost`*/ /*!50003 TRIGGER TRIGGER_AFTER_UPDATE_ON_PRISONER
AFTER UPDATE 
ON CRIME_PRISONER
for each row
insert into CRIME_PRISONER_HISTORY(prisoner_id,prisoner_firstname,prisoner_last_name,
prisoner_photo,
prisoner_identity_mark,birth_Date,gender,date_of_entry,nationality,address,CRIME_RECORD_ID,
prisoner_mapping,last_upd_timestamp,message_log)
values
(new.prisoner_id,new.prisoner_firstname,new.prisoner_last_name,
new.prisoner_photo,
new.prisoner_identity_mark,new.birth_Date,new.gender,new.date_of_entry,
new.nationality,new.address,new.crime_record_id,new.prisoner_mapping,
current_timestamp,"UPDATED") */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`crimeadmin`@`localhost`*/ /*!50003 TRIGGER TRIGGER_AFTER_DELETE_ON_PRISONER
AFTER DELETE 
ON CRIME_PRISONER
for each row
insert into CRIME_PRISONER_HISTORY(prisoner_id,prisoner_firstname,prisoner_last_name,
prisoner_photo,
prisoner_identity_mark,birth_Date,gender,date_of_entry,nationality,address,crime_record_id,
prisoner_mapping,last_upd_timestamp,message_log)
values
(old.prisoner_id,old.prisoner_firstname,old.prisoner_last_name,
old.prisoner_photo,
old.prisoner_identity_mark,old.birth_Date,old.gender,old.date_of_entry,
old.nationality,old.address,old.crime_record_id,old.prisoner_mapping,
current_timestamp,"DELETED") */;;
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

-- Dump completed on 2016-04-19 21:57:36
