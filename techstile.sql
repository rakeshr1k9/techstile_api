CREATE DATABASE  IF NOT EXISTS `techstile` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `techstile`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: techstile
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id_customer` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_mobile` decimal(12,0) DEFAULT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `customer_address` varchar(45) DEFAULT NULL,
  `customer_is_deleted` tinyint(4) DEFAULT NULL,
  `customer_created_at` datetime DEFAULT NULL,
  `customer_updated_at` datetime DEFAULT NULL,
  `customer_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id_item` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `item_type_id` bigint(20) DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `item_qr_code` varchar(20) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `item_should_deliver_at` datetime DEFAULT NULL,
  `item_delivered_at` datetime DEFAULT NULL,
  `item_is_deleted` tinyint(4) DEFAULT NULL,
  `item_created_at` datetime DEFAULT NULL,
  `item_updated_at` datetime DEFAULT NULL,
  `item_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_category` (
  `id_item_category` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_category_name` varchar(20) DEFAULT NULL,
  `item_category_id_deleted` tinyint(4) DEFAULT NULL,
  `item_category_created_at` datetime DEFAULT NULL,
  `item_category_updated_at` datetime DEFAULT NULL,
  `item_category_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_item_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_category`
--

LOCK TABLES `item_category` WRITE;
/*!40000 ALTER TABLE `item_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_status`
--

DROP TABLE IF EXISTS `item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_status` (
  `id_item_status` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `scan_status` tinyint(4) DEFAULT NULL,
  `scanned_by_user_id` bigint(20) DEFAULT NULL,
  `item_status_is_deleted` tinyint(4) DEFAULT NULL,
  `item_status_created_at` datetime DEFAULT NULL,
  `item_status_updated_at` datetime DEFAULT NULL,
  `item_status_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_item_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_status`
--

LOCK TABLES `item_status` WRITE;
/*!40000 ALTER TABLE `item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_type`
--

DROP TABLE IF EXISTS `item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_type` (
  `id_item_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_category_id` bigint(20) DEFAULT NULL,
  `item_type_name` varchar(20) DEFAULT NULL,
  `item_type_image` varchar(200) DEFAULT NULL,
  `item_type_is_deleted` tinyint(4) DEFAULT NULL,
  `item_type_created_at` datetime DEFAULT NULL,
  `item_type_updated_at` datetime DEFAULT NULL,
  `item_type_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_item_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_type`
--

LOCK TABLES `item_type` WRITE;
/*!40000 ALTER TABLE `item_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id_order` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `order_total_amount` int(11) DEFAULT NULL,
  `order_delivered_at` datetime DEFAULT NULL,
  `order_is_deleted` tinyint(4) DEFAULT NULL,
  `order_created_at` datetime DEFAULT NULL,
  `order_updated_at` datetime DEFAULT NULL,
  `order_deleted_at` datetime DEFAULT NULL,
  `order_should_deliver_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id_payment` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_method_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `payment_is_deleted` tinyint(4) DEFAULT NULL,
  `payment_created_at` datetime DEFAULT NULL,
  `payment_updated_at` datetime DEFAULT NULL,
  `payment_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_payment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method` (
  `id_payment_method` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_method_type` varchar(20) DEFAULT NULL,
  `payment_method_is_deleted` tinyint(4) DEFAULT NULL,
  `payment_method_created_at` datetime DEFAULT NULL,
  `payment_method_updated_at` datetime DEFAULT NULL,
  `payment_method_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_payment_method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id_service` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) DEFAULT NULL,
  `service_type_id` bigint(20) DEFAULT NULL,
  `service_is_deleted` tinyint(4) DEFAULT NULL,
  `service_created_at` datetime DEFAULT NULL,
  `service_updated_at` datetime DEFAULT NULL,
  `service_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_price`
--

DROP TABLE IF EXISTS `service_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_price` (
  `id_service_price` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_type_id` bigint(20) DEFAULT NULL,
  `service_type_id` bigint(20) DEFAULT NULL,
  `item_service_price` int(11) DEFAULT NULL,
  `service_price_is_deleted` tinyint(4) DEFAULT NULL,
  `service_price_created_at` datetime DEFAULT NULL,
  `service_price_updated_at` datetime DEFAULT NULL,
  `service_price_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_service_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_price`
--

LOCK TABLES `service_price` WRITE;
/*!40000 ALTER TABLE `service_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_type`
--

DROP TABLE IF EXISTS `service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_type` (
  `id_service_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_type_name` varchar(20) DEFAULT NULL,
  `service_type_image` varchar(200) DEFAULT NULL,
  `service_type_is_deleted` tinyint(4) DEFAULT NULL,
  `service_type_created_at` datetime DEFAULT NULL,
  `service_type_updated_at` datetime DEFAULT NULL,
  `service_type_deleted_at` datetime DEFAULT NULL,
  `service_type_is_group` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_service_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_type`
--

LOCK TABLES `service_type` WRITE;
/*!40000 ALTER TABLE `service_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id_status` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_type_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_mobile` decimal(12,0) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_is_deleted` tinyint(4) DEFAULT NULL,
  `user_created_at` datetime DEFAULT NULL,
  `user_updated_at` datetime DEFAULT NULL,
  `user_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_type` (
  `id_user_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(20) DEFAULT NULL,
  `user_type_is_deleted` tinyint(4) DEFAULT NULL,
  `user_type_created_at` datetime DEFAULT NULL,
  `user_type_updated_at` datetime DEFAULT NULL,
  `user_type_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'techstile'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-29  9:47:43
