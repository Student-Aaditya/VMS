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
-- Table structure for table `pre_orders`
--

DROP TABLE IF EXISTS `pre_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address_id` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_pay_amount` double DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` int DEFAULT NULL,
  `selected_vendor_id` int DEFAULT NULL,
  `vendor_payload` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_orders`
--

LOCK TABLES `pre_orders` WRITE;
/*!40000 ALTER TABLE `pre_orders` DISABLE KEYS */;
INSERT INTO `pre_orders` VALUES (30,2,'2026-05-15 15:38:36.000000','SYSTEM',NULL,'new','{\"userId\":-1,\"orderId\":0,\"addressId\":0,\"totalCartValue\":300.0,\"amountToPay\":270.0,\"discount\":0.0,\"carts\":[{\"vendorId\":15,\"medicine\":[{\"id\":203,\"mrp\":0.0,\"discount\":0.0,\"qty\":1}]},{\"vendorId\":14,\"medicine\":[{\"id\":203,\"mrp\":0.0,\"discount\":0.0,\"qty\":1}]},{\"vendorId\":17,\"medicine\":[{\"id\":203,\"mrp\":0.0,\"discount\":0.0,\"qty\":1}]},{\"vendorId\":16,\"medicine\":[{\"id\":203,\"mrp\":300.0,\"discount\":10.0,\"qty\":1}]}]}','unpaid','order_SrFWy8ANiVpcry',270,-1,'2026-05-19 14:05:45.000000',NULL,0,NULL,NULL),(31,2,'2026-05-16 03:54:40.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":400.0,\"amountToPay\":380.0,\"discount\":0.0,\"carts\":[{\"vendorId\":1,\"medicine\":[{\"id\":64,\"mrp\":400.0,\"discount\":5.0,\"qty\":1}]}]}','paid','order_Sq3UH77jtb6RdC',380,2,'2026-05-16 13:40:06.000000',NULL,0,NULL,NULL),(32,1,'2026-05-16 13:17:55.000000','SYSTEM',NULL,'new','{\"userId\":1,\"orderId\":0,\"addressId\":1,\"totalCartValue\":1100.0,\"amountToPay\":1015.00,\"discount\":0.0,\"carts\":[{\"vendorId\":12,\"medicine\":[{\"id\":73,\"mrp\":600.0,\"discount\":10.0,\"qty\":1}]},{\"vendorId\":11,\"medicine\":[{\"id\":69,\"mrp\":500.0,\"discount\":5.0,\"qty\":1}]}]}','unpaid',NULL,NULL,1,'2026-05-16 13:18:04.000000',NULL,NULL,NULL,NULL),(33,2,'2026-05-16 13:40:07.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":400.0,\"amountToPay\":380.0,\"discount\":0.0,\"carts\":[{\"vendorId\":1,\"medicine\":[{\"id\":64,\"mrp\":400.0,\"discount\":5.0,\"qty\":1}]}]}','paid','order_Sq3ZyTePUun7lx',380,2,'2026-05-16 13:45:31.000000',NULL,0,NULL,NULL),(34,2,'2026-05-16 13:45:32.000000','SYSTEM',NULL,'cancelled','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":500.0,\"amountToPay\":450.0,\"discount\":0.0,\"carts\":[{\"vendorId\":16,\"medicine\":[{\"id\":105,\"mrp\":500.0,\"discount\":10.0,\"qty\":1}]}]}','paid','order_Sq7RzRpIH7X2b8',450,2,'2026-05-16 17:32:49.000000',NULL,0,NULL,NULL),(35,2,'2026-05-16 17:32:50.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":400.0,\"amountToPay\":380.0,\"discount\":0.0,\"carts\":[{\"vendorId\":1,\"medicine\":[{\"id\":64,\"mrp\":400.0,\"discount\":5.0,\"qty\":1}]}]}','paid','order_SqQsUoKkc9FLCR',380,2,'2026-05-17 12:33:01.000000',NULL,0,NULL,NULL),(36,2,'2026-05-17 12:33:01.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":300.0,\"amountToPay\":270.0,\"discount\":0.0,\"carts\":[{\"vendorId\":16,\"medicine\":[{\"id\":203,\"mrp\":300.0,\"discount\":10.0,\"qty\":1}]}]}','paid','order_SqzDMvXSx6OZGH',270,2,'2026-05-18 22:08:25.000000',NULL,0,NULL,NULL),(37,2,'2026-05-18 22:08:25.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":217.70999999999998,\"amountToPay\":246.70999999999998,\"discount\":0.0,\"carts\":[{\"vendorId\":16,\"medicine\":[{\"id\":115,\"mrp\":117.71,\"discount\":0.0,\"qty\":1},{\"id\":116,\"mrp\":129.0,\"discount\":0.0,\"qty\":1}]}]}','paid','order_Sr9OUZDDASyVgQ',246.70999999999998,2,'2026-05-19 08:05:56.000000',NULL,0,NULL,NULL),(38,2,'2026-05-19 08:05:57.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":900.0,\"amountToPay\":810.0,\"discount\":0.0,\"carts\":[{\"vendorId\":16,\"medicine\":[{\"id\":203,\"mrp\":300.0,\"discount\":10.0,\"qty\":3}]}]}','paid','order_Sr9QxK9KIOh4r5',810,2,'2026-05-19 08:08:29.000000',NULL,0,NULL,NULL),(39,2,'2026-05-19 08:08:29.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":282.78,\"amountToPay\":300.78,\"discount\":0.0,\"carts\":[{\"vendorId\":15,\"medicine\":[{\"id\":133,\"mrp\":182.78,\"discount\":0.0,\"qty\":1},{\"id\":134,\"mrp\":118.0,\"discount\":0.0,\"qty\":1}]}]}','paid','order_SrA9Hb8UGkrNdG',300.78,2,'2026-05-19 08:50:03.000000',NULL,0,NULL,NULL),(40,2,'2026-05-19 08:50:04.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":300.0,\"amountToPay\":270.0,\"discount\":0.0,\"carts\":[{\"vendorId\":16,\"medicine\":[{\"id\":203,\"mrp\":300.0,\"discount\":10.0,\"qty\":1}]}]}','paid','order_SrALFMYbkoxz0K',270,2,'2026-05-19 09:01:27.000000',NULL,0,NULL,NULL),(41,2,'2026-05-19 09:01:28.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":593.75,\"amountToPay\":549.25,\"discount\":0.0,\"carts\":[{\"vendorId\":16,\"medicine\":[{\"id\":203,\"mrp\":300.0,\"discount\":10.0,\"qty\":1}]},{\"vendorId\":18,\"medicine\":[{\"id\":126,\"mrp\":10.97,\"discount\":0.0,\"qty\":1},{\"id\":127,\"mrp\":182.78,\"discount\":0.0,\"qty\":1},{\"id\":129,\"mrp\":85.5,\"discount\":0.0,\"qty\":1}]}]}','paid','order_SrAPbfC6nOf5yQ',549.25,2,'2026-05-19 09:05:37.000000',NULL,0,NULL,NULL),(42,2,'2026-05-19 09:05:38.000000','SYSTEM',NULL,'cancelled','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":293.75,\"amountToPay\":311.46,\"discount\":0.0,\"carts\":[{\"vendorId\":18,\"medicine\":[{\"id\":126,\"mrp\":10.97,\"discount\":0.0,\"qty\":1},{\"id\":127,\"mrp\":182.78,\"discount\":0.0,\"qty\":1},{\"id\":128,\"mrp\":117.71,\"discount\":0.0,\"qty\":1}]}]}','paid','order_SrFb5e85FLpgWK',311.46,2,'2026-05-19 14:09:53.000000',NULL,0,NULL,NULL),(43,2,'2026-05-19 14:09:54.000000','SYSTEM',NULL,'new','{\"userId\":2,\"orderId\":0,\"addressId\":2,\"totalCartValue\":0.0,\"amountToPay\":0.0,\"discount\":0.0,\"carts\":[]}','unpaid',NULL,NULL,2,'2026-05-19 14:09:54.000000',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pre_orders` ENABLE KEYS */;
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
