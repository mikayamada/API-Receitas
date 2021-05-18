CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `imagem_url`
--

DROP TABLE IF EXISTS `imagem_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagem_url` (
  `id_imagem` int NOT NULL,
  `url_imagem` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id_imagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagem_url`
--

LOCK TABLES `imagem_url` WRITE;
/*!40000 ALTER TABLE `imagem_url` DISABLE KEYS */;
INSERT INTO `imagem_url` VALUES (1,'https://www.receiteria.com.br/wp-content/uploads/risoto-de-camarao-14.jpg'),(2,'https://moinhoglobo.com.br/wp-content/uploads/2019/03/08-bolo-chocolate-1024x683.png'),(3,'https://s2.glbimg.com/yxeAQ759vmuSnE-5Mp6kVWGZRxs=/696x390/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2020/e/p/ggK73dQdWTU78clATT1Q/panqueca-de-liquidificador.jpg'),(4,'https://renata.com.br/images/receitas/53/renata-imagem-receitas-macarrao-com-almondegas-1-lg.jpg'),(5,'https://cooknenjoy.com/wp-content/uploads/2020/07/pave-de-chocolate-500x500.jpg'),(6,'https://i.pinimg.com/736x/03/39/82/03398208b392aa002d0051d9f66d52fc.jpg'),(7,'http://gabrielaosinski.com.br/wp-content/uploads/2019/02/cortado-inclinado.jpg'),(8,'https://comidinhasdochef.com/wp-content/uploads/2018/03/Bolacha-de-Nata-com-Maizena.jpg'),(9,'https://www.sabornamesa.com.br/media/k2/items/cache/f964ddc910acbc5c426350c1b152e08d_L.jpg'),(10,'https://d1uz88p17r663j.cloudfront.net/resized/91a75c07c6b19f2d70d187fc2ce5f0dc_pao-de-queijo-receitas-nestle_1200_600.jpg'),(11,'https://d1uz88p17r663j.cloudfront.net/resized/44bc285d23cef8b2c1c2995353724521_quibe-receitas-nestle_1200_600.jpg');
/*!40000 ALTER TABLE `imagem_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingrediente`
--

DROP TABLE IF EXISTS `ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingrediente` (
  `ID_INGRDEIENTE` int NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_INGRDEIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingrediente`
--

LOCK TABLES `ingrediente` WRITE;
/*!40000 ALTER TABLE `ingrediente` DISABLE KEYS */;
INSERT INTO `ingrediente` VALUES (1,'Arroz Branco'),(2,'Caldo de camarão'),(3,'Pimentão verde'),(4,'Tomate'),(5,'Camarão'),(6,'Cheiro verde'),(7,'Dentes de Alho'),(8,'Azeite'),(9,'Sal'),(10,'Limão'),(11,'Leite'),(12,'Óleo'),(13,'Ovo'),(14,'Farinha de trigo'),(15,'Achocolatado em pó'),(16,'Açúcar'),(17,'Fermento'),(18,'MAnteiga'),(22,'Sal'),(23,'Carne moída'),(24,'Sal'),(25,'Oregano'),(26,'Tempero verde'),(27,'Tomate'),(28,'Cebola'),(29,'Pimentão'),(30,'Massa de tomate'),(31,'Manjericão'),(32,'Macarrão'),(33,'Creme de Leite'),(35,'Leite condensado'),(36,'Gemas'),(37,'Maisena'),(38,'Chocolate em pó'),(39,'Biscoito maisena'),(40,'Raspas de chocolate'),(42,'Gelatina de Maracujá'),(43,'Água quente'),(44,'Suco de maracujá'),(45,'Leite'),(46,'Extrato de tomate'),(47,'Gelatina de Maracujá'),(48,'Água quente'),(49,'Suco de maracujá'),(50,'Nata'),(51,'Milho verde'),(52,'Coco ralado'),(53,'Polvilho doce'),(54,'Queijo minas ralado'),(55,'Hortelã'),(56,'Pimenta');
/*!40000 ALTER TABLE `ingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_de_ingredientes`
--

DROP TABLE IF EXISTS `lista_de_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_de_ingredientes` (
  `ID_RECEITA_FK` int NOT NULL,
  `ID_INGREDIENTE_FK` int DEFAULT NULL,
  `ID_UNIDADE_DE_MEDIDA_FK` int DEFAULT NULL,
  `QUANTIDADE` int DEFAULT NULL,
  KEY `ID_RECEITA_FK` (`ID_RECEITA_FK`),
  KEY `ID_INGREDIENTE_FK` (`ID_INGREDIENTE_FK`),
  KEY `ID_UNIDADE_DE_MEDIDA_FK` (`ID_UNIDADE_DE_MEDIDA_FK`),
  CONSTRAINT `lista_de_ingredientes_ibfk_1` FOREIGN KEY (`ID_RECEITA_FK`) REFERENCES `receitas` (`id_receitas`),
  CONSTRAINT `lista_de_ingredientes_ibfk_2` FOREIGN KEY (`ID_INGREDIENTE_FK`) REFERENCES `ingrediente` (`ID_INGRDEIENTE`),
  CONSTRAINT `lista_de_ingredientes_ibfk_3` FOREIGN KEY (`ID_UNIDADE_DE_MEDIDA_FK`) REFERENCES `unidade_de_medida` (`ID_UNIDADE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_de_ingredientes`
--

LOCK TABLES `lista_de_ingredientes` WRITE;
/*!40000 ALTER TABLE `lista_de_ingredientes` DISABLE KEYS */;
INSERT INTO `lista_de_ingredientes` VALUES (2,11,5,1),(2,12,5,1),(2,13,1,2),(2,14,5,2),(2,15,5,1),(2,16,5,1),(2,17,6,1),(2,18,6,2),(2,15,6,3),(2,16,6,3),(2,11,6,5),(1,5,4,400),(1,1,5,3),(1,2,1,1),(1,3,5,1),(1,4,1,1),(1,6,6,1),(1,46,6,2),(1,7,1,2),(1,8,6,1),(1,9,6,1),(1,10,1,1),(3,14,5,2),(3,11,5,2),(3,13,1,3),(3,22,6,1),(4,23,4,500),(4,22,6,1),(4,25,6,1),(4,26,6,1),(4,27,1,1),(4,28,1,1),(4,29,1,1),(4,30,6,2),(4,31,1,1),(4,32,2,1),(5,33,2,1),(5,11,2,1),(5,35,2,2),(5,36,NULL,2),(5,37,6,2),(5,38,6,3),(5,39,NULL,NULL),(5,11,NULL,NULL),(5,40,2,1),(5,18,6,1),(6,42,2,2),(6,43,5,2),(6,44,5,1),(6,11,5,2),(6,35,2,1),(6,33,2,1),(7,14,3,1),(7,11,5,2),(7,43,5,1),(7,12,5,1),(7,16,6,4),(7,22,6,1),(7,13,1,2),(7,17,4,30),(8,50,5,1),(8,22,6,1),(8,13,1,2),(8,16,6,6),(8,17,6,1),(8,14,5,4),(9,51,1,12),(9,43,5,1),(9,16,5,2),(9,52,5,1),(9,22,6,1),(10,53,5,4),(10,22,6,1),(10,11,5,2),(10,12,5,1),(10,13,1,2),(10,54,5,4),(10,12,6,1),(11,23,4,500),(11,14,4,250),(11,43,5,1),(11,28,1,1),(11,7,1,2),(11,55,6,3),(11,22,6,1),(11,56,6,1);
/*!40000 ALTER TABLE `lista_de_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receitas`
--

DROP TABLE IF EXISTS `receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receitas` (
  `id_receitas` int NOT NULL,
  `titulo_receitas` varchar(250) DEFAULT NULL,
  `descricao_receitas` varchar(250) DEFAULT NULL,
  `imagem_url_id_imagem` int NOT NULL,
  PRIMARY KEY (`id_receitas`),
  KEY `fk_receitas_imagem_url1_idx` (`imagem_url_id_imagem`),
  CONSTRAINT `fk_receitas_imagem_url1` FOREIGN KEY (`imagem_url_id_imagem`) REFERENCES `imagem_url` (`id_imagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receitas`
--

LOCK TABLES `receitas` WRITE;
/*!40000 ALTER TABLE `receitas` DISABLE KEYS */;
INSERT INTO `receitas` VALUES (1,'Risoto de Camarão','Risotinho maroto da galera',1),(2,'Bolo de Chocolate','Bolo de chocolate simples',2),(3,'Panqueca','Panquecas facéis',3),(4,'Macarrão com almôndegas','Macarrão para 4 pessoas',4),(5,'Pavê de chocolate','Pave de chocolate rápido',5),(6,'Mousse de maracujá','Sobremesa de maracujá fácil e rápido',6),(7,'Pão caseiro','Pão caseiro e fofinho',7),(8,'Bolacha de Nata','Bolacha rende 30 porções',8),(9,'Pamonha','Pamonha típica do estado de Goiás',9),(10,'Pão de Queijo','Pão de queijo mineirinho',10),(11,'Quibe','Receita típica Árabe',11);
/*!40000 ALTER TABLE `receitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidade_de_medida`
--

DROP TABLE IF EXISTS `unidade_de_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidade_de_medida` (
  `ID_UNIDADE` int NOT NULL,
  `DESCRICAO` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_UNIDADE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade_de_medida`
--

LOCK TABLES `unidade_de_medida` WRITE;
/*!40000 ALTER TABLE `unidade_de_medida` DISABLE KEYS */;
INSERT INTO `unidade_de_medida` VALUES (1,'unidade'),(2,'pacote'),(3,'quilo'),(4,'grama'),(5,'xícara'),(6,'colher');
/*!40000 ALTER TABLE `unidade_de_medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'nicoly','nicoly@nicoly.com','123456'),(2,'michellle','michelle@michelle.com','123456'),(3,'willy','willy@willy.com','123456');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_has_receitas`
--

DROP TABLE IF EXISTS `usuario_has_receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_has_receitas` (
  `usuario_id_usuario` int NOT NULL,
  `receitas_id_receitas` int NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`receitas_id_receitas`),
  KEY `fk_usuario_has_receitas_receitas1_idx` (`receitas_id_receitas`),
  KEY `fk_usuario_has_receitas_usuario1_idx` (`usuario_id_usuario`),
  CONSTRAINT `fk_usuario_has_receitas_receitas1` FOREIGN KEY (`receitas_id_receitas`) REFERENCES `receitas` (`id_receitas`),
  CONSTRAINT `fk_usuario_has_receitas_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_has_receitas`
--

LOCK TABLES `usuario_has_receitas` WRITE;
/*!40000 ALTER TABLE `usuario_has_receitas` DISABLE KEYS */;
INSERT INTO `usuario_has_receitas` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(3,8),(3,9),(3,10),(3,11);
/*!40000 ALTER TABLE `usuario_has_receitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17  0:34:54
