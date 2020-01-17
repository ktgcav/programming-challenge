-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: title
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Table structure for table `knowsfortitles`
--

DROP TABLE IF EXISTS `knowsfortitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowsfortitles` (
  `kconst` varchar(100) NOT NULL,
  `tconst` varchar(100) DEFAULT NULL,
  `nconst` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kconst`),
  KEY `knowsfortitles_fk` (`tconst`),
  KEY `knowsfortitles_fk_1` (`nconst`),
  CONSTRAINT `knowsfortitles_fk` FOREIGN KEY (`tconst`) REFERENCES `movie` (`tconst`),
  CONSTRAINT `knowsfortitles_fk_1` FOREIGN KEY (`nconst`) REFERENCES `professional` (`nconst`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowsfortitles`
--

LOCK TABLES `knowsfortitles` WRITE;
/*!40000 ALTER TABLE `knowsfortitles` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowsfortitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `tconst` varchar(100) NOT NULL,
  `titleType` varchar(100) DEFAULT NULL,
  `primaryTitle` varchar(100) DEFAULT NULL,
  `originalTitle` varchar(100) DEFAULT NULL,
  `isAdult` double DEFAULT NULL,
  `startYear` double DEFAULT NULL,
  `endYear` varchar(100) DEFAULT NULL,
  `runtimeMinutes` double DEFAULT NULL,
  `genres` varchar(100) DEFAULT NULL,
  `averagerating` double DEFAULT NULL,
  `numvotes` double DEFAULT NULL,
  PRIMARY KEY (`tconst`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `professional`
--

DROP TABLE IF EXISTS `professional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional` (
  `nconst` varchar(100) NOT NULL,
  `primaryName` varchar(100) DEFAULT NULL,
  `birthYear` double DEFAULT NULL,
  `deathYear` double DEFAULT NULL,
  `primaryProfession` varchar(100) DEFAULT NULL,
  `kconst` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nconst`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional`
--

LOCK TABLES `professional` WRITE;
/*!40000 ALTER TABLE `professional` DISABLE KEYS */;
/*!40000 ALTER TABLE `professional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'title'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-17 16:24:54
