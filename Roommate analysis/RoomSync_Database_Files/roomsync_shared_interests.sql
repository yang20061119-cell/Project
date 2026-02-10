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
-- Table structure for table `shared_interests`
--

DROP TABLE IF EXISTS `shared_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shared_interests` (
  `experience_id` int NOT NULL,
  `interest_id` int NOT NULL,
  PRIMARY KEY (`experience_id`,`interest_id`),
  KEY `interest_id` (`interest_id`),
  CONSTRAINT `shared_interests_ibfk_1` FOREIGN KEY (`experience_id`) REFERENCES `roommate_experiences` (`experience_id`),
  CONSTRAINT `shared_interests_ibfk_2` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`interest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shared_interests`
--

LOCK TABLES `shared_interests` WRITE;
/*!40000 ALTER TABLE `shared_interests` DISABLE KEYS */;
INSERT INTO `shared_interests` VALUES (11,1),(12,1),(27,1),(30,1),(7,2),(15,2),(31,2),(32,2),(34,2),(15,3),(23,3),(28,3),(31,3),(14,4),(26,4),(7,5),(18,5),(19,5),(31,5),(32,5),(36,5),(5,6),(6,6),(7,6),(11,6),(25,6),(27,6),(9,7),(11,7),(18,7),(25,7),(28,7),(34,7),(9,8),(13,8),(18,8),(32,8),(34,8),(7,9),(13,9),(26,9),(27,9),(30,9),(13,10),(18,10),(7,11),(9,11),(11,11),(19,11),(21,11),(23,11),(31,11);
/*!40000 ALTER TABLE `shared_interests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-02 23:09:02
