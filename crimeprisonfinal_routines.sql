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
-- Temporary view structure for view `prisoner_view`
--

DROP TABLE IF EXISTS `prisoner_view`;
/*!50001 DROP VIEW IF EXISTS `prisoner_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prisoner_view` AS SELECT 
 1 AS `prisoner_id`,
 1 AS `prisoner_firstname`,
 1 AS `prisoner_last_name`,
 1 AS `prisoner_photo`,
 1 AS `prisoner_identity_mark`,
 1 AS `birth_date`,
 1 AS `gender`,
 1 AS `date_of_entry`,
 1 AS `nationality`,
 1 AS `address`,
 1 AS `CRIME_RECORD_ID`,
 1 AS `RF_ID`,
 1 AS `FITBIT_ID`,
 1 AS `BIOMETRIC_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `prisoner_view`
--

/*!50001 DROP VIEW IF EXISTS `prisoner_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`crimeadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prisoner_view` AS select `prisoner`.`PRISONER_ID` AS `prisoner_id`,`prisoner`.`PRISONER_FIRSTNAME` AS `prisoner_firstname`,`prisoner`.`PRISONER_LAST_NAME` AS `prisoner_last_name`,`prisoner`.`prisoner_photo` AS `prisoner_photo`,`prisoner`.`PRISONER_IDENTITY_MARK` AS `prisoner_identity_mark`,`prisoner`.`BIRTH_DATE` AS `birth_date`,`prisoner`.`GENDER` AS `gender`,`prisoner`.`DATE_OF_ENTRY` AS `date_of_entry`,`prisoner`.`NATIONALITY` AS `nationality`,`prisoner`.`ADDRESS` AS `address`,`prisoner`.`CRIME_RECORD_ID` AS `CRIME_RECORD_ID`,`mapping`.`RF_ID` AS `RF_ID`,`mapping`.`FITBIT_ID` AS `FITBIT_ID`,`mapping`.`BIOMETRIC_ID` AS `BIOMETRIC_ID` from (`crime_prisoner` `prisoner` join `crime_prisoner_mapping` `mapping`) where (`prisoner`.`prisoner_mapping` = `mapping`.`MAPPING_ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'crimeprisonfinal'
--

--
-- Dumping routines for database 'crimeprisonfinal'
--
/*!50003 DROP PROCEDURE IF EXISTS `clean_HealthLog_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`crimeadmin`@`localhost` PROCEDURE `clean_HealthLog_table`()
BEGIN


DECLARE _now DATETIME;
SET _now := NOW();

INSERT
INTO    crime_prisoner_healthlog_history
SELECT  *
FROM    crime_prisonerhealth_log
WHERE   LAST_UPD_TIMESTAMP < _now - interval 1 day;

INSERT
INTO    crime_health_alert_history
SELECT  *
FROM    crime_health_alert
WHERE   LAST_UPD_TIMESTAMP < _now - interval 1 day;

DELETE
FROM    crime_health_alert
WHERE   LAST_UPD_TIMESTAMP < _now - interval 1 day;

DELETE
FROM    crime_prisonerhealth_log
WHERE   LAST_UPD_TIMESTAMP < _now - interval 1 day;

COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FITBIT_CHECK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`crimeadmin`@`localhost` PROCEDURE `FITBIT_CHECK`()
BEGIN
DECLARE FITBIT varchar(10);
DECLARE finished INTEGER DEFAULT 0;
DECLARE FITBIT_CURSOR CURSOR  for select fitbit_id from crimeprisonfinal.CRIME_FITBIT;
OPEN FITBIT_CURSOR;
block1:begin
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
FITBIT_LOOP:LOOP
FETCH FITBIT_CURSOR into FITBIT;
IF finished= 1 THEN
LEAVE FITBIT_LOOP;
END IF;
call  FITBIT_HEALTH_INSERT_LOG(FITBIT);
END LOOP FITBIT_LOOP;
END block1;
CLOSE FITBIT_CURSOR;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FITBIT_HEALTH_INSERT_LOG` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`crimeadmin`@`localhost` PROCEDURE `FITBIT_HEALTH_INSERT_LOG`(IN FITBIT_ID varchar(10))
BEGIN
INSERT into crime_prisonerhealth_log(LAST_UPD_TIMESTAMP,RESPIRATORY_RATE,BLOOD_PRESSURE,HEART_RATE,FITBIT_ID)
values (current_timestamp(),FLOOR(RAND()+19),CEIL(RAND()+20),ROUND(RAND()+19),FITBIT_ID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRISONER_STAFF_CREATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRISONER_STAFF_CREATION`(IN STAFFNAME varchar(20), IN STAFF_ROLE varchar(20), 
IN BIOMETRIC_ID varchar(20), IN SMART_CARD_ID varchar(10), IN RETINA_SCAN longblob, IN FINGER_PRINT longblob)
BEGIN
DECLARE vStaff_mapping_id INT;
insert into crime_smartcards values(SMART_CARD_ID, "YES", current_timestamp); 
insert into crime_biometrics values(BIOMETRIC_ID, "Staff", @FINGER_PRINT, @RETINA_SCAN,current_timestamp);
insert into crime_staff_mapping(BIOMETRIC_ID,SMART_CARD_ID,LAST_UPD_TIMESTAMP) values(BIOMETRIC_ID, SMART_CARD_ID,current_timestamp);

SET @q=concat('select STAFF_MAPPING_ID into @c2 from crime_staff_mapping where SMART_CARD_ID =''', SMART_CARD_ID,''' and BIOMETRIC_ID=''',BIOMETRIC_ID,'''');
PREPARE stmt FROM @q;
   EXECUTE stmt;
   DEALLOCATE PREPARE stmt;
   SET vStaff_mapping_id=@c2;
insert into crime_prison_staff(STAFF_NAME,STAFF_ROLE, STAFF_MAPPING_ID,LAST_UPD_TIMESTAMP) values(STAFFNAME, STAFF_ROLE, vStaff_mapping_id, current_timestamp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_check_prisoner_movement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`crimeadmin`@`localhost` PROCEDURE `sp_check_prisoner_movement`()
BEGIN
block1:BEGIN

DROP TABLE IF EXISTS PRISONER_RESTRICTED_AREA_TEMP;

CREATE TABLE PRISONER_RESTRICTED_AREA_TEMP AS
select AREA_ID,AREA_NAME,PRISONER_ID,MOVEMENT_ID,
ST_ASTEXT(POLYGLON_AREA) POLYGON_AREA,ST_ASTEXT(LOCATION) LOCATION,
if(contains(POLYGLON_AREA,LOCATION),'yes','no') AS prisoner_location_boolean
from crime_restricted_areas,crime_prisoner_movement;

DROP TABLE IF EXISTS PRISONER_RESTR_ENTR_CHK_TMP;

CREATE TABLE `prisoner_restr_entr_chk_tmp` (
  `PRISONER_ID` int(11) NOT NULL,
  `MOVEMENT_ID` int(11) NOT NULL DEFAULT '0',
  `location` mediumtext,
  `chk` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



insert into prisoner_restr_entr_chk_tmp
select a.PRISONER_ID,a.MOVEMENT_ID,a.location  ,(case when a.cn=1 then 'yes'  when a.cn=0 then 'no' end) as chk from(
SELECT PRISONER_ID,MOVEMENT_ID,ST_ASTEXT(LOCATION) as LOCATION,(case when prisoner_location_boolean='yes' then 1 
when prisoner_location_boolean='no' then 0 end) as cn from PRISONER_RESTRICTED_AREA_TEMP
group by PRISONER_ID,MOVEMENT_ID,ST_ASTEXT(LOCATION)) a;

insert into crime_prisoner_movement_alert(PRISONER_ID,MOVEMENT_ID,ALERT_MESSAGE) select PRISONER_ID, MOVEMENT_ID, 
'Prisoner has entered the restricted area' from prisoner_restr_entr_chk_tmp where chk='yes';

END block1;
END ;;
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

-- Dump completed on 2016-04-19 21:57:39
