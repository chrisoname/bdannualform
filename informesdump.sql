-- MySQL dump 10.13  Distrib 5.1.58, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: informes
-- ------------------------------------------------------
-- Server version	5.1.58

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
-- Table structure for table `UserName`
--

DROP TABLE IF EXISTS `UserName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserName` (
  `UserNameID` int(9) NOT NULL AUTO_INCREMENT,
  `userName` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `nombreProf` varchar(60) DEFAULT NULL,
  `apellidoProf` varchar(60) DEFAULT NULL,
  `start` varchar(5) DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL,
  `timerank` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`UserNameID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserName`
--

LOCK TABLES `UserName` WRITE;
/*!40000 ALTER TABLE `UserName` DISABLE KEYS */;
INSERT INTO `UserName` VALUES (2,'mrbool@gmail.com','mrbool123','Miguel','Angel','08/08','Admin','12'),(5,'chrisoname@gmail.com','mrbool123','Jonazan','Velez','09/09','Associate Bitch ','9'),(6,'omar@gmail.com','mrbool123','Carlos','Corrada','10/10','Associate Professor','12'),(7,'kevin@gmail.com','mrbool123','Omar','Alfredo','07/09','Associate Professor','10'),(8,'daniel@gmail.com','mrbool','Daniel','Puta','09/07','Associate Cunt','10');
/*!40000 ALTER TABLE `UserName` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals`
--

DROP TABLE IF EXISTS `goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goals` (
  `semestre` varchar(3) DEFAULT NULL,
  `text` varchar(280) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grad`
--

DROP TABLE IF EXISTS `grad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grad` (
  `academic` varchar(140) DEFAULT NULL,
  `university` varchar(140) DEFAULT NULL,
  `name` varchar(140) DEFAULT NULL,
  `role` varchar(140) DEFAULT NULL,
  `duration` varchar(140) DEFAULT NULL,
  `grad_id` int(9) NOT NULL AUTO_INCREMENT,
  `UserNameID` int(9) DEFAULT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grad`
--

LOCK TABLES `grad` WRITE;
/*!40000 ALTER TABLE `grad` DISABLE KEYS */;
INSERT INTO `grad` VALUES ('BS','University of Maryland','Wanda Rodriguez','Mentor','exp. 2014',2,6),('MS','UPR Cayey','Maria Soto','Committee Member','completed 2013',3,6);
/*!40000 ALTER TABLE `grad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presentaciones`
--

DROP TABLE IF EXISTS `presentaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presentaciones` (
  `year` int(4) DEFAULT NULL,
  `title` varchar(140) DEFAULT NULL,
  `titlemeeting` varchar(140) DEFAULT NULL,
  `typepres` varchar(140) DEFAULT NULL,
  `typemeeting` varchar(140) DEFAULT NULL,
  `UserNameID` int(9) NOT NULL DEFAULT '0',
  `present_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`present_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presentaciones`
--

LOCK TABLES `presentaciones` WRITE;
/*!40000 ALTER TABLE `presentaciones` DISABLE KEYS */;
INSERT INTO `presentaciones` VALUES (2018,'Understanding Cock Fights','FIghts Over the World','Cock Fights','FIghts',6,4,'Christopher De Jesus'),(2018,'Egyptians Fights of the Century','FIghts Over the World','Egyptian Fights','Fights',6,5,'Manuel, Chris y Juan');
/*!40000 ALTER TABLE `presentaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicaciones` (
  `titlePub` varchar(140) DEFAULT NULL,
  `yearPub` varchar(40) DEFAULT NULL,
  `typePub` varchar(40) DEFAULT NULL,
  `authorPub` varchar(240) DEFAULT NULL,
  `pubStatus` varchar(20) DEFAULT NULL,
  `gradPub` int(2) DEFAULT NULL,
  `subgradPub` int(2) DEFAULT NULL,
  `infoPub` varchar(140) DEFAULT NULL,
  `UserNameID` int(9) NOT NULL DEFAULT '0',
  `public_id` int(9) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`public_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
INSERT INTO `publicaciones` VALUES ('abejas otras','2010','Journal','Jose, Jose','Published',6,7,'esta cool',5,2),('Elefantes','2015','Journal','Jose, Tuto, Jona','Pending',9,1,'Esta bueno su publicacion',6,15),('Abejas Malvadas','2015','Journal','Yo y Yo','Pending',5,6,'Es una publicacion cool',6,16),('Hans en Ohio','2011','Journal','Hans y su pipa','Pending',3,1,'Muchas pipas',6,17),('El cerebro de Grace','2015','Journal','Jose, Tuto, Jona','Published',10,5,'Ew, gusanos',6,18);
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support`
--

DROP TABLE IF EXISTS `support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support` (
  `support_id` int(9) NOT NULL AUTO_INCREMENT,
  `role` varchar(15) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `title` varchar(140) DEFAULT NULL,
  `startend` varchar(12) DEFAULT NULL,
  `amount_fund` int(12) DEFAULT NULL,
  `amount_time` varchar(20) DEFAULT NULL,
  `UserNameID` int(9) DEFAULT NULL,
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support`
--

LOCK TABLES `support` WRITE;
/*!40000 ALTER TABLE `support` DISABLE KEYS */;
INSERT INTO `support` VALUES (2,'PI','Completed','USDA','Honey bee Colony losses','02/13-02/14',10000,'3 credits',6),(3,'co-PI','Current','FIPI','Center of Addiction','01/15-01/18',50000,'declined',6),(4,'PI','Current','USDA-China','Black Women in Computer Science','02/13-02/14',5000,'declined',6);
/*!40000 ALTER TABLE `support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `academic` varchar(140) DEFAULT NULL,
  `institution` varchar(140) DEFAULT NULL,
  `year` varchar(140) DEFAULT NULL,
  `name` varchar(140) DEFAULT NULL,
  `position` varchar(140) DEFAULT NULL,
  `mechanism` varchar(140) DEFAULT NULL,
  `funding` varchar(140) DEFAULT NULL,
  `activities` varchar(140) DEFAULT NULL,
  `training_id` int(9) NOT NULL AUTO_INCREMENT,
  `UserNameID` int(9) DEFAULT NULL,
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES ('PHD','Univ. Of Puerto Rico','2014 - Biology','America Santiago','REU','RA','USAD','7 papers, 2 presentations, research',2,6);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-19  9:10:27
