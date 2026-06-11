-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: roischema
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `employee_feedback`
--

DROP TABLE IF EXISTS `employee_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `survey_date` date NOT NULL,
  `satisfaction_score` int DEFAULT NULL,
  `productivity_perception` varchar(20) DEFAULT NULL,
  `would_recommend` tinyint(1) DEFAULT NULL,
  `comments` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `employee_feedback_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_feedback`
--

LOCK TABLES `employee_feedback` WRITE;
/*!40000 ALTER TABLE `employee_feedback` DISABLE KEYS */;
INSERT INTO `employee_feedback` VALUES (1,1,'2024-01-15',9,'High',1,'Copilot has transformed our development workflow. Excellent ROI!','2026-06-09 11:28:44'),(2,2,'2024-01-10',8,'High',1,'Claude is amazing for code review and documentation','2026-06-09 11:28:44'),(3,3,'2024-01-12',7,'Medium',1,'Good tools but need better integration with our IDE','2026-06-09 11:28:44'),(4,5,'2024-01-08',9,'High',1,'Saves me 2-3 hours daily on coding tasks','2026-06-09 11:28:44'),(5,8,'2024-01-16',8,'High',1,'Great learning tool for junior developers','2026-06-09 11:28:44'),(6,12,'2024-01-14',9,'High',1,'Essential for architecture decisions and code generation','2026-06-09 11:28:44'),(7,16,'2024-01-11',8,'High',1,'ChatGPT helps with content strategy significantly','2026-06-09 11:28:44'),(8,18,'2024-01-13',7,'Medium',1,'Good for content ideas, still needs human refinement','2026-06-09 11:28:44'),(9,24,'2024-01-09',8,'High',1,'Multiple AI tools have improved our marketing output','2026-06-09 11:28:44'),(10,26,'2024-01-15',7,'Medium',1,'Useful for email drafting and sales pitches','2026-06-09 11:28:44'),(11,27,'2024-01-10',8,'High',1,'Helps with proposal writing and client communication','2026-06-09 11:28:44'),(12,34,'2024-01-12',6,'Medium',0,'Useful but privacy concerns with HR data','2026-06-09 11:28:44'),(13,35,'2024-01-08',7,'Medium',1,'Good for job description writing','2026-06-09 11:28:44'),(14,39,'2024-01-14',9,'High',1,'Claude is exceptional for financial analysis','2026-06-09 11:28:44'),(15,42,'2024-01-16',8,'High',1,'Improved our reporting accuracy significantly','2026-06-09 11:28:44'),(16,45,'2024-01-11',9,'High',1,'Midjourney + ChatGPT combo is powerful for product design','2026-06-09 11:28:44'),(17,48,'2024-01-13',8,'High',1,'Midjourney has cut design time by 60%','2026-06-09 11:28:44'),(18,50,'2024-01-09',7,'Medium',1,'Good tools, learning curve could be better','2026-06-09 11:28:44');
/*!40000 ALTER TABLE `employee_feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-10 14:54:26
