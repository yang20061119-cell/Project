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
-- Table structure for table `compatibility_ratings`
--

DROP TABLE IF EXISTS `compatibility_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibility_ratings` (
  `experience_id` int NOT NULL,
  `cleanliness_alignment` int NOT NULL,
  `noise_alignment` int NOT NULL,
  `sleep_alignment` int NOT NULL,
  `social_alignment` int NOT NULL,
  `boundary_respect` int NOT NULL,
  PRIMARY KEY (`experience_id`),
  CONSTRAINT `compatibility_ratings_ibfk_1` FOREIGN KEY (`experience_id`) REFERENCES `roommate_experiences` (`experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibility_ratings`
--

LOCK TABLES `compatibility_ratings` WRITE;
/*!40000 ALTER TABLE `compatibility_ratings` DISABLE KEYS */;
INSERT INTO `compatibility_ratings` VALUES (1,4,4,4,4,5),(2,1,4,2,3,4),(3,1,2,1,4,1),(4,3,3,4,4,5),(5,4,3,4,2,4),(6,3,2,3,4,5),(7,4,3,5,3,4),(8,4,3,3,1,5),(9,2,4,2,3,3),(10,4,5,5,2,1),(11,5,4,4,4,3),(12,4,5,3,5,4),(13,5,5,5,4,4),(14,3,2,3,2,2),(15,3,2,2,3,1),(16,3,2,3,3,2),(17,3,2,3,2,1),(18,4,4,5,4,5),(19,5,4,5,5,4),(20,3,3,3,3,2),(21,4,4,3,5,3),(22,3,2,2,2,1),(23,2,3,3,1,2),(24,3,2,3,3,1),(25,4,4,5,5,5),(26,3,3,3,2,1),(27,4,5,5,5,4),(28,3,3,3,3,1),(29,2,3,3,1,2),(30,1,3,2,1,1),(31,4,4,5,4,5),(32,3,5,2,5,3),(33,2,2,3,1,2),(34,5,4,5,5,5),(35,3,3,3,2,1),(36,3,3,3,3,2);
/*!40000 ALTER TABLE `compatibility_ratings` ENABLE KEYS */;
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
