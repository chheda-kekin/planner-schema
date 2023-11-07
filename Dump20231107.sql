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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` bigint NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_member_id` (`id`),
  UNIQUE KEY `unique_member_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Kekin','Chheda','kekin.chheda@hotmail.com','male','+91-9167683083','2023-01-10','',1697438057108,1697438057108),(2,'Dimple','Chheda','dimple.chheda@hgmail.com','female','+91-9320120296','1989-10-22','',1697438057108,1697438057108),(3,'Maor','Sharett','m.sharett@gmail.com','female','+91-9920129749','1963-07-15','',1697448603358,1697448603358),(4,'Valentina','Lovric','valentina.lovric2023@gmail.com','female','+91-7506396396','1987-04-01','',1697448889220,1697448889220),(5,'Alex','Barn','alex.barn2@gmail.com','male','+91-9920129746','1960-11-20','',1697448889220,1697448889220),(6,'Christian','Bergqvist','chris.berg@gmail.com','male','+91-8104690962','1960-11-20','',1697448889220,1697448889220);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-11-07 15:53:04
