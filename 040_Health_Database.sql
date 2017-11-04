-- MySQL dump 10.13  Distrib 5.6.14, for osx10.7 (x86_64)
--
-- Host: localhost    Database: health
-- ------------------------------------------------------
-- Server version	5.6.14

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

DROP DATABASE IF EXISTS CAVE_HEALTH_SURVEY;
CREATE DATABASE IF NOT EXISTS CAVE_HEALTH_SURVEY;
USE CAVE_HEALTH_SURVEY;

--
-- Table structure for table `concentration`
--

DROP TABLE IF EXISTS `concentration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concentration` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concentration`
--

LOCK TABLES `concentration` WRITE;
/*!40000 ALTER TABLE `concentration` DISABLE KEYS */;
INSERT INTO `concentration` VALUES (1,'Very poor; I am easily distracted or have trouble thinking clearly.'),(2,'Not very good, but I can concentrate when really necessary.'),(3,'My ability to concentrate is around average.'),(4,'I can concentrate rather well.'),(5,'I have very good concentration and focus.');
/*!40000 ALTER TABLE `concentration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink`
--

DROP TABLE IF EXISTS `drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drink` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink`
--

LOCK TABLES `drink` WRITE;
/*!40000 ALTER TABLE `drink` DISABLE KEYS */;
INSERT INTO `drink` VALUES (1,'I don\'t drink alcohol'),(2,'Occasionally'),(3,'I drink every day, but moderately'),(4,'I\'m a heavy drinker');
/*!40000 ALTER TABLE `drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` VALUES (1,'I avoid exercise'),(2,'Sometimes / Occasionally'),(3,'I exercise at least weekly'),(4,'I exercise daily');
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fat`
--

DROP TABLE IF EXISTS `fat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fat` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fat`
--

LOCK TABLES `fat` WRITE;
/*!40000 ALTER TABLE `fat` DISABLE KEYS */;
INSERT INTO `fat` VALUES (1,'I follow a low-fat diet.'),(2,'I try to avoid fat, but my diet isn\'t really low fat.'),(3,'I think I eat an average amount of fat.'),(4,'I probably eat more fat than average.'),(5,'I eat a high-fat diet and consume a much greater proportion of my calories from fat than the average person.');
/*!40000 ALTER TABLE `fat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
INSERT INTO `health` VALUES (1,'I have suffered, or am suffering from, a serious illness during the past year'),(2,'My health has been poor, but I haven\'t been seriously ill.'),(3,'My health has been OK.'),(4,'My health has generally been good.'),(5,'My health has been excellent.');
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smoke`
--

DROP TABLE IF EXISTS `smoke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smoke` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smoke`
--

LOCK TABLES `smoke` WRITE;
/*!40000 ALTER TABLE `smoke` DISABLE KEYS */;
INSERT INTO `smoke` VALUES (1,'I don\'t smoke'),(2,'Occasionally'),(3,'I smoke daily, but moderately'),(4,'I smoke heavily');
/*!40000 ALTER TABLE `smoke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugar`
--

DROP TABLE IF EXISTS `sugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugar` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugar`
--

LOCK TABLES `sugar` WRITE;
/*!40000 ALTER TABLE `sugar` DISABLE KEYS */;
INSERT INTO `sugar` VALUES (1,'Very rarely or never'),(2,'Occasionally'),(3,'Don\'t know / uncertain'),(4,'Often/frequently'),(5,'I am addicted to sweet things / Very often');
/*!40000 ALTER TABLE `sugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` enum('male','female') NOT NULL,
  `country` varchar(30) NOT NULL,
  `weight` decimal(3,0) NOT NULL,
  `height` decimal(3,0) NOT NULL,
  `age` decimal(3,0) NOT NULL,
  `fat` tinyint(4) NOT NULL,
  `sugar` tinyint(4) NOT NULL,
  `smoke` tinyint(4) NOT NULL,
  `drink` tinyint(4) NOT NULL,
  `exercise` tinyint(4) NOT NULL,
  `health` tinyint(4) NOT NULL,
  `concentration` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fat` (`fat`),
  KEY `sugar` (`sugar`),
  KEY `smoke` (`smoke`),
  KEY `drink` (`drink`),
  KEY `exercise` (`exercise`),
  KEY `health` (`health`),
  KEY `concentration` (`concentration`),
  CONSTRAINT `survey_ibfk_1` FOREIGN KEY (`fat`) REFERENCES `fat` (`id`),
  CONSTRAINT `survey_ibfk_2` FOREIGN KEY (`sugar`) REFERENCES `sugar` (`id`),
  CONSTRAINT `survey_ibfk_3` FOREIGN KEY (`smoke`) REFERENCES `smoke` (`id`),
  CONSTRAINT `survey_ibfk_4` FOREIGN KEY (`drink`) REFERENCES `drink` (`id`),
  CONSTRAINT `survey_ibfk_5` FOREIGN KEY (`exercise`) REFERENCES `exercise` (`id`),
  CONSTRAINT `survey_ibfk_6` FOREIGN KEY (`health`) REFERENCES `health` (`id`),
  CONSTRAINT `survey_ibfk_7` FOREIGN KEY (`concentration`) REFERENCES `concentration` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES (1,'male','UK',74,182,41,3,2,1,2,2,4,4),(2,'male','Kosova',73,183,26,4,4,1,1,2,5,3),(3,'male','India',80,165,25,2,2,1,2,2,4,3),(4,'male','USA',65,176,37,3,2,1,3,3,4,2),(5,'male','USA',73,183,19,1,1,1,2,3,5,5),(6,'male','Sweden',94,185,25,3,2,1,2,2,5,3),(7,'male','Argentina',68,178,28,2,1,1,2,4,5,4),(8,'male','USA',88,173,41,2,2,1,2,2,3,2),(9,'male','USA',51,172,16,3,3,1,1,2,4,3),(10,'male','Pakistan',77,182,19,3,4,1,1,4,4,2),(11,'male','China',80,175,26,3,3,1,1,2,3,3),(12,'male','Australia',89,186,22,2,2,1,1,4,5,4),(13,'female','Hungary',46,169,23,1,2,1,1,2,3,2),(14,'male','Syria',70,180,30,2,4,1,1,3,4,4),(15,'male','India',95,160,27,4,5,4,4,3,2,4),(16,'male','Poland',60,173,28,3,4,1,2,2,4,4),(17,'female','UK',70,165,32,4,4,1,2,4,3,3),(18,'male','Ireland',73,166,32,4,5,1,2,2,3,2),(19,'male','India',62,162,23,1,4,1,2,4,4,2),(20,'male','Greece',68,170,39,4,1,1,1,4,2,2),(21,'male','USA',130,185,46,4,4,1,2,2,3,2),(22,'male','ireland',62,172,21,3,4,1,2,3,5,4),(23,'male','USA',50,160,18,3,4,1,1,3,4,2),(24,'female','India',56,166,25,3,4,1,1,2,4,3),(25,'male','Croatia',111,198,29,4,2,3,1,3,4,2),(26,'male','Spain',54,180,15,3,2,1,1,2,4,4),(27,'male','USA',63,180,19,3,4,1,2,3,4,4),(28,'female','India',78,165,24,2,4,1,1,1,2,2),(29,'male','Poland',78,183,19,3,2,1,2,3,4,5),(30,'male','Nigeria',70,168,28,3,4,1,1,4,4,4),(31,'male','Indonesia',80,191,22,3,2,1,1,3,4,3),(32,'male','India',78,170,19,2,3,1,1,4,2,4),(33,'male','Hungary',95,180,41,3,2,1,2,3,4,5),(34,'male','USA',63,198,17,3,2,1,1,2,5,3),(35,'male','Lebanon',80,176,21,4,4,1,1,3,1,5),(36,'male','USA',120,140,14,3,4,1,1,2,4,3),(37,'male','India',75,182,24,3,2,1,1,3,4,3),(38,'male','USA',38,158,20,3,2,1,1,1,5,4),(39,'male','Canada',88,181,28,3,2,1,2,3,5,4),(40,'male','India',74,185,21,3,4,1,2,1,5,4),(41,'male','Italy',76,181,37,2,2,1,1,3,4,4),(42,'female','India',55,165,22,3,2,1,1,4,4,4),(43,'male','UK',83,185,55,5,1,2,2,3,5,4),(44,'male','Singapore',78,171,37,2,2,1,2,3,5,2),(45,'male','india',76,179,29,3,2,1,1,2,1,3),(46,'male','UK',66,182,49,1,2,1,2,4,3,3),(47,'male','India',76,180,23,3,2,1,1,1,4,4),(48,'male','India',83,186,21,3,4,1,1,2,2,3),(49,'male','Oman',74,164,35,1,1,1,1,3,1,2),(50,'male','USA',115,180,67,3,4,1,3,3,3,4),(51,'male','France',57,173,26,2,2,1,2,3,3,3),(52,'male','USA',80,171,50,2,2,1,3,2,4,2),(53,'male','Ukraine',65,170,29,4,4,1,1,3,3,3),(54,'male','USA',86,161,22,3,2,1,2,3,4,4),(55,'male','UK',86,181,41,5,2,1,2,2,4,3),(56,'male','USA',78,180,36,4,2,1,2,2,3,2),(57,'female','USA',68,168,43,3,2,1,2,3,4,4),(58,'male','India',65,183,20,3,2,1,1,2,2,1),(59,'female','Hungary',71,174,30,3,2,1,2,3,1,3),(60,'male','Syria',62,182,25,3,4,3,1,2,4,3),(61,'male','USA',70,178,33,3,4,1,3,3,4,4),(62,'male','USA',57,180,23,3,4,1,2,3,4,5),(63,'female','uk',72,167,50,2,2,1,2,1,4,4),(64,'male','UK',111,185,33,4,4,1,4,2,3,3),(65,'male','India',60,177,19,2,3,1,1,2,3,4),(66,'male','Sweden',92,171,27,3,4,1,2,2,4,4),(67,'male','USA',183,178,48,4,4,1,2,1,3,2),(68,'male','India',60,165,27,3,4,1,2,3,3,1),(69,'male','USA',91,183,30,3,4,1,2,3,4,3),(71,'female','USA',42,160,48,1,1,1,2,2,3,5),(72,'male','Slovakia',98,183,23,3,4,2,2,3,4,3),(73,'male','UK',82,185,25,3,5,1,1,2,2,2),(74,'male','Guatemala',90,176,36,2,2,1,1,3,3,3),(75,'male','USA',89,150,29,4,4,4,2,2,3,4),(76,'female','india',48,158,24,3,4,1,1,2,3,3),(77,'male','INDIA',53,172,23,1,4,3,2,1,4,3),(78,'male','Greece',100,180,28,3,3,2,2,2,3,2),(79,'male','Brazil',97,175,43,1,2,1,1,2,4,4),(80,'male','india',60,176,25,3,3,1,1,3,3,4),(81,'male','Pakistan',61,130,21,3,1,2,1,2,3,2),(82,'male','UK',90,168,43,2,3,1,2,4,5,4),(83,'female','USA',57,165,46,3,4,1,1,1,3,3),(84,'male','Switzerland',92,174,34,3,2,1,2,2,5,2),(85,'male','Nigeria',88,188,27,1,3,1,1,3,5,4),(86,'male','Nigeria',88,188,27,1,3,1,1,3,5,4),(87,'male','Ukraine',88,182,34,2,1,1,2,4,5,5),(88,'male','Ukraine',87,187,20,2,2,1,2,3,3,2),(89,'male','USA',60,167,19,2,4,1,1,2,5,4),(90,'male','india',75,176,22,3,4,1,2,4,3,3),(91,'male','pakistan',54,173,21,2,3,2,1,1,2,2),(92,'male','australia',78,180,36,3,2,1,2,2,3,4),(93,'male','india',67,167,23,2,2,1,2,3,3,3),(94,'male','Switzerland',71,180,23,2,2,1,1,3,4,3),(95,'male','India',63,165,22,3,4,1,1,2,3,3),(96,'female','UK',49,168,19,3,4,1,2,3,4,3),(97,'male','Slovenia',80,180,18,3,4,2,2,3,3,4),(98,'male','UK',65,176,16,4,4,1,2,4,5,4),(99,'male','india',71,172,50,3,2,1,1,4,1,3),(100,'male','Turkey',70,178,34,2,2,1,2,3,3,3),(101,'male','Nepal',70,175,27,3,2,2,2,2,3,3),(102,'male','Switzerland',78,175,58,2,4,4,2,3,3,4),(103,'male','UK',100,175,50,4,2,1,2,2,3,3),(104,'male','poland',100,180,32,3,3,1,2,4,4,4),(105,'male','Nepal',56,158,22,1,2,1,1,2,1,1),(106,'male','Poland',50,160,30,3,1,2,2,2,4,2),(107,'male','Russia',62,178,25,3,4,1,2,3,4,4),(108,'male','Greece',74,180,26,3,4,1,2,2,4,5),(109,'male','india',65,178,28,3,4,1,1,2,2,2),(110,'male','Uganda',90,180,51,3,2,2,2,2,3,4),(111,'male','Mexico',73,175,26,2,4,1,2,2,4,3),(112,'male','india',65,170,24,3,5,1,1,1,3,3),(113,'male','India',63,182,23,3,2,1,2,4,4,2),(114,'male','Greece',60,174,29,3,5,4,2,2,4,3),(115,'male','Belgium',85,183,37,3,2,1,2,3,3,2),(116,'male','USA',90,178,27,3,2,1,1,2,4,1),(117,'male','Norway',72,181,31,2,2,1,2,1,4,4),(118,'male','Canada',80,183,31,3,4,3,2,1,3,3),(119,'male','UK',71,172,40,2,4,1,1,2,2,3),(120,'male','Serbia',92,180,25,3,2,1,2,3,5,4),(121,'female','USA',73,157,46,3,2,1,2,3,3,1),(122,'male','Brazil',77,186,26,2,2,1,1,4,5,5),(123,'male','Canada',98,168,37,2,4,1,1,3,4,3),(124,'male','USA',198,198,35,1,2,1,2,2,5,5),(125,'male','USA',99,170,44,3,4,3,2,1,3,4),(126,'male','India',62,177,22,3,4,1,1,2,3,2),(127,'female','Philippines',62,123,22,2,2,1,1,2,4,3),(128,'female','sweden',69,167,47,5,2,1,2,2,3,3),(129,'male','Romania',87,191,21,4,5,1,2,2,4,3),(130,'male','Tanzania',70,185,21,3,2,2,2,2,4,3),(131,'male','Bosnia and Herzegowinia',100,195,25,1,2,2,1,3,2,4),(132,'male','Germany',67,172,26,1,2,1,2,4,4,3),(133,'male','india',78,164,34,2,3,1,1,2,3,3),(134,'male','india',62,168,32,2,4,1,1,2,3,4),(135,'male','india',85,171,29,3,4,1,1,2,4,3),(136,'male','South Africa',62,165,48,3,2,1,1,2,5,4),(137,'male','German',95,188,33,3,3,2,2,3,3,4),(138,'male','uk',89,183,68,1,1,1,2,4,5,4),(139,'male','Sweden',100,192,21,4,4,1,2,3,4,4),(140,'male','USA',81,180,25,3,2,1,2,4,4,3),(141,'male','Iran',73,176,19,3,2,1,1,1,3,2),(142,'male','Russia',78,183,30,3,4,1,2,2,3,3),(143,'male','canada',86,180,42,3,4,1,2,3,3,2),(144,'female','mexico',76,159,27,4,5,1,2,2,3,4),(145,'male','USA',136,170,23,3,3,1,1,3,2,3),(146,'male','India',88,172,23,3,4,1,1,2,3,2),(147,'male','UK',76,178,32,3,3,1,2,3,4,3),(148,'male','Philippines',80,176,34,3,3,3,2,3,4,5),(149,'male','USA',61,177,30,2,3,2,2,2,3,2);
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-06 15:30:29
