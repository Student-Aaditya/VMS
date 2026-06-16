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
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `medicine_id` bigint NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `manufacturer_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
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
  `bucket_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salt_composition` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country_of_origin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `medicine_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `packaging_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prescription_required` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `safety_advise` longtext COLLATE utf8mb4_general_ci,
  `storage` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subcategory_id` bigint DEFAULT NULL,
  PRIMARY KEY (`medicine_id`),
  KEY `fk_constraints_bucket` (`bucket_id`),
  CONSTRAINT `fk_constraints_bucket` FOREIGN KEY (`bucket_id`) REFERENCES `bucket` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (54,'Ayusya Naturals',NULL,NULL,NULL,NULL,NULL,NULL,'2026-04-17 12:29:05',NULL,NULL,'Ayusya Nector Plus Capsule',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://ik.imagekit.io/kqgqzlxfs/Photos/2_1.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Khadi Naturals',NULL,NULL,NULL,NULL,NULL,NULL,'2026-04-19 18:02:15',NULL,NULL,'Khadi Naturals Henna and Rosemary Hair Oil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Amalth Lifecare Pvt. Ltd.',NULL,NULL,NULL,NULL,NULL,NULL,'2026-04-19 18:02:15',NULL,NULL,'Amalth Salacia Oblonga Extract Veg Capsules',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Rgn Foods Pvt Ltd',NULL,NULL,NULL,NULL,NULL,NULL,'2026-04-20 16:09:20',NULL,NULL,'Cholas Omega-3 Chocolate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:01:10
