CREATE DATABASE  IF NOT EXISTS `skoony` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `skoony`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: skoony
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `skooner`
--

DROP TABLE IF EXISTS `skooner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skooner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `mail` varchar(45) NOT NULL,
  `adresse_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_skooner_adresse1_idx` (`adresse_id`),
  CONSTRAINT `fk_skooner_adresse1` FOREIGN KEY (`adresse_id`) REFERENCES `adresse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skooner`
--

LOCK TABLES `skooner` WRITE;
/*!40000 ALTER TABLE `skooner` DISABLE KEYS */;
INSERT INTO `skooner` VALUES (12,'pika','Martin','Alix',35,'Martin.Alix@Gmail.com',1),(13,'chu','Pioche','Georges',42,'Pioche.Georges@gmail.com',2),(14,'Gi','Renault','Lucile',24,'Renault.Lucile@yahoo.fr',3),(15,'No','Ducoin','Bertrand',27,'Ducoin.Bertrand@gmail.com',4),(16,'allo','Chantoux','Pierre',34,'Chantoux.Pierre@yahoo.fr',5),(17,'HA','Renier','Cecile',21,'Renier.Cecile@yahoo.fr',6),(18,'jai','Nourtaux','Maya',24,'Nourtaux.Maya@gmail.com',7),(19,'un','Elhabab','Mehdi',26,'Elhabab.Mehdi@hotmail.fr',8),(20,'pro','Fa','Mulan',25,'Fa.Mulan@gmail.com',9),(21,'blem','Ramos','Marie',27,'Ramos.Marie@gmail.com',10),(22,'lol','Fritata','Julio',33,'Fritata.Julio@yahoo.fr',11);
/*!40000 ALTER TABLE `skooner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-16 16:58:35
