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
-- Table structure for table `future_preferences`
--

DROP TABLE IF EXISTS `future_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `future_preferences` (
  `user_id` int NOT NULL,
  `priority_1` varchar(100) DEFAULT NULL,
  `priority_2` varchar(100) DEFAULT NULL,
  `priority_3` varchar(100) DEFAULT NULL,
  `additional_notes` text,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `future_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `future_preferences`
--

LOCK TABLES `future_preferences` WRITE;
/*!40000 ALTER TABLE `future_preferences` DISABLE KEYS */;
INSERT INTO `future_preferences` VALUES (1,'Shared interests','Similar social habits','Good communication','N/a'),(2,'Similar cleanliness','Compatible noise levels','Similar sleep schedule','Let me have my gf over'),(3,'Similar cleanliness','Compatible noise levels','Similar sleep schedule','Respect'),(4,'Similar social habits','Financial responsibility','Good communication','Vibes of the space, does it feel open and welcoming or if you\'re apprehensive to fully exist in the space'),(5,'Similar cleanliness','Similar social habits','Financial responsibility','Not a dickhead'),(6,'Compatible noise levels','Good communication','Respect for boundaries','N/A'),(7,'Similar cleanliness','Good communication','Respect for boundaries','Being able to take criticism and make changes rather than getting offended'),(8,'Similar cleanliness','Similar sleep schedule','Respect for boundaries','Nope'),(9,'Similar cleanliness','Shared interests','Respect for boundaries','no'),(10,'Similar cleanliness','Compatible noise levels','Similar sleep schedule','Bro just let me live in peace'),(11,'Similar cleanliness','Financial responsibility','Good communication','Their consideration for others'),(12,'Similar cleanliness','Compatible noise levels','Similar sleep schedule','sibling dynamics: older and younger siblings cant live together'),(13,'Financial responsibility','Similar cleanliness','Similar social habits',NULL),(14,'Similar social habits','Financial responsibility','Shared interests',NULL),(15,'Similar social habits','Similar cleanliness','Financial responsibility',NULL),(16,'Good communication','Respect for boundaries','Similar social habits',NULL),(17,'Respect for boundaries','Similar cleanliness','Compatible noise levels',NULL),(18,'Similar sleep schedule','Shared interests','Financial responsibility',NULL),(19,'Respect for boundaries','Financial responsibility','Shared interests',NULL),(20,'Financial responsibility','Similar sleep schedule','Good communication',NULL),(21,'Shared interests','Compatible noise levels','Respect for boundaries',NULL),(22,'Similar cleanliness','Respect for boundaries','Good communication',NULL),(23,'Good communication','Similar sleep schedule','Compatible noise levels',NULL),(24,'Similar sleep schedule','Similar cleanliness','Compatible noise levels',NULL),(25,'Compatible noise levels','Similar sleep schedule','Similar social habits',NULL),(26,'Good communication','Similar sleep schedule','Financial responsibility',NULL),(27,'Similar sleep schedule','Good communication','Similar social habits',NULL),(28,'Good communication','Similar cleanliness','Respect for boundaries',NULL),(29,'Similar social habits','Similar cleanliness','Similar sleep schedule',NULL),(30,'Similar cleanliness','Good communication','Shared interests',NULL),(31,'Respect for boundaries','Good communication','Compatible noise levels',NULL),(32,'Compatible noise levels','Similar social habits','Similar cleanliness',NULL),(33,'Respect for boundaries','Similar social habits','Similar sleep schedule',NULL),(34,'Similar cleanliness','Respect for boundaries','Shared interests',NULL),(35,'Financial responsibility','Similar sleep schedule','Good communication',NULL),(36,'Similar sleep schedule','Respect for boundaries','Shared interests',NULL);
/*!40000 ALTER TABLE `future_preferences` ENABLE KEYS */;
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
