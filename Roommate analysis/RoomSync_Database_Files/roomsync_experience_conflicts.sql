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
-- Table structure for table `experience_conflicts`
--

DROP TABLE IF EXISTS `experience_conflicts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_conflicts` (
  `experience_id` int NOT NULL,
  `conflict_type_id` int NOT NULL,
  PRIMARY KEY (`experience_id`,`conflict_type_id`),
  KEY `conflict_type_id` (`conflict_type_id`),
  CONSTRAINT `experience_conflicts_ibfk_1` FOREIGN KEY (`experience_id`) REFERENCES `roommate_experiences` (`experience_id`),
  CONSTRAINT `experience_conflicts_ibfk_2` FOREIGN KEY (`conflict_type_id`) REFERENCES `conflict_types` (`conflict_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_conflicts`
--

LOCK TABLES `experience_conflicts` WRITE;
/*!40000 ALTER TABLE `experience_conflicts` DISABLE KEYS */;
INSERT INTO `experience_conflicts` VALUES (10,1),(16,1),(19,1),(26,1),(3,2),(9,2),(10,2),(11,2),(14,2),(15,2),(17,2),(20,2),(22,2),(23,2),(32,2),(33,2),(35,2),(36,2),(3,3),(5,3),(32,3),(33,3),(3,4),(3,5),(7,5),(11,5),(15,5),(16,5),(22,5),(35,5),(3,6),(6,6),(7,6),(14,6),(22,6),(23,6),(30,6),(36,6),(3,7),(5,7),(7,7),(10,7),(12,7),(19,7),(20,7),(23,7),(32,7),(3,8),(15,8),(16,8),(20,8),(21,8),(24,8),(28,8),(29,8),(35,8);
/*!40000 ALTER TABLE `experience_conflicts` ENABLE KEYS */;
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
