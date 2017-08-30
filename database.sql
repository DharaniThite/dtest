-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: dbtestinstance.cslljo3f2bfg.us-east-2.rds.amazonaws.com    Database: Database
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `departmentsinfo`
--

DROP TABLE IF EXISTS `departmentsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `departmentsinfo` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'give the ID for department',
  `dept_name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1 COMMENT='Information stored about departments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentsinfo`
--

LOCK TABLES `departmentsinfo` WRITE;
/*!40000 ALTER TABLE `departmentsinfo` DISABLE KEYS */;
INSERT INTO `departmentsinfo` VALUES (101,'Software','Pune'),(102,'Hardware','Mumbai'),(103,'Production','Nashik'),(104,'Testing','Aurangabad'),(105,'R&D','Nagpur'),(106,'Enggineering','Latur'),(107,'Mechanical','Thane'),(108,'Electronics','Sangvi'),(109,'Telecommunication','Mumbai'),(110,'IT','Banglore'),(111,'Electrical','Chennai'),(112,'Production','Delhi'),(113,'Automation Testing','Pune'),(114,'R&D','Nagpur'),(115,'Electronics','Satara'),(116,'Mechanical','Nanded'),(117,'IT','Latur'),(118,'Computer','Pune'),(119,'Software','Mumbai'),(120,'Hardware','Thane'),(121,'Computer','Barshi'),(122,'Production','Solapur'),(123,'Testing','Aurangabad'),(124,'R&D','Nashik'),(125,'Development','Pune'),(126,'Testing','Mumbai'),(127,'Software','Chinchwad'),(128,'Production','Latur'),(129,'Software','Mumbai'),(130,'Hardware','Nashik'),(131,'Development','Barshi'),(132,'Hardware','Thane'),(133,'Testing','Pune'),(134,'Engineering','Latur'),(135,'Production','Mumbai'),(136,'Management','Satara'),(137,'Design','Solapur'),(138,'Software','Delhi'),(139,'Fashion','Mumbai'),(140,'Automation Testing','Nanded'),(141,'Software','Aurangabad'),(142,'Development','Sangali'),(143,'Software','Chennai'),(144,'Management','Hydrabad'),(145,'Marketting','Pune'),(146,'Telecommunication','Banglore'),(147,'IT','Delhi'),(148,'Electronics','Chennai'),(149,'Mechanical','Nashik'),(150,'R&D','Nagpur'),(151,'Design','Barshi'),(152,'Software','Nagar'),(153,'Maintainance','Aurangabad'),(154,'Software','Pune'),(155,'Design','Barshi'),(156,'Marketting','Nanded'),(157,'Production','Mumbai'),(158,'Design','Pune'),(159,'Management','Delhi'),(160,'Software','Thane'),(161,'Development','Solapur'),(162,'Hardware','Latur'),(163,'Management','Pune'),(164,'Testing','Nagpur'),(165,'R&D','Banglore'),(166,'Automation Testing','Chennai'),(167,'Production','Delhi'),(168,'Marketting','Pune'),(169,'Design','Mumbai'),(170,'Maintainance','Latur');
/*!40000 ALTER TABLE `departmentsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeesinfo`
--

DROP TABLE IF EXISTS `employeesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `employeesinfo` (
  `idEmployeeInfo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID value should be unique and not null',
  `Emp_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL COMMENT 'provide the department id which should match with dept_id in Departments table.',
  PRIMARY KEY (`idEmployeeInfo`),
  KEY `dept_id_idx` (`dept_id`),
  CONSTRAINT `dept_id` FOREIGN KEY (`dept_id`) REFERENCES `departmentsinfo` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 COMMENT='Information stored about all employees';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeesinfo`
--

LOCK TABLES `employeesinfo` WRITE;
/*!40000 ALTER TABLE `employeesinfo` DISABLE KEYS */;
INSERT INTO `employeesinfo` VALUES (1,'Raj','Deshmukh',25,104),(2,'Sheetal','Shinde',22,103),(3,'Ravi','SUryavanshi',28,101),(4,'Dhanush','Patil',33,105),(5,'Radha','Kale',30,104),(6,'Ashwini','More',26,102),(7,'Vimal','kadam',23,128),(8,'Amit','Gore',27,120),(9,'Rohan','Deshpande',29,117),(10,'Vaishali','Patil',33,126),(11,'Suresh','Shete',31,130),(12,'Naren','Kore',40,127),(13,'Ankita','Karmarkar',33,124),(14,'Sushant ','Pawar',30,122),(15,'Nita','Bhosale',37,129),(16,'Vandan','Suryavanshi',28,118),(17,'Ravi','Patil',29,115),(18,'Karan','Wahi',31,114),(19,'Ritvik','Dudhe',32,121),(20,'Prasad','Sakhre',23,126),(21,'Prajkta','Kale',26,123),(22,'Shradhha','Shete',34,117),(23,'Kiran','Mane',20,116),(24,'Dharati','Bhosale',24,125),(25,'Rajesh','Rajure',38,114),(26,'Swati','Kulkarni',40,112),(27,'Priyanka','Kumbhar',37,116),(28,'Komal','Owal',23,110),(29,'Nachiket','Kale',27,118),(30,'Shubham','Rokde',25,120),(31,'Dhiraj','Mane',25,122),(32,'Prasad','Dongre',26,127),(33,'Rani','Navale',24,129),(34,'Rajan','Patel',27,130),(35,'Tejal','Patil',26,117),(36,'Suhas','Bhosale',32,130),(37,'Surendra','Mane',38,128),(38,'Dhanraj','Shete',42,126),(39,'Ajit','Pawar',44,130),(40,'Sayali','Survanshi',23,123),(41,'Rupam','Kumari',27,168),(42,'Disha','Patani',28,138),(43,'Kriti','Sawata',30,130),(44,'Rohini','Dhawal',32,162),(45,'Isha','Dalvi',20,158),(46,'Manasi','Deshmukh',30,159),(47,'Vikrant','Mane',32,152),(48,'Sushant','Kadam',39,142),(49,'Maria','Sane',45,129),(50,'Maruti','Kadam',30,170),(51,'Dipa','Mane',22,169),(52,'Megha','Sane',38,152),(53,'Suvarna','Shahane',34,145),(54,'Sanket','Suryavanshi',30,167),(55,'Devansh','Mane',40,159),(56,'Suryakant','Gore',30,153),(57,'Surya','Sonavane',46,158),(58,'Purva','Phadke',24,155),(59,'Tejasvi','Patil',27,149),(60,'Prasad','Pathak',30,147),(61,'Riddhi','Sarvde',40,143),(62,'Pooja','Deshmukh',23,162),(63,'Sachin','Lomte',30,143),(64,'Rutuja','Mane',25,163),(65,'Shravan','Sane',50,149),(66,'Gragi','Sonavane',25,163),(67,'Gopal','Kale',38,169),(68,'Sanvi','Bhosale',24,159),(69,'Irana','Bose',30,148),(70,'Ishika','Dixit',31,158);
/*!40000 ALTER TABLE `employeesinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-23 21:34:30
