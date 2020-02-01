-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: railway
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `train_no` int(11) NOT NULL,
  `train_name` varchar(255) DEFAULT NULL,
  `source_station` varchar(255) DEFAULT NULL,
  `dest_station` varchar(255) DEFAULT NULL,
  `depart_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `authority_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`train_no`),
  KEY `train_ibfk_1` (`authority_id`),
  CONSTRAINT `train_ibfk_1` FOREIGN KEY (`authority_id`) REFERENCES `trainauthority1` (`authority_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (701,'subarna Express','Chittagong','Dhaka','07:00:00','12:10:00',19912791),(702,'subarna Express','Dhaka','Chittagong','15:00:00','20:10:00',19912791),(703,'Mohanagar Goduli ','Chittagong','Dhaka','15:00:00','20:10:00',19912791),(704,'sonar bangla ','Dhaka','Chittagong','07:00:00','12:50:00',19912791),(705,'sonar bangla ','Chittagong','Dhaka','17:00:00','22:00:00',19912791),(706,'Turna Express ','Chittagong','Dhaka','23:00:00','05:25:00',19912791),(707,'Turna Express ','Dhaka','Chittagong','23:30:00','06:20:00',19912791),(708,'Mohanagar provati ','Dhaka','Chittagong','07:45:00','13:50:00',19912791),(709,'PARABAT Express','Dhaka','Shylet','06:35:00','13:20:00',19912791),(710,'PARABAT Express','Shylet','Dhaka','15:00:00','21:55:00',19912791),(711,'Upukol Express','Dhaka','Noakhali','15:30:00','21:10:00',19912791),(712,'Upukol Express','Noakhali','Dhaka','11:10:00','06:30:00',19912791),(713,'Ekota Express','Dhaka','Dinajpur','10:00:00','18:45:00',19912791),(714,'Ekota Express','Dinajpur','Dhaka','23:00:00','08:10:00',19912791),(717,'PARABAT Express','Dhaka','Shylet','12:00:00','19:40:00',19912791),(718,'PARABAT Express','Shylet','Dhaka','08:40:00','16:00:00',19912791),(719,'Paharika Express','Shylet','Chittagong','10:15:00','19:45:00',19912791),(720,'Paharika Express','Chittagong','Shylet','09:00:00','17:50:00',19912791),(723,'Uddayan Express','Chittagong','Shylet','21:45:00','06:20:00',19912791),(724,'Uddayan Express','Shylet','Chittagong','21:20:00','04:50:00',19912791),(725,'Sundarban express','khulna','Dhaka','20:30:00','05:40:00',19912791),(726,'Sundarban express','dhaka','khulna','06:20:00','15:40:00',19912791),(735,'Tista Express','Dewangong','Dhaka','07:30:00','12:40:00',19912791),(736,NULL,'Dhaka','Dewangong','20:10:00','15:30:00',19912791),(739,'Upaban Express','Dhaka','Shylet','21:50:00','05:20:00',19912791),(740,'Upaban Express','Shylet','Dhaka','22:00:00','05:10:00',19912791),(753,'Silkcity express','Dhaka','Rajshai','14:40:00','20:50:00',19912791),(754,'Silkcity express','Rajshai','Dhaka','07:40:00','13:50:00',19912791),(759,'Padma Express','Dhaka','Rajshai','23:40:00','04:50:00',19912791),(760,'Padma Express','Rajshai','Dhaka','16:40:00','21:50:00',19912791),(761,'Sagardari Express','Khulna','Rajshai','15:00:00','21:10:00',19912791),(762,'Sagardari Express','Rajshai','Khulna','06:40:00','12:45:00',19912791),(763,'Chittra Express','dhaka','khulna','08:20:00','18:40:00',19912791),(764,'Chittra Express','khulna','dhaka','19:20:00','03:40:00',19912791),(765,'Dhaka mail','Chittagong','Dhaka','22:30:00','06:50:00',19912791),(766,'Chittagong mail','Dhaka','Chittagong','22:30:00','06:50:00',19912791),(767,'Dhaka express','Dhaka','Nokhali','22:30:00','06:50:00',19912791),(768,'Titas commuteR','Akhaura','Dhaka','22:30:00','06:50:00',19912791),(769,'Dhumketue Express','Rajshai','Dhaka','16:40:00','21:50:00',19912791),(770,'Dhumketue Express','Dhaka','Rajshai','06:00:00','11:50:00',19912791),(771,'Rangpur Express','Rangpur','Dhaka','20:00:00','06:05:00',19912791),(772,'Rangpur Express','Dhaka','Rangpur','09:00:00','19:00:00',19912791),(773,'Kapotaskh express','Rajshai','khulna','07:00:00','12:10:00',19912791),(774,'Kapotaskh express','khulna','Rajshai','13:00:00','07:10:00',19912791),(775,'Sirajgonj Express','Sirajgonj','Dhaka','06:20:00','10:40:00',19912791),(776,'Sirajgonj Express','Dhaka','Sirajgonj','17:20:00','21:20:00',19912791),(777,'Haor Express','Dhaka','Mohangonj','23:00:00','05:00:00',19912791),(778,'Haor Express','Mohangonj','Dhaka','08:30:00','14:00:00',19912791),(785,'Bijoy Express','Chittagong','Mymensingh','07:30:00','15:00:00',19912791),(786,'Bijoy Express','Mymensingh','Chittagong','20:30:00','04:50:00',19912791),(3107,'Moitree Express','Dhaka','Kolkata','08:30:00','16:50:00',19912791),(3108,'Moitree Express','Kolkata','Dhaka','07:30:00','16:50:00',19912791),(3129,'Bandhan Express ','Kolkata','Khulna','07:30:00','12:50:00',19912791),(3130,'Bandhan Express ','Khulna','Kolkata','13:30:00','18:50:00',19912791);
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-01 18:51:25
