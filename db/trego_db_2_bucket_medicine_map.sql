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
-- Table structure for table `bucket_medicine_map`
--

DROP TABLE IF EXISTS `bucket_medicine_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bucket_medicine_map` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bucket_id` int NOT NULL,
  `medicine_id` int NOT NULL,
  `medicine_source` enum('master','vendor') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `medicine_owner` enum('super_admin','vendor') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `vendor_user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `packaging` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_bucket` tinyint(1) NOT NULL DEFAULT '1',
  `batch_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_bucket_medicine_vendor` (`bucket_id`,`medicine_id`,`medicine_source`,`vendor_user_id`),
  KEY `fk_bmm_vendor` (`vendor_user_id`),
  KEY `fk_batch_id` (`batch_id`),
  CONSTRAINT `fk_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `master_batch_table` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_bmm_bucket` FOREIGN KEY (`bucket_id`) REFERENCES `bucket` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bucket_medicine_map`
--

LOCK TABLES `bucket_medicine_map` WRITE;
/*!40000 ALTER TABLE `bucket_medicine_map` DISABLE KEYS */;
INSERT INTO `bucket_medicine_map` VALUES (156,14,1,'master','super_admin','Augmentin 625 Duo Tablet',1,'2026-05-28 07:21:52',NULL,1,1),(157,14,25,'master','super_admin','Allegra Suspension Raspberry & Vanilla',1,'2026-05-28 07:21:58',NULL,1,24);
/*!40000 ALTER TABLE `bucket_medicine_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:01:11
