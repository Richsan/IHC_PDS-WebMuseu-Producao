-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: lpsmuseumdb
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `annotation`
--

DROP TABLE IF EXISTS `annotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annotation` (
  `id_annotation` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_museum` bigint(20) DEFAULT NULL,
  `id_object` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_annotation`),
  KEY `FK_b5a56479xr9r485xkefh90x02` (`id_museum`),
  KEY `FK_4bk6qed4kk7uf0su9s092k626` (`id_object`),
  CONSTRAINT `FK_4bk6qed4kk7uf0su9s092k626` FOREIGN KEY (`id_object`) REFERENCES `museological_object` (`id_object`),
  CONSTRAINT `FK_b5a56479xr9r485xkefh90x02` FOREIGN KEY (`id_museum`) REFERENCES `museum` (`id_museum`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotation`
--

LOCK TABLES `annotation` WRITE;
/*!40000 ALTER TABLE `annotation` DISABLE KEYS */;
INSERT INTO `annotation` VALUES (1,'Leonardo Da Vinci','<p><b>Artista:</b> Leonardo da Vinci</p>\r <p><b>Material:</b> Tinta a óleo</p>\r <p><b>Dimensões:</b> 77 cm x 53 cm</p>\r <p><b>Localização:</b> Museu do Louvre (desde 1797)</p>\r <p><b>Criação:</b> 1503–1517</p>\r <p><b>Período:</b> Renascimento</p>','monalisa',1,1),(2,'Edvard Munch','<p><b>Artista:</b>Edvard Munch</p><p><b>Material:</b>Óleo sobre tela, Têmpera e Pastel</p><p><b>Dimensões:</b>91 cm x 74 cm</p><p><b>Localização:</b>Galeria Nacional, Oslo</p><p><b>Criação:</b> 1893</p><p><b>Período:</b>Expressionismo</p>','grito',1,2),(3,'Eugene Delacroix','<p><b>Artista:</b>Eugène Delacroix</p><p><b>Material:</b> Tinta a óleo</p><p><b>Dimensões:</b>2,60 m x 3,2 m</p><p><b>Localização:</b>Museu do Louvre (1874–2012)</p><p><b>Criação:</b> 1830</p><p><b>Período:</b>Romantismo</p>','liberdade',1,3),(4,'Cândido Portinari','<p><b>Artista:</b>Cândido Portinari</p><p><b>Material:</b>Óleo sobre tela</p><p><b>Dimensões:</b>182 x 190 cm</p><p><b>Localização:</b> Museu de Arte de São Paulo (MASP)</p><p><b>Criação:</b>1944</p><p><b>Período:</b>Expressionismo</p>','criancamorta',1,4),(5,'Tarsila do Amaral','<p><b>Artista:</b>Tarsila do Amaral</p><p><b>Material:</b>Óleo sobre tela</p><p><b>Dimensões:</b>150 X 205cm</p><p><b>Localização:</b> Palácio Boa Vista - SP</p><p><b>Criação:</b>1933</p><p><b>Período:</b>Expressionismo</p>','operarios',1,5),(6,'Tarsila do Amaral','<p><b>Artista:</b>Tarsila do Amaral</p><p><b>Material:</b>Óleo sobre tela</p><p><b>Dimensões:</b>85cm × 72cm</p><p><b>Localização:</b>Museu de Arte Latino-americana de Buenos Aires</p><p><b>Criação:</b>1928</p><p><b>Período:</b>Modernismo</p>','abaporu',1,6),(7,'Anita Malfatti','<p><b>Artista:</b>Anita Malfatti</p><p><b>Material:</b>Óleo sobre tela</p><p><b>Dimensões:</b>88cm x 115cm</p><p><b>Localização:</b>Col. Pedro Tassinari Filho - SP</p><p><b>Criação:</b>1927</p><p><b>Período:</b>Pós-impressionismo</p>','larentree',1,7);
/*!40000 ALTER TABLE `annotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `id_answer` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id_answer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenge` (
  `DTYPE` varchar(31) NOT NULL,
  `id_challenge` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_scenario` bigint(20) DEFAULT NULL,
  `id_objectanswer` bigint(20) DEFAULT NULL,
  `id_objectquestion` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_challenge`),
  KEY `FK_d5n0l22v5g91plim7pfouyusf` (`id_scenario`),
  KEY `FK_syheraxs5guij6prfvimbjptf` (`id_objectanswer`),
  KEY `FK_4gihke2uu13dc4j34aq3fjv17` (`id_objectquestion`),
  CONSTRAINT `FK_4gihke2uu13dc4j34aq3fjv17` FOREIGN KEY (`id_objectquestion`) REFERENCES `museological_object` (`id_object`),
  CONSTRAINT `FK_d5n0l22v5g91plim7pfouyusf` FOREIGN KEY (`id_scenario`) REFERENCES `scenario` (`id_scenario`),
  CONSTRAINT `FK_syheraxs5guij6prfvimbjptf` FOREIGN KEY (`id_objectanswer`) REFERENCES `museological_object` (`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge`
--

LOCK TABLES `challenge` WRITE;
/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
/*!40000 ALTER TABLE `challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge_pastpresent_options`
--

DROP TABLE IF EXISTS `challenge_pastpresent_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenge_pastpresent_options` (
  `id_challenge` bigint(20) NOT NULL,
  `id_object` bigint(20) NOT NULL,
  KEY `FK_qhwoymcd2k8pfe30y1s353jgv` (`id_object`),
  KEY `FK_7jbduikt5no46m20f8m75vt1i` (`id_challenge`),
  CONSTRAINT `FK_7jbduikt5no46m20f8m75vt1i` FOREIGN KEY (`id_challenge`) REFERENCES `challenge` (`id_challenge`),
  CONSTRAINT `FK_qhwoymcd2k8pfe30y1s353jgv` FOREIGN KEY (`id_object`) REFERENCES `museological_object` (`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge_pastpresent_options`
--

LOCK TABLES `challenge_pastpresent_options` WRITE;
/*!40000 ALTER TABLE `challenge_pastpresent_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `challenge_pastpresent_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museological_object`
--

DROP TABLE IF EXISTS `museological_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museological_object` (
  `DTYPE` varchar(31) NOT NULL,
  `id_object` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `object_type` bit(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `urlAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_object`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museological_object`
--

LOCK TABLES `museological_object` WRITE;
/*!40000 ALTER TABLE `museological_object` DISABLE KEYS */;
INSERT INTO `museological_object` VALUES ('ImageDO',1,'2015-10-14','Monalisa','','monalisaTexto.txt','monalisa.jpg'),('ImageDO',2,'2015-10-14','O Grito','','gritoTexto.txt','grito.jpg'),('ImageDO',3,'2015-10-14','A Liberdade Guiando o Povo','','liberdadeTexto.txt','liberdade.png'),('ImageDO',4,'2015-11-07','Criança Morta','','criancamortaTexto.txt','criancaMorta.jpg'),('ImageDO',5,'2015-11-07','Operários','','operariosTexto.txt','operarios.jpg'),('ImageDO',6,'2015-11-07','Abaporu','','abaporuTexto.txt','abaporu.jpg'),('ImageDO',7,'2015-11-07','La Rentrée','','larentreeTexto.txt','larentree.jpg');
/*!40000 ALTER TABLE `museological_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museum`
--

DROP TABLE IF EXISTS `museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museum` (
  `id_museum` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_museum`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum`
--

LOCK TABLES `museum` WRITE;
/*!40000 ALTER TABLE `museum` DISABLE KEYS */;
INSERT INTO `museum` VALUES (1,'MuseuLPS');
/*!40000 ALTER TABLE `museum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenario`
--

DROP TABLE IF EXISTS `scenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenario` (
  `DTYPE` varchar(31) NOT NULL,
  `id_scenario` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_museum` bigint(20) DEFAULT NULL,
  `id_theme` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_scenario`),
  KEY `FK_1rn40kvfc3g2haavs90ug1h8u` (`id_museum`),
  KEY `FK_dufv0dvjhoiyfpiirc2gc0q9d` (`id_theme`),
  CONSTRAINT `FK_1rn40kvfc3g2haavs90ug1h8u` FOREIGN KEY (`id_museum`) REFERENCES `museum` (`id_museum`),
  CONSTRAINT `FK_dufv0dvjhoiyfpiirc2gc0q9d` FOREIGN KEY (`id_theme`) REFERENCES `theme` (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenario`
--

LOCK TABLES `scenario` WRITE;
/*!40000 ALTER TABLE `scenario` DISABLE KEYS */;
INSERT INTO `scenario` VALUES ('ScenarioDO',1,'Grandes Obras Conhecidas',1,1),('ScenarioDO',2,'Obras Brasileiras',1,1);
/*!40000 ALTER TABLE `scenario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenario_object`
--

DROP TABLE IF EXISTS `scenario_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenario_object` (
  `id_scenario` bigint(20) NOT NULL,
  `id_object` bigint(20) NOT NULL,
  KEY `FK_t2s4xameh5wtk18avl48d3y8b` (`id_object`),
  KEY `FK_l4xpybg71faffnkbg9bj7e33y` (`id_scenario`),
  CONSTRAINT `FK_l4xpybg71faffnkbg9bj7e33y` FOREIGN KEY (`id_scenario`) REFERENCES `scenario` (`id_scenario`),
  CONSTRAINT `FK_t2s4xameh5wtk18avl48d3y8b` FOREIGN KEY (`id_object`) REFERENCES `museological_object` (`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenario_object`
--

LOCK TABLES `scenario_object` WRITE;
/*!40000 ALTER TABLE `scenario_object` DISABLE KEYS */;
INSERT INTO `scenario_object` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(2,7);
/*!40000 ALTER TABLE `scenario_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme` (
  `id_theme` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,'...','Louvre');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdo`
--

DROP TABLE IF EXISTS `userdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdo` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdo`
--

LOCK TABLES `userdo` WRITE;
/*!40000 ALTER TABLE `userdo` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-07 22:30:07
