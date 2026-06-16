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
-- Table structure for table `otc_products`
--

DROP TABLE IF EXISTS `otc_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otc_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `alternate_brand` varchar(255) DEFAULT NULL,
  `benefits` varchar(255) DEFAULT NULL,
  `best_price` decimal(38,2) DEFAULT NULL,
  `breadcrum` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `country_of_origin` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount_percent` decimal(38,2) DEFAULT NULL,
  `for_sale` varchar(255) DEFAULT NULL,
  `how_to_use` varchar(255) DEFAULT NULL,
  `how_works` varchar(255) DEFAULT NULL,
  `if_miss` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `manufacturer_address` varchar(255) DEFAULT NULL,
  `manufacturers` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pack_info` varchar(255) DEFAULT NULL,
  `packaging` varchar(255) DEFAULT NULL,
  `prescription_required` varchar(255) DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `primary_use` varchar(255) DEFAULT NULL,
  `safety_advise` varchar(255) DEFAULT NULL,
  `salt_synonmys` varchar(255) DEFAULT NULL,
  `side_effect` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `subcategory_id` bigint DEFAULT NULL,
  `tax` decimal(38,2) DEFAULT NULL,
  `use_of` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otc_products`
--

LOCK TABLES `otc_products` WRITE;
/*!40000 ALTER TABLE `otc_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `otc_products` ENABLE KEYS */;
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
