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
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plan_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Not Started','In Progress','Completed') NOT NULL DEFAULT 'Not Started',
  `priority` enum('Urgent','Important','Medium','Low') NOT NULL DEFAULT 'Low',
  `start` bigint NOT NULL,
  `due` bigint NOT NULL,
  `created` bigint NOT NULL,
  `updated` bigint NOT NULL,
  `notes` text,
  `members` json NOT NULL,
  `comments` json DEFAULT NULL,
  `labels` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_tsk_id` (`id`),
  UNIQUE KEY `unique_tsk_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,2,'Learning & integrating GraphQL with React','Not Started','Low',1697435359525,1698172200000,1697435359525,1697435359525,'Learning GraphQL to integrate planner app\'s backend with frontend. In order to make planner app fully functional','[1, 2]','[{\"member\": 2, \"comment\": \"Started learning GraphQL any course you can suggest?\"}, {\"member\": 1, \"comment\": \"Search on YouTube or Udemy you may find helpful tutorials.\"}]','[{\"color\": \"Red\", \"value\": \"Important\"}, {\"color\": \"Aqua\", \"value\": \"Critical\"}]'),(2,1,'Creating sign up & sig in functionality UI','Not Started','Low',1698777000000,1699986600000,1697435359525,1697435359525,'Creating planner app\'s sign in as well as sign up UI along with complete form handling & validation.','[1, 3]','[{\"member\": 3, \"comment\": \"Basically implementing OAuth2 mechanism.\"}, {\"member\": 3, \"comment\": \"Needs to create member end point also\"}]','[{\"color\": \"Yellow\", \"value\": \"Pending\"}]'),(5,1,'Rectifying UI of card for displaying tasks','Not Started','Low',1698051898959,1697814009647,1698051898959,1698051898959,'','[1, 3]',NULL,NULL),(10,1,'Adding Sign In Sign Up UI to the planner app','In Progress','Urgent',1698058536264,1704825000000,1698053186158,1699014044613,'1 Adding Sign In Sign Up modal 2 Adding Sign In Sign Up as well as Sign Out button','[3, 4]','[{\"member\": \"3\", \"comment\": \"Make use of material UI to add modal\"}, {\"member\": \"4\", \"comment\": \"Need to adjust UI for side navigation bar\"}]','[{\"color\": \"Green\", \"value\": \"UI\"}, {\"color\": \"Red\", \"value\": \"Imp\"}]'),(11,1,'Creating additional actions for deleting the task','Not Started','Low',1699641000000,1699986600000,1699015708335,1699015708335,'','[3, 4]',NULL,NULL);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 11:04:50
