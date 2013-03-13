# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: finitus
# Generation Time: 2013-03-13 17:53:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table alumnos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alumnos`;

CREATE TABLE `alumnos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `persona_id` int(11) NOT NULL,
  `titulo_id` int(11) NOT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;

INSERT INTO `alumnos` (`id`, `persona_id`, `titulo_id`, `fecha_inicio`, `fecha_fin`)
VALUES
	(1,1,1,'2011-12-01 21:50:26','2012-12-07 21:50:33'),
	(2,2,2,'2011-12-01 00:00:00','2012-12-07 00:00:00'),
	(3,3,3,'2011-12-01 00:00:00','2012-02-07 00:00:00'),
	(4,4,4,'2011-12-01 00:00:00','2012-02-07 00:00:00'),
	(5,5,1,'2011-12-01 00:00:00','2012-02-07 00:00:00'),
	(6,6,2,'2011-12-01 00:00:00','2012-02-07 00:00:00'),
	(7,7,3,'2011-12-01 00:00:00','2012-02-07 00:00:00'),
	(8,12,3,'2012-09-01 00:00:00','2018-07-31 00:00:00');

/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alumnos_asignaturas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alumnos_asignaturas`;

CREATE TABLE `alumnos_asignaturas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_alumno` int(10) unsigned NOT NULL,
  `id_asignatura` int(10) unsigned NOT NULL,
  `id_anio_academico` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alumnos_asignaturas` WRITE;
/*!40000 ALTER TABLE `alumnos_asignaturas` DISABLE KEYS */;

INSERT INTO `alumnos_asignaturas` (`id`, `id_alumno`, `id_asignatura`, `id_anio_academico`)
VALUES
	(1,1,2,3),
	(2,1,12,3),
	(3,1,13,3),
	(4,1,4,3),
	(5,2,23,3),
	(6,2,25,3),
	(7,2,30,3),
	(8,2,28,3),
	(9,2,31,3),
	(10,3,4,2),
	(11,3,4,3),
	(12,3,6,2),
	(13,3,6,3),
	(14,3,8,3),
	(15,3,12,3),
	(16,6,10,3),
	(17,6,12,3),
	(18,6,15,3);

/*!40000 ALTER TABLE `alumnos_asignaturas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table anios_academicos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `anios_academicos`;

CREATE TABLE `anios_academicos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `anios` char(9) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `anios_academicos` WRITE;
/*!40000 ALTER TABLE `anios_academicos` DISABLE KEYS */;

INSERT INTO `anios_academicos` (`id`, `anios`)
VALUES
	(1,'2010/2011'),
	(2,'2011/2012'),
	(3,'2012/2013'),
	(4,'2013/2014'),
	(5,'2014/2015');

/*!40000 ALTER TABLE `anios_academicos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table areas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `rama` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;

INSERT INTO `areas` (`id`, `nombre`, `rama`)
VALUES
	(1,'Análisis Geográfico Regional','Arte y Humanidades'),
	(2,'Análisis Matemático ','Ciencias'),
	(3,'Anatomía Patológica','Ciencias de la Salud'),
	(4,'Anatomía y Embriología Humana','Ciencias de la Salud'),
	(5,'Antropología Social','Ciencias Sociales y Jurídicas'),
	(6,'Arqueología','Arte y Humanidades'),
	(7,'Arquitectura y Tecnología de Computadores','Ingeniería y Arquitectura'),
	(8,'Astronomía y Astrofísica','Ciencias'),
	(9,'Biología Celular','Ciencias'),
	(10,'Bioquímica y Biología Molecular','Ciencias'),
	(11,'Botánica','Ciencias'),
	(12,'Ciencia de la Computación e Inteligencia Artificial','Ingeniería y Arquitectura'),
	(13,'Ciencia de los Materiales e Ingeniería Metalúrgica','Ingeniería y Arquitectura'),
	(14,'Ciencias y Técnicas Historiográficas','Arte y Humanidades'),
	(15,'Cirugía','Ciencias de la Salud'),
	(16,'Comercialización e Investigación de Mercados','Ciencias Sociales y Jurídicas'),
	(17,'Composición Arquitectónica','Ingeniería y Arquitectura'),
	(18,'Comunicación Audiovisual y Publicidad','Ciencias Sociales y Jurídicas'),
	(19,'Construcciones Arquitectónicas','Ingeniería y Arquitectura'),
	(20,'Cristalografía y Mineralogía','Ciencias'),
	(21,'Derecho Administrativo','Ciencias Sociales y Jurídicas'),
	(22,'Derecho Civil','Ciencias Sociales y Jurídicas'),
	(23,'Derecho Constitucional','Ciencias Sociales y Jurídicas'),
	(24,'Derecho del Trabajo y de la Seguridad Social','Ciencias Sociales y Jurídicas'),
	(25,'Derecho Eclesiástico del Estado','Ciencias Sociales y Jurídicas'),
	(26,'Derecho Financiero y Tributario','Ciencias Sociales y Jurídicas'),
	(27,'Derecho Internacional Privado','Ciencias Sociales y Jurídicas'),
	(28,'Derecho Internacional Público y Relaciones Internacionales','Ciencias Sociales y Jurídicas'),
	(29,'Derecho Mercantil','Ciencias Sociales y Jurídicas'),
	(30,'Derecho Penal','Ciencias Sociales y Jurídicas'),
	(31,'Derecho Procesal','Ciencias Sociales y Jurídicas'),
	(32,'Derecho Romano','Ciencias Sociales y Jurídicas'),
	(33,'Dermatología','Ciencias de la Salud'),
	(34,'Dibujo','Arte y Humanidades'),
	(35,'Didáctica de la Expresión Corporal','Ciencias Sociales y Jurídicas'),
	(36,'Didáctica de la Expresión Musical','Arte y Humanidades'),
	(37,'Didáctica de la Expresión Plástica','Arte y Humanidades'),
	(38,'Didáctica de la Lengua y la Literatura','Arte y Humanidades'),
	(39,'Didáctica de las Matemáticas','Ciencias Sociales y Jurídicas'),
	(40,'Didáctica de las Ciencias Experimentales','Arte y Humanidades'),
	(41,'Didáctica de las Ciencias Sociales','Arte y Humanidades'),
	(42,'Didáctica y Organización Escolar','Arte y Humanidades'),
	(43,'Ecología','Ciencias'),
	(44,'Economía Aplicada','Ciencias Sociales y Jurídicas'),
	(45,'Economía Financiera y Contabilidad','Ciencias Sociales y Jurídicas'),
	(46,'Edafología y Química Agrícola','Ciencias'),
	(47,'Educación Física y Deportiva','Ciencias Sociales y Jurídicas'),
	(48,'Electromagnetismo','Ciencias'),
	(49,'Electrónica','Ingeniería y Arquitectura'),
	(50,'Enfermería','Ciencias de la Salud'),
	(51,'Escultura','Arte y Humanidades'),
	(52,'Estadística e Investigación','Operativa Ciencias'),
	(53,'Estética y Teoría de las Artes','Arte y Humanidades'),
	(54,'Estomatología','Ciencias de la Salud'),
	(55,'Estudios Árabes e Islámicos','Arte y Humanidades'),
	(56,'Expresión Gráfica Arquitectónica','Ingeniería y Arquitectura'),
	(57,'Expresión Gráfica en la Ingeniería','Ingeniería y Arquitectura'),
	(58,'Farmacia y Tecnología Farmacéutica','Ciencias de la Salud'),
	(59,'Farmacología','Ciencias de la Salud'),
	(60,'Filología Alemana','Arte y Humanidades'),
	(61,'Filología Francesa','Arte y Humanidades'),
	(62,'Filología Griega','Arte y Humanidades'),
	(63,'Filología Inglesa','Arte y Humanidades'),
	(64,'Filología Italiana','Arte y Humanidades'),
	(65,'Filología Latina','Arte y Humanidades'),
	(66,'Filosofía','Arte y Humanidades'),
	(67,'Filosofía del Derecho Ciencias Sociales y Jurídicas',NULL),
	(68,'Filosofía Moral','Arte y Humanidades'),
	(69,'Física Aplicada','Ciencias'),
	(70,'Física Atómica, Molecular y Nuclear','Ciencias'),
	(71,'Física de la Materia Condensada','Ciencias'),
	(72,'Física Teórica','Ciencias'),
	(73,'Fisiología','Ciencias de la Salud'),
	(74,'Fisiología Vegetal','Ciencias'),
	(75,'Fisioterapia','Ciencias de la Salud'),
	(76,'Genética','Ciencias'),
	(77,'Geografía Física','Ciencias Sociales y Jurídicas'),
	(78,'Geografía Humana','Ciencias Sociales y Jurídicas'),
	(79,'Geometría y Topología','Ciencias'),
	(80,'Histología','Ciencias de la Salud'),
	(81,'Historia Antigua','Arte y Humanidades'),
	(82,'Historia Contemporánea','Arte y Humanidades'),
	(83,'Historia de América','Arte y Humanidades'),
	(84,'Historia de la Ciencia','Arte y Humanidades'),
	(85,'Historia del Arte','Arte y Humanidades'),
	(86,'Historia del Derecho y de las Instituciones','Ciencias Sociales y Jurídicas'),
	(87,'Historia e Instituciones Económicas','Ciencias Sociales y Jurídicas'),
	(88,'Historia Medieval','Arte y Humanidades'),
	(89,'Historia Moderna','Arte y Humanidades'),
	(90,'Ingeniería Aeroespacial','Ingeniería y Arquitectura'),
	(91,'Ingeniería Agroforestal','Ingeniería y Arquitectura'),
	(92,'Ingeniería de la Construcción','Ingeniería y Arquitectura'),
	(93,'Ingeniería de los Procesos de Fabricación','Ingeniería y Arquitectura'),
	(94,'Ingeniería de Sistemas y Automática','Ingeniería y Arquitectura'),
	(95,'Ingeniería del Terreno','Ingeniería y Arquitectura'),
	(96,'Ingeniería e Infraestructura de los Transportes','Ingeniería y Arquitectura'),
	(97,'Ingeniería Eléctrica','Ingeniería y Arquitectura'),
	(98,'Ingeniería Mecánica','Ingeniería y Arquitectura'),
	(99,'Ingeniería Química','Ingeniería y Arquitectura'),
	(100,'Ingeniería Telemática','Ingeniería y Arquitectura'),
	(101,'Inmunología','Ciencias de la Salud'),
	(102,'Lengua Española Arte y Humanidades',NULL),
	(103,'Lenguajes y Sistemas Informáticos','Ingeniería y Arquitectura'),
	(104,'Lingüística General','Arte y Humanidades'),
	(105,'Literatura Española','Arte y Humanidades'),
	(106,'Lógica y Filosofía de la Ciencia','Arte y Humanidades'),
	(107,'Máquinas y Motores Térmicos','Ingeniería y Arquitectura'),
	(108,'Matemática Aplicada','Ciencias'),
	(109,'Matemática Aplicada (Dpto. Matemática aplicada II)','Ingeniería y Arquitectura'),
	(110,'Mecánica de Fluídos','Ingeniería y Arquitectura'),
	(111,'Mecánica de Medios Contínuos y Teoría de Estructuras','Ingeniería y Arquitectura'),
	(112,'Medicina','Ciencias de la Salud'),
	(113,'Medicina Legal y Forense','Ciencias de la Salud'),
	(114,'Medicina Preventiva y Salud Pública','Ciencias de la Salud'),
	(115,'Metodología de las Ciencias del Comportamiento','Ciencias de la Salud'),
	(116,'Métodos cuantitativos para la Economía y la Empresa','Ciencias Sociales y Jurídicas'),
	(117,'Métodos de Investigación y Diagnóstico en Educación','Arte y Humanidades'),
	(118,'Microbiología','Ciencias de la Salud'),
	(119,'Música','Arte y Humanidades'),
	(120,'Nutrición y Bromatología','Ciencias de la Salud'),
	(121,'Obstetricia y Ginecología','Ciencias de la Salud'),
	(122,'Oftalmología','Ciencias de la Salud'),
	(123,'Óptica','Ciencias'),
	(124,'Organización de Empresas','Ciencias Sociales y Jurídicas'),
	(125,'Otorrinolaringología','Ciencias de la Salud'),
	(126,'Parasitología','Ciencias de la Salud'),
	(127,'Pediatría','Ciencias de la Salud'),
	(128,'Periodismo','Ciencias Sociales y Jurídicas'),
	(129,'Personalidad, Evaluación y Tratamiento Psicológico','Ciencias de la Salud'),
	(130,'Pintura','Arte y Humanidades'),
	(131,'Prehistoria','Arte y Humanidades'),
	(132,'Producción Animal','Ingeniería y Arquitectura'),
	(133,'Producción Vegetal','Ingeniería y Arquitectura'),
	(134,'Proyectos Arquitectónicos','Ingeniería y Arquitectura'),
	(135,'Proyectos de Ingeniería','Ingeniería y Arquitectura'),
	(136,'Psicobiología','Ciencias de la Salud'),
	(137,'Psicología Básica','Ciencias de la Salud'),
	(138,'Psicología Evolutiva y de la Educación','Ciencias Sociales y Jurídicas'),
	(139,'Psicología Social','Ciencias Sociales y Jurídicas'),
	(140,'Psiquiatría','Ciencias de la Salud'),
	(141,'Química Analítica','Ciencias'),
	(142,'Química Física','Ciencias'),
	(143,'Química Inorgánica','Ciencias'),
	(144,'Química Orgánica','Ciencias'),
	(145,'Radiología y Medicina Física','Ciencias de la Salud'),
	(146,'Sociología','Ciencias Sociales y Jurídicas'),
	(147,'Tecnología de Alimentos','Ingeniería y Arquitectura'),
	(148,'Tecnología Electrónica','Ingeniería y Arquitectura'),
	(149,'Tecnologías del Medio Ambiente','Ciencias'),
	(150,'Teoría de la Literatura y Literatura Comparada','Arte y Humanidades'),
	(151,'Teoría de la Señal y Comunicaciones','Ingeniería y Arquitectura'),
	(152,'Teoría e Historia de la Educación','Arte y Humanidades'),
	(153,'Toxicología','Ciencias de la Salud'),
	(154,'Urbanística y Ordenación del Territorio','Arte y Humanidades'),
	(155,'Zoología','Ciencias');

/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table asignaturas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asignaturas`;

CREATE TABLE `asignaturas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `curso` tinyint(4) NOT NULL,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `codigo` int(11) NOT NULL,
  `creditos` smallint(6) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `id_tipo` smallint(6) NOT NULL,
  `departamento` varchar(250) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `estado` varchar(250) DEFAULT NULL,
  `id_estado` smallint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;

INSERT INTO `asignaturas` (`id`, `curso`, `nombre`, `codigo`, `creditos`, `tipo`, `id_tipo`, `departamento`, `id_departamento`, `estado`, `id_estado`)
VALUES
	(2,1,'Didáctica General',2350002,6,'Formación Básica',1,'DIDÁCTICA Y ORGANIZACIÓN EDUCATIVA',104,'Vigente',1),
	(3,1,'Fundamentos de Gramática Alemana',2350008,6,'Formación Básica',1,'FILOLOGÍA ALEMANA',42,'Vigente',1),
	(4,1,'Historia de la Literatura en Lengua Alemana',2350003,6,'Formación Básica',1,'FILOLOGÍA ALEMANA',42,'Vigente',1),
	(5,1,'Idioma Moderno I (Inglés)',2350001,12,'Formación Básica',1,'',NULL,'Vigente',1),
	(6,1,'Lengua Alemana A1',2350004,6,'Formación Básica',1,'FILOLOGÍA ALEMANA',42,'Vigente',1),
	(7,1,'Lengua Alemana A2',2350009,6,'Formación Básica',1,'FILOLOGÍA ALEMANA',42,'Vigente',1),
	(8,1,'Lengua Clásica (Latín)',2350005,6,'Formación Básica',1,'FILOLOGÍA GRIEGA Y LATINA',44,'Vigente',1),
	(9,1,'Lengua Española',2350006,6,'Formación Básica',1,'LENGUA ESPAÑOLA, LINGÜÍSTICA Y TEORÍA DE LA LITERATURA',73,'Vigente',1),
	(10,1,'Lingüística',2350010,6,'Formación Básica',1,'LENGUA ESPAÑOLA, LINGÜÍSTICA Y TEORÍA DE LA LITERATURA',73,'Vigente',1),
	(11,1,'Psicología de la Educación',2350011,6,'Formación Básica',1,'PSICOLOGÍA EVOLUTIVA Y DE LA EDUCACIÓN',107,'Vigente',1),
	(12,1,'Psicología del Desarrollo',2350007,6,'Formación Básica',1,'PSICOLOGÍA EVOLUTIVA Y DE LA EDUCACIÓN',107,'Vigente',1),
	(13,1,'Teoría de la Literatura',2350012,6,'Formación Básica',1,'LENGUA ESPAÑOLA, LINGÜÍSTICA Y TEORÍA DE LA LITERATURA',73,'Vigente',1),
	(14,1,'Cálculo',1960002,12,'Formación Básica',1,'ANÁLISIS MATEMÁTICO',2,'Vigente',1),
	(15,1,'Cálculo de Probabilidades',1960004,6,'Formación Básica',1,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(16,1,'Estadística Descriptiva',1960005,6,'Formación Básica',1,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(17,1,'Informática',1960003,12,'Formación Básica',1,'CIENCIAS DE LA COMPUTACIÓN E INTELIGENCIA ARTIFICIAL',99,'Vigente',1),
	(18,1,'Programación Matemática',1960006,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(19,1,'Teoría de la Probabilidad I',1960007,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(20,2,'Economía',1960008,12,'Formación Básica',1,'ANÁLISIS ECONÓMICO Y ECONOMÍA POLÍTICA',NULL,'Vigente',1),
	(21,2,'Inferencia Estadística',1960009,12,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(22,2,'Muestreo Estadístico',1960010,12,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(23,2,'Métodos Matemáticos',1960011,6,'Obligatoria',2,'ANÁLISIS MATEMÁTICO',2,'Vigente',1),
	(24,2,'Teoría de la Probabilidad II',1960012,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(25,2,'Demografía',1960013,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(26,2,'Elementos de Cálculo Numérico',1960014,6,'Obligatoria',2,'ANÁLISIS MATEMÁTICO',2,'Vigente',1),
	(27,3,'Bases de Datos',1960015,12,'Obligatoria',2,'CIENCIAS DE LA COMPUTACIÓN E INTELIGENCIA ARTIFICIAL',99,'Vigente',1),
	(28,3,'Ampliación de Inferencia Estadística',1960016,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(29,3,'Diseño de Encuestas',1960017,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(30,3,'Investigación Operativa',1960018,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(31,3,'Modelos Lineales',1960019,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(32,3,'Ampliación de Investigación Operativa',1960020,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(33,3,'Análisis Multivariante',1960021,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(34,3,'Estadística Computacional I',1960022,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(35,3,'Estadística Pública',1960023,6,'Obligatoria',2,'ESTADÍSTICA E INVESTIGACIÓN OPERATIVA',35,'Vigente',1),
	(36,4,'Prácticas Externas',1960024,6,'Optativa',3,'',NULL,'Vigente',1),
	(37,4,'Diseño de Experimentos',1960025,6,'Obligatoria',2,'',NULL,'Vigente',1),
	(38,4,'Economía del Sector Público',1960026,6,'Optativa',3,'',NULL,'Vigente',1),
	(39,4,'Estadística Computacional II',1960027,6,'Obligatoria',2,'',NULL,'Vigente',1),
	(40,4,'Geometría de los Métodos Estadísticos',1960028,6,'Optativa',3,'',NULL,'Vigente',1),
	(41,4,'Series Temporales',1960029,6,'Obligatoria',2,'',NULL,'Vigente',1),
	(42,4,'Técnicas de Computación para la Estadística',1960030,6,'Optativa',3,'',NULL,'Vigente',1),
	(43,4,'Teoría de la Decisión',1960031,6,'Optativa',3,'',NULL,'Vigente',1),
	(44,4,'Computadores y Redes de Computadores',1960032,6,'Optativa',3,'',NULL,'Vigente',1),
	(45,4,'Estadísticas Económicas y Sociales',1960033,6,'Optativa',3,'',NULL,'Vigente',1),
	(46,4,'Fiabilidad y Control de Calidad',1960034,6,'Optativa',3,'',NULL,'Vigente',1),
	(47,4,'Inteligencia Artificial y Estadística',1960035,6,'Optativa',3,'',NULL,'Vigente',1),
	(48,4,'Métodos Algebraicos en Probabilidad y Estadística',1960036,6,'Optativa',3,'',NULL,'Vigente',1),
	(49,4,'Programación con Librerías Java',1960037,6,'Optativa',3,'',NULL,'Vigente',1),
	(50,4,'Trabajo Fin de Grado',1960038,12,'Trabajo fin de grado',4,'',NULL,'Vigente',1),
	(51,1,'Genética',2170004,6,'Formación Básica',1,'GENÉTICA',60,'Vigente',1),
	(52,1,'Bioquímica Estructural',2170007,6,'Formación Básica',1,'BIOQUÍMICA MÉDICA Y BIOLOGÍA MOLECULAR E INMUNOLOGÍA',98,'Vigente',1),
	(53,1,'Física General y Biofísica',2170003,6,'Formación Básica',1,'FISIOLOGÍA MÉDICA Y BIOFÍSICA',57,'Vigente',1),
	(54,1,'Microbiología',2170010,6,'Obligatoria',2,'MICROBIOLOGÍA Y PARASITOLOGÍA',78,'Vigente',1),
	(55,1,'Bioestadística',2170001,6,'Formación Básica',1,'MEDICINA PREVENTIVA Y SALUD PÚBLICA',106,'Vigente',1),
	(56,1,'Fisiología General',2170008,6,'Formación Básica',1,'FISIOLOGÍA MÉDICA Y BIOFÍSICA',57,'Vigente',1),
	(57,1,'Química General y Orgánica',2170005,6,'Formación Básica',1,'QUÍMICA ORGÁNICA Y FARMACÉUTICA',91,'Vigente',1),
	(58,1,'Biología Celular',2170002,6,'Formación Básica',1,'CITOLOGÍA E HISTOLOGÍA NORMAL Y PATOLÓGICA',100,'Vigente',1),
	(59,1,'Anatomía y Embriología Humana',2170006,6,'Formación Básica',1,'ANATOMÍA Y EMBRIOLOGÍA HUMANA',3,'Vigente',1),
	(60,1,'Genética Molecular',2170009,6,'Obligatoria',2,'GENÉTICA',60,'Vigente',1),
	(61,2,'Bioquímica de Metabolismo',2170013,6,'Formación Básica',1,'BIOQUÍMICA MÉDICA Y BIOLOGÍA MOLECULAR E INMUNOLOGÍA',98,'Vigente',1),
	(62,2,'Métodos Epidemiológicos',2170015,5,'Obligatoria',2,'MEDICINA PREVENTIVA Y SALUD PÚBLICA',106,'Vigente',1),
	(63,2,'Técnicas Moleculares y Celulares',2170017,6,'Obligatoria',2,'FISIOLOGÍA MÉDICA Y BIOFÍSICA',57,'Vigente',1),
	(64,2,'Genética Humana',2170014,6,'Obligatoria',2,'GENÉTICA',60,'Vigente',1),
	(65,2,'Virología',2170019,6,'Obligatoria',2,'MICROBIOLOGÍA',77,'Vigente',1),
	(66,2,'Tecnología de Imagen',2170018,6,'Obligatoria',2,'FISIOLOGÍA MÉDICA Y BIOFÍSICA',57,'Vigente',1),
	(67,2,'Inmunología',2170016,6,'Obligatoria',2,'BIOQUÍMICA MÉDICA Y BIOLOGÍA MOLECULAR E INMUNOLOGÍA',98,'Vigente',1),
	(68,2,'Anatomía e Histología de Organos',2170012,8,'Formación Básica',1,'CITOLOGÍA E HISTOLOGÍA NORMAL Y PATOLÓGICA',100,'Vigente',1),
	(69,2,'Fisiología Humana',2170011,12,'Obligatoria',2,'FISIOLOGÍA MÉDICA Y BIOFÍSICA',57,'Vigente',1),
	(70,1,'Introducción a las Finanzas',2200009,6,'Formación Básica',1,'ECONOMÍA FINANCIERA Y DIRECCIÓN DE OPERACIONES',30,'Vigente',1),
	(71,1,'Psicología del Trabajo y de las Organizaciones',2200011,6,'Formación Básica',1,'PSICOLOGÍA SOCIAL',108,'Vigente',1),
	(72,1,'Historia Económica',2200008,6,'Formación Básica',1,'ECONOMÍA E HISTORIA ECONÓMICA',105,'Vigente',1),
	(73,1,'Sociología de las Relaciones Laborales',2200006,6,'Formación Básica',1,'SOCIOLOGÍA',92,'Vigente',1),
	(74,1,'Matemáticas',2200005,6,'Formación Básica',1,'ECONOMÍA APLICADA III',29,'Vigente',1),
	(75,1,'Introducción a la Economía',2200004,6,'Formación Básica',1,'ECONOMÍA APLICADA I',27,'Vigente',1),
	(76,1,'Microeconomía',2200010,6,'Formación Básica',1,'ECONOMÍA E HISTORIA ECONÓMICA',105,'Vigente',1),
	(77,1,'Elementos de Derecho Público',2200007,6,'Formación Básica',1,'DERECHO ADMINISTRATIVO',101,'Vigente',1),
	(78,1,'Sociología y Técnicas de Investigación Social',2200012,6,'Formación Básica',1,'SOCIOLOGÍA',92,'Vigente',1),
	(79,1,'Elementos de Derecho Privado',2200002,6,'Formación Básica',1,'DERECHO CIVIL Y DERECHO INTERNACIONAL PRIVADO',102,'Vigente',1),
	(80,1,'Administración de Empresas',2200001,6,'Formación Básica',1,'ADMINISTRACIÓN DE EMPRESAS Y COMERCIALIZACIÓN E INVESTIGACIÓN DE MERCADOS (MARKETING)',97,'Vigente',1),
	(81,1,'Fundamentos de Contabilidad',2200003,6,'Formación Básica',1,'CONTABILIDAD Y ECONOMÍA FINANCIERA',15,'Vigente',1),
	(82,2,'Macroeconomía',2200018,6,'Obligatoria',2,'ECONOMÍA E HISTORIA ECONÓMICA',105,'Vigente',1),
	(83,2,'Derecho de la Seguridad Social',2200013,12,'Obligatoria',2,'DERECHO DEL TRABAJO Y DE LA SEGURIDAD SOCIAL',20,'Vigente',1),
	(84,2,'Contabilidad Financiera II',2200020,6,'Obligatoria',2,'CONTABILIDAD Y ECONOMÍA FINANCIERA',15,'Vigente',1),
	(85,2,'Derecho del Trabajo',2200014,12,'Obligatoria',2,'DERECHO DEL TRABAJO Y DE LA SEGURIDAD SOCIAL',20,'Vigente',1),
	(86,2,'Estadística I',2200022,6,'Formación Básica',1,'ECONOMÍA APLICADA I',27,'Vigente',1),
	(87,2,'Dirección y Gestión de los Recursos Humanos',2200016,6,'Obligatoria',2,'ADMINISTRACIÓN DE EMPRESAS Y COMERCIALIZACIÓN E INVESTIGACIÓN DE MERCADOS (MARKETING)',97,'Vigente',1),
	(88,2,'Contabilidad Financiera I',2200015,6,'Obligatoria',2,'CONTABILIDAD Y ECONOMÍA FINANCIERA',15,'Vigente',1),
	(89,2,'Contabilidad de Costes',2200019,6,'Obligatoria',2,'CONTABILIDAD Y ECONOMÍA FINANCIERA',15,'Vigente',1),
	(90,2,'Economía del Trabajo',2200017,6,'Obligatoria',2,'ECONOMÍA E HISTORIA ECONÓMICA',105,'Vigente',1),
	(91,2,'Derecho Mercantil',2200021,6,'Formación Básica',1,'DERECHO MERCANTIL',103,'Vigente',1),
	(92,3,'Estadística II',2200025,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(93,3,'Prevención de Riesgos Laborales',2200023,12,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(94,3,'Matemáticas Financieras',2200033,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(95,3,'Contabilidad para la Gestión',2200029,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(96,3,'Derecho de la Protección Social',2200030,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(97,3,'Derecho Colectivo del Trabajo',2200024,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(98,3,'Sociología del Trabajo y de la Empresa',2200028,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(99,3,'Fundamentos de Dirección de Operaciones',2200026,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(100,3,'Economía y Mercado de Trabajo en España',2200031,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(101,3,'Marketing',2200032,6,'Formación Básica',1,'',NULL,'Pendiente de implantación',2),
	(102,3,'Sistemas y Mercados Financieros',2200027,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(103,4,'Gestión del Conflicto',2200038,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(104,4,'Valoración de Empresas',2200046,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(105,4,'Derecho Administrativo Laboral y Prestacional',2200042,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(106,4,'Sistemas Comparados de Relaciones Laborales',2200045,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(107,4,'Finanzas de la Empresa a Corto Plazo',2200043,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(108,4,'Organización del Trabajo',2200044,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(109,4,'Dirección y Organización',2200037,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(110,4,'Análisis de los Estados Financieros I',2200041,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(111,4,'Planificación Financiera de la Empresa',2200040,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(112,4,'Derecho del Empleo',2200034,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(113,4,'Mercados Financieros Derivados',2200039,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(114,4,'Dirección y Desarrollo de los Recursos Humanos',2200036,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(115,4,'Derecho Procesal Laboral',2200035,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(116,5,'Análisis de los Estados Financieros II',2200047,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(117,5,'Creación de Empresas',2200049,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(118,5,'Trabajo Fin de Grado',2200058,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(119,5,'Políticas de Desarrollo Local',2200051,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(120,5,'Consolidación de Estados Contables',2200048,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(121,5,'Responsabilidad Social y Ética Empresarial',2200057,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(122,5,'Derecho Financiero y Tributario',2200054,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(123,5,'Derecho Social Comunitario',2200055,6,'Obligatoria',2,'',NULL,'Vigente',1),
	(124,5,'Introducción a la Auditoría',2200056,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(125,5,'Prácticum',2200052,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(126,5,'Dirección Estratégica de los Recursos Humanos',2200050,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2),
	(127,5,'Sistemas de Información para las Finanzas y la Contabilidad',2200053,6,'Obligatoria',2,'',NULL,'Pendiente de implantación',2);

/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table asignaturas_estados
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asignaturas_estados`;

CREATE TABLE `asignaturas_estados` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `asignaturas_estados` WRITE;
/*!40000 ALTER TABLE `asignaturas_estados` DISABLE KEYS */;

INSERT INTO `asignaturas_estados` (`id`, `estado`)
VALUES
	(1,'Vigente'),
	(2,'Pendiente de implantación');

/*!40000 ALTER TABLE `asignaturas_estados` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table asignaturas_tipos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asignaturas_tipos`;

CREATE TABLE `asignaturas_tipos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `asignaturas_tipos` WRITE;
/*!40000 ALTER TABLE `asignaturas_tipos` DISABLE KEYS */;

INSERT INTO `asignaturas_tipos` (`id`, `tipo`)
VALUES
	(1,'Formación Básica'),
	(2,'Obligatoria'),
	(3,'Optativa'),
	(4,'Trabajo Fin de Grado');

/*!40000 ALTER TABLE `asignaturas_tipos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table centros
# ------------------------------------------------------------

DROP TABLE IF EXISTS `centros`;

CREATE TABLE `centros` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `id_centro_tipo` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `centros` WRITE;
/*!40000 ALTER TABLE `centros` DISABLE KEYS */;

INSERT INTO `centros` (`id`, `nombre`, `id_centro_tipo`)
VALUES
	(1,'Escuela Politécnica Superior',1),
	(2,'Escuela Técnica Superior de Arquitectura',1),
	(3,'Escuela Técnica Superior de Ingeniería',1),
	(4,'Escuela Técnica Superior de Ingeniería Agronómica',1),
	(5,'Escuela Técnica Superior de Ingeniería de Edificación',1),
	(6,'Escuela Técnica Superior de Ingeniería Informática',1),
	(7,'Facultad de Bellas Artes',1),
	(8,'Facultad de Biología',1),
	(9,'Facultad de Ciencias de la Educación',1),
	(10,'Facultad de Ciencias del Trabajo',1),
	(11,'Facultad de Ciencias Económicas y Empresariales',1),
	(12,'Facultad de Comunicación',1),
	(13,'Facultad de Derecho',1),
	(14,'Facultad de Enfermería, Fisioterapia y Podología',1),
	(15,'Facultad de Farmacia',1),
	(16,'Facultad de Filología',1),
	(17,'Facultad de Filosofía',1),
	(18,'Facultad de Física',1),
	(19,'Facultad de Geografía e Historia',1),
	(20,'Facultad de Matemáticas',1),
	(21,'Facultad de Medicina',1),
	(22,'Facultad de Odontología',1),
	(23,'Facultad de Psicología',1),
	(24,'Facultad de Química',1),
	(25,'Facultad de Turismo y Finanzas',1),
	(26,'Centro Internacional',1),
	(27,'Centro de Enfermería \"San Juan de Dios\"',2),
	(28,'Centro de Enfermería \"Virgen del Rocío\"',2),
	(29,'Centro de Enfermería de la Cruz Roja',2),
	(30,'Centro de Estudios Universitarios \"Cardenal Spínola\"',2),
	(31,'Centro de Estudios Universitarios \"Francisco Maldonado\"',2),
	(32,'Centro Universitario EUSA',2),
	(33,'Centro de Formación Permanente',3),
	(34,'Instituto de Ciencias de la Educación',3),
	(35,'Instituto de Idiomas',3);

/*!40000 ALTER TABLE `centros` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table centros_departamentos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `centros_departamentos`;

CREATE TABLE `centros_departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `centro_id` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



# Dump of table departamentos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `departamentos`;

CREATE TABLE `departamentos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;

INSERT INTO `departamentos` (`id`, `nombre`)
VALUES
	(1,'Análisis Económico y Economía Política'),
	(2,'Análisis Matemático'),
	(3,'Anatomía y Embriología Humana'),
	(4,'Antropología Social'),
	(5,'Biología Celular'),
	(6,'Bioquímica Médica y Biología Molecular'),
	(7,'Bioquímica Vegetal y Biología Molecular'),
	(8,'Bioquímica, Bromatología, Toxicología y Medicina Lega'),
	(9,'Ciencias Agroforestales'),
	(10,'Ciencias Jurídicas Básicas Derecho Romano, Historia del Derecho y Derecho Eclesiástico del Estado)'),
	(11,'Cirugía'),
	(12,'Comunicación Audiovisual, Publicidad y Literatura'),
	(13,'Construcciones Arquitectónicas I'),
	(14,'Construcciones Arquitectónicas II'),
	(15,'Contabilidad y Economía Financiera'),
	(16,'Cristalografía, Mineralogía y Química Agrícola'),
	(17,'Derecho Administrativo y Derecho Internacional Público y Relaciones Internacionales'),
	(18,'Derecho Civil e Internacional Privado'),
	(19,'Derecho Constitucional'),
	(20,'Derecho del Trabajo y de la Seguridad Social'),
	(21,'Derecho Financiero y Tributario'),
	(22,'Derecho Penal y Procesal'),
	(23,'Dibujo'),
	(24,'Didáctica de la Expresión Musical y Plástica'),
	(25,'Didactica de las Matemáticas'),
	(26,'Didáctica y Organización Escolar y M.I.D.E.'),
	(27,'Economía Aplicada I'),
	(28,'Economía Aplicada II'),
	(29,'Economía Aplicada III'),
	(30,'Economía Financiera y Dirección de Operaciones'),
	(31,'Ecuaciones Diferenciales y Análisis Numérico'),
	(32,'Educación Física y Deporte'),
	(33,'Electrónica y Electromagnetismo'),
	(34,'Enfermería'),
	(35,'Estadística e Investigación Operativa'),
	(36,'Estomatología'),
	(37,'Expresión Gráfica Arquitectónica'),
	(38,'Expresión Gráfica en Edificación'),
	(39,'Farmacia y Tecnología Farmacéutica'),
	(40,'Farmacología'),
	(41,'Farmacología, Pediatría y Radiología'),
	(42,'Filología Alemana'),
	(43,'Filología Francesa'),
	(44,'Filología Griega y Latina'),
	(45,'Filología Inglesa (Lengua Inglesa)'),
	(46,'Filología Inglesa (Literatura Inglesa y Norteamericana)'),
	(47,'Filología Inglesa, Literatura Inglesa y Norteamericana'),
	(48,'Filosofía del Derecho'),
	(49,'Filosofía y Lógica y Filosofía de la Ciencia'),
	(50,'Filosofía y Lógica y Filosofía de la Ciencia'),
	(51,'Física Aplicada I'),
	(52,'Física Aplicada I (EUP)'),
	(53,'Física Aplicada II'),
	(54,'Física Atómica, Molecular y Nuclear'),
	(55,'Física Atómica, Molecular y Nuclear'),
	(56,'Física de la Materia Condensada'),
	(57,'Fisiología Médica y Biofísica'),
	(58,'Fisiología y Zoología'),
	(59,'Fisioterapia'),
	(60,'Genética'),
	(61,'Geografía Física y Análisis Geográfico Regional'),
	(62,'Geometría y Topología'),
	(63,'Historia Antigua'),
	(64,'Historia Contemporánea'),
	(65,'Historia de América'),
	(66,'Historia del Arte'),
	(67,'Historia Medieval y Ciencias y Técnicas Historiográficas'),
	(68,'Historia Moderna'),
	(69,'Historia, Teoría y Composición Arquitectónica'),
	(70,'Ingeniería de Sistemas y Automática'),
	(71,'Ingeniería Gráfica'),
	(72,'Ingeniería Mecánica y de los Materiales'),
	(73,'Lengua Española, Lingüística y Teoría de la Literatura'),
	(74,'Matemática Aplicada I (sección EUITA)'),
	(75,'Medicina'),
	(76,'Métodos de Investigación y Diagnóstico en Educación'),
	(77,'Microbiología'),
	(78,'Microbiología y Parasitología'),
	(79,'Organización Industrial y Gestión de Empresas'),
	(80,'Organización Industrial y Gestión de Empresas II'),
	(81,'Periodismo I'),
	(82,'Periodismo II'),
	(83,'Personalidad, Evaluación y Tratamiento Psicológicos'),
	(84,'Pintura'),
	(85,'Prehistoria y Arqueología'),
	(86,'Proyectos Arquitectónicos'),
	(87,'Psicología Evolutiva y Educación'),
	(88,'Psicología Experimental'),
	(89,'Química Física'),
	(90,'Química Inorgánica'),
	(91,'Química Orgánica y Farmacéutica'),
	(92,'Sociología'),
	(93,'Teoría de la Señal y Comunicaciones'),
	(94,'Teoría e Historia de la Educación y Pedagogía Social'),
	(95,'Urbanística y Ordenación de Territorio'),
	(96,'Química Orgánica'),
	(97,'Administración de Empresas y Comercialización e Investigación de Mercados (Marketing)'),
	(98,'Bioquímica Médica y Biología Molecular e Inmunología'),
	(99,'Ciencias de la Computación e Inteligencia Artificial'),
	(100,'Citología e Histología Normal y Patológica'),
	(101,'Derecho Administrativo'),
	(102,'Derecho Civil y Derecho Internacional Privado'),
	(103,'Derecho Mercantil'),
	(104,'Didáctica y Organización Educativa'),
	(105,'Economía e Historia Económica'),
	(106,'Medicina Preventiva y Salud Pública'),
	(107,'Psicología Evolutiva y de la Educación'),
	(108,'Psicología Social');

/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gestores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gestores`;

CREATE TABLE `gestores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `persona_id` int(11) NOT NULL,
  `centro_id` int(11) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `gestores` WRITE;
/*!40000 ALTER TABLE `gestores` DISABLE KEYS */;

INSERT INTO `gestores` (`id`, `persona_id`, `centro_id`, `departamento_id`, `fecha_inicio`, `fecha_fin`)
VALUES
	(1,1,1,NULL,'2011-12-01 21:56:29','2014-12-05 21:56:37'),
	(2,2,2,NULL,'2011-12-01 21:56:29','2014-12-05 21:56:37'),
	(3,3,NULL,3,'2010-12-01 21:58:24','2014-12-11 21:58:31'),
	(4,4,NULL,2,NULL,NULL),
	(5,4,NULL,2,'2010-12-01 21:58:24','2014-12-11 21:58:31'),
	(6,4,NULL,2,NULL,NULL),
	(7,5,NULL,1,'2010-12-01 21:58:24','2014-12-11 21:58:31'),
	(8,4,NULL,2,NULL,NULL);

/*!40000 ALTER TABLE `gestores` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lineas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lineas`;

CREATE TABLE `lineas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `profesor_id` int(11) NOT NULL,
  `titulo_id` int(11) NOT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `plazas_totales` smallint(11) DEFAULT NULL,
  `plazas_restantes` smallint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `lineas` WRITE;
/*!40000 ALTER TABLE `lineas` DISABLE KEYS */;

INSERT INTO `lineas` (`id`, `nombre`, `profesor_id`, `titulo_id`, `departamento_id`, `area_id`, `plazas_totales`, `plazas_restantes`)
VALUES
	(1,'Lucha biológica contra el escarabajo rojo',1,1,5,4,4,4),
	(2,'El derecho en el Antiguo Egipto',2,2,6,3,2,2),
	(3,'Aplicación de productos químicos en retablos ñíÁ',8,1,NULL,1,NULL,NULL),
	(4,'AmpariÃ±o García y su influjo en la literatura española',3,3,NULL,2,NULL,NULL),
	(5,'El cultivo de la remolacha roja en el Bierzo',1,1,NULL,11,NULL,NULL),
	(6,'IngenierÃ­a medioambiental del plÃ¡stico reciclable',1,1,NULL,13,NULL,NULL),
	(7,'IngenierÃ­a medioambiental del plÃ¡stico reciclable',1,1,NULL,13,NULL,NULL),
	(8,'BiologÃ­a del escarabajo pelotero',1,1,NULL,1,NULL,NULL),
	(9,'La revolución verde en los combustibles',8,4,14,0,2,2),
	(10,'España Cañí',3,3,2,1,33,33),
	(11,'Fisiología del calamar español',3,3,2,1,22,22),
	(12,'',3,3,2,1,0,0);

/*!40000 ALTER TABLE `lineas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table personas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personas`;

CREATE TABLE `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nif` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `apellidos` varchar(254) CHARACTER SET utf8 NOT NULL,
  `correo` varchar(254) CHARACTER SET utf8 NOT NULL,
  `uvus` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clave` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `vinculo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sexo` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono_fijo` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `telefono_movil` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `domicilio` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `localidad` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `provincia` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `cp` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_alta` date NOT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;

INSERT INTO `personas` (`id`, `nif`, `nombre`, `apellidos`, `correo`, `uvus`, `clave`, `vinculo`, `sexo`, `fecha_nacimiento`, `telefono_fijo`, `telefono_movil`, `domicilio`, `localidad`, `provincia`, `cp`, `fecha_alta`, `fecha_modificacion`)
VALUES
	(1,'32456789G','Juan Antonio','Ruiz Rivas','juanan@us.es','juanan','amedio','2, EXALUMNO, PAS','V','1968-05-06','954487458','658291111',NULL,NULL,NULL,NULL,'2011-11-27',NULL),
	(2,'11111111H','Eva María','Martín Vázquez','evama@acme.es','evamartinez',NULL,'2, ALUMNO,PAS,','M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-11-30',NULL),
	(3,'33333333H','Mario','Fernández Gómez','mariof@us.es','mariof',NULL,'2, ALUMNO,PAS,','V',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-11-30',NULL),
	(4,'23456788A','Juan Antonio ','Rodriguez Vázquez','jarvaz@us.es','jarvaz','geohistoria','1, EXALUMNO, PAS','V',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-12-01',NULL),
	(5,'88833999Q','Vanesa','Becerra Sic','vansic@acme.es','varnaiz',NULL,'3, ALUMNO,PAS,PDI,','M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-12-01',NULL),
	(6,'12345678H','Vicente','Niño Repelente','vicente@alum.us.es','vicente','repelente','1, ALUMNO','V','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,'2011-12-05',NULL),
	(7,'87654321G','Ernesto','Mate Ensalsa','ernestomate@us.es','ernestomate','ensalsa',NULL,'V','0000-00-00',NULL,'666777888',NULL,NULL,NULL,NULL,'2011-11-15',NULL),
	(8,'56423626T','Santiago','Ramón y Cajal','donsantiago@us.es','donsantiago','ramonycajal',NULL,'V',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-12-01',NULL),
	(9,'32876377E','Albert','Einstein','einstein@us.es','einstein','e=mc2','1, PDI','V',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL),
	(10,'X88888888B','Lewin','Walter','walterlewin@mit.edu','walterlewin','noestoyloco',NULL,'V',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL),
	(11,'28587638H','Roberto','Cubilla','piragua@caribe.cu',NULL,'remarema',NULL,'V','1970-05-30',NULL,'006814578923',NULL,NULL,NULL,NULL,'2013-03-09',NULL),
	(12,'28906788J','Eulalia del Carmen','Martínez del Río','eulalia@alum.us.es','eulalia','eudelcar','1, ALUMNO','M','1975-11-21','954485678','658234567',NULL,NULL,NULL,NULL,'2013-03-09',NULL);

/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table profesores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profesores`;

CREATE TABLE `profesores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `persona_id` int(11) NOT NULL,
  `titulo_id` int(11) NOT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;

INSERT INTO `profesores` (`id`, `persona_id`, `titulo_id`, `departamento_id`, `area_id`, `fecha_inicio`, `fecha_fin`)
VALUES
	(1,8,3,4,6,'2011-11-27 00:00:00','2012-12-12 12:12:12'),
	(2,9,3,4,6,'2011-11-30 00:00:00','2012-12-12 12:12:12'),
	(3,8,1,4,4,'2011-12-01 21:53:54','2013-12-31 21:54:00'),
	(4,9,2,22,7,'2011-12-01 21:54:43','2013-12-05 21:54:48'),
	(5,1,1,4,4,'2011-12-01 21:53:54','2013-12-31 21:54:00'),
	(6,2,2,22,7,'2011-12-01 21:54:43','2013-12-05 21:54:48'),
	(7,3,1,4,4,'2011-12-01 21:53:54','2013-12-31 21:54:00'),
	(8,4,2,22,7,'2011-12-01 21:54:43','2013-12-05 21:54:48'),
	(9,5,2,22,7,'2011-12-01 21:54:43','2013-12-05 21:54:48');

/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table solicitudes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `solicitudes`;

CREATE TABLE `solicitudes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alumno_id` int(11) NOT NULL,
  `linea_id` int(11) NOT NULL,
  `prioridad` int(11) NOT NULL DEFAULT '0',
  `fecha_alta` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `solicitudes` WRITE;
/*!40000 ALTER TABLE `solicitudes` DISABLE KEYS */;

INSERT INTO `solicitudes` (`id`, `alumno_id`, `linea_id`, `prioridad`, `fecha_alta`)
VALUES
	(3,1,1,1,'2011-12-14 19:21:09'),
	(4,1,2,1,'2011-12-14 19:21:13'),
	(5,1,4,1,'2011-12-14 19:25:18'),
	(6,1,7,1,'2012-05-23 12:29:23');

/*!40000 ALTER TABLE `solicitudes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table titulos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `titulos`;

CREATE TABLE `titulos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `abreviatura` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `creditos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `titulos` WRITE;
/*!40000 ALTER TABLE `titulos` DISABLE KEYS */;

INSERT INTO `titulos` (`id`, `nombre`, `abreviatura`, `creditos`)
VALUES
	(1,'Grado de Biología','biologia',50.00),
	(2,'Grado de Matemáticas','mates',45.00),
	(3,'Grado de Historia','historia',40.00),
	(4,'Master en Historia de América Contemporanea','amecont',20.00),
	(5,'Master en Ingeniería Informática','informatica',100.00);

/*!40000 ALTER TABLE `titulos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
