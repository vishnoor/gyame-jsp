-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 167.99.89.198    Database: support_desk
-- ------------------------------------------------------
-- Server version	5.5.65-MariaDB

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
-- Table structure for table `t_gym_address`
--

DROP TABLE IF EXISTS `t_gym_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gym_address` (
  `address_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `address_type_id` bigint(20) NOT NULL,
  `line1` varchar(100) NOT NULL,
  `line2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `t_gym_address_FK` (`address_type_id`),
  KEY `t_gym_address_FK_1` (`employee_id`),
  CONSTRAINT `t_gym_address_FK` FOREIGN KEY (`address_type_id`) REFERENCES `t_mst_address_type` (`address_type_id`),
  CONSTRAINT `t_gym_address_FK_1` FOREIGN KEY (`employee_id`) REFERENCES `t_gym_employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gym_address`
--

LOCK TABLES `t_gym_address` WRITE;
/*!40000 ALTER TABLE `t_gym_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gym_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mst_gender`
--

DROP TABLE IF EXISTS `t_mst_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mst_gender` (
  `gender_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gender_code` varchar(4) NOT NULL,
  `gender_desc` varchar(24) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mst_gender`
--

LOCK TABLES `t_mst_gender` WRITE;
/*!40000 ALTER TABLE `t_mst_gender` DISABLE KEYS */;
INSERT INTO `t_mst_gender` VALUES (1,'ML','Male',1);
INSERT INTO `t_mst_gender` VALUES (2,'FL','Female',1);
INSERT INTO `t_mst_gender` VALUES (3,'TG','Transgender',1);
INSERT INTO `t_mst_gender` VALUES (4,'CK','Chakka',0);
/*!40000 ALTER TABLE `t_mst_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mst_address_type`
--

DROP TABLE IF EXISTS `t_mst_address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mst_address_type` (
  `address_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_type_code` varchar(10) NOT NULL,
  `address_type_desc` varchar(40) NOT NULL,
  PRIMARY KEY (`address_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mst_address_type`
--

LOCK TABLES `t_mst_address_type` WRITE;
/*!40000 ALTER TABLE `t_mst_address_type` DISABLE KEYS */;
INSERT INTO `t_mst_address_type` VALUES (1,'HOME','Home Address');
INSERT INTO `t_mst_address_type` VALUES (2,'WORK','Work Address');
/*!40000 ALTER TABLE `t_mst_address_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gym_employee`
--

DROP TABLE IF EXISTS `t_gym_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gym_employee` (
  `employee_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gender_id` bigint(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `t_gym_employee_FK` (`gender_id`),
  CONSTRAINT `t_gym_employee_FK` FOREIGN KEY (`gender_id`) REFERENCES `t_mst_gender` (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gym_employee`
--

LOCK TABLES `t_gym_employee` WRITE;
/*!40000 ALTER TABLE `t_gym_employee` DISABLE KEYS */;
INSERT INTO `t_gym_employee` VALUES (1,'Sujit','Mishra','sujit.mishra@gyame.in',3,'1996-01-01');
/*!40000 ALTER TABLE `t_gym_employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-26 15:18:50
