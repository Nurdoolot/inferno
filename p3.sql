-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: It
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `birthday` int(4) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `id_manager` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_developer_fk` (`id_manager`),
  CONSTRAINT `manager_developer_fk` FOREIGN KEY (`id_manager`) REFERENCES `manager` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES (1,'Dastan','Alymbekov',1996,'male',1),(2,'Aktan','Alymkulov',2000,'male',1),(3,'Aleksandr','Pushkin',1799,'male',1),(4,'Darika','Aleksandrovna',2001,'female',1);
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developer_project`
--

DROP TABLE IF EXISTS `developer_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_developer` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_developer` (`id_developer`),
  KEY `id_project` (`id_project`),
  CONSTRAINT `developer_project_ibfk_1` FOREIGN KEY (`id_developer`) REFERENCES `developer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `developer_project_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer_project`
--

LOCK TABLES `developer_project` WRITE;
/*!40000 ALTER TABLE `developer_project` DISABLE KEYS */;
INSERT INTO `developer_project` VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,2),(5,3,1),(6,3,3),(7,2,3);
/*!40000 ALTER TABLE `developer_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laptop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `id_developer` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_developer` (`id_developer`),
  CONSTRAINT `laptop_idfk_1` FOREIGN KEY (`id_developer`) REFERENCES `developer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop`
--

LOCK TABLES `laptop` WRITE;
/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` VALUES (1,'acer',2),(2,'mac',1),(3,'lenova',3),(4,'acer',4);
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `birthday` int(4) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Asel','Alymbekova',1996,'female');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'telegram_bot'),(2,'vk_bot'),(3,'falter inferno');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-03 20:24:09
