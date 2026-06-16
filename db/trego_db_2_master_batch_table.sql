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
-- Table structure for table `master_batch_table`
--

DROP TABLE IF EXISTS `master_batch_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_batch_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_id` int NOT NULL,
  `batch_id` varchar(25) DEFAULT NULL,
  `mrp` decimal(10,2) DEFAULT '0.00',
  `expiry_date` date NOT NULL,
  `manufacturer_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int DEFAULT '0',
  `created_by` varchar(25) DEFAULT 'super_admin',
  PRIMARY KEY (`id`),
  KEY `medicine_id` (`medicine_id`),
  CONSTRAINT `master_batch_table_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine_master_db_table` (`medicine_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_batch_table`
--

LOCK TABLES `master_batch_table` WRITE;
/*!40000 ALTER TABLE `master_batch_table` DISABLE KEYS */;
INSERT INTO `master_batch_table` VALUES (1,1,'AU01',188.00,'2026-06-05','2026-05-28','2026-05-22 21:07:15','2026-05-22 21:07:15',101,'super_admin'),(2,1,'AU02',189.00,'2026-06-03','2026-06-04','2026-05-22 21:09:41','2026-05-22 21:09:41',0,'super_admin'),(3,1,'AU03',200.00,'2026-06-18','2026-05-19','2026-05-23 09:55:28','2026-05-23 09:55:28',100,'super_admin'),(5,4,'AL01',218.81,'2027-05-24','2026-05-17','2026-05-24 06:47:52','2026-05-24 06:47:52',0,'super_admin'),(6,4,'AL02',220.00,'2026-07-03','2026-05-04','2026-05-24 06:48:31','2026-05-24 06:48:31',0,'super_admin'),(8,6,'AM01',182.78,'2027-05-25','2026-05-17','2026-05-25 12:59:17','2026-05-25 12:59:17',10,'super_admin'),(9,6,'AM02',182.78,'2026-06-06','2026-05-17','2026-05-25 12:59:40','2026-05-25 12:59:40',50,'super_admin'),(10,11,'AC01',40.94,'2027-05-25','2026-05-17','2026-05-25 15:28:29','2026-05-25 15:28:29',65,'super_admin'),(11,3,'AS01',118.00,'2027-05-25','2026-05-17','2026-05-25 15:33:36','2026-05-25 15:33:36',0,'super_admin'),(14,5,'AV01',200.00,'2026-06-05','2026-05-01','2026-05-27 11:33:20','2026-05-27 11:33:20',0,'vendor'),(15,5,'AV02',200.00,'2026-06-05','2026-05-01','2026-05-27 11:33:42','2026-05-27 11:33:42',0,'vendor'),(20,1,'AU07',200.00,'2026-05-30','2026-05-04','2026-05-27 11:58:12','2026-05-27 11:58:12',0,'vendor'),(21,1,'AU08',200.00,'2026-05-30','2026-05-04','2026-05-27 11:59:46','2026-05-27 11:59:46',100,'vendor'),(22,1,'AU09',200.00,'2026-05-12','2026-05-04','2026-05-27 17:16:56','2026-05-27 17:16:56',100,'vendor'),(23,8,'AT01',185.00,'2026-06-18','2026-04-27','2026-05-27 17:49:18','2026-05-27 17:49:18',0,'vendor'),(24,25,'AL03',209.00,'2027-05-28','2026-05-17','2026-05-28 07:21:58','2026-05-28 07:21:58',0,'super_admin');
/*!40000 ALTER TABLE `master_batch_table` ENABLE KEYS */;
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
