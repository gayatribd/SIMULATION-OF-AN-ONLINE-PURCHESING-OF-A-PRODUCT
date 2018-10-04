CREATE DATABASE  IF NOT EXISTS `shopping_cart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shopping_cart`;
-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: shopping_cart
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `bill_no` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `total_amt` int(11) NOT NULL,
  PRIMARY KEY (`bill_no`),
  KEY `uid` (`uid`),
  CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_reg` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (30,17,850),(31,18,0),(32,17,1700),(33,17,850),(34,17,0),(35,17,0),(36,17,0),(37,17,850),(38,17,2550),(39,17,0),(40,17,0),(41,17,0),(42,17,0),(43,17,0),(44,17,850),(45,17,850),(46,17,850),(47,17,850),(48,17,850),(49,17,850),(50,17,850),(51,17,850),(52,17,850),(53,17,850),(54,17,850),(55,17,850),(56,17,850),(57,17,850),(58,17,850),(59,17,850),(60,17,850),(61,17,850),(62,17,850),(63,17,850),(64,17,850),(65,17,850),(66,17,850),(67,17,850),(68,18,0),(69,18,1700),(70,18,1700),(71,17,1700),(72,17,1700),(73,17,1700),(74,17,1700),(75,17,1700),(76,17,850),(77,17,850),(78,17,850),(79,17,850),(80,17,850),(81,17,850),(82,17,850),(83,17,850),(84,17,1700),(85,18,2550),(86,18,850),(87,19,850),(88,19,850);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `uid` (`uid`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_reg` (`uid`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'electronics');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_inv`
--

DROP TABLE IF EXISTS `order_inv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_inv` (
  `serial_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_prod_price` int(11) NOT NULL,
  PRIMARY KEY (`serial_id`),
  KEY `bill_no` (`bill_no`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_inv_ibfk_1` FOREIGN KEY (`bill_no`) REFERENCES `billing` (`bill_no`),
  CONSTRAINT `order_inv_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_inv`
--

LOCK TABLES `order_inv` WRITE;
/*!40000 ALTER TABLE `order_inv` DISABLE KEYS */;
INSERT INTO `order_inv` VALUES (31,30,1,1,850),(32,32,1,1,850),(33,32,1,1,850),(34,33,1,1,850),(35,37,1,1,850),(36,38,1,1,850),(37,38,1,1,850),(38,38,1,1,850),(39,44,1,1,850),(40,45,1,1,850),(41,46,1,1,850),(42,47,1,1,850),(43,48,1,1,850),(44,49,1,1,850),(45,50,1,1,850),(46,51,1,1,850),(47,52,1,1,850),(48,53,1,1,850),(49,54,1,1,850),(50,55,1,1,850),(51,56,1,1,850),(52,57,1,1,850),(53,58,1,1,850),(54,59,1,1,850),(55,60,1,1,850),(56,61,1,1,850),(57,62,1,1,850),(58,63,1,1,850),(59,64,1,1,850),(60,65,1,1,850),(61,66,1,1,850),(62,67,1,1,850),(63,69,1,1,850),(64,69,1,1,850),(65,70,1,1,850),(66,70,1,1,850),(67,71,1,1,850),(68,71,1,1,850),(69,72,1,1,850),(70,72,1,1,850),(71,73,1,1,850),(72,73,1,1,850),(73,74,1,1,850),(74,74,1,1,850),(75,75,1,1,850),(76,75,1,1,850),(77,76,1,1,850),(78,77,1,1,850),(79,78,1,1,850),(80,79,1,1,850),(81,80,1,1,850),(82,81,1,1,850),(83,82,1,1,850),(84,83,1,1,850),(85,84,1,1,850),(86,84,1,1,850),(87,85,1,1,850),(88,85,1,1,850),(89,85,1,1,850),(90,86,1,1,850),(91,87,1,1,850),(92,88,1,1,850);
/*!40000 ALTER TABLE `order_inv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Sony',850,3),(2,1,'Nikkon',250,20);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_reg` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reg`
--

LOCK TABLES `user_reg` WRITE;
/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` VALUES (17,'amitk','beaumont','7186640654','Amitk','asas'),(18,'subodh','beaumont','7186640654','subodh','123456'),(19,'xyz','abc','123456','abc','1234');
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-08 14:38:44
