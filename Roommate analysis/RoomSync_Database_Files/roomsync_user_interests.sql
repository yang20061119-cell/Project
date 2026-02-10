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
-- Table structure for table `user_interests`
--

DROP TABLE IF EXISTS `user_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_interests` (
  `user_id` int NOT NULL,
  `interest_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`interest_id`),
  KEY `interest_id` (`interest_id`),
  CONSTRAINT `user_interests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_interests_ibfk_2` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`interest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interests`
--

LOCK TABLES `user_interests` WRITE;
/*!40000 ALTER TABLE `user_interests` DISABLE KEYS */;
INSERT INTO `user_interests` VALUES (5,1),(6,1),(7,1),(8,1),(11,1),(12,1),(20,1),(22,1),(24,1),(26,1),(27,1),(31,1),(32,1),(33,1),(1,2),(4,2),(11,2),(12,2),(14,2),(17,2),(21,2),(22,2),(23,2),(29,2),(30,2),(31,2),(32,2),(34,2),(3,3),(6,3),(8,3),(10,3),(12,3),(14,3),(19,3),(22,3),(26,3),(31,3),(32,3),(36,3),(4,4),(6,4),(10,4),(16,4),(21,4),(26,4),(29,4),(33,4),(1,5),(3,5),(5,5),(6,5),(7,5),(9,5),(12,5),(14,5),(17,5),(18,5),(19,5),(20,5),(22,5),(26,5),(28,5),(29,5),(31,5),(32,5),(35,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(9,6),(10,6),(11,6),(12,6),(19,6),(22,6),(23,6),(25,6),(26,6),(27,6),(28,6),(30,6),(35,6),(1,7),(5,7),(9,7),(10,7),(12,7),(15,7),(17,7),(18,7),(21,7),(24,7),(25,7),(30,7),(34,7),(36,7),(1,8),(8,8),(9,8),(13,8),(15,8),(18,8),(20,8),(22,8),(23,8),(24,8),(25,8),(29,8),(34,8),(3,9),(4,9),(6,9),(7,9),(10,9),(13,9),(14,9),(20,9),(25,9),(27,9),(34,9),(6,10),(8,10),(13,10),(14,10),(16,10),(18,10),(35,10),(36,10),(1,11),(2,11),(3,11),(4,11),(8,11),(9,11),(10,11),(11,11),(12,11),(14,11),(15,11),(16,11),(19,11),(20,11),(23,11),(24,11),(25,11),(28,11),(29,11),(30,11),(31,11),(32,11),(33,11),(34,11),(35,11),(36,11);
/*!40000 ALTER TABLE `user_interests` ENABLE KEYS */;
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
