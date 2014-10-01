
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table CLIENTES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CLIENTES`;

CREATE TABLE `CLIENTES` (
  `id` int(11) NOT NULL,
  `tipo_id` enum('cc','ce','ti') COLLATE latin1_general_ci NOT NULL,
  `nombre` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `direccion` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `telefono` varchar(45) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`,`tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

LOCK TABLES `CLIENTES` WRITE;
/*!40000 ALTER TABLE `CLIENTES` DISABLE KEYS */;

INSERT INTO `CLIENTES` (`id`, `tipo_id`, `nombre`, `direccion`, `telefono`)
VALUES
	(-1500496460,'cc','Sebascho','sebascho dir','my Phone'),
	(-1500393490,'cc','Sebascho','sebascho dir','my Phone'),
	(-1499201791,'cc','FachadaCliente','fachadaDireccionCliente','TelefonoClienteFachada'),
	(-1499200301,'cc','Sebascho','sebascho dir','my Phone'),
	(-912883381,'cc','Sebascho','sebascho dir','my Phone'),
	(-912881964,'cc','FachadaCliente','fachadaDireccionCliente','TelefonoClienteFachada'),
	(-912358658,'cc','Sebascho','sebascho dir','my Phone'),
	(-912358330,'cc','FachadaCliente','fachadaDireccionCliente','TelefonoClienteFachada'),
	(-909844878,'cc','FachadaCliente','fachadaDireccionCliente','TelefonoClienteFachada'),
	(-909839144,'cc','Sebascho','sebascho dir','my Phone'),
	(-908990817,'cc','FachadaCliente','fachadaDireccionCliente','TelefonoClienteFachada'),
	(-908987436,'cc','Sebascho','sebascho dir','my Phone'),
	(-907096641,'cc','Sebascho','sebascho dir','my Phone'),
	(-907096375,'cc','FachadaCliente','fachadaDireccionCliente','TelefonoClienteFachada'),
	(1,'cc','Juan Perez','CALLE FALSA 123','12345678'),
	(10,'cc','paco','av','123'),
	(23,'cc','Diana','Di','1234'),
	(83,'cc','Tata','La vida te da sorpresas','7310301'),
	(202,'cc','ana','av','123'),
	(666,'cc','Tata','La vida te da sorpresas','7310301'),
	(787,'cc','Tata','La vida te da sorpresas','7310301'),
	(1010,'cc','paco','av','123'),
	(20212,'cc','ana','av','123'),
	(20213,'cc','ana','av','123'),
	(20214,'cc','ana','av','123'),
	(20215,'cc','ana','av','123'),
	(20216,'cc','ana','av','123'),
	(20217,'cc','ana','av','123'),
	(20218,'cc','ana','av','123'),
	(20219,'cc','ana','av','123'),
	(20220,'cc','ana','av','123'),
	(34567,'cc','Juan Perez','CALLE FALSA 123','12345678'),
	(40394,'cc','Miguel M','cll 7','3144482287'),
	(125445,'cc','Juan Perez','CALLE FALSA 123','12345678'),
	(131313,'cc','trollTrolencio','calle del troll','3685800'),
	(373724,'cc','Diego Prieto','Callse','tel'),
	(403944,'cc','Miguel M','cll 7','3144412287'),
	(639427,'cc','Diego Prieto','Callse','tel'),
	(678976,'cc','cathe','Cra 23 56 78 sur','6789098'),
	(1018462,'cc','Tata','La vida te da sorpresas','7310301'),
	(1020372,'cc','Diego Prieto','Calle falsa 5','1234567'),
	(1024530,'cc','Rodrigo','AK 105','7129886'),
	(1055694,'cc','Homero Simpson','avenida siempre viva 58','1445644'),
	(2077015,'cc','catherine','trv 45 34','8786543'),
	(2077776,'cc','Duarte NiÃ±o','localidad kennedy','01-9000-696959-9'),
	(2078264,'cc','Pepito Perez','Direccion X','7789809'),
	(2081584,'cc','AndrÃ©s Parra','Cra 83 65 31 sur','7838594'),
	(2082775,'cc','Juan David Castro','Calle falsa 123','555 5555'),
	(2083164,'cc','Daniel','Av. Falsa 123','0123456789'),
	(2083431,'cc','CCGA','Zipaquira','3133882060'),
	(2083809,'cc','CCGA','Zipaquira','3133882060'),
	(2085547,'cc','Mario','Calle 147 # 21',''),
	(10394567,'cc','David Saavedra','Cll 170 N 43-60','4568612'),
	(10525658,'cc','Bart Simpson','calle falsa 123','1446644'),
	(20827755,'cc','Juan David Castro S','Calle falsa 123','555 5555'),
	(1000222444,'cc','Pedro Gutierrez','Cll 170 N 43-60','4568612'),
	(1014227392,'cc','Gustavo Adolfo Ovalle','Diagonal 86 a # 102 - 50','4767994'),
	(1014250231,'cc','Sebastian','spr','12345'),
	(1015420935,'cc','David Guarnizo','Bogotá','3003331603'),
	(1015428223,'cc','Diana','Di','1234'),
	(1024530883,'cc','Pedro','AK 105','7129886'),
	(1033739673,'cc','Jonathan Sanduchitos','AK Escuela','71727');

/*!40000 ALTER TABLE `CLIENTES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table POLIZAS_APROBADAS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `POLIZAS_APROBADAS`;

CREATE TABLE `POLIZAS_APROBADAS` (
  `fecha_aprobacion` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `CLIENTES_id` int(11) NOT NULL,
  `CLIENTES_tipo_id` enum('cc','ce','ti') COLLATE latin1_general_ci NOT NULL,
  `POLIZAS_codigo_poliza` int(11) NOT NULL,
  PRIMARY KEY (`CLIENTES_id`,`CLIENTES_tipo_id`,`POLIZAS_codigo_poliza`),
  KEY `fk_SOLICITUDES_POLIZAS1` (`POLIZAS_codigo_poliza`),
  CONSTRAINT `fk_SOLICITUDES_CLIENTES` FOREIGN KEY (`CLIENTES_id`, `CLIENTES_tipo_id`) REFERENCES `CLIENTES` (`id`, `tipo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SOLICITUDES_POLIZAS1` FOREIGN KEY (`POLIZAS_codigo_poliza`) REFERENCES `TIPOS_POLIZA` (`codigo_poliza`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

LOCK TABLES `POLIZAS_APROBADAS` WRITE;
/*!40000 ALTER TABLE `POLIZAS_APROBADAS` DISABLE KEYS */;

INSERT INTO `POLIZAS_APROBADAS` (`fecha_aprobacion`, `fecha_vencimiento`, `CLIENTES_id`, `CLIENTES_tipo_id`, `POLIZAS_codigo_poliza`)
VALUES
	('3914-11-12','3915-11-12',1,'cc',1),
	('1977-01-01','1977-01-01',1,'cc',122221),
	('1977-01-01','1977-01-01',10,'cc',122221),
	('2014-02-01','2014-02-01',23,'cc',1),
	('1969-12-31','1969-12-31',787,'cc',2),
	('1918-07-08','2014-02-05',20219,'cc',1),
	('1918-07-08','2014-02-05',20220,'cc',1),
	('3914-11-12','3915-11-12',34567,'cc',1),
	('3914-02-03','3914-04-11',40394,'cc',1),
	('3914-11-12','3915-11-12',125445,'cc',1),
	('3914-03-08','3914-03-10',131313,'cc',1),
	('2014-08-26','2014-08-26',373724,'cc',1),
	('3914-02-03','3914-04-11',403944,'cc',1),
	('2014-09-21','2014-09-21',639427,'cc',1),
	('3913-10-25','3914-10-25',678976,'cc',2),
	('2014-02-01','2014-02-01',1024530,'cc',1),
	('2013-08-28','2013-08-28',1055694,'cc',2),
	('3913-10-03','3914-10-03',2077015,'cc',2),
	('2013-08-28','3913-09-29',2077776,'cc',1),
	('2001-12-21','2008-12-21',2078264,'cc',2),
	('3913-09-25','3914-09-25',2081584,'cc',2),
	('1969-12-31','1969-12-31',2082775,'cc',1000),
	('2013-02-19','2013-03-19',2083164,'cc',2),
	('3913-05-21','3914-07-10',2083809,'cc',1),
	('3913-11-15','3914-11-15',10394567,'cc',2),
	('2013-08-28','2013-08-28',10525658,'cc',3569),
	('1969-12-31','1969-12-31',20827755,'cc',1),
	('3913-11-15','3914-11-15',1000222444,'cc',1),
	('2013-02-20','2013-02-20',1014227392,'cc',1),
	('2014-05-02','2014-12-02',1014250231,'cc',1),
	('2014-02-01','2014-02-01',1024530883,'cc',1),
	('3913-01-02','2014-02-05',1033739673,'cc',1);

/*!40000 ALTER TABLE `POLIZAS_APROBADAS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TIPOS_POLIZA
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TIPOS_POLIZA`;

CREATE TABLE `TIPOS_POLIZA` (
  `codigo_poliza` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `descripcion` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `monto_maximo` bigint(20) NOT NULL,
  PRIMARY KEY (`codigo_poliza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

LOCK TABLES `TIPOS_POLIZA` WRITE;
/*!40000 ALTER TABLE `TIPOS_POLIZA` DISABLE KEYS */;

INSERT INTO `TIPOS_POLIZA` (`codigo_poliza`, `nombre`, `descripcion`, `monto_maximo`)
VALUES
	(-1500496538,'NuevaPoliza','Esta es una nueva Poliza',25),
	(-1500393573,'NuevaPoliza','Esta es una nueva Poliza',25),
	(-1499201057,'polizaFachada','Esta es una poliza de fachada',25),
	(-1499200317,'NuevaPoliza','Esta es una nueva Poliza',25),
	(-912883511,'NuevaPoliza','Esta es una nueva Poliza',25),
	(-912876506,'polizaFachada','Esta es una poliza de fachada',25),
	(-912358767,'NuevaPoliza','Esta es una nueva Poliza',25),
	(-912355969,'polizaFachada','Esta es una poliza de fachada',25),
	(-909842331,'polizaFachada','Esta es una poliza de fachada',25),
	(-909839238,'NuevaPoliza','Esta es una nueva Poliza',25),
	(-908989367,'polizaFachada','Esta es una poliza de fachada',25),
	(-908987538,'NuevaPoliza','Esta es una nueva Poliza',25),
	(-907096764,'NuevaPoliza','Esta es una nueva Poliza',25),
	(-907095185,'polizaFachada','Esta es una poliza de fachada',25),
	(0,'fachadaOpDiego','fachadaOpDiego',888),
	(1,'Seguro Social','Recuperar pacientes',50000),
	(2,'Theft Policy','Poliza contra Robo',2800000),
	(38,'jajja','ddddddd',2000),
	(55,'diegoPrueba','poliza de prueba',2000),
	(111,'p1','La poli',2312321),
	(123,'p1','la poliza 444',22),
	(201,'Seguro Social','Recuperar pacientes',500000),
	(444,'p1','la poliza 444',22),
	(445,'p1','la poliza 444',22),
	(601,'Seguro Social','Recuperar pacientes',500000),
	(1000,'Poliza prueba','... descripción',12000000),
	(2000,'jajja','ddddddd',2000),
	(2212,'p1','la poliza 444',22),
	(3000,'jajja','ddddddd',2000),
	(3332,'p1','la poliza 444',22),
	(3548,'jajja','ddddddd',2000),
	(3569,'Seguro','nnnnnn',900000),
	(22221,'p1','la poliza 444',22),
	(33322,'p1','LA PRUEBA',22),
	(102037,'fachada','fachada',5852),
	(102038,'fachada','fachada',5852),
	(102039,'fachada','fachadaRest',5852),
	(122221,'p1','la poliza 444',22),
	(201536,'p1','La poli2',2312321),
	(333221,'p1','LA PRUEBA',22),
	(333222,'p1','LA PRUEBA',22),
	(553324,'p1','la poliza 444',22),
	(999999,'NuevaPoliza','Esta es una nueva Poliza',25),
	(1020372,'dPTans','poliza de prueba trans',8050);

/*!40000 ALTER TABLE `TIPOS_POLIZA` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
