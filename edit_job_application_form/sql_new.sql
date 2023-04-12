-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: job_application_form_database
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidate_basic_info`
--

DROP TABLE IF EXISTS `candidate_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_basic_info` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `candidate_fname` varchar(255) NOT NULL,
  `candidate_lname` varchar(255) NOT NULL,
  `candidate_designation` varchar(255) NOT NULL,
  `candidate_email` varchar(255) NOT NULL,
  `candidate_phone_number` varchar(255) NOT NULL,
  `candidate_gender` varchar(255) NOT NULL,
  `candidate_address1` varchar(255) NOT NULL,
  `candidate_address2` varchar(255) NOT NULL,
  `candidate_city` varchar(45) NOT NULL,
  `candidate_state` varchar(45) NOT NULL,
  `candidate_zipcode` varchar(45) NOT NULL,
  `candidate_relationship_status` varchar(45) NOT NULL,
  `candidate_dob` varchar(45) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `delete_row` varchar(45) DEFAULT NULL,
  `edit_col` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_basic_info`
--

LOCK TABLES `candidate_basic_info` WRITE;
/*!40000 ALTER TABLE `candidate_basic_info` DISABLE KEYS */;
INSERT INTO `candidate_basic_info` VALUES (1,'Harsh','Patel','Junior Software Developer','hp@gmail.com','9825678913','male','Maher Homes-3,Shela,Ahmedabad','Maher Homes-3,Shela,Ahmedabad','Ahmedabad','1','             380058','Single','2002-01-28','2023-02-17 04:07:54',NULL,NULL),(2,'Mohit','Dangariya','SDL1','mohit@gmail.com','2345678901','male','Vir Savarkar Heights, Gota, Ahmedabad','Vir Savarkar Heights, Gota, Ahmedabad','Ahmedabad','1','  380056','Single','2002-03-15','2023-02-17 04:16:32','1',NULL),(3,'Nora','Titheridge','Trainee','ntitheridge0@hud.gov','352-529-0341','female','Raj Soociety,Pune,India','Ram Soociety,Ahmedabad,India','Pune','1','           380052','Single','2001-01-29','2023-02-17 04:23:11',NULL,NULL),(4,'Shivangi','Patell','tester','sp@gmail.com','534-205-2938','undefined','gandhinagar,gujarat','gandhinagar,gujarat','Gandhinagar','Gujarat','380050','Single','','2023-02-17 04:28:05',NULL,NULL),(5,'Valma','Ventum','vsc','vventuma@bloglines.com','328-440-5287','undefined','pune,india','pune,india','pune','Gujarat','380049','Single','','2023-02-17 04:33:02',NULL,NULL),(6,'Shivangi','Dangariya','HR','@gmail','9825678924','female','fgsgegr','wergrere','pune','1','    380049','Married','2002-02-11','2023-02-17 05:03:56',NULL,NULL),(7,'Shivangi','Dangariya','HR','@gmail','9825678924','female','fgsgegr','wergrere','pune','Gujarat','380049','Married','2002-02-11','2023-02-17 05:05:32','1',NULL),(8,'Shivangi','Dangariya','HR','@gmail','9825678924','female','fgsgegr','wergrere','pune','1',' 380049','Married','2002-02-11','2023-02-17 05:07:37',NULL,NULL),(9,'Mandi','Vaux','SDl-1','mvauxt@tinyurl.com','296-252-3132','female','nhytjiytu','hytytjukku','abc','1',' 380023','Single','','2023-02-17 05:14:57',NULL,NULL),(10,'Mandi','Vaux','SDl-1','mvauxt@tinyurl.com','296-252-3132','female','nhytjiytu','hytytjukku','abc','Goa','380023','Single','','2023-02-17 05:16:20',NULL,NULL),(11,'Mandi','Vaux','SDl-1','mvauxt@tinyurl.com','296-252-3132','female','nhytjiytu','hytytjukku','abc','Goa','380023','Single','','2023-02-17 05:17:32',NULL,NULL),(12,'Mandi','Vaux','SDl-1','mvauxt@tinyurl.com','296-252-3132','female','nhytjiytu','hytytjukku','abc','Goa','380023','Single','','2023-02-17 05:17:52',NULL,NULL),(13,'Zelda','Attree','Full-Stack Developer','zattree1h@artisteer.com','193-163-6833','male','gdegrw,punjab','dfgreger,punjab','abcdf','1','     380142','Single','1995-06-20','2023-02-17 05:32:54',NULL,NULL),(14,'Fredek','Coldham','BDA trainee','fcoldham1n@irs.gov','823-134-2713','male','gergterg','dfgfgfg','Gandhinagar','Gujarat','380050','Single','','2023-02-17 05:57:09','1',NULL),(15,'rashi','Ableson','SDl-1','fableson1t@businessinsider.com','278-334-1149','male','gnhthrh','jhytrht','Ahmedabad','1','   380058','Single','2002-11-17','2023-02-17 06:01:54','1',NULL),(16,'Zebulen','Bassindale','HR','zbassindale20@mashable.com','939-445-4644','male','gytjyjuyt','gytjyjuyt','Gandhinagar','Gujarat','380040','Single','2006-03-29','2023-02-17 06:12:39','1',NULL),(17,'Nanci','Motten','BDA trainee','nmotten22@live.com','368-614-3400','undefined','hheryh','rythryt6t','Pune','Gujarat','380050','Single','','2023-02-17 06:19:08','1',NULL),(18,'Bhavesh','Purohit','Mern Stack developer','bhavesh@gmail.com','51455146511','female','cdhyhsfd','dwefrjjiwefrnj','Gandhinagar','2Maharashtra','285698','Married','2023-02-02','2023-02-17 08:32:09','1',NULL),(19,'raj','Ventum','SDl-1','@gmail','352-529-0341','male','l;;oi;','oi;;o.;op','Nashik','2Maharashtra','380058','Single','2023-02-10','2023-02-21 04:07:57','1',NULL),(20,'','','','','','undefined','','','undefined','1Gujarat','','Single','','2023-02-21 04:42:31','1',NULL),(21,'','','','','','undefined','','','undefined','1Gujarat','','Single','','2023-02-21 04:42:50','1',NULL),(22,'Vishwa','Upadhyay','Developer','vishwa@gmail.com','352-529-0341','male','dfoikmjverikmj','x nbhbvdb','undefined','1',' 380058','Single','2023-02-16','2023-02-21 12:18:26',NULL,NULL);
/*!40000 ALTER TABLE `candidate_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_education_info`
--

DROP TABLE IF EXISTS `candidate_education_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_education_info` (
  `education_id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `education_course` varchar(45) NOT NULL,
  `education_board` varchar(45) NOT NULL,
  `education_passing_year` varchar(45) NOT NULL,
  `education_percentage` varchar(45) NOT NULL,
  PRIMARY KEY (`education_id`),
  KEY `candidate_id_idx` (`candidate_id`),
  CONSTRAINT `candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_basic_info` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_education_info`
--

LOCK TABLES `candidate_education_info` WRITE;
/*!40000 ALTER TABLE `candidate_education_info` DISABLE KEYS */;
INSERT INTO `candidate_education_info` VALUES (1,1,'S','S','0','0'),(2,1,'HSC','GSEB','2017','70'),(3,1,'S','G','2','9'),(4,2,'SSC','GSEB','2017','60'),(5,2,'HSC','GHSEb','2019','65'),(6,2,'BE','GTU','2023','64'),(7,3,'SSC','GSEB','2018','90'),(8,3,'SSC','S','x','8'),(9,4,'Diploma','fgxd','2015','95'),(10,4,'PHD','hv','2022','88'),(11,5,'B.Tech','PDPU','2012','55'),(12,5,'M.Tech','PDPU','2014','70'),(13,6,'SSC','GSEB','2018','70'),(14,6,'Diploma','fgxd','2020','88'),(15,7,'SSC','GSEB','2018','70'),(16,7,'Diploma','fgxd','2020','88'),(17,8,'SSC','GSEB','2018','70'),(18,8,'Diploma','fgxd','2020','88'),(19,9,'SSC','GSEB','2010','60'),(20,9,'BE','abc','2022','70'),(21,10,'SSC','GSEB','2010','60'),(22,10,'BE','abc','2022','70'),(23,11,'SSC','GSEB','2010','60'),(24,11,'BE','abc','2022','70'),(25,12,'SSC','GSEB','2010','60'),(26,12,'BE','abc','2022','70'),(27,13,'SSC','asdfdefer','2002','70'),(28,13,'HSC','ghthgh','2005','88'),(29,14,'SSC','GSEB','2017','70'),(30,14,'HSC','GHSEB','2019','88'),(31,15,'HSC','GSEB','2019','90'),(32,16,'SSC','hv','2022','90'),(33,17,'SSC','GSEB','2017','60'),(34,18,'SSC','fgxd','2017','70'),(35,19,'SSC','fgxd','zxdc','88'),(36,20,'SSC','','',''),(37,21,'SSC','','',''),(38,22,'HSC','GSEB','zxdc','88');
/*!40000 ALTER TABLE `candidate_education_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_work_experience`
--

DROP TABLE IF EXISTS `candidate_work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_work_experience` (
  `work_experience_id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_designation` varchar(45) NOT NULL,
  `from_date` varchar(45) NOT NULL,
  `from_to` varchar(45) NOT NULL,
  PRIMARY KEY (`work_experience_id`),
  KEY `candidate_id_idx` (`candidate_id`),
  CONSTRAINT `candidate_id_we` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_basic_info` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_work_experience`
--

LOCK TABLES `candidate_work_experience` WRITE;
/*!40000 ALTER TABLE `candidate_work_experience` DISABLE KEYS */;
INSERT INTO `candidate_work_experience` VALUES (1,1,'S','T','undefined','undefined'),(2,2,'e','J','undefined','undefined'),(3,3,'mthyhyth','Hjhgjyhjhg','2023-04-06','2023-04-07'),(4,4,'abc solutions','tester','2023-02-02','2023-02-16'),(5,5,'abc','dsf','2023-02-15','2023-02-20'),(6,6,'S','v','undefined','undefined'),(7,7,'Softcoding Solutions','vsc','2023-02-11','2023-02-17'),(8,8,'S','v','2','2'),(9,9,'d','J','2','2'),(10,10,'dfgs','Junior Software Developer','2021-02-07','2022-02-12'),(11,11,'dfgs','Junior Software Developer','2021-02-07','2022-02-12'),(12,12,'dfgs','Junior Software Developer','2021-02-07','2022-02-12'),(13,13,'abc solutions','Full-Stack Developer','2015-02-02','2020-02-11'),(14,13,'def solutions','developer','2020-02-12','2023-02-16'),(15,14,'esparkBIZ','BDA Trainee','2020-02-02','2021-02-11'),(16,15,'Softcoding Solutions','vsc','2023-02-01','2023-02-16'),(17,16,'def solutions','developer','2015-02-01','2020-02-15'),(18,17,'esparkBIZ','SDL1','2017-02-01','2020-02-03'),(19,18,'esparkBIZ','developer','2023-02-02','2023-02-15'),(20,19,'esparkBIZ','developer','2023-02-03','2023-02-11'),(21,20,'','','',''),(22,21,'','','',''),(23,22,'esparkBIZ','developer','2022-02-02','2022-02-03');
/*!40000 ALTER TABLE `candidate_work_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_master`
--

DROP TABLE IF EXISTS `city_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_master` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `city_name` varchar(45) NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `state_id_fk_idx` (`state_id`),
  CONSTRAINT `state_id_fk` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_master`
--

LOCK TABLES `city_master` WRITE;
/*!40000 ALTER TABLE `city_master` DISABLE KEYS */;
INSERT INTO `city_master` VALUES (1,1,'Ahmedabad'),(2,1,'Gandhinagar'),(3,1,'Bhuj'),(4,1,'Dwarka'),(5,1,'Junagadh'),(6,1,'Rajkot'),(7,1,'Bhavnagar'),(8,1,'Surat'),(9,1,'Vadodra'),(10,2,'Nashik'),(11,2,'Pune'),(12,2,'Mahabaleshwar'),(13,2,'Ratnagiri'),(14,2,'Jalgaon'),(15,2,'Nagpur'),(16,3,'Indore'),(17,3,'Ujjain'),(18,3,'Jhansi'),(19,3,'Gwalior'),(20,4,'Jodhpur'),(21,4,'Jaisalmer'),(22,4,'Bikaner'),(23,4,'Ajmer'),(24,4,'Udaipur'),(25,4,'Kota'),(26,5,'Amritsar'),(27,5,'Jalandar'),(28,5,'Ludhiana'),(29,5,'Patiala'),(30,6,'Ghaziabad'),(31,6,'Noida'),(32,6,'Lucknow'),(33,6,'Kanpur'),(34,6,'Varanasi'),(35,6,'Ayodhya'),(36,6,'Gorakhpur'),(37,6,'Meerut'),(38,6,'Mathura');
/*!40000 ALTER TABLE `city_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages_known`
--

DROP TABLE IF EXISTS `languages_known`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages_known` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `language` varchar(45) NOT NULL,
  `language_read` varchar(45) NOT NULL,
  `language_write` varchar(45) NOT NULL,
  `language_speak` varchar(45) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `candidate_id_language_idx` (`candidate_id`),
  CONSTRAINT `candidate_id_language` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_basic_info` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages_known`
--

LOCK TABLES `languages_known` WRITE;
/*!40000 ALTER TABLE `languages_known` DISABLE KEYS */;
INSERT INTO `languages_known` VALUES (10,4,'Gujarati','yes','yes','yes'),(11,4,'Hindi','no','no','yes'),(12,5,'English','yes','yes','yes'),(13,5,'Gujarati','yes','yes','yes'),(16,7,'English','yes','yes','yes'),(17,7,'Hindi','yes','yes','yes'),(18,8,'English','yes','yes','yes'),(19,8,'Hindi','yes','yes','yes'),(20,9,'English','yes','yes','yes'),(21,9,'Gujarati','no','no','yes'),(22,9,'Hindi','yes','yes','yes'),(23,10,'English','yes','yes','yes'),(24,10,'Gujarati','no','no','yes'),(25,10,'Hindi','yes','yes','yes'),(26,11,'English','yes','yes','yes'),(27,11,'Gujarati','no','no','yes'),(28,11,'Hindi','yes','yes','yes'),(29,12,'English','yes','yes','yes'),(30,12,'Gujarati','no','no','yes'),(31,12,'Hindi','yes','yes','yes'),(32,13,'English','yes','yes','yes'),(33,13,'Hindi','yes','yes','no'),(34,14,'English','yes','yes','no'),(35,14,'Gujarati','yes','yes','yes'),(38,16,'English','yes','yes','no'),(39,17,'English','yes','yes','yes'),(40,17,'Gujarati','yes','yes','yes'),(41,18,'English','yes','no','no'),(42,18,'Hindi','no','no','no'),(43,19,'English','yes','yes','no'),(44,22,'English','yes','yes','no'),(45,22,'Gujarati','yes','no','yes'),(95,1,'English','yes','yes','yes'),(96,1,'Gujarati','yes','yes','yes'),(97,1,'Hindi','yes','yes','yes'),(104,2,'English','yes','yes','yes'),(105,2,'Gujarati','yes','yes','yes'),(106,2,'Hindi','yes','yes','yes'),(121,6,'English','yes','yes','yes'),(122,6,'Hindi','yes','yes','yes'),(138,3,'English','yes','yes','yes'),(139,3,'Gujarati','yes','yes','yes'),(140,3,'Hindi','yes','yes','yes'),(147,15,'English','yes','yes','yes'),(148,15,'Gujarati','yes','yes','yes');
/*!40000 ALTER TABLE `languages_known` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_master`
--

DROP TABLE IF EXISTS `option_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option_master` (
  `option_id` int NOT NULL AUTO_INCREMENT,
  `select_id` int NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(45) NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `select_id_om_idx` (`select_id`),
  CONSTRAINT `select_id_om` FOREIGN KEY (`select_id`) REFERENCES `select_master` (`select_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_master`
--

LOCK TABLES `option_master` WRITE;
/*!40000 ALTER TABLE `option_master` DISABLE KEYS */;
INSERT INTO `option_master` VALUES (1,1,'Single','Single'),(2,1,'Married','Married'),(3,1,'Widowed','Widowed'),(4,1,'Divorced','Divorced'),(5,2,'Gujarat','Gujarat'),(6,2,'Rajasthan','Rajasthan'),(7,2,'Punjab','Punjab'),(8,2,'Haryana','Haryana'),(9,2,'Madhya Pradesh','Madhya Pradesh'),(10,2,'Uttar Pradesh','Uttar Pradesh'),(11,2,'Jammu and Kashmir','Jammu and Kashmir'),(12,2,'Goa','Goa'),(13,3,'SSC','SSC'),(14,3,'HSC','HSC'),(15,3,'Diploma','Diploma'),(16,3,'BE','BE'),(17,3,'B.Tech','B.Tech'),(18,3,'PHD','PHD'),(19,3,'ME','ME'),(20,3,'M.Tech','M.Tech'),(21,4,'Ahmedabad','Ahmedabad'),(22,4,'Bangalore','Bangalore'),(23,4,'Pune','Pune'),(24,4,'Gandhinagar','Gandhinagar'),(25,4,'Rajkot','Rajkot'),(26,5,'Marketing','Marketing'),(27,5,'Developer','Developer'),(28,5,'HR','HR'),(29,5,'Business Analyst','Business Analyst'),(30,6,'English','English'),(31,6,'Gujarati','Gujarati'),(32,6,'Hindi','Hindi'),(33,7,'PHP','PHP'),(34,7,'MySQL','MySQL'),(35,7,'Laravel','Laravel'),(36,7,'Oracle','Oracle'),(37,7,'ReactJS','ReactJS'),(38,7,'Angular JS','Angular JS'),(39,7,'Android','Android');
/*!40000 ALTER TABLE `option_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferences` (
  `preferences_id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `preffered_location` varchar(255) NOT NULL,
  `notice_period` varchar(45) NOT NULL,
  `expected_ctc` varchar(45) NOT NULL,
  `current_ctc` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`preferences_id`),
  KEY `candidate_id_preferences_idx` (`candidate_id`),
  CONSTRAINT `candidate_id_preferences` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_basic_info` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (1,1,'Ahmedabad','2 months','40000','35000','Developer'),(2,2,'Gandhinagar','3 months','35000','25000','Developer'),(3,3,'Ahmedabad','1 months','70000','50000','HR'),(4,4,'Rajkot','1 months','40000','50000','Marketing'),(5,5,'Bangalore','6 months','30000','25000','Business Analyst'),(6,6,'Ahmedabad','8 months','80000','80000','HR'),(7,7,'Pune','6 months','30000','25000','HR'),(8,8,'Pune','6 months','30000','25000','HR'),(9,9,'Pune','2 months','70000','50000','Developer'),(10,10,'Pune','2 months','70000','50000','Developer'),(11,11,'Pune','2 months','70000','50000','Developer'),(12,12,'Pune','2 months','70000','50000','Developer'),(13,13,'Bangalore','1year','40000','35000','Developer'),(14,14,'Pune','3 months','30000','25000','Business Analyst'),(15,15,'Pune','1 year','70000','65000','Developer'),(16,16,'Bangalore','1 months','35000','65000','HR'),(17,17,'Pune','1 months','70000','50000','Developer'),(18,18,'Gandhinagar','3 months','30000','25000','HR'),(19,19,'Ahmedabad','dfvfds','35000','35000','Marketing'),(20,20,'Ahmedabad','','','','Marketing'),(21,21,'Ahmedabad','','','','Marketing'),(22,22,'Bangalore','2 months','40000','65000','Developer');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references1`
--

DROP TABLE IF EXISTS `references1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `references1` (
  `reference_id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `reference_contact` varchar(45) NOT NULL,
  `reference_relation` varchar(45) NOT NULL,
  PRIMARY KEY (`reference_id`),
  KEY `candidate_id_references_idx` (`candidate_id`),
  CONSTRAINT `candidate_id_references` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_basic_info` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references1`
--

LOCK TABLES `references1` WRITE;
/*!40000 ALTER TABLE `references1` DISABLE KEYS */;
INSERT INTO `references1` VALUES (1,1,'Harsh','12345697890','Friend'),(2,1,'Mohit','2345678901','Brother'),(3,2,'Harsh','3456789012','Friend'),(4,2,'Meet','8714569871','Friend'),(5,3,'Katherine','200-518-7878','Mom'),(6,3,'Shayna','214-573-3621','Friend'),(7,4,'Fons','367-836-7418','Sister'),(8,4,'Stephine','205-615-6748','Sister'),(9,5,'Rustie','953-637-0010','dfbghtr'),(10,5,'Caresse','839-474-2227','Friend'),(11,6,'Harsh','12345697890','Friend'),(12,6,'Mohhit','3456789012','Friend'),(13,7,'Harsh','12345697890','Friend'),(14,7,'Mohhit','3456789012','Friend'),(15,8,'Harsh','12345697890','Friend'),(16,8,'Mohhit','3456789012','Friend'),(17,9,'Fons','367-836-7418','Mom'),(18,9,'Rustie','953-637-0010','Sister'),(19,10,'Fons','367-836-7418','Mom'),(20,10,'Rustie','953-637-0010','Sister'),(21,11,'Fons','367-836-7418','Mom'),(22,11,'Rustie','953-637-0010','Sister'),(23,12,'Fons','367-836-7418','Mom'),(24,12,'Rustie','953-637-0010','Sister'),(25,13,'Fons','12345697890','dfbghtr'),(26,13,'Mohhit','367-836-7418','Friend'),(27,14,'Fons','12345697890','Mom'),(28,14,'Katherine','200-518-7878','Sister'),(29,15,'Eulalie','Bebis','Friend'),(30,15,'Chandler','Bonett','Dad'),(31,16,'Harsh','12345697890','Friend'),(32,16,'Mohhit','367-836-7418','Friend'),(33,17,'Mohhit','12345697890','Friend'),(34,17,'Fons','3456789012','Sister'),(35,18,'Harsh','12345697890','Friend'),(36,18,'Mohhit','3456789012','Friend'),(37,19,'Harsh','12345697890','dfbghtr'),(38,19,'Fons','367-836-7418','Friend'),(39,20,'','',''),(40,20,'','',''),(41,21,'','',''),(42,21,'','',''),(43,22,'Harsh','gdfngh','Friend'),(44,22,'Mohhit','12345697890','Friend');
/*!40000 ALTER TABLE `references1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_master`
--

DROP TABLE IF EXISTS `select_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_master` (
  `select_id` int NOT NULL AUTO_INCREMENT,
  `select_name` varchar(255) NOT NULL,
  `select_key` varchar(45) NOT NULL,
  PRIMARY KEY (`select_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_master`
--

LOCK TABLES `select_master` WRITE;
/*!40000 ALTER TABLE `select_master` DISABLE KEYS */;
INSERT INTO `select_master` VALUES (1,'relationship_status','1'),(2,'state','2'),(3,'course','3'),(4,'prefered_location','4'),(5,'prefered_department','5'),(6,'language','6'),(7,'technology','7');
/*!40000 ALTER TABLE `select_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_master`
--

DROP TABLE IF EXISTS `state_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_master` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_master`
--

LOCK TABLES `state_master` WRITE;
/*!40000 ALTER TABLE `state_master` DISABLE KEYS */;
INSERT INTO `state_master` VALUES (1,'Gujarat'),(2,'Maharashtra'),(3,'Madhya Pradesh'),(4,'Rajasthan'),(5,'Punjab'),(6,'Uttar Pradesh');
/*!40000 ALTER TABLE `state_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technologies_known`
--

DROP TABLE IF EXISTS `technologies_known`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technologies_known` (
  `technology_id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `technology` varchar(45) NOT NULL,
  `technologyknown` varchar(45) NOT NULL,
  PRIMARY KEY (`technology_id`),
  KEY `candidate_id_tn_idx` (`candidate_id`),
  CONSTRAINT `candidate_id_tn` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_basic_info` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technologies_known`
--

LOCK TABLES `technologies_known` WRITE;
/*!40000 ALTER TABLE `technologies_known` DISABLE KEYS */;
INSERT INTO `technologies_known` VALUES (13,4,'MySQL','beginner'),(14,4,'Oracle','expert'),(15,4,'Android','beginner'),(16,5,'PHP','expert'),(17,5,'MySQL','expert'),(18,5,'Angular JS','mediator'),(21,7,'PHP','mediator'),(22,7,'MySQL','beginner'),(23,8,'PHP','mediator'),(24,8,'MySQL','beginner'),(25,9,'PHP','beginner'),(26,9,'MySQL','beginner'),(27,9,'ReactJS','expert'),(28,10,'PHP','beginner'),(29,10,'MySQL','beginner'),(30,10,'ReactJS','expert'),(31,11,'PHP','beginner'),(32,11,'MySQL','beginner'),(33,11,'ReactJS','expert'),(34,12,'PHP','beginner'),(35,12,'MySQL','beginner'),(36,12,'ReactJS','expert'),(37,13,'PHP','beginner'),(38,13,'MySQL','expert'),(39,13,'ReactJS','expert'),(40,13,'Angular JS','beginner'),(41,14,'PHP','beginner'),(42,14,'MySQL','beginner'),(45,16,'PHP','beginner'),(46,16,'MySQL','mediator'),(47,17,'MySQL','expert'),(48,18,'PHP','beginner'),(49,18,'Angular JS','mediator'),(50,19,'PHP','beginner'),(51,19,'Laravel','mediator'),(60,2,'PHP','expert'),(61,2,'MySQL','beginner'),(62,2,'Laravel','mediator'),(63,2,'Oracle','beginner'),(64,2,'ReactJS','beginner'),(65,2,'Android','expert'),(72,6,'PHP','mediator'),(73,6,'MySQL','beginner'),(77,3,'MySQL','mediator'),(78,3,'Laravel','beginner'),(79,3,'Oracle','expert'),(82,15,'PHP','beginner'),(83,15,'MySQL','mediator');
/*!40000 ALTER TABLE `technologies_known` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10  9:28:30
