-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: atu_orienta
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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunidades`
--

DROP TABLE IF EXISTS `comunidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunidades` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comunidades_nombre_unique` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunidades`
--

LOCK TABLES `comunidades` WRITE;
/*!40000 ALTER TABLE `comunidades` DISABLE KEYS */;
INSERT INTO `comunidades` VALUES (1,'Andalucía','2026-06-08 05:20:47','2026-06-08 05:20:47'),(2,'Aragón','2026-06-08 05:20:47','2026-06-08 05:20:47'),(3,'Asturias','2026-06-08 05:20:47','2026-06-08 05:20:47'),(4,'Illes Balears','2026-06-08 05:20:47','2026-06-08 05:20:47'),(5,'Canarias','2026-06-08 05:20:47','2026-06-08 05:20:47'),(6,'Cantabria','2026-06-08 05:20:47','2026-06-08 05:20:47'),(7,'Castilla-La Mancha','2026-06-08 05:20:47','2026-06-08 05:20:47'),(8,'Castilla y León','2026-06-08 05:20:47','2026-06-08 05:20:47'),(9,'Cataluña','2026-06-08 05:20:47','2026-06-08 05:20:47'),(10,'Comunitat Valenciana','2026-06-08 05:20:47','2026-06-08 05:20:47'),(11,'Extremadura','2026-06-08 05:20:47','2026-06-08 05:20:47'),(12,'Galicia','2026-06-08 05:20:48','2026-06-08 05:20:48'),(13,'Madrid','2026-06-08 05:20:48','2026-06-08 05:20:48'),(14,'Murcia','2026-06-08 05:20:48','2026-06-08 05:20:48'),(15,'Navarra','2026-06-08 05:20:48','2026-06-08 05:20:48'),(16,'País Vasco','2026-06-08 05:20:48','2026-06-08 05:20:48'),(17,'La Rioja','2026-06-08 05:20:48','2026-06-08 05:20:48');
/*!40000 ALTER TABLE `comunidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `area` varchar(255) NOT NULL,
  `modalidad` enum('online','presencial','mixta') NOT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `nivel` enum('basico','medio','avanzado') NOT NULL,
  `situacion_permitida` varchar(255) NOT NULL,
  `requisitos` text DEFAULT NULL,
  `enlace` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Desarrollo de aplicaciones web con PHP','Curso orientado al desarrollo web con PHP, Laravel, MySQL y buenas prácticas.','informatica','online','Valladolid','Valladolid','medio','desempleado,trabajador','Conocimientos básicos de programación.','https://cursosatu.grupoatu.com',1,'2026-06-08 05:20:48','2026-06-08 05:20:48'),(2,'Administración de bases de datos MySQL','Aprende a diseñar, administrar y consultar bases de datos relacionales.','informatica','presencial','Burgos','Burgos','medio','desempleado,trabajador,autonomo','Conocimientos básicos de informática.','https://cursosatu.grupoatu.com',1,'2026-06-08 05:20:48','2026-06-08 05:20:48'),(3,'Gestión logística y almacén','Curso para mejorar competencias en logística, almacén y distribución.','logistica','mixta','León','León','basico','desempleado,trabajador,erte','No se requieren conocimientos previos.','https://cursosatu.grupoatu.com',1,'2026-06-08 05:20:48','2026-06-08 05:20:48'),(4,'Ofimática avanzada','Curso de herramientas ofimáticas para mejorar la empleabilidad.','administracion','online','Palencia','Palencia','basico','desempleado,trabajador,autonomo,erte','Manejo básico del ordenador.','https://cursosatu.grupoatu.com',1,'2026-06-08 05:20:48','2026-06-08 05:20:48'),(5,'Ciberseguridad básica','Introducción a la seguridad informática, protección de datos y buenas prácticas digitales.','informatica','online','Salamanca','Salamanca','basico','desempleado,trabajador','Interés por la tecnología.','https://cursosatu.grupoatu.com',1,'2026-06-08 05:20:48','2026-06-08 05:20:48');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidades` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `provincia_id` bigint(20) unsigned NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `localidades_provincia_id_foreign` (`provincia_id`),
  CONSTRAINT `localidades_provincia_id_foreign` FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,1,'Almería','2026-06-08 05:20:47','2026-06-08 05:20:47'),(2,1,'El Ejido','2026-06-08 05:20:47','2026-06-08 05:20:47'),(3,1,'Roquetas de Mar','2026-06-08 05:20:47','2026-06-08 05:20:47'),(4,2,'Cádiz','2026-06-08 05:20:47','2026-06-08 05:20:47'),(5,2,'Jerez de la Frontera','2026-06-08 05:20:47','2026-06-08 05:20:47'),(6,2,'Algeciras','2026-06-08 05:20:47','2026-06-08 05:20:47'),(7,3,'Córdoba','2026-06-08 05:20:47','2026-06-08 05:20:47'),(8,3,'Lucena','2026-06-08 05:20:47','2026-06-08 05:20:47'),(9,3,'Puente Genil','2026-06-08 05:20:47','2026-06-08 05:20:47'),(10,4,'Granada','2026-06-08 05:20:47','2026-06-08 05:20:47'),(11,4,'Motril','2026-06-08 05:20:47','2026-06-08 05:20:47'),(12,4,'Armilla','2026-06-08 05:20:47','2026-06-08 05:20:47'),(13,5,'Huelva','2026-06-08 05:20:47','2026-06-08 05:20:47'),(14,5,'Lepe','2026-06-08 05:20:47','2026-06-08 05:20:47'),(15,5,'Almonte','2026-06-08 05:20:47','2026-06-08 05:20:47'),(16,6,'Jaén','2026-06-08 05:20:47','2026-06-08 05:20:47'),(17,6,'Linares','2026-06-08 05:20:47','2026-06-08 05:20:47'),(18,6,'Úbeda','2026-06-08 05:20:47','2026-06-08 05:20:47'),(19,7,'Málaga','2026-06-08 05:20:47','2026-06-08 05:20:47'),(20,7,'Marbella','2026-06-08 05:20:47','2026-06-08 05:20:47'),(21,7,'Vélez-Málaga','2026-06-08 05:20:47','2026-06-08 05:20:47'),(22,8,'Sevilla','2026-06-08 05:20:47','2026-06-08 05:20:47'),(23,8,'Dos Hermanas','2026-06-08 05:20:47','2026-06-08 05:20:47'),(24,8,'Alcalá de Guadaíra','2026-06-08 05:20:47','2026-06-08 05:20:47'),(25,9,'Huesca','2026-06-08 05:20:47','2026-06-08 05:20:47'),(26,9,'Barbastro','2026-06-08 05:20:47','2026-06-08 05:20:47'),(27,9,'Monzón','2026-06-08 05:20:47','2026-06-08 05:20:47'),(28,10,'Teruel','2026-06-08 05:20:47','2026-06-08 05:20:47'),(29,10,'Alcañiz','2026-06-08 05:20:47','2026-06-08 05:20:47'),(30,10,'Andorra','2026-06-08 05:20:47','2026-06-08 05:20:47'),(31,11,'Zaragoza','2026-06-08 05:20:47','2026-06-08 05:20:47'),(32,11,'Calatayud','2026-06-08 05:20:47','2026-06-08 05:20:47'),(33,11,'Utebo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(34,12,'Oviedo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(35,12,'Gijón','2026-06-08 05:20:47','2026-06-08 05:20:47'),(36,12,'Avilés','2026-06-08 05:20:47','2026-06-08 05:20:47'),(37,13,'Palma','2026-06-08 05:20:47','2026-06-08 05:20:47'),(38,13,'Ibiza','2026-06-08 05:20:47','2026-06-08 05:20:47'),(39,13,'Manacor','2026-06-08 05:20:47','2026-06-08 05:20:47'),(40,14,'Las Palmas de Gran Canaria','2026-06-08 05:20:47','2026-06-08 05:20:47'),(41,14,'Telde','2026-06-08 05:20:47','2026-06-08 05:20:47'),(42,14,'Arrecife','2026-06-08 05:20:47','2026-06-08 05:20:47'),(43,15,'Santa Cruz de Tenerife','2026-06-08 05:20:47','2026-06-08 05:20:47'),(44,15,'La Laguna','2026-06-08 05:20:47','2026-06-08 05:20:47'),(45,15,'Arona','2026-06-08 05:20:47','2026-06-08 05:20:47'),(46,16,'Santander','2026-06-08 05:20:47','2026-06-08 05:20:47'),(47,16,'Torrelavega','2026-06-08 05:20:47','2026-06-08 05:20:47'),(48,16,'Camargo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(49,17,'Albacete','2026-06-08 05:20:47','2026-06-08 05:20:47'),(50,17,'Hellín','2026-06-08 05:20:47','2026-06-08 05:20:47'),(51,17,'Villarrobledo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(52,18,'Ciudad Real','2026-06-08 05:20:47','2026-06-08 05:20:47'),(53,18,'Puertollano','2026-06-08 05:20:47','2026-06-08 05:20:47'),(54,18,'Tomelloso','2026-06-08 05:20:47','2026-06-08 05:20:47'),(55,19,'Cuenca','2026-06-08 05:20:47','2026-06-08 05:20:47'),(56,19,'Tarancón','2026-06-08 05:20:47','2026-06-08 05:20:47'),(57,19,'San Clemente','2026-06-08 05:20:47','2026-06-08 05:20:47'),(58,20,'Guadalajara','2026-06-08 05:20:47','2026-06-08 05:20:47'),(59,20,'Azuqueca de Henares','2026-06-08 05:20:47','2026-06-08 05:20:47'),(60,20,'Sigüenza','2026-06-08 05:20:47','2026-06-08 05:20:47'),(61,21,'Toledo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(62,21,'Talavera de la Reina','2026-06-08 05:20:47','2026-06-08 05:20:47'),(63,21,'Illescas','2026-06-08 05:20:47','2026-06-08 05:20:47'),(64,22,'Ávila','2026-06-08 05:20:47','2026-06-08 05:20:47'),(65,22,'Arévalo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(66,22,'Arenas de San Pedro','2026-06-08 05:20:47','2026-06-08 05:20:47'),(67,23,'Burgos','2026-06-08 05:20:47','2026-06-08 05:20:47'),(68,23,'Aranda de Duero','2026-06-08 05:20:47','2026-06-08 05:20:47'),(69,23,'Miranda de Ebro','2026-06-08 05:20:47','2026-06-08 05:20:47'),(70,24,'León','2026-06-08 05:20:47','2026-06-08 05:20:47'),(71,24,'Ponferrada','2026-06-08 05:20:47','2026-06-08 05:20:47'),(72,24,'San Andrés del Rabanedo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(73,25,'Palencia','2026-06-08 05:20:47','2026-06-08 05:20:47'),(74,25,'Aguilar de Campoo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(75,25,'Venta de Baños','2026-06-08 05:20:47','2026-06-08 05:20:47'),(76,26,'Salamanca','2026-06-08 05:20:47','2026-06-08 05:20:47'),(77,26,'Béjar','2026-06-08 05:20:47','2026-06-08 05:20:47'),(78,26,'Ciudad Rodrigo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(79,27,'Segovia','2026-06-08 05:20:47','2026-06-08 05:20:47'),(80,27,'Cuéllar','2026-06-08 05:20:47','2026-06-08 05:20:47'),(81,27,'El Espinar','2026-06-08 05:20:47','2026-06-08 05:20:47'),(82,28,'Soria','2026-06-08 05:20:47','2026-06-08 05:20:47'),(83,28,'Almazán','2026-06-08 05:20:47','2026-06-08 05:20:47'),(84,28,'El Burgo de Osma','2026-06-08 05:20:47','2026-06-08 05:20:47'),(85,29,'Valladolid','2026-06-08 05:20:47','2026-06-08 05:20:47'),(86,29,'Laguna de Duero','2026-06-08 05:20:47','2026-06-08 05:20:47'),(87,29,'Medina del Campo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(88,30,'Zamora','2026-06-08 05:20:47','2026-06-08 05:20:47'),(89,30,'Benavente','2026-06-08 05:20:47','2026-06-08 05:20:47'),(90,30,'Toro','2026-06-08 05:20:47','2026-06-08 05:20:47'),(91,31,'Barcelona','2026-06-08 05:20:47','2026-06-08 05:20:47'),(92,31,'Hospitalet de Llobregat','2026-06-08 05:20:47','2026-06-08 05:20:47'),(93,31,'Badalona','2026-06-08 05:20:47','2026-06-08 05:20:47'),(94,32,'Girona','2026-06-08 05:20:47','2026-06-08 05:20:47'),(95,32,'Figueres','2026-06-08 05:20:47','2026-06-08 05:20:47'),(96,32,'Blanes','2026-06-08 05:20:47','2026-06-08 05:20:47'),(97,33,'Lleida','2026-06-08 05:20:47','2026-06-08 05:20:47'),(98,33,'Balaguer','2026-06-08 05:20:47','2026-06-08 05:20:47'),(99,33,'Tàrrega','2026-06-08 05:20:47','2026-06-08 05:20:47'),(100,34,'Tarragona','2026-06-08 05:20:47','2026-06-08 05:20:47'),(101,34,'Reus','2026-06-08 05:20:47','2026-06-08 05:20:47'),(102,34,'Tortosa','2026-06-08 05:20:47','2026-06-08 05:20:47'),(103,35,'Alicante','2026-06-08 05:20:47','2026-06-08 05:20:47'),(104,35,'Elche','2026-06-08 05:20:47','2026-06-08 05:20:47'),(105,35,'Benidorm','2026-06-08 05:20:47','2026-06-08 05:20:47'),(106,36,'Castellón de la Plana','2026-06-08 05:20:47','2026-06-08 05:20:47'),(107,36,'Vila-real','2026-06-08 05:20:47','2026-06-08 05:20:47'),(108,36,'Burriana','2026-06-08 05:20:47','2026-06-08 05:20:47'),(109,37,'Valencia','2026-06-08 05:20:47','2026-06-08 05:20:47'),(110,37,'Torrent','2026-06-08 05:20:47','2026-06-08 05:20:47'),(111,37,'Gandía','2026-06-08 05:20:47','2026-06-08 05:20:47'),(112,38,'Badajoz','2026-06-08 05:20:48','2026-06-08 05:20:48'),(113,38,'Mérida','2026-06-08 05:20:48','2026-06-08 05:20:48'),(114,38,'Don Benito','2026-06-08 05:20:48','2026-06-08 05:20:48'),(115,39,'Cáceres','2026-06-08 05:20:48','2026-06-08 05:20:48'),(116,39,'Plasencia','2026-06-08 05:20:48','2026-06-08 05:20:48'),(117,39,'Trujillo','2026-06-08 05:20:48','2026-06-08 05:20:48'),(118,40,'A Coruña','2026-06-08 05:20:48','2026-06-08 05:20:48'),(119,40,'Santiago de Compostela','2026-06-08 05:20:48','2026-06-08 05:20:48'),(120,40,'Ferrol','2026-06-08 05:20:48','2026-06-08 05:20:48'),(121,41,'Lugo','2026-06-08 05:20:48','2026-06-08 05:20:48'),(122,41,'Monforte de Lemos','2026-06-08 05:20:48','2026-06-08 05:20:48'),(123,41,'Vilalba','2026-06-08 05:20:48','2026-06-08 05:20:48'),(124,42,'Ourense','2026-06-08 05:20:48','2026-06-08 05:20:48'),(125,42,'Verín','2026-06-08 05:20:48','2026-06-08 05:20:48'),(126,42,'O Barco de Valdeorras','2026-06-08 05:20:48','2026-06-08 05:20:48'),(127,43,'Pontevedra','2026-06-08 05:20:48','2026-06-08 05:20:48'),(128,43,'Vigo','2026-06-08 05:20:48','2026-06-08 05:20:48'),(129,43,'Vilagarcía de Arousa','2026-06-08 05:20:48','2026-06-08 05:20:48'),(130,44,'Madrid','2026-06-08 05:20:48','2026-06-08 05:20:48'),(131,44,'Alcalá de Henares','2026-06-08 05:20:48','2026-06-08 05:20:48'),(132,44,'Getafe','2026-06-08 05:20:48','2026-06-08 05:20:48'),(133,45,'Murcia','2026-06-08 05:20:48','2026-06-08 05:20:48'),(134,45,'Cartagena','2026-06-08 05:20:48','2026-06-08 05:20:48'),(135,45,'Lorca','2026-06-08 05:20:48','2026-06-08 05:20:48'),(136,46,'Pamplona','2026-06-08 05:20:48','2026-06-08 05:20:48'),(137,46,'Tudela','2026-06-08 05:20:48','2026-06-08 05:20:48'),(138,46,'Estella','2026-06-08 05:20:48','2026-06-08 05:20:48'),(139,47,'Vitoria-Gasteiz','2026-06-08 05:20:48','2026-06-08 05:20:48'),(140,47,'Llodio','2026-06-08 05:20:48','2026-06-08 05:20:48'),(141,47,'Amurrio','2026-06-08 05:20:48','2026-06-08 05:20:48'),(142,48,'Bilbao','2026-06-08 05:20:48','2026-06-08 05:20:48'),(143,48,'Barakaldo','2026-06-08 05:20:48','2026-06-08 05:20:48'),(144,48,'Getxo','2026-06-08 05:20:48','2026-06-08 05:20:48'),(145,49,'San Sebastián','2026-06-08 05:20:48','2026-06-08 05:20:48'),(146,49,'Irun','2026-06-08 05:20:48','2026-06-08 05:20:48'),(147,49,'Eibar','2026-06-08 05:20:48','2026-06-08 05:20:48'),(148,50,'Logroño','2026-06-08 05:20:48','2026-06-08 05:20:48'),(149,50,'Calahorra','2026-06-08 05:20:48','2026-06-08 05:20:48'),(150,50,'Arnedo','2026-06-08 05:20:48','2026-06-08 05:20:48');
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_05_28_111609_create_cursos_table',1),(5,'2026_06_05_131300_create_comunidades_table',1),(6,'2026_06_05_131335_create_provincias_table',1),(7,'2026_06_05_131346_create_localidades_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comunidad_id` bigint(20) unsigned NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `provincias_comunidad_id_foreign` (`comunidad_id`),
  CONSTRAINT `provincias_comunidad_id_foreign` FOREIGN KEY (`comunidad_id`) REFERENCES `comunidades` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,1,'Almería','2026-06-08 05:20:47','2026-06-08 05:20:47'),(2,1,'Cádiz','2026-06-08 05:20:47','2026-06-08 05:20:47'),(3,1,'Córdoba','2026-06-08 05:20:47','2026-06-08 05:20:47'),(4,1,'Granada','2026-06-08 05:20:47','2026-06-08 05:20:47'),(5,1,'Huelva','2026-06-08 05:20:47','2026-06-08 05:20:47'),(6,1,'Jaén','2026-06-08 05:20:47','2026-06-08 05:20:47'),(7,1,'Málaga','2026-06-08 05:20:47','2026-06-08 05:20:47'),(8,1,'Sevilla','2026-06-08 05:20:47','2026-06-08 05:20:47'),(9,2,'Huesca','2026-06-08 05:20:47','2026-06-08 05:20:47'),(10,2,'Teruel','2026-06-08 05:20:47','2026-06-08 05:20:47'),(11,2,'Zaragoza','2026-06-08 05:20:47','2026-06-08 05:20:47'),(12,3,'Asturias','2026-06-08 05:20:47','2026-06-08 05:20:47'),(13,4,'Illes Balears','2026-06-08 05:20:47','2026-06-08 05:20:47'),(14,5,'Las Palmas','2026-06-08 05:20:47','2026-06-08 05:20:47'),(15,5,'Santa Cruz de Tenerife','2026-06-08 05:20:47','2026-06-08 05:20:47'),(16,6,'Cantabria','2026-06-08 05:20:47','2026-06-08 05:20:47'),(17,7,'Albacete','2026-06-08 05:20:47','2026-06-08 05:20:47'),(18,7,'Ciudad Real','2026-06-08 05:20:47','2026-06-08 05:20:47'),(19,7,'Cuenca','2026-06-08 05:20:47','2026-06-08 05:20:47'),(20,7,'Guadalajara','2026-06-08 05:20:47','2026-06-08 05:20:47'),(21,7,'Toledo','2026-06-08 05:20:47','2026-06-08 05:20:47'),(22,8,'Ávila','2026-06-08 05:20:47','2026-06-08 05:20:47'),(23,8,'Burgos','2026-06-08 05:20:47','2026-06-08 05:20:47'),(24,8,'León','2026-06-08 05:20:47','2026-06-08 05:20:47'),(25,8,'Palencia','2026-06-08 05:20:47','2026-06-08 05:20:47'),(26,8,'Salamanca','2026-06-08 05:20:47','2026-06-08 05:20:47'),(27,8,'Segovia','2026-06-08 05:20:47','2026-06-08 05:20:47'),(28,8,'Soria','2026-06-08 05:20:47','2026-06-08 05:20:47'),(29,8,'Valladolid','2026-06-08 05:20:47','2026-06-08 05:20:47'),(30,8,'Zamora','2026-06-08 05:20:47','2026-06-08 05:20:47'),(31,9,'Barcelona','2026-06-08 05:20:47','2026-06-08 05:20:47'),(32,9,'Girona','2026-06-08 05:20:47','2026-06-08 05:20:47'),(33,9,'Lleida','2026-06-08 05:20:47','2026-06-08 05:20:47'),(34,9,'Tarragona','2026-06-08 05:20:47','2026-06-08 05:20:47'),(35,10,'Alicante','2026-06-08 05:20:47','2026-06-08 05:20:47'),(36,10,'Castellón','2026-06-08 05:20:47','2026-06-08 05:20:47'),(37,10,'Valencia','2026-06-08 05:20:47','2026-06-08 05:20:47'),(38,11,'Badajoz','2026-06-08 05:20:47','2026-06-08 05:20:47'),(39,11,'Cáceres','2026-06-08 05:20:48','2026-06-08 05:20:48'),(40,12,'A Coruña','2026-06-08 05:20:48','2026-06-08 05:20:48'),(41,12,'Lugo','2026-06-08 05:20:48','2026-06-08 05:20:48'),(42,12,'Ourense','2026-06-08 05:20:48','2026-06-08 05:20:48'),(43,12,'Pontevedra','2026-06-08 05:20:48','2026-06-08 05:20:48'),(44,13,'Madrid','2026-06-08 05:20:48','2026-06-08 05:20:48'),(45,14,'Murcia','2026-06-08 05:20:48','2026-06-08 05:20:48'),(46,15,'Navarra','2026-06-08 05:20:48','2026-06-08 05:20:48'),(47,16,'Álava','2026-06-08 05:20:48','2026-06-08 05:20:48'),(48,16,'Bizkaia','2026-06-08 05:20:48','2026-06-08 05:20:48'),(49,16,'Gipuzkoa','2026-06-08 05:20:48','2026-06-08 05:20:48'),(50,17,'La Rioja','2026-06-08 05:20:48','2026-06-08 05:20:48');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('Wfiwt9YtdBMUhhbE6EFWDsjfPTw2uqgAPLaDBEWe',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUU3bmdoTU1vUFN4NnlTaXlJenNWRzdjU1FMNHcydWJzTUVoSlFJSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jdXJzb3MvMS9hc2lzdGVudGUiO3M6NToicm91dGUiO3M6MTY6ImN1cnNvcy5hc2lzdGVudGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1780917315);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'atu_orienta'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-08 14:01:45
