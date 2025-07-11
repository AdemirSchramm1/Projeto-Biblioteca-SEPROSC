-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: db_biblioteca
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `tb_emprestimo`
--

DROP TABLE IF EXISTS `tb_emprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_emprestimo` (
  `cpf_usuario` varchar(11) NOT NULL,
  `isbn_livro` int NOT NULL,
  `data_alugado` date DEFAULT NULL,
  `data_devolver` date DEFAULT NULL,
  PRIMARY KEY (`cpf_usuario`,`isbn_livro`),
  KEY `isbn_livro` (`isbn_livro`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`cpf_usuario`) REFERENCES `tb_usuario` (`cpf_usuario`),
  CONSTRAINT `tb_emprestimo_ibfk_2` FOREIGN KEY (`isbn_livro`) REFERENCES `tb_livro` (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_emprestimo`
--

LOCK TABLES `tb_emprestimo` WRITE;
/*!40000 ALTER TABLE `tb_emprestimo` DISABLE KEYS */;
INSERT INTO `tb_emprestimo` VALUES ('09710048970',1,'2025-07-07','2025-07-07'),('09710048970',2,'2025-07-07','2025-07-07'),('09710048970',3,'2025-07-07','2025-07-07');
/*!40000 ALTER TABLE `tb_emprestimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `senha` (`senha`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
INSERT INTO `tb_funcionario` VALUES (1,'Ademir','123'),(2,'Maria dos Santos','maria2025'),(3,'Carlos Almeida','carlos!@#'),(4,'Ana Beatriz','anaB2024'),(5,'Lucas Silva','lucas789'),(6,'Ademir','123456');
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_livro`
--

DROP TABLE IF EXISTS `tb_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_livro` (
  `isbn` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `data_lancamento` varchar(45) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `alugado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_livro`
--

LOCK TABLES `tb_livro` WRITE;
/*!40000 ALTER TABLE `tb_livro` DISABLE KEYS */;
INSERT INTO `tb_livro` VALUES (1,'O Senhor dos Anéis','1954-07-29','J.R.R. Tolkien',1),(2,'Dom Quixote','1605-01-16','Miguel de Cervantes',1),(3,'1984','1949-06-08','George Orwell',1),(4,'O Hobbit','1937-09-21','J.R.R. Tolkien',0),(5,'A Revolução dos Bichos','1945-08-17','George Orwell',0),(6,'Orgulho e Preconceito','1813-01-28','Jane Austen',0),(7,'Cem Anos de Solidão','1967-05-30','Gabriel García Márquez',0),(8,'Harry Potter e a Pedra Filosofal','1997-06-26','J.K. Rowling',0),(9,'A Menina que Roubava Livros','2005-03-14','Markus Zusak',0),(10,'O Código Da Vinci','2003-03-18','Dan Brown',0),(11,'Inferno','2013-05-14','Dan Brown',0),(12,'Jogos Vorazes','2008-09-14','Suzanne Collins',0),(13,'Em Chamas','2009-09-01','Suzanne Collins',0),(14,'A Esperança','2010-08-24','Suzanne Collins',0),(15,'O Pequeno Príncipe','1943-04-06','Antoine de Saint-Exupéry',0),(16,'O Senhor dos Anéis volume 2','1954-08-29','J.R.R. Tolkien',0);
/*!40000 ALTER TABLE `tb_livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `cpf_usuario` varchar(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cpf_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES ('09710048970','Ademir Schramm'),('22222222222','Maria Oliveira'),('33333333333','Carlos Santos'),('44444444444','Ana Costa'),('55555555555','Pedro Almeida');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-11 17:29:51
