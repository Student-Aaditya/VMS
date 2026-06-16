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
-- Table structure for table `vendor_medicine`
--

DROP TABLE IF EXISTS `vendor_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_medicine` (
  `vendor_medicine_id` bigint NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci,
  `salt_composition` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `medicine_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `packing_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country_of_origin` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prescription_required` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` text COLLATE utf8mb4_general_ci,
  `manufacture` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `batch_number` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bucket_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `batch_id` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price_id` int DEFAULT NULL,
  `medicine_owner` enum('super_admin','vendor') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `medicine_id` int DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  PRIMARY KEY (`vendor_medicine_id`),
  KEY `fk_bucket_id` (`bucket_id`),
  KEY `fk_priceId` (`price_id`),
  KEY `FKa90y17lcvtqycry4l0b5yi76r` (`medicine_id`),
  CONSTRAINT `fk_bucket_id` FOREIGN KEY (`bucket_id`) REFERENCES `bucket` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_master_medicine_id` FOREIGN KEY (`medicine_id`) REFERENCES `medicine_master_db_table` (`medicine_id`),
  CONSTRAINT `fk_priceId` FOREIGN KEY (`price_id`) REFERENCES `vendor_medicine_price` (`price_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_medicine`
--

LOCK TABLES `vendor_medicine` WRITE;
/*!40000 ALTER TABLE `vendor_medicine` DISABLE KEYS */;
INSERT INTO `vendor_medicine` VALUES (206,'Augmentin 625 Duo Tablet','Amoxycillin (500mg) + Clavulanic Acid (125mg)','allopathy','1 Strip','India','Prescription Required','Store below 30C','Glaxo SmithKline Pharmaceuticals Ltd',NULL,14,'2026-05-28 07:24:03','2026-05-28 07:24:03','null',NULL,'super_admin',1,NULL,NULL,NULL,361749);
/*!40000 ALTER TABLE `vendor_medicine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:01:09
