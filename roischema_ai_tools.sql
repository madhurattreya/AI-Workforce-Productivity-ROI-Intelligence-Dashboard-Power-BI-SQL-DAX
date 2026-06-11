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
-- Table structure for table `ai_tools`
--

DROP TABLE IF EXISTS `ai_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_tools` (
  `tool_id` int NOT NULL AUTO_INCREMENT,
  `tool_name` varchar(50) NOT NULL,
  `vendor` varchar(50) DEFAULT NULL,
  `license_cost_per_user` decimal(10,2) DEFAULT NULL,
  `subscription_tier` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_tools`
--

LOCK TABLES `ai_tools` WRITE;
/*!40000 ALTER TABLE `ai_tools` DISABLE KEYS */;
INSERT INTO `ai_tools` VALUES (1,'ChatGPT','OpenAI',20.00,'Enterprise','Content & Analysis','Advanced language model for content creation, analysis, and problem-solving','2026-06-09 11:27:40'),(2,'GitHub Copilot','Microsoft',30.00,'Business','Code Assistant','AI pair programmer for code generation, debugging, and optimization','2026-06-09 11:27:40'),(3,'Claude','Anthropic',25.00,'Team','Analysis & Writing','AI assistant specialized in complex analysis, research, and technical writing','2026-06-09 11:27:40'),(4,'Gemini','Google',20.00,'Enterprise','Content & Research','Google AI for creative content, research assistance, and data analysis','2026-06-09 11:27:40'),(5,'Midjourney','Midjourney Inc',30.00,'Pro','Design','AI image generation tool for creating professional visuals and designs','2026-06-09 11:27:40');
/*!40000 ALTER TABLE `ai_tools` ENABLE KEYS */;
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
