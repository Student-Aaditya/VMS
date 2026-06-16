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
-- Table structure for table `vendor_medicine_information`
--

DROP TABLE IF EXISTS `vendor_medicine_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_medicine_information` (
  `medicine_information_id` int NOT NULL AUTO_INCREMENT,
  `vendor_medicine_id` bigint DEFAULT NULL,
  `batch_id` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `manufacturer_address` text COLLATE utf8mb4_general_ci,
  `image_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `alcohol_interaction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `common_side_effect` longtext COLLATE utf8mb4_general_ci,
  `description` longtext COLLATE utf8mb4_general_ci,
  `driving_interaction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `how_it_works` longtext COLLATE utf8mb4_general_ci,
  `if_miss` longtext COLLATE utf8mb4_general_ci,
  `introduction` longtext COLLATE utf8mb4_general_ci,
  `kidney_interaction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lactation_interaction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `liver_interaction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pregnancy_interaction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_answers` longtext COLLATE utf8mb4_general_ci,
  `safety_advice` longtext COLLATE utf8mb4_general_ci,
  `use_of` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `packing` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`medicine_information_id`),
  KEY `fk_medicine_id` (`vendor_medicine_id`),
  KEY `fk_batchId` (`batch_id`),
  CONSTRAINT `fk_medicine_id` FOREIGN KEY (`vendor_medicine_id`) REFERENCES `vendor_medicine` (`vendor_medicine_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_medicine_information`
--

LOCK TABLES `vendor_medicine_information` WRITE;
/*!40000 ALTER TABLE `vendor_medicine_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_medicine_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:01:07
