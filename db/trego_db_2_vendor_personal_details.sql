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
-- Table structure for table `vendor_personal_details`
--

DROP TABLE IF EXISTS `vendor_personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_personal_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicant_id` int NOT NULL,
  `owner_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_no` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `profile_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aadhaar_card` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pan_card` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_personal_applicant` (`applicant_id`),
  CONSTRAINT `fk_personal_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `vendor_informations` (`applicant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_personal_details`
--

LOCK TABLES `vendor_personal_details` WRITE;
/*!40000 ALTER TABLE `vendor_personal_details` DISABLE KEYS */;
INSERT INTO `vendor_personal_details` VALUES (9,11,'Ratan Medicos',26,'Male','8942568956','Knowledge Park 2','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933271381-673884755.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933271381-463092256.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778933271381-618321093.jpg'),(10,12,'Amit ',29,'Male','9856451223','Knowledge Park 2, Noida','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778934052754-673605532.jpeg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778934052755-34686575.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778934052757-720661892.jpg'),(11,13,'Apolo',28,'Male','9856451223','Knowledge Park 2, Noida','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Apollo_Tyres_logo.svg/3840px-Apollo_Tyres_logo.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939231442-662351773.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939231442-605040954.jpeg'),(12,14,'Tata ',29,'Male','9650847250','Knowledge Park 2, Noida','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoSWXDPG-QENTRGo7LO5Ozl9MD-wHRNBElPg&s','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939565073-92340217.jpg','C:\\Users\\Aaditya\\Pictures\\Trego\\Trego\\backend\\uploads\\vendor-documents\\1778939565073-440301973.jpg'),(14,16,'Yogender',29,'Male','8800583305','Knowldege Park 2','https://res.cloudinary.com/dxoy1r7v8/image/upload/v1779075712/uploads/l7iqoay4lfrt1c29xe29.jpg','https://res.cloudinary.com/dxoy1r7v8/image/upload/v1779075712/uploads/soxjddwtlhaltwnfsg2s.jpg','https://res.cloudinary.com/dxoy1r7v8/image/upload/v1779075712/uploads/dnehan2pw2ou1ch2cmy3.jpg');
/*!40000 ALTER TABLE `vendor_personal_details` ENABLE KEYS */;
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
