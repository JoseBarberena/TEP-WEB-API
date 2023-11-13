-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: web2-2023
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `producto` text NOT NULL,
  `clase` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descuento` decimal(4,0) NOT NULL,
  `precio_u` decimal(7,0) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `clase_fk` (`clase`),
  CONSTRAINT `clase_fk` FOREIGN KEY (`clase`) REFERENCES `productos_clases` (`id_clases`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (2,'Calcio',1,1,2,32),(3,'Magnesio',1,1,2,25),(4,'Nitrogeno',2,3333333,2,36),(6,'Torniquete N 6',3,2,2,36),(7,'Alambre Boyero 1.8',3,12,3,124),(8,'Amoladora de banco',4,1,3,124),(9,'Taladro Electrico',3,12,3,124),(12,'Amoladora de Banco',4,2,3,1455),(13,'Amoladora de Mano',4,3,3,455),(14,'Amoladora de Banco',4,4,3,77),(15,'Atornillador a Bateria Bahco',4,66,3,99),(16,'Atornillador a Bateria Stanley',4,26,3,765),(17,'Sierra de mano',4,28,3,677),(18,'Sierra Bateria',4,682,3,155),(19,'Amoladora de Mano',4,3,3,455),(20,'Amoladora de Banco',4,4,3,77),(21,'Atornillador a Bateria Bahco',4,66,3,99),(22,'Atornillador a Bateria Stanley',4,26,3,765),(23,'Sierra de mano',4,28,3,677),(24,'Sierra Bateria Bahco',4,445,6,890),(25,'Varilla Mora',3,1000,0,345),(26,'Varilla',1,2500,0,346),(27,'Varilla Quina',2,3456,0,456),(28,'ANTEOJOS DE SEG I-1978 (I 63836)  ',4,5,0,797),(29,'CINTA DUCTO AZUL 48MM X 18.2M (I 63882)  ',4,0,0,2021),(30,'CINTA DUCTO BLANCA 48MM X 18.2M(I 63885)  ',4,30,0,2021),(31,'CINTA DUCTO NEGRA 48MM X 18.2M(I 63883)  ',4,20,0,2021),(32,'DUCT TAPE AZUL 3903 48MM X 9M( I 48928)  ',4,18,0,1832),(33,'DUCT TAPE BLANCO 3903 48MM X 9M( I 48927)  ',4,8,0,1832),(34,'DUCT TAPE ROJO 3903 48MM X 9M(48925)  ',4,12,0,1832),(36,'LIJA MASSA 230U GRANO 120(I 53266 3M)  ',4,15,0,109),(37,'LIJA MASSA 230U GRANO 80(I 53263 3M)  ',4,2,0,109),(38,'PRECINTO 3M T22-200 NEGRO-22KG(62765)  ',4,0,0,109),(39,'PRECINTO3M T18-150 NEGRO-18KG(62737 3M)  ',4,0,0,3),(40,'PRECINTO3M T18-200 NEGRO-18KG(62766 3M)  ',4,0,0,4),(41,'RESTAURADOR DE CUEROS  ',4,0,0,948),(42,'SELL SILICONA UNIVERSAL TRANSPARENTE  ',4,0,0,2007),(43,'SELLADOR ADHESIVO MS BLANCO 80(540692)  ',4,0,0,413),(44,'SELLADOR ADHESIVO MS CRISTAL 8 (540694)  ',4,0,0,481),(45,'SILICONA NEUTRA TRANSPARENTE (56256)  ',4,1,0,1899),(46,'CINTA DUCTO NEGRA 48MM X 18.2M(I 63883)  ',4,20,0,2021),(47,'DUCT TAPE AZUL 3903 48MM X 9M( I 48928)  ',4,18,0,1832),(48,'DUCT TAPE BLANCO 3903 48MM X 9M( I 48927)  ',4,8,0,1832),(49,'DUCT TAPE ROJO 3903 48MM X 9M(48925)  ',4,12,0,1832),(50,'LIJA MASSA 230U GRANO 100(I 53330 3M)  ',4,20,0,109),(51,'LIJA MASSA 230U GRANO 120(I 53266 3M)  ',4,15,0,109),(52,'LIJA MASSA 230U GRANO 80(I 53263 3M)  ',4,2,0,109),(53,'PRECINTO 3M T22-200 NEGRO-22KG(62765)  ',4,0,0,109),(54,'PRECINTO3M T18-150 NEGRO-18KG(62737 3M)  ',4,0,0,3),(55,'PRECINTO3M T18-200 NEGRO-18KG(62766 3M)  ',4,0,0,4),(56,'RESTAURADOR DE CUEROS  ',4,0,0,948),(57,'SELL SILICONA UNIVERSAL TRANSPARENTE  ',4,0,0,2007),(58,'SELLADOR ADHESIVO MS BLANCO 80(540692)  ',4,0,0,413),(59,'SELLADOR ADHESIVO MS CRISTAL 8 (540694)  ',4,0,0,481),(60,'SILICONA NEUTRA TRANSPARENTE (56256)  ',4,1,0,1899),(61,'CINTA DUCTO BLANCA 48MM X 18.2M(I 63885)  ',4,30,0,2021),(62,'CINTA DUCTO NEGRA 48MM X 18.2M(I 63883)  ',4,20,0,2021),(63,'DUCT TAPE AZUL 3903 48MM X 9M( I 48928)  ',4,18,0,1832),(64,'DUCT TAPE BLANCO 3903 48MM X 9M( I 48927)  ',4,8,0,1832),(65,'DUCT TAPE ROJO 3903 48MM X 9M(48925)  ',4,12,0,1832),(66,'LIJA MASSA 230U GRANO 100(I 53330 3M)  ',4,20,0,109),(67,'LIJA MASSA 230U GRANO 120(I 53266 3M)  ',4,15,0,109),(68,'LIJA MASSA 230U GRANO 80(I 53263 3M)  ',4,2,0,109),(69,'PRECINTO 3M T22-200 NEGRO-22KG(62765)  ',4,0,0,109),(70,'PRECINTO3M T18-150 NEGRO-18KG(62737 3M)  ',4,0,0,3),(71,'PRECINTO3M T18-200 NEGRO-18KG(62766 3M)  ',4,0,0,4),(72,'RESTAURADOR DE CUEROS  ',4,0,0,948),(73,'SELL SILICONA UNIVERSAL TRANSPARENTE  ',4,0,0,2007),(74,'SELLADOR ADHESIVO MS BLANCO 80(540692)  ',4,0,0,413),(75,'SELLADOR ADHESIVO MS CRISTAL 8 (540694)  ',4,0,0,481),(76,'SILICONA NEUTRA TRANSPARENTE (56256)  ',4,1,0,1899),(77,'ALAMBRE 16/14 AR INVENCIBLE ACINDAR  ',3,0,0,0),(78,'ALAMBRE 16/14 AR INVENCIBLE ACINDAR  ',3,0,0,0),(79,'ALAMBRE 16/14 MR X KILO  ',3,0,0,0),(80,'ALAMBRE 17/15 AR ACINDAR    (A 144392)  ',3,199,0,9999999),(81,'ALAMBRE 17/15 AR X KG  ',3,0,0,0),(82,'ALAMBRE 19/17   (A 144397)  ',3,7,0,529386),(83,'ALAMBRE BOYERO X 1000 MTS   (A 144275)  ',3,0,0,0),(84,'ALAMBRE BOYERO X 2000 MTS  ',3,0,0,0),(85,'ALAMBRE GALVANIZADO 14,5  ',3,0,0,0),(86,'ALAMBRE GALVANIZADO Nº 10   (A 186213)  ',3,466,94,609921),(87,'ALAMBRE GALVANIZADO Nº 12  ',3,0,0,0),(88,'ALAMBRE GALVANIZADO Nº 14   (A 144485)  ',3,19,0,25862),(89,'ALAMBRE GALVANIZADO Nº 8  ',3,0,0,0),(90,'ALAMBRE GALVANIZADO Nº 9  (A 21877)  ',3,0,0,0),(91,'ALAMBRE PUA X 100 MTS   (A 143970)  ',3,0,0,0),(92,'ALAMBRE PUA X 500 MTS   (A 143971)  ',3,0,0,0),(93,'ALAMBRE RECOCIDO 17      (A 248801)  ',3,2,0,2381),(94,'ALAMBRE RECOCIDO Nº 9-3.66 mm  ',3,0,0,0),(95,'ALAMBRE TEJIDO ROMBOIDAL  ',3,0,0,0),(96,'Fertilizante liquido',2,0,0,0),(97,'Fosforo liquido',2,0,0,0),(98,'Activador molecular',2,0,0,0),(99,'2-4D',2,199,0,1198),(100,'Glifosato x litro',2,0,0,0),(101,'Turba',2,7,0,529386),(102,'Activador hormonal ',2,0,0,0),(103,'Fungicida sistemico',2,0,0,0),(104,'Hierro Liquido',2,0,0,0),(105,'Acaricida sistemico',2,466,94,8),(106,'Volteador ',2,0,0,0),(107,'Glacoxan capsulas',2,19,0,-25862),(108,'Semillas 7 variedades',2,0,0,0),(109,'Cesped ',2,0,0,0),(110,'Pala de punta',2,0,0,0),(111,'Tijera poda dos mano',2,0,0,0),(112,'Tijera poda hergonomica',2,2,0,2381),(113,'Aspersor a balloneta',2,0,0,0),(114,'Pulverizador 12 litros',2,0,0,0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_clases`
--

DROP TABLE IF EXISTS `productos_clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_clases` (
  `id_clases` int(11) NOT NULL AUTO_INCREMENT,
  `clase` varchar(100) NOT NULL,
  `origen` text NOT NULL,
  PRIMARY KEY (`id_clases`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_clases`
--

LOCK TABLES `productos_clases` WRITE;
/*!40000 ALTER TABLE `productos_clases` DISABLE KEYS */;
INSERT INTO `productos_clases` VALUES (1,'Vacuno','Argentina'),(2,'Vegetal','Argentina'),(3,'Alambre','Argentina'),(4,'Ferreteria','Mercosur');
/*!40000 ALTER TABLE `productos_clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'webadmin@gmail.com','$2y$10$VxWRxpQwkc8t6X7YHljO..RlviqYI42dF6OEW1LNHyMtn1jafaspW');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedores` (
  `id_Vendedor` int(11) NOT NULL,
  `Vendedor` varchar(100) NOT NULL,
  `Zona` varchar(100) NOT NULL,
  `Comision` double NOT NULL,
  PRIMARY KEY (`id_Vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'Jose Ignacio','Tandil',0.23),(2,'Noelia Camila','CABA',0.18);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(100) NOT NULL,
  `Factura` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `Producto` varchar(100) NOT NULL,
  `Cantidad` int(15) NOT NULL,
  `P_Unitario` double NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_vendedor` (`id_vendedor`),
  CONSTRAINT `id_vendedor` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id_Vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (23,'MSGP','A000050036','2023-06-05',1,'Calcio bloque',9,100,9),(24,'MSGP','A00-005326','0000-00-00',2,'BLOQUE CALCIO',9,3,27),(25,'CONSUMIDOR FINAL','A00-005327','2023-05-10',1,'BLOQUE MAGNESIO',3,15,3),(26,'CEPEDA HORARIO','A00-005333','2023-04-25',2,'BLOQUE CALCIO',20,3,60),(27,'MSGP','A00-005326','0000-00-00',2,'BLOQUE MAGNESIO',1,15,15),(28,'CERRO CHATO','A00-005333','2023-05-23',1,'17/15',10,500,5000),(29,'FERREIRO CLAUDIO','A00-005338','2023-06-26',2,'POSTE QUEBRACHO',9,100,900),(30,'SANCHEZ OFELIA','A00-005345','2023-06-25',1,'CLAVOS TECHO',100,3,300),(31,'MSGP','A00-005326','0000-00-00',2,'BLOQUE CALCIO',9,3,27),(32,'MSGP','A00-005326','0000-00-00',2,'BLOQUE CALCIO',9,3,27),(33,'MSGP','A00-005326','0000-00-00',2,'BLOQUE CALCIO',9,3,27);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 18:14:37
