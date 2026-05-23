-- MySQL dump 10.13  Distrib 9.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: db_geotour_cartagena
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL AUTO_INCREMENT,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `pais_origen` varchar(60) DEFAULT NULL,
  `email` varchar(90) NOT NULL,
  `telefono_contacto` varchar(20) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `numero_identificacion` varchar(20) NOT NULL,
  `tipo_identificacion` varchar(20) NOT NULL,
  `fecha_asignacion` datetime NOT NULL,
  PRIMARY KEY (`id_administrador`),
  KEY `fk_usuario_administrador` (`id_usuario`),
  CONSTRAINT `fk_usuario_administrador` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decisiones_moderaciones`
--

DROP TABLE IF EXISTS `decisiones_moderaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decisiones_moderaciones` (
  `id_decision` int(11) NOT NULL AUTO_INCREMENT,
  `id_resena` int(11) NOT NULL,
  `id_moderador` int(11) DEFAULT NULL,
  `id_administrador` int(11) DEFAULT NULL,
  `accion` varchar(30) NOT NULL,
  `motivo` varchar(80) DEFAULT NULL,
  `fecha_decision` datetime NOT NULL,
  `notificacion_enviada` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_decision`),
  KEY `fk_moderador_decision_moderacion` (`id_moderador`),
  KEY `fk_resena_decision_moderacion` (`id_resena`),
  KEY `fk_administrador_decision_moderacion` (`id_administrador`),
  CONSTRAINT `fk_administrador_decision_moderacion` FOREIGN KEY (`id_administrador`) REFERENCES `administrador` (`id_administrador`),
  CONSTRAINT `fk_moderador_decision_moderacion` FOREIGN KEY (`id_moderador`) REFERENCES `moderadores` (`id_moderador`),
  CONSTRAINT `fk_resena_decision_moderacion` FOREIGN KEY (`id_resena`) REFERENCES `resenas` (`id_resena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decisiones_moderaciones`
--

LOCK TABLES `decisiones_moderaciones` WRITE;
/*!40000 ALTER TABLE `decisiones_moderaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `decisiones_moderaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disponibilidades_entidades`
--

DROP TABLE IF EXISTS `disponibilidades_entidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disponibilidades_entidades` (
  `id_disponibilidad` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_registro_disponibilidad` datetime NOT NULL,
  `id_entidad` int(11) NOT NULL,
  `cupo_disponible` int(11) DEFAULT NULL,
  `fuente` varchar(50) NOT NULL,
  `horario_apertura` time NOT NULL,
  `horario_cierre` time NOT NULL,
  PRIMARY KEY (`id_disponibilidad`),
  KEY `fk_entidades_disponibilidades` (`id_entidad`),
  CONSTRAINT `fk_entidades_disponibilidades` FOREIGN KEY (`id_entidad`) REFERENCES `entidades_turisticas` (`id_entidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilidades_entidades`
--

LOCK TABLES `disponibilidades_entidades` WRITE;
/*!40000 ALTER TABLE `disponibilidades_entidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `disponibilidades_entidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidades_turisticas`
--

DROP TABLE IF EXISTS `entidades_turisticas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entidades_turisticas` (
  `id_entidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `direccion_completa` varchar(100) NOT NULL,
  `precio_orientativo` double DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  `url_sitio_web` varchar(2083) DEFAULT NULL,
  `fuente_registro` varchar(50) NOT NULL,
  `fecha_ultima_actualizacion` datetime DEFAULT NULL,
  `valoracion_promedio` double DEFAULT NULL,
  `id_solicitud_registro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_entidad`),
  KEY `fk_entidad_solicitud` (`id_solicitud_registro`),
  CONSTRAINT `fk_entidad_solicitud` FOREIGN KEY (`id_solicitud_registro`) REFERENCES `solicitudes_registros` (`id_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidades_turisticas`
--

LOCK TABLES `entidades_turisticas` WRITE;
/*!40000 ALTER TABLE `entidades_turisticas` DISABLE KEYS */;
/*!40000 ALTER TABLE `entidades_turisticas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interacciones_clientes`
--

DROP TABLE IF EXISTS `interacciones_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interacciones_clientes` (
  `id_interaccion` int(11) NOT NULL AUTO_INCREMENT,
  `id_turista` int(11) NOT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `id_entidad` int(11) DEFAULT NULL,
  `tipo_interaccion` varchar(50) NOT NULL,
  `fecha_interaccion` datetime NOT NULL,
  PRIMARY KEY (`id_interaccion`),
  KEY `fk_servicios_operadores_interacciones` (`id_servicio`),
  KEY `fk_turista_interaccion_cliente` (`id_turista`),
  CONSTRAINT `fk_servicios_operadores_interacciones` FOREIGN KEY (`id_servicio`) REFERENCES `servicios_operadores` (`id_servicio`),
  CONSTRAINT `fk_turista_interaccion_cliente` FOREIGN KEY (`id_turista`) REFERENCES `turistas` (`id_turista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interacciones_clientes`
--

LOCK TABLES `interacciones_clientes` WRITE;
/*!40000 ALTER TABLE `interacciones_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `interacciones_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_itinerario`
--

DROP TABLE IF EXISTS `items_itinerario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_itinerario` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_itinerario` int(11) NOT NULL,
  `id_entidad` int(11) DEFAULT NULL,
  `dia_numero` int(11) NOT NULL,
  `duracion_estimada_mnts` int(11) DEFAULT NULL,
  `orden_en_dia` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_item`),
  KEY `fk_item_itinerario_entidad` (`id_entidad`),
  KEY `fk_itinerario_items_itinerario` (`id_itinerario`),
  KEY `fk_servicio_operador_item_itinerario` (`id_servicio`),
  CONSTRAINT `fk_item_itinerario_entidad` FOREIGN KEY (`id_entidad`) REFERENCES `entidades_turisticas` (`id_entidad`),
  CONSTRAINT `fk_itinerario_items_itinerario` FOREIGN KEY (`id_itinerario`) REFERENCES `itinerarios` (`id_itinerario`),
  CONSTRAINT `fk_servicio_operador_item_itinerario` FOREIGN KEY (`id_servicio`) REFERENCES `servicios_operadores` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_itinerario`
--

LOCK TABLES `items_itinerario` WRITE;
/*!40000 ALTER TABLE `items_itinerario` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_itinerario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerarios`
--

DROP TABLE IF EXISTS `itinerarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerarios` (
  `id_itinerario` int(11) NOT NULL AUTO_INCREMENT,
  `id_turista` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`id_itinerario`),
  KEY `fk_turista_itinerario` (`id_turista`),
  CONSTRAINT `fk_turista_itinerario` FOREIGN KEY (`id_turista`) REFERENCES `turistas` (`id_turista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerarios`
--

LOCK TABLES `itinerarios` WRITE;
/*!40000 ALTER TABLE `itinerarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `itinerarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_actividades`
--

DROP TABLE IF EXISTS `logs_actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_actividades` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_actor` int(11) NOT NULL,
  `tipo_evento` varchar(80) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `modulo` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id_log`),
  KEY `fk_operador_log_actividades` (`id_actor`),
  CONSTRAINT `fk_administrador_logs_actividades` FOREIGN KEY (`id_actor`) REFERENCES `administrador` (`id_administrador`),
  CONSTRAINT `fk_moderador_log_actividades` FOREIGN KEY (`id_actor`) REFERENCES `moderadores` (`id_moderador`),
  CONSTRAINT `fk_operador_log_actividades` FOREIGN KEY (`id_actor`) REFERENCES `operadores_turisticos` (`id_operador`),
  CONSTRAINT `fk_turista_log_actividades` FOREIGN KEY (`id_actor`) REFERENCES `turistas` (`id_turista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_actividades`
--

LOCK TABLES `logs_actividades` WRITE;
/*!40000 ALTER TABLE `logs_actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderadores`
--

DROP TABLE IF EXISTS `moderadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderadores` (
  `id_moderador` int(11) NOT NULL AUTO_INCREMENT,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `total_decisiones_tomadas` int(11) DEFAULT NULL,
  `fecha_asignacion_rol` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `numero_identificacion` varchar(20) NOT NULL,
  `tipo_identificacion` varchar(20) NOT NULL,
  `email` varchar(90) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_moderador`),
  KEY `fk_usuario_moderador` (`id_usuario`),
  CONSTRAINT `fk_usuario_moderador` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderadores`
--

LOCK TABLES `moderadores` WRITE;
/*!40000 ALTER TABLE `moderadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `moderadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operadores_turisticos`
--

DROP TABLE IF EXISTS `operadores_turisticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operadores_turisticos` (
  `id_operador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_comercial` varchar(50) NOT NULL,
  `descripcion_negocio` text DEFAULT NULL,
  `telefono_contacto` varchar(20) NOT NULL,
  `direccion_referencia` varchar(120) DEFAULT NULL,
  `logo_url` varchar(2083) DEFAULT NULL,
  `imagen_portada_url` varchar(2083) DEFAULT NULL,
  `categoria_principal` varchar(50) DEFAULT NULL,
  `sitio_web` varchar(2083) DEFAULT NULL,
  `fecha_vinculacion` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_operador`),
  KEY `fk_usuario_operadoresturisticos` (`id_usuario`),
  CONSTRAINT `fk_usuario_operadoresturisticos` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operadores_turisticos`
--

LOCK TABLES `operadores_turisticos` WRITE;
/*!40000 ALTER TABLE `operadores_turisticos` DISABLE KEYS */;
/*!40000 ALTER TABLE `operadores_turisticos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametros_sistema`
--

DROP TABLE IF EXISTS `parametros_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parametros_sistema` (
  `id_parametro` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(100) NOT NULL,
  `valor_actual` varchar(255) DEFAULT NULL,
  `valor_predeterminado` varchar(255) DEFAULT NULL,
  `rango_min` varchar(50) DEFAULT NULL,
  `rango_max` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `id_administrador` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_parametro`),
  KEY `fk_administrador_parametros_sistema` (`id_administrador`),
  CONSTRAINT `fk_administrador_parametros_sistema` FOREIGN KEY (`id_administrador`) REFERENCES `administrador` (`id_administrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros_sistema`
--

LOCK TABLES `parametros_sistema` WRITE;
/*!40000 ALTER TABLE `parametros_sistema` DISABLE KEYS */;
/*!40000 ALTER TABLE `parametros_sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferencias_turistas`
--

DROP TABLE IF EXISTS `preferencias_turistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferencias_turistas` (
  `id_preferencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_turista` int(11) NOT NULL,
  `categoria_interes` varchar(50) NOT NULL,
  `presupuesto` double DEFAULT NULL,
  `num_estadias` int(11) DEFAULT NULL,
  `zona_referencias` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `ritmo_visita` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_preferencia`),
  KEY `fk_turista_preferencias_turistas` (`id_turista`),
  CONSTRAINT `fk_turista_preferencias_turistas` FOREIGN KEY (`id_turista`) REFERENCES `turistas` (`id_turista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferencias_turistas`
--

LOCK TABLES `preferencias_turistas` WRITE;
/*!40000 ALTER TABLE `preferencias_turistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferencias_turistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resenas`
--

DROP TABLE IF EXISTS `resenas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resenas` (
  `id_resena` int(11) NOT NULL AUTO_INCREMENT,
  `id_turista` int(11) NOT NULL,
  `id_entidad` int(11) DEFAULT NULL,
  `comentario` text NOT NULL,
  `calificacion` double DEFAULT NULL,
  `estado_moderacion` varchar(25) NOT NULL,
  `fecha_publicacion` datetime NOT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id_resena`),
  KEY `fk_entidades_resenas` (`id_entidad`),
  KEY `fk_turista_resena` (`id_turista`),
  CONSTRAINT `fk_entidades_resenas` FOREIGN KEY (`id_entidad`) REFERENCES `entidades_turisticas` (`id_entidad`),
  CONSTRAINT `fk_turista_resena` FOREIGN KEY (`id_turista`) REFERENCES `turistas` (`id_turista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resenas`
--

LOCK TABLES `resenas` WRITE;
/*!40000 ALTER TABLE `resenas` DISABLE KEYS */;
/*!40000 ALTER TABLE `resenas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_operadores`
--

DROP TABLE IF EXISTS `servicios_operadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_operadores` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_operador` int(11) NOT NULL,
  `nombre_servicio` varchar(80) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `descripcion` varchar(120) NOT NULL,
  `capacidad_maxima` int(11) DEFAULT NULL,
  `precio` double NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `fecha_publicacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `fk_operador_servicios` (`id_operador`),
  CONSTRAINT `fk_operador_servicios` FOREIGN KEY (`id_operador`) REFERENCES `operadores_turisticos` (`id_operador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_operadores`
--

LOCK TABLES `servicios_operadores` WRITE;
/*!40000 ALTER TABLE `servicios_operadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicios_operadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_registros`
--

DROP TABLE IF EXISTS `solicitudes_registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_registros` (
  `id_solicitud` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_establecimiento` varchar(150) NOT NULL,
  `categoria` varchar(40) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url_sitio_web` varchar(2083) DEFAULT NULL,
  `descripcion_establecimiento` text NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  `horario_apertura` time NOT NULL,
  `horario_cierre` time NOT NULL,
  `numero_radicado` varchar(50) NOT NULL,
  `id_administrador` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_solicitud`),
  UNIQUE KEY `numero_radicado` (`numero_radicado`),
  KEY `fk_administrador_solicitudes_registros` (`id_administrador`),
  CONSTRAINT `fk_administrador_solicitudes_registros` FOREIGN KEY (`id_administrador`) REFERENCES `administrador` (`id_administrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_registros`
--

LOCK TABLES `solicitudes_registros` WRITE;
/*!40000 ALTER TABLE `solicitudes_registros` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turista_serviciooperador`
--

DROP TABLE IF EXISTS `turista_serviciooperador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turista_serviciooperador` (
  `id_servicio_turista` int(11) NOT NULL AUTO_INCREMENT,
  `id_turista` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha_seleccion` datetime NOT NULL,
  `fecha_visita_programada` datetime NOT NULL,
  PRIMARY KEY (`id_servicio_turista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turista_serviciooperador`
--

LOCK TABLES `turista_serviciooperador` WRITE;
/*!40000 ALTER TABLE `turista_serviciooperador` DISABLE KEYS */;
/*!40000 ALTER TABLE `turista_serviciooperador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turistas`
--

DROP TABLE IF EXISTS `turistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turistas` (
  `id_turista` int(11) NOT NULL AUTO_INCREMENT,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `pais_origen` varchar(50) DEFAULT NULL,
  `ciudad_origen` varchar(60) DEFAULT NULL,
  `fecha_llegada` date NOT NULL,
  `fecha_salida` date DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `foto_perfil_url` varchar(2083) DEFAULT NULL,
  `numero_identificacion` varchar(20) NOT NULL,
  `tipo_identificacion` varchar(20) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_turista`),
  KEY `fk_usuario_turista` (`id_usuario`),
  CONSTRAINT `fk_usuario_turista` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turistas`
--

LOCK TABLES `turistas` WRITE;
/*!40000 ALTER TABLE `turistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `turistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `constrasena` varchar(255) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_ultima_sesion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-23 15:37:15
