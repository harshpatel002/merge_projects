-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: sign_in_up
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `activation_data` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'harsh','h@gmail.com','$2a$10$XvbmQHVA8kRDK4ig6HVXf.vsXNewr33Th4Ac1KTdH0G2FxzvJi5OO',''),(2,'Bharti','bharti@gmail.com','$2a$10$y.fJoTTpMfLYCnr/VvlwKOUZ3xoR3OHGTlZ52/qt1awJXvd9zMh.a',''),(3,'harmil','harmil@gmail.com','$2a$10$CJc.i.OcDA5RhrWxXJctCeS5Msu4uphZWdYkFJklPuRVFk7CdKBna',''),(4,'om','om@gmail.com','$2a$10$DsbMVTqb../ymIVxsPpPzu5dLXn0MZzVE6NPdTSWPG.7Ak38QCQXW',''),(5,'raj','raj1@gmail.com','$2a$10$7BRG4CffjaAnGAyO9DVvgOq/GlJwzNTVctpZ8FM7TZiHaDl0kV7r6','1'),(6,'Vijay','vijay@gmail.com','$2a$10$iN5wtZluB1AinbdRwReaaeJHPx.EB2piB1NX1UX/WC0P.cOfXbj7q',''),(7,'isha','isha@gmail.com','$2a$10$czaI6PolC4tfSzzgHDlRrOIgQWTSYbrgBY.Lp2D3HmQejXftZ0Gwa',''),(8,'milan','milan@gmail.com','$2a$10$N2S2iDVQ/0fvGmlowAl4Qelo68TMwmB6.QcDB839xqLn7SV72vu5W',''),(9,'jaini','jaini@gmail.com','$2a$10$Qrk4STcldA84FGoYGJsNRORY762d65//o5iqeKZNTNJN1qBKMhiCK',''),(10,'jaini','jaini@gmail.com','$2a$10$Vi9km6y8jfISU6dnGkZY6OsB/jG3CaRnWUyYWxU7MpZ7o3enuHnxO',''),(11,'jaini','jaini@gmail.com','$2a$10$T0cG3g3nb8CwGmGVkpbHHev8F0mDfesmhtaAvI/V6TmcKJlBaWPIy',''),(12,'vivek','vivek@gmail.com','$2a$10$5twKu9.v/rmvgdBkUbjZY.bmdzZ5DPCO8iJvrg0gchZE8z42mrdxi',''),(13,'vivek1','vivek1@gmail.com','$2a$10$1C.dPojIRtc6jmBKUzNtg.7rBIiVo4BgLI20Uhc2Clj.oL1qbSFka',''),(14,'vivek1','vivek1@gmail.com','$2a$10$IjuNghYpcRSIq0jWudVfdO.X2tm9F2UPgOlKRCHciLzFE3Z67LXsG',''),(15,'vivek1','vivek1@gmail.com','$2a$10$NPJalq0n6P4t4/DHBfbVw.9SUQmflK4d76Mzizt7hgOfFXqZCsEF2',''),(16,'vivek1','vivek1@gmail.com','$2a$10$8vrITe.4VGw8UHyaJCDSM.QdUgzcPub1sby8GP00hRtCtb3I.GXp6',''),(17,'vivek1','vivek1@gmail.com','$2a$10$a9APL9Ji74n3Z84anUnjjux7CI4q9mZbnV/MVFb7grMzR0NtQhNC6',''),(18,'priya','priya@gmail.com','$2a$10$zkIpOgRYBKtAoGm/iVXKI.RabWCeeqavV.SyJas5cmmomm6TtNox6',''),(19,'rajesh','rajesh@gmail.com','$2a$10$M.eBYtKycu2zkYcjNjLOvejcnJckIZUSHuTHZam.sG4Mjzbkmu9ze',''),(20,'ompatel','ompatel@gmail.com','$2a$10$4c2WKnLSnMA7ImUNxss6G.CyQu7RzlNyadyz75rSt/TAJ292sSvH.',''),(21,'ompatel123','ompatel123@gmail.com','$2a$10$2bMT6gjR9NT1.T7BxAe1POgS1kXJjPIIlqfXbxQloFJz6y.XwYcM2',''),(22,'ompatel123','ompatel123@gmail.com','$2a$10$4ceAfuveZ2Hf/LoQIKjSfue2FJQJPzxIC6gAsCx2b2sv4Yq./1fJu',''),(23,'ompatel123','ompatel123@gmail.com','$2a$10$YghU0sG9NqpAaGUqvU0/4Ojg4rz2Y9vtu6fURJZsP0f55jc0YCoRe',''),(24,'ompatel123','ompatel123@gmail.com','$2a$10$S4jH1EOET2nVjF6fd6m7qeCcQBEb5kxDhRd0rqktnPr6OKl5FPBF6',''),(25,'h1','h1@gmail.com','$2a$10$2uo6oQNDDIg5ey6VpBBqgu14Lwq8O4aeoaV0FHS9k9Wbzo5Hki54i',''),(26,'ravi','ravi@gmail.com','$2a$10$K4WR0HnlRarkbitmqduztufq/RS8ibAWrAKdEmuHUbiG6zkeHND12',''),(27,'hp12345689','hp123@gmail.com','$2a$10$7T/z.s7n6Xmg.7rKgQuhq.DbmNlaYd9ee5I0fqvIqn9gOjpFsa64u',''),(28,'wesrdt','h@gmail.com','$2a$10$wxKuQKWlhAZnmhWWaraQvO9xkexfNMXN44wdQ002QWROnylChY5.K',''),(29,'wesrdt','h@gmail.com','$2a$10$KdzN5CGlu0yV6OToDkUBXeS17s9DhaWM9l8fVcnAUj25PoYap14PK',''),(30,'','','$2a$10$1LrCH9Gen2U/0bnvCyt6f.piucZCXRIC2CfkNIzgqrw/TA1D/ZlZK',''),(31,'','','$2a$10$x8J0OGoxgcVM07ygKrqG5.ReiuIjx76yxPX8M8Ij0PYyQVU/HSEgu',''),(32,'harmil','harmil@gmail.com','$2a$10$44wrHJJK331ONmKcoLEpZuRLKkN4um9YTxYkeMzXhmx.fpvZa1nXa',''),(33,'jay','jay@gmail.com','$2a$10$dOzzsCvWdAEh6GfUzKRae.5LGftmRR64q/wvFndjKTUvSeJWKjJhe','0'),(34,'jaini123','jaini123@gmail.com','$2a$10$0QnuLyvMtXP3HGCwLRUTfOxtyR6XrwTjxWwr8PiQ8xT8q1W0uah7G','0'),(35,'manthan123','manathan@gmail.com','$2a$10$KDHXgdm4q73LiEjzCVrs4uJfoLfdNYPsFWeAPzH/cYcVoR0Jf4DHa','0'),(36,'nisarg123','nisarg123@gmail.com','$2a$10$vCm4IuHlud07S9Qsh4Wp1O/cCuzTioqcBvEAmkmVQs/u2Ai5PNlPG','0'),(37,'meet123','meet123@gmail.com','$2a$10$hwpAaWLNF7FHXMZYkEXenOL2trjXAaNOScHy.Ax0NhptcrdBSh3g6','1'),(38,'sumeet123','sumeet123@gmail.com','$2a$10$9GJsEoE6cgoYkjVt1PKSTuqkIvS5V08dQX7L2nZpVrOe2h8NCJuIi','1'),(39,'naresh123','naresh123@gmail.com','$2a$10$rcVDivpdBk3rMBN5e9AYGOOPQv6Cy6RvP.LLKKZTaOXCbsWHux40u','1'),(40,'naresh456','naresh456@gmail.com','$2a$10$DVSfSD9OHoLT8AmhxRk7cOeJuPeWO8L4YouJ6xmPDx1zULV5vb.1S','1'),(41,'sumeet456','sumeet456@gmail.com','$2a$10$z8Dp6Crh52OFz7/0VP952euncbpxM0ok7O1wZ2.c0PWg2nIQ5Lope','0'),(42,'sumeet4567','sumeet4567@gmail.com','$2a$10$/UuoArlRiWvwpYd.cjYIA.qyR8486FpAswhHr7ZVWRUnI3EMJqfAO','0'),(43,'sumeet4567','sumeet4567@gmail.com','$2a$10$uIP.S5vQVtzLgO/8iAWdLuv2CDkVItmZDXdoscwEuiydl4Fil7I0y','0'),(44,'sumeet4567','sumeet4567@gmail.com','$2a$10$A3LVvHNr4nAFRDI2mQxBi.6mgIP9pz66Ts84ixeTfz131DU3/4KiS','0'),(45,'sumeet45678','sumeet45678@gmail.com','$2a$10$E/F1hZUPoEUvYPJoQZGD2OKhbS3jkiNSmi0REVQGRuFk/Vbju5e16','0'),(46,'sumeet456789','sumeet456789@gmail.com','$2a$10$CegY6K9WuyeTBHroQDdxSe6FPx9iTR1KGieUf6Vx2hWZUKliEhdmC','1'),(47,'abc1567','abc1567@gmail.com','$2a$10$zXoO85H9qLpBTa5R3EDy9.1Oe24xP.wlXLoELunqW2W/Pw1BssAgS','0'),(48,'abc15678','abc15678@gmail.com','$2a$10$pPftDCw4n5e6qWubpCQMFOZ7d7ciaM6/A3P2d.s7Uzo0jKK6z/4Iu','0'),(49,'h123h1234','h123h1234@gmail.com','$2a$10$5PpWHyBS4v4Ycq.OaWCMfOnlulUSBtm5KKlC8ImeJGl7ayaUmihTC','0'),(50,'harshpatel145','harshpatel145@gmail.com','$2a$10$8OpEwz9PUp04z2LF73T5h.TB3iAJoTHk.04F.f5PuMh3yWcdl42uO','0'),(51,'harshpatel145','harshpatel1456@gmail.com','$2a$10$.13y0ujpgQbMhx7xsKDKCusmsXAMqLR3lNyoBWEAdDUHheX8fIqjy','0'),(52,'harshpatel14555','harshpatel145556','$2a$10$ALY1RmIMuyPjHjyiUad.cORMKqbrFfjF7FnBAfnmEFGREfwuEdgS6','1'),(53,'raj','raj@gmail.com','$2a$10$EwfPiYlRKBwtXi0GvQv13OJb51/M7Bygos2CQUHSeQHZEzf8fet.O','1'),(54,'harmil145689','harmil145689@gmail.com','$2a$10$DGf6fXTzEnNBhGssSO2yweD.fxg7pG1OK5doPiCM0XqqLzW1GQ.Y6','1'),(55,'dhruti','dhruti@gmail.com','$2a$10$b96JMtEzyym/FM1HbInHgeg/5D8wBgyBqwyXphiZ/..twv/dhl8Li','1'),(56,'bhavesh','bhavesh123@gmail.com','$2a$10$i/L.jbacN3KjSuMej4NymuWTxDYStK9paJpFVq9sKjkXmZ5gWVU1a','1'),(57,'bhavin','bhavin@gmail.com','$2a$10$GFPtWAxeHUqWRjaYerwITeMioWTLt4.le62VMjZbPmpkbF9XIJ2f2','1');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10  9:25:28
