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
-- Table structure for table `user_lifestyle`
--

DROP TABLE IF EXISTS `user_lifestyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_lifestyle` (
  `user_id` int NOT NULL,
  `cleanliness_level` int NOT NULL,
  `noise_level` int NOT NULL,
  `sleep_schedule` varchar(50) NOT NULL,
  `social_level` int NOT NULL,
  `guest_frequency` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_lifestyle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_lifestyle`
--

LOCK TABLES `user_lifestyle` WRITE;
/*!40000 ALTER TABLE `user_lifestyle` DISABLE KEYS */;
INSERT INTO `user_lifestyle` VALUES (1,4,3,'Normal (11pm-1am)',3,'Rarely/Never'),(2,5,1,'Normal (11pm-1am)',2,'Rarely/Never'),(3,4,2,'Normal (11pm-1am)',4,'Few times a month'),(4,3,1,'Early bird (before 11pm)',3,'Few times a month'),(5,4,3,'Night owl (after 1am)',4,'Few times a month'),(6,5,2,'Night owl (after 1am)',3,'Few times a month'),(7,4,2,'Normal (11pm-1am)',2,'Rarely/Never'),(8,3,1,'Normal (11pm-1am)',2,'Rarely/Never'),(9,5,1,'Night owl (after 1am)',5,'Few times a month'),(10,5,5,'Early bird (before 11pm)',2,'Few times a month'),(11,4,3,'Normal (11pm-1am)',3,'Few times a month'),(12,3,1,'Normal (11pm-1am)',3,'Few times a month'),(13,3,5,'Early bird (before 11pm)',1,'Rarely/Never'),(14,5,4,'Normal (11pm-1am)',4,'Multiple times/week'),(15,1,5,'Early bird (before 11pm)',2,'Multiple times/week'),(16,3,4,'Very irregular',3,'Few times a month'),(17,5,5,'Early bird (before 11pm)',1,'Multiple times/week'),(18,3,4,'Very irregular',4,'Weekly'),(19,2,5,'Normal (11pm-1am)',5,'Rarely/Never'),(20,2,1,'Early bird (before 11pm)',1,'Multiple times/week'),(21,1,3,'Early bird (before 11pm)',4,'Multiple times/week'),(22,1,1,'Early bird (before 11pm)',5,'Weekly'),(23,4,4,'Normal (11pm-1am)',5,'Weekly'),(24,2,4,'Normal (11pm-1am)',2,'Rarely/Never'),(25,2,2,'Very irregular',5,'Rarely/Never'),(26,3,3,'Normal (11pm-1am)',1,'Few times a month'),(27,3,3,'Night owl (after 1am)',1,'Weekly'),(28,3,3,'Very irregular',3,'Weekly'),(29,4,3,'Early bird (before 11pm)',1,'Few times a month'),(30,5,5,'Night owl (after 1am)',1,'Weekly'),(31,4,2,'Night owl (after 1am)',2,'Multiple times/week'),(32,3,1,'Normal (11pm-1am)',3,'Rarely/Never'),(33,4,4,'Very irregular',1,'Few times a month'),(34,3,2,'Early bird (before 11pm)',1,'Multiple times/week'),(35,3,3,'Normal (11pm-1am)',2,'Weekly'),(36,5,1,'Normal (11pm-1am)',3,'Few times a month');
/*!40000 ALTER TABLE `user_lifestyle` ENABLE KEYS */;
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
