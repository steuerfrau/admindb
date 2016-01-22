-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: admin
-- ------------------------------------------------------
-- Server version	5.5.44-0+deb8u1

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
-- Current Database: `admin`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `admin` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `admin`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_40da36e05f20e270_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_282c8796193d3b89_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_2fb5794086635746_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add area',7,'add_area'),(20,'Can change area',7,'change_area'),(21,'Can delete area',7,'delete_area'),(22,'Can add landspace',8,'add_landspace'),(23,'Can change landspace',8,'change_landspace'),(24,'Can delete landspace',8,'delete_landspace'),(25,'Can add type',9,'add_type'),(26,'Can change type',9,'change_type'),(27,'Can delete type',9,'delete_type'),(28,'Can add system',10,'add_system'),(29,'Can change system',10,'change_system'),(30,'Can delete system',10,'delete_system'),(31,'Can add network service',11,'add_networkservice'),(32,'Can change network service',11,'change_networkservice'),(33,'Can delete network service',11,'delete_networkservice'),(37,'Can add network service map',13,'add_networkservicemap'),(38,'Can change network service map',13,'change_networkservicemap'),(39,'Can delete network service map',13,'delete_networkservicemap'),(40,'Can add backup',14,'add_backup'),(41,'Can change backup',14,'change_backup'),(42,'Can delete backup',14,'delete_backup'),(43,'Can add filesystem',15,'add_filesystem'),(44,'Can change filesystem',15,'change_filesystem'),(45,'Can delete filesystem',15,'delete_filesystem'),(46,'Can add user feature',16,'add_userfeature'),(47,'Can change user feature',16,'change_userfeature'),(48,'Can delete user feature',16,'delete_userfeature');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$15000$Ci5olp16W84U$6pXMcA1HQkXCrc9NuMq/rGjrEoMxeRbqQCAWiLOxxVs=','2015-12-06 14:05:59',1,'django','','','',1,1,'2015-12-06 14:05:42');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_8d63fb3d1a14b33_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_7a41f2f1fea861cd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_471ebb96dc0c3733_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_1759fedea96382b4_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_2a310f5ea3e8a2b1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_61b30666b6df2310_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_ea8d7953dedc999_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'area','system','area'),(8,'landspace','system','landspace'),(9,'type','system','type'),(10,'system','system','system'),(11,'network service','system','networkservice'),(13,'network service map','system','networkservicemap'),(14,'backup','system','backup'),(15,'filesystem','system','filesystem'),(16,'user feature','system','userfeature');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-11-20 22:20:16'),(2,'auth','0001_initial','2015-11-20 22:20:16'),(3,'admin','0001_initial','2015-11-20 22:20:17'),(4,'sessions','0001_initial','2015-11-20 22:20:17'),(5,'system','0001_initial','2015-11-20 22:52:26');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7tjoz0hidxapjl448szicmkzegibly8x','NGY3Njc4MDRhYjgxMjQ4YmExZWFlMTI1YmU3MDRlODM3ZmM0YjM5Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODQ2MzdjZmEwOTRjODE2ODU4MjE5MGYzMmE4ZWI3M2E2ZGZjNzY1ZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-12-20 14:05:59');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_area`
--

DROP TABLE IF EXISTS `system_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(255) NOT NULL,
  `area_description` varchar(255),
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_area`
--

LOCK TABLES `system_area` WRITE;
/*!40000 ALTER TABLE `system_area` DISABLE KEYS */;
INSERT INTO `system_area` VALUES (1,'1.01 Authentication and Usermanagement',NULL),(2,'1.02 Deployment, Installation and Workstation Management',NULL),(3,'1.04 Networking',NULL),(4,'1.05 HA and Virtualization',NULL),(5,'1.06 Backups',NULL),(6,'1.07 Databases',NULL),(7,'1.08 Monitoring',NULL),(8,'2.01. Communication',NULL),(9,'2.02 Facility Security and Management',NULL),(10,'2.03 Fileservers and DMS',NULL),(11,'2.03.Fileservers and DMS',NULL),(12,'2.04 Printing and Scanning',NULL),(13,'2.05 Process and Project Management',NULL),(14,'2.06 VoIP, Telephones and Fax System',NULL),(15,'2.07 Website, CMS and Media Streaming',NULL),(16,'2.08 Wiki and Intranet',NULL),(17,'2.09 X2Go Clients',NULL),(18,'3.01 Accounting',NULL),(19,'3.02 PACS, CD burner',NULL),(20,'3.03 RIS, Card Reader',NULL),(21,'4 Development Special Apps',NULL),(22,'9 Undefined',NULL),(23,'0 Common Services',NULL);
/*!40000 ALTER TABLE `system_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_backup`
--

DROP TABLE IF EXISTS `system_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_description` varchar(255),
  `backup_host` varchar(75) NOT NULL,
  `backup_location` varchar(75) NOT NULL,
  `backup_basedir` varchar(255) NOT NULL,
  `backup_scheme` varchar(255) NOT NULL,
  `backup_type` varchar(255) NOT NULL,
  `system_id` int(11) NOT NULL,
  PRIMARY KEY (`backup_id`),
  KEY `system_backup_c18a5443` (`system_id`),
  CONSTRAINT `system_bac_system_id_4935a42ddd68dc65_fk_system_system_system_id` FOREIGN KEY (`system_id`) REFERENCES `system_system` (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_backup`
--

LOCK TABLES `system_backup` WRITE;
/*!40000 ALTER TABLE `system_backup` DISABLE KEYS */;
INSERT INTO `system_backup` VALUES (1,'rsnapshot','m01backup01 on host01','Berlin HQ','/','7 daily snapshots','',54),(3,'rsnapshot','m01backup01 on host01','Berlin HQ','/','7 daily backups','',53),(4,'rsnapshot','m01backup01','Berlin HQ','/','7 daily backups','',6),(5,'rsnapshot','m01backup01 on host01','Berlin HQ','/','7 daily snapshots','',25),(6,'rsnapshot','m01backup01 on host01','Berlin HQ','/','7 daily snapshots','',26),(7,'rsnapshot','m01backup01 on host01','Berlin HQ','/','7 daily snapshots','',60),(8,'rsnapshot','m01backup01 on host01','Berlin HQ','/','6 daily snapshots','',81),(9,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07','',57),(10,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07','',55),(11,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07, weekly-04, monthly-03','',82),(12,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07','',46),(13,NULL,'m01backup01 on host01','Berlin HQ','/','daily-07, weekly-08, monthly-18','',68),(14,NULL,'m01backup01 on host01','Berlin HQ','/','daily-07, weekly-08, monthly-18','',28),(15,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07','',7),(16,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07','',15),(17,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07','',16),(18,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07','',50),(19,'rsnapshot','m01backup01 on host01','Berlin HQ','/','daily-07','',21);
/*!40000 ALTER TABLE `system_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_filesystem`
--

DROP TABLE IF EXISTS `system_filesystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_filesystem` (
  `filesystem` int(11) NOT NULL AUTO_INCREMENT,
  `filesystem_type` varchar(75) NOT NULL,
  `filesystem_mountpoint` varchar(255) NOT NULL,
  `filesystem_storagebackend` varchar(75) NOT NULL,
  `filesystem_devicefile` varchar(75) NOT NULL,
  `system_id` int(11) NOT NULL,
  PRIMARY KEY (`filesystem`),
  KEY `system_filesystem_c18a5443` (`system_id`),
  CONSTRAINT `system_fil_system_id_515a71ea3c010b56_fk_system_system_system_id` FOREIGN KEY (`system_id`) REFERENCES `system_system` (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_filesystem`
--

LOCK TABLES `system_filesystem` WRITE;
/*!40000 ALTER TABLE `system_filesystem` DISABLE KEYS */;
INSERT INTO `system_filesystem` VALUES (2,'ext4','/','VServer Host DRBD','/dev/drbd7',54),(3,'ext4','/home','VServer Host DRBD','/dev/drbd32',54),(4,'ext4','/data/archive','VServer Host DRBD','/dev/drbd31',54),(5,'ext4','/data/it','VServer Host DRBD','/dev/drbd33',54),(6,'ext4','/data/medneo','VServer Host DRBD','/dev/drbd34',54),(7,'ext4','/data/mgmt','VServer Host DRBD','/dev/drbd35',54),(8,'ext4','/data/public','VServer Host DRBD','/dev/drbd36',54);
/*!40000 ALTER TABLE `system_filesystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_landspace`
--

DROP TABLE IF EXISTS `system_landspace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_landspace` (
  `landspace_id` int(11) NOT NULL AUTO_INCREMENT,
  `landspace` varchar(75) NOT NULL,
  `landspace_description` varchar(255),
  PRIMARY KEY (`landspace_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_landspace`
--

LOCK TABLES `system_landspace` WRITE;
/*!40000 ALTER TABLE `system_landspace` DISABLE KEYS */;
INSERT INTO `system_landspace` VALUES (1,'01-Production',NULL),(2,'02-Staging',NULL),(3,'03-Testing',NULL),(4,'04-Development',NULL),(5,'08-Unknown',NULL),(6,'09-Other',NULL),(7,'80-Decommission',NULL),(8,'n.a.',NULL),(9,'01-Production',NULL);
/*!40000 ALTER TABLE `system_landspace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_networkservice`
--

DROP TABLE IF EXISTS `system_networkservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_networkservice` (
  `network_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `network_service` varchar(75) NOT NULL,
  `network_service_description` varchar(255),
  `network_service_note` text,
  PRIMARY KEY (`network_service_id`),
  UNIQUE KEY `network_service` (`network_service`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_networkservice`
--

LOCK TABLES `system_networkservice` WRITE;
/*!40000 ALTER TABLE `system_networkservice` DISABLE KEYS */;
INSERT INTO `system_networkservice` VALUES (1,'(client?) cups-polld',NULL,NULL),(2,'(client?) gvfsd-smb-bro',NULL,NULL),(3,'(client?) gvfsd-smb-brow',NULL,NULL),(4,'(client?) iceweasel',NULL,NULL),(5,'(client?) pidgin',NULL,NULL),(6,'(client?) x2goagent',NULL,NULL),(7,'(client?) xtightvncview',NULL,NULL),(8,'19 (lo)',NULL,NULL),(9,'4',NULL,NULL),(10,'apache2',NULL,NULL),(11,'apt-cacher-ng',NULL,NULL),(12,'asterisk',NULL,NULL),(13,'atftpd',NULL,NULL),(14,'avahi-daemon',NULL,NULL),(15,'cleanup',NULL,NULL),(16,'corosync',NULL,NULL),(17,'cups-polld',NULL,NULL),(18,'dansguardian',NULL,NULL),(19,'dnsmasq',NULL,NULL),(20,'dovecot',NULL,NULL),(21,'exim',NULL,NULL),(22,'freeradius',NULL,NULL),(23,'haproxy',NULL,NULL),(24,'iaxmodem',NULL,NULL),(25,'java',NULL,NULL),(26,'java (on standard ports?)',NULL,NULL),(27,'lwresdb (lo)',NULL,NULL),(28,'master',NULL,NULL),(29,'master (lo)',NULL,NULL),(30,'memcached (lo)',NULL,NULL),(31,'merlin64_5_00_',NULL,NULL),(32,'mongod (lo)',NULL,NULL),(33,'mysqld',NULL,NULL),(34,'mysqld (lo)',NULL,NULL),(35,'nmbd',NULL,NULL),(36,'node',NULL,NULL),(37,'nrpe',NULL,NULL),(38,'ntpd',NULL,NULL),(39,'perl',NULL,NULL),(40,'php (lo)',NULL,NULL),(41,'postgres (lo)',NULL,NULL),(42,'postmaster (lo)',NULL,NULL),(43,'python',NULL,NULL),(44,'qemu-system-x86_64 VNC ports',NULL,NULL),(45,'rpcbind',NULL,NULL),(46,'rsyslogd',NULL,NULL),(47,'smbd',NULL,NULL),(48,'smtp',NULL,NULL),(49,'ssh',NULL,NULL),(50,'sshd',NULL,NULL),(51,'sshd: root@pts/0',NULL,NULL),(52,'syslog-ng',NULL,NULL),(53,'trivial-rewrite',NULL,NULL),(54,'winbindd',NULL,NULL),(55,'xinetd',NULL,NULL),(56,'zarafa-dagent',NULL,NULL),(57,'zarafa-gatewa',NULL,NULL),(58,'zarafa-ical',NULL,NULL),(59,'zarafa-server',NULL,NULL),(60,'cupsd',NULL,NULL),(61,'dhcpd',NULL,NULL),(62,'hfaxd',NULL,NULL),(63,'httpd',NULL,NULL),(64,'named',NULL,NULL),(65,'nginx',NULL,NULL),(66,'nslcd',NULL,NULL),(67,'slapd',NULL,NULL),(68,'smtpd',NULL,NULL),(69,'unfsd',NULL,NULL),(70,'snmpd',NULL,NULL);
/*!40000 ALTER TABLE `system_networkservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_networkservicemap`
--

DROP TABLE IF EXISTS `system_networkservicemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_networkservicemap` (
  `network_service_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `network_service_map_description` varchar(255),
  `user_feature_id` int(11) DEFAULT NULL,
  `network_service_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL,
  PRIMARY KEY (`network_service_map_id`),
  KEY `system_networkservicemap_dbc02cde` (`user_feature_id`),
  KEY `system_networkservicemap_39982ac2` (`network_service_id`),
  KEY `system_networkservicemap_c18a5443` (`system_id`),
  CONSTRAINT `b47352fbd6d587418a7852ebeaa82f7f` FOREIGN KEY (`network_service_id`) REFERENCES `system_networkservice` (`network_service_id`),
  CONSTRAINT `D378b23c4f9f1784ca3f63ae114391b7` FOREIGN KEY (`user_feature_id`) REFERENCES `system_userfeature` (`user_feature_id`),
  CONSTRAINT `system_netw_system_id_d1c8cd5d0b6dba5_fk_system_system_system_id` FOREIGN KEY (`system_id`) REFERENCES `system_system` (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_networkservicemap`
--

LOCK TABLES `system_networkservicemap` WRITE;
/*!40000 ALTER TABLE `system_networkservicemap` DISABLE KEYS */;
INSERT INTO `system_networkservicemap` VALUES (1,NULL,NULL,1,70),(2,NULL,NULL,2,70),(3,NULL,NULL,3,70),(4,NULL,NULL,4,70),(5,NULL,NULL,5,70),(6,NULL,NULL,6,70),(7,NULL,NULL,7,70),(8,NULL,NULL,8,44),(9,NULL,NULL,9,87),(10,NULL,NULL,10,1),(11,NULL,NULL,10,3),(12,NULL,NULL,10,2),(13,NULL,NULL,10,4),(14,NULL,NULL,10,19),(15,NULL,NULL,10,20),(16,NULL,NULL,10,29),(17,NULL,NULL,10,30),(18,NULL,NULL,10,44),(19,NULL,NULL,10,48),(20,NULL,NULL,10,49),(21,NULL,NULL,10,50),(22,NULL,NULL,10,58),(23,NULL,NULL,10,61),(24,NULL,NULL,10,63),(25,NULL,NULL,10,65),(26,NULL,NULL,10,66),(27,NULL,NULL,10,69),(28,NULL,NULL,10,74),(29,NULL,NULL,10,95),(30,NULL,NULL,11,6),(31,NULL,NULL,12,61),(32,NULL,NULL,12,62),(33,NULL,NULL,12,63),(34,NULL,NULL,13,7),(35,NULL,NULL,13,8),(36,NULL,NULL,13,17),(37,NULL,NULL,13,74),(38,NULL,NULL,13,75),(39,NULL,NULL,14,62),(40,NULL,NULL,15,48),(41,NULL,NULL,16,21),(42,NULL,NULL,16,22),(43,NULL,NULL,16,23),(44,NULL,NULL,16,24),(45,NULL,NULL,17,71),(46,NULL,NULL,18,20),(47,NULL,NULL,19,62),(48,NULL,NULL,20,46),(49,NULL,NULL,21,82),(50,NULL,NULL,22,1),(51,NULL,NULL,22,2),(52,NULL,NULL,22,3),(53,NULL,NULL,23,82),(54,NULL,NULL,23,86),(55,NULL,NULL,24,61),(56,NULL,NULL,24,62),(57,NULL,NULL,25,52),(58,NULL,NULL,25,53),(59,NULL,NULL,25,59),(60,NULL,NULL,25,68),(61,NULL,NULL,25,70),(62,NULL,NULL,25,81),(63,NULL,NULL,25,82),(64,NULL,NULL,25,83),(65,NULL,NULL,25,86),(66,NULL,NULL,25,95),(67,NULL,NULL,26,87),(68,NULL,NULL,26,89),(69,NULL,NULL,27,3),(70,NULL,NULL,28,61),(71,NULL,NULL,28,63),(72,NULL,NULL,29,62),(73,NULL,NULL,30,65),(74,NULL,NULL,30,66),(75,NULL,NULL,31,70),(76,NULL,NULL,32,82),(77,NULL,NULL,32,86),(78,NULL,NULL,33,28),(79,NULL,NULL,33,29),(80,NULL,NULL,33,30),(82,NULL,NULL,33,31),(83,NULL,NULL,33,32),(84,NULL,NULL,33,33),(85,NULL,NULL,33,34),(86,NULL,NULL,33,35),(87,NULL,NULL,33,36),(88,NULL,NULL,33,37),(89,NULL,NULL,33,38),(90,NULL,NULL,33,39),(91,NULL,NULL,33,40),(92,NULL,NULL,33,62),(93,NULL,NULL,33,63),(94,NULL,NULL,34,2),(95,NULL,NULL,34,66),(96,NULL,NULL,34,95),(97,NULL,NULL,35,1),(98,NULL,NULL,35,3),(99,NULL,NULL,35,8),(100,NULL,NULL,35,54),(101,NULL,NULL,35,59),(102,NULL,NULL,36,82),(103,NULL,NULL,36,86),(104,NULL,NULL,37,46),(105,NULL,NULL,37,48),(106,NULL,NULL,37,49),(107,NULL,NULL,37,50),(108,NULL,NULL,37,52),(109,NULL,NULL,37,53),(110,NULL,NULL,37,54),(111,NULL,NULL,37,57),(112,NULL,NULL,37,58),(113,NULL,NULL,37,59),(114,NULL,NULL,37,61),(115,NULL,NULL,37,65),(116,NULL,NULL,37,66),(117,NULL,NULL,37,69),(118,NULL,NULL,37,70),(119,NULL,NULL,37,71),(120,NULL,NULL,37,72),(121,NULL,NULL,37,74),(122,NULL,NULL,37,75),(123,NULL,NULL,37,81),(124,NULL,NULL,37,83),(125,NULL,NULL,37,87),(126,NULL,NULL,37,88),(127,NULL,NULL,37,91),(128,NULL,NULL,38,21),(129,NULL,NULL,38,22),(130,NULL,NULL,39,3),(131,NULL,NULL,39,48),(132,NULL,NULL,39,61),(133,NULL,NULL,40,3),(134,NULL,NULL,41,3),(135,NULL,NULL,41,44),(136,NULL,NULL,41,95),(137,NULL,NULL,42,82),(138,NULL,NULL,42,86),(139,NULL,NULL,43,8),(140,NULL,NULL,44,22),(141,NULL,NULL,44,23),(142,NULL,NULL,45,3),(143,NULL,NULL,45,7),(144,NULL,NULL,45,23),(145,NULL,NULL,45,24),(146,NULL,NULL,45,54),(147,NULL,NULL,45,70),(148,NULL,NULL,45,71),(149,NULL,NULL,45,75),(150,NULL,NULL,46,7),(151,NULL,NULL,46,17),(152,NULL,NULL,46,23),(153,NULL,NULL,46,24),(154,NULL,NULL,46,28),(155,NULL,NULL,46,39),(156,NULL,NULL,46,40),(157,NULL,NULL,46,59),(158,NULL,NULL,46,68),(159,NULL,NULL,46,86),(160,NULL,NULL,46,87),(161,NULL,NULL,46,88),(162,NULL,NULL,47,54),(163,NULL,NULL,47,59),(164,NULL,NULL,48,48),(165,NULL,NULL,49,62),(166,NULL,NULL,49,68),(167,NULL,NULL,50,46),(168,NULL,NULL,50,48),(169,NULL,NULL,50,49),(170,NULL,NULL,50,50),(171,NULL,NULL,50,52),(172,NULL,NULL,50,53),(173,NULL,NULL,50,54),(174,NULL,NULL,50,57),(175,NULL,NULL,50,58),(176,NULL,NULL,50,59),(177,NULL,NULL,50,61),(178,NULL,NULL,50,62),(179,NULL,NULL,50,63),(180,NULL,NULL,50,65),(181,NULL,NULL,50,66),(182,NULL,NULL,50,68),(183,NULL,NULL,50,69),(184,NULL,NULL,50,70),(185,NULL,NULL,50,71),(186,NULL,NULL,50,72),(187,NULL,NULL,50,74),(188,NULL,NULL,50,75),(189,NULL,NULL,50,81),(190,NULL,NULL,50,82),(191,NULL,NULL,50,83),(192,NULL,NULL,50,86),(193,NULL,NULL,50,87),(194,NULL,NULL,50,88),(195,NULL,NULL,50,91),(196,NULL,NULL,50,95),(197,NULL,NULL,51,21),(198,NULL,NULL,52,44),(199,NULL,NULL,53,48),(200,NULL,NULL,54,1),(201,NULL,NULL,55,1),(202,NULL,NULL,55,2),(203,NULL,NULL,55,3),(204,NULL,NULL,55,4),(205,NULL,NULL,55,6),(206,NULL,NULL,55,7),(207,NULL,NULL,55,8),(208,NULL,NULL,55,17),(209,NULL,NULL,55,18),(210,NULL,NULL,55,19),(211,NULL,NULL,55,20),(212,NULL,NULL,55,21),(213,NULL,NULL,55,22),(214,NULL,NULL,55,23),(215,NULL,NULL,55,24),(216,NULL,NULL,55,25),(217,NULL,NULL,55,28),(218,NULL,NULL,55,29),(219,NULL,NULL,55,30),(220,NULL,NULL,55,31),(221,NULL,NULL,55,32),(222,NULL,NULL,55,33),(223,NULL,NULL,55,34),(224,NULL,NULL,55,35),(225,NULL,NULL,55,36),(226,NULL,NULL,55,37),(227,NULL,NULL,55,38),(228,NULL,NULL,55,44),(229,NULL,NULL,55,46),(230,NULL,NULL,55,48),(231,NULL,NULL,55,49),(232,NULL,NULL,55,50),(233,NULL,NULL,55,52),(234,NULL,NULL,55,53),(235,NULL,NULL,55,54),(236,NULL,NULL,55,57),(237,NULL,NULL,55,58),(238,NULL,NULL,55,59),(239,NULL,NULL,55,61),(240,NULL,NULL,55,62),(241,NULL,NULL,55,63),(242,NULL,NULL,55,65),(243,NULL,NULL,55,66),(244,NULL,NULL,55,68),(245,NULL,NULL,55,69),(246,NULL,NULL,55,70),(247,NULL,NULL,55,71),(248,NULL,NULL,55,72),(249,NULL,NULL,55,75),(250,NULL,NULL,55,81),(251,NULL,NULL,55,83),(252,NULL,NULL,55,87),(253,NULL,NULL,55,88),(254,NULL,NULL,55,91),(255,NULL,NULL,55,95),(256,NULL,NULL,56,49),(257,NULL,NULL,57,49),(258,NULL,NULL,58,49),(259,NULL,NULL,59,49),(260,NULL,NULL,60,57),(261,NULL,NULL,60,70),(262,NULL,NULL,60,71),(263,NULL,NULL,61,17),(264,NULL,NULL,61,18),(265,NULL,NULL,62,61),(266,NULL,NULL,62,62),(267,NULL,NULL,63,62),(268,NULL,NULL,64,17),(269,NULL,NULL,64,18),(270,NULL,NULL,65,59),(271,NULL,NULL,65,68),(272,NULL,NULL,66,1),(273,NULL,NULL,66,2),(274,NULL,NULL,66,4),(275,NULL,NULL,66,6),(276,NULL,NULL,66,7),(277,NULL,NULL,66,8),(278,NULL,NULL,66,17),(279,NULL,NULL,66,18),(280,NULL,NULL,66,25),(281,NULL,NULL,66,29),(282,NULL,NULL,66,30),(283,NULL,NULL,66,44),(284,NULL,NULL,66,46),(285,NULL,NULL,66,48),(286,NULL,NULL,66,49),(287,NULL,NULL,66,50),(288,NULL,NULL,66,52),(289,NULL,NULL,66,53),(290,NULL,NULL,66,54),(291,NULL,NULL,66,57),(292,NULL,NULL,66,58),(294,NULL,NULL,66,61),(295,NULL,NULL,66,63),(296,NULL,NULL,66,65),(297,NULL,NULL,66,66),(298,NULL,NULL,66,69),(299,NULL,NULL,66,70),(300,NULL,NULL,66,71),(301,NULL,NULL,66,72),(302,NULL,NULL,66,81),(303,NULL,NULL,66,82),(304,NULL,NULL,66,83),(305,NULL,NULL,66,87),(306,NULL,NULL,66,88),(307,NULL,NULL,66,91),(308,NULL,NULL,66,95),(309,NULL,NULL,67,1),(310,NULL,NULL,67,3),(311,NULL,NULL,67,4),(312,NULL,NULL,70,21),(313,NULL,NULL,70,22),(314,NULL,NULL,70,23),(315,NULL,NULL,70,24),(316,NULL,NULL,68,48),(317,NULL,NULL,69,7),(318,NULL,NULL,69,75);
/*!40000 ALTER TABLE `system_networkservicemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_system`
--

DROP TABLE IF EXISTS `system_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_system` (
  `system_id` int(11) NOT NULL AUTO_INCREMENT,
  `system` varchar(75) NOT NULL,
  `system_description` varchar(255),
  `system_note` text,
  `area_id` int(11) DEFAULT NULL,
  `landspace_id` int(11) DEFAULT NULL,
  `type_id` int(11),
  PRIMARY KEY (`system_id`),
  KEY `system_system_d266de13` (`area_id`),
  KEY `system_system_7638d5e9` (`landspace_id`),
  KEY `system_system_94757cae` (`type_id`),
  CONSTRAINT `system_system_area_id_2c367732f6da4233_fk_system_area_area_id` FOREIGN KEY (`area_id`) REFERENCES `system_area` (`area_id`),
  CONSTRAINT `system_system_type_id_4fdee18fe47561d1_fk_system_type_type_id` FOREIGN KEY (`type_id`) REFERENCES `system_type` (`type_id`),
  CONSTRAINT `s_landspace_id_17a8fc4cbf4a17fc_fk_system_landspace_landspace_id` FOREIGN KEY (`landspace_id`) REFERENCES `system_landspace` (`landspace_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_system`
--

LOCK TABLES `system_system` WRITE;
/*!40000 ALTER TABLE `system_system` DISABLE KEYS */;
INSERT INTO `system_system` VALUES (1,'m01ldap01','Central openLDAP directory server, with radius auth for WLAN and FusionDirectory frontend',NULL,1,1,2),(2,'m01radius01','Radius server for openVPN authentication',NULL,1,1,2),(3,'m01radius02',NULL,NULL,1,1,2),(4,'m01ldap02',NULL,NULL,1,3,2),(5,'m01pw01','Logical Volume still existing, machine not running',NULL,1,7,2),(6,'m01approx01','Debian package cacher, a caching proxy',NULL,2,1,2),(7,'m01fai01','FAI server for automated installation of Linux workstations',NULL,2,1,2),(8,'m01opsi01','OPSI server for automated installation of Windows workstations','This is a test note',2,1,2),(9,'m01fai02','Logical Volume still existing, machine not running',NULL,2,3,2),(10,'m01faitest01','Not running, but LV kvm_m01faitest01',NULL,2,3,3),(11,'m01test01','Running',NULL,2,3,3),(12,'m01testkvm01','Window Client to test OPSI packages',NULL,2,3,3),(13,'m01w2k801','Window 2008 client for testing. Active in libvirt management, but not running',NULL,2,3,3),(14,'m01win701','Windows 7 client for testing, Active in libvirt management, but not running',NULL,2,3,3),(15,'m01fw01a','Berlin firewall, cluster node a',NULL,3,1,4),(16,'m01fw01b','Berlin firewall, cluster node b',NULL,3,1,4),(17,'m01misc01','DNS, DHCP server (primary)',NULL,3,1,2),(18,'m01misc02','DNS, DHCP server (secondary)',NULL,3,1,2),(19,'m01proxy01','Apache reverse proxy to provide groupware.medneo.de and others to Internet',NULL,3,1,2),(20,'m01proxy02','Outgoing proxy',NULL,3,1,2),(21,'m01host01a','Berlin production cluster, node a',NULL,4,1,4),(22,'m01host01b','Berlin production cluster, node b',NULL,4,1,4),(23,'m01host02a','Berlin development cluster / Potdsam cluster, node a',NULL,4,1,4),(24,'m01host02b','Berlin development cluster / Potdsam cluster, node b',NULL,4,1,4),(25,'m01backup01','Backups of VServer filesystems and data',NULL,5,1,2),(26,'m01bareos01','Can no longer be found, but no note about deinstallation at LiHAS workshop in October',NULL,5,7,5),(28,'m01dwikidb02','Database for Confluence wiki server. (m01dwiki02)',NULL,6,1,6),(29,'m01mysql01','MIS DB for DocCirrus',NULL,6,1,2),(30,'m01mysql02',NULL,NULL,6,1,2),(31,'m01mysql03','Database for Zarafa',NULL,6,1,2),(32,'m01mysql04',NULL,NULL,6,1,2),(33,'m01mysql05','Database for agcore',NULL,6,1,2),(34,'m01mysql06',NULL,NULL,6,1,2),(35,'m01mysql07a','Production RIS database',NULL,6,1,2),(36,'m01mysql07b','Production RIS database',NULL,6,1,2),(37,'m01dmisdb01a','Replica server of m01mysql01a (MISDB PROD)',NULL,6,4,6),(38,'m01dmisdb01b','Replica server of m01mysql01a (MISDB PROD)',NULL,6,4,6),(39,'m01risdb08','Database development for RIS',NULL,6,4,6),(40,'m01risdb09','Database development for RIS',NULL,6,4,6),(41,'m01mysql08','Deleted 20151017',NULL,6,7,5),(42,'m01mysql09a','RIS08 and RIS09, no longer existing?',NULL,6,7,6),(43,'m01mysql09b','RIS testing DB, but LV vs_mysql09b still existing on host m01host02b',NULL,6,7,6),(44,'m01mon01','Icinga monitoring server and central syslog server',NULL,7,1,2),(45,'m01psyslog01','Central syslog server',NULL,7,1,6),(46,'m01dovecot01','Mail delivery agent. Stores incoming emails, handles mailboxes. IMAP access.',NULL,8,1,2),(47,'m01jabber01','Is not running, but LV vs_m01jabber01 still existing.',NULL,8,1,2),(48,'m01mail01','Mail transport agent. Transports in- and outgoing emails. (SMTP)',NULL,8,1,2),(49,'m01zarafa01','Groupware',NULL,8,1,2),(50,'m01horde01','Groupware',NULL,8,3,2),(51,'m01jabber02','Deleted 20151017',NULL,8,7,5),(52,'m01zutritt01',NULL,NULL,9,1,2),(53,'m01agcore01','DMS server',NULL,10,1,2),(54,'m01samba01','Samba fileserver and PDC',NULL,10,1,2),(55,'m01dataspace01','Grau Dataspace - Where is this server located?',NULL,10,5,7),(56,'m01samba02','Deleted 20151017',NULL,10,7,5),(57,'m01cups01','Printserver',NULL,12,1,2),(58,'m01ticket01','Redmine ticket system',NULL,13,1,2),(59,'m01visual01','VisualParadigm TeamWork server',NULL,13,1,6),(60,'m01bpmn01','Deleted 20151017 - Business Process Model and Notation',NULL,13,7,5),(61,'m01voip01','Old telephone server, had been managed by LiHAS. Maybe still doing fax.',NULL,14,1,2),(62,'m01voip02','Active telephone server, managed by Thu Pham',NULL,14,1,2),(63,'m01voip03','Test telephone server, managed by LiHAS',NULL,14,3,2),(64,'m01voip04','Only DNS name for voip02',NULL,14,6,1),(65,'m01typo301','Actual medneo webserver. VServer config missing?',NULL,15,1,2),(66,'m01typo302','Test system for Typo3. Staging system for the Typo3 service provider',NULL,15,3,2),(67,'m01xbmc01','Deleted 20151017 - Media Streaming',NULL,15,7,5),(68,'m01dwiki02','Confluence wiki server',NULL,16,1,6),(69,'m01wiki01','Old wiki',NULL,16,1,2),(70,'m01login01','Remote desktop server',NULL,17,1,2),(71,'m01login02','Info Fiedler: Still used actively',NULL,17,1,2),(72,'m01login03','Info Fiedler: Still used actively',NULL,17,1,2),(74,'m01x2go-boot01','Info Fiedler: Still used actively',NULL,17,1,2),(75,'m01x2go-boot02','Info Fiedler: Still used actively',NULL,17,1,2),(76,'m01abrech01','Machine is shut down but should kept ready as it serves as a backup for the current accounting system and hold old accounting data. Talk to Mr. Issing before deleting it',NULL,18,7,5),(77,'m01cdburn01','Windows client running dtmburn software for PACS',NULL,19,1,3),(78,'m01pacs01a','Phï¿½nix PACS cluster node a',NULL,19,1,4),(79,'m01pacs01b','Phï¿½nix PACS cluster node b',NULL,19,1,4),(80,'m01pacs01','Deleted 20151017',NULL,19,7,5),(81,'m01cardreader01',NULL,NULL,20,1,2),(82,'m01doccirrus01','DocCirrus production server',NULL,20,1,2),(83,'m01ris01','RIS production',NULL,20,1,2),(84,'m01winsrv01','Nuance SpeechMagic speech recognition software.',NULL,20,1,3),(85,'m01winsrv02','Nuance SpeechMagic speech recognition software.',NULL,20,1,3),(86,'m01sdoccirrus02','Staging server for DocCirrus',NULL,20,2,6),(87,'m01ris08','Clone of RIS production for development',NULL,20,4,6),(88,'m01ris08b','Clone of RIS production for development',NULL,20,4,6),(89,'m01ris09','Clone of RIS production for development',NULL,20,4,6),(90,'m01ris02','Deleted 20151017',NULL,20,7,5),(91,'m01ris03','Alex is still using connection to it. Not deleted on 20151017',NULL,20,7,2),(92,'m01ris04','Deleted 20151017',NULL,20,7,5),(93,'m01ris07','Deleted 20151017',NULL,20,7,5),(94,'m01speaking01','Deleted 20151017',NULL,20,7,5),(95,'m01prototype01',NULL,NULL,21,4,2),(96,'m01dmal01','Server for developers to use MAL (medneo abstract layer) - Deleted',NULL,21,7,5),(97,'m01empty01','Deleted 20151017',NULL,22,7,5),(98,'m01m2301','Deleted 20151017',NULL,22,7,5),(99,'m01m2302','Deleted 20151017',NULL,22,7,5),(100,'m01c10',NULL,NULL,22,8,8),(101,'m01c12',NULL,NULL,22,8,8),(102,'m01cam01',NULL,NULL,22,8,8),(103,'m01cam02',NULL,NULL,22,8,8),(104,'m01fbk01',NULL,NULL,22,8,8),(105,'m01fon500',NULL,NULL,22,8,8),(106,'m01fon600',NULL,NULL,22,8,8),(107,'m01fon719',NULL,NULL,22,8,8),(108,'m01isdn01',NULL,NULL,22,8,8),(109,'m01mrt01',NULL,NULL,22,8,8),(110,'m01print01',NULL,NULL,22,8,8),(111,'m01print02',NULL,NULL,22,8,8),(112,'m01print03',NULL,NULL,22,8,8),(113,'m01print04',NULL,NULL,22,8,8),(114,'m01scan01',NULL,NULL,22,8,8),(115,'m01speak01',NULL,NULL,22,8,8),(116,'m01sw01',NULL,NULL,22,8,8),(117,'m01sw02',NULL,NULL,22,8,8),(118,'m01sw03',NULL,NULL,22,8,8),(119,'m01sw04',NULL,NULL,22,8,8),(120,'m01sw07',NULL,NULL,22,8,8),(121,'m01tv01',NULL,NULL,22,8,8),(122,'m01tv02',NULL,NULL,22,8,8),(123,'m01usv01',NULL,NULL,22,8,8),(124,'m01wlan01',NULL,NULL,22,8,8),(125,'m01wlan02',NULL,NULL,22,8,8),(126,'m01wlan03',NULL,NULL,22,8,8),(127,'m01wlan04',NULL,NULL,22,8,8),(128,'m01wlan05',NULL,NULL,22,8,8),(129,'m01x000',NULL,NULL,22,8,8),(130,'TBD',NULL,NULL,22,8,8),(131,'m00git01',NULL,NULL,22,5,7),(132,'m00host01',NULL,NULL,22,5,7),(133,'m00host02a',NULL,NULL,22,5,7),(134,'m00jabber01',NULL,NULL,22,5,7),(135,'m00mail01',NULL,NULL,22,5,7);
/*!40000 ALTER TABLE `system_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_type`
--

DROP TABLE IF EXISTS `system_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(75) NOT NULL,
  `type_description` varchar(255),
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_type`
--

LOCK TABLES `system_type` WRITE;
/*!40000 ALTER TABLE `system_type` DISABLE KEYS */;
INSERT INTO `system_type` VALUES (1,'n.a.',NULL),(2,'VServer Host01',NULL),(3,'KVM Host01',NULL),(4,'Bare Metal',NULL),(5,'Unknown Decommissioned',NULL),(6,'VServer Host02',NULL),(7,'Unknown',NULL),(8,'Device',NULL);
/*!40000 ALTER TABLE `system_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_userfeature`
--

DROP TABLE IF EXISTS `system_userfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_userfeature` (
  `user_feature_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_feature` varchar(100) DEFAULT NULL,
  `user_feature_description` varchar(255) NOT NULL,
  PRIMARY KEY (`user_feature_id`),
  UNIQUE KEY `user_feature` (`user_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_userfeature`
--

LOCK TABLES `system_userfeature` WRITE;
/*!40000 ALTER TABLE `system_userfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_userfeature` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-06 20:34:26
