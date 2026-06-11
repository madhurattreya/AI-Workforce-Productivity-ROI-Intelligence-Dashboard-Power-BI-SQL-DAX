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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `work_location` varchar(50) DEFAULT NULL,
  `employment_type` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Rajesh Kumar','Engineering','Engineering Manager',2500000.00,'2019-03-15','Hybrid','Full-time','rajesh.k@company.com',NULL,'2026-06-09 11:27:53'),(2,'Priya Sharma','Engineering','Lead Developer',2000000.00,'2020-01-20','Remote','Full-time','priya.s@company.com',NULL,'2026-06-09 11:27:53'),(3,'Vikram Singh','Engineering','Senior Developer',1500000.00,'2020-06-10','Hybrid','Full-time','vikram.s@company.com',NULL,'2026-06-09 11:27:53'),(4,'Karan Malhotra','Engineering','Senior Developer',1400000.00,'2021-02-15','Remote','Full-time','karan.m@company.com',NULL,'2026-06-09 11:27:53'),(5,'Rohit Verma','Engineering','Senior Developer',1350000.00,'2021-04-01','On-site','Full-time','rohit.v@company.com',NULL,'2026-06-09 11:27:53'),(6,'Kavita Rao','Engineering','Backend Developer',1250000.00,'2021-07-15','Hybrid','Full-time','kavita.r@company.com',NULL,'2026-06-09 11:27:53'),(7,'Vivek Saxena','Engineering','Frontend Developer',1100000.00,'2022-01-10','Remote','Full-time','vivek.s@company.com',NULL,'2026-06-09 11:27:53'),(8,'Ankit Gupta','Engineering','Junior Developer',600000.00,'2022-08-01','On-site','Full-time','ankit.g@company.com',NULL,'2026-06-09 11:27:53'),(9,'Neha Reddy','Engineering','Junior Developer',550000.00,'2023-01-15','Hybrid','Full-time','neha.r@company.com',NULL,'2026-06-09 11:27:53'),(10,'Suresh Patel','Engineering','DevOps Engineer',1600000.00,'2020-09-20','Remote','Full-time','suresh.p@company.com',NULL,'2026-06-09 11:27:53'),(11,'Deepika Menon','Engineering','QA Engineer',900000.00,'2021-11-01','Hybrid','Full-time','deepika.m@company.com',NULL,'2026-06-09 11:27:53'),(12,'Arun Joshi','Engineering','Architect',2200000.00,'2019-08-15','Remote','Full-time','arun.j@company.com',NULL,'2026-06-09 11:27:53'),(13,'Meera Iyer','Engineering','Backend Developer',1200000.00,'2021-05-20','On-site','Full-time','meera.i@company.com',NULL,'2026-06-09 11:27:53'),(14,'Rahul Bose','Engineering','Junior Developer',580000.00,'2022-11-10','Hybrid','Full-time','rahul.b@company.com',NULL,'2026-06-09 11:27:53'),(15,'Shweta Pandey','Engineering','Senior Developer',1450000.00,'2020-12-01','Remote','Full-time','shweta.p@company.com',NULL,'2026-06-09 11:27:53'),(16,'Amit Patel','Marketing','Marketing Director',2800000.00,'2019-06-01','On-site','Full-time','amit.p@company.com',NULL,'2026-06-09 11:27:53'),(17,'Ananya Das','Marketing','Marketing Manager',1800000.00,'2020-03-15','Hybrid','Full-time','ananya.d@company.com',NULL,'2026-06-09 11:27:53'),(18,'Manoj Tiwari','Marketing','Content Strategist',1200000.00,'2021-01-20','Remote','Full-time','manoj.t@company.com',NULL,'2026-06-09 11:27:53'),(19,'Divya Kapoor','Marketing','Brand Manager',1500000.00,'2020-08-10','On-site','Full-time','divya.k@company.com',NULL,'2026-06-09 11:27:53'),(20,'Ravi Shankar','Marketing','Marketing Associate',700000.00,'2022-02-01','Hybrid','Full-time','ravi.s@company.com',NULL,'2026-06-09 11:27:53'),(21,'Pooja Agarwal','Marketing','Content Writer',650000.00,'2022-06-15','Remote','Full-time','pooja.a@company.com',NULL,'2026-06-09 11:27:53'),(22,'Sanjay Joshi','Marketing','SEO Specialist',800000.00,'2021-09-01','Remote','Full-time','sanjay.j@company.com',NULL,'2026-06-09 11:27:53'),(23,'Kriti Sharma','Marketing','Marketing Associate',680000.00,'2022-10-01','On-site','Full-time','kriti.s@company.com',NULL,'2026-06-09 11:27:53'),(24,'Varun Gupta','Marketing','Digital Marketing Lead',1300000.00,'2021-03-20','Hybrid','Full-time','varun.g@company.com',NULL,'2026-06-09 11:27:53'),(25,'Ritu Kapoor','Marketing','Social Media Manager',950000.00,'2021-07-01','Remote','Full-time','ritu.k@company.com',NULL,'2026-06-09 11:27:53'),(26,'Sneha Reddy','Sales','Sales Director',3000000.00,'2019-04-01','On-site','Full-time','sneha.r@company.com',NULL,'2026-06-09 11:27:53'),(27,'Vijay Kumar','Sales','Sales Manager',2000000.00,'2020-05-15','Hybrid','Full-time','vijay.k@company.com',NULL,'2026-06-09 11:27:53'),(28,'Anita Desai','Sales','Account Manager',1500000.00,'2021-02-01','On-site','Full-time','anita.d@company.com',NULL,'2026-06-09 11:27:53'),(29,'Raj Malhotra','Sales','Sales Lead',1200000.00,'2021-08-20','Hybrid','Full-time','raj.m@company.com',NULL,'2026-06-09 11:27:53'),(30,'Sunita Rao','Sales','Sales Executive',800000.00,'2022-03-01','On-site','Full-time','sunita.r@company.com',NULL,'2026-06-09 11:27:53'),(31,'Prakash Jha','Sales','Sales Executive',750000.00,'2022-07-15','Remote','Full-time','prakash.j@company.com',NULL,'2026-06-09 11:27:53'),(32,'Kiran Bedi','Sales','Business Development',950000.00,'2021-11-01','Hybrid','Full-time','kiran.b@company.com',NULL,'2026-06-09 11:27:53'),(33,'Ajay Verma','Sales','Sales Executive',720000.00,'2023-01-10','On-site','Full-time','ajay.v@company.com',NULL,'2026-06-09 11:27:53'),(34,'Neha Gupta','HR','HR Director',2200000.00,'2019-11-01','On-site','Full-time','neha.g@company.com',NULL,'2026-06-09 11:27:53'),(35,'Alok Sharma','HR','HR Manager',1500000.00,'2020-07-15','Hybrid','Full-time','alok.s@company.com',NULL,'2026-06-09 11:27:53'),(36,'Renu Singh','HR','Talent Acquisition',1000000.00,'2021-04-20','On-site','Full-time','renu.s@company.com',NULL,'2026-06-09 11:27:53'),(37,'Deepak Kumar','HR','HR Associate',600000.00,'2022-01-05','Hybrid','Full-time','deepak.k@company.com',NULL,'2026-06-09 11:27:53'),(38,'Maya Devi','HR','HR Business Partner',1200000.00,'2021-06-01','Remote','Full-time','maya.d@company.com',NULL,'2026-06-09 11:27:53'),(39,'Arun Nair','Finance','Finance Director',2800000.00,'2019-07-01','On-site','Full-time','arun.n@company.com',NULL,'2026-06-09 11:27:53'),(40,'Lakshmi Iyer','Finance','Finance Manager',1800000.00,'2020-04-15','Hybrid','Full-time','lakshmi.i@company.com',NULL,'2026-06-09 11:27:53'),(41,'Ganesh Rao','Finance','Financial Analyst',1100000.00,'2021-03-10','Remote','Full-time','ganesh.r@company.com',NULL,'2026-06-09 11:27:53'),(42,'Bhavna Patel','Finance','Senior Analyst',1400000.00,'2020-11-20','On-site','Full-time','bhavna.p@company.com',NULL,'2026-06-09 11:27:53'),(43,'Chetan Sharma','Finance','Accountant',900000.00,'2022-02-01','Hybrid','Full-time','chetan.s@company.com',NULL,'2026-06-09 11:27:53'),(44,'Rashmi Gupta','Finance','Financial Analyst',1050000.00,'2021-08-15','Remote','Full-time','rashmi.g@company.com',NULL,'2026-06-09 11:27:53'),(45,'Deepa Menon','Product','Product Director',2600000.00,'2019-10-01','On-site','Full-time','deepa.m@company.com',NULL,'2026-06-09 11:27:53'),(46,'Nikhil Kapoor','Product','Senior Product Manager',1800000.00,'2020-06-15','Hybrid','Full-time','nikhil.k@company.com',NULL,'2026-06-09 11:27:53'),(47,'Swati Das','Product','Product Manager',1400000.00,'2021-01-20','Remote','Full-time','swati.d@company.com',NULL,'2026-06-09 11:27:53'),(48,'Rohit Saxena','Product','UX Designer',1200000.00,'2021-05-10','Hybrid','Full-time','rohit.s@company.com',NULL,'2026-06-09 11:27:53'),(49,'Tanvi Mehta','Product','Product Analyst',950000.00,'2022-03-01','On-site','Full-time','tanvi.m@company.com',NULL,'2026-06-09 11:27:53'),(50,'Abhishek Jain','Product','Product Manager',1350000.00,'2021-09-15','Remote','Full-time','abhishek.j@company.com',NULL,'2026-06-09 11:27:53');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-10 14:54:25
