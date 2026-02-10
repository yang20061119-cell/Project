-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: roomsync
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `roommate_profiles`
--

DROP TABLE IF EXISTS `roommate_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roommate_profiles` (
  `experience_id` int NOT NULL,
  `roommate_major` varchar(100) DEFAULT NULL,
  `roommate_year` varchar(50) DEFAULT NULL,
  `cleanliness_level` int NOT NULL,
  `noise_level` int NOT NULL,
  `sleep_schedule` varchar(50) NOT NULL,
  `social_level` int NOT NULL,
  `guest_frequency` varchar(50) NOT NULL,
  `shared_interest_level` varchar(50) NOT NULL,
  PRIMARY KEY (`experience_id`),
  CONSTRAINT `roommate_profiles_ibfk_1` FOREIGN KEY (`experience_id`) REFERENCES `roommate_experiences` (`experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roommate_profiles`
--

LOCK TABLES `roommate_profiles` WRITE;
/*!40000 ALTER TABLE `roommate_profiles` DISABLE KEYS */;
INSERT INTO `roommate_profiles` VALUES (1,'Nursing, undecided, international affairs','Senior',4,3,'Normal (11pm-1am)',3,'Few times a month','Many shared interests'),(2,'Architecture','Junior',1,3,'Very irregular',3,'Rarely/Never','None'),(3,'Computer Science','Junior',1,5,'Night owl (after 1am)',4,'Multiple times/week','Few'),(4,'Bio','Junior',5,1,'Early bird (before 11pm)',4,'Few times a month','Many shared interests'),(5,'Psychology','Sophomore',3,3,'Normal (11pm-1am)',3,'Rarely/Never','Some'),(6,'Business & finance','Senior',3,3,'Very irregular',5,'Few times a month','Some'),(7,'Communications and Design','Sophomore',3,4,'Normal (11pm-1am)',5,'Weekly','Many shared interests'),(8,'Computer Science and Computer Engineering','Freshman',5,3,'Normal (11pm-1am)',5,'Rarely/Never','None'),(9,'Cybersecurity','Senior',3,3,'Early bird (before 11pm)',4,'Rarely/Never','Many shared interests'),(10,'Ms cs, ms project management','Grad Student',3,1,'Early bird (before 11pm)',3,'Few times a month','None'),(11,'Education','Senior',4,5,'Night owl (after 1am)',5,'Weekly','Many shared interests'),(12,'human physiology','Senior',3,2,'Very irregular',3,'Rarely/Never','Many shared interests'),(13,'Biology','Senior',3,5,'Early bird (before 11pm)',2,'Rarely/Never','Many shared interests'),(14,'Music','Freshman',3,1,'Very irregular',1,'Weekly','Few shared interests'),(15,'Architecture','Graduate Student',3,2,'Night owl (after 1am)',4,'Weekly','Few shared interests'),(16,'Engineering','Junior',5,1,'Normal (11pm-1am)',5,'Weekly','Few shared interests'),(17,'International Business','Sophomore',3,2,'Very irregular',4,'Few times a month','None'),(18,'Biology','Sophomore',2,3,'Very irregular',5,'Weekly','Many shared interests'),(19,'Political Science','Grad Student',2,4,'Normal (11pm-1am)',5,'Rarely/Never','Some shared interests'),(20,'Music','Junior',4,3,'Normal (11pm-1am)',3,'Few times a month','None'),(21,'Health Science','Senior',2,2,'Night owl (after 1am)',4,'Few times a month','Few shared interests'),(22,'Cybersecurity','Senior',3,4,'Normal (11pm-1am)',2,'Multiple times/week','Few shared interests'),(23,'Cybersecurity','Junior',1,2,'Night owl (after 1am)',1,'Few times a month','Few shared interests'),(24,'Nursing','Sophomore',4,1,'Night owl (after 1am)',4,'Rarely/Never','Few shared interests'),(25,'Computer Science','Sophomore',3,3,'Very irregular',5,'Rarely/Never','Many shared interests'),(26,'Marketing','Sophomore',5,5,'Night owl (after 1am)',4,'Weekly','None'),(27,'Psychology','Graduate Student',4,3,'Night owl (after 1am)',1,'Weekly','Many shared interests'),(28,'International Business','Senior',1,1,'Normal (11pm-1am)',5,'Multiple times/week','Few shared interests'),(29,'Health Science','Grad Student',1,1,'Normal (11pm-1am)',5,'Few times a month','Few shared interests'),(30,'Education','Senior',1,3,'Very irregular',5,'Rarely/Never','Few shared interests'),(31,'Nursing','Grad Student',3,1,'Night owl (after 1am)',3,'Multiple times/week','Many shared interests'),(32,'Computer Science','Senior',5,1,'Very irregular',3,'Multiple times/week','Some shared interests'),(33,'Environmental Science','Junior',1,1,'Early bird (before 11pm)',5,'Multiple times/week','Few shared interests'),(34,'Health Science','Grad Student',3,1,'Early bird (before 11pm)',1,'Multiple times/week','Some shared interests'),(35,'Data Science','Sophomore',5,1,'Night owl (after 1am)',5,'Multiple times/week','None'),(36,'Data Science','Freshman',3,3,'Very irregular',1,'Weekly','None');
/*!40000 ALTER TABLE `roommate_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-02 23:09:03
