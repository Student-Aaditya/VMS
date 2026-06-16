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
-- Table structure for table `vendor_signup`
--

DROP TABLE IF EXISTS `vendor_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_signup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mobileNo` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'vendor',
  `verified` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `otp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_signup`
--

LOCK TABLES `vendor_signup` WRITE;
/*!40000 ALTER TABLE `vendor_signup` DISABLE KEYS */;
INSERT INTO `vendor_signup` VALUES (12,'Ratan medicos ','ratan_medicos@gmail.com','9842684235','$2b$10$RcWrUshnjTzSQ5yvCzbmneqwQYNKkfD3w0IK3PUPe01v8l0fkpIiO','vendor',0,'2026-05-16 12:02:02','303644','2026-05-16 17:37:00'),(13,'Amit pharmacy ','amitPharmacy@gmail.com','8545654556','$2b$10$IRTFuZVrpFdH5yYmgf/Za.71lYcZDk1IZZX0xpffo01WLHEeEfXsO','vendor',0,'2026-05-16 12:13:08','608648','2026-05-16 17:48:06'),(14,'Apollo pharmacy ','apollo@gmail.com','9564782316','$2b$10$Da4ShR1Ug84T0RN7vY2NHOG1u8Z1.tNgXx8u0xzzp..bK3V4D9Bsi','vendor',0,'2026-05-16 13:43:14','672276','2026-05-16 19:18:11'),(15,'Tata 1mg','tata@gmail.com','9650847250','$2b$10$Pbo3qVl0aPVCVhR08q2aTex8SmI7fSFT/YnYdEnue/58l4pTczVUq','vendor',0,'2026-05-16 13:49:23','545891','2026-05-16 19:24:21'),(17,'Yogender','yogender@gmail.com','9650847250','$2b$10$0Pvp5pyhiFQ7IyOmagd1eOi9Y7LLJCB.iLJIU/SSw7MCwLNA6POJe','vendor',0,'2026-05-18 03:39:40','320056','2026-05-18 09:14:40');
/*!40000 ALTER TABLE `vendor_signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:01:14
