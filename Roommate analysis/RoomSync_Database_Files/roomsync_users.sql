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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `year` varchar(50) NOT NULL,
  `major` varchar(100) NOT NULL,
  `num_previous_roommates` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nadreah',21,'Senior','Criminal justice',5),(2,'Peyton',20,'Junior','Computer Science',3),(3,'Corey',20,'Junior','Health Science',6),(4,'Sofia',20,'Junior','Music',4),(5,'Abby',19,'Sophomore','Bio',2),(6,'Ryan',20,'Junior','Cs & music tech',1),(7,'Zaid',20,'Sophomore','International Business',7),(8,'Sam',18,'Freshman','Computer Science',1),(9,'Kiki',22,'Senior','Cive',11),(10,'Sho',21,'Grad Student','Master of professional studies in applied machine intelligence',4),(11,'Wama',21,'Senior','Education',9),(12,'Chanell',21,'Senior','Psychology',8),(13,'River',22,'Sophomore','Design',4),(14,'Phoenix',21,'Senior','Computer Science',5),(15,'Quinn',25,'Grad Student','Education',1),(16,'Skyler',24,'Sophomore','Engineering',3),(17,'Charlie',23,'Junior','Health Science',1),(18,'Taylor',25,'Sophomore','Computer Science',5),(19,'Miranda',19,'Grad Student','Cybersecurity',2),(20,'Joe',25,'Graduate Student','Data Science',3),(21,'Reese',18,'Sophomore','Business',4),(22,'Parker',18,'Graduate Student','Biology',4),(23,'Trinity',25,'Grad Student','Business',5),(24,'Nate',24,'Graduate Student','Engineering',5),(25,'Emerson',22,'Sophomore','Biology',4),(26,'Oscar',22,'Graduate Student','International Business',5),(27,'Drew',20,'Junior','International Business',1),(28,'Ebony',24,'Sophomore','International Business',4),(29,'Morgan',19,'Junior','Nursing',5),(30,'Casey',24,'Freshman','Data Science',4),(31,'Musa',24,'Senior','Accounting',3),(32,'Finley',25,'Graduate Student','Finance',3),(33,'Emerson',24,'Freshman','Design',3),(34,'Dakota',24,'Grad Student','Biology',5),(35,'Alexander',19,'Sophomore','Biology',5),(36,'Harper',20,'Sophomore','Criminal Justice',5);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
