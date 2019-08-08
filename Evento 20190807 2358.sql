-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.26-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema evento
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ evento;
USE evento;

--
-- Table structure for table `evento`.`conductor`
--

DROP TABLE IF EXISTS `conductor`;
CREATE TABLE `conductor` (
  `idconductor` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `correo` varchar(150) NOT NULL,
  `vehiculo_idvehiculo` int(11) NOT NULL,
  PRIMARY KEY (`idconductor`),
  KEY `fk_conductor_vehiculo1_idx` (`vehiculo_idvehiculo`),
  CONSTRAINT `fk_conductor_vehiculo1` FOREIGN KEY (`vehiculo_idvehiculo`) REFERENCES `vehiculo` (`idvehiculo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evento`.`conductor`
--

/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` (`idconductor`,`nombres`,`apellidos`,`cedula`,`correo`,`vehiculo_idvehiculo`) VALUES 
 (1,'Herald','Flores','161-070695-0001P','hola@gmail.com',52),
 (2,'Herals','FR','161000','hola@gmail.com',53),
 (3,'Alejandro','Espinoza','111','hola@gmail.com',54),
 (4,'h','a','a','ejemplo@gmail.com',55),
 (5,'ff','ff','ff','hola@gmail.com',56),
 (6,'Herald','Rizo','111','Hola@gmail.com',57);
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;


--
-- Table structure for table `evento`.`inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
CREATE TABLE `inscripcion` (
  `idinscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `cant_pasajeros` int(11) DEFAULT NULL,
  `vehiculo_idvehiculo` int(11) NOT NULL,
  PRIMARY KEY (`idinscripcion`),
  KEY `fk_inscripcion_vehiculo1_idx` (`vehiculo_idvehiculo`),
  CONSTRAINT `fk_inscripcion_vehiculo1` FOREIGN KEY (`vehiculo_idvehiculo`) REFERENCES `vehiculo` (`idvehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evento`.`inscripcion`
--

/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` (`idinscripcion`,`created_at`,`cant_pasajeros`,`vehiculo_idvehiculo`) VALUES 
 (1,'2019-08-08 07:21:02',3,53),
 (2,'2019-08-08 07:30:22',4,54),
 (3,'2019-08-08 07:31:37',4,55),
 (4,'2019-08-08 07:32:23',4,56),
 (5,'2019-08-08 07:36:19',4,57);
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;


--
-- Table structure for table `evento`.`personaxauto`
--

DROP TABLE IF EXISTS `personaxauto`;
CREATE TABLE `personaxauto` (
  `vehiculo_idvehiculo` int(11) NOT NULL,
  `codigoingreso` varchar(25) DEFAULT NULL,
  KEY `fk_personaxauto_vehiculo1_idx` (`vehiculo_idvehiculo`),
  CONSTRAINT `fk_personaxauto_vehiculo1` FOREIGN KEY (`vehiculo_idvehiculo`) REFERENCES `vehiculo` (`idvehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evento`.`personaxauto`
--

/*!40000 ALTER TABLE `personaxauto` DISABLE KEYS */;
INSERT INTO `personaxauto` (`vehiculo_idvehiculo`,`codigoingreso`) VALUES 
 (57,'20195722'),
 (57,'20195734'),
 (57,'20195771'),
 (57,'20195721');
/*!40000 ALTER TABLE `personaxauto` ENABLE KEYS */;


--
-- Table structure for table `evento`.`vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo` (
  `idvehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(15) DEFAULT NULL,
  `placa` varchar(15) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `asientos` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idvehiculo`),
  UNIQUE KEY `idvehiculo_UNIQUE` (`idvehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evento`.`vehiculo`
--

/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` (`idvehiculo`,`tipo`,`placa`,`marca`,`modelo`,`asientos`,`created_at`) VALUES 
 (49,'PickUp','es 23312','Toyota','Hilux',2,'2019-08-07 22:42:52'),
 (50,'Sedan','es 23312','Toyota','Hilux',2,'2019-08-07 22:57:50'),
 (51,'SUV','1','Toyota','1',1,'2019-08-07 23:06:00'),
 (52,'Sedan','es 23312','Toyota','Hilux',3,'2019-08-07 23:10:44'),
 (53,'SUV','es 23312','Toyota','Hilux',3,'2019-08-07 23:21:01'),
 (54,'Sedan','es 23312','Toyota','Hilux',3,'2019-08-07 23:30:21'),
 (55,'PickUp','es 23312','Toyota','Hilux',3,'2019-08-07 23:31:37'),
 (56,'SUV','es 23312','Toyota','Hilux',5,'2019-08-07 23:32:23'),
 (57,'Sedan','es 23312','Toyota','Hilux',5,'2019-08-07 23:36:19');
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
