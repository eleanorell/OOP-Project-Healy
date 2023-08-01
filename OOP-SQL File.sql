-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: healydb
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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `comment_entry` varchar(150) NOT NULL,
  `user_id` int NOT NULL,
  `forum_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `forum_id` (`forum_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`forum_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Coba buat lebih pede di dalam kehidupan sehari-hari',2,1),(2,'Ingat di hidup ini, seseorang akan datang dan pergi.',1,2),(5,'Makasih',1,1);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counseling`
--

DROP TABLE IF EXISTS `counseling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counseling` (
  `counseling_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `problem` varchar(250) NOT NULL,
  `solution` varchar(250) DEFAULT NULL,
  `user_id` int NOT NULL,
  `doctor_id` int DEFAULT NULL,
  PRIMARY KEY (`counseling_id`),
  KEY `user_id` (`user_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `counseling_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `counseling_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counseling`
--

LOCK TABLES `counseling` WRITE;
/*!40000 ALTER TABLE `counseling` DISABLE KEYS */;
INSERT INTO `counseling` VALUES (1,'Konsumsi Antidepresan ','selamat pagi dok, saya baru 2-3 hari ini diberi \nobat anti depresan dan obat tidur, kalxetin \ndan bestalin. tapi kadang di pagi hari saya \nsuka minum kopi dok, sedangkan saya juga \nharus minum kalxetin. apa boleh ya dok?',NULL,1,NULL),(2,'Sering Merasa Sedih Tbtb','Umur saya 19 tahun dan perasaan saya \nseringkali tidak enak dan ingin menangis \nterus. Saya mudah sekali menangis, hingga \norang tua saya sering memarahi saya karena \nsaya sering menangis..kira-kira penyebabnya \napa ya dok?','menangis merupakan respon alami tubuh \nseseorang saat ada suatu kondisi yang \nmembuatnya terharu, menyakitkan atau \nkecewa jadi adalah hal wajar selama \nmenangis itu ada penyebabnya. ',1,1),(3,'Trauma Masa Kecil Tentang Bully','Sore dok, saya mau nanya bagaimana cara \nmenghilangkan trauma di masa kecil \ntentang dibully sama teman sebaya, \nbagaimana cara supaya masalah tragis itu \ntidak pernah terulang lagi sehingga itu tidak \nakan menimbulkan trauma lagi?',NULL,2,NULL),(5,'Sedih','kenapa saya sering sedih','jangan sedih',1,1);
/*!40000 ALTER TABLE `counseling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diary` (
  `diary_id` int NOT NULL AUTO_INCREMENT,
  `diary_title` varchar(45) NOT NULL,
  `diary_entry` varchar(300) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`diary_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `diary_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (1,'16/1/23 - Insecure','dear diary, hari ini... ntah kenapa saya merasa \nsangat insecure. mungkin gara-gara masa \nlalu kali yah? bahkan saya selalu overthinking \npada masalah yang mungkin tidak akan \nterjadi. tp saya selalu berusaha untuk tetap \nberpikir positif dalam menjalani hari ku inii.',2),(2,'TONO CEPU MSK NERAKA','selamat malam diary ku, jadi....hari ini saya \nkesel bgt sama si Ani :\"\"(. Tau ga siehhh... \nDIA CEPUIN AKU KE SI TONO. BETE KAN?? \nSelama ini gw selalu jaga rahasia dia kok! \nTP DIA JAHAT YA CEPUIN GW, PADAHAL \nDIA TUH SAHABAT GW DARI KECIL!! Menurut \nkamu.. aku harus apa ya..??',1),(4,'Cerita','saya hari ini sedih',1);
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `name_doctor` varchar(50) NOT NULL,
  `email_doctor` varchar(45) NOT NULL,
  `pw_doctor` varchar(20) NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Dr. Eleanor','doctor@gmail.com','pass');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `forum_id` int NOT NULL AUTO_INCREMENT,
  `thread_title` varchar(45) NOT NULL,
  `thread_entry` varchar(250) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`forum_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,'Masalah Insecure','Saya merasa hidup saya hambar dan penuh \npenderitaan, karena saya tidak percaya diri \ndan kesepian. Saya sangat insecure dengan \ndiri saya akibat bullying dimasa lalu,saya \nselalu overthinking dan menderita setiap hari.\nApa yang harus saya lakukan?',1),(2,'Partner Punya Trust Issue','Aku punya pasangan yg masih punya trust \nissue sm masalalunya, kita ldr, dan dia \nanaknya overthingking + insecure an \nparah, disini aku ga ngapa2in, ga ngelakuin \nhal2 aneh, ga macem2 juga plissss sarannyaa?',2);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `pw_user` varchar(20) NOT NULL,
  `admin_status` tinyint NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mahesa','mahesainsan@gmail.com','pass',0),(2,'Kenrick','Kenrick@gmail.com','pass',0),(3,'no1hater','hater@gmail.com','pass',0),(4,'Enjel','Admin@gmail.com','pass',1),(6,'patient','patient@gmail.com','pass',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 12:29:15
