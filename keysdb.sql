-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: keysdb
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add categoria',7,'add_categoria'),(26,'Can change categoria',7,'change_categoria'),(27,'Can delete categoria',7,'delete_categoria'),(28,'Can view categoria',7,'view_categoria'),(29,'Can add item',8,'add_item'),(30,'Can change item',8,'change_item'),(31,'Can delete item',8,'delete_item'),(32,'Can view item',8,'view_item');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$93ledFyw1vzHGKy3PIt0HZ$OqPccwAuqnbH7DJWQx5h9AIhrMv5E7Bzh/XYlTvV1n0=','2023-05-28 18:30:21.092755',1,'tqmm','','','wesnetwork@keybyme.com',1,1,'2023-05-24 23:28:57.093594');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'I.T.'),(2,'SoBran'),(3,'Personal'),(4,'TV & Movies'),(5,'Mis Cuentas'),(6,'Laser & Sublimation'),(7,'Health'),(8,'Chess'),(9,'Mimi'),(10,'Alita'),(11,'Luz y Vida'),(12,'CSS'),(13,'GPS');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-05-25 00:14:34.357382','1','I.T.',1,'[{\"added\": {}}]',7,1),(2,'2023-05-25 00:14:45.638824','1','https://account.proton.me/login keybyme@proton.me 23Correo## I.T. proton.me email',1,'[{\"added\": {}}]',8,1),(3,'2023-05-25 19:18:30.089964','2','SoBran',1,'[{\"added\": {}}]',7,1),(4,'2023-05-25 19:18:46.292510','2','https://payrollservicesllc.myisolved.com/UserLogin.aspx wesnetwork@keybyme.com 23Nomina##$$ SoBran Payroll',1,'[{\"added\": {}}]',8,1),(5,'2023-05-25 19:20:00.257038','3','https://timecard.ues.com/unanet/action/login 21-9255 last 4 ss SoBran time card',1,'[{\"added\": {}}]',8,1),(6,'2023-05-25 19:56:47.207297','3','Personal',1,'[{\"added\": {}}]',7,1),(7,'2023-05-25 19:56:49.022961','4','https://my.equifax.com/membercenter/#/login wesnetwork@keybyme.com 23Dicom$$ Personal Equifax',1,'[{\"added\": {}}]',8,1),(8,'2023-05-25 19:57:47.518951','4','TV & Movies',1,'[{\"added\": {}}]',7,1),(9,'2023-05-25 19:57:50.200899','5','https://ww8.0123movie.net/list/movies.html None None TV & Movies 123Movies',1,'[{\"added\": {}}]',8,1),(10,'2023-05-25 19:58:13.586019','6','https://ustvgo.kissreport.com/ None None TV & Movies https://ustvgo.kissreport.com/',1,'[{\"added\": {}}]',8,1),(11,'2023-05-25 19:58:42.072433','7','https://ustvgo.kissreport.com/category/movie/ None None TV & Movies Movies',1,'[{\"added\": {}}]',8,1),(12,'2023-05-25 19:59:07.445490','8','https://ustvgo.kissreport.com/fox-news-ustv247/ None None TV & Movies Fox News',1,'[{\"added\": {}}]',8,1),(13,'2023-05-25 19:59:34.982736','9','https://ustvgo.kissreport.com/fox-5-dc-the-first-5-washington-dc/ None None TV & Movies Fox 5 DC',1,'[{\"added\": {}}]',8,1),(14,'2023-05-25 20:04:24.701878','10','https://ustvgo.kissreport.com/univision/ None None TV & Movies Univision',1,'[{\"added\": {}}]',8,1),(15,'2023-05-25 20:04:47.038095','11','https://ustvgo.kissreport.com/telemundo/ None None TV & Movies Telemundo',1,'[{\"added\": {}}]',8,1),(16,'2023-05-25 20:05:13.069298','12','https://www.twitch.tv/ None None TV & Movies twitch.tv',1,'[{\"added\": {}}]',8,1),(17,'2023-05-25 20:06:25.166235','5','Mis Cuentas',1,'[{\"added\": {}}]',7,1),(18,'2023-05-25 20:06:36.754249','13','https://www.amazon.com/ wesnetwork@gmail.com pass1212 Mis Cuentas Amazon',1,'[{\"added\": {}}]',8,1),(19,'2023-05-25 20:07:43.483004','6','Laser & Sublimation',1,'[{\"added\": {}}]',7,1),(20,'2023-05-25 20:07:55.037519','14','https://www.jdsindustries.com/ user48439 pass1234 Laser & Sublimation JDS',1,'[{\"added\": {}}]',8,1),(21,'2023-05-25 20:09:00.812006','15','https://www.apple.com/itunes/?cid=OAS-US-DOMAINS-itunes.com wesnetwork@keybyme.com Msw$9669$$ Personal itunes',1,'[{\"added\": {}}]',8,1),(22,'2023-05-25 20:09:52.871909','16','www.microsoft.com jorge@wolff.cl {]8%?PEx77cel##1erdel Personal Cuenta de Microsoft',1,'[{\"added\": {}}]',8,1),(23,'2023-05-25 20:11:20.987862','17','https://dash.cloudflare.com/login wesnetwork@gmail.com Casa78## I.T. Cloudflare',1,'[{\"added\": {}}]',8,1),(24,'2023-05-25 20:12:06.741748','18','https://auth.planetscale.com/sign-in?return_to=%2F i7wgixoypxlvzlg60u7l pscale_pw_1gYWpqHmTNBzQ7nR5RzN I.T. mysql',1,'[{\"added\": {}}]',8,1),(25,'2023-05-25 20:12:54.275678','19','https://www.microsoft.com/en-us/?ql=3 wesnetwork1@outlook.com 23Clave$$ Personal Microsoft',1,'[{\"added\": {}}]',8,1),(26,'2023-05-25 20:13:35.148948','20','https://fliphtml5.com/ wesnetwork@keybyme.com 23Flip## Mis Cuentas fliphtml5',1,'[{\"added\": {}}]',8,1),(27,'2023-05-25 20:14:37.252475','21','https://aws.amazon.com/ gideon@wesnetwork.com 22Holly## I.T. aws',1,'[{\"added\": {}}]',8,1),(28,'2023-05-25 20:15:10.223467','22','https://wpforms.com/login/ wesnetwork@keybyme.com 23wpnuevo## Mis Cuentas WPForms',1,'[{\"added\": {}}]',8,1),(29,'2023-05-25 20:15:48.093433','23','https://my.a2hosting.com/clientarea.php wesnetwork@keybyme.com wp23clave## I.T. hosting A2',1,'[{\"added\": {}}]',8,1),(30,'2023-05-25 20:16:50.044531','7','Health',1,'[{\"added\": {}}]',7,1),(31,'2023-05-25 20:16:53.157319','24','https://www.medicare.gov/ wesnetwork@keybyme.com 23Social!! Health Medicare',1,'[{\"added\": {}}]',8,1),(32,'2023-05-25 20:17:47.249164','25','https://www.digitalocean.com/ wesnetwork@gmail.com Charlie23@ I.T. digital ocean',1,'[{\"added\": {}}]',8,1),(33,'2023-05-25 20:18:54.534163','26','https://chat.openai.com/auth/login wesnetwork@keybyme.com 23listo## I.T. Inteligencia artificial',1,'[{\"added\": {}}]',8,1),(34,'2023-05-25 20:19:43.096657','27','https://citiretailservices.citibankonline.com/RSnextgen/svc/launch/index.action?siteId=PLCN_HOMEDEPOT&langId=en_US#signoff keybyme 23CasaDepot Mis Cuentas Home Depot',1,'[{\"added\": {}}]',8,1),(35,'2023-05-25 20:23:07.709615','8','Chess',1,'[{\"added\": {}}]',7,1),(36,'2023-05-25 20:23:24.247932','28','https://www.shredderchess.com/ None None Chess chess',1,'[{\"added\": {}}]',8,1),(37,'2023-05-25 20:23:52.983659','29','https://www.365chess.com/signup.php None None Chess chess',1,'[{\"added\": {}}]',8,1),(38,'2023-05-25 20:24:14.698649','30','https://www.yottachess.com/ None None Chess chess',1,'[{\"added\": {}}]',8,1),(39,'2023-05-25 20:24:56.390340','31','https://www.chess.com/ wesnetwork@keybyme.com 23Ajedrez$$ Chess chess',1,'[{\"added\": {}}]',8,1),(40,'2023-05-25 20:25:42.115267','32','http://account.chessbase.com/en/logon wesnetwork@keybyme.com 23Ajedrez$$ Chess chess',1,'[{\"added\": {}}]',8,1),(41,'2023-05-25 20:27:34.659357','9','Mimi',1,'[{\"added\": {}}]',7,1),(42,'2023-05-25 20:27:38.558355','33','https://mail.google.com/mail/u/0/#inbox mariawolff0629@gmail.com 23Perrita## Mimi mimi gmail',1,'[{\"added\": {}}]',8,1),(43,'2023-05-25 20:28:25.411317','34','https://www.att.com/log-in/ wesnetwork@keybyme.com 23Tele## Personal at&t',1,'[{\"added\": {}}]',8,1),(44,'2023-05-25 20:29:06.141383','35','https://www.paycom.com/ wesnetwork@keybyme.com 22Tqmm## Chess Chess payment',1,'[{\"added\": {}}]',8,1),(45,'2023-05-25 20:30:01.848421','10','Alita',1,'[{\"added\": {}}]',7,1),(46,'2023-05-25 20:30:05.728121','36','https://www.bankofamerica.com/ alexialalis kd#?22Awp#518#?jke& Alita None',1,'[{\"added\": {}}]',8,1),(47,'2023-05-25 20:31:09.454976','37','https://www.microsoft.com/en-us/?ql=3 jorge@wolff.cl 19Feb##76 Mis Cuentas Cuenta de Microsoft compre outlook y excel',1,'[{\"added\": {}}]',8,1),(48,'2023-05-25 20:32:03.620495','38','https://www.office.com/?auth=2 wesnetwork@keybyme.com jT%?M5sw!4701!!?j#rtydel2%u& Personal Msw!4701!!   office 365 E1 CuentaMensual',1,'[{\"added\": {}}]',8,1),(49,'2023-05-25 20:33:13.431181','39','https://mail.google.com/mail/u/0/#inbox wesnetwork@keybyme.com 23Clave$$ Personal www.gmail.com correo',1,'[{\"added\": {}}]',8,1),(50,'2023-05-25 20:34:33.674771','40','https://www.adobe.com/creativecloud/plans.html jorge@wolff.cl #7%?claveadobe77?@87$ 16Clave7 Mis Cuentas adobe.com',1,'[{\"added\": {}}]',8,1),(51,'2023-05-25 20:35:17.143847','41','https://www.youtube.com/ jorge@luzyvida.com Clave18## Mis Cuentas youtube',1,'[{\"added\": {}}]',8,1),(52,'2023-05-25 20:35:52.531628','42','https://www.tecre.com/ wesnetwork@gmail.com 77tecre Laser & Sublimation None',1,'[{\"added\": {}}]',8,1),(53,'2023-05-25 20:36:39.472558','43','https://www.microsoft.com/en-us/?ql=3 wesnetwork1@outlook.com 23Clave$$ Personal None',1,'[{\"added\": {}}]',8,1),(54,'2023-05-25 20:37:26.721072','44','https://www.bankofamerica.com/ jcwolff10 9#Chile#7?173KeyBanco##?/y3@3e Mis Cuentas bank america',1,'[{\"added\": {}}]',8,1),(55,'2023-05-25 20:39:42.913345','45','https://www.techsmith.com/ wesnetwork@keybyme.com 22Videos## I.T. camtasia 2021 CMUAC-W5PCQ-HYH4W-ED547-A9AB5',1,'[{\"added\": {}}]',8,1),(56,'2023-05-25 20:40:23.486676','46','https://dyetrans.com/ wesnetwork@gmail.com Pass.77## Laser & Sublimation None',1,'[{\"added\": {}}]',8,1),(57,'2023-05-25 20:41:08.749336','47','https://www.ups.com/us/en/global.page jorge@wolff.cl 77upsclave## Mis Cuentas ups.com',1,'[{\"added\": {}}]',8,1),(58,'2023-05-25 20:41:48.300078','48','https://www.uline.com/ wesnetwork@keybyme.com 23Clave## Mis Cuentas uline.com',1,'[{\"added\": {}}]',8,1),(59,'2023-05-25 20:42:20.724031','49','http://www.sig-selections.com/ jorge@wolff.cl 77ssclave Laser & Sublimation None',1,'[{\"added\": {}}]',8,1),(60,'2023-05-25 20:43:08.794039','50','https://www.paypal.com/us/home paypal@luzyvida.com 8i$?77jcwv##? Mis Cuentas paypal',1,'[{\"added\": {}}]',8,1),(61,'2023-05-25 20:43:47.374933','51','https://www.driveezmd.com/ 26873037 Clave18## Mis Cuentas ezpass',1,'[{\"added\": {}}]',8,1),(62,'2023-05-25 20:44:48.688918','52','https://www.jpplus.com/?ref=laseru wesnetwork 77Laser## Laser & Sublimation None',1,'[{\"added\": {}}]',8,1),(63,'2023-05-25 20:46:13.700809','53','https://www.secureserver.net/?prog_id=jorgewolff weswes Msw#4701## I.T. Cust ID # 4120826 Pin 9669 wesdomain',1,'[{\"added\": {}}]',8,1),(64,'2023-05-25 20:47:00.809710','54','https://sso.godaddy.com/login?realm=idp&app=reseller&path=%2f 4120826 nuevojcwvX7 I.T. pin 9669 	reseller.godaddy.com wesdomain',1,'[{\"added\": {}}]',8,1),(65,'2023-05-25 20:47:43.370678','55','https://egov.maryland.gov/businessexpress abconsite 77Clave##2 Personal www.easy.maryland.gov/',1,'[{\"added\": {}}]',8,1),(66,'2023-05-25 20:48:19.594613','56','https://myaccount.google.com/ jorge@luzyvida.com w3#s&?22Jcw58##?sjd@e4 Personal google account',1,'[{\"added\": {}}]',8,1),(67,'2023-05-25 20:48:57.695453','57','https://www.firstenergycorp.com/fehome.html jwluza 77Nueva## Mis Cuentas Luz potomac',1,'[{\"added\": {}}]',8,1),(68,'2023-05-25 20:49:35.440765','58','https://www.indeed.com/ wesnetwork@keybyme.com 21Trabajo Personal None',1,'[{\"added\": {}}]',8,1),(69,'2023-05-25 20:50:15.063445','59','https://upcbarcodes.com/ wesnetwork jorge@wolff.cl 77barradeupc## Personal upc registration',1,'[{\"added\": {}}]',8,1),(70,'2023-05-25 20:53:26.080393','60','https://www.stumbleupon.com/ wesnetwork 77paginas Personal None',1,'[{\"added\": {}}]',8,1),(71,'2023-05-25 20:54:51.382635','61','https://us.cloudcare.avg.com/#/ gideon@wesnetwork.com Pa4701wes## Personal AVG',1,'[{\"added\": {}}]',8,1),(72,'2023-05-25 20:55:20.698863','62','https://www.dnsstuff.com/ wesnetwork jorge@wolff.cl clavedns I.T. None',1,'[{\"added\": {}}]',8,1),(73,'2023-05-25 20:56:12.335941','11','Luz y Vida',1,'[{\"added\": {}}]',7,1),(74,'2023-05-25 20:56:20.643949','63','https://www.bible.com/ wesnetwork 77jcwv## Luz y Vida Bible',1,'[{\"added\": {}}]',8,1),(75,'2023-05-25 20:56:59.810538','64','https://www.corel.com/en/ wesnetwork@keybyme.com 22Router## Laser & Sublimation None',1,'[{\"added\": {}}]',8,1),(76,'2023-05-25 20:57:39.650510','65','https://selfservice.travelers.com/login/#/ wesnetwork@keybyme.com ?77Seguros##?$$9nodel Mis Cuentas TRAVELERS car insurance',1,'[{\"added\": {}}]',8,1),(77,'2023-05-25 20:58:51.993642','66','https://www.skype.com/en/ wesnetwork Junio26## Personal skype',1,'[{\"added\": {}}]',8,1),(78,'2023-05-25 20:59:33.623585','67','https://cloudacademy.com/ jorge@wolff.cl 16nube## I.T. None',1,'[{\"added\": {}}]',8,1),(79,'2023-05-25 21:00:09.934528','68','https://www.facebook.com/ jorge@luzyvida.com 23Clave!! Personal None',1,'[{\"added\": {}}]',8,1),(80,'2023-05-25 21:00:40.692487','69','https://my.elementor.com/login/?redirect_to=%2Fwebsites%2F wesnetwork@keybyme.com 58Mercy## I.T. None',1,'[{\"added\": {}}]',8,1),(81,'2023-05-25 21:01:20.235435','70','https://www.paypal.com/us/home ebay@wesnetwork.com tu9o4?29ClaveKey##?;% Personal pin 0629',1,'[{\"added\": {}}]',8,1),(82,'2023-05-25 21:01:48.130614','71','https://www.udemy.com/ wesnetwork@keybyme.com 20Wolff## I.T. None',1,'[{\"added\": {}}]',8,1),(83,'2023-05-25 21:02:24.873349','72','http://www.walmart.com/ me@20874.com 18keywal Mis Cuentas None',1,'[{\"added\": {}}]',8,1),(84,'2023-05-25 21:03:02.420756','73','https://www.ebay.com/ wesnetwork ?JCWVdic##?djd^#6 Personal None',1,'[{\"added\": {}}]',8,1),(85,'2023-05-25 21:03:52.566210','74','https://sso.godaddy.com/login?realm=idp&app=reseller&path=%2f 4120218 jorgewolff nuevojcwv pin 7878 I.T. wesdomain',1,'[{\"added\": {}}]',8,1),(86,'2023-05-25 21:04:28.733486','75','https://eservice.washgas.com/Pages/Login.aspx wesnetwork@keybyme.com Gas2017## Mis Cuentas cuenta numero 220000776546',1,'[{\"added\": {}}]',8,1),(87,'2023-05-25 21:05:06.826962','76','https://www.wsscwater.com/ jorge@wolff.cl 77Agua## Mis Cuentas wssc',1,'[{\"added\": {}}]',8,1),(88,'2023-05-25 21:06:07.662987','77','https://www.usajobs.gov/ wesnetwork 77ClaveSec## Personal None',1,'[{\"added\": {}}]',8,1),(89,'2023-05-25 21:06:46.950080','78','https://www.verizon.com/ weswes1917 17Clave## Mis Cuentas pin 2858',1,'[{\"added\": {}}]',8,1),(90,'2023-05-25 21:07:40.526885','79','https://www.jpplus.com/ gideon@wesnetwork.com 77plastico Laser & Sublimation None',1,'[{\"added\": {}}]',8,1),(91,'2023-05-25 21:08:19.864546','80','https://www.capitalone.com/sign-out/?service=e tqmm58 89&4?102Clave##?$%1stdel Mis Cuentas None',1,'[{\"added\": {}}]',8,1),(92,'2023-05-25 21:08:53.474654','81','https://mail.google.com/mail/u/0/#inbox jwcooldriver@gmail.com JunChofer$$ Personal None',1,'[{\"added\": {}}]',8,1),(93,'2023-05-25 21:11:46.607343','82','https://navient.com/ JWolff58 NuevoKey77## Mis Cuentas Navient',1,'[{\"added\": {}}]',8,1),(94,'2023-05-25 21:12:42.708384','83','https://www.toyotafinancial.com/us/en.html wesyaris ?175ClaveNov#?3erdel Mis Cuentas None',1,'[{\"added\": {}}]',8,1),(95,'2023-05-25 21:13:39.532373','84','kp.org keybyme 6hY$?19Corona##?$$gy Health Kaiser',1,'[{\"added\": {}}]',8,1),(96,'2023-05-25 21:14:35.542241','85','https://vimeo.com/ me@20874.com clave2017 Personal None',1,'[{\"added\": {}}]',8,1),(97,'2023-05-25 21:15:14.470342','86','https://www.mysynchrony.com/ wesnetwork @!w3?ClaveK18p?6todel Mis Cuentas PepBoys CuentaMensual',1,'[{\"added\": {}}]',8,1),(98,'2023-05-25 22:30:25.102925','87','https://www.dell.com/en-us Jorge@wolff.cl 19Keynueva Personal None',1,'[{\"added\": {}}]',8,1),(99,'2023-05-25 22:31:55.378138','88','https://amazon.syf.com/accounts/login/?token=eyJraWQiOiIyMTZiMTQzMC1mOTc2LTQ1NTktYjRhZi0yMzc3OWExODdjM2YiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIi 77wesnetwork 37&?20Corona##?#4$ Personal amazon p',1,'[{\"added\": {}}]',8,1),(100,'2023-05-25 22:32:36.583847','89','https://www.paulfredrick.com/ me@20874.com 18ropa Personal None',1,'[{\"added\": {}}]',8,1),(101,'2023-05-25 22:33:17.567492','90','https://www.pandora.com/ me@20874.com 18Musica Personal None',1,'[{\"added\": {}}]',8,1),(102,'2023-05-25 22:34:01.403264','91','www.Adobe.com jorge@wolff.cl Clave18## Personal Para adobe connect admin',1,'[{\"added\": {}}]',8,1),(103,'2023-05-25 22:34:43.261581','92','https://www.centralaccept.com/Insured/Index.asp? no username Acct # 775531 Personal car insurance de Marco',1,'[{\"added\": {}}]',8,1),(104,'2023-05-25 22:35:23.020508','93','https://open.spotify.com/? wesnetwork npo125## Personal email me@20874.com 21Cancion##',1,'[{\"added\": {}}]',8,1),(105,'2023-05-25 22:35:54.831628','94','https://www.jcpenney.com/ me@20874.com 19MWjw02 Personal None',1,'[{\"added\": {}}]',8,1),(106,'2023-05-25 22:37:04.798244','95','https://www.irs.gov/ wesnetwork hdej&e?Pa19mercy##?jmrgsdbz6he Personal None',1,'[{\"added\": {}}]',8,1),(107,'2023-05-25 22:38:51.378000','96','https://jcpenney.syf.com/accounts/login/?token=eyJraWQiOiIyMTZiMTQzMC1mOTc2LTQ1NTktYjRhZi0yMzc3OWExODdjM2YiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdW wesnetwork 8u7?139Mercy##?^UY&2del45?^yh Personal',1,'[{\"added\": {}}]',8,1),(108,'2023-05-25 22:39:34.164552','97','https://participant.empower-retirement.com/participant/#/login?accu=Empower wesnetwork77 J8&hj?21Claveret##?ske@3j Personal 401k retiro',1,'[{\"added\": {}}]',8,1),(109,'2023-05-25 22:40:20.665578','98','https://www.wellsfargo.com/ tqmm77 K7jH?22sobran##?@4## Personal Cta banco 7378108109',1,'[{\"added\": {}}]',8,1),(110,'2023-05-25 22:41:13.736899','99','https://www.youtube.com/ wesnetwork@keybyme.com 22NuevaLife Personal youtube wesnetwork',1,'[{\"added\": {}}]',8,1),(111,'2023-05-25 22:42:20.756837','100','https://www.data247.com/ wesnetwork@keybyme.com 19Mirar## Personal Carrier lookup',1,'[{\"added\": {}}]',8,1),(112,'2023-05-25 22:43:09.172622','101','https://secure.ssa.gov/RIL/SiView.action Micuedeso Clave19## Mimi cuenta ssn mw',1,'[{\"added\": {}}]',8,1),(113,'2023-05-25 22:43:48.378850','102','https://offerup.com/ wesnetwork@keybyme.com 77Oferta## Personal None',1,'[{\"added\": {}}]',8,1),(114,'2023-05-25 22:44:53.941515','103','https://squareup.com/login wesnetwork@keybyme.com 21Efectivo## Personal None',1,'[{\"added\": {}}]',8,1),(115,'2023-05-25 22:45:26.002983','104','https://www.instagram.com/ wolff.jorge 02Clave## Personal None',1,'[{\"added\": {}}]',8,1),(116,'2023-05-25 22:46:12.180574','105','https://www.myfortiva.com/my-account/login WESNETWORK 22Casa$$# Mis Cuentas Home Depot',1,'[{\"added\": {}}]',8,1),(117,'2023-05-25 22:46:47.460994','106','https://secure.ssa.gov/RIL/SiView.action wesnetwork kl?719ClaveSS##?del1st/ju4 Personal ssn',1,'[{\"added\": {}}]',8,1),(118,'2023-05-25 22:47:32.130436','107','https://woodburning.com/ wesnetwork@keybyme.com 19Clave## Personal wood Burning',1,'[{\"added\": {}}]',8,1),(119,'2023-05-25 22:48:09.218056','108','https://www.macys.com/p/credit-service/benefits/ wesnetwork@keybyme.com pass9669 Mis Cuentas None',1,'[{\"added\": {}}]',8,1),(120,'2023-05-25 22:48:39.938684','109','http://verizon/ wesnetwork@keybyme.com 20#Wolff## Personal None',1,'[{\"added\": {}}]',8,1),(121,'2023-05-25 23:01:49.215430','110','https://dfs.dell.com/#/?lang=en-us wesnetwork@keybyme.com m5?1Lapdell##?h67 Mis Cuentas Dell Acct CuentaMensual',1,'[{\"added\": {}}]',8,1),(122,'2023-05-25 23:02:45.609718','111','https://www.iamtimcorey.com/ wesnetwork@keybyme.com 20Wolff## I.T. .net',1,'[{\"added\": {}}]',8,1),(123,'2023-05-25 23:03:27.457376','112','account.live.com wesnetwork@keybyme.com 22Clave## Personal Microsoft Account',1,'[{\"added\": {}}]',8,1),(124,'2023-05-25 23:04:02.843876','113','https://www.twilio.com/en-us wesnetwork@keybyme.com 22Credito22Credito 205-846-678 I.T. 5bda1083a448085d13aa5f85b300bac3',1,'[{\"added\": {}}]',8,1),(125,'2023-05-25 23:05:05.870517','114','https://www.automateexcel.com/vba-code-examples/ wesnetwork@keybyme.com 12Lunch$$ I.T. VBA',1,'[{\"added\": {}}]',8,1),(126,'2023-05-25 23:05:58.739034','115','https://github.com/ wesnetwork@keybyme.com 165Clave## I.T. None',1,'[{\"added\": {}}]',8,1),(127,'2023-05-25 23:07:08.218020','116','https://healthy.kaiserpermanente.org/maryland-virginia-washington-dc/consumer-sign-on#/signon keybyme 21Mimi## Mimi kaiser',1,'[{\"added\": {}}]',8,1),(128,'2023-05-25 23:07:54.301433','117','https://www.amazon.com/ jorge@wolff.cl 21Mita## Mis Cuentas amazon para compras',1,'[{\"added\": {}}]',8,1),(129,'2023-05-25 23:08:43.442425','118','https://www.carrierlookup.com/index.php/home/home keybyme 21Telefono Personal Carriers',1,'[{\"added\": {}}]',8,1),(130,'2023-05-25 23:09:18.268879','119','https://www.amazon.com/ wesnetwork@keybyme.com 21Clave## Personal None',1,'[{\"added\": {}}]',8,1),(131,'2023-05-25 23:10:12.275225','120','https://app.marylandhealthconnection.gov/hixui/home.html#/logout wesnetwork 21Clave## Personal Maryland Health Connection',1,'[{\"added\": {}}]',8,1),(132,'2023-05-25 23:10:46.853445','121','http://venmo/ wesnetwork@keybyme.com 68hT?29Tqmm##?nj%#b2 Personal None',1,'[{\"added\": {}}]',8,1),(133,'2023-05-25 23:11:19.682493','122','https://www.marylandtaxes.gov/ wesnetwork@keybyme.com 21SSIjw$$ Personal None',1,'[{\"added\": {}}]',8,1),(134,'2023-05-25 23:12:24.245508','123','Tower2 tower2 12345 Personal Computer de la sala',1,'[{\"added\": {}}]',8,1),(135,'2023-05-25 23:12:52.263269','124','www.adobe.com wesnetwork@keybyme.com 21Mita## Personal None',1,'[{\"added\": {}}]',8,1),(136,'2023-05-25 23:13:20.731491','125','Anydesk 22Mita## 22Mita## Personal None',1,'[{\"added\": {}}]',8,1),(137,'2023-05-25 23:14:02.515306','126','Microsoft authenticator 21Mita## 21Mita## Personal None',1,'[{\"added\": {}}]',8,1),(138,'2023-05-25 23:14:25.880174','127','https://www.facebook.com/ wesnetwork@keybyme.com 22Casa## Personal None',1,'[{\"added\": {}}]',8,1),(139,'2023-05-25 23:14:50.312760','128','https://www.experian.com/ wesnetwork@keybyme.com 22Credito Personal None',1,'[{\"added\": {}}]',8,1),(140,'2023-05-25 23:15:21.169377','129','http://https//www.discover.com/ keybyme 22Descubre## Mis Cuentas None',1,'[{\"added\": {}}]',8,1),(141,'2023-05-25 23:16:05.837709','130','Mail.20874.com me@20874.com ed#h?Msw#4701##?m!wkWT Personal None',1,'[{\"added\": {}}]',8,1),(142,'2023-05-25 23:16:39.445498','131','https://www.irs.gov/payments/your-online-account wesnetwork@keybyme.com UP7tU.!4a_p+tvt Personal IRS Account',1,'[{\"added\": {}}]',8,1),(143,'2023-05-25 23:17:06.321135','132','https://www.vectric.com/ wesnetwork@keybyme.com 22Wood## Laser & Sublimation None',1,'[{\"added\": {}}]',8,1),(144,'2023-05-25 23:17:35.544400','133','https://www.weismarkets.com/user_info/login wesnetwork@keybyme.com 22Comida## Personal None',1,'[{\"added\": {}}]',8,1),(145,'2023-05-25 23:18:42.863781','134','medicare 9DW7K19YC66 MIMI Mimi 1-888-777-5536 1-800-995-7358',1,'[{\"added\": {}}]',8,1),(146,'2023-05-25 23:19:14.924661','135','login.microsoftonline.com/ safety@lfjennings.com Yoz31783 Personal None',1,'[{\"added\": {}}]',8,1),(147,'2023-05-25 23:19:54.078299','136','www.iTunes.com mitawolff@gmail.com 22Mita## Mimi mimi itunes',1,'[{\"added\": {}}]',8,1),(148,'2023-05-25 23:20:34.843805','137','https://digitalapps.navyfederal.org/signin/ 77keybyme hmyt/*m?228Banco##?del3$*%5 Personal Navy credit union',1,'[{\"added\": {}}]',8,1),(149,'2023-05-25 23:21:06.898799','138','https://digitalapps.navyfederal.org/signin/ 77mita 67@3$nn?06297Clave##?k*&del5!2 Mimi Navy credit union',1,'[{\"added\": {}}]',8,1),(150,'2023-05-25 23:22:00.479161','139','https://www.medicare.gov/ mitawolff@gmail.com 29Clave@@ Chess Mita Medicare',1,'[{\"added\": {}}]',8,1),(151,'2023-05-25 23:22:38.665357','140','kaiser Mwolff629 77Salud## Health None',1,'[{\"added\": {}}]',8,1),(152,'2023-05-25 23:23:19.238019','141','https://www.microsoft.com/en-us/?ql=4 2407939353 Msw222## Personal email me@20874.com',1,'[{\"added\": {}}]',8,1),(153,'2023-05-25 23:24:20.177619','142','https://egov.maryland.gov/mva/idvr/ mitawolff Msw$0629 Mimi mva mita',1,'[{\"added\": {}}]',8,1),(154,'2023-05-25 23:25:06.267362','143','https://squareup.com/us/en/logout-redirect alexialalis@gmail.com wy&1!36?22Awp#518$?jd@3R# Alita Alita Square',1,'[{\"added\": {}}]',8,1),(155,'2023-05-25 23:25:36.258889','144','https://aws.amazon.com/ wesnetwork@keybyme.com 22Holy## Personal None',1,'[{\"added\": {}}]',8,1),(156,'2023-05-25 23:26:24.284009','145','https://citiretailservices.citibankonline.com/RSnextgen/svc/launch/index.action?siteId=PLCN_HOMEDEPOT#signon?cm_sp=vanity-_-mycard-_-MAY17 keybyme 23CasaDepot Mis Cuentas home depot',1,'[{\"added\": {}}]',8,1),(157,'2023-05-25 23:26:53.685367','146','https://egov.maryland.gov/mva/idvr/ keybyme 23Carro## Personal mva',1,'[{\"added\": {}}]',8,1),(158,'2023-05-25 23:27:35.807158','147','https://www.medicare.gov/ wesnetwork@keybyme.com 23Social!! Personal Medicare',1,'[{\"added\": {}}]',8,1),(159,'2023-05-25 23:28:12.356534','148','https://my.a2hosting.com/index.php?rp=/login wesnetwork@keybyme.com wp23clave## I.T. hosting A2',1,'[{\"added\": {}}]',8,1),(160,'2023-05-26 00:18:12.611209','27','https://citiretailservices.citibankonline.com/RSnextgen/svc/launch/index.action?siteId=PLCN_HOMEDEPOT&langId=en_US#signoff keybyme 23CasaDepot Mis Cuentas Home Depot',3,'',8,1),(161,'2023-05-26 23:04:34.073236','149','https://aa2.us/admin/ admin pass4545 I.T. Yourls',1,'[{\"added\": {}}]',8,1),(162,'2023-05-28 11:49:47.517434','12','CSS',1,'[{\"added\": {}}]',7,1),(163,'2023-05-28 11:50:57.873789','150','https://fontawesome.com/v4/icons/ None None CSS Fonts, Icons, etc',1,'[{\"added\": {}}]',8,1),(164,'2023-05-28 12:01:03.351319','13','GPS',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'claves','categoria'),(8,'claves','item'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-24 23:25:51.220262'),(2,'auth','0001_initial','2023-05-24 23:25:51.590822'),(3,'admin','0001_initial','2023-05-24 23:25:51.698709'),(4,'admin','0002_logentry_remove_auto_add','2023-05-24 23:25:51.707424'),(5,'admin','0003_logentry_add_action_flag_choices','2023-05-24 23:25:51.717368'),(6,'contenttypes','0002_remove_content_type_name','2023-05-24 23:25:51.775539'),(7,'auth','0002_alter_permission_name_max_length','2023-05-24 23:25:51.870910'),(8,'auth','0003_alter_user_email_max_length','2023-05-24 23:25:51.904821'),(9,'auth','0004_alter_user_username_opts','2023-05-24 23:25:51.916759'),(10,'auth','0005_alter_user_last_login_null','2023-05-24 23:25:52.081653'),(11,'auth','0006_require_contenttypes_0002','2023-05-24 23:25:52.086641'),(12,'auth','0007_alter_validators_add_error_messages','2023-05-24 23:25:52.100608'),(13,'auth','0008_alter_user_username_max_length','2023-05-24 23:25:52.155938'),(14,'auth','0009_alter_user_last_name_max_length','2023-05-24 23:25:52.207803'),(15,'auth','0010_alter_group_name_max_length','2023-05-24 23:25:52.237723'),(16,'auth','0011_update_proxy_permissions','2023-05-24 23:25:52.249020'),(17,'auth','0012_alter_user_first_name_max_length','2023-05-24 23:25:52.299806'),(18,'sessions','0001_initial','2023-05-24 23:25:52.331093'),(19,'claves','0001_initial','2023-05-24 23:42:56.065123'),(20,'claves','0002_alter_item_table','2023-05-24 23:46:44.574335');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7qq3y2gs52t8fvr22at5jhlnbian8v0m','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q1xvE:1XGFS7wv7X5TXD8cP2rqzT8qdr4TIXqYJZV_QqjXoJs','2023-06-07 23:29:36.534225'),('9yyda622tgw226fhpxi27fcu5g70xvld','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q2Y78:Mx39vsTofXfZ6ocRaGPZ_2NKVk8GY3Eez5SZQarXkxU','2023-06-09 14:08:18.179068'),('konnjgze6p5nfss5dhhmaldb8qaf5k1t','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q2JFZ:0YHS7sDyFBxnj_iXx6VajwgnZ4V0sHzIz7O8OAptdMM','2023-06-08 22:16:01.436868'),('ljdfpjjdqffu0tihsdrbu117ipmoep14','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q2t7T:H2p-Eq8DtLosqfahcxk8clxBsCH0OUaGoBttZneSKwI','2023-06-10 12:34:03.488401'),('ltk6u5ncrksq2qat7jd2mo52y8qdcoe7','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q31t8:YU7EaBiKpxrTRWpvd6baX_nxgYBO9VYQ-xJMsnyWDf8','2023-06-10 21:55:50.885255'),('qcqufcv5lccq5qc0rmcisn2tzoebvfy4','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q2v4I:Nmi2LBl2Vphhu8wLprYniY_g1FQIZR0NTLm_ZrNJzbs','2023-06-10 14:38:54.681330'),('w4qldxns842429wlhq8rkftlgx45o40x','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q3IDb:xf8vu9ICtmI5LGUkdZOFwvBUlUvKj-CREz-LNd_iNOY','2023-06-11 15:22:03.591579'),('z9uhbc5lle4sx1qj6wuvd10w7bjetfjq','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q2wcC:7KyUT3jj9bZJLGS79tmZ7lkzwOaeWaK1ikmDZqRCm14','2023-06-10 16:18:00.365242'),('zo9kozn6zoptun2q1br6cfrw1nde8ccd','.eJxVjEsOwjAMBe-SNYpsJ7QNS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_NZEPESONoF0XRmkoISh6FNcKADWx6ZK25-Q4Iql3HpVYQvKBFQDM-wPRLTeA:1q3L9p:K_oA6cao6hMRWJR_U74biefhUWYmCn-K0_Ov5IWRGDY','2023-06-11 18:30:21.094922');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Item_categoria_id_15b8e44e_fk_categoria_id` (`categoria_id`),
  CONSTRAINT `Item_categoria_id_15b8e44e_fk_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'https://account.proton.me/login','keybyme@proton.me','23Correo##','proton.me email',1),(2,'https://payrollservicesllc.myisolved.com/UserLogin.aspx','wesnetwork@keybyme.com','23Nomina##$$','Payroll',2),(3,'https://timecard.ues.com/unanet/action/login','21-9255','last 4 ss','time card',2),(4,'https://my.equifax.com/membercenter/#/login','wesnetwork@keybyme.com','23Dicom$$','Equifax',3),(5,'https://ww8.0123movie.net/list/movies.html',NULL,NULL,'123Movies',4),(6,'https://ustvgo.kissreport.com/',NULL,NULL,'https://ustvgo.kissreport.com/',4),(7,'https://ustvgo.kissreport.com/category/movie/',NULL,NULL,'Movies',4),(8,'https://ustvgo.kissreport.com/fox-news-ustv247/',NULL,NULL,'Fox News',4),(9,'https://ustvgo.kissreport.com/fox-5-dc-the-first-5-washington-dc/',NULL,NULL,'Fox 5 DC',4),(10,'https://ustvgo.kissreport.com/univision/',NULL,NULL,'Univision',4),(11,'https://ustvgo.kissreport.com/telemundo/',NULL,NULL,'Telemundo',4),(12,'https://www.twitch.tv/',NULL,NULL,'twitch.tv',4),(13,'https://www.amazon.com/','wesnetwork@gmail.com','pass1212','Amazon',5),(14,'https://www.jdsindustries.com/','user48439','pass1234','JDS',6),(15,'https://www.apple.com/itunes/?cid=OAS-US-DOMAINS-itunes.com','wesnetwork@keybyme.com','Msw$9669$$','itunes',3),(16,'www.microsoft.com','jorge@wolff.cl','{]8%?PEx77cel##1erdel','Cuenta de Microsoft',3),(17,'https://dash.cloudflare.com/login','wesnetwork@gmail.com','Casa78##','Cloudflare',1),(18,'https://auth.planetscale.com/sign-in?return_to=%2F','i7wgixoypxlvzlg60u7l','pscale_pw_1gYWpqHmTNBzQ7nR5RzN','mysql',1),(19,'https://www.microsoft.com/en-us/?ql=3','wesnetwork1@outlook.com','23Clave$$','Microsoft',3),(20,'https://fliphtml5.com/','wesnetwork@keybyme.com','23Flip##','fliphtml5',5),(21,'https://aws.amazon.com/','gideon@wesnetwork.com','22Holly##','aws',1),(22,'https://wpforms.com/login/','wesnetwork@keybyme.com','23wpnuevo##','WPForms',5),(23,'https://my.a2hosting.com/clientarea.php','wesnetwork@keybyme.com','wp23clave##','hosting A2',1),(24,'https://www.medicare.gov/','wesnetwork@keybyme.com','23Social!!','Medicare',7),(25,'https://www.digitalocean.com/','wesnetwork@gmail.com','Charlie23@','digital ocean',1),(26,'https://chat.openai.com/auth/login','wesnetwork@keybyme.com','23listo##','Inteligencia artificial',1),(28,'https://www.shredderchess.com/',NULL,NULL,'chess',8),(29,'https://www.365chess.com/signup.php',NULL,NULL,'chess',8),(30,'https://www.yottachess.com/',NULL,NULL,'chess',8),(31,'https://www.chess.com/','wesnetwork@keybyme.com','23Ajedrez$$','chess',8),(32,'http://account.chessbase.com/en/logon','wesnetwork@keybyme.com','23Ajedrez$$','chess',8),(33,'https://mail.google.com/mail/u/0/#inbox','mariawolff0629@gmail.com','23Perrita##','mimi gmail',9),(34,'https://www.att.com/log-in/','wesnetwork@keybyme.com','23Tele##','at&t',3),(35,'https://www.paycom.com/','wesnetwork@keybyme.com','22Tqmm##','Chess payment',8),(36,'https://www.bankofamerica.com/','alexialalis','kd#?22Awp#518#?jke&',NULL,10),(37,'https://www.microsoft.com/en-us/?ql=3','jorge@wolff.cl','19Feb##76','Cuenta de Microsoft compre outlook y excel',5),(38,'https://www.office.com/?auth=2','wesnetwork@keybyme.com','jT%?M5sw!4701!!?j#rtydel2%u&','Msw!4701!!   office 365 E1 CuentaMensual',3),(39,'https://mail.google.com/mail/u/0/#inbox','wesnetwork@gmail.com','23Clave$$','www.gmail.com correo',3),(40,'https://www.adobe.com/creativecloud/plans.html','jorge@wolff.cl','#7%?claveadobe77?@87$ 16Clave7','adobe.com',5),(41,'https://www.youtube.com/','jorge@luzyvida.com','Clave18##','youtube',5),(42,'https://www.tecre.com/','wesnetwork@gmail.com','77tecre',NULL,6),(43,'https://www.microsoft.com/en-us/?ql=3','wesnetwork1@outlook.com','23Clave$$',NULL,3),(44,'https://www.bankofamerica.com/','jcwolff10','9#Chile#7?173KeyBanco##?/y3@3e','bank america',5),(45,'https://www.techsmith.com/','wesnetwork@keybyme.com','22Videos##','camtasia 2021 CMUAC-W5PCQ-HYH4W-ED547-A9AB5',1),(46,'https://dyetrans.com/','wesnetwork@gmail.com','Pass.77##',NULL,6),(47,'https://www.ups.com/us/en/global.page','jorge@wolff.cl','77upsclave##','ups.com',5),(48,'https://www.uline.com/','wesnetwork@keybyme.com','23Clave##','uline.com',5),(49,'http://www.sig-selections.com/','jorge@wolff.cl','77ssclave',NULL,6),(50,'https://www.paypal.com/us/home','paypal@luzyvida.com','8i$?77jcwv##?','paypal',5),(51,'https://www.driveezmd.com/','26873037','Clave18##','ezpass',5),(52,'https://www.jpplus.com/?ref=laseru','wesnetwork','77Laser##',NULL,6),(53,'https://www.secureserver.net/?prog_id=jorgewolff','weswes','Msw#4701##','Cust ID # 4120826 Pin 9669 wesdomain',1),(54,'https://sso.godaddy.com/login?realm=idp&app=reseller&path=%2f','4120826','nuevojcwvX7','pin 9669 	reseller.godaddy.com wesdomain',1),(55,'https://egov.maryland.gov/businessexpress','abconsite','77Clave##2','www.easy.maryland.gov/',3),(56,'https://myaccount.google.com/','jorge@luzyvida.com','w3#s&?22Jcw58##?sjd@e4','google account',3),(57,'https://www.firstenergycorp.com/fehome.html','jwluza','77Nueva##','Luz potomac',5),(58,'https://www.indeed.com/','wesnetwork@keybyme.com','21Trabajo',NULL,3),(59,'https://upcbarcodes.com/','wesnetwork jorge@wolff.cl','77barradeupc##','upc registration',3),(60,'https://www.stumbleupon.com/','wesnetwork','77paginas',NULL,3),(61,'https://us.cloudcare.avg.com/#/','gideon@wesnetwork.com','Pa4701wes##','AVG',3),(62,'https://www.dnsstuff.com/','wesnetwork jorge@wolff.cl','clavedns',NULL,1),(63,'https://www.bible.com/','wesnetwork','77jcwv##','Bible',11),(64,'https://www.corel.com/en/','wesnetwork@keybyme.com','22Router##',NULL,6),(65,'https://selfservice.travelers.com/login/#/','wesnetwork@keybyme.com','?77Seguros##?$$9nodel','TRAVELERS car insurance',5),(66,'https://www.skype.com/en/','wesnetwork','Junio26##','skype',3),(67,'https://cloudacademy.com/','jorge@wolff.cl','16nube##',NULL,1),(68,'https://www.facebook.com/','jorge@luzyvida.com','23Clave!!',NULL,3),(69,'https://my.elementor.com/login/?redirect_to=%2Fwebsites%2F','wesnetwork@keybyme.com','58Mercy##',NULL,1),(70,'https://www.paypal.com/us/home','ebay@wesnetwork.com','tu9o4?29ClaveKey##?;%','pin 0629',3),(71,'https://www.udemy.com/','wesnetwork@keybyme.com','20Wolff##',NULL,1),(72,'http://www.walmart.com/','me@20874.com','18keywal',NULL,5),(73,'https://www.ebay.com/','wesnetwork','?JCWVdic##?djd^#6',NULL,3),(74,'https://sso.godaddy.com/login?realm=idp&app=reseller&path=%2f','4120218 jorgewolff','nuevojcwv pin 7878','wesdomain',1),(75,'https://eservice.washgas.com/Pages/Login.aspx','wesnetwork@keybyme.com','Gas2017##','cuenta numero 220000776546',5),(76,'https://www.wsscwater.com/','jorge@wolff.cl','77Agua##','wssc',5),(77,'https://www.usajobs.gov/','wesnetwork','77ClaveSec##',NULL,3),(78,'https://www.verizon.com/','weswes1917','17Clave##','pin 2858',5),(79,'https://www.jpplus.com/','gideon@wesnetwork.com','77plastico',NULL,6),(80,'https://www.capitalone.com/sign-out/?service=e','tqmm58','89&4?102Clave##?$%1stdel',NULL,5),(81,'https://mail.google.com/mail/u/0/#inbox','jwcooldriver@gmail.com','JunChofer$$',NULL,3),(82,'https://navient.com/','JWolff58','NuevoKey77##','Navient',5),(83,'https://www.toyotafinancial.com/us/en.html','wesyaris','?175ClaveNov#?3erdel',NULL,5),(84,'kp.org','keybyme','6hY$?19Corona##?$$gy','Kaiser',7),(85,'https://vimeo.com/','me@20874.com','clave2017',NULL,3),(86,'https://www.mysynchrony.com/','wesnetwork','@!w3?ClaveK18p?6todel','PepBoys CuentaMensual',5),(87,'https://www.dell.com/en-us','Jorge@wolff.cl','19Keynueva',NULL,3),(88,'https://amazon.syf.com/accounts/login/?token=eyJraWQiOiIyMTZiMTQzMC1mOTc2LTQ1NTktYjRhZi0yMzc3OWExODdjM2YiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIi','77wesnetwork','37&?20Corona##?#4$','amazon prime Credit card',3),(89,'https://www.paulfredrick.com/','me@20874.com','18ropa',NULL,3),(90,'https://www.pandora.com/','me@20874.com','18Musica',NULL,3),(91,'www.Adobe.com','jorge@wolff.cl','Clave18##','Para adobe connect admin',3),(92,'https://www.centralaccept.com/Insured/Index.asp?','no username','Acct # 775531','car insurance de Marco',3),(93,'https://open.spotify.com/?','wesnetwork','npo125##','email me@20874.com 21Cancion##',3),(94,'https://www.jcpenney.com/','me@20874.com','19MWjw02',NULL,3),(95,'https://www.irs.gov/','wesnetwork','hdej&e?Pa19mercy##?jmrgsdbz6he',NULL,3),(96,'https://jcpenney.syf.com/accounts/login/?token=eyJraWQiOiIyMTZiMTQzMC1mOTc2LTQ1NTktYjRhZi0yMzc3OWExODdjM2YiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdW','wesnetwork','8u7?139Mercy##?^UY&2del45?^yh',NULL,3),(97,'https://participant.empower-retirement.com/participant/#/login?accu=Empower','wesnetwork77','J8&hj?21Claveret##?ske@3j','401k retiro',3),(98,'https://www.wellsfargo.com/','tqmm77','K7jH?22sobran##?@4##','Cta banco 7378108109',3),(99,'https://www.youtube.com/','wesnetwork@keybyme.com','22NuevaLife','youtube wesnetwork',3),(100,'https://www.data247.com/','wesnetwork@keybyme.com','19Mirar##','Carrier lookup',3),(101,'https://secure.ssa.gov/RIL/SiView.action','Micuedeso','Clave19##','cuenta ssn mw',9),(102,'https://offerup.com/','wesnetwork@keybyme.com','77Oferta##',NULL,3),(103,'https://squareup.com/login','wesnetwork@keybyme.com','21Efectivo##',NULL,3),(104,'https://www.instagram.com/','wolff.jorge','02Clave##',NULL,3),(105,'https://www.myfortiva.com/my-account/login','WESNETWORK','22Casa$$#','Home Depot',5),(106,'https://secure.ssa.gov/RIL/SiView.action','wesnetwork','kl?719ClaveSS##?del1st/ju4','ssn',3),(107,'https://woodburning.com/','wesnetwork@keybyme.com','19Clave##','wood Burning',3),(108,'https://www.macys.com/p/credit-service/benefits/','wesnetwork@keybyme.com','pass9669',NULL,5),(109,'http://verizon/','wesnetwork@keybyme.com','20#Wolff##',NULL,3),(110,'https://dfs.dell.com/#/?lang=en-us','wesnetwork@keybyme.com','m5?1Lapdell##?h67','Dell Acct CuentaMensual',5),(111,'https://www.iamtimcorey.com/','wesnetwork@keybyme.com','20Wolff##','.net',1),(112,'account.live.com','wesnetwork@keybyme.com','22Clave##','Microsoft Account',3),(113,'https://www.twilio.com/en-us','wesnetwork@keybyme.com','22Credito22Credito 205-846-678','5bda1083a448085d13aa5f85b300bac3',1),(114,'https://www.automateexcel.com/vba-code-examples/','wesnetwork@keybyme.com','12Lunch$$','VBA',1),(115,'https://github.com/','wesnetwork@keybyme.com','165Clave##',NULL,1),(116,'https://healthy.kaiserpermanente.org/maryland-virginia-washington-dc/consumer-sign-on#/signon','keybyme','21Mimi##','kaiser',9),(117,'https://www.amazon.com/','jorge@wolff.cl','21Mita##','amazon para compras',5),(118,'https://www.carrierlookup.com/index.php/home/home','keybyme','21Telefono','Carriers',3),(119,'https://www.amazon.com/','wesnetwork@keybyme.com','21Clave##',NULL,3),(120,'https://app.marylandhealthconnection.gov/hixui/home.html#/logout','wesnetwork','21Clave##','Maryland Health Connection',3),(121,'http://venmo/','wesnetwork@keybyme.com','68hT?29Tqmm##?nj%#b2',NULL,3),(122,'https://www.marylandtaxes.gov/','wesnetwork@keybyme.com','21SSIjw$$',NULL,3),(123,'Tower2','tower2','12345','Computer de la sala',3),(124,'www.adobe.com','wesnetwork@keybyme.com','21Mita##',NULL,3),(125,'Anydesk','22Mita##','22Mita##',NULL,3),(126,'Microsoft authenticator','21Mita##','21Mita##',NULL,3),(127,'https://www.facebook.com/','wesnetwork@keybyme.com','22Casa##',NULL,3),(128,'https://www.experian.com/','wesnetwork@keybyme.com','22Credito',NULL,3),(129,'http://https//www.discover.com/','keybyme','22Descubre##',NULL,5),(130,'Mail.20874.com','me@20874.com','ed#h?Msw#4701##?m!wkWT',NULL,3),(131,'https://www.irs.gov/payments/your-online-account','wesnetwork@keybyme.com','UP7tU.!4a_p+tvt','IRS Account',3),(132,'https://www.vectric.com/','wesnetwork@keybyme.com','22Wood##',NULL,6),(133,'https://www.weismarkets.com/user_info/login','wesnetwork@keybyme.com','22Comida##',NULL,3),(134,'medicare','9DW7K19YC66','MIMI','1-888-777-5536 1-800-995-7358',9),(135,'login.microsoftonline.com/','safety@lfjennings.com','Yoz31783',NULL,3),(136,'www.iTunes.com','mitawolff@gmail.com','22Mita##','mimi itunes',9),(137,'https://digitalapps.navyfederal.org/signin/','77keybyme','hmyt/*m?228Banco##?del3$*%5','Navy credit union',3),(138,'https://digitalapps.navyfederal.org/signin/','77mita','67@3$nn?06297Clave##?k*&del5!2','Navy credit union',9),(139,'https://www.medicare.gov/','mitawolff@gmail.com','29Clave@@','Mita Medicare',8),(140,'kaiser','Mwolff629','77Salud##',NULL,7),(141,'https://www.microsoft.com/en-us/?ql=4','2407939353','Msw222##','email me@20874.com',3),(142,'https://egov.maryland.gov/mva/idvr/','mitawolff','Msw$0629','mva mita',9),(143,'https://squareup.com/us/en/logout-redirect','alexialalis@gmail.com','wy&1!36?22Awp#518$?jd@3R#','Alita Square',10),(144,'https://aws.amazon.com/','wesnetwork@keybyme.com','22Holy##',NULL,3),(145,'https://citiretailservices.citibankonline.com/RSnextgen/svc/launch/index.action?siteId=PLCN_HOMEDEPOT#signon?cm_sp=vanity-_-mycard-_-MAY17','keybyme','23CasaDepot','home depot',5),(146,'https://egov.maryland.gov/mva/idvr/','keybyme','23Carro##','mva',3),(147,'https://www.medicare.gov/','wesnetwork@keybyme.com','23Social!!','Medicare',3),(148,'https://my.a2hosting.com/index.php?rp=/login','wesnetwork@keybyme.com','wp23clave##','hosting A2',1),(149,'https://aa2.us/admin/','admin','pass4545','Yourls',1),(150,'https://fontawesome.com/v4/icons/',NULL,NULL,'Fonts, Icons, etc',12),(151,'https://getbootstrap.com/',NULL,NULL,'bootstrap',12),(152,'https://sobran.net/','admin','li?2*222#4del2&^73','sobran',2),(153,'https://www.w3schools.com/','wesnetwork@keybyme.com','23Html##','w3schools.com',1),(154,'https://www.scandit.com/barcode-generator/',NULL,NULL,'Barcode Generator',1),(155,'https://www.google.com/maps',NULL,NULL,NULL,13),(156,'https://www.cssscript.com/demo/rgb-color-picker-slider/',NULL,NULL,'HTML Color',12),(157,'https://www.qr-code-generator.com/solutions/vcardplus-qr-code/',NULL,NULL,'Dynamic vCard QR Code Generator',1),(158,'https://www.w3schools.com/tags/ref_standardattributes.asp',NULL,NULL,'HTML Global Attributes',12),(159,'https://www.primefaces.org/showcase/index.xhtml?jfwid=f09ab',NULL,NULL,'primefaces.org',1),(160,'https://nicepage.com/',NULL,NULL,'create websites and themes',1),(161,'https://tailwindcss.com/',NULL,NULL,'create websites',12),(162,'https://wtools.io/',NULL,NULL,'WTOOLS - Web Tools',1),(163,'https://docs.djangoproject.com/en/4.2/',NULL,NULL,'DJANGO Documentation',1),(164,'https://docs.python.org/3/',NULL,NULL,'Python 3.11.3 documentation',1),(165,'http://www.lesfeldick.org/',NULL,NULL,'Bible',11),(166,'https://sites.google.com/site/ruwach/bibletext',NULL,NULL,'Bible',11),(167,'https://www.slipstick.com/outlook/send-sms-or-text-messages-to-cellular-phones/',NULL,NULL,'Send SMS or Text Messages',3),(168,'https://www.bibleplaces.com/',NULL,NULL,'Bibleplaces',11),(169,'https://www.lugaresbiblicos.com/',NULL,NULL,NULL,11),(170,'https://mail.google.com/mail/u/0/#inbox','wesnetworking@gmail.com','23Clave!!',NULL,3);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29  9:28:26
