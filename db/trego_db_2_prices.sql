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
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `price_id` bigint NOT NULL AUTO_INCREMENT,
  `discount` decimal(38,2) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `mrp` decimal(38,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `medicine_id` bigint DEFAULT NULL,
  `vendor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`price_id`),
  KEY `FKmwojvh84h5tg74kh3859fqr5r` (`medicine_id`),
  KEY `FKxk31wg96n79il6r6u4m0pi4m` (`vendor_id`),
  CONSTRAINT `FKmwojvh84h5tg74kh3859fqr5r` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`medicine_id`),
  CONSTRAINT `FKrb9xcjdd11tr6tl5o7jaogi6d` FOREIGN KEY (`vendor_id`) REFERENCES `vendors_information` (`vendor_user_id`),
  CONSTRAINT `FKxk31wg96n79il6r6u4m0pi4m` FOREIGN KEY (`vendor_id`) REFERENCES `vendors_medicine` (`vendor_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:01:12
