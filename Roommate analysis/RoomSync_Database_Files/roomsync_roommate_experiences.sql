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
-- Table structure for table `roommate_experiences`
--

DROP TABLE IF EXISTS `roommate_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roommate_experiences` (
  `experience_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `duration` varchar(50) NOT NULL,
  `housing_type` varchar(50) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `overall_satisfaction` int NOT NULL,
  `would_live_again` varchar(50) NOT NULL,
  `had_conflicts` varchar(50) NOT NULL,
  PRIMARY KEY (`experience_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `roommate_experiences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roommate_experiences`
--

LOCK TABLES `roommate_experiences` WRITE;
/*!40000 ALTER TABLE `roommate_experiences` DISABLE KEYS */;
INSERT INTO `roommate_experiences` VALUES (1,1,'12-18 months','University dorm',NULL,4,'Probably yes','No we got along great'),(2,2,'6-9 months','University dorm',NULL,1,'Definitely not','No we got along great'),(3,3,'3-6 months','Off-campus apartment',NULL,1,'Definitely not','Significant conflicts'),(4,4,'18+ months','University dorm',NULL,4,'Probably yes','No we got along great'),(5,5,'9-12 months','University dorm',NULL,3,'Probably not','Some moderate conflicts'),(6,6,'12-18 months','University dorm',NULL,4,'Probably yes','Minor disagreements'),(7,7,'9-12 months','University dorm',NULL,4,'Definitely yes','No we got along great'),(8,8,'<3 months','University dorm',NULL,5,'Maybe','No we got along great'),(9,9,'18+ months','Off-campus apartment',NULL,3,'Maybe','Some moderate conflicts'),(10,10,'<3 months','Off-campus apartment',NULL,1,'Definitely not','Some moderate conflicts'),(11,11,'9-12 months','University dorm',NULL,4,'Probably yes','Minor disagreements'),(12,12,'12-18 months','University dorm',NULL,5,'Definitely yes','Minor disagreements'),(13,13,'12-18 months','University dorm',NULL,4,'Definitely yes','No we got along great'),(14,14,'18+ months','Off-campus apartment',NULL,2,'Probably not','Some moderate conflicts'),(15,15,'9-12 months','University dorm',NULL,1,'Probably not','Significant conflicts'),(16,16,'18+ months','University dorm',NULL,2,'Definitely not','Some moderate conflicts'),(17,17,'<3 months','University dorm',NULL,1,'Definitely not','Some moderate conflicts'),(18,18,'12-18 months','Off-campus apartment',NULL,5,'Definitely yes','Minor disagreements'),(19,19,'18+ months','University dorm',NULL,4,'Probably yes','Minor disagreements'),(20,20,'9-12 months','Off-campus apartment',NULL,2,'Probably not','Some moderate conflicts'),(21,21,'18+ months','University dorm',NULL,3,'Maybe','Minor disagreements'),(22,22,'6-9 months','Off-campus apartment',NULL,1,'Definitely not','Significant conflicts'),(23,23,'6-9 months','Off-campus apartment',NULL,2,'Probably not','Significant conflicts'),(24,24,'<3 months','University dorm',NULL,1,'Definitely not','Significant conflicts'),(25,25,'3-6 months','University dorm',NULL,5,'Probably yes','No we got along great'),(26,26,'<3 months','Off-campus apartment',NULL,1,'Definitely not','Significant conflicts'),(27,27,'<3 months','Off-campus apartment',NULL,4,'Definitely yes','No we got along great'),(28,28,'12-18 months','Off-campus apartment',NULL,1,'Probably not','Minor disagreements'),(29,29,'3-6 months','University dorm',NULL,2,'Definitely not','Significant conflicts'),(30,30,'9-12 months','University dorm',NULL,1,'Probably not','Minor disagreements'),(31,31,'6-9 months','Off-campus apartment',NULL,5,'Definitely yes','No we got along great'),(32,32,'3-6 months','University dorm',NULL,3,'Probably not','Minor disagreements'),(33,33,'6-9 months','Off-campus apartment',NULL,2,'Probably not','Significant conflicts'),(34,34,'<3 months','Off-campus apartment',NULL,5,'Probably yes','No we got along great'),(35,35,'6-9 months','Off-campus apartment',NULL,1,'Definitely not','Some moderate conflicts'),(36,36,'9-12 months','University dorm',NULL,2,'Probably not','Some moderate conflicts');
/*!40000 ALTER TABLE `roommate_experiences` ENABLE KEYS */;
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
