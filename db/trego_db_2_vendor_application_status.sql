-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trego_db_2
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `vendor_application_status`
--

DROP TABLE IF EXISTS `vendor_application_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_application_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicant_id` int NOT NULL,
  `status` enum('DRAFT','PENDING_APPROVAL','SUPER_ADMIN_REVIEW','APPROVED','REJECTED') COLLATE utf8mb4_general_ci DEFAULT 'DRAFT',
  `editable` tinyint(1) DEFAULT '1',
  `admin_feedback` text COLLATE utf8mb4_general_ci,
  `submitted_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `applicant_id` (`applicant_id`),
  CONSTRAINT `fk_status_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `vendor_informations` (`applicant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_application_status`
--

LOCK TABLES `vendor_application_status` WRITE;
/*!40000 ALTER TABLE `vendor_application_status` DISABLE KEYS */;
INSERT INTO `vendor_application_status` VALUES (11,11,'APPROVED',0,NULL,'2026-05-16 12:08:15',NULL),(12,12,'APPROVED',0,NULL,'2026-05-16 12:21:00',NULL),(13,13,'APPROVED',0,NULL,'2026-05-16 13:47:18',NULL),(14,14,'APPROVED',0,NULL,'2026-05-16 13:52:54',NULL),(16,16,'APPROVED',0,'Check the details','2026-05-18 03:41:59',NULL);
/*!40000 ALTER TABLE `vendor_application_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:01:06
