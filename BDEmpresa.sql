CREATE DATABASE  IF NOT EXISTS `empresa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `empresa`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: empresa
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `numclie` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `limiteCredito` float DEFAULT NULL,
  `empleados_numemp` int(11) DEFAULT NULL,
  PRIMARY KEY (`numclie`),
  KEY `fk_clientes_empleados1_idx` (`empleados_numemp`),
  CONSTRAINT `fk_clientes_empleados1` FOREIGN KEY (`empleados_numemp`) REFERENCES `empleados` (`numemp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2101,'Luis Garcia',65000,106),(2102,'Alvaro Rodriguez',65000,101),(2103,'Jaime Llorens',50000,105),(2105,'Antonio Canales',45000,101),(2106,'Juan Suárez',65000,102),(2107,'Julian López',35000,110),(2108,'Julia Antequera',55000,109),(2109,'Alberto Juanes',25000,103),(2111,'Cristóbal García',50000,103),(2112,'María Silva',50000,108),(2113,'Luisa Maron',20000,104),(2114,'Cristina Bulini',20000,103),(2115,'Vicente Martínez',20000,101),(2117,'Carlos Tena',35000,106),(2118,'Junipero Alvarez',60000,108),(2119,'Salomon Bueno',25000,109),(2120,'Juan Malo',50000,102),(2121,'Vicente Ríos',45000,103),(2122,'José Marchante',30000,105),(2123,'José Libros',40000,103),(2124,'Juan Bolto',40000,107);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `numemp` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `contrato` date DEFAULT NULL,
  `cuota` float DEFAULT NULL,
  `ventas` float DEFAULT NULL,
  `oficina` int(11) DEFAULT NULL,
  `jefe` int(11) DEFAULT NULL,
  PRIMARY KEY (`numemp`),
  KEY `fk_empleados_oficinas1_idx` (`oficina`),
  KEY `fk_empleados_empleados1_idx` (`jefe`),
  CONSTRAINT `fk_empleados_oficinas1` FOREIGN KEY (`oficina`) REFERENCES `oficinas` (`oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleados_empleados1` FOREIGN KEY (`jefe`) REFERENCES `empleados` (`numemp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (101,'Antonio',45,'representante','1986-10-20',300000,305000,12,104),(102,'Alvaro',48,'representante','1986-12-10',350000,474000,21,108),(103,'Juan',29,'representante','1987-03-01',275000,286000,12,104),(104,'José',33,'dir ventas','1987-05-19',200000,143000,12,106),(105,'Vicente',37,'representante','1988-02-12',350000,368000,13,104),(106,'Luis',52,'dir general','1988-06-14',275000,299000,11,NULL),(107,'Jorge',49,'representante','1988-11-14',300000,186000,22,108),(108,'Ana ',62,'dir ventas','1989-10-12',350000,361000,21,106),(109,'María',41,'representante','1999-10-12',300000,392000,11,106),(110,'Juan Victor',31,'representante','1990-01-13',NULL,76000,NULL,104);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oficinas` (
  `oficina` int(11) NOT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `objetivo` float DEFAULT NULL,
  `ventas` float DEFAULT NULL,
  `dir` int(11) DEFAULT NULL,
  PRIMARY KEY (`oficina`),
  KEY `fk_oficinas_empleados1_idx` (`dir`),
  CONSTRAINT `fk_oficinas_empleados1` FOREIGN KEY (`dir`) REFERENCES `empleados` (`numemp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` VALUES (11,'valencia','este',575000,693000,106),(12,'Alicante','este',800000,735000,104),(13,'Castellon','este',350000,368000,105),(21,'Babajoz','oeste',725000,836000,108),(22,'A Coruña','oeste',300000,186000,108),(23,'Madrid','centro',NULL,NULL,108),(24,'Madrid','centro',250000,150000,108),(26,'Pamplona','norte',NULL,NULL,NULL),(28,'Valencia','este',900000,0,NULL);
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `numpedido` int(11) DEFAULT NULL,
  `fechapedido` date DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `importe` float DEFAULT NULL,
  `clie` int(11) NOT NULL,
  `rep` int(11) NOT NULL,
  `fab` varchar(10) NOT NULL,
  `producto` varchar(10) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_pedidos_clientes1_idx` (`clie`),
  KEY `fk_pedidos_empleados1_idx` (`rep`),
  KEY `fk_pedidos_productos1_idx` (`fab`,`producto`),
  CONSTRAINT `fk_pedidos_clientes1` FOREIGN KEY (`clie`) REFERENCES `clientes` (`numclie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_empleados1` FOREIGN KEY (`rep`) REFERENCES `empleados` (`numemp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_productos1` FOREIGN KEY (`fab`, `producto`) REFERENCES `productos` (`idfab`, `idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,110036,'1997-01-02',9,22500,2107,110,'aci','4100z'),(3,110036,'1997-01-02',7,31500,2117,106,'rei','2a44l');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `idfab` varchar(10) NOT NULL,
  `idproducto` varchar(10) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `existencias` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfab`,`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('aci','41001','arandela',58,277),('aci','41002','bisagra',80,167),('aci','41003','art t3',112,207),('aci','41004','art t4',123,139),('aci','4100x','junta',26,37),('aci','4100y','extractor',2888,25),('aci','4100z','mont',2625,28),('bic','41003','manivela',652,3),('bic','41089','rodamiento',225,78),('bic','41672','plato',180,0),('fea','112','cubo',148,115),('fea','114','cubo',243,15),('imm','773c','reostato',975,28),('imm','775c','reostato 2',1425,5),('imm','779c','reostato 3',1875,0),('imm','887h','caja clavos',54,223),('imm','887p','perno',25,24),('imm','887x','manivela',475,32),('qsa','xk47','red',355,38),('qsa','xk48','red',134,203),('qsa','xk48a','red',117,37),('rei','2a44g','pas',350,14),('rei','2a44l','bomba l',4500,12),('rei','2a44r','bomba r',4500,12),('rei','2a45c','junta',79,210);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-17 13:59:07