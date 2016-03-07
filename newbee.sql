-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: newbee
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.10-MariaDB

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
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `userid` varchar(45) DEFAULT NULL,
  `user2` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES ('rahul','viki846'),('viki846','rahul'),('rahul','rags'),('fucker','fucker'),('fucker','fucker'),('user1','user2'),('user2','user1'),('user2','null'),('rahul','guvi'),('nirai','null'),('null','nirai'),('rahul','nivea'),('nivea','rahul'),('rahul','nirai'),('nirai','rahul'),('rahul','ishu'),('ishu','rahul');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newfriend`
--

DROP TABLE IF EXISTS `newfriend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newfriend` (
  `user1` varchar(45) DEFAULT NULL,
  `user2` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newfriend`
--

LOCK TABLES `newfriend` WRITE;
/*!40000 ALTER TABLE `newfriend` DISABLE KEYS */;
INSERT INTO `newfriend` VALUES ('rags','null'),('fucker','viki846'),('fucker','rahul'),('yasar','yasar'),('nirai','Ishu');
/*!40000 ALTER TABLE `newfriend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `userid` varchar(45) NOT NULL,
  `post` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('rahul','hi hello'),('rahul','post 1'),('viki846','I love this social networking site'),('viki846','I am in love with Rahul soms'),('viki846','hai newbee, you rock'),('rags','ohlalala'),('fucker','hey u asshole'),('fucker','this is gonna be a severe DDOS attack Rahul\r\n'),('fucker','Society'),('rags','my name is ragini'),('rags','my last namne is priya'),('rahul','hai'),('user1','i am user1'),('yasar','hello'),('user1','i am user1.'),('user1','i am user1/'),('user2','I am user 2\r\n'),('user2','user 2 is my name'),('guvi','One day Hackathon'),('rahul','cut your hair Rahul'),('nivea','Hi Rahul anna');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `userid` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES ('aravind','b691c96a0e0e2674df4943221d5b4767','aravind','male','4564564569','jasbashj@dsjb.cj'),('guvi','098f6bcd4621d373cade4e832627b4f6','Bala','male','9849399999','hfdshf@fhksj.com'),('Ishu','c1ebb4933e06ce5617483f665e26627c','Ishwarya cb','female','9894296696','balakumarishwarya@gmail.com'),('nirai','edfb10bb226eac0d88afb7e58592a4b2','Niraimathy mohan','female','8220055969','nirai.okpet@gmail.com'),('nivea','d80951fbc136e188e4d7045ebb8bc603','nivedha','female','8056790935','geninivea96@gmail.com'),('Rags','17c2f39e40b0ab305fbebbd8a434f250','Rags','female','9999999999','Rags@gmail.com'),('rahul','439ed537979d8e831561964dbbbd7413','Rahul','male','8489888434','ssrahul96@gmail.com'),('Testing','68eacb97d86f0c4621fa2b0e17cabd8c','Test','male','9677261710','ramcse1990@gmail.com'),('viki846','1a1dc91c907325c69271ddf0c944bc72','Sai','male','9941300088','mrsaivignesvar@gmail.com'),('yasar','71e5f4259ec4fdae8481a8f8b9ff8b77','yasar','male','7777777777','yasar.handsome@gmail.com');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-07  5:56:15
