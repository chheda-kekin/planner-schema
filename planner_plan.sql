-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: planner
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` bigint NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'Completing Planner app',1697092150223,1697092150223),(2,'Completing Planner app backend',1697092418284,1697092418284),(3,'Enquiring about NPS',1697634809519,1697634809519),(4,'Doing PF Transfer',1697635046213,1697635046213),(5,'Doing PF Transfer!!',1697699612458,1697699612458),(6,'Doing PF Transfer',1699262754245,1699262754245),(7,'Doing PF Transfer',1699262759772,1699262759772),(8,'Doing PF Transfer',1699263282046,1699263282046),(9,'Doing PF Transfer',1699263369736,1699263369736),(10,'Doing PF Transfer',1699263932787,1699263932787),(11,'Doing PF Transfer',1699263943456,1699263943456),(12,'Doing PF Transfer',1699264381699,1699264381699),(13,'Doing PF Transfer',1699264441089,1699264441089),(14,'Doing PF Transfer',1699264512231,1699264512231),(15,'Migrating MySQL schema and taking backup of data',1699264565231,1699264565231),(16,'Migrating MySQL schema and taking backup of data',1699264570653,1699264570653),(17,'Migrating mysql schema and taking backup of data',1699264819127,1699264819127),(18,'Migrating mysql schema and taking backup of data',1699264941360,1699264941360),(19,'Migrating mysql schema and taking backup of data',1699265442496,1699265442496),(20,'Migrating mysql schema and taking backup of data',1699265527055,1699265527055),(21,'Migrating mysql schema and taking backup of data',1699265573862,1699265573862),(22,'Migrating mysql schema and taking backup of data',1699271286960,1699271286960),(23,'Migrating mysql schema and taking backup of data',1699271319401,1699271319401),(24,'Migrating mysql schema and taking backup of data',1699271320848,1699271320848),(25,'Migrating mysql schema and taking backup of data',1699271420226,1699271420226),(26,'Migrating mysql schema and taking backup of data',1699271423066,1699271423066),(27,'Migrating mysql schema and taking backup of data',1699271614295,1699271614295),(28,'Migrating mysql schema and taking backup of data',1699271706013,1699271706013),(29,'Migrating mysql schema and taking backup of data',1699271756838,1699271756838),(30,'Migrating mysql schema and taking backup of data',1699273109810,1699273109810),(31,'Migrating mysql schema and taking backup of data',1699273431567,1699273431567);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 11:04:52
