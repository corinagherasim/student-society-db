-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: asmi
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `activitati`
--

DROP TABLE IF EXISTS `activitati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitati` (
  `id_task` int NOT NULL,
  `id_voluntar` int NOT NULL,
  PRIMARY KEY (`id_task`,`id_voluntar`),
  KEY `id_task_idx` (`id_task`),
  KEY `id_vol_idx` (`id_voluntar`),
  CONSTRAINT `id_task` FOREIGN KEY (`id_task`) REFERENCES `taskuri` (`id_task`) ON DELETE CASCADE,
  CONSTRAINT `id_vol` FOREIGN KEY (`id_voluntar`) REFERENCES `voluntari` (`id_voluntar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitati`
--

LOCK TABLES `activitati` WRITE;
/*!40000 ALTER TABLE `activitati` DISABLE KEYS */;
INSERT INTO `activitati` VALUES (1,49),(1,56),(2,44),(2,45),(2,47),(2,48),(2,50),(2,53),(2,55),(2,58),(3,44),(3,46),(3,47),(3,48),(3,51),(3,52),(3,54),(3,58),(4,46),(4,51),(5,44),(5,47),(5,49),(5,56),(5,58),(6,44),(6,49),(6,54),(6,55),(6,56),(7,6),(7,85),(8,10),(8,11),(8,15),(8,17),(8,18),(8,26),(8,30),(8,31),(8,32),(8,33),(8,35),(8,36),(8,37),(8,38),(8,46),(8,48),(8,49),(8,50),(8,51),(8,52),(8,53),(8,54),(8,58),(8,67),(8,68),(8,72),(9,26),(9,31),(10,82),(10,87),(11,11),(11,16),(12,14),(13,12),(13,20),(15,15),(16,9),(16,67),(17,11),(17,16),(17,21),(17,39),(17,46),(17,49),(17,54),(17,55),(17,76),(18,13),(18,18),(18,27),(18,29),(18,31),(18,34),(18,50),(18,58),(18,69),(18,72),(19,14),(19,21),(19,80),(19,84),(20,46),(20,48),(20,53),(20,58),(20,64),(20,68),(20,73),(21,14),(21,28),(21,43),(21,58),(21,59),(21,72),(22,10),(22,12),(23,48),(23,51),(24,4),(24,11),(24,17),(24,21),(24,35),(24,38),(24,47),(24,52),(24,68),(24,87),(25,54),(25,56),(26,38),(26,80),(27,5),(28,12),(29,63),(29,65),(29,66),(29,68),(29,69),(29,71),(29,72),(30,62),(30,72),(31,4),(31,39),(32,62),(32,63),(32,66),(32,68),(32,69),(32,70),(32,72),(32,74),(33,35),(33,55),(33,73),(33,76),(34,11),(34,12),(34,14),(34,15),(34,18),(34,19),(34,22),(34,26),(34,31),(34,44),(34,46),(34,47),(34,49),(34,52),(34,68),(34,87),(35,4),(35,73),(36,7),(36,63),(36,65),(36,66),(36,67),(36,68),(36,69),(36,71),(37,5),(37,12),(38,8),(38,14),(39,11),(39,16),(40,38),(40,67),(41,62),(41,63),(41,68),(41,75),(41,79),(42,23),(42,87),(43,21),(43,80),(43,84),(44,11),(44,40),(44,41),(44,43),(44,45),(44,51),(44,77),(45,11),(45,42),(45,48),(45,57),(45,60),(45,72),(45,79),(46,66),(46,78),(47,7),(47,64),(48,74),(48,76),(49,63),(49,69),(50,10),(50,14),(50,19),(50,23),(50,42),(50,72),(51,81),(51,83),(52,51),(52,54),(52,55),(52,85),(52,86),(53,2),(53,44),(53,46),(53,47),(53,49),(53,56),(53,58),(54,46),(54,49),(55,44),(55,45),(55,52),(55,54),(55,55),(55,58),(55,87),(56,47),(56,56),(56,58),(56,59),(57,68),(57,85),(58,5),(58,14),(59,6),(59,8),(60,57),(60,61),(61,35),(61,51),(62,30),(62,53),(63,5),(63,17),(63,34),(63,39),(63,49),(63,51),(63,64),(63,67),(64,27),(64,30),(65,11),(65,13),(65,21),(65,22),(65,26),(65,28),(65,34),(65,36),(65,39),(65,44),(65,45),(65,51),(65,52),(65,53),(65,58),(65,64),(65,66),(65,73),(66,21),(66,46),(66,47),(66,49),(66,82),(66,84),(66,85),(66,87),(67,29),(67,32),(68,21),(68,30),(68,52),(68,55),(68,64),(68,68),(68,69),(68,74),(69,47),(69,55);
/*!40000 ALTER TABLE `activitati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asociatii_partenere`
--

DROP TABLE IF EXISTS `asociatii_partenere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asociatii_partenere` (
  `id_asociatiepart` int NOT NULL,
  `nume_asoc` varchar(60) NOT NULL,
  `id_oras` int NOT NULL,
  PRIMARY KEY (`id_asociatiepart`),
  UNIQUE KEY `nume_asoc_UNIQUE` (`nume_asoc`),
  KEY `id_orase_idx` (`id_oras`),
  CONSTRAINT `id_orase` FOREIGN KEY (`id_oras`) REFERENCES `orase` (`id_oras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociatii_partenere`
--

LOCK TABLES `asociatii_partenere` WRITE;
/*!40000 ALTER TABLE `asociatii_partenere` DISABLE KEYS */;
INSERT INTO `asociatii_partenere` VALUES (1,'Societatea Hermes',46),(2,'Asociatia Studentilor Geografi',9),(3,'Liga Studentilor din Facultatea de Automatica UPB',9),(4,'Asociatia Studentilor Geologi si Geofizicieni',9),(5,'Asociatia Studentilor din Facultatea de Limbi Straine',9),(6,'Asociatia Studentilor in Stiinte Politice',9),(7,'Asociatia Studentilor Contabili RATIO',46),(8,'Uniunea Studentilor din Romania',9),(9,'Asociatia Studentilor la Istorie \"Dacia\"',9),(10,'Asociatia Studentilor la Comunicare',9),(11,'Sindicatul Studentilor din Cibernetica',9),(12,'Asociatia Studentilor Fizicieni',9),(13,'Asociatia Studentilor din Universitatea Bucuresti',9),(14,'Asociatia Studentilor Chimisti',9),(15,'Asociatia Studentilor din Administratie si Afaceri',9),(16,'Asociatia Studentilor Biologi',9),(17,'Asociatia Studentilor la Sociologie',9),(18,'Asociatia Studentilor Economisti din Oradea',25),(19,'Asociatia Studentilor din Universitatea de Arta',46),(20,'Liga Studentilor din Facultatea de Automatica UPT',39),(21,'Asociatia Studentilor Informaticieni Ieseni',21);
/*!40000 ALTER TABLE `asociatii_partenere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracte`
--

DROP TABLE IF EXISTS `contracte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracte` (
  `id_contract` int NOT NULL,
  `id_proiect` int NOT NULL,
  `id_sponsor` int NOT NULL,
  `data_semnare` date NOT NULL,
  PRIMARY KEY (`id_contract`),
  KEY `id_proiect_idx` (`id_proiect`),
  KEY `id_sponsor_idx` (`id_sponsor`),
  CONSTRAINT `id_proiect` FOREIGN KEY (`id_proiect`) REFERENCES `proiecte` (`id_proiect`),
  CONSTRAINT `id_sponsor` FOREIGN KEY (`id_sponsor`) REFERENCES `sponsori` (`id_sponsor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracte`
--

LOCK TABLES `contracte` WRITE;
/*!40000 ALTER TABLE `contracte` DISABLE KEYS */;
INSERT INTO `contracte` VALUES (1,11,2,'2021-12-16'),(2,11,3,'2021-12-20'),(3,11,4,'2022-01-27'),(4,11,5,'2022-01-18'),(5,11,6,'2021-12-17'),(6,11,7,'2021-12-17'),(7,11,8,'2022-01-20'),(8,11,9,'2022-12-20'),(9,11,10,'2022-12-15'),(10,11,11,'2022-01-24'),(11,11,12,'2022-01-15'),(12,11,13,'2022-01-09'),(13,11,14,'2022-12-21'),(14,11,15,'2022-01-28'),(15,9,2,'2022-06-15'),(16,9,10,'2022-08-12'),(17,9,11,'2022-09-21'),(18,9,18,'2022-09-17'),(19,9,16,'2022-07-15'),(20,9,19,'2022-10-11'),(21,9,20,'2022-09-27'),(22,9,21,'2022-10-05'),(23,9,22,'2022-09-29'),(24,9,23,'2022-10-18'),(25,9,24,'2022-09-28'),(26,9,25,'2022-10-29'),(27,11,26,'2022-01-15'),(28,6,27,'2022-03-16'),(29,6,30,'2022-03-05'),(30,6,33,'2022-08-21'),(31,10,31,'2022-11-18'),(32,10,34,'2022-11-21'),(33,7,28,'2022-09-29');
/*!40000 ALTER TABLE `contracte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamente`
--

DROP TABLE IF EXISTS `departamente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamente` (
  `id_departament` int NOT NULL,
  `nume_departament` varchar(45) NOT NULL,
  PRIMARY KEY (`id_departament`),
  UNIQUE KEY `nume_departament_UNIQUE` (`nume_departament`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamente`
--

LOCK TABLES `departamente` WRITE;
/*!40000 ALTER TABLE `departamente` DISABLE KEYS */;
INSERT INTO `departamente` VALUES (2,'Design&PR'),(1,'Educational'),(3,'HR'),(4,'Management&Fundraising');
/*!40000 ALTER TABLE `departamente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id_departament` int NOT NULL,
  `id_voluntar` int NOT NULL,
  PRIMARY KEY (`id_departament`,`id_voluntar`),
  KEY `id_departament_idx` (`id_departament`),
  KEY `id_voluntar_idx` (`id_voluntar`),
  CONSTRAINT `id_dep` FOREIGN KEY (`id_departament`) REFERENCES `departamente` (`id_departament`),
  CONSTRAINT `id_voluntar` FOREIGN KEY (`id_voluntar`) REFERENCES `voluntari` (`id_voluntar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,9),(2,8),(3,6),(4,7);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joaca`
--

DROP TABLE IF EXISTS `joaca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joaca` (
  `id_proiect` int NOT NULL,
  `id_joc` int NOT NULL,
  PRIMARY KEY (`id_proiect`,`id_joc`),
  KEY `id_proi_idx` (`id_proiect`),
  KEY `id_joc_idx` (`id_joc`),
  CONSTRAINT `id_joc` FOREIGN KEY (`id_joc`) REFERENCES `jocuri_hr` (`id_joc`),
  CONSTRAINT `id_proi` FOREIGN KEY (`id_proiect`) REFERENCES `proiecte` (`id_proiect`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joaca`
--

LOCK TABLES `joaca` WRITE;
/*!40000 ALTER TABLE `joaca` DISABLE KEYS */;
INSERT INTO `joaca` VALUES (1,14),(2,14),(3,1),(3,2),(3,4),(3,5),(3,6),(3,7),(7,3),(7,8),(12,9),(12,12),(12,13),(13,8),(13,9),(13,11),(13,13),(20,7),(20,10),(20,13);
/*!40000 ALTER TABLE `joaca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jocuri_hr`
--

DROP TABLE IF EXISTS `jocuri_hr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jocuri_hr` (
  `id_joc` int NOT NULL,
  `nume_joc` varchar(45) NOT NULL,
  PRIMARY KEY (`id_joc`),
  UNIQUE KEY `nume_joc_UNIQUE` (`nume_joc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jocuri_hr`
--

LOCK TABLES `jocuri_hr` WRITE;
/*!40000 ALTER TABLE `jocuri_hr` DISABLE KEYS */;
INSERT INTO `jocuri_hr` VALUES (14,'Apocalipsa'),(11,'Baloane cu apa'),(8,'Ceasul'),(12,'Cercurile'),(6,'Cutia'),(5,'Degetul ajutator'),(4,'Gaseste-ti fratele/sora'),(1,'Mingea cu provocari'),(13,'Miscare browniana'),(2,'Pastele'),(3,'Pizza'),(10,'Povestea'),(9,'Sah special'),(7,'Taxiul');
/*!40000 ALTER TABLE `jocuri_hr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orase`
--

DROP TABLE IF EXISTS `orase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orase` (
  `id_oras` int NOT NULL,
  `nume_oras` varchar(45) NOT NULL,
  PRIMARY KEY (`id_oras`),
  UNIQUE KEY `nume_oras_UNIQUE` (`nume_oras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orase`
--

LOCK TABLES `orase` WRITE;
/*!40000 ALTER TABLE `orase` DISABLE KEYS */;
INSERT INTO `orase` VALUES (1,'Alba Iulia'),(2,'Arad'),(3,'Bacau'),(4,'Baia Mare'),(5,'Barlad'),(6,'Botosani'),(7,'Braila'),(8,'Brasov'),(9,'Bucuresti'),(10,'Buzau'),(11,'Campina'),(12,'Campulung'),(13,'Caracal'),(46,'Cluj-Napoca'),(14,'Comarnic'),(15,'Constanta'),(44,'Covasna'),(16,'Craiova'),(17,'Curtea de Arges'),(18,'Focsani'),(19,'Galati'),(20,'Giurgiu'),(21,'Iasi'),(22,'Magurele'),(23,'Miercurea Ciuc'),(24,'Mizil'),(25,'Oradea'),(26,'Piatra Neamt'),(27,'Pitesti'),(28,'Ploiesti'),(29,'Popesti-Leordeni'),(45,'Prahova'),(30,'Ramnicu Valcea'),(31,'Rasnov'),(32,'Roman'),(33,'Satu Mare'),(34,'Sibiu'),(36,'Slatina'),(35,'Suceava'),(37,'Targoviste'),(38,'Targu Mures'),(39,'Timisoara'),(40,'Toplita'),(41,'Tulcea'),(42,'Turnu Magurele'),(43,'Vaslui');
/*!40000 ALTER TABLE `orase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proiecte`
--

DROP TABLE IF EXISTS `proiecte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proiecte` (
  `id_proiect` int NOT NULL,
  `nume_proiect` varchar(45) NOT NULL,
  `data_incepere` date NOT NULL,
  `data_terminare` date NOT NULL,
  PRIMARY KEY (`id_proiect`),
  UNIQUE KEY `nume_proiect_UNIQUE` (`nume_proiect`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proiecte`
--

LOCK TABLES `proiecte` WRITE;
/*!40000 ALTER TABLE `proiecte` DISABLE KEYS */;
INSERT INTO `proiecte` VALUES (1,'Recrutari Toamna 2022','2022-09-30','2022-10-28'),(2,'Recrutari Primavara 2022','2022-03-30','2022-04-15'),(3,'Marea Ieseala 2022','2022-09-29','2022-09-29'),(4,'Dialog Deschis 2022','2022-10-04','2022-10-04'),(5,'Balul Bobocilor 2022','2022-10-20','2022-10-20'),(6,'Zilele ASMI 2022','2022-04-02','2022-04-10'),(7,'Tre\'  sa caut 2022','2022-10-08','2022-10-08'),(8,'Petrecerea de Trecere 2022','2022-06-02','2022-06-02'),(9,'Smarthack 2022','2022-11-05','2022-11-06'),(10,'Arta\'n Dar 2022','2022-12-08','2022-12-18'),(11,'Cariere 2022','2022-03-04','2022-03-06'),(12,'Teambuilding Iarna 2022','2022-02-10','2022-02-13'),(13,'Teambuilding Vara 2022','2022-08-25','2022-08-28'),(14,'UBSU 2022','2022-07-18','2022-07-31'),(15,'Secret Santa 2022','2022-12-21','2022-12-21'),(16,'Teambuilding Iarna  2023','2023-02-16','2023-02-19'),(17,'Caravana Educationala 2022','2022-03-14','2022-03-18'),(18,'Admitere 2022','2022-08-12','2022-08-27'),(19,'MateInfoUB 2022','2022-05-21','2022-05-28'),(20,'MiniTB 2022','2022-11-12','2022-11-12');
/*!40000 ALTER TABLE `proiecte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsori`
--

DROP TABLE IF EXISTS `sponsori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsori` (
  `id_sponsor` int NOT NULL,
  `nume_sponsor` varchar(45) NOT NULL,
  `domeniu` varchar(45) NOT NULL,
  PRIMARY KEY (`id_sponsor`),
  UNIQUE KEY `nume_sponsor_UNIQUE` (`nume_sponsor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsori`
--

LOCK TABLES `sponsori` WRITE;
/*!40000 ALTER TABLE `sponsori` DISABLE KEYS */;
INSERT INTO `sponsori` VALUES (1,'Bitdefender','IT'),(2,'Sofbinator','IT'),(3,'4PSA','IT'),(4,'Deloitte','IT'),(5,'Infosys','IT'),(6,'Tremend Software Consulting','IT'),(7,'Ericsson','IT'),(8,'Coherent Solutions','IT'),(9,'Essensys Software','IT'),(10,'Adobe','IT'),(11,'Bosch','IT'),(12,'American Greetings','IT'),(13,'Softelligence','IT'),(14,'BCR','IT'),(15,'Axway','IT'),(16,'Siemens','IT'),(17,'Autodesk','IT'),(18,'Google (Fitbit)','IT'),(19,'Redbull','Barter'),(20,'Simingerie LUCA','Barter'),(21,'Subway','Barter'),(22,'Tchibo','Barter'),(23,'Fitfresh','Barter'),(24,'Pizzeria Florina','Barter'),(25,'Oala cu traditii','Barter'),(26,'Allianz','IT'),(27,'Sloop','Barter'),(28,'Locked In Escape Room','Escape Room'),(29,'Carturesti','Librarie'),(30,'Barlogul cu Jocuri','Boardgames'),(31,'Regatul Jocurilor','Boardgames'),(32,'Bookster','Librarie'),(33,'Carpatina','Barter'),(34,'Starbucks','Barter');
/*!40000 ALTER TABLE `sponsori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskuri`
--

DROP TABLE IF EXISTS `taskuri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taskuri` (
  `id_task` int NOT NULL,
  `nume_task` varchar(100) NOT NULL,
  `id_proiect` int NOT NULL,
  PRIMARY KEY (`id_task`),
  KEY `id_pro_idx` (`id_proiect`),
  CONSTRAINT `id_pro` FOREIGN KEY (`id_proiect`) REFERENCES `proiecte` (`id_proiect`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskuri`
--

LOCK TABLES `taskuri` WRITE;
/*!40000 ALTER TABLE `taskuri` DISABLE KEYS */;
INSERT INTO `taskuri` VALUES (1,'Project Manager Recrutari Toamna 2022',1),(2,'Supraveghetor Recrutari Toamna 2022',1),(3,'Interviu Recrutari Toamna 2022',1),(4,'Project Manager Recrutari Primavara 2022	1',2),(5,'Supraveghetor Recrutari Primavara 2022',2),(6,'Interviu Recrutari Primavara 2022',2),(7,'Project Manager Marea Ieseala 2022',3),(8,'Supraveghetor joc Marea Ieseala 2022',3),(9,'Project Manager Dialog Deschis 2022',4),(10,'Project Manager Balul Bobocilor 2022',5),(11,'Promovare Balul Bobocilor 2022',5),(12,'Promovare Recrutari Toamna 2022',1),(13,'Promovare Recrutari Primavara 2022',2),(14,'Promovare Marea Ieseala 2022',3),(15,'Promovare Dialog Deschis',4),(16,'Project Manager Zilele ASMI 2022',6),(17,'Responsabil seara Zilele ASMI 2022',6),(18,'Persoana care intampina oamenii la intrare Zilele ASMI 2022',6),(19,'Fotograf Zilele ASMI 2022',6),(20,'Responsabil echipe Photo Hunt Zilele ASMI 2022',6),(21,'Supraveghetori de jocuri Zielele ASMI 2022',6),(22,'Persoana responsabila de snack bar Zilele ASMI 2022',6),(23,'Project Manager Tre\' sa caut 2022',7),(24,'Responsabili echipe Tre\' sa caut 2022',7),(25,'Project Manager Petrecerea de Trecere 2022',8),(26,'Fotograf  Petrecerea de Trecere 2022',8),(27,'Promovare Tre sa caut 2022',7),(28,' Promovare Petrecerea de Trecere 2022',8),(29,'Cautare sponsori Zilele ASMI 2022',6),(30,'Cautare sponsori Tre sa caut 2022',7),(31,'Project Manager Smarthack 2022',9),(32,'Cautare sponsori Smarthack 2022',9),(33,'Responsabili echipe Smarthack 2022',9),(34,'Supraveghetor Smarthack 2022',9),(35,'Project Manager Cariere 2022',11),(36,'Cautare sponsori Cariere 2022',11),(37,'Promovare Cariere 2022',11),(38,'Promovare Zilele ASMI 2022',6),(39,'Promovare Smarthack 2022',9),(40,'Project Manager Arta\'n Dar 2022',10),(41,'Cautare sponsori Arta\'n Dar 2022',10),(42,'Promovare Arta\'n Dar 2022',10),(43,'Fotograf Arta\'n Dar 2022',10),(44,'Responsabili seara Arta\'n Dar 2022',10),(45,'Persoana care intampina oamenii la intrare Arta\'n Dar 2022',10),(46,'Responsabil MF Arta\'n Dar 2022',10),(47,'Responsabil MF Smarthack 2022',9),(48,'Responsabil MF Cariere 2022',11),(49,'Responsabil MF Zilele ASMI 2022',6),(50,'Persoana snack bar Arta\'n dar 2022',10),(51,'Project Manager TB Iarna 2022',12),(52,'Responsabil activitate TB Iarna 2022',12),(53,'Supraveghetor joc TB Iarna 2022',12),(54,'Project Manager TB Vara 2022',13),(55,'Responsabil activitate TB Vara 2022',13),(56,'Supraveghetor joc TB Vara 2022',13),(57,'Project Manager UBSU 2022',14),(58,'Coordonator de camera UBSU 2022',14),(59,'Voluntari extra UBSU 2022',14),(60,'Project Manager Secret Santa 2022',15),(61,'Project Manager TB Iarna 2023',16),(62,'Project Manager Caravana Educationala 2022',17),(63,'Prezentare liceu Caravana Educationala 2022',17),(64,'Project Manager Admitere 2022',18),(65,'Supraveghetor Admitere 2022',18),(66,'Confirmare Dosare Admitere 2022',18),(67,'Project Manager MIUB 2022',19),(68,'Supraveghetor MIUB 2022',19),(69,'Project Manager MiniTb2022',20);
/*!40000 ALTER TABLE `taskuri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voluntari`
--

DROP TABLE IF EXISTS `voluntari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voluntari` (
  `id_voluntar` int NOT NULL,
  `prenume_voluntar` varchar(45) NOT NULL,
  `nume_voluntar` varchar(45) NOT NULL,
  `id_departament` int DEFAULT NULL,
  `id_oras` int NOT NULL,
  PRIMARY KEY (`id_voluntar`),
  KEY `id_departament_idx` (`id_departament`),
  KEY `id_oras_idx` (`id_oras`),
  CONSTRAINT `id_departament` FOREIGN KEY (`id_departament`) REFERENCES `departamente` (`id_departament`),
  CONSTRAINT `id_oras` FOREIGN KEY (`id_oras`) REFERENCES `orase` (`id_oras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voluntari`
--

LOCK TABLES `voluntari` WRITE;
/*!40000 ALTER TABLE `voluntari` DISABLE KEYS */;
INSERT INTO `voluntari` VALUES (1,'Liviu','Bouruc',NULL,43),(2,'Diana','Muscalu',NULL,8),(3,'David','Patranjel',NULL,44),(4,'David','Bejenariu',NULL,43),(5,'Adrian','Leventiu',NULL,9),(6,'Cosmina','Duca',3,45),(7,'Marius','Tillinger',4,9),(8,'Eduardo','Dragomir',2,30),(9,'Eric','Morosan',1,6),(10,'Andrei ','Alexandru',1,30),(11,'Ana','Anghel',2,27),(12,'Gabriela','Asavoaei',2,43),(13,'Alexandra','Ciobotaru',2,2),(14,'Alexandra','Ciurescu',2,43),(15,'Alexandru','Harnagea',2,30),(16,'Stefan','Isac',2,15),(17,'Alexandru','Glodeanu',2,15),(18,'Bogdan','Gavril',2,16),(19,'Cosmin','Moarcas',2,9),(20,'Dragos','Teleaga',2,19),(21,'Ana','Voinea',2,19),(22,'Artemis','Tismanaru',2,11),(23,'Ioana','Potlog',2,9),(26,'Iulita','Alpetri',1,15),(27,'Andreea','Andriciuc',1,35),(28,'Evelyn','Bacioiu',1,9),(29,'Andreia','Barsan',1,23),(30,'Vlad','Furdui',1,11),(31,'Alexandra','Ghinea',1,3),(32,'Teodora','Lazaroiu',1,17),(33,'Simona','Mihaita',1,9),(34,'Raluca','Ionescu',1,28),(35,'Bogdan','Pita',1,27),(36,'Mara','Neagu',1,11),(37,'Liviu','Paun',1,40),(38,'Mihai','Sorescu',1,9),(39,'Robert','Trifan',4,43),(40,'Alexandru','Ingeaua',1,9),(41,'Adelina','Necula',1,19),(42,'Carlo','Epure',1,23),(43,'Bogdan','Comardici',1,24),(44,'Cosmina','Barbu',3,36),(45,'Ioana','Baba',3,9),(46,'Robert','Barbu',3,30),(47,'Alexandru','Balescu',3,9),(48,'Loredana','Delcea',3,13),(49,'Ella','Chiriac',3,19),(50,'Cosmina','Gheorghe',3,7),(51,'Ecaterina','Dirtu',3,35),(52,'Ruxandra','Iftimi',3,9),(53,'Radu ','Ionescu',3,9),(54,'Amedeea','Lemnaru',3,16),(55,'Radu','Mocanu',3,30),(56,'Delia','Oltean',3,15),(57,'Cosmin','Balaita',3,3),(58,'Carina','Saicu',3,35),(59,'Andra','Mititelu',3,16),(60,'Ana','Rosu',3,22),(61,'Mihai','Tirdea',3,42),(62,'Timotei','Andrei',4,37),(63,'Miruna','Atudorei',4,43),(64,'Stefan','Boboc',4,23),(65,'Victor','Brinzea',4,11),(66,'Sebastian','Finariu',4,32),(67,'Radu','Gheorghe',4,16),(68,'Corina','Gherasim',4,9),(69,'Andreea ','Gherghescu',4,9),(70,'Razvan','Ilie',4,19),(71,'Andrei','Mihailescu',4,41),(72,'Anca','Oprea',4,16),(73,'Alexandru','Serafim',4,43),(74,'Vlad','Turis',4,27),(75,'Darius','Gherca',4,9),(76,'George','Popescu',4,12),(77,'Matei','Popa',4,43),(78,'Stefan','Calota',4,37),(79,'Iulia','Pincu',4,9),(80,'Gabriel','Majeri',4,9),(81,'Laura','Tender',3,9),(82,'Laura ','Udroiu',2,9),(83,'Horia ','Mocanu',3,9),(84,'Andrei','Sin',4,9),(85,'Cristiana','Niculita',3,43),(86,'Miruna','Vasiliu',3,43),(87,'Alexandra','Zamfirescu',2,9),(89,'Radu','Nedelcu',1,9),(90,'Ivona','Racasan',3,37);
/*!40000 ALTER TABLE `voluntari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'asmi'
--

--
-- Dumping routines for database 'asmi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-12 16:12:15
