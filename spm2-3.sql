-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: spm2
-- ------------------------------------------------------
-- Server version	8.0.15-commercial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_question` int(11) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `date_answer` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_question` (`id_question`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_student` int(11) DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `id_test` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_student` (`id_student`),
  KEY `id_test_idx` (`id_test`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`),
  CONSTRAINT `id_test` FOREIGN KEY (`id_test`) REFERENCES `test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `groupstudent`
--

DROP TABLE IF EXISTS `groupstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `groupstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  `leader` int(11) DEFAULT NULL,
  `student1` int(11) DEFAULT NULL,
  `student2` int(11) DEFAULT NULL,
  `student3` int(11) DEFAULT NULL,
  `student4` int(11) DEFAULT NULL,
  `student5` int(11) DEFAULT NULL,
  `professor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `Pname` varchar(50) DEFAULT NULL,
  `Pdescription` varchar(255) DEFAULT NULL,
  `Ptechnologies` varchar(100) DEFAULT NULL,
  `achivement` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `group_register` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_test` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answerTrue` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_test` (`id_test`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`id_test`) REFERENCES `test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Rname` varchar(50) DEFAULT NULL,
  `Rdescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `Sname` varchar(50) DEFAULT NULL,
  `Sdescription` varchar(255) DEFAULT NULL,
  `Stechnologies` varchar(100) DEFAULT NULL,
  `student_code` varchar(8) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_group` (`id_group`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`id_group`) REFERENCES `groupstudent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tname` varchar(100) DEFAULT NULL,
  `during` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tname` varchar(100) DEFAULT NULL,
  `Tdescription` longtext,
  `id_professor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_professor` (`id_professor`),
  CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userdetail` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birth_of_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `userdetail_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 10:27:26
