-- MySQL dump 10.13  Distrib 5.1.58, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: cdejesus
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
INSERT INTO `UserName` VALUES (2,'mrbool@gmail.com','mrbool123','Miguel','Angel','08/08','Admin','12'),(5,'chrisoname@gmail.com','mrbool123','Jonazan','Velez','09/09','Associate Bitch ','9'),(6,'omar@gmail.com','mrbool123','Daniel','Santiago','10/10','Associate Bitch','25'),(7,'kevin@gmail.com','mrbool123','Omar','Alfredo','07/09','Associate Professor','10'),(8,'daniel@gmail.com','mrbool','Daniel','Puta','09/07','Associate Cunt','10');
/*!40000 ALTER TABLE `UserName` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acomoda`
--

DROP TABLE IF EXISTS `acomoda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acomoda` (
  `aid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acomoda`
--

LOCK TABLES `acomoda` WRITE;
/*!40000 ALTER TABLE `acomoda` DISABLE KEYS */;
INSERT INTO `acomoda` VALUES (1);
/*!40000 ALTER TABLE `acomoda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avion`
--

DROP TABLE IF EXISTS `avion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avion` (
  `avionid` int(11) NOT NULL DEFAULT '0',
  `tipoAvion` char(64) DEFAULT NULL,
  `distMax` char(64) DEFAULT NULL,
  PRIMARY KEY (`avionid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avion`
--

LOCK TABLES `avion` WRITE;
/*!40000 ALTER TABLE `avion` DISABLE KEYS */;
/*!40000 ALTER TABLE `avion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificado`
--

DROP TABLE IF EXISTS `certificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificado` (
  `eid` int(11) NOT NULL DEFAULT '0',
  `avionid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`,`avionid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificado`
--

LOCK TABLES `certificado` WRITE;
/*!40000 ALTER TABLE `certificado` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `codigo` char(9) NOT NULL DEFAULT '',
  `creditos` int(11) DEFAULT NULL,
  `administra` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES ('ARTE3427',3,8),('BIOL3001',3,2),('BIOL3031',3,2),('BIOL4027',3,2),('BIOL4892',3,2),('CCOM3030',3,1),('CCOM3031',3,1),('CCOM3032',3,1),('CCOM3033',3,1),('CCOM3034',3,1),('CCOM3035',3,1),('CCOM3036',3,1),('CCOM4027',3,1),('CCOM4029',3,1),('ECON2151',3,12),('FISI3011',3,12),('GENJ0000',3,12),('HUMA9870',3,12),('MATE3020',3,4),('MATE3151',3,4),('MATE3152',3,4),('NINJ0000',3,12),('QUIM3001',3,9),('QUIM4027',3,9),('REHU4027',3,10),('TAIJ0000',3,11);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id_dept` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `lugar` varchar(128) DEFAULT NULL,
  `id_director` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dept`),
  UNIQUE KEY `id_director` (`id_director`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id_director`) REFERENCES `profesor` (`id_prof`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciencia de Cómputos','ccom.uprrp.edu',1),(2,'BiologÃ­a','http://www.cayey.upr.edu/main/unidades/Biología',2),(3,'Ambulancias','anbu.edu',36),(4,'Matemáticas','matematicas.edu',15),(5,'GeografÃ­a','geografia.uprrp.edu',19),(6,'Computacionales','www.ccompu.edu',3),(7,'BiologÃ­a Marina','www.biol.uprrp.edu',24),(8,'Ciencia de Ciencias','www.ccuprrp.com',33),(9,'QuÃ­mica','disuelvete.quim.uprrp.edu',12),(10,'Ciencias Sociales','www.csoluprrp.com',11),(11,'EconomÃ­a','economia.uprrp.edu',16),(12,'FisiologÃ­a','www.fisio.com',25),(13,'Recursos Humanos','www.rehu.com',9),(14,'Ciencia de Comp','www.ccom.com',7),(15,'Humanidades','www.huma.com',27),(16,'QuÃ­mica OrgÃ¡nica','www.quimorg.com',28),(17,'Biología Molecular','www.biolmol.com',18),(18,'Educación FÃ­sica','edufis.upr.edu',8);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `eid` int(11) NOT NULL DEFAULT '0',
  `nombre` char(64) DEFAULT NULL,
  `salario` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `num_est` char(9) NOT NULL DEFAULT '',
  `nombre` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`num_est`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES ('362113892','Nadra Irvine','n.a.i@gmail.com'),('418410479','Lacticia Newton','l.a.n@gmail.com'),('433684038','Ciriaco Pilkvist','c.o.p@gmail.com'),('505534944','Isabelle De Haven','i.d.h@gmail.com'),('597063385','Lonnie Marlowe','l.e.m@gmail.com'),('614719870','Casismir Riain','c.r.r@gmail.com'),('656745533','Davis Hannigen','d.s.h@gmail.com'),('801081321','Machael Tite','titeritolol@gmail.com'),('801086458','Esparra Rorracel','esparrarafael@gmail.com'),('801087621','Rafael Locacia','rafaloko@gmail.com'),('801100736','Luis Alber Torio','luis@gmail.com'),('801100738','Luis Albertorio','luis2@gmail.com'),('801102322','Julito José','juliopepe3@gmail.com'),('801102364','Xiomara Figueroa','figueroaxiomara7@gmail.com'),('801103454','Carlos Gonz Alez','carlos2@hotmail.com'),('801103459','Carlos Gonzalez','carlos@hotmail.com'),('801106320','Edwardo Rivera','erivera2@hotmail.com'),('801107282','Mariecarmen López','mariecarmen123@gmail.com'),('801108325','Billy Gol Do','billyelgoldoupr@gmail.com'),('801109876','Jorge Wi Ihi','jorgewiiiiii@gmail.com'),('801110211','Alejandro Agape','agapito23@gmail.com'),('801112382','Juan del Pueblo','juandelpueblo3@gmail.com'),('801113556','Ricky Hernandez','ricky2@gmail.com'),('801113558','Ricky Hernan Dez','ricky@gmail.com'),('801114364','Ricardo Cintron','ricardo.cintron9@upr.edu'),('801115432','Wiso Gato','WisoG2@gmail.com'),('801115433','Wiso G','WisoG@gmail.com'),('801116328','Roxana Gonza','r.gonza1892@gmail.com'),('801116787','Pepito Perez','Pepito@gmail.com'),('801116789','Pepito Pe Rez','Pepito2@gmail.com'),('801117913','Valeria','valeria001@gmail.com'),('801121650','Sara Concepcion','sara07judith@gmail.com'),('801121655','Sara Concepcion','sara07judith4@gmail.com'),('801121972','Ramon Collazo','ramon2@gmail.com'),('801121978','Ramon Collazo','ramon@gmail.com'),('801122000','Julio De la Cruz','julio@gmail.com'),('801122002','Julio De la Cruz','julio2@gmail.com'),('801122102','Jose R de la Vega','j.r.delavega172@gmail.com'),('801122105','Jose R de la Vega','j.r.delavega17@gmail.com'),('801122210','Juana P.','juanita1@gmail.com'),('801122311','Naomi Rodriguez','Naomi@gmail.com'),('801124327','Thalia Hernandez','marimar@gmail.com'),('801125932','Daniel Ramirez','bani2@gmail.com'),('801125934','Daniel Ramirez','bani@gmail.com'),('801129065','Jimary','jimarysss@gmail.com'),('801131264','Crystal','prepabiol@gmail.com'),('801133211','Milly','megustanlosgallos@gmail.com'),('801133452','Joshua','prepa1@gmail.com'),('801137382','Christian','christianagost@gmail.com'),('801137777','Josue','josuegallito1@gmail.com'),('801139483','Jessica','jessicapagan@gmail.com'),('801902341','Maria la del Barrio','maria@gmail.com'),('802091222','Shar Hernandez','shar@gmail.com'),('802091225','Shar Hernandez','shar2@gmail.com'),('802091342','Sam De La Torre','sam@gmail.com'),('802091345','Sam De La Torre','sam2@gmail.com'),('802092111','Luis de la Vega','luisrene2by4@gmail.com'),('802092112','Luis de la Vega','luisrene2by42@gmail.com'),('802101322','Rafael Pol','rapol32@gmail.com'),('802101325','Rafael Polio','rapol322@gmail.com'),('802132434','Rafael Morales','rafael.morales5@upr.edu'),('802304050','Juan@gmail.com','Juan Del Pueblo'),('802304053','Johnsmith@hotmail.com','John Smith'),('802304054','Juan Del Pueblo','Juan@gmail.com'),('802304056','John Smith','Johnsmith@hotmail.com'),('803106661','Alexandra Rodriguez','alexandra.rodriguez10@upr.edu'),('804101524','Joseph Perez','joseph.perez10@upr.edu'),('804107908','Alejandro Sánchez','alejandro.sanchez7@upr.edu'),('808120000','Naruto','uzumaki@leaf.vil'),('808120001','Sakura','haruno@leaf.vil'),('808120002','Sasuke','uchiha@leaf.vil'),('808120003','Shikamaru','nara@leaf.vil'),('808120004','Ino','yamanaka@leaf.vil'),('808120005','Choji','akimichi@leaf.vil'),('808120006','Gaara','gaara@sand.vil'),('808120007','Kankuro','kankuro@sand.vil'),('808120008','Temari','temari@sand.vil'),('808120009','Hinata','hyuga@leaf.vil'),('840106661','Lorenna Cruz','lorenna.cruz2@upr.edu'),('841893456','Andres Sánchez','andres.sanchez4@upr.edu'),('842107789','Josue Ruiz','josue.ruiz3@upr.edu'),('843852342','Maria Fernandez','maria.fernandez9@upr.edu'),('846138151','Ismael Sánchez','ismael.sanchez11@upr.edu'),('969556127','Refilwe Paquet','r.e.p@gmail.com'),('972862981','Spike Ellison','s.e.e@gmail.com'),('977635923','Grisha Avana','g.a.a@gmail.com');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
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
-- Table structure for table `matriculada`
--

DROP TABLE IF EXISTS `matriculada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriculada` (
  `nota` varchar(2) DEFAULT NULL,
  `id_of` int(11) NOT NULL DEFAULT '0',
  `num_est` char(9) NOT NULL DEFAULT '',
  PRIMARY KEY (`num_est`,`id_of`),
  KEY `num_est` (`num_est`),
  KEY `id_of` (`id_of`),
  CONSTRAINT `matriculada_ibfk_1` FOREIGN KEY (`num_est`) REFERENCES `estudiante` (`num_est`),
  CONSTRAINT `matriculada_ibfk_2` FOREIGN KEY (`id_of`) REFERENCES `ofrece` (`id_of`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculada`
--

LOCK TABLES `matriculada` WRITE;
/*!40000 ALTER TABLE `matriculada` DISABLE KEYS */;
INSERT INTO `matriculada` VALUES (NULL,110,'362113892'),(NULL,128,'362113892'),(NULL,145,'362113892'),(NULL,162,'362113892'),(NULL,179,'362113892'),(NULL,196,'362113892'),(NULL,111,'418410479'),(NULL,129,'418410479'),(NULL,146,'418410479'),(NULL,163,'418410479'),(NULL,180,'418410479'),(NULL,197,'418410479'),(NULL,112,'433684038'),(NULL,130,'433684038'),(NULL,147,'433684038'),(NULL,164,'433684038'),(NULL,181,'433684038'),(NULL,198,'433684038'),(NULL,113,'505534944'),(NULL,131,'505534944'),(NULL,148,'505534944'),(NULL,165,'505534944'),(NULL,182,'505534944'),(NULL,199,'505534944'),(NULL,114,'597063385'),(NULL,132,'597063385'),(NULL,149,'597063385'),(NULL,166,'597063385'),(NULL,183,'597063385'),(NULL,200,'597063385'),(NULL,115,'614719870'),(NULL,133,'614719870'),(NULL,150,'614719870'),(NULL,167,'614719870'),(NULL,184,'614719870'),(NULL,201,'614719870'),(NULL,116,'656745533'),(NULL,134,'656745533'),(NULL,151,'656745533'),(NULL,168,'656745533'),(NULL,185,'656745533'),(NULL,202,'656745533'),(NULL,117,'801081321'),(NULL,135,'801081321'),(NULL,152,'801081321'),(NULL,169,'801081321'),(NULL,186,'801081321'),(NULL,203,'801081321'),(NULL,118,'801086458'),(NULL,136,'801086458'),(NULL,153,'801086458'),(NULL,170,'801086458'),(NULL,187,'801086458'),(NULL,204,'801086458'),(NULL,119,'801087621'),(NULL,137,'801087621'),(NULL,154,'801087621'),(NULL,171,'801087621'),(NULL,188,'801087621'),(NULL,205,'801087621'),(NULL,120,'801100736'),(NULL,138,'801100736'),(NULL,155,'801100736'),(NULL,172,'801100736'),(NULL,189,'801100736'),(NULL,206,'801100736'),(NULL,121,'801100738'),(NULL,139,'801100738'),(NULL,156,'801100738'),(NULL,173,'801100738'),(NULL,190,'801100738'),(NULL,207,'801100738'),(NULL,122,'801102322'),(NULL,140,'801102322'),(NULL,157,'801102322'),(NULL,174,'801102322'),(NULL,191,'801102322'),(NULL,208,'801102322'),(NULL,123,'801102364'),(NULL,141,'801102364'),(NULL,158,'801102364'),(NULL,175,'801102364'),(NULL,192,'801102364'),(NULL,209,'801102364'),(NULL,124,'801103454'),(NULL,142,'801103454'),(NULL,159,'801103454'),(NULL,176,'801103454'),(NULL,193,'801103454'),(NULL,210,'801103454'),(NULL,125,'801103459'),(NULL,143,'801103459'),(NULL,160,'801103459'),(NULL,177,'801103459'),(NULL,194,'801103459'),(NULL,211,'801103459'),(NULL,126,'801106320'),(NULL,144,'801106320'),(NULL,161,'801106320'),(NULL,178,'801106320'),(NULL,195,'801106320'),(NULL,212,'801106320'),(NULL,127,'801107282'),(NULL,145,'801107282'),(NULL,162,'801107282'),(NULL,179,'801107282'),(NULL,196,'801107282'),(NULL,213,'801107282'),(NULL,111,'801108325'),(NULL,128,'801108325'),(NULL,146,'801108325'),(NULL,163,'801108325'),(NULL,180,'801108325'),(NULL,197,'801108325'),(NULL,112,'801109876'),(NULL,129,'801109876'),(NULL,147,'801109876'),(NULL,164,'801109876'),(NULL,181,'801109876'),(NULL,198,'801109876'),(NULL,113,'801110211'),(NULL,130,'801110211'),(NULL,148,'801110211'),(NULL,165,'801110211'),(NULL,182,'801110211'),(NULL,199,'801110211'),(NULL,114,'801112382'),(NULL,131,'801112382'),(NULL,149,'801112382'),(NULL,166,'801112382'),(NULL,183,'801112382'),(NULL,200,'801112382'),(NULL,115,'801113556'),(NULL,132,'801113556'),(NULL,150,'801113556'),(NULL,167,'801113556'),(NULL,184,'801113556'),(NULL,201,'801113556'),(NULL,116,'801113558'),(NULL,133,'801113558'),(NULL,151,'801113558'),(NULL,168,'801113558'),(NULL,185,'801113558'),(NULL,202,'801113558'),(NULL,117,'801114364'),(NULL,134,'801114364'),(NULL,152,'801114364'),(NULL,169,'801114364'),(NULL,186,'801114364'),(NULL,203,'801114364'),(NULL,118,'801115432'),(NULL,135,'801115432'),(NULL,153,'801115432'),(NULL,170,'801115432'),(NULL,187,'801115432'),(NULL,204,'801115432'),(NULL,119,'801115433'),(NULL,136,'801115433'),(NULL,154,'801115433'),(NULL,171,'801115433'),(NULL,188,'801115433'),(NULL,205,'801115433'),(NULL,120,'801116328'),(NULL,137,'801116328'),(NULL,155,'801116328'),(NULL,172,'801116328'),(NULL,189,'801116328'),(NULL,206,'801116328'),(NULL,121,'801116787'),(NULL,138,'801116787'),(NULL,156,'801116787'),(NULL,173,'801116787'),(NULL,190,'801116787'),(NULL,207,'801116787'),(NULL,122,'801116789'),(NULL,139,'801116789'),(NULL,157,'801116789'),(NULL,174,'801116789'),(NULL,191,'801116789'),(NULL,208,'801116789'),(NULL,123,'801117913'),(NULL,140,'801117913'),(NULL,158,'801117913'),(NULL,175,'801117913'),(NULL,192,'801117913'),(NULL,209,'801117913'),(NULL,124,'801121650'),(NULL,141,'801121650'),(NULL,159,'801121650'),(NULL,176,'801121650'),(NULL,193,'801121650'),(NULL,210,'801121650'),(NULL,125,'801121655'),(NULL,142,'801121655'),(NULL,160,'801121655'),(NULL,177,'801121655'),(NULL,194,'801121655'),(NULL,211,'801121655'),(NULL,126,'801121972'),(NULL,143,'801121972'),(NULL,161,'801121972'),(NULL,178,'801121972'),(NULL,195,'801121972'),(NULL,212,'801121972'),(NULL,127,'801121978'),(NULL,144,'801121978'),(NULL,162,'801121978'),(NULL,179,'801121978'),(NULL,196,'801121978'),(NULL,213,'801121978'),(NULL,111,'801122000'),(NULL,128,'801122000'),(NULL,145,'801122000'),(NULL,163,'801122000'),(NULL,180,'801122000'),(NULL,197,'801122000'),(NULL,112,'801122002'),(NULL,129,'801122002'),(NULL,146,'801122002'),(NULL,164,'801122002'),(NULL,181,'801122002'),(NULL,198,'801122002'),(NULL,113,'801122102'),(NULL,130,'801122102'),(NULL,147,'801122102'),(NULL,165,'801122102'),(NULL,182,'801122102'),(NULL,199,'801122102'),(NULL,114,'801122105'),(NULL,131,'801122105'),(NULL,148,'801122105'),(NULL,166,'801122105'),(NULL,183,'801122105'),(NULL,200,'801122105'),(NULL,115,'801122210'),(NULL,132,'801122210'),(NULL,149,'801122210'),(NULL,167,'801122210'),(NULL,184,'801122210'),(NULL,201,'801122210'),(NULL,116,'801122311'),(NULL,133,'801122311'),(NULL,150,'801122311'),(NULL,168,'801122311'),(NULL,185,'801122311'),(NULL,202,'801122311'),(NULL,117,'801124327'),(NULL,134,'801124327'),(NULL,151,'801124327'),(NULL,169,'801124327'),(NULL,186,'801124327'),(NULL,203,'801124327'),(NULL,118,'801125932'),(NULL,135,'801125932'),(NULL,152,'801125932'),(NULL,170,'801125932'),(NULL,187,'801125932'),(NULL,204,'801125932'),(NULL,119,'801125934'),(NULL,136,'801125934'),(NULL,153,'801125934'),(NULL,171,'801125934'),(NULL,188,'801125934'),(NULL,205,'801125934'),(NULL,120,'801129065'),(NULL,137,'801129065'),(NULL,154,'801129065'),(NULL,172,'801129065'),(NULL,189,'801129065'),(NULL,206,'801129065'),(NULL,121,'801131264'),(NULL,138,'801131264'),(NULL,155,'801131264'),(NULL,173,'801131264'),(NULL,190,'801131264'),(NULL,207,'801131264'),(NULL,122,'801133211'),(NULL,139,'801133211'),(NULL,156,'801133211'),(NULL,174,'801133211'),(NULL,191,'801133211'),(NULL,208,'801133211'),(NULL,123,'801133452'),(NULL,140,'801133452'),(NULL,157,'801133452'),(NULL,175,'801133452'),(NULL,192,'801133452'),(NULL,209,'801133452'),(NULL,124,'801137382'),(NULL,141,'801137382'),(NULL,158,'801137382'),(NULL,176,'801137382'),(NULL,193,'801137382'),(NULL,210,'801137382'),(NULL,125,'801137777'),(NULL,142,'801137777'),(NULL,159,'801137777'),(NULL,177,'801137777'),(NULL,194,'801137777'),(NULL,211,'801137777'),(NULL,126,'801139483'),(NULL,143,'801139483'),(NULL,160,'801139483'),(NULL,178,'801139483'),(NULL,195,'801139483'),(NULL,212,'801139483'),(NULL,127,'801902341'),(NULL,144,'801902341'),(NULL,161,'801902341'),(NULL,179,'801902341'),(NULL,196,'801902341'),(NULL,213,'801902341'),(NULL,111,'802091222'),(NULL,128,'802091222'),(NULL,145,'802091222'),(NULL,162,'802091222'),(NULL,180,'802091222'),(NULL,197,'802091222'),(NULL,112,'802091225'),(NULL,129,'802091225'),(NULL,146,'802091225'),(NULL,163,'802091225'),(NULL,181,'802091225'),(NULL,198,'802091225'),(NULL,113,'802091342'),(NULL,130,'802091342'),(NULL,147,'802091342'),(NULL,164,'802091342'),(NULL,182,'802091342'),(NULL,199,'802091342'),(NULL,114,'802091345'),(NULL,131,'802091345'),(NULL,148,'802091345'),(NULL,165,'802091345'),(NULL,183,'802091345'),(NULL,200,'802091345'),(NULL,115,'802092111'),(NULL,132,'802092111'),(NULL,149,'802092111'),(NULL,166,'802092111'),(NULL,184,'802092111'),(NULL,201,'802092111'),(NULL,116,'802092112'),(NULL,133,'802092112'),(NULL,150,'802092112'),(NULL,167,'802092112'),(NULL,185,'802092112'),(NULL,202,'802092112'),(NULL,117,'802101322'),(NULL,134,'802101322'),(NULL,151,'802101322'),(NULL,168,'802101322'),(NULL,186,'802101322'),(NULL,203,'802101322'),(NULL,118,'802101325'),(NULL,135,'802101325'),(NULL,152,'802101325'),(NULL,169,'802101325'),(NULL,187,'802101325'),(NULL,204,'802101325'),(NULL,119,'802132434'),(NULL,136,'802132434'),(NULL,153,'802132434'),(NULL,170,'802132434'),(NULL,188,'802132434'),(NULL,205,'802132434'),(NULL,120,'802304050'),(NULL,137,'802304050'),(NULL,154,'802304050'),(NULL,171,'802304050'),(NULL,189,'802304050'),(NULL,206,'802304050'),(NULL,121,'802304053'),(NULL,138,'802304053'),(NULL,155,'802304053'),(NULL,172,'802304053'),(NULL,190,'802304053'),(NULL,207,'802304053'),(NULL,122,'802304054'),(NULL,139,'802304054'),(NULL,156,'802304054'),(NULL,173,'802304054'),(NULL,191,'802304054'),(NULL,208,'802304054'),(NULL,123,'802304056'),(NULL,140,'802304056'),(NULL,157,'802304056'),(NULL,174,'802304056'),(NULL,192,'802304056'),(NULL,209,'802304056'),(NULL,124,'803106661'),(NULL,141,'803106661'),(NULL,158,'803106661'),(NULL,175,'803106661'),(NULL,193,'803106661'),(NULL,210,'803106661'),(NULL,125,'804101524'),(NULL,142,'804101524'),(NULL,159,'804101524'),(NULL,176,'804101524'),(NULL,194,'804101524'),(NULL,211,'804101524'),(NULL,126,'804107908'),(NULL,143,'804107908'),(NULL,160,'804107908'),(NULL,177,'804107908'),(NULL,195,'804107908'),(NULL,212,'804107908'),(NULL,127,'808120000'),(NULL,144,'808120000'),(NULL,161,'808120000'),(NULL,178,'808120000'),(NULL,196,'808120000'),(NULL,213,'808120000'),(NULL,111,'808120001'),(NULL,128,'808120001'),(NULL,145,'808120001'),(NULL,162,'808120001'),(NULL,179,'808120001'),(NULL,197,'808120001'),(NULL,112,'808120002'),(NULL,129,'808120002'),(NULL,146,'808120002'),(NULL,163,'808120002'),(NULL,180,'808120002'),(NULL,198,'808120002'),(NULL,113,'808120003'),(NULL,130,'808120003'),(NULL,147,'808120003'),(NULL,164,'808120003'),(NULL,181,'808120003'),(NULL,199,'808120003'),(NULL,114,'808120004'),(NULL,131,'808120004'),(NULL,148,'808120004'),(NULL,165,'808120004'),(NULL,182,'808120004'),(NULL,200,'808120004'),(NULL,115,'808120005'),(NULL,132,'808120005'),(NULL,149,'808120005'),(NULL,166,'808120005'),(NULL,183,'808120005'),(NULL,201,'808120005'),(NULL,116,'808120006'),(NULL,133,'808120006'),(NULL,150,'808120006'),(NULL,167,'808120006'),(NULL,184,'808120006'),(NULL,202,'808120006'),(NULL,117,'808120007'),(NULL,134,'808120007'),(NULL,151,'808120007'),(NULL,168,'808120007'),(NULL,185,'808120007'),(NULL,203,'808120007'),(NULL,118,'808120008'),(NULL,135,'808120008'),(NULL,152,'808120008'),(NULL,169,'808120008'),(NULL,186,'808120008'),(NULL,204,'808120008'),(NULL,119,'808120009'),(NULL,136,'808120009'),(NULL,153,'808120009'),(NULL,170,'808120009'),(NULL,187,'808120009'),(NULL,205,'808120009'),(NULL,120,'840106661'),(NULL,137,'840106661'),(NULL,154,'840106661'),(NULL,171,'840106661'),(NULL,188,'840106661'),(NULL,206,'840106661'),(NULL,121,'841893456'),(NULL,138,'841893456'),(NULL,155,'841893456'),(NULL,172,'841893456'),(NULL,189,'841893456'),(NULL,207,'841893456'),(NULL,122,'842107789'),(NULL,139,'842107789'),(NULL,156,'842107789'),(NULL,173,'842107789'),(NULL,190,'842107789'),(NULL,208,'842107789'),(NULL,123,'843852342'),(NULL,140,'843852342'),(NULL,157,'843852342'),(NULL,174,'843852342'),(NULL,191,'843852342'),(NULL,209,'843852342'),(NULL,124,'846138151'),(NULL,141,'846138151'),(NULL,158,'846138151'),(NULL,175,'846138151'),(NULL,192,'846138151'),(NULL,210,'846138151'),(NULL,125,'969556127'),(NULL,142,'969556127'),(NULL,159,'969556127'),(NULL,176,'969556127'),(NULL,193,'969556127'),(NULL,211,'969556127'),(NULL,126,'972862981'),(NULL,143,'972862981'),(NULL,160,'972862981'),(NULL,177,'972862981'),(NULL,194,'972862981'),(NULL,212,'972862981'),(NULL,127,'977635923'),(NULL,144,'977635923'),(NULL,161,'977635923'),(NULL,178,'977635923'),(NULL,195,'977635923'),(NULL,212,'977635923');
/*!40000 ALTER TABLE `matriculada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesa`
--

DROP TABLE IF EXISTS `mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesa` (
  `tid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
INSERT INTO `mesa` VALUES (10),(11),(12),(13);
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofrece`
--

DROP TABLE IF EXISTS `ofrece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ofrece` (
  `id_of` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` char(9) DEFAULT NULL,
  `id_prof` int(11) DEFAULT NULL,
  `seccion` char(3) DEFAULT NULL,
  `semestre` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_of`),
  UNIQUE KEY `codigo` (`codigo`,`seccion`,`semestre`),
  KEY `id_prof` (`id_prof`),
  CONSTRAINT `ofrece_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `curso` (`codigo`),
  CONSTRAINT `ofrece_ibfk_2` FOREIGN KEY (`id_prof`) REFERENCES `profesor` (`id_prof`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofrece`
--

LOCK TABLES `ofrece` WRITE;
/*!40000 ALTER TABLE `ofrece` DISABLE KEYS */;
INSERT INTO `ofrece` VALUES (110,'BIOL4027',1,'001','B32'),(111,'QUIM4027',1,'003','B31'),(112,'CCOM3030',2,'003','B32'),(113,'CCOM3036',2,'003','B32'),(114,'FISI3011',3,'001','B31'),(115,'CCOM3031',4,'001','B32'),(116,'CCOM4027',5,'001','B32'),(117,'MATE3151',5,'002','B31'),(118,'HUMA9870',5,'003','B32'),(119,'GENJ0000',6,'002','B32'),(120,'CCOM3034',7,'001','B32'),(121,'CCOM3033',8,'003','B31'),(122,'TAIJ0000',9,'002','B32'),(123,'MATE3152',9,'003','B32'),(124,'ARTE3427',10,'001','B31'),(125,'QUIM3001',11,'002','B32'),(126,'NINJ0000',11,'001','B32'),(127,'CCOM3032',12,'002','B32'),(128,'MATE3020',13,'001','B32'),(129,'BIOL3001',14,'003','B32'),(130,'CCOM4029',15,'003','B32'),(131,'REHU4027',16,'002','B32'),(132,'BIOL3031',16,'001','B32'),(133,'BIOL4892',17,'003','B31'),(134,'ECON2151',18,'001','B32'),(135,'CCOM3035',19,'003','B32'),(136,'BIOL4027',19,'003','B32'),(137,'QUIM4027',19,'002','B32'),(138,'CCOM3030',20,'002','B32'),(139,'CCOM3036',20,'002','B31'),(140,'FISI3011',20,'003','B31'),(141,'CCOM3031',21,'003','B32'),(142,'CCOM4027',21,'003','B32'),(143,'MATE3151',22,'001','B32'),(144,'HUMA9870',22,'002','B32'),(145,'GENJ0000',23,'001','B32'),(146,'CCOM3034',23,'003','B32'),(147,'CCOM3033',24,'002','B32'),(148,'TAIJ0000',25,'001','B32'),(149,'MATE3152',26,'002','B32'),(150,'ARTE3427',26,'003','B31'),(151,'QUIM3001',27,'001','B31'),(152,'NINJ0000',27,'003','B32'),(153,'CCOM3032',27,'001','B31'),(154,'MATE3020',28,'003','B32'),(155,'BIOL3001',28,'002','B31'),(156,'CCOM4029',29,'002','B31'),(157,'REHU4027',29,'001','B31'),(158,'BIOL3031',30,'003','B31'),(159,'BIOL4892',30,'002','B32'),(160,'ECON2151',31,'003','B31'),(161,'CCOM3035',31,'002','B31'),(162,'BIOL4027',32,'001','B31'),(163,'QUIM4027',32,'003','B32'),(164,'CCOM3030',33,'001','B31'),(165,'CCOM3036',33,'003','B31'),(166,'FISI3011',34,'001','B32'),(167,'CCOM3031',35,'001','B31'),(168,'CCOM4027',35,'001','B31'),(169,'MATE3151',36,'002','B32'),(170,'HUMA9870',36,'003','B31'),(171,'GENJ0000',36,'002','B31'),(172,'CCOM3034',37,'001','B31'),(173,'CCOM3033',38,'003','B32'),(174,'TAIJ0000',38,'002','B31'),(175,'MATE3152',39,'003','B31'),(176,'ARTE3427',39,'001','B32'),(177,'QUIM3001',39,'002','B31'),(178,'NINJ0000',40,'001','B31'),(179,'CCOM3032',40,'002','B31'),(180,'MATE3020',40,'001','B31'),(181,'BIOL3001',1,'002','B32'),(182,'CCOM4029',1,'002','B32'),(183,'REHU4027',2,'001','B32'),(184,'BIOL3031',2,'003','B32'),(185,'BIOL4892',3,'002','B31'),(186,'ECON2151',4,'003','B32'),(187,'CCOM3035',5,'002','B32'),(188,'BIOL4027',5,'002','B32'),(189,'QUIM4027',5,'001','B32'),(190,'CCOM3030',6,'001','B32'),(191,'CCOM3036',7,'001','B31'),(192,'FISI3011',8,'002','B31'),(193,'CCOM3031',9,'002','B32'),(194,'CCOM4027',9,'002','B32'),(195,'MATE3151',10,'003','B31'),(196,'HUMA9870',11,'001','B32'),(197,'GENJ0000',11,'003','B32'),(198,'CCOM3034',12,'002','B32'),(199,'CCOM3033',13,'001','B32'),(200,'TAIJ0000',14,'003','B32'),(201,'MATE3152',15,'001','B32'),(202,'ARTE3427',16,'002','B31'),(203,'QUIM3001',16,'003','B32'),(204,'NINJ0000',17,'002','B32'),(205,'CCOM3032',18,'003','B32'),(206,'MATE3020',19,'002','B32'),(207,'BIOL3001',19,'001','B32'),(208,'CCOM4029',19,'001','B32'),(209,'REHU4027',20,'003','B32'),(210,'BIOL3031',20,'002','B32'),(211,'BIOL4892',20,'001','B32'),(212,'ECON2151',21,'002','B32'),(213,'CCOM3035',22,'001','B32');
/*!40000 ALTER TABLE `ofrece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertenece`
--

DROP TABLE IF EXISTS `pertenece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pertenece` (
  `num_est` char(9) NOT NULL DEFAULT '',
  `id_dept` int(11) DEFAULT NULL,
  KEY `id_dept` (`id_dept`),
  KEY `es_parte_de_ibfk_1` (`num_est`),
  CONSTRAINT `pertenece_ibfk_1` FOREIGN KEY (`num_est`) REFERENCES `estudiante` (`num_est`),
  CONSTRAINT `pertenece_ibfk_2` FOREIGN KEY (`id_dept`) REFERENCES `departamento` (`id_dept`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertenece`
--

LOCK TABLES `pertenece` WRITE;
/*!40000 ALTER TABLE `pertenece` DISABLE KEYS */;
INSERT INTO `pertenece` VALUES ('804107908',1),('841893456',1),('842107789',1),('846138151',1),('801114364',2),('802132434',2),('803106661',2),('804101524',2),('840106661',2),('843852342',2),('362113892',2),('418410479',2),('433684038',2),('505534944',3),('597063385',3),('614719870',3),('656745533',3),('801081321',3),('801086458',3),('801087621',3),('801100736',3),('801100738',3),('801102322',3),('801102364',4),('801103454',4),('801103459',4),('801106320',4),('801107282',4),('801108325',4),('801109876',4),('801110211',4),('801112382',4),('801113556',4),('801113558',4),('801114364',5),('801115432',5),('801115433',5),('801116328',5),('801116787',5),('801116789',5),('801117913',5),('801121650',5),('801121655',5),('801121972',5),('801121978',5),('801122000',6),('801122002',6),('801122102',6),('801122105',6),('801122210',6),('801122311',6),('801124327',6),('801125932',7),('801125934',7),('801129065',7),('801131264',7),('801133211',7),('801133452',7),('801137382',7),('801137777',7),('801139483',7),('801902341',7),('802091222',7),('802091225',7),('802091342',7),('802091345',7),('802092111',8),('802092112',8),('802101322',8),('802101325',8),('802132434',8),('802304050',8),('802304053',8),('802304054',8),('802304056',8),('803106661',9),('804101524',9),('804107908',9),('808120000',9),('808120001',9),('808120002',9),('808120003',10),('808120004',10),('808120005',10),('808120006',10),('808120007',11),('808120008',11),('808120009',11),('840106661',11),('841893456',12),('842107789',12),('843852342',12),('846138151',12),('969556127',13),('972862981',13),('977635923',13),('841893456',14),('842107789',14),('843852342',14),('846138151',14),('969556127',15),('972862981',15),('802304050',18),('802304053',18),('802304054',18),('802304056',16),('803106661',16),('804101524',17),('804107908',17),('808120000',17),('808120001',17),('801122102',1),('802101325',3),('802304054',4),('802091345',5),('801121978',6),('801103459',6),('801113558',6),('808120000',6),('801109876',7),('801110211',7),('801100738',7),('801121972',8),('802132434',8),('801102322',9),('802092112',9),('801114364',9),('801100736',10),('801902341',10),('969556127',10),('804101524',10),('801131264',11),('843852342',11),('802101322',11),('801086458',12),('802091222',12),('972862981',12),('840106661',12),('801124327',13),('801112382',13),('505534944',13),('801102364',13),('801122002',14),('362113892',14),('801103454',14),('433684038',14),('801113556',14),('801107282',14),('808120002',15),('801115433',15),('808120008',15),('802304053',15),('803106661',15),('801108325',15),('808120005',15),('801116787',15),('808120001',15),('597063385',15),('801129065',15),('801116328',15),('801121655',15),('801125932',16),('801137777',16),('801115432',16),('801139483',16),('842107789',16),('801087621',16),('846138151',16),('801081321',16),('808120003',16),('801117913',16),('801122000',16),('802304056',16),('801133211',16),('614719870',16),('801122311',16),('801122105',17),('802091342',17),('802304050',17),('801137382',17),('801133452',17),('801122210',2),('808120007',17),('801116789',17),('802092111',17),('808120006',17),('801125934',17),('808120004',17),('801106320',18),('801121650',18),('841893456',18),('802091225',18),('418410479',18),('808120009',18),('656745533',18),('977635923',18),('804107908',18);
/*!40000 ALTER TABLE `pertenece` ENABLE KEYS */;
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
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `id_prof` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `rango` varchar(60) DEFAULT NULL,
  `oficina` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_prof`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'Juan','juanccom@gmail.com',NULL,NULL),(2,'Pedro','pedroccom@gmail.com',NULL,NULL),(3,'Jose','joseccom@gmail.com',NULL,NULL),(4,'Maria','mariabiol@gmail.com',NULL,NULL),(5,'Giankarlo','giankarlobiol@gmail.com',NULL,NULL),(6,'Rafael Arce','rafael.arce@upr.edu',NULL,NULL),(7,'Javier Arce','javier.arce1@upr.edu',NULL,NULL),(8,'Carlos Corrada','carlos.corrada2@upr.edu',NULL,NULL),(9,'Ricardo Chiesa','ricardo.chiesa@upr.edu',NULL,NULL),(10,'Jose Ortiz','jose.ortiz8@upr.edu',NULL,NULL),(11,'Ludwig VanHeusen','theprof@gmail.com',NULL,NULL),(12,'John Johnson','afamcomp@gmail.com',NULL,NULL),(13,'Daileen Torres','eldiferente@gmail.com',NULL,NULL),(14,'Kakashi','hatake@leaf.vil',NULL,NULL),(15,'Hiroku Hayima','notaweaboo@gmail.com',NULL,NULL),(16,'Inigo Montoya','preparetodie@gmail.com',NULL,NULL),(17,'Asha Mann','a.a.m@gmail.com',NULL,NULL),(18,'Radek Philips','r.k.p@gmail.com',NULL,NULL),(19,'Abi Dexter','a.i.d@gmail.com',NULL,NULL),(20,'Raimundo Hansen','r.o.h@gmail.com',NULL,NULL),(21,'Carlos Corrada','carloscorrada2@gmail.com',NULL,NULL),(22,'Carlos Perichi','Perichi@gmail.com',NULL,NULL),(23,'Ubriaco','Ubriaco2@gmail.com',NULL,NULL),(24,'Rolando Rodrgiuez','rodrigez@msn.com',NULL,NULL),(25,'Ivelisse Rubio','iveruvo@hotmail.com',NULL,NULL),(26,'Augusta Tiryaki','a.a.t@gmail.com',NULL,NULL),(27,'Esdusmildo','eorozco@gmail.com',NULL,NULL),(28,'Patti','ordonezpatti@gmail.com',NULL,NULL),(29,'Arce','raarce@gmail.com',NULL,NULL),(30,'Carlos','ccorrada2@gmail.com',NULL,NULL),(31,'Jose A de la Vega','jose_profesor@gmail.com',NULL,NULL),(32,'Luz L Lopez','lopez_profe@gmail.com',NULL,NULL),(33,'Madeline Perez','mperez@gmail.com',NULL,NULL),(34,'Carlos Corrada','ccorrada@gmail.com',NULL,NULL),(35,'Homero','homero@gmail.com',NULL,NULL),(36,'Humberto','hortiz.hpcf@gmail.com',NULL,NULL),(37,'Guy','might@leaf.vil',NULL,NULL),(38,'Tsunade','tsunade@leaf.vil',NULL,NULL),(39,'Kurenai','yuhi@leaf.vil',NULL,NULL),(40,'Yamato','yamato@leaf.vil',NULL,NULL);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
INSERT INTO `publicaciones` VALUES ('abejas otras','2010','Journal','Jose, Jose','Published',6,7,'esta cool',5,2),('Elefantes','2015','Journal','Jose, Tuto, Jona','Pending',9,1,'Esta bueno su publicacion',6,15),('Abejas Malvadas','2015','Journal','Yo y Yo','Pending',5,6,'Es una publicacion cool',6,16);
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `hora` time NOT NULL DEFAULT '00:00:00',
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`hora`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES ('07:05:00',NULL),('07:10:00',NULL),('07:15:00',NULL),('07:22:00',NULL),('07:24:00',NULL),('07:33:00',NULL),('08:54:00',NULL);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
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
-- Table structure for table `trabaja`
--

DROP TABLE IF EXISTS `trabaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabaja` (
  `id_prof` int(11) NOT NULL DEFAULT '0',
  `id_dept` int(11) NOT NULL DEFAULT '0',
  `porciento` mediumint(9) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id_prof`,`id_dept`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabaja`
--

LOCK TABLES `trabaja` WRITE;
/*!40000 ALTER TABLE `trabaja` DISABLE KEYS */;
INSERT INTO `trabaja` VALUES (1,1,100),(2,1,100),(3,1,100),(4,2,100),(5,2,100),(6,17,100),(7,12,100),(8,18,100),(9,17,100),(10,16,100),(11,3,100),(12,3,100),(13,1,50),(13,4,50),(14,9,100),(15,4,100),(16,4,100),(17,15,100),(18,14,100),(19,14,100),(20,13,100),(21,5,100),(22,5,100),(23,5,100),(24,5,100),(25,6,100),(26,13,100),(27,13,100),(28,12,100),(29,12,100),(30,12,100),(31,7,100),(32,7,100),(33,8,100),(34,8,100),(35,9,100),(36,11,100),(37,10,100),(38,10,100),(39,10,100),(40,9,100);
/*!40000 ALTER TABLE `trabaja` ENABLE KEYS */;
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

--
-- Table structure for table `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vuelo` (
  `numvue` int(11) NOT NULL DEFAULT '0',
  `aeroLle` char(64) DEFAULT NULL,
  `distVuelo` char(64) DEFAULT NULL,
  `horaSal` int(11) DEFAULT NULL,
  `horaLle` int(11) DEFAULT NULL,
  PRIMARY KEY (`numvue`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo`
--

LOCK TABLES `vuelo` WRITE;
/*!40000 ALTER TABLE `vuelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vuelo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-05  9:36:36
