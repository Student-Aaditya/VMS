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
-- Table structure for table `vendor_informations`
--

DROP TABLE IF EXISTS `vendor_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_informations` (
  `applicant_id` int NOT NULL AUTO_INCREMENT,
  `vendor_user_id` int NOT NULL,
  `vendor_id` int DEFAULT NULL,
  `ref_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` enum('pharmacy','pathology','surgery') COLLATE utf8mb4_general_ci NOT NULL,
  `category_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `druglicense` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gstin` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delivery_time_minutes` int DEFAULT NULL,
  `delivery_range_km` decimal(5,2) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `user_discount` decimal(5,2) DEFAULT '0.00',
  `company_discount` decimal(5,2) DEFAULT '0.00',
  `vendor_offer_user` decimal(5,2) DEFAULT '0.00',
  `company_offer_user` decimal(5,2) DEFAULT '0.00',
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `verified_by` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pan_card` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_passbook` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cancelled_cheque` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`applicant_id`),
  UNIQUE KEY `vendor_id` (`vendor_id`),
  KEY `fk_vendor_user` (`vendor_user_id`),
  CONSTRAINT `fk_vendor_user_id` FOREIGN KEY (`vendor_user_id`) REFERENCES `vendor_signup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_informations`
--

LOCK TABLES `vendor_informations` WRITE;
/*!40000 ALTER TABLE `vendor_informations` DISABLE KEYS */;
INSERT INTO `vendor_informations` VALUES (11,12,347582,'Ratan Medicos','pharmacy','retailer','Knowledge Park 2, Noida','12455956A','27AAPFU0939F1ZV','9456124566','nidhi@gmail.com',1,1,'2026-05-16 12:05:43','2026-05-16 12:31:42','www.ratanMedicos.com','www.ratanMedicos.com',50,5.00,NULL,NULL,10.00,10.00,10.00,10.00,'2026-05-14','2026-05-29','null','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933141096-936875249.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933141109-60341698.png','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933141142-410489504.jpg',NULL,NULL),(12,13,709400,'Amit Pharmacy','pharmacy','retailer','knowledge park 2','12455956A','27AAPFU0939F1ZV','9456124566','amit@gmail.com',1,1,'2026-05-16 12:14:33','2026-05-16 12:31:41','www.amitPharmacy.com','www.amitPahrmacy.com',50,5.00,NULL,NULL,10.00,10.00,10.00,10.00,'2026-05-15','2026-05-30','null','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933671594-303668769.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933671594-316938108.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933671595-797054030.jpeg',NULL,NULL),(13,14,143456,'Apolo pharmacy','pharmacy','wholesaler','knowledge Park 2, Noida','12455956A','27AAPFU0939F1ZV','9456124566','apolo@gmail.com',1,1,'2026-05-16 13:46:34','2026-05-16 13:53:29','www.apoloPharmacy.com','www.apoloPharmacy.com',50,5.00,NULL,NULL,10.00,10.00,10.00,10.00,'2026-05-15','2026-05-30','null','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939192485-136345121.jpeg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939192489-879571960.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939192489-608069223.jpg',NULL,NULL),(14,15,931315,'Tata 1 mg','pharmacy','wholesaler','knowledge Park 2, Noida','12455956A','27AAPFU0939F1ZV','9650847250','apolo@gmail.com',1,1,'2026-05-16 13:52:10','2026-05-17 10:41:10','https://assets.1mg.com/pwa-https://res.cloudinary.com/dxoy1r7v8/image/upload/v1779014279/2_5_f6woze.jpg','https://www.1mg.com/',50,5.00,NULL,NULL,10.00,10.00,10.00,10.00,'2026-05-15','2026-05-30','null','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939528320-431235974.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939528321-961948979.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939528323-206250152.jpeg',NULL,NULL),(16,17,361749,'Yogender ','pharmacy','wholesaler','Knowledge Park 2, Noida','12455956A','27AAPFU0939F1ZV','8800585503','shamser.doc.personal@gmail.com',1,1,'2026-05-18 03:41:11','2026-05-18 03:43:54','https://assets.1mg.com/pwa-app/production/dweb/2.0.3/static/images/svgs/icons/1mg_logo_header.svg','https://www.1mg.com/',50,5.00,NULL,NULL,10.00,10.00,10.00,10.00,'2026-05-15','2026-05-30','null','https://res.cloudinary.com/dxoy1r7v8/image/upload/v1779075669/uploads/kgjkpnmcnzuuzspzjhrd.jpg','https://res.cloudinary.com/dxoy1r7v8/image/upload/v1779075669/uploads/gaw6t9mnnrnxhwciilrn.jpg','https://res.cloudinary.com/dxoy1r7v8/image/upload/v1779075670/uploads/phokgkvj28b6zqpwdwwp.jpg',NULL,NULL);
/*!40000 ALTER TABLE `vendor_informations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 21:01:13
