-- MySQL dump 10.13  Distrib 8.0.31, for macos12.6 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'PcDUKh2ihN18E0pBBmfnFAyibm5sIQ1A',1,'2023-01-04 01:10:57','2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2028-01-04 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'Top Slider Image 2','2028-01-04 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'Homepage middle 1','2028-01-04 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,'Homepage middle 2','2028-01-04 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(5,'Homepage middle 3','2028-01-04 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(6,'Homepage big 1','2028-01-04 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(7,'Homepage bottom small','2028-01-04 00:00:00','not_set','1GCSTSYAMDEI','promotion/7.jpg','/products',0,7,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(8,'Product sidebar','2028-01-04 00:00:00','product-sidebar','CS83TMN9LYSH','promotion/8.jpg','/products',0,8,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(9,'Homepage big 2','2028-01-04 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Quaerat dolorem sit beatae in veniam asperiores ipsum. Animi quia ea deleniti voluptate velit recusandae quia. Alias id necessitatibus laudantium.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(2,'Fashion',0,'Aut omnis et sit beatae repellat nam repellat. Voluptas amet amet alias culpa repudiandae error. Iure reiciendis quod amet eos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(3,'Electronic',0,'Minus est vitae quia pariatur. Reprehenderit veniam deleniti temporibus. Accusantium non unde eum ducimus. Modi consequatur harum et sequi harum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(4,'Commercial',0,'Quia quibusdam vel id unde. Corporis et omnis saepe pariatur. Dolorem nesciunt voluptate ullam accusamus dolores et blanditiis. Nemo quo autem dolores.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-01-04 01:10:56','2023-01-04 01:10:56');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Th??ng m?i ?i?n t?',NULL),('vi',2,'Th?i trang',NULL),('vi',3,'?i?n t?',NULL),('vi',4,'Th??ng m?i',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Darrick Hodkiewicz','garrett.mccullough@example.com','+14584327722','5640 Considine Square Suite 547\nMarianeborough, NE 08219-4044','Id et nobis cupiditate impedit dolores id.','Ipsam totam omnis maiores iusto eum qui eum. Et est molestias accusantium consequatur et odio voluptates totam. Error accusamus nesciunt dolor fugiat. Optio nihil molestiae voluptas tempora fuga. Similique totam autem aut aut illum. Sunt vero nisi ad nemo. Qui omnis odio facilis facere consequatur ea.','read','2023-01-04 01:10:55','2023-01-04 01:10:55'),(2,'Henderson Ziemann','clinton.jaskolski@example.com','+12815524438','6734 Triston Route\nLockmanstad, CT 27619-1549','Quidem nihil eaque est dolore.','Dolorum et quia aut qui minus. Laudantium soluta quibusdam esse eum in praesentium. Vel fuga tempora qui repellat. Dolorem similique asperiores a enim reprehenderit. Exercitationem aut et et adipisci ipsa eligendi nulla. Rem voluptas commodi maiores accusantium aut accusamus esse. Consequatur nisi consectetur iusto. Et sint cupiditate nemo modi non consequatur ut.','read','2023-01-04 01:10:55','2023-01-04 01:10:55'),(3,'Sibyl Nikolaus','zola.johnston@example.net','+1-845-689-8682','52514 Karen Forge\nStehrchester, MS 77729-5604','Officia accusamus tempore ut saepe.','Dolores occaecati voluptate totam minus corrupti in. Et veritatis rerum quis dolor a saepe odio. In eveniet ipsam ipsam sed consectetur quos ab. Expedita magnam delectus placeat qui consequatur. Ut tempore omnis eius tempora. Quas et quasi maiores et enim molestiae quo. Cupiditate repellat voluptates dolores ipsam ut molestiae aut cum.','unread','2023-01-04 01:10:55','2023-01-04 01:10:55'),(4,'Dr. Kody Hermiston','kuhic.dejah@example.com','+14437963382','904 Kutch Islands Suite 593\nIcieland, TX 84312','Unde magnam possimus illo ea.','Aut perspiciatis iste ab ut. Ipsum sapiente rerum ipsam nobis iusto. In consequuntur saepe voluptatum molestiae provident et consequatur. Maxime unde vel rerum. Quos aut rerum molestiae rerum et iste voluptatum. Voluptatem doloribus et quisquam similique culpa atque totam. In perspiciatis vel nemo. Aliquam expedita iure alias corrupti quasi assumenda impedit. Voluptas est sit atque omnis alias dolorem. Velit sint aut occaecati aspernatur molestiae porro nobis. Repellat quisquam repellat saepe.','unread','2023-01-04 01:10:55','2023-01-04 01:10:55'),(5,'Prof. Charlie Douglas','amccullough@example.com','+1-769-669-2923','6058 Kassulke Pine Suite 195\nLake Rafaelabury, IL 70567-9131','Dolores dolore quas et.','Sapiente libero similique repellendus fuga id. Ut sequi consequatur vitae accusamus. Suscipit numquam delectus quibusdam fugiat sapiente assumenda eos. Amet ut ullam magnam quod. Sunt cupiditate asperiores quidem. Sit fugiat minima impedit qui officiis voluptatem dolore dolorem. Quam eaque sapiente neque corrupti voluptatibus placeat sint. Velit est occaecati facilis quia perspiciatis et.','read','2023-01-04 01:10:55','2023-01-04 01:10:55'),(6,'Braden Runolfsdottir','wwyman@example.net','+1.972.483.2371','195 Bernie Ramp\nNew Albin, OK 35622-7768','Blanditiis quia eius enim modi.','Doloremque qui quia repudiandae dicta eos minima. Consequatur consectetur dolorum quo totam tenetur nihil et. Hic amet est id id. Exercitationem rerum sunt nemo ipsam ratione suscipit. At eos asperiores quo. Quia corporis ut fugiat delectus. Et qui repudiandae vero eum.','read','2023-01-04 01:10:55','2023-01-04 01:10:55'),(7,'Clement Runolfsson','hyatt.ansel@example.com','559.760.3068','9013 Michale Extension\nWest Tryciaborough, IL 88111-7169','Rerum qui quia magnam.','Rem sint quidem molestias beatae. Optio nihil ratione dolorum esse impedit. Veritatis quas explicabo numquam hic nostrum. Officiis est numquam dolores expedita amet in. Cum a dolorem veritatis voluptas doloremque et et. Earum veniam sequi omnis suscipit asperiores officiis quae. Itaque cupiditate qui maiores incidunt. Autem sunt ipsam ducimus. Rerum accusamus vel alias ex illum natus sit. Eum ut voluptatum ullam aut explicabo rerum. Dolorum aliquid non autem unde corrupti earum eaque.','unread','2023-01-04 01:10:55','2023-01-04 01:10:55'),(8,'Keanu Langworth','tomasa.kulas@example.org','203.832.9969','70184 Albina Mission\nNew Era, ID 96134-9804','Totam in quis animi unde numquam et.','Qui sit qui itaque quia quibusdam voluptas voluptate. Aliquam dolorem aut nam reiciendis neque. Quaerat dolor illum voluptatem autem nulla recusandae provident expedita. Possimus velit tempora veritatis vitae animi laborum harum. Consectetur quisquam est distinctio architecto. Minima sed quam assumenda et veritatis expedita. Laboriosam voluptas omnis iure deleniti quis. Architecto veritatis est atque voluptatibus voluptatem amet. Necessitatibus at architecto culpa commodi commodi ea.','read','2023-01-04 01:10:55','2023-01-04 01:10:55'),(9,'Elton Cummings PhD','rchamplin@example.org','662.616.7078','631 Legros Shoals Suite 311\nArnaldoborough, GA 33542-3853','Recusandae ut non libero omnis.','In optio quibusdam quia occaecati magnam et fugiat. Optio hic voluptas aperiam tempore id consectetur temporibus. Autem quos dolorem commodi doloribus eveniet. Minus maxime asperiores nulla fugiat. Fuga neque aut dolorem vitae. Modi aut et itaque eveniet. Beatae repudiandae et architecto libero optio ipsum ratione. Cumque et qui non officiis. Harum consectetur provident eos porro unde praesentium. Porro nulla magni culpa excepturi cumque. Voluptas laborum hic aperiam corporis dolore.','unread','2023-01-04 01:10:55','2023-01-04 01:10:55'),(10,'Benjamin Borer II','yspencer@example.net','385.716.1833','9987 Keeling Course Suite 536\nNorth Angeline, VT 15573-2403','Sequi velit ratione rerum.','Est enim et et id. Aut est vel perferendis voluptatum pariatur enim libero. Laborum aut quo sequi est commodi eum. Corporis enim qui quia corporis et itaque. Dolorem qui ipsum magnam veniam quia. Voluptates enim voluptas magnam incidunt eum totam. Hic voluptatem id explicabo ea veniam optio iure. Vel voluptates sunt voluptas reprehenderit expedita est at aut. Doloribus adipisci esse assumenda consequatur asperiores et qui.','unread','2023-01-04 01:10:55','2023-01-04 01:10:55');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2023-01-04 01:10:49','2023-01-04 01:10:49');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(2,'EUR','�',0,2,1,0,0.84,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(3,'VND','?',0,0,2,0,23203,'2023-01-04 01:10:49','2023-01-04 01:10:49');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Chaya Bogan','customer@botble.com','+19174484885','NO','Hawaii','Lake Merritt','764 Nathanael Mount Suite 480',1,1,'2023-01-04 01:10:54','2023-01-04 01:10:54','30874-7607'),(2,'Chaya Bogan','customer@botble.com','+18202652361','CO','New Mexico','Schillerfurt','192 Ryleigh Manor Apt. 200',1,0,'2023-01-04 01:10:54','2023-01-04 01:10:54','80387-6524'),(3,'Yasmeen Morissette','vendor@botble.com','+16622289426','NI','New Jersey','Genesisshire','4280 Braun Crest Apt. 636',2,1,'2023-01-04 01:10:54','2023-01-04 01:10:54','51166-8341'),(4,'Yasmeen Morissette','vendor@botble.com','+14323897084','SG','Indiana','North Genoveva','66283 Gudrun Plaza',2,0,'2023-01-04 01:10:54','2023-01-04 01:10:54','93465'),(5,'Nico Kuhlman','funk.fritz@example.com','+12076924571','MN','Idaho','Kutchville','8595 Laurence Street',3,1,'2023-01-04 01:10:54','2023-01-04 01:10:54','47023'),(6,'Miss Cassidy Lubowitz Sr.','gulgowski.myah@example.net','+12013585397','BN','Delaware','O\'Harabury','99625 Feest Plaza Suite 061',4,1,'2023-01-04 01:10:54','2023-01-04 01:10:54','92178-5533'),(7,'Jamaal Kiehn','yrath@example.com','+15513171817','FI','District of Columbia','West Arliebury','569 Larkin Points',5,1,'2023-01-04 01:10:54','2023-01-04 01:10:54','30839-0286'),(8,'Jasper Boyle','gina.tillman@example.org','+13646340391','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',6,1,'2023-01-04 01:10:55','2023-01-04 01:10:55','50438-1793'),(9,'Derek Nikolaus','carolyne.walsh@example.org','+19738531043','MO','Maine','North Krystalfort','4033 Geovanny Trafficway Suite 955',7,1,'2023-01-04 01:10:55','2023-01-04 01:10:55','49801'),(10,'Bernardo Braun','barton.fanny@example.com','+18648279621','IN','Wisconsin','Bradleyhaven','5202 Haleigh Squares',8,1,'2023-01-04 01:10:55','2023-01-04 01:10:55','53254'),(11,'Dr. Eudora Marks','wiza.isaiah@example.com','+15043666393','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',9,1,'2023-01-04 01:10:55','2023-01-04 01:10:55','35613-7858'),(12,'Prof. Trystan Howe V','flatley.erik@example.com','+12064192908','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',10,1,'2023-01-04 01:10:55','2023-01-04 01:10:55','26289');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Chaya Bogan','customer@botble.com','$2y$10$c/7fUZQEgABwTpNDl90bUeJzwxx/zAWkwZLXuwc/2HY398H6ssmoe','customers/3.jpg','1996-01-02','+17024632616',NULL,'2023-01-04 01:10:54','2023-01-04 01:10:54','2023-01-04 08:10:54',NULL,'activated',0,NULL),(2,'Yasmeen Morissette','vendor@botble.com','$2y$10$b075A6C4YOUDO/qobReX1es1oQP.76yeLZ32xR5afMaN6TmdM5Kt.','customers/10.jpg','1998-12-14','+19419607110',NULL,'2023-01-04 01:10:54','2023-01-04 01:10:58','2023-01-04 08:10:54',NULL,'activated',1,'2023-01-04 08:10:58'),(3,'Nico Kuhlman','funk.fritz@example.com','$2y$10$TscPbspLSr8mLzlWsYbjF.GaIANywmqO/asJ1IkTkNL9vIhSjODmK','customers/1.jpg','1972-12-08','+15102847396',NULL,'2023-01-04 01:10:54','2023-01-04 01:10:58','2023-01-04 08:10:54',NULL,'activated',1,'2023-01-04 08:10:58'),(4,'Miss Cassidy Lubowitz Sr.','gulgowski.myah@example.net','$2y$10$dAM8QUlPuKViBY2KAchtfuUoab7Dx0XrFOHHlsoszvJiWuuLzXdHm','customers/2.jpg','1985-12-25','+12317141550',NULL,'2023-01-04 01:10:54','2023-01-04 01:10:54','2023-01-04 08:10:54',NULL,'activated',0,NULL),(5,'Jamaal Kiehn','yrath@example.com','$2y$10$2BM9U0fzM07TEgKulcN1c.QUPVArJx.oZu9R/9FTw2WHEv5GtHJ1i','customers/3.jpg','1998-12-11','+15406028953',NULL,'2023-01-04 01:10:54','2023-01-04 01:10:58','2023-01-04 08:10:54',NULL,'activated',1,'2023-01-04 08:10:58'),(6,'Jasper Boyle','gina.tillman@example.org','$2y$10$d95fY0xIIgt8d6MDD/jkSOPhbDbP/VE.9KW3xYRQKQxeQZ6GYO0D6','customers/4.jpg','1987-01-03','+13469768875',NULL,'2023-01-04 01:10:55','2023-01-04 01:10:55','2023-01-04 08:10:55',NULL,'activated',0,NULL),(7,'Derek Nikolaus','carolyne.walsh@example.org','$2y$10$P7rZ8MtnISTibhSYBk.0Wej0kCvDZOK8FouMcTX8rF1BE3KM2eJPu','customers/5.jpg','1982-12-27','+18646523031',NULL,'2023-01-04 01:10:55','2023-01-04 01:10:58','2023-01-04 08:10:55',NULL,'activated',1,'2023-01-04 08:10:58'),(8,'Bernardo Braun','barton.fanny@example.com','$2y$10$BXH8HvFGSx926pe8A3wgzOL/srfqwMblE112W/ZMrW1Sw0tNmYH9i','customers/6.jpg','1979-01-03','+12025582440',NULL,'2023-01-04 01:10:55','2023-01-04 01:10:55','2023-01-04 08:10:55',NULL,'activated',0,NULL),(9,'Dr. Eudora Marks','wiza.isaiah@example.com','$2y$10$mEjV0sSQP/QR.gfD.pELzum/t7CpDR1se/RM.ArfF5BA35wQ3HfVe','customers/7.jpg','1995-12-29','+13343280193',NULL,'2023-01-04 01:10:55','2023-01-04 01:10:55','2023-01-04 08:10:55',NULL,'activated',0,NULL),(10,'Prof. Trystan Howe V','flatley.erik@example.com','$2y$10$Zn4wE4mmA8N1rM7Ep5DsAu7EzGZMgfGM8/FfoYtX2lqSGWf.K8x1i','customers/8.jpg','1976-12-30','+12319459534',NULL,'2023-01-04 01:10:55','2023-01-04 01:10:55','2023-01-04 08:10:55',NULL,'activated',0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,56.9775,9,3),(1,2,27.54,17,4),(1,3,16.8,11,1),(1,4,331.8084,14,3),(1,5,475.94,9,5),(1,6,175.01,14,4),(1,7,284.48,20,2),(1,8,512.8704,11,4),(1,9,280,8,1),(1,10,723.26,15,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2023-02-03 00:00:00','published','2023-01-04 01:10:55','2023-01-04 01:10:55');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuy?n m?i m�a ?�ng.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,'1 Year',0,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(1,'2 Year',10,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(1,'3 Year',20,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'4GB',0,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'8GB',10,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'16GB',20,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'Core i5',0,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'Core i7',10,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'Core i9',20,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,'128GB',0,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,'256GB',10,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,'512GB',20,9999,0,'2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` int unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Miss Cassidy Lubowitz Sr.','+12013585397','gulgowski.myah@example.net','BN','Delaware','O\'Harabury','99625 Feest Plaza Suite 061',1,'92178-5533','shipping_address'),(2,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',2,'26289','shipping_address'),(3,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',3,'26289','shipping_address'),(4,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',4,'35613-7858','shipping_address'),(5,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',5,'35613-7858','shipping_address'),(6,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',6,'26289','shipping_address'),(7,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',7,'26289','shipping_address'),(8,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',8,'26289','shipping_address'),(9,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',9,'26289','shipping_address'),(10,'Chaya Bogan','+19174484885','customer@botble.com','NO','Hawaii','Lake Merritt','764 Nathanael Mount Suite 480',10,'30874-7607','shipping_address'),(11,'Chaya Bogan','+19174484885','customer@botble.com','NO','Hawaii','Lake Merritt','764 Nathanael Mount Suite 480',11,'30874-7607','shipping_address'),(12,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',12,'50438-1793','shipping_address'),(13,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',13,'50438-1793','shipping_address'),(14,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',14,'50438-1793','shipping_address'),(15,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',15,'50438-1793','shipping_address'),(16,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',16,'50438-1793','shipping_address'),(17,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',17,'35613-7858','shipping_address'),(18,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',18,'35613-7858','shipping_address'),(19,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',19,'50438-1793','shipping_address'),(20,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',20,'50438-1793','shipping_address'),(21,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',21,'50438-1793','shipping_address'),(22,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',22,'50438-1793','shipping_address'),(23,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',23,'26289','shipping_address'),(24,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',24,'26289','shipping_address'),(25,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',25,'26289','shipping_address'),(26,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',26,'35613-7858','shipping_address'),(27,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',27,'35613-7858','shipping_address'),(28,'Chaya Bogan','+19174484885','customer@botble.com','NO','Hawaii','Lake Merritt','764 Nathanael Mount Suite 480',28,'30874-7607','shipping_address'),(29,'Chaya Bogan','+19174484885','customer@botble.com','NO','Hawaii','Lake Merritt','764 Nathanael Mount Suite 480',29,'30874-7607','shipping_address'),(30,'Chaya Bogan','+19174484885','customer@botble.com','NO','Hawaii','Lake Merritt','764 Nathanael Mount Suite 480',30,'30874-7607','shipping_address'),(31,'Miss Cassidy Lubowitz Sr.','+12013585397','gulgowski.myah@example.net','BN','Delaware','O\'Harabury','99625 Feest Plaza Suite 061',31,'92178-5533','shipping_address'),(32,'Miss Cassidy Lubowitz Sr.','+12013585397','gulgowski.myah@example.net','BN','Delaware','O\'Harabury','99625 Feest Plaza Suite 061',32,'92178-5533','shipping_address'),(33,'Miss Cassidy Lubowitz Sr.','+12013585397','gulgowski.myah@example.net','BN','Delaware','O\'Harabury','99625 Feest Plaza Suite 061',33,'92178-5533','shipping_address'),(34,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',34,'26289','shipping_address'),(35,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',35,'26289','shipping_address'),(36,'Prof. Trystan Howe V','+12064192908','flatley.erik@example.com','HK','Utah','New Syble','19153 Hintz Rapids Apt. 050',36,'26289','shipping_address'),(37,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',37,'35613-7858','shipping_address'),(38,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',38,'35613-7858','shipping_address'),(39,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',39,'35613-7858','shipping_address'),(40,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',40,'35613-7858','shipping_address'),(41,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',41,'35613-7858','shipping_address'),(42,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',42,'35613-7858','shipping_address'),(43,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',43,'35613-7858','shipping_address'),(44,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',44,'50438-1793','shipping_address'),(45,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',45,'50438-1793','shipping_address'),(46,'Jasper Boyle','+13646340391','gina.tillman@example.org','MS','Florida','Lynchmouth','43110 Finn Estate Suite 790',46,'50438-1793','shipping_address'),(47,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',47,'35613-7858','shipping_address'),(48,'Dr. Eudora Marks','+15043666393','wiza.isaiah@example.com','UZ','California','Port Cassandre','98340 Earnestine Mountains Apt. 357',48,'35613-7858','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-12-30 01:10:58','2022-12-30 01:10:58'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-12-30 01:10:58','2022-12-30 01:10:58'),(3,'confirm_payment','Payment was confirmed (amount $6,484.00) by %user_name%',0,1,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-12-20 19:10:58','2022-12-20 19:10:58'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-12-20 19:10:58','2022-12-20 19:10:58'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-12-31 21:10:58','2022-12-31 21:10:58'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-12-31 21:10:58','2022-12-31 21:10:58'),(12,'confirm_payment','Payment was confirmed (amount $1,599.00) by %user_name%',0,3,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(14,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-01-01 01:10:58','2023-01-01 01:10:58'),(15,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-01-01 01:10:58','2023-01-01 01:10:58'),(16,'confirm_payment','Payment was confirmed (amount $5,622.00) by %user_name%',0,4,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(17,'create_shipment','Created shipment for order',0,4,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-01-02 13:10:58','2023-01-02 13:10:58'),(20,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-01-02 13:10:58','2023-01-02 13:10:58'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-12-30 19:10:58','2022-12-30 19:10:58'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-12-30 19:10:58','2022-12-30 19:10:58'),(25,'confirm_payment','Payment was confirmed (amount $1,036.00) by %user_name%',0,6,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(26,'create_shipment','Created shipment for order',0,6,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-12-27 23:10:58','2022-12-27 23:10:58'),(28,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-12-27 23:10:58','2022-12-27 23:10:58'),(29,'confirm_payment','Payment was confirmed (amount $1,082.00) by %user_name%',0,7,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(30,'create_shipment','Created shipment for order',0,7,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-12-22 07:10:58','2022-12-22 07:10:58'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-12-22 07:10:58','2022-12-22 07:10:58'),(33,'confirm_payment','Payment was confirmed (amount $2,766.00) by %user_name%',0,8,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(36,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-01-01 05:10:58','2023-01-01 05:10:58'),(37,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-01-01 05:10:58','2023-01-01 05:10:58'),(38,'confirm_payment','Payment was confirmed (amount $416.00) by %user_name%',0,9,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(39,'create_shipment','Created shipment for order',0,9,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(40,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(41,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-12-28 09:10:58','2022-12-28 09:10:58'),(42,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-12-28 09:10:58','2022-12-28 09:10:58'),(43,'confirm_payment','Payment was confirmed (amount $3,918.00) by %user_name%',0,10,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(44,'create_shipment','Created shipment for order',0,10,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(45,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-12-31 01:10:58','2022-12-31 01:10:58'),(46,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-12-31 01:10:58','2022-12-31 01:10:58'),(47,'confirm_payment','Payment was confirmed (amount $1,036.00) by %user_name%',0,11,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(48,'create_shipment','Created shipment for order',0,11,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-12-30 01:10:59','2022-12-30 01:10:59'),(50,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-12-30 01:10:59','2022-12-30 01:10:59'),(51,'confirm_payment','Payment was confirmed (amount $1,247.00) by %user_name%',0,12,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(52,'create_shipment','Created shipment for order',0,12,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(53,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-12-31 07:10:59','2022-12-31 07:10:59'),(54,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-12-31 07:10:59','2022-12-31 07:10:59'),(55,'confirm_payment','Payment was confirmed (amount $1,546.00) by %user_name%',0,13,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(56,'create_shipment','Created shipment for order',0,13,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(57,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(58,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-12-28 01:10:59','2022-12-28 01:10:59'),(59,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-12-28 01:10:59','2022-12-28 01:10:59'),(60,'confirm_payment','Payment was confirmed (amount $3,549.00) by %user_name%',0,14,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(61,'create_shipment','Created shipment for order',0,14,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(62,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-01-02 21:10:59','2023-01-02 21:10:59'),(63,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-01-02 21:10:59','2023-01-02 21:10:59'),(64,'confirm_payment','Payment was confirmed (amount $1,066.00) by %user_name%',0,15,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(65,'create_shipment','Created shipment for order',0,15,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(66,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-12-26 21:10:59','2022-12-26 21:10:59'),(68,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-12-26 21:10:59','2022-12-26 21:10:59'),(69,'create_shipment','Created shipment for order',0,16,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-12-28 13:10:59','2022-12-28 13:10:59'),(71,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-12-28 13:10:59','2022-12-28 13:10:59'),(72,'create_shipment','Created shipment for order',0,17,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-12-24 05:10:59','2022-12-24 05:10:59'),(74,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-12-24 05:10:59','2022-12-24 05:10:59'),(75,'confirm_payment','Payment was confirmed (amount $2,421.00) by %user_name%',0,18,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(76,'create_shipment','Created shipment for order',0,18,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-12-27 01:10:59','2022-12-27 01:10:59'),(78,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-12-27 01:10:59','2022-12-27 01:10:59'),(79,'confirm_payment','Payment was confirmed (amount $5,774.00) by %user_name%',0,19,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(80,'create_shipment','Created shipment for order',0,19,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(81,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-12-26 01:10:59','2022-12-26 01:10:59'),(83,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-12-26 01:10:59','2022-12-26 01:10:59'),(84,'confirm_payment','Payment was confirmed (amount $2,319.00) by %user_name%',0,20,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(85,'create_shipment','Created shipment for order',0,20,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-01-01 07:10:59','2023-01-01 07:10:59'),(88,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-01-01 07:10:59','2023-01-01 07:10:59'),(89,'create_shipment','Created shipment for order',0,21,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(90,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-12-26 19:10:59','2022-12-26 19:10:59'),(91,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-12-26 19:10:59','2022-12-26 19:10:59'),(92,'confirm_payment','Payment was confirmed (amount $2,226.00) by %user_name%',0,22,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(93,'create_shipment','Created shipment for order',0,22,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(95,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(96,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(97,'confirm_payment','Payment was confirmed (amount $2,494.00) by %user_name%',0,23,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(98,'create_shipment','Created shipment for order',0,23,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(99,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-12-30 01:10:59','2022-12-30 01:10:59'),(100,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-12-30 01:10:59','2022-12-30 01:10:59'),(101,'confirm_payment','Payment was confirmed (amount $566.00) by %user_name%',0,24,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(102,'create_shipment','Created shipment for order',0,24,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(103,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-12-30 21:10:59','2022-12-30 21:10:59'),(105,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-12-30 21:10:59','2022-12-30 21:10:59'),(106,'create_shipment','Created shipment for order',0,25,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(107,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(108,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-01-01 19:10:59','2023-01-01 19:10:59'),(109,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-01-01 19:10:59','2023-01-01 19:10:59'),(110,'create_shipment','Created shipment for order',0,26,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-01-01 19:10:59','2023-01-01 19:10:59'),(112,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-01-01 19:10:59','2023-01-01 19:10:59'),(113,'confirm_payment','Payment was confirmed (amount $2,282.00) by %user_name%',0,27,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(114,'create_shipment','Created shipment for order',0,27,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(115,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-12-31 17:10:59','2022-12-31 17:10:59'),(116,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-12-31 17:10:59','2022-12-31 17:10:59'),(117,'create_shipment','Created shipment for order',0,28,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-12-31 01:10:59','2022-12-31 01:10:59'),(119,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-12-31 01:10:59','2022-12-31 01:10:59'),(120,'confirm_payment','Payment was confirmed (amount $2,665.00) by %user_name%',0,29,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(121,'create_shipment','Created shipment for order',0,29,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(122,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(123,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-01-03 09:10:59','2023-01-03 09:10:59'),(124,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-01-03 09:10:59','2023-01-03 09:10:59'),(125,'confirm_payment','Payment was confirmed (amount $2,754.00) by %user_name%',0,30,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(126,'create_shipment','Created shipment for order',0,30,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(127,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-01-01 03:10:59','2023-01-01 03:10:59'),(128,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-01-01 03:10:59','2023-01-01 03:10:59'),(129,'create_shipment','Created shipment for order',0,31,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(130,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-01-01 03:10:59','2023-01-01 03:10:59'),(131,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-01-01 03:10:59','2023-01-01 03:10:59'),(132,'create_shipment','Created shipment for order',0,32,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-01-02 21:10:59','2023-01-02 21:10:59'),(134,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-01-02 21:10:59','2023-01-02 21:10:59'),(135,'create_shipment','Created shipment for order',0,33,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(136,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-01-03 13:10:59','2023-01-03 13:10:59'),(137,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-01-03 13:10:59','2023-01-03 13:10:59'),(138,'confirm_payment','Payment was confirmed (amount $40.50) by %user_name%',0,34,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(139,'create_shipment','Created shipment for order',0,34,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(140,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(141,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-12-30 13:10:59','2022-12-30 13:10:59'),(142,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-12-30 13:10:59','2022-12-30 13:10:59'),(143,'confirm_payment','Payment was confirmed (amount $3,367.00) by %user_name%',0,35,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(144,'create_shipment','Created shipment for order',0,35,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(145,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(146,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-01-02 01:10:59','2023-01-02 01:10:59'),(147,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-01-02 01:10:59','2023-01-02 01:10:59'),(148,'confirm_payment','Payment was confirmed (amount $3,741.00) by %user_name%',0,36,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(149,'create_shipment','Created shipment for order',0,36,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(150,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(151,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-12-31 17:10:59','2022-12-31 17:10:59'),(152,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-12-31 17:10:59','2022-12-31 17:10:59'),(153,'create_shipment','Created shipment for order',0,37,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(154,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-01-01 13:10:59','2023-01-01 13:10:59'),(156,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-01-01 13:10:59','2023-01-01 13:10:59'),(157,'create_shipment','Created shipment for order',0,38,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(158,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(159,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(160,'confirm_payment','Payment was confirmed (amount $560.00) by %user_name%',0,39,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(161,'create_shipment','Created shipment for order',0,39,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(162,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(163,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(164,'confirm_payment','Payment was confirmed (amount $1,836.00) by %user_name%',0,40,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(165,'create_shipment','Created shipment for order',0,40,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(166,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(167,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(168,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(169,'create_shipment','Created shipment for order',0,41,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(170,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(171,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-01-03 13:10:59','2023-01-03 13:10:59'),(172,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-01-03 13:10:59','2023-01-03 13:10:59'),(173,'confirm_payment','Payment was confirmed (amount $2,477.00) by %user_name%',0,42,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(174,'create_shipment','Created shipment for order',0,42,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(175,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(176,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2023-01-02 13:10:59','2023-01-02 13:10:59'),(177,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2023-01-02 13:10:59','2023-01-02 13:10:59'),(178,'confirm_payment','Payment was confirmed (amount $786.00) by %user_name%',0,43,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(179,'create_shipment','Created shipment for order',0,43,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(180,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(181,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(182,'create_shipment','Created shipment for order',0,44,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(183,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(184,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(185,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(186,'create_shipment','Created shipment for order',0,45,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(187,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(188,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2023-01-03 17:10:59','2023-01-03 17:10:59'),(189,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2023-01-03 17:10:59','2023-01-03 17:10:59'),(190,'create_shipment','Created shipment for order',0,46,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(191,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(192,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2023-01-03 05:10:59','2023-01-03 05:10:59'),(193,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2023-01-03 05:10:59','2023-01-03 05:10:59'),(194,'confirm_payment','Payment was confirmed (amount $2,494.00) by %user_name%',0,47,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(195,'create_shipment','Created shipment for order',0,47,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(196,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2023-01-03 17:10:59','2023-01-03 17:10:59'),(197,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2023-01-03 17:10:59','2023-01-03 17:10:59'),(198,'confirm_payment','Payment was confirmed (amount $1,836.00) by %user_name%',0,48,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(199,'create_shipment','Created shipment for order',0,48,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(200,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(201,'update_status','Order confirmed by %user_name%',0,1,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(202,'update_status','Order confirmed by %user_name%',0,4,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(203,'update_status','Order confirmed by %user_name%',0,8,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(204,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(205,'update_status','Order confirmed by %user_name%',0,13,NULL,'2023-01-04 01:11:00','2023-01-04 01:11:00'),(206,'update_status','Order confirmed by %user_name%',0,15,NULL,'2023-01-04 01:11:00','2023-01-04 01:11:00'),(207,'update_status','Order confirmed by %user_name%',0,19,NULL,'2023-01-04 01:11:00','2023-01-04 01:11:00'),(208,'update_status','Order confirmed by %user_name%',0,20,NULL,'2023-01-04 01:11:00','2023-01-04 01:11:00'),(209,'update_status','Order confirmed by %user_name%',0,22,NULL,'2023-01-04 01:11:00','2023-01-04 01:11:00'),(210,'update_status','Order confirmed by %user_name%',0,24,NULL,'2023-01-04 01:11:00','2023-01-04 01:11:00'),(211,'update_status','Order confirmed by %user_name%',0,29,NULL,'2023-01-04 01:11:00','2023-01-04 01:11:00'),(212,'update_status','Order confirmed by %user_name%',0,34,NULL,'2023-01-04 01:11:00','2023-01-04 01:11:00'),(213,'update_status','Order confirmed by %user_name%',0,35,NULL,'2023-01-04 01:11:01','2023-01-04 01:11:01'),(214,'update_status','Order confirmed by %user_name%',0,36,NULL,'2023-01-04 01:11:01','2023-01-04 01:11:01'),(215,'update_status','Order confirmed by %user_name%',0,40,NULL,'2023-01-04 01:11:01','2023-01-04 01:11:01'),(216,'update_status','Order confirmed by %user_name%',0,42,NULL,'2023-01-04 01:11:01','2023-01-04 01:11:01'),(217,'update_status','Order confirmed by %user_name%',0,48,NULL,'2023-01-04 01:11:01','2023-01-04 01:11:01');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,1183.00,0.00,'[]',NULL,44,'Xbox One Wireless Controller Black Color','products/11-2.jpg',1839.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(2,1,2,587.00,0.00,'[]',NULL,45,'EPSION Plaster Printer','products/12.jpg',1040.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(3,1,3,587.00,0.00,'[]',NULL,46,'EPSION Plaster Printer','products/12-1.jpg',1560.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(4,2,3,40.50,0.00,'[]',NULL,26,'Smart Watches','products/2.jpg',1548.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(5,3,3,533.00,0.00,'[]',NULL,53,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1869.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(6,4,3,568.00,0.00,'[]',NULL,52,'B&amp;O Play Mini Bluetooth Speaker','products/14.jpg',1686.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(7,4,3,533.00,0.00,'[]',NULL,53,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1869.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(8,4,3,773.00,0.00,'[]',NULL,70,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',1689.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(9,5,2,1141.00,0.00,'[]',NULL,61,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',1308.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(10,6,2,518.00,0.00,'[]',NULL,58,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1624.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(11,7,2,541.00,0.00,'[]',NULL,60,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17-1.jpg',1464.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(12,8,3,922.00,0.00,'[]',NULL,65,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',2241.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(13,9,1,416.00,0.00,'[]',NULL,75,'Baxter Care Hair Kit For Bearded Mens','products/22.jpg',688.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(14,10,3,533.00,0.00,'[]',NULL,55,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1869.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(15,10,3,773.00,0.00,'[]',NULL,74,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',1689.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','physical',0),(16,11,2,518.00,0.00,'[]',NULL,57,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1624.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(17,12,1,1247.00,0.00,'[]',NULL,41,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',530.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(18,13,2,773.00,0.00,'[]',NULL,74,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',1126.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(19,14,3,1183.00,0.00,'[]',NULL,44,'Xbox One Wireless Controller Black Color','products/11-2.jpg',1839.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(20,15,2,533.00,0.00,'[]',NULL,56,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1246.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(21,16,3,1141.00,0.00,'[]',NULL,61,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',1962.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(22,17,1,508.00,0.00,'[]',NULL,34,'Audio Equipment','products/7.jpg',816.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(23,17,2,922.00,0.00,'[]',NULL,65,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',1494.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(24,18,1,1247.00,0.00,'[]',NULL,41,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',530.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(25,18,2,587.00,0.00,'[]',NULL,45,'EPSION Plaster Printer','products/12.jpg',1040.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(26,19,2,922.00,0.00,'[]',NULL,64,'NYX Beauty Couton Pallete Makeup 12','products/19.jpg',1494.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(27,19,3,786.00,0.00,'[]',NULL,78,'Ciate Palemore Lipstick Bold Red Color','products/23-1.jpg',2643.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(28,19,2,786.00,0.00,'[]',NULL,79,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',1762.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(29,20,3,773.00,0.00,'[]',NULL,74,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',1689.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(30,21,1,40.50,0.00,'[]',NULL,27,'Smart Watches','products/2-1.jpg',516.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(31,22,2,1113.00,0.00,'[]',NULL,36,'Smart Televisions','products/8-1.jpg',1290.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(32,23,2,1247.00,0.00,'[]',NULL,41,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1060.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(33,24,1,566.00,0.00,'[]',NULL,49,'Sound Intone I65 Earphone White Version (Digital)','products/13-1.jpg',605.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(34,25,3,773.00,0.00,'[]',NULL,71,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',1689.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(35,25,2,773.00,0.00,'[]',NULL,72,'MVMTH Classical Leather Watch In Black (Digital)','products/21-2.jpg',1126.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(36,26,3,533.00,0.00,'[]',NULL,53,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1869.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(37,26,1,773.00,0.00,'[]',NULL,72,'MVMTH Classical Leather Watch In Black (Digital)','products/21-2.jpg',563.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(38,27,2,1141.00,0.00,'[]',NULL,62,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',1308.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(39,28,3,1247.00,0.00,'[]',NULL,41,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1590.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(40,29,2,533.00,0.00,'[]',NULL,55,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1246.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(41,29,3,533.00,0.00,'[]',NULL,56,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1869.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(42,30,3,918.00,0.00,'[]',NULL,67,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',2205.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(43,31,2,1183.00,0.00,'[]',NULL,42,'Xbox One Wireless Controller Black Color','products/11.jpg',1226.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(44,32,1,773.00,0.00,'[]',NULL,70,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',563.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(45,33,1,786.00,0.00,'[]',NULL,77,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',881.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(46,33,1,786.00,0.00,'[]',NULL,79,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',881.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(47,34,1,40.50,0.00,'[]',NULL,26,'Smart Watches','products/2.jpg',516.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(48,35,2,1113.00,0.00,'[]',NULL,35,'Smart Televisions','products/8.jpg',1290.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(49,35,1,1141.00,0.00,'[]',NULL,61,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',654.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(50,36,3,1247.00,0.00,'[]',NULL,38,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1590.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(51,37,2,918.00,0.00,'[]',NULL,67,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',1470.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(52,38,1,773.00,0.00,'[]',NULL,73,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',563.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(53,39,1,560.00,0.00,'[]',NULL,37,'Samsung Smart Phone (Digital)','products/9.jpg',502.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(54,40,2,918.00,0.00,'[]',NULL,69,'NYX Beauty Couton Pallete Makeup 12','products/20-3.jpg',1470.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(55,41,1,416.00,0.00,'[]',NULL,75,'Baxter Care Hair Kit For Bearded Mens','products/22.jpg',688.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(56,42,3,568.00,0.00,'[]',NULL,52,'B&amp;O Play Mini Bluetooth Speaker','products/14.jpg',1686.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(57,42,1,773.00,0.00,'[]',NULL,70,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',563.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(58,43,1,786.00,0.00,'[]',NULL,77,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',881.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(59,44,3,20.00,0.00,'[]',NULL,28,'Beat Headphone','products/3.jpg',1638.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(60,45,1,566.00,0.00,'[]',NULL,49,'Sound Intone I65 Earphone White Version (Digital)','products/13-1.jpg',605.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(61,46,1,773.00,0.00,'[]',NULL,72,'MVMTH Classical Leather Watch In Black (Digital)','products/21-2.jpg',563.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(62,47,2,1247.00,0.00,'[]',NULL,38,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1060.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0),(63,48,2,918.00,0.00,'[]',NULL,69,'NYX Beauty Couton Pallete Makeup 12','products/20-3.jpg',1470.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',4,'1','default','completed',6484.00,0.00,0.00,NULL,NULL,0.00,6484.00,1,NULL,1,'2023-01-04 01:10:59','cuxAzYsZyLge36GBHLSNPcy3X33GD',1,'2022-12-30 01:10:58','2023-01-04 01:10:59',3),(2,'#10000002',10,'1','default','completed',121.50,0.00,0.00,NULL,NULL,0.00,121.50,1,NULL,1,'2023-01-04 01:10:58','BQixUJ6AncrkeuesJqxnTKTDkSQLx',2,'2022-12-20 19:10:58','2023-01-04 01:10:58',4),(3,'#10000003',10,'1','default','pending',1599.00,0.00,0.00,NULL,NULL,0.00,1599.00,1,NULL,1,NULL,'bL8uqXugELmE2WlgduKjI2SMeyUI2',3,'2022-12-31 21:10:58','2023-01-04 01:10:58',2),(4,'#10000004',9,'1','default','completed',5622.00,0.00,0.00,NULL,NULL,0.00,5622.00,1,NULL,1,'2023-01-04 01:10:59','ikhsBQbJHrNTV5ITgjye6xGLWwGhK',4,'2023-01-01 01:10:58','2023-01-04 01:10:59',2),(5,'#10000005',9,'1','default','completed',2282.00,0.00,0.00,NULL,NULL,0.00,2282.00,1,NULL,1,'2023-01-04 01:10:58','F5ibuFMgzfqsNsDL18HHqjuNPvr2j',5,'2023-01-02 13:10:58','2023-01-04 01:10:58',1),(6,'#10000006',10,'1','default','pending',1036.00,0.00,0.00,NULL,NULL,0.00,1036.00,1,NULL,1,NULL,'1PZGOdVdEjPGfItOHM01y3Qif9dq6',6,'2022-12-30 19:10:58','2023-01-04 01:10:58',3),(7,'#10000007',10,'1','default','pending',1082.00,0.00,0.00,NULL,NULL,0.00,1082.00,1,NULL,1,NULL,'WQaeJDb390lwQL9UgfQfvP2HEWvef',7,'2022-12-27 23:10:58','2023-01-04 01:10:58',1),(8,'#10000008',10,'1','default','completed',2766.00,0.00,0.00,NULL,NULL,0.00,2766.00,1,NULL,1,'2023-01-04 01:10:59','O2iImPq5O4WZvMccparzqMeUrpov4',8,'2022-12-22 07:10:58','2023-01-04 01:10:59',4),(9,'#10000009',10,'1','default','completed',416.00,0.00,0.00,NULL,NULL,0.00,416.00,1,NULL,1,'2023-01-04 01:10:59','GTvloy5oFgjukqMB0rmIeP7uHMLzn',9,'2023-01-01 05:10:58','2023-01-04 01:10:59',2),(10,'#10000010',1,'1','default','pending',3918.00,0.00,0.00,NULL,NULL,0.00,3918.00,1,NULL,1,NULL,'s7ch89l71USJuPE62U9jyK8ZurO2D',10,'2022-12-28 09:10:58','2023-01-04 01:10:58',2),(11,'#10000011',1,'1','default','pending',1036.00,0.00,0.00,NULL,NULL,0.00,1036.00,1,NULL,1,NULL,'nQiXRcxEAEjctHp1bWLsLU6WR3tCq',11,'2022-12-31 01:10:58','2023-01-04 01:10:59',3),(12,'#10000012',6,'1','default','pending',1247.00,0.00,0.00,NULL,NULL,0.00,1247.00,1,NULL,1,NULL,'OftpZcKCASsr0CVCyvSG0LsEMbONm',12,'2022-12-30 01:10:59','2023-01-04 01:10:59',3),(13,'#10000013',6,'1','default','completed',1546.00,0.00,0.00,NULL,NULL,0.00,1546.00,1,NULL,1,'2023-01-04 01:11:00','UsOpqfvqSdbRRdbRyis39IsTx4i0l',13,'2022-12-31 07:10:59','2023-01-04 01:11:00',2),(14,'#10000014',6,'1','default','pending',3549.00,0.00,0.00,NULL,NULL,0.00,3549.00,1,NULL,1,NULL,'Ksn6nOrHjLgNX1nBIgLVnHTS0edVR',14,'2022-12-28 01:10:59','2023-01-04 01:10:59',3),(15,'#10000015',6,'1','default','completed',1066.00,0.00,0.00,NULL,NULL,0.00,1066.00,1,NULL,1,'2023-01-04 01:11:00','5Ls9HLlPjFp937pDkLxRbol6IBaI0',15,'2023-01-02 21:10:59','2023-01-04 01:11:00',2),(16,'#10000016',6,'1','default','pending',3423.00,0.00,0.00,NULL,NULL,0.00,3423.00,1,NULL,1,NULL,'AUTogoajcIGKHTMCoUH8I4NxIftzE',16,'2022-12-26 21:10:59','2023-01-04 01:10:59',1),(17,'#10000017',9,'1','default','pending',2352.00,0.00,0.00,NULL,NULL,0.00,2352.00,1,NULL,1,NULL,'u6ik0pPq1vCxBtrKCzqbrZScJOhI0',17,'2022-12-28 13:10:59','2023-01-04 01:10:59',4),(18,'#10000018',9,'1','default','pending',2421.00,0.00,0.00,NULL,NULL,0.00,2421.00,1,NULL,1,NULL,'JyHZpDu04Eo8Mbuq3bQ55q4aqYFXd',18,'2022-12-24 05:10:59','2023-01-04 01:10:59',3),(19,'#10000019',6,'1','default','completed',5774.00,0.00,0.00,NULL,NULL,0.00,5774.00,1,NULL,1,'2023-01-04 01:11:00','nFshkhAmVh45WGGrw39WCsWt3BBea',19,'2022-12-27 01:10:59','2023-01-04 01:11:00',4),(20,'#10000020',6,'1','default','completed',2319.00,0.00,0.00,NULL,NULL,0.00,2319.00,1,NULL,1,'2023-01-04 01:11:00','WVeMm3MLUFZrrvDtzrFPhKtH7XKFj',20,'2022-12-26 01:10:59','2023-01-04 01:11:00',2),(21,'#10000021',6,'1','default','pending',40.50,0.00,0.00,NULL,NULL,0.00,40.50,1,NULL,1,NULL,'SX4lbL9krTLoKfEILueefWEhtbAFb',21,'2023-01-01 07:10:59','2023-01-04 01:10:59',4),(22,'#10000022',6,'1','default','completed',2226.00,0.00,0.00,NULL,NULL,0.00,2226.00,1,NULL,1,'2023-01-04 01:11:00','hpHgS1hkiUV6OVbYkkHwAZ7lEpnFJ',22,'2022-12-26 19:10:59','2023-01-04 01:11:00',1),(23,'#10000023',10,'1','default','pending',2494.00,0.00,0.00,NULL,NULL,0.00,2494.00,1,NULL,1,NULL,'LWapwufEbywYeXFdEn0EUwePbRkse',23,'2023-01-02 09:10:59','2023-01-04 01:10:59',3),(24,'#10000024',10,'1','default','completed',566.00,0.00,0.00,NULL,NULL,0.00,566.00,1,NULL,1,'2023-01-04 01:11:00','W9ILurySm0K1qEu7n7PWqG1XIwM5u',24,'2022-12-30 01:10:59','2023-01-04 01:11:00',4),(25,'#10000025',10,'1','default','completed',3865.00,0.00,0.00,NULL,NULL,0.00,3865.00,1,NULL,1,'2023-01-04 01:10:59','vugqbf2XtR3NOsUInrfvUrdXzYvP1',25,'2022-12-30 21:10:59','2023-01-04 01:10:59',2),(26,'#10000026',9,'1','default','pending',2372.00,0.00,0.00,NULL,NULL,0.00,2372.00,1,NULL,1,NULL,'NB1nnUgzhBSWEQM6ahyuK0QjAv3n9',26,'2023-01-01 19:10:59','2023-01-04 01:10:59',2),(27,'#10000027',9,'1','default','pending',2282.00,0.00,0.00,NULL,NULL,0.00,2282.00,1,NULL,1,NULL,'puJvVhZWXmCwLdGWk0NvlvD5kdFFk',27,'2023-01-01 19:10:59','2023-01-04 01:10:59',1),(28,'#10000028',1,'1','default','pending',3741.00,0.00,0.00,NULL,NULL,0.00,3741.00,1,NULL,1,NULL,'QEqxhw3VMaobqjFJEkcJBjNVJMvpO',28,'2022-12-31 17:10:59','2023-01-04 01:10:59',3),(29,'#10000029',1,'1','default','completed',2665.00,0.00,0.00,NULL,NULL,0.00,2665.00,1,NULL,1,'2023-01-04 01:11:00','o7e4hUx5V3FTb9YdEmP62uTPGHYQQ',29,'2022-12-31 01:10:59','2023-01-04 01:11:00',2),(30,'#10000030',1,'1','default','pending',2754.00,0.00,0.00,NULL,NULL,0.00,2754.00,1,NULL,1,NULL,'keRYsZA0LkfiGOc1KHyCcXULNDWIE',30,'2023-01-03 09:10:59','2023-01-04 01:10:59',4),(31,'#10000031',4,'1','default','pending',2366.00,0.00,0.00,NULL,NULL,0.00,2366.00,1,NULL,1,NULL,'m1Jp38utDJNLwDn0QyriEXoCGoGTC',31,'2023-01-01 03:10:59','2023-01-04 01:10:59',3),(32,'#10000032',4,'1','default','pending',773.00,0.00,0.00,NULL,NULL,0.00,773.00,1,NULL,1,NULL,'ws6je5ZwzBrznwMwKTAxCjGjTRsnC',32,'2023-01-01 03:10:59','2023-01-04 01:10:59',2),(33,'#10000033',4,'1','default','pending',1572.00,0.00,0.00,NULL,NULL,0.00,1572.00,1,NULL,1,NULL,'9EooL1HDZFulXRh49KgUELFnGEvOM',33,'2023-01-02 21:10:59','2023-01-04 01:10:59',4),(34,'#10000034',10,'1','default','completed',40.50,0.00,0.00,NULL,NULL,0.00,40.50,1,NULL,1,'2023-01-04 01:11:00','nO9ulUNJeVjff4L8LClQFYELRA2p9',34,'2023-01-03 13:10:59','2023-01-04 01:11:00',4),(35,'#10000035',10,'1','default','completed',3367.00,0.00,0.00,NULL,NULL,0.00,3367.00,1,NULL,1,'2023-01-04 01:11:01','ej34x1evybqYrkPSjrqdUvnzyaDMr',35,'2022-12-30 13:10:59','2023-01-04 01:11:01',1),(36,'#10000036',10,'1','default','completed',3741.00,0.00,0.00,NULL,NULL,0.00,3741.00,1,NULL,1,'2023-01-04 01:11:01','arKRANA8waCjkYv2cEsVQnvspjn4G',36,'2023-01-02 01:10:59','2023-01-04 01:11:01',3),(37,'#10000037',9,'1','default','completed',1836.00,0.00,0.00,NULL,NULL,0.00,1836.00,1,NULL,1,'2023-01-04 01:10:59','kssZbEBojOH38ienDM8uN28Wqk0E7',37,'2022-12-31 17:10:59','2023-01-04 01:10:59',4),(38,'#10000038',9,'1','default','pending',773.00,0.00,0.00,NULL,NULL,0.00,773.00,1,NULL,1,NULL,'i9djO14sEiFTiTZm7tyLL1vFuId6u',38,'2023-01-01 13:10:59','2023-01-04 01:10:59',2),(39,'#10000039',9,'1','default','pending',560.00,0.00,0.00,NULL,NULL,0.00,560.00,1,NULL,1,NULL,'Ip3NqpQu1iNNa8jtn1ODKFmmRgv0o',39,'2023-01-02 17:10:59','2023-01-04 01:10:59',3),(40,'#10000040',9,'1','default','completed',1836.00,0.00,0.00,NULL,NULL,0.00,1836.00,1,NULL,1,'2023-01-04 01:11:01','7hc7fBZ82S7nXDsbH6umOZaSQZZJz',40,'2023-01-02 09:10:59','2023-01-04 01:11:01',4),(41,'#10000041',9,'1','default','completed',416.00,0.00,0.00,NULL,NULL,0.00,416.00,1,NULL,1,'2023-01-04 01:10:59','jNll2by8BKku4S91qe07IYHKCC8GI',41,'2023-01-02 17:10:59','2023-01-04 01:10:59',2),(42,'#10000042',9,'1','default','completed',2477.00,0.00,0.00,NULL,NULL,0.00,2477.00,1,NULL,1,'2023-01-04 01:11:01','D0QB1T0DM8UEnIQ71mA6tR6FMcsBd',42,'2023-01-03 13:10:59','2023-01-04 01:11:01',2),(43,'#10000043',9,'1','default','pending',786.00,0.00,0.00,NULL,NULL,0.00,786.00,1,NULL,1,NULL,'eXrNtdVLk8aK2lIm2UUouxaCpQBM1',43,'2023-01-02 13:10:59','2023-01-04 01:10:59',4),(44,'#10000044',6,'1','default','completed',60.00,0.00,0.00,NULL,NULL,0.00,60.00,1,NULL,1,'2023-01-04 01:10:59','YmXCvHo29I7d900VaZh3sktOiGXDM',44,'2023-01-02 09:10:59','2023-01-04 01:10:59',3),(45,'#10000045',6,'1','default','completed',566.00,0.00,0.00,NULL,NULL,0.00,566.00,1,NULL,1,'2023-01-04 01:10:59','EaeXLnITh07zBjUWNr2UfbFRE0lJW',45,'2023-01-02 17:10:59','2023-01-04 01:10:59',4),(46,'#10000046',6,'1','default','completed',773.00,0.00,0.00,NULL,NULL,0.00,773.00,1,NULL,1,'2023-01-04 01:10:59','KgWxd3AiteofLk6hQAL5pHZTrylam',46,'2023-01-03 17:10:59','2023-01-04 01:10:59',2),(47,'#10000047',9,'1','default','pending',2494.00,0.00,0.00,NULL,NULL,0.00,2494.00,1,NULL,1,NULL,'m4C3YIzrsJRavbb4I8pvaYo2MBzER',47,'2023-01-03 05:10:59','2023-01-04 01:10:59',3),(48,'#10000048',9,'1','default','completed',1836.00,0.00,0.00,NULL,NULL,0.00,1836.00,1,NULL,1,'2023-01-04 01:11:01','PSNo07AyQM6aBpYAhrEAUaQSYJjS5',48,'2023-01-03 17:10:59','2023-01-04 01:11:01',4);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2023-01-04 01:10:54','2023-01-04 01:10:54',0),(2,'Size','size','text',1,1,1,'published',1,'2023-01-04 01:10:54','2023-01-04 01:10:54',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'M�u s?c'),('vi',2,'K?ch th??c');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(6,2,'S','s',NULL,NULL,1,1,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(7,2,'M','m',NULL,NULL,0,2,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(8,2,'L','l',NULL,NULL,0,3,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2023-01-04 01:10:54','2023-01-04 01:10:54'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2023-01-04 01:10:54','2023-01-04 01:10:54');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh l? c�y'),('vi',2,'Xanh da tr?i'),('vi',3,'??'),('vi',4,'?en'),('vi',5,'N�u'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(4,'Home Audio &amp; Theaters',3,NULL,'published',0,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(5,'TV &amp; Videos',3,NULL,'published',1,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(6,'Camera, Photos &amp; Videos',3,NULL,'published',2,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(7,'Cellphones &amp; Accessories',3,NULL,'published',3,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(12,'Accessories &amp; Parts',2,NULL,'published',1,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(14,'Audio &amp; Video Cables',12,NULL,'published',1,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(18,'Computer &amp; Technologies',17,NULL,'published',0,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(19,'Computer &amp; Tablets',18,NULL,'published',0,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(23,'Networking',17,NULL,'published',1,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(24,'Drive &amp; Storages',23,NULL,'published',0,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(26,'Security &amp; Protection',23,NULL,'published',2,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(28,'Home &amp; Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(29,'Health &amp; Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(30,'Jewelry &amp; Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(33,'Babies &amp; Moms',0,NULL,'published',9,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(34,'Sport &amp; Outdoor',0,NULL,'published',10,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(35,'Books &amp; Office',0,NULL,'published',11,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(36,'Cars &amp; Motorcycles',0,NULL,'published',12,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2023-01-04 01:10:49','2023-01-04 01:10:49');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuy?n m?i h?p d?n',NULL),('vi',2,'?i?n t?',NULL),('vi',3,'?i?n t? ti�u d�ng',NULL),('vi',4,'Thi?t b? nghe nh?n',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'?i?n tho?i di ??ng & Ph? ki?n',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Tr? ch?i video',NULL),('vi',10,'Loa kh�ng d�y',NULL),('vi',11,'?i?n t? v?n ph?ng',NULL),('vi',12,'Ph? ki?n & Ph? t�ng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Qu?n ?o',NULL),('vi',17,'M?y t?nh',NULL),('vi',18,'M?y t?nh & C�ng ngh?',NULL),('vi',19,'M?y t?nh & M?y t?nh b?ng',NULL),('vi',20,'M?y t?nh x?ch tay',NULL),('vi',21,'M�n h?nh',NULL),('vi',22,'Linh ki?n M?y t?nh',NULL),('vi',23,'M?ng m?y t?nh',NULL),('vi',24,'Thi?t b? l?u tr?',NULL),('vi',25,'M?y t?nh x?ch tay ch?i game',NULL),('vi',26,'Thi?t b? b?o m?t',NULL),('vi',27,'Ph? ki?n',NULL),('vi',28,'?? d�ng l�m b?p',NULL),('vi',29,'S?c kh?e & l�m ??p',NULL),('vi',30,'Trang s?c & ??ng h?',NULL),('vi',31,'?? ch?i c�ng ngh?',NULL),('vi',32,'?i?n tho?i',NULL),('vi',33,'M? v� b�',NULL),('vi',34,'Th? thao & ngo�i tr?i',NULL),('vi',35,'S?ch & V?n ph?ng',NULL),('vi',36,'? t� & Xe m?y',NULL),('vi',37,'C?i ti?n nh� c?a',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,8,1),(2,13,1),(3,2,1),(4,34,1),(5,31,2),(6,7,2),(7,23,2),(8,30,2),(9,22,3),(10,4,3),(11,18,3),(12,1,4),(13,7,4),(14,6,4),(15,37,4),(16,6,5),(17,20,5),(18,27,5),(19,24,6),(20,32,6),(21,13,6),(22,30,6),(23,37,7),(24,11,7),(25,21,7),(26,11,8),(27,10,8),(28,36,8),(29,24,8),(30,37,9),(31,30,9),(32,22,9),(33,33,9),(34,36,10),(35,9,10),(36,19,10),(37,28,10),(38,4,11),(39,18,11),(40,28,11),(41,31,11),(42,20,12),(43,21,12),(44,10,12),(45,31,12),(46,18,13),(47,23,13),(48,22,13),(49,2,14),(50,7,14),(51,9,14),(52,34,14),(53,25,15),(54,34,15),(55,15,15),(56,26,15),(57,11,16),(58,20,16),(59,34,16),(60,31,16),(61,12,17),(62,18,17),(63,34,17),(64,15,18),(65,17,18),(66,34,18),(67,30,18),(68,36,19),(69,18,19),(70,22,19),(71,23,20),(72,32,20),(73,14,20),(74,35,20),(75,7,21),(76,17,21),(77,13,21),(78,26,21),(79,3,22),(80,29,22),(81,36,22),(82,22,22),(83,10,23),(84,33,23),(85,15,23),(86,29,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1,1),(2,2,2),(3,1,3),(4,3,4),(5,2,5),(6,3,6),(7,1,7),(8,2,8),(9,3,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,3,15),(16,3,16),(17,1,17),(18,1,18),(19,1,19),(20,2,20),(21,1,21),(22,1,22),(23,2,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-01-04 01:10:49','2023-01-04 01:10:49',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-01-04 01:10:49','2023-01-04 01:10:49',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-01-04 01:10:49','2023-01-04 01:10:49',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'H�ng m?i v?',NULL),('vi',2,'B?n ch?y nh?t',NULL),('vi',3,'Khuy?n m?i ??c bi?t',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,13),(2,1,17),(3,1,4),(4,1,7),(5,1,18),(6,1,15),(7,1,9),(8,2,7),(9,2,15),(10,2,9),(11,2,8),(12,2,3),(13,2,18),(14,3,7),(15,3,13),(16,3,18),(17,3,1),(18,3,17),(19,3,20),(20,3,14),(21,4,12),(22,4,1),(23,4,10),(24,4,16),(25,4,11),(26,5,10),(27,5,2),(28,5,12),(29,5,1),(30,6,19),(31,6,14),(32,6,10),(33,6,13),(34,6,17),(35,7,6),(36,7,16),(37,7,17),(38,7,20),(39,7,18),(40,7,3),(41,7,1),(42,8,11),(43,8,7),(44,8,1),(45,8,3),(46,8,9),(47,8,10),(48,9,6),(49,9,11),(50,9,8),(51,9,19),(52,9,18),(53,10,11),(54,10,5),(55,10,16),(56,10,17),(57,10,1),(58,11,4),(59,11,14),(60,11,3),(61,11,17),(62,11,12),(63,11,13),(64,12,10),(65,12,16),(66,12,18),(67,12,11),(68,12,1),(69,13,3),(70,13,20),(71,13,18),(72,13,2),(73,13,8),(74,14,8),(75,14,18),(76,14,19),(77,14,4),(78,14,16),(79,14,7),(80,15,2),(81,15,6),(82,15,9),(83,15,7),(84,15,3),(85,16,9),(86,16,19),(87,16,11),(88,16,17),(89,17,8),(90,17,3),(91,17,16),(92,17,4),(93,18,13),(94,18,2),(95,18,20),(96,18,6),(97,18,4),(98,18,5),(99,19,15),(100,19,8),(101,19,5),(102,19,10),(103,19,11),(104,19,6),(105,19,2),(106,20,10),(107,20,3),(108,20,19),(109,20,5),(110,20,18),(111,21,17),(112,21,18),(113,21,19),(114,21,4),(115,21,9),(116,22,2),(117,22,14),(118,22,4),(119,22,7),(120,22,13),(121,22,1),(122,23,3),(123,23,17),(124,23,13),(125,23,9),(126,23,8);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(2,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(3,32,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(4,32,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(5,32,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(6,32,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(7,37,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(8,37,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(9,37,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(10,48,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(11,48,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(12,49,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(13,49,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(14,50,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(15,50,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(16,59,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(17,59,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(18,59,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(19,59,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(20,60,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(21,60,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(22,60,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(23,60,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(24,70,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(25,70,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(26,70,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(27,71,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(28,71,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(29,71,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(30,72,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(31,72,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:53\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:53','2023-01-04 01:10:53'),(32,72,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:54\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:54','2023-01-04 01:10:54'),(33,73,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:54\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-01-04 01:10:54','2023-01-04 01:10:54'),(34,73,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:54\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:54','2023-01-04 01:10:54'),(35,73,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:54\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:54','2023-01-04 01:10:54'),(36,74,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:54\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-01-04 01:10:54','2023-01-04 01:10:54'),(37,74,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:54\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-01-04 01:10:54','2023-01-04 01:10:54'),(38,74,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-04 08:10:54\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-01-04 01:10:54','2023-01-04 01:10:54');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,12),(1,15),(1,21),(3,9),(3,18);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-01-04 01:10:49','2023-01-04 01:10:49'),(2,'New','#00c9a7','published','2023-01-04 01:10:49','2023-01-04 01:10:49'),(3,'Sale','#fe9931','published','2023-01-04 01:10:49','2023-01-04 01:10:49');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'N?i b?t',NULL),('vi',2,'M?i',NULL),('vi',3,'Gi?m gi?',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(1,6),(2,3),(3,1),(3,2),(3,6),(4,2),(4,4),(4,5),(5,1),(5,5),(5,6),(6,2),(6,3),(7,1),(7,2),(7,6),(8,2),(8,5),(9,3),(9,6),(10,3),(10,4),(11,1),(11,2),(11,4),(12,1),(12,5),(13,4),(13,5),(13,6),(14,3),(14,4),(14,5),(15,1),(15,3),(16,4),(16,5),(17,2),(17,3),(17,5),(18,3),(18,5),(18,6),(19,2),(19,3),(19,5),(20,3),(20,4),(20,6),(21,3),(21,5),(21,6),(22,1),(22,6),(23,3),(23,5),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2023-01-04 01:10:55','2023-01-04 01:10:55'),(2,'Mobile',NULL,'published','2023-01-04 01:10:55','2023-01-04 01:10:55'),(3,'Iphone',NULL,'published','2023-01-04 01:10:55','2023-01-04 01:10:55'),(4,'Printer',NULL,'published','2023-01-04 01:10:55','2023-01-04 01:10:55'),(5,'Office',NULL,'published','2023-01-04 01:10:55','2023-01-04 01:10:55'),(6,'IT',NULL,'published','2023-01-04 01:10:55','2023-01-04 01:10:55');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (7,1,4),(37,1,19),(43,1,22),(47,1,24),(53,1,27),(65,1,33),(67,1,34),(91,1,46),(99,1,50),(107,1,54),(3,2,2),(39,2,20),(45,2,23),(59,2,30),(73,2,37),(9,3,5),(11,3,6),(15,3,8),(25,3,13),(27,3,14),(29,3,15),(49,3,25),(55,3,28),(71,3,36),(89,3,45),(13,4,7),(17,4,9),(19,4,10),(31,4,16),(35,4,18),(57,4,29),(61,4,31),(75,4,38),(97,4,49),(105,4,53),(109,4,55),(1,5,1),(5,5,3),(21,5,11),(23,5,12),(33,5,17),(41,5,21),(51,5,26),(63,5,32),(69,5,35),(77,5,39),(79,5,40),(81,5,41),(83,5,42),(85,5,43),(87,5,44),(93,5,47),(95,5,48),(101,5,51),(103,5,52),(111,5,56),(8,6,4),(20,6,10),(34,6,17),(56,6,28),(58,6,29),(66,6,33),(72,6,36),(94,6,47),(112,6,56),(2,7,1),(12,7,6),(16,7,8),(26,7,13),(36,7,18),(38,7,19),(44,7,22),(64,7,32),(70,7,35),(80,7,40),(84,7,42),(92,7,46),(104,7,52),(108,7,54),(4,8,2),(10,8,5),(24,8,12),(30,8,15),(32,8,16),(42,8,21),(48,8,24),(50,8,25),(76,8,38),(78,8,39),(82,8,41),(96,8,48),(102,8,51),(106,8,53),(6,9,3),(18,9,9),(22,9,11),(28,9,14),(40,9,20),(52,9,26),(74,9,37),(88,9,44),(90,9,45),(98,9,49),(14,10,7),(46,10,23),(54,10,27),(60,10,30),(62,10,31),(68,10,34),(86,10,43),(100,10,50),(110,10,55);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,2,1),(4,27,2,0),(5,28,3,1),(6,29,4,1),(7,30,4,0),(8,31,4,0),(9,32,5,1),(10,33,6,1),(11,34,7,1),(12,35,8,1),(13,36,8,0),(14,37,9,1),(15,38,10,1),(16,39,10,0),(17,40,10,0),(18,41,10,0),(19,42,11,1),(20,43,11,0),(21,44,11,0),(22,45,12,1),(23,46,12,0),(24,47,12,0),(25,48,13,1),(26,49,13,0),(27,50,13,0),(28,51,14,1),(29,52,14,0),(30,53,15,1),(31,54,15,0),(32,55,15,0),(33,56,15,0),(34,57,16,1),(35,58,16,0),(36,59,17,1),(37,60,17,0),(38,61,18,1),(39,62,18,0),(40,63,18,0),(41,64,19,1),(42,65,19,0),(43,66,20,1),(44,67,20,0),(45,68,20,0),(46,69,20,0),(47,70,21,1),(48,71,21,0),(49,72,21,0),(50,73,21,0),(51,74,21,0),(52,75,22,1),(53,76,22,0),(54,77,23,1),(55,78,23,0),(56,79,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-01-04',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `store_id` int unsigned DEFAULT NULL,
  `approved_by` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-175-A0',0,18,0,1,1,1,0,0,80.25,NULL,NULL,NULL,19.00,15.00,17.00,561.00,NULL,149907,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',4,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-142-A0',0,18,0,1,1,3,0,0,40.5,NULL,NULL,NULL,19.00,14.00,20.00,516.00,NULL,144348,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-197-A0',0,17,0,1,1,2,0,0,20,NULL,NULL,NULL,10.00,10.00,18.00,546.00,NULL,93047,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-100-A0',0,12,0,1,1,7,0,0,532,430.92,NULL,NULL,15.00,20.00,16.00,585.00,NULL,46315,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-108-A0',0,13,0,1,1,2,0,0,898,NULL,NULL,NULL,14.00,14.00,10.00,891.00,NULL,156047,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',1,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-194-A0',0,17,0,1,1,2,0,0,407,NULL,NULL,NULL,20.00,16.00,16.00,835.00,NULL,128842,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-177-A0',0,18,0,1,1,3,0,0,508,NULL,NULL,NULL,14.00,14.00,15.00,816.00,NULL,184773,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-130-A0',0,17,0,1,1,1,0,0,1113,801.36,NULL,NULL,14.00,12.00,20.00,645.00,NULL,160336,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-150-A0',0,20,0,1,1,5,0,0,560,NULL,NULL,NULL,17.00,10.00,15.00,502.00,NULL,87121,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',3,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-162-A0',0,10,0,1,0,7,0,0,1247,NULL,NULL,NULL,13.00,16.00,20.00,530.00,NULL,151434,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-155-A0',0,15,0,1,0,6,0,0,1183,NULL,NULL,NULL,17.00,12.00,18.00,613.00,NULL,32339,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-146-A0',0,11,0,1,0,2,0,0,587,510.69,NULL,NULL,17.00,20.00,10.00,520.00,NULL,10697,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-197-A0',0,16,0,1,0,2,0,0,566,NULL,NULL,NULL,13.00,18.00,16.00,605.00,NULL,143864,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',4,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-186-A0',0,17,0,1,0,2,0,0,568,NULL,NULL,NULL,16.00,10.00,18.00,562.00,NULL,27132,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-166-A0',0,10,0,1,0,3,0,0,533,NULL,NULL,NULL,17.00,10.00,18.00,623.00,NULL,111985,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-185-A0',0,11,0,1,0,4,0,0,518,378.14,NULL,NULL,14.00,13.00,11.00,812.00,NULL,152337,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-107-A0',0,19,0,1,0,3,0,0,541,NULL,NULL,NULL,19.00,13.00,17.00,732.00,NULL,152514,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',1,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-171-A0',0,18,0,1,0,4,0,0,1141,NULL,NULL,NULL,15.00,11.00,14.00,654.00,NULL,135448,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-140-A0',0,17,0,1,0,1,0,0,922,NULL,NULL,NULL,18.00,11.00,15.00,747.00,NULL,83917,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-189-A0',0,15,0,1,0,4,0,0,918,642.6,NULL,NULL,20.00,10.00,17.00,735.00,NULL,115591,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-168-A0',0,20,0,1,0,1,0,0,773,NULL,NULL,NULL,12.00,13.00,12.00,563.00,NULL,189788,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',2,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-137-A0',0,16,0,1,0,3,0,0,416,NULL,NULL,NULL,16.00,10.00,16.00,688.00,NULL,91069,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4? Dome Tweeters: 2X and 4? Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains� signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-148-A0',0,10,0,1,0,4,0,0,786,NULL,NULL,NULL,13.00,13.00,10.00,881.00,NULL,82021,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-175-A0',0,18,0,1,0,1,1,0,80.25,NULL,NULL,NULL,19.00,15.00,17.00,561.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-175-A0-A1',0,18,0,1,0,1,1,0,80.25,NULL,NULL,NULL,19.00,15.00,17.00,561.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-142-A0',0,18,0,1,0,3,1,0,40.5,NULL,NULL,NULL,19.00,14.00,20.00,516.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-142-A0-A1',0,18,0,1,0,3,1,0,40.5,NULL,NULL,NULL,19.00,14.00,20.00,516.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(28,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-197-A0',0,17,0,1,0,2,1,0,20,NULL,NULL,NULL,10.00,10.00,18.00,546.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(29,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-100-A0',0,12,0,1,0,7,1,0,532,430.92,NULL,NULL,15.00,20.00,16.00,585.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(30,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-100-A0-A1',0,12,0,1,0,7,1,0,532,372.4,NULL,NULL,15.00,20.00,16.00,585.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(31,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','SW-100-A0-A2',0,12,0,1,0,7,1,0,532,383.04,NULL,NULL,15.00,20.00,16.00,585.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(32,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-108-A0',0,13,0,1,0,2,1,0,898,NULL,NULL,NULL,14.00,14.00,10.00,891.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(33,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-194-A0',0,17,0,1,0,2,1,0,407,NULL,NULL,NULL,20.00,16.00,16.00,835.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(34,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-177-A0',0,18,0,1,0,3,1,0,508,NULL,NULL,NULL,14.00,14.00,15.00,816.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(35,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-130-A0',0,17,0,1,0,1,1,0,1113,801.36,NULL,NULL,14.00,12.00,20.00,645.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(36,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-130-A0-A1',0,17,0,1,0,1,1,0,1113,968.31,NULL,NULL,14.00,12.00,20.00,645.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(37,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-150-A0',0,20,0,1,0,5,1,0,560,NULL,NULL,NULL,17.00,10.00,15.00,502.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(38,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-162-A0',0,10,0,1,0,7,1,0,1247,NULL,NULL,NULL,13.00,16.00,20.00,530.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(39,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-162-A0-A1',0,10,0,1,0,7,1,0,1247,NULL,NULL,NULL,13.00,16.00,20.00,530.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(40,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-162-A0-A2',0,10,0,1,0,7,1,0,1247,NULL,NULL,NULL,13.00,16.00,20.00,530.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(41,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-162-A0-A3',0,10,0,1,0,7,1,0,1247,NULL,NULL,NULL,13.00,16.00,20.00,530.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(42,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-155-A0',0,15,0,1,0,6,1,0,1183,NULL,NULL,NULL,17.00,12.00,18.00,613.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(43,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-155-A0-A1',0,15,0,1,0,6,1,0,1183,NULL,NULL,NULL,17.00,12.00,18.00,613.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(44,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-155-A0-A2',0,15,0,1,0,6,1,0,1183,NULL,NULL,NULL,17.00,12.00,18.00,613.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(45,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-146-A0',0,11,0,1,0,2,1,0,587,510.69,NULL,NULL,17.00,20.00,10.00,520.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(46,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-146-A0-A1',0,11,0,1,0,2,1,0,587,528.3,NULL,NULL,17.00,20.00,10.00,520.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(47,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-146-A0-A2',0,11,0,1,0,2,1,0,587,440.25,NULL,NULL,17.00,20.00,10.00,520.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(48,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-197-A0',0,16,0,1,0,2,1,0,566,NULL,NULL,NULL,13.00,18.00,16.00,605.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(49,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-197-A0-A1',0,16,0,1,0,2,1,0,566,NULL,NULL,NULL,13.00,18.00,16.00,605.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(50,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-197-A0-A2',0,16,0,1,0,2,1,0,566,NULL,NULL,NULL,13.00,18.00,16.00,605.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(51,'B&amp;O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-186-A0',0,17,0,1,0,2,1,0,568,NULL,NULL,NULL,16.00,10.00,18.00,562.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(52,'B&amp;O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-186-A0-A1',0,17,0,1,0,2,1,0,568,NULL,NULL,NULL,16.00,10.00,18.00,562.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(53,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-166-A0',0,10,0,1,0,3,1,0,533,NULL,NULL,NULL,17.00,10.00,18.00,623.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(54,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-166-A0-A1',0,10,0,1,0,3,1,0,533,NULL,NULL,NULL,17.00,10.00,18.00,623.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(55,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-166-A0-A2',0,10,0,1,0,3,1,0,533,NULL,NULL,NULL,17.00,10.00,18.00,623.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(56,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-166-A0-A3',0,10,0,1,0,3,1,0,533,NULL,NULL,NULL,17.00,10.00,18.00,623.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-185-A0',0,11,0,1,0,4,1,0,518,378.14,NULL,NULL,14.00,13.00,11.00,812.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(58,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-185-A0-A1',0,11,0,1,0,4,1,0,518,383.32,NULL,NULL,14.00,13.00,11.00,812.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(59,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-107-A0',0,19,0,1,0,3,1,0,541,NULL,NULL,NULL,19.00,13.00,17.00,732.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(60,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-107-A0-A1',0,19,0,1,0,3,1,0,541,NULL,NULL,NULL,19.00,13.00,17.00,732.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(61,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-171-A0',0,18,0,1,0,4,1,0,1141,NULL,NULL,NULL,15.00,11.00,14.00,654.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(62,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-171-A0-A1',0,18,0,1,0,4,1,0,1141,NULL,NULL,NULL,15.00,11.00,14.00,654.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(63,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','SW-171-A0-A2',0,18,0,1,0,4,1,0,1141,NULL,NULL,NULL,15.00,11.00,14.00,654.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-140-A0',0,17,0,1,0,1,1,0,922,NULL,NULL,NULL,18.00,11.00,15.00,747.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-140-A0-A1',0,17,0,1,0,1,1,0,922,NULL,NULL,NULL,18.00,11.00,15.00,747.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-189-A0',0,15,0,1,0,4,1,0,918,642.6,NULL,NULL,20.00,10.00,17.00,735.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-189-A0-A1',0,15,0,1,0,4,1,0,918,679.32,NULL,NULL,20.00,10.00,17.00,735.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(68,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-2.jpg\"]','SW-189-A0-A2',0,15,0,1,0,4,1,0,918,679.32,NULL,NULL,20.00,10.00,17.00,735.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(69,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-3.jpg\"]','SW-189-A0-A3',0,15,0,1,0,4,1,0,918,780.3,NULL,NULL,20.00,10.00,17.00,735.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(70,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-168-A0',0,20,0,1,0,1,1,0,773,NULL,NULL,NULL,12.00,13.00,12.00,563.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(71,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-168-A0-A1',0,20,0,1,0,1,1,0,773,NULL,NULL,NULL,12.00,13.00,12.00,563.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(72,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-2.jpg\"]','SW-168-A0-A2',0,20,0,1,0,1,1,0,773,NULL,NULL,NULL,12.00,13.00,12.00,563.00,NULL,0,'2023-01-04 01:10:53','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(73,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-168-A0-A3',0,20,0,1,0,1,1,0,773,NULL,NULL,NULL,12.00,13.00,12.00,563.00,NULL,0,'2023-01-04 01:10:54','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(74,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-168-A0-A4',0,20,0,1,0,1,1,0,773,NULL,NULL,NULL,12.00,13.00,12.00,563.00,NULL,0,'2023-01-04 01:10:54','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-137-A0',0,16,0,1,0,3,1,0,416,NULL,NULL,NULL,16.00,10.00,16.00,688.00,NULL,0,'2023-01-04 01:10:54','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(76,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-137-A0-A1',0,16,0,1,0,3,1,0,416,NULL,NULL,NULL,16.00,10.00,16.00,688.00,NULL,0,'2023-01-04 01:10:54','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-148-A0',0,10,0,1,0,4,1,0,786,NULL,NULL,NULL,13.00,13.00,10.00,881.00,NULL,0,'2023-01-04 01:10:54','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-148-A0-A1',0,10,0,1,0,4,1,0,786,NULL,NULL,NULL,13.00,13.00,10.00,881.00,NULL,0,'2023-01-04 01:10:54','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(79,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-148-A0-A2',0,10,0,1,0,4,1,0,786,NULL,NULL,NULL,13.00,13.00,10.00,881.00,NULL,0,'2023-01-04 01:10:54','2023-01-04 01:10:58','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Smart Watches',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Beat Headphone',NULL,NULL),('vi',29,'Red & Black Headphone',NULL,NULL),('vi',30,'Red & Black Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Smart Watch External',NULL,NULL),('vi',33,'Nikon HD camera',NULL,NULL),('vi',34,'Audio Equipment',NULL,NULL),('vi',35,'Smart Televisions',NULL,NULL),('vi',36,'Smart Televisions',NULL,NULL),('vi',37,'Samsung Smart Phone',NULL,NULL),('vi',38,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',39,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',40,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',41,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',42,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',43,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',44,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',45,'EPSION Plaster Printer',NULL,NULL),('vi',46,'EPSION Plaster Printer',NULL,NULL),('vi',47,'EPSION Plaster Printer',NULL,NULL),('vi',48,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',49,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',50,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',51,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',52,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',53,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',54,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',55,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',56,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',58,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',59,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',60,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',61,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',62,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',63,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',68,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',69,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',70,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',71,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',72,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',73,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',74,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',76,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',79,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,5,16,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/20.jpg\"]'),(2,10,6,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(3,2,13,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(4,7,6,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(5,8,14,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\"]'),(6,4,18,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\"]'),(7,3,21,5.00,'Good app, good backup service and support. Good documentation.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(8,6,3,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(9,1,17,2.00,'Best ecommerce CMS online store!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(10,5,11,4.00,'Good app, good backup service and support. Good documentation.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(11,2,12,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(12,6,6,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(13,4,4,4.00,'Good app, good backup service and support. Good documentation.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(14,2,2,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(15,10,11,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\"]'),(16,5,11,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/13.jpg\"]'),(17,2,12,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(18,2,11,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(19,2,12,2.00,'Good app, good backup service and support. Good documentation.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\"]'),(20,6,1,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(21,10,16,4.00,'Best ecommerce CMS online store!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(22,7,2,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(23,5,15,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(24,5,6,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(25,1,11,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(26,9,17,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(27,5,6,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(28,10,9,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/18.jpg\"]'),(29,7,9,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(30,6,2,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/13.jpg\"]'),(31,3,18,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(32,2,18,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\"]'),(33,2,14,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(34,7,5,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\"]'),(35,6,7,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(36,6,12,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/20.jpg\"]'),(37,1,17,3.00,'Good app, good backup service and support. Good documentation.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(38,10,15,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/11.jpg\"]'),(39,4,20,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(40,4,17,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(41,7,6,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\"]'),(42,1,19,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(43,3,17,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(44,4,9,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/19.jpg\"]'),(45,7,14,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(46,8,13,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(47,5,10,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(48,4,18,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/14.jpg\"]'),(49,7,15,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\"]'),(50,2,8,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(51,6,20,2.00,'Clean & perfect source code','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\"]'),(52,5,6,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(53,4,19,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(54,3,11,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(55,3,5,4.00,'Best ecommerce CMS online store!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(56,7,1,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(57,4,13,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\"]'),(58,3,15,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(59,10,17,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\"]'),(60,10,3,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(61,3,2,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(62,7,21,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(63,3,16,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/14.jpg\"]'),(64,5,17,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(65,6,20,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(66,6,17,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(67,4,8,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/20.jpg\"]'),(68,4,17,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(69,3,6,3.00,'Best ecommerce CMS online store!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\"]'),(70,10,20,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(71,9,17,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\"]'),(72,9,22,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(73,3,22,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(74,9,13,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(75,7,17,4.00,'Good app, good backup service and support. Good documentation.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(76,9,8,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(77,2,23,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(78,9,12,3.00,'Best ecommerce CMS online store!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(79,2,1,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\"]'),(80,10,9,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(81,9,22,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\"]'),(82,10,15,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/8.jpg\"]'),(83,4,4,4.00,'Best ecommerce CMS online store!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(84,3,12,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\"]'),(85,5,2,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(86,6,9,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/20.jpg\"]'),(87,3,1,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(88,6,14,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(89,3,16,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(90,10,12,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(91,10,14,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(92,3,23,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(93,5,16,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(94,10,16,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(95,8,2,4.00,'Best ecommerce CMS online store!','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(96,10,14,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(97,2,2,2.00,'Clean & perfect source code','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/3.jpg\",\"products\\/8.jpg\"]'),(98,8,21,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(99,7,12,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/10.jpg\"]'),(100,7,7,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-04 01:10:55','2023-01-04 01:10:55','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-12-30 01:10:58','2022-12-30 01:10:58'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-01-02 09:10:58','2023-01-04 01:10:58'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-12-20 19:10:58','2022-12-20 19:10:58'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-01-02 11:10:58','2023-01-04 01:10:58'),(6,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(7,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-12-31 21:10:58','2022-12-31 21:10:58'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-01-02 11:10:58','2023-01-04 01:10:58'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-01-01 01:10:58','2023-01-01 01:10:58'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-01-02 13:10:58','2023-01-04 01:10:58'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-01-02 13:10:58','2023-01-02 13:10:58'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-01-02 13:10:58','2023-01-04 01:10:58'),(14,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,5,5,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(15,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(16,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-12-30 19:10:58','2022-12-30 19:10:58'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-01-02 15:10:58','2023-01-04 01:10:58'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-12-27 23:10:58','2022-12-27 23:10:58'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-01-02 15:10:58','2023-01-04 01:10:58'),(20,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-12-22 07:10:58','2022-12-22 07:10:58'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-01-02 15:10:58','2023-01-04 01:10:58'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(23,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-01-01 05:10:58','2023-01-01 05:10:58'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-01-02 15:10:58','2023-01-04 01:10:58'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2023-01-04 01:10:58','2023-01-04 01:10:58'),(26,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-12-28 09:10:58','2022-12-28 09:10:58'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-01-02 17:10:58','2023-01-04 01:10:58'),(28,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-12-31 01:10:58','2022-12-31 01:10:58'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-01-02 17:10:59','2023-01-04 01:10:59'),(30,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-12-30 01:10:59','2022-12-30 01:10:59'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-01-02 19:10:59','2023-01-04 01:10:59'),(32,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-12-31 07:10:59','2022-12-31 07:10:59'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-01-02 19:10:59','2023-01-04 01:10:59'),(34,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(35,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-12-28 01:10:59','2022-12-28 01:10:59'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-01-02 21:10:59','2023-01-04 01:10:59'),(37,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-01-02 21:10:59','2023-01-02 21:10:59'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-01-02 21:10:59','2023-01-04 01:10:59'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(40,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-12-26 21:10:59','2022-12-26 21:10:59'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-01-02 21:10:59','2023-01-04 01:10:59'),(42,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-12-28 13:10:59','2022-12-28 13:10:59'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-01-02 23:10:59','2023-01-04 01:10:59'),(44,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-12-24 05:10:59','2022-12-24 05:10:59'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-01-02 23:10:59','2023-01-04 01:10:59'),(46,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-12-27 01:10:59','2022-12-27 01:10:59'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-01-03 01:10:59','2023-01-04 01:10:59'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(49,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-12-26 01:10:59','2022-12-26 01:10:59'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-01-03 01:10:59','2023-01-04 01:10:59'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(52,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2023-01-01 07:10:59','2023-01-01 07:10:59'),(53,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2023-01-03 03:10:59','2023-01-04 01:10:59'),(54,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-12-26 19:10:59','2022-12-26 19:10:59'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2023-01-03 03:10:59','2023-01-04 01:10:59'),(56,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(57,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2023-01-03 05:10:59','2023-01-04 01:10:59'),(59,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-12-30 01:10:59','2022-12-30 01:10:59'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2023-01-03 05:10:59','2023-01-04 01:10:59'),(61,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(62,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-12-30 21:10:59','2022-12-30 21:10:59'),(63,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2023-01-03 05:10:59','2023-01-04 01:10:59'),(64,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,25,25,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(65,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,25,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(66,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2023-01-01 19:10:59','2023-01-01 19:10:59'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2023-01-03 07:10:59','2023-01-04 01:10:59'),(68,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2023-01-01 19:10:59','2023-01-01 19:10:59'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2023-01-03 07:10:59','2023-01-04 01:10:59'),(70,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-12-31 17:10:59','2022-12-31 17:10:59'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2023-01-03 09:10:59','2023-01-04 01:10:59'),(72,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-12-31 01:10:59','2022-12-31 01:10:59'),(73,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2023-01-03 09:10:59','2023-01-04 01:10:59'),(74,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(75,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2023-01-03 09:10:59','2023-01-03 09:10:59'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2023-01-03 09:10:59','2023-01-04 01:10:59'),(77,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2023-01-01 03:10:59','2023-01-01 03:10:59'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2023-01-03 11:10:59','2023-01-04 01:10:59'),(79,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2023-01-01 03:10:59','2023-01-01 03:10:59'),(80,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2023-01-03 11:10:59','2023-01-04 01:10:59'),(81,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2023-01-02 21:10:59','2023-01-02 21:10:59'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2023-01-03 11:10:59','2023-01-04 01:10:59'),(83,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2023-01-03 13:10:59','2023-01-03 13:10:59'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2023-01-03 13:10:59','2023-01-04 01:10:59'),(85,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,34,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(86,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-12-30 13:10:59','2022-12-30 13:10:59'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2023-01-03 13:10:59','2023-01-04 01:10:59'),(88,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,35,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(89,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2023-01-02 01:10:59','2023-01-02 01:10:59'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2023-01-03 13:10:59','2023-01-04 01:10:59'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,36,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(92,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-12-31 17:10:59','2022-12-31 17:10:59'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2023-01-03 15:10:59','2023-01-04 01:10:59'),(94,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,37,37,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(95,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,37,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(96,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2023-01-01 13:10:59','2023-01-01 13:10:59'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2023-01-03 15:10:59','2023-01-04 01:10:59'),(98,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2023-01-03 17:10:59','2023-01-04 01:10:59'),(100,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(101,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2023-01-03 17:10:59','2023-01-04 01:10:59'),(102,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(103,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(104,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2023-01-03 17:10:59','2023-01-04 01:10:59'),(105,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,41,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(106,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2023-01-03 13:10:59','2023-01-03 13:10:59'),(107,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2023-01-03 19:10:59','2023-01-04 01:10:59'),(108,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,42,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(109,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2023-01-02 13:10:59','2023-01-02 13:10:59'),(110,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2023-01-03 19:10:59','2023-01-04 01:10:59'),(111,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2023-01-02 09:10:59','2023-01-02 09:10:59'),(112,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2023-01-03 21:10:59','2023-01-04 01:10:59'),(113,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,44,44,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(114,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,44,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(115,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2023-01-02 17:10:59','2023-01-02 17:10:59'),(116,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,45,45,'2023-01-03 21:10:59','2023-01-04 01:10:59'),(117,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,45,45,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(118,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,45,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(119,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2023-01-03 17:10:59','2023-01-03 17:10:59'),(120,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,46,46,'2023-01-03 21:10:59','2023-01-04 01:10:59'),(121,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,46,'2023-01-04 01:10:59','2023-01-04 01:10:59'),(122,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2023-01-03 05:10:59','2023-01-03 05:10:59'),(123,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,47,47,'2023-01-03 23:10:59','2023-01-04 01:10:59'),(124,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2023-01-03 17:10:59','2023-01-03 17:10:59'),(125,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,48,48,'2023-01-03 23:10:59','2023-01-04 01:10:59'),(126,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,48,'2023-01-04 01:10:59','2023-01-04 01:10:59');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,4439.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0042190503','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-09 08:10:58','2023-01-04 08:10:58',NULL,NULL),(2,2,NULL,1548.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0074426026','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:58','2023-01-04 08:10:58',NULL,NULL),(3,3,NULL,1869.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0036197055','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-14 08:10:58',NULL,NULL,NULL),(4,4,NULL,5244.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0043962359','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-07 08:10:58','2023-01-04 08:10:58',NULL,NULL),(5,5,NULL,1308.00,NULL,NULL,'','delivered',2282.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0034528943','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-07 08:10:58','2023-01-04 08:10:58',NULL,NULL),(6,6,NULL,1624.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0055150058','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-10 08:10:58',NULL,NULL,NULL),(7,7,NULL,1464.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0087579703','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:58',NULL,NULL,NULL),(8,8,NULL,2241.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0076137368','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-07 08:10:58','2023-01-04 08:10:58',NULL,NULL),(9,9,NULL,688.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0090552226','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 08:10:58','2023-01-04 08:10:58',NULL,NULL),(10,10,NULL,3558.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:58','2023-01-04 01:10:58','JJD0091299996','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-06 08:10:58',NULL,NULL,NULL),(11,11,NULL,1624.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0016879047','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-10 08:10:59',NULL,NULL,NULL),(12,12,NULL,530.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0017132130','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-06 08:10:59',NULL,NULL,NULL),(13,13,NULL,1126.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0080652026','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-14 08:10:59','2023-01-04 08:10:59',NULL,NULL),(14,14,NULL,1839.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0088123686','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-08 08:10:59',NULL,NULL,NULL),(15,15,NULL,1246.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0039468356','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:59','2023-01-04 08:10:59',NULL,NULL),(16,16,NULL,1962.00,NULL,NULL,'','approved',3423.00,'pending','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0012652958','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-08 08:10:59',NULL,NULL,NULL),(17,17,NULL,2310.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0024909708','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 08:10:59',NULL,NULL,NULL),(18,18,NULL,1570.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0077232385','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-10 08:10:59',NULL,NULL,NULL),(19,19,NULL,5899.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0063560882','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 08:10:59','2023-01-04 08:10:59',NULL,NULL),(20,20,NULL,1689.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0030216651','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-06 08:10:59','2023-01-04 08:10:59',NULL,NULL),(21,21,NULL,516.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0027697928','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-09 08:10:59',NULL,NULL,NULL),(22,22,NULL,1290.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0028330574','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:59','2023-01-04 08:10:59',NULL,NULL),(23,23,NULL,1060.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0097032053','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 08:10:59',NULL,NULL,NULL),(24,24,NULL,605.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0011459856','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-08 08:10:59','2023-01-04 08:10:59',NULL,NULL),(25,25,NULL,2815.00,NULL,NULL,'','delivered',3865.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0085209716','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-09 08:10:59','2023-01-04 08:10:59',NULL,NULL),(26,26,NULL,2432.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0089770604','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:59',NULL,NULL,NULL),(27,27,NULL,1308.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0019685567','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-07 08:10:59',NULL,NULL,NULL),(28,28,NULL,1590.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0019891845','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:59',NULL,NULL,NULL),(29,29,NULL,3115.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0076552643','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-13 08:10:59','2023-01-04 08:10:59',NULL,NULL),(30,30,NULL,2205.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0075890514','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-07 08:10:59',NULL,NULL,NULL),(31,31,NULL,1226.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0061083760','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:59',NULL,NULL,NULL),(32,32,NULL,563.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD003109852','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-10 08:10:59',NULL,NULL,NULL),(33,33,NULL,1762.00,NULL,NULL,'','approved',1572.00,'pending','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0056564121','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 08:10:59',NULL,NULL,NULL),(34,34,NULL,516.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0086747782','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-14 08:10:59','2023-01-04 08:10:59',NULL,NULL),(35,35,NULL,1944.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0093895481','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-06 08:10:59','2023-01-04 08:10:59',NULL,NULL),(36,36,NULL,1590.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0021145941','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-08 08:10:59','2023-01-04 08:10:59',NULL,NULL),(37,37,NULL,1470.00,NULL,NULL,'','delivered',1836.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0051097886','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-07 08:10:59','2023-01-04 08:10:59',NULL,NULL),(38,38,NULL,563.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0053834706','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-14 08:10:59',NULL,NULL,NULL),(39,39,NULL,502.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0095048496','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 08:10:59',NULL,NULL,NULL),(40,40,NULL,1470.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD006953558','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:59','2023-01-04 08:10:59',NULL,NULL),(41,41,NULL,688.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0027903709','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-13 08:10:59','2023-01-04 08:10:59',NULL,NULL),(42,42,NULL,2249.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0069251198','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-13 08:10:59','2023-01-04 08:10:59',NULL,NULL),(43,43,NULL,881.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0023559075','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-06 08:10:59',NULL,NULL,NULL),(44,44,NULL,1638.00,NULL,NULL,'','delivered',60.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0039951046','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-07 08:10:59','2023-01-04 08:10:59',NULL,NULL),(45,45,NULL,605.00,NULL,NULL,'','delivered',566.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0024781107','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:59','2023-01-04 08:10:59',NULL,NULL),(46,46,NULL,563.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0066597552','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 08:10:59','2023-01-04 08:10:59',NULL,NULL),(47,47,NULL,1060.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0087575919','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-09 08:10:59',NULL,NULL,NULL),(48,48,NULL,1470.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-04 01:10:59','2023-01-04 01:10:59','JJD0018719888','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-08 08:10:59','2023-01-04 08:10:59',NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-01-04 01:10:55','2023-01-04 01:10:55');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-01-04 01:10:55','2023-01-04 01:10:55');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-01-04 01:10:55','2023-01-04 01:10:55'),(2,'None',0.000000,2,'published','2023-01-04 01:10:55','2023-01-04 01:10:55'),(3,'Import Tax',15.000000,3,'published','2023-01-04 01:10:55','2023-01-04 01:10:55');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'PAYMENT',1,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'ORDER &amp; RETURNS',2,'published','2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'V?N CHUY?N'),('vi',2,'THANH TO?N'),('vi',3,'??N H?NG & HO?N TR?');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney�s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven�t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'C? nh?ng ph??ng th?c v?n chuy?n n�o?','Ex Portland Pitchfork irure ria m�p. Eutra fap tr??c khi h? b?n h?t theo ??ng ngh?a ?en. Aliquip ugh quy?n xe ??p th?c s? mlkshk, r??u bia th? c�ng m?c seitan. '),('vi',2,'B?n c? giao h�ng qu?c t? kh�ng?','?o hoodie t?i tote Tofu mixtape. Qu?n ?�i jean ??nh ch? Wolf quinoa, t?i messenger h?u c? freegan cray. '),('vi',3,'M?t bao l�u ?? nh?n ???c g?i h�ng c?a t�i?','B?a n?a bu?i ?n s?ng b?ng b?ng heo quay t? m?y ??nh ch? VHS, c� ph� c? ngu?n g?c ??n Paleo, Wes Anderson. Khoan Pitchfork linh ho?t, theo ngh?a ?en l� ?? qua fap theo ngh?a ?en. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray b?n v?ng slow-carb raw denim Church-key fap chillwave Etsy. +1 b? d?ng c? ??nh m?y, ??u ph? Banksy Vice c?a American Apparel. '),('vi',4,'Ph??ng th?c thanh to?n n�o ???c ch?p nh?n?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Qu?y ?nh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria m�p. Twee chia gian h�ng ch?p ?nh xe b?n ?? ?n s?n, b?a ti?c tr�n m?i ?o hoodie swag keytar PBR DIY. '),('vi',5,'Mua tr?c tuy?n c? an to�n kh�ng?','B?a ti?c ngh? thu?t ??ch th?c freegan semiotics jean shorts chia credit. Ti?c tr�n m?i nh� Neutra Austin Brooklyn, Thundercats swag synth gian h�ng ?nh 8-bit. X� c?p letterpress k? s?c th? c�ng bia meh ??o ??c Pinterest. '),('vi',6,'L�m c?ch n�o ?? ??t h�ng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd ??nh m?c seitan trong t??ng lai. Master l�m s?ch American Apparel nh? nh�ng l�m s?ch r�u linh ho?t ch?m carb c?p ?? ti?p theo. V?i th� denim polaroid nh?t t? trang tr?i ??n b�n, ??t m?t con chim tr�n ?? h?nh x?m lo-fi Wes Anderson Pinterest letterpress. B?c th?y gian h�ng ?nh Schlitz c?a Fingerstache McSweeney ?ang l�m s?ch th? b?t ??u b?ng hashtag theo y�u c?u ri�ng, chillwave gentrify. '),('vi',7,'L�m c?ch n�o ?? t�i c? th? h?y ho?c thay ??i ??n h�ng c?a m?nh?','X� c?p letterpress k? s?c th? c�ng bia meh ??o ??c Pinterest. B?a ti?c ngh? thu?t ??ch th?c freegan semiotics jean shorts chia t?n. Ti?c tr�n m?i nh� Neutra Austin ? Brooklyn, synth Thundercats c? gian h�ng ?nh 8-bit. '),('vi',8,'T�i c? c?n t�i kho?n ?? ??t h�ng kh�ng?','Thundercats l�m lung lay gian h�ng ?nh 8-bit. X� c?p letterpress k? s?c th? c�ng bia meh ??o ??c Pinterest. Twee chia ?nh gian h�ng xe b?n th?c ?n l�m s?n, b?a ti?c tr�n m?i ?o hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, r?u th?i trang m?a mai ng??i b?n th?t m?y ??nh ch? chambray VHS banjo ngh? thu?t ???ng ph?. '),('vi',9,'L�m c?ch n�o ?? theo d?i ??n h�ng c?a t�i?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd ??nh m?c seitan trong t??ng lai. B?c th?y l�m s?ch American Apparel nh? nh�ng l�m s?ch r�u linh ho?t theo ki?u ch?m carb c?p ?? ti?p theo. '),('vi',10,'L�m c?ch n�o ?? tr? l?i s?n ph?m?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray u?ng gi?m Carles street art Bushwick gastropub. Ch?a kh?a nh� th? Wolf Tumblr. Xe t?i th?c ph?m k? s?c Echo Park YOLO c?n hella, giao d?ch tr?c ti?p Thundercats legging quinoa tr??c khi b?n h?t. C? th? b?n ch?a t?ng nghe n?i v? h? nh?ng ng??i truy?n b? v? umami ??ch th?c u?ng gi?m Pinterest ?o len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
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
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','352f2d002ea8d5ccd25309a35bf528d4',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','352f2d002ea8d5ccd25309a35bf528d4',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','a017d3e3a37d7f5e1605ab45c6e664a5',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','9418dbf01587bcedacc83ef3876630e2',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','a553ff75f98111421065a4ac6ff10e93',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','f3de96fb7678b24fa648e698466f1366',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','79050c7aaf0575364d09e278f15ed9d3',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','2702b88ee849324974986d17d0da5e01',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','9418dbf01587bcedacc83ef3876630e2',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','a553ff75f98111421065a4ac6ff10e93',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','f3de96fb7678b24fa648e698466f1366',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','79050c7aaf0575364d09e278f15ed9d3',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Ti?ng Vi?t','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',916,'brands/1.jpg','[]','2023-01-04 01:10:48','2023-01-04 01:10:48',NULL),(2,0,'2',1,'image/jpeg',916,'brands/2.jpg','[]','2023-01-04 01:10:48','2023-01-04 01:10:48',NULL),(3,0,'3',1,'image/jpeg',916,'brands/3.jpg','[]','2023-01-04 01:10:48','2023-01-04 01:10:48',NULL),(4,0,'4',1,'image/jpeg',916,'brands/4.jpg','[]','2023-01-04 01:10:48','2023-01-04 01:10:48',NULL),(5,0,'5',1,'image/jpeg',916,'brands/5.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(6,0,'6',1,'image/jpeg',916,'brands/6.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(7,0,'7',1,'image/jpeg',916,'brands/7.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(8,0,'1',2,'image/jpeg',2165,'product-categories/1.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(9,0,'2',2,'image/jpeg',2165,'product-categories/2.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(10,0,'3',2,'image/jpeg',2165,'product-categories/3.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(11,0,'4',2,'image/jpeg',2165,'product-categories/4.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(12,0,'5',2,'image/jpeg',2165,'product-categories/5.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(13,0,'6',2,'image/jpeg',2165,'product-categories/6.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(14,0,'7',2,'image/jpeg',2165,'product-categories/7.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(15,0,'8',2,'image/jpeg',2165,'product-categories/8.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(16,0,'1',3,'image/jpeg',2165,'products/1.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(17,0,'10-1',3,'image/jpeg',2165,'products/10-1.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(18,0,'10-2',3,'image/jpeg',2165,'products/10-2.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(19,0,'10',3,'image/jpeg',2165,'products/10.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(20,0,'11-1',3,'image/jpeg',2165,'products/11-1.jpg','[]','2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(21,0,'11-2',3,'image/jpeg',2165,'products/11-2.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(22,0,'11-3',3,'image/jpeg',2165,'products/11-3.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(23,0,'11',3,'image/jpeg',2165,'products/11.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(24,0,'12-1',3,'image/jpeg',2165,'products/12-1.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(25,0,'12-2',3,'image/jpeg',2165,'products/12-2.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(26,0,'12-3',3,'image/jpeg',2165,'products/12-3.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(27,0,'12',3,'image/jpeg',2165,'products/12.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(28,0,'13-1',3,'image/jpeg',2165,'products/13-1.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(29,0,'13',3,'image/jpeg',2165,'products/13.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(30,0,'14',3,'image/jpeg',2165,'products/14.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(31,0,'15-1',3,'image/jpeg',2165,'products/15-1.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(32,0,'15',3,'image/jpeg',2165,'products/15.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(33,0,'16',3,'image/jpeg',2165,'products/16.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(34,0,'17-1',3,'image/jpeg',2165,'products/17-1.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(35,0,'17-2',3,'image/jpeg',2165,'products/17-2.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(36,0,'17-3',3,'image/jpeg',2165,'products/17-3.jpg','[]','2023-01-04 01:10:50','2023-01-04 01:10:50',NULL),(37,0,'17',3,'image/jpeg',2165,'products/17.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(38,0,'18-1',3,'image/jpeg',2165,'products/18-1.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(39,0,'18-2',3,'image/jpeg',2165,'products/18-2.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(40,0,'18-3',3,'image/jpeg',2165,'products/18-3.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(41,0,'18',3,'image/jpeg',2165,'products/18.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(42,0,'19-1',3,'image/jpeg',2165,'products/19-1.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(43,0,'19-2',3,'image/jpeg',2165,'products/19-2.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(44,0,'19-3',3,'image/jpeg',2165,'products/19-3.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(45,0,'19',3,'image/jpeg',2165,'products/19.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(46,0,'2-1',3,'image/jpeg',2165,'products/2-1.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(47,0,'2-2',3,'image/jpeg',2165,'products/2-2.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(48,0,'2-3',3,'image/jpeg',2165,'products/2-3.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(49,0,'2',3,'image/jpeg',2165,'products/2.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(50,0,'20-1',3,'image/jpeg',2165,'products/20-1.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(51,0,'20-2',3,'image/jpeg',2165,'products/20-2.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(52,0,'20-3',3,'image/jpeg',2165,'products/20-3.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(53,0,'20',3,'image/jpeg',2165,'products/20.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(54,0,'21-1',3,'image/jpeg',2165,'products/21-1.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(55,0,'21-2',3,'image/jpeg',2165,'products/21-2.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(56,0,'21',3,'image/jpeg',2165,'products/21.jpg','[]','2023-01-04 01:10:51','2023-01-04 01:10:51',NULL),(57,0,'22-1',3,'image/jpeg',2165,'products/22-1.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(58,0,'22-2',3,'image/jpeg',2165,'products/22-2.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(59,0,'22-3',3,'image/jpeg',2165,'products/22-3.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(60,0,'22',3,'image/jpeg',2165,'products/22.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(61,0,'23-1',3,'image/jpeg',2165,'products/23-1.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(62,0,'23-2',3,'image/jpeg',2165,'products/23-2.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(63,0,'23-3',3,'image/jpeg',2165,'products/23-3.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(64,0,'23',3,'image/jpeg',2165,'products/23.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(65,0,'3',3,'image/jpeg',2165,'products/3.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(66,0,'4-1',3,'image/jpeg',2165,'products/4-1.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(67,0,'4-2',3,'image/jpeg',2165,'products/4-2.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(68,0,'4-3',3,'image/jpeg',2165,'products/4-3.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(69,0,'4',3,'image/jpeg',2165,'products/4.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(70,0,'5-1',3,'image/jpeg',2165,'products/5-1.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(71,0,'5-2',3,'image/jpeg',2165,'products/5-2.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(72,0,'5-3',3,'image/jpeg',2165,'products/5-3.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(73,0,'5',3,'image/jpeg',2165,'products/5.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(74,0,'6',3,'image/jpeg',2165,'products/6.jpg','[]','2023-01-04 01:10:52','2023-01-04 01:10:52',NULL),(75,0,'7',3,'image/jpeg',2165,'products/7.jpg','[]','2023-01-04 01:10:53','2023-01-04 01:10:53',NULL),(76,0,'8-1',3,'image/jpeg',2165,'products/8-1.jpg','[]','2023-01-04 01:10:53','2023-01-04 01:10:53',NULL),(77,0,'8-2',3,'image/jpeg',2165,'products/8-2.jpg','[]','2023-01-04 01:10:53','2023-01-04 01:10:53',NULL),(78,0,'8-3',3,'image/jpeg',2165,'products/8-3.jpg','[]','2023-01-04 01:10:53','2023-01-04 01:10:53',NULL),(79,0,'8',3,'image/jpeg',2165,'products/8.jpg','[]','2023-01-04 01:10:53','2023-01-04 01:10:53',NULL),(80,0,'9-1',3,'image/jpeg',2165,'products/9-1.jpg','[]','2023-01-04 01:10:53','2023-01-04 01:10:53',NULL),(81,0,'9-2',3,'image/jpeg',2165,'products/9-2.jpg','[]','2023-01-04 01:10:53','2023-01-04 01:10:53',NULL),(82,0,'9',3,'image/jpeg',2165,'products/9.jpg','[]','2023-01-04 01:10:53','2023-01-04 01:10:53',NULL),(83,0,'1',4,'image/jpeg',2165,'customers/1.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(84,0,'10',4,'image/jpeg',2165,'customers/10.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(85,0,'2',4,'image/jpeg',2165,'customers/2.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(86,0,'3',4,'image/jpeg',2165,'customers/3.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(87,0,'4',4,'image/jpeg',2165,'customers/4.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(88,0,'5',4,'image/jpeg',2165,'customers/5.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(89,0,'6',4,'image/jpeg',2165,'customers/6.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(90,0,'7',4,'image/jpeg',2165,'customers/7.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(91,0,'8',4,'image/jpeg',2165,'customers/8.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(92,0,'9',4,'image/jpeg',2165,'customers/9.jpg','[]','2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(93,0,'1',5,'image/jpeg',2165,'news/1.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(94,0,'10',5,'image/jpeg',2165,'news/10.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(95,0,'11',5,'image/jpeg',2165,'news/11.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(96,0,'2',5,'image/jpeg',2165,'news/2.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(97,0,'3',5,'image/jpeg',2165,'news/3.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(98,0,'4',5,'image/jpeg',2165,'news/4.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(99,0,'5',5,'image/jpeg',2165,'news/5.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(100,0,'6',5,'image/jpeg',2165,'news/6.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(101,0,'7',5,'image/jpeg',2165,'news/7.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(102,0,'8',5,'image/jpeg',2165,'news/8.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(103,0,'9',5,'image/jpeg',2165,'news/9.jpg','[]','2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(104,0,'1-lg',6,'image/jpeg',3852,'sliders/1-lg.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(105,0,'1-md',6,'image/jpeg',3852,'sliders/1-md.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(106,0,'1-sm',6,'image/jpeg',3852,'sliders/1-sm.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(107,0,'2-lg',6,'image/jpeg',3852,'sliders/2-lg.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(108,0,'2-md',6,'image/jpeg',3852,'sliders/2-md.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(109,0,'2-sm',6,'image/jpeg',3852,'sliders/2-sm.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(110,0,'3-lg',6,'image/jpeg',3852,'sliders/3-lg.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(111,0,'3-md',6,'image/jpeg',3852,'sliders/3-md.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(112,0,'3-sm',6,'image/jpeg',3852,'sliders/3-sm.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(113,0,'1',7,'image/jpeg',1463,'promotion/1.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(114,0,'2',7,'image/jpeg',1463,'promotion/2.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(115,0,'3',7,'image/jpeg',2049,'promotion/3.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(116,0,'4',7,'image/jpeg',2049,'promotion/4.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(117,0,'5',7,'image/jpeg',2049,'promotion/5.jpg','[]','2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(118,0,'6',7,'image/jpeg',2049,'promotion/6.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(119,0,'7',7,'image/jpeg',2049,'promotion/7.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(120,0,'8',7,'image/jpeg',2049,'promotion/8.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(121,0,'9',7,'image/jpeg',2049,'promotion/9.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(122,0,'app',8,'image/png',1849,'general/app.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(123,0,'coming-soon',8,'image/jpeg',19900,'general/coming-soon.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(124,0,'favicon',8,'image/png',1925,'general/favicon.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(125,0,'logo-dark',8,'image/png',784,'general/logo-dark.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(126,0,'logo-light',8,'image/png',783,'general/logo-light.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(127,0,'logo',8,'image/png',793,'general/logo.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(128,0,'newsletter',8,'image/jpeg',3316,'general/newsletter.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(129,0,'payment-method-1',8,'image/jpeg',813,'general/payment-method-1.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(130,0,'payment-method-2',8,'image/jpeg',878,'general/payment-method-2.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(131,0,'payment-method-3',8,'image/jpeg',816,'general/payment-method-3.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(132,0,'payment-method-4',8,'image/jpeg',638,'general/payment-method-4.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(133,0,'payment-method-5',8,'image/jpeg',659,'general/payment-method-5.jpg','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(134,0,'1',9,'image/png',3482,'stores/1.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(135,0,'10',9,'image/png',1675,'stores/10.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(136,0,'11',9,'image/png',1857,'stores/11.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(137,0,'12',9,'image/png',2046,'stores/12.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(138,0,'13',9,'image/png',1597,'stores/13.png','[]','2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(139,0,'14',9,'image/png',1649,'stores/14.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(140,0,'15',9,'image/png',2120,'stores/15.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(141,0,'16',9,'image/png',2556,'stores/16.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(142,0,'17',9,'image/png',2631,'stores/17.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(143,0,'2',9,'image/png',3369,'stores/2.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(144,0,'3',9,'image/png',3044,'stores/3.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(145,0,'4',9,'image/png',3096,'stores/4.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(146,0,'5',9,'image/png',3607,'stores/5.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(147,0,'6',9,'image/png',3778,'stores/6.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(148,0,'7',9,'image/png',1566,'stores/7.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(149,0,'8',9,'image/png',1773,'stores/8.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL),(150,0,'9',9,'image/png',1671,'stores/9.png','[]','2023-01-04 01:10:58','2023-01-04 01:10:58',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2023-01-04 01:10:48','2023-01-04 01:10:48',NULL),(2,0,'product-categories','product-categories',0,'2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(3,0,'products','products',0,'2023-01-04 01:10:49','2023-01-04 01:10:49',NULL),(4,0,'customers','customers',0,'2023-01-04 01:10:54','2023-01-04 01:10:54',NULL),(5,0,'news','news',0,'2023-01-04 01:10:55','2023-01-04 01:10:55',NULL),(6,0,'sliders','sliders',0,'2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(7,0,'promotion','promotion',0,'2023-01-04 01:10:56','2023-01-04 01:10:56',NULL),(8,0,'general','general',0,'2023-01-04 01:10:57','2023-01-04 01:10:57',NULL),(9,0,'stores','stores',0,'2023-01-04 01:10:57','2023-01-04 01:10:57',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,5,'main-menu','2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang ch?',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'V? ch?ng t�i',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'?i?u kho?n s? d?ng',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'?i?u kho?n v� quy ??nh',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Ch?nh s?ch ho�n h�ng',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'S?p ra m?t',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(36,5,0,NULL,NULL,'/products',NULL,0,'S?n ph?m',NULL,'_self',1,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(37,5,36,NULL,NULL,'/products',NULL,0,'T?t c? s?n ph?m',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh m?c s?n ph?m',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'S?n ph?m chi ti?t',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(40,5,0,NULL,NULL,'/stores',NULL,0,'C?a h�ng',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin t?c',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Li�n h?',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'?i?u kho?n s? d?ng',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'?i?u kho?n v� quy ??nh',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Ch?nh s?ch ho�n h�ng',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'V? ch?ng t�i',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Ti?p th? li�n k?t',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuy?n d?ng',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Li�n h?',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin t?c',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Gi? h�ng',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'T�i kho?n',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57'),(56,8,0,NULL,NULL,'/products',NULL,0,'S?n ph?m',NULL,'_self',0,'2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'Quick links','quick-links','published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'Company','company','published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,'Business','business','published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(5,'Menu ch?nh','menu-chinh','published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(6,'Li�n k?t nhanh','lien-ket-nhanh','published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(7,'C�ng ty','cong-ty','published','2023-01-04 01:10:57','2023-01-04 01:10:57'),(8,'Doanh nghi?p','doanh-nghiep','published','2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-04 01:10:49','2023-01-04 01:10:49'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-01-04 01:10:53','2023-01-04 01:10:53'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-04 01:10:56','2023-01-04 01:10:56');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2020_11_18_150916_ads_create_ads_table',2),(25,'2021_12_02_035301_add_ads_translations_table',2),(26,'2015_06_29_025744_create_audit_history',3),(27,'2015_06_18_033822_create_blog_table',4),(28,'2021_02_16_092633_remove_default_value_for_author_type',4),(29,'2021_12_03_030600_create_blog_translations',4),(30,'2022_04_19_113923_add_index_to_table_posts',4),(31,'2016_06_17_091537_create_contacts_table',5),(32,'2020_03_05_041139_create_ecommerce_tables',6),(33,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(34,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(35,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(36,'2021_02_18_073505_update_table_ec_reviews',6),(37,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(38,'2021_03_10_025153_change_column_tax_amount',6),(39,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(40,'2021_04_28_074008_ecommerce_create_product_label_table',6),(41,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(42,'2021_06_28_153141_correct_slugs_data',6),(43,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(44,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(45,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(46,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(47,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(48,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(49,'2021_11_23_071403_correct_languages_for_product_variations',6),(50,'2021_11_28_031808_add_product_tags_translations',6),(51,'2021_12_01_031123_add_featured_image_to_ec_products',6),(52,'2022_01_01_033107_update_table_ec_shipments',6),(53,'2022_02_16_042457_improve_product_attribute_sets',6),(54,'2022_03_22_075758_correct_product_name',6),(55,'2022_04_19_113334_add_index_to_ec_products',6),(56,'2022_04_28_144405_remove_unused_table',6),(57,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(58,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(59,'2022_06_16_095633_add_index_to_some_tables',6),(60,'2022_06_30_035148_create_order_referrals_table',6),(61,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(62,'2022_08_14_032836_create_ec_order_returns_table',6),(63,'2022_08_14_033554_create_ec_order_return_items_table',6),(64,'2022_08_15_040324_add_billing_address',6),(65,'2022_08_30_091114_support_digital_products_table',6),(66,'2022_09_13_095744_create_options_table',6),(67,'2022_09_13_104347_create_option_value_table',6),(68,'2022_10_05_163518_alter_table_ec_order_product',6),(69,'2022_10_12_041517_create_invoices_table',6),(70,'2022_10_12_142226_update_orders_table',6),(71,'2022_10_13_024916_update_table_order_returns',6),(72,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(73,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(74,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(75,'2022_11_19_041643_add_ec_tax_product_table',6),(76,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(77,'2022_12_17_041532_fix_address_in_order_invoice',6),(78,'2022_12_26_070329_create_ec_product_views_table',6),(79,'2023_01_04_033051_fix_product_categories',6),(80,'2018_07_09_221238_create_faq_table',7),(81,'2021_12_03_082134_create_faq_translations',7),(82,'2016_10_03_032336_create_languages_table',8),(83,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(84,'2021_12_03_075608_create_page_translations',9),(85,'2019_11_18_061011_create_country_table',10),(86,'2021_12_03_084118_create_location_translations',10),(87,'2021_12_03_094518_migrate_old_location_data',10),(88,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(89,'2022_01_16_085908_improve_plugin_location',10),(90,'2022_08_04_052122_delete_location_backup_tables',10),(91,'2022_10_29_065232_increase_states_abbreviation_column',10),(92,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(93,'2021_07_06_030002_create_marketplace_table',11),(94,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(95,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(96,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(97,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(98,'2021_12_06_031304_update_table_mp_customer_revenues',11),(99,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(100,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(101,'2022_11_02_071413_add_more_info_for_store',11),(102,'2022_11_02_080444_add_tax_info',11),(103,'2017_10_24_154832_create_newsletter_table',12),(104,'2017_05_18_080441_create_payment_tables',13),(105,'2021_03_27_144913_add_customer_type_into_table_payments',13),(106,'2021_05_24_034720_make_column_currency_nullable',13),(107,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(108,'2021_10_19_020859_update_metadata_field',13),(109,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(110,'2022_07_07_153354_update_charge_id_in_table_payments',13),(111,'2017_07_11_140018_create_simple_slider_table',14),(112,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` int unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,5,1,6484.00,0.00,6484.00,0.00,'USD',NULL,'2023-01-03 01:10:59','2023-01-03 01:10:59',0,NULL),(2,3,4,5622.00,0.00,5622.00,0.00,'USD',NULL,'2023-01-03 15:10:59','2023-01-03 15:10:59',0,NULL),(3,7,8,2766.00,0.00,2766.00,0.00,'USD',NULL,'2022-12-28 07:10:59','2022-12-28 07:10:59',0,NULL),(4,3,9,416.00,0.00,416.00,5622.00,'USD',NULL,'2022-12-31 17:10:59','2022-12-31 17:10:59',0,NULL),(5,3,13,1546.00,0.00,1546.00,6038.00,'USD',NULL,'2022-12-30 09:11:00','2022-12-30 09:11:00',0,NULL),(6,3,15,1066.00,0.00,1066.00,7584.00,'USD',NULL,'2022-12-21 17:11:00','2022-12-21 17:11:00',0,NULL),(7,7,19,5774.00,0.00,5774.00,2766.00,'USD',NULL,'2023-01-02 09:11:00','2023-01-02 09:11:00',0,NULL),(8,3,20,2319.00,0.00,2319.00,8650.00,'USD',NULL,'2022-12-19 07:11:00','2022-12-19 07:11:00',0,NULL),(9,2,22,2226.00,0.00,2226.00,0.00,'USD',NULL,'2022-12-21 15:11:00','2022-12-21 15:11:00',0,NULL),(10,7,24,566.00,0.00,566.00,8540.00,'USD',NULL,'2022-12-28 19:11:00','2022-12-28 19:11:00',0,NULL),(11,3,29,2665.00,0.00,2665.00,10969.00,'USD',NULL,'2022-12-12 13:11:00','2022-12-12 13:11:00',0,NULL),(12,7,34,40.50,0.00,40.50,9106.00,'USD',NULL,'2022-12-20 11:11:00','2022-12-20 11:11:00',0,NULL),(13,2,35,3367.00,0.00,3367.00,2226.00,'USD',NULL,'2022-12-08 01:11:01','2022-12-08 01:11:01',0,NULL),(14,5,36,3741.00,0.00,3741.00,6484.00,'USD',NULL,'2022-12-31 23:11:01','2022-12-31 23:11:01',0,NULL),(15,7,40,1836.00,0.00,1836.00,9146.50,'USD',NULL,'2022-12-04 07:11:01','2022-12-04 07:11:01',0,NULL),(16,3,42,2477.00,0.00,2477.00,13634.00,'USD',NULL,'2022-12-06 09:11:01','2022-12-06 09:11:01',0,NULL),(17,7,48,1836.00,0.00,1836.00,10982.50,'USD',NULL,'2022-12-14 15:11:01','2022-12-14 15:11:01',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,603.00,5593.00,'USD','','{\"name\":\"Douglas Pouros\",\"number\":\"+15207654705\",\"full_name\":\"Mr. Josh Ratke\",\"description\":\"Landen Cronin\"}',NULL,0,'pending',NULL,'2023-01-04 01:11:01','2023-01-04 01:11:01',NULL),(2,2,0.00,1345.00,4990.00,'USD','','{\"name\":\"Douglas Pouros\",\"number\":\"+15207654705\",\"full_name\":\"Mr. Josh Ratke\",\"description\":\"Landen Cronin\"}',NULL,0,'processing',NULL,'2023-01-04 01:11:01','2023-01-04 01:11:01',NULL),(3,2,0.00,113.00,3645.00,'USD','','{\"name\":\"Douglas Pouros\",\"number\":\"+15207654705\",\"full_name\":\"Mr. Josh Ratke\",\"description\":\"Landen Cronin\"}',NULL,0,'processing',NULL,'2023-01-04 01:11:01','2023-01-04 01:11:01',NULL),(4,2,0.00,170.00,3532.00,'USD','','{\"name\":\"Douglas Pouros\",\"number\":\"+15207654705\",\"full_name\":\"Mr. Josh Ratke\",\"description\":\"Landen Cronin\"}',NULL,0,'pending',NULL,'2023-01-04 01:11:02','2023-01-04 01:11:02',NULL),(5,3,0.00,1664.00,16111.00,'USD','','{\"name\":\"Taryn Klocko\",\"number\":\"+15633347039\",\"full_name\":\"Mabelle Lueilwitz\",\"description\":\"Mrs. Alicia Sporer\"}',NULL,0,'pending',NULL,'2023-01-04 01:11:02','2023-01-04 01:11:02',NULL),(6,3,0.00,997.00,14447.00,'USD','','{\"name\":\"Taryn Klocko\",\"number\":\"+15633347039\",\"full_name\":\"Mabelle Lueilwitz\",\"description\":\"Mrs. Alicia Sporer\"}',NULL,0,'pending',NULL,'2023-01-04 01:11:02','2023-01-04 01:11:02',NULL),(7,3,0.00,813.00,13450.00,'USD','','{\"name\":\"Taryn Klocko\",\"number\":\"+15633347039\",\"full_name\":\"Mabelle Lueilwitz\",\"description\":\"Mrs. Alicia Sporer\"}',NULL,0,'completed',NULL,'2023-01-04 01:11:02','2023-01-04 01:11:02',NULL),(8,5,0.00,202.00,10225.00,'USD','','{\"name\":\"Kaylin Lindgren\",\"number\":\"+19564150378\",\"full_name\":\"Dr. Ernie Walter DVM\",\"description\":\"Dr. Florian Jakubowski\"}',NULL,0,'completed',NULL,'2023-01-04 01:11:02','2023-01-04 01:11:02',NULL),(9,5,0.00,1182.00,10023.00,'USD','','{\"name\":\"Kaylin Lindgren\",\"number\":\"+19564150378\",\"full_name\":\"Dr. Ernie Walter DVM\",\"description\":\"Dr. Florian Jakubowski\"}',NULL,0,'processing',NULL,'2023-01-04 01:11:02','2023-01-04 01:11:02',NULL),(10,5,0.00,2435.00,8841.00,'USD','','{\"name\":\"Kaylin Lindgren\",\"number\":\"+19564150378\",\"full_name\":\"Dr. Ernie Walter DVM\",\"description\":\"Dr. Florian Jakubowski\"}',NULL,0,'processing',NULL,'2023-01-04 01:11:02','2023-01-04 01:11:02',NULL),(11,5,0.00,1530.00,6406.00,'USD','','{\"name\":\"Kaylin Lindgren\",\"number\":\"+19564150378\",\"full_name\":\"Dr. Ernie Walter DVM\",\"description\":\"Dr. Florian Jakubowski\"}',NULL,0,'processing',NULL,'2023-01-04 01:11:02','2023-01-04 01:11:02',NULL),(12,7,0.00,453.00,12818.50,'USD','','{\"name\":\"Alphonso Stroman PhD\",\"number\":\"+14638311035\",\"full_name\":\"Herman Considine\",\"description\":\"Abagail Feeney\"}',NULL,0,'pending',NULL,'2023-01-04 01:11:03','2023-01-04 01:11:03',NULL),(13,7,0.00,937.00,12365.50,'USD','','{\"name\":\"Alphonso Stroman PhD\",\"number\":\"+14638311035\",\"full_name\":\"Herman Considine\",\"description\":\"Abagail Feeney\"}',NULL,0,'processing',NULL,'2023-01-04 01:11:03','2023-01-04 01:11:03',NULL),(14,7,0.00,2365.00,11428.50,'USD','','{\"name\":\"Alphonso Stroman PhD\",\"number\":\"+14638311035\",\"full_name\":\"Herman Considine\",\"description\":\"Abagail Feeney\"}',NULL,0,'pending',NULL,'2023-01-04 01:11:03','2023-01-04 01:11:03',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','rashawn73@example.net','+16614459887','105 Donnelly Park','CV','Missouri','Rueckerborough',2,'stores/1.png','Velit animi ut nisi aperiam neque rerum.','Ipsam sequi ab tempore quas ducimus quibusdam. Repellat aspernatur quam iusto nemo. Officia corrupti minus doloremque debitis quod.','published',NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58',NULL,NULL),(2,'Global Office','saul50@example.org','+18319077149','69117 Anderson Springs Suite 891','TV','Wyoming','Jeanetteview',3,'stores/2.png','Repudiandae porro quas vel voluptatum.','Cumque modi ut molestiae qui rerum. Omnis et ipsam iste dolorem cupiditate eum consequatur. Quas sit quia quas et quas.','published',NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58',NULL,NULL),(3,'Young Shop','cade48@example.com','+17438578158','6489 Van Keys','DE','North Dakota','Yostview',5,'stores/3.png','Placeat unde qui voluptas.','Doloremque quas inventore itaque et rerum. Labore deserunt est natus dignissimos illum sint. Quam recusandae cupiditate nesciunt id ab.','published',NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58',NULL,NULL),(4,'Global Store','jerome.schaefer@example.com','+16407443449','7244 Guy Plains','AE','Alabama','Austinside',7,'stores/4.png','Adipisci deleniti consequuntur veniam.','Occaecati et neque culpa laudantium. Exercitationem nihil voluptates nesciunt. Omnis sequi deserunt eius.','published',NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,3362.00,0.00,5593.00,'$2y$10$gecENLm1Wal2Y2f5w9O6jeoyibKOXd3saVgyeDTD.ezP4tR0GVq7G','{\"name\":\"Douglas Pouros\",\"number\":\"+15207654705\",\"full_name\":\"Mr. Josh Ratke\",\"description\":\"Landen Cronin\"}','2023-01-04 01:10:58','2023-01-04 01:11:02','bank_transfer',NULL),(2,3,12637.00,0.00,16111.00,'$2y$10$1XgzmVJNrGjK1HmX.iUZIug9aqtOgHS/E1BxGA0pnNrln787Uaw8.','{\"name\":\"Taryn Klocko\",\"number\":\"+15633347039\",\"full_name\":\"Mabelle Lueilwitz\",\"description\":\"Mrs. Alicia Sporer\"}','2023-01-04 01:10:58','2023-01-04 01:11:02','bank_transfer',NULL),(3,5,4876.00,0.00,10225.00,'$2y$10$mVdauyJ9rnYFmYo4HNEVEuxY9k0qmH9/ug8hGx5XjUbc2TEJPTiOy','{\"name\":\"Kaylin Lindgren\",\"number\":\"+19564150378\",\"full_name\":\"Dr. Ernie Walter DVM\",\"description\":\"Dr. Florian Jakubowski\"}','2023-01-04 01:10:58','2023-01-04 01:11:03','bank_transfer',NULL),(4,7,9063.50,0.00,12818.50,'$2y$10$OnwBRApz6fbwwIzT5ISjvePxeZDyCYxSo6LoOE74MVENgTUb04uFe','{\"name\":\"Alphonso Stroman PhD\",\"number\":\"+14638311035\",\"full_name\":\"Herman Considine\",\"description\":\"Abagail Feeney\"}','2023-01-04 01:10:58','2023-01-04 01:11:03','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(2,'About us','<p>Bill, I fancy--Who\'s to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Gryphon. \'The reason is,\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'but when you throw them, and just as she passed; it was the only difficulty was, that if something wasn\'t done about it just now.\' \'It\'s the first verse,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, who always took a minute or two. \'They.</p><p>Alice. \'Stand up and said, \'It WAS a curious plan!\' exclaimed Alice. \'And where HAVE my shoulders got to? And oh, my poor hands, how is it I can\'t tell you his history,\' As they walked off together, Alice heard the Rabbit was still in existence; \'and now for the accident of the evening, beautiful Soup! Soup of the song, she kept on puzzling about it while the Mouse to Alice severely. \'What are tarts made of?\' Alice asked in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\'.</p><p>Alice, in a great hurry. An enormous puppy was looking down at her rather inquisitively, and seemed to follow, except a tiny little thing!\' It did so indeed, and much sooner than she had succeeded in getting its body tucked away, comfortably enough, under her arm, with its tongue hanging out of the officers: but the Mouse with an air of great curiosity. \'Soles and eels, of course,\' the Mock Turtle persisted. \'How COULD he turn them out with his nose, and broke to pieces against one of the.</p><p>I begin, please your Majesty,\' said Two, in a moment. \'Let\'s go on crying in this affair, He trusts to you never even spoke to Time!\' \'Perhaps not,\' Alice replied eagerly, for she felt certain it must be a letter, written by the pope, was soon submitted to by all three to settle the question, and they repeated their arguments to her, still it had been, it suddenly appeared again. \'By-the-bye, what became of the party sat silent and looked at Two. Two began in a dreamy sort of way to hear it.</p>',1,NULL,'default',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(3,'Terms Of Use','<p>Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Why not?\' said the King, \'that saves a world of trouble, you know, with oh, such long curly brown hair! And it\'ll fetch things when you come to an end! \'I wonder what they\'ll do next! As for pulling me out of sight. Alice remained looking thoughtfully at the top of the ground, Alice soon came to the other, looking uneasily at the mushroom (she had grown up,\' she said to herself, \'it would be like.</p><p>And she tried to fancy what the next witness was the Hatter. He came in with the name of the leaves: \'I should like it put more simply--\"Never imagine yourself not to be listening, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle yet?\' \'No,\' said Alice. \'I mean what I could not be denied, so she set to work, and very soon found an opportunity of taking it away. She did.</p><p>I can\'t get out again. The rabbit-hole went straight on like a Jack-in-the-box, and up I goes like a serpent. She had not gone far before they saw the White Rabbit read out, at the house, and wondering what to do, and in another moment, when she turned to the seaside once in the beautiful garden, among the party. Some of the baby?\' said the Pigeon had finished. \'As if it likes.\' \'I\'d rather not,\' the Cat in a long, low hall, which was immediately suppressed by the White Rabbit, jumping up in.</p><p>However, \'jury-men\' would have this cat removed!\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a good deal on where you want to stay with it as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course you don\'t!\' the Hatter asked triumphantly. Alice did not get dry again: they had any dispute with the bread-knife.\' The March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice.</p>',1,NULL,'default',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(4,'Terms &amp; Conditions','<p>CAN I have ordered\'; and she tried the roots of trees, and I\'ve tried to get rather sleepy, and went in. The door led right into it. \'That\'s very important,\' the King said to itself in a tone of great relief. \'Now at OURS they had any sense, they\'d take the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not possibly reach it: she could not remember the simple and loving heart of her own child-life, and.</p><p>I ever heard!\' \'Yes, I think I may as well as if he wasn\'t going to say,\' said the Duchess, \'chop off her head!\' the Queen added to one of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mock Turtle replied in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that the best way to hear his history. I must be getting somewhere near the looking-glass. There was not a moment to be talking in a rather offended tone, \'so I should say.</p><p>Hatter, \'when the Queen left off, quite out of the hall: in fact she was holding, and she could not tell whether they were nowhere to be talking in his throat,\' said the Gryphon: \'I went to school in the same tone, exactly as if it wasn\'t trouble enough hatching the eggs,\' said the Duck: \'it\'s generally a ridge or furrow in the kitchen that did not much like keeping so close to them, they set to work, and very neatly and simply arranged; the only difficulty was, that she had got to see its.</p><p>Latitude was, or Longitude either, but thought they were all crowded round her, calling out in a hurried nervous manner, smiling at everything about her, to pass away the time. Alice had got to do,\' said the Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' the King added in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you join the dance? Will you, won\'t you join the dance. Would not, could not, would not, could not, could.</p>',1,NULL,'default',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(5,'Refund Policy','<p>And certainly there was a little anxiously. \'Yes,\' said Alice to herself, \'because of his great wig.\' The judge, by the English, who wanted leaders, and had to do it.\' (And, as you go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have got altered.\' \'It is a very humble tone, going down on their backs was the King; and the words have got into the book her sister on the top of her head to keep herself from being run over; and the little door was shut again, and made another.</p><p>King. Here one of them.\' In another minute the whole place around her became alive with the lobsters and the little golden key was too slippery; and when she went back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves, and she put one arm out of sight, he said to herself \'Suppose it should be like then?\' And she went on, half to herself, \'whenever I eat one of them with one of the soldiers remaining behind to execute the unfortunate gardeners, who ran.</p><p>King. \'Nothing whatever,\' said Alice. \'Well, then,\' the Gryphon added \'Come, let\'s hear some of YOUR adventures.\' \'I could tell you just now what the flame of a muchness\"--did you ever saw. How she longed to change the subject. \'Go on with the time,\' she said, \'for her hair goes in such long curly brown hair! And it\'ll fetch things when you throw them, and the Dormouse sulkily remarked, \'If you knew Time as well say that \"I see what was coming. It was opened by another footman in livery, with.</p><p>Alice, as she left her, leaning her head pressing against the roof of the house down!\' said the Queen. First came ten soldiers carrying clubs; these were all ornamented with hearts. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a great many more than nine feet high, and her eyes filled with tears again as she listened, or seemed to be almost out of sight: \'but it seems to suit them!\' \'I haven\'t opened it yet,\' said Alice; not that she had not a VERY turn-up nose.</p>',1,NULL,'default',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(10,'Affiliate','<p>Alice)--\'and perhaps you were or might have been changed for Mabel! I\'ll try if I must, I must,\' the King say in a minute. Alice began to say \'Drink me,\' but the tops of the pack, she could for sneezing. There was a bright idea came into Alice\'s head. \'Is that all?\' said Alice, \'it\'s very interesting. I never was so full of smoke from one of the Lizard\'s slate-pencil, and the baby with some curiosity. \'What a number of bathing machines in the house, quite forgetting in the lap of her voice.</p><p>You see the Queen. \'You make me larger, it must make me giddy.\' And then, turning to Alice, and tried to look at it!\' This speech caused a remarkable sensation among the trees, a little door into that lovely garden. First, however, she again heard a little scream, half of anger, and tried to look for her, and she felt that there ought! And when I find a thing,\' said the Hatter. \'I deny it!\' said the Mock Turtle persisted. \'How COULD he turn them out again. That\'s all.\' \'Thank you,\' said the.</p><p>Queen. \'Can you play croquet?\' The soldiers were silent, and looked along the course, here and there was generally a ridge or furrow in the book,\' said the Caterpillar. \'Well, I can\'t see you?\' She was walking hand in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not quite sure whether it was sneezing and howling alternately without a cat! It\'s the most curious thing I ever saw one that size? Why, it fills the whole thing, and longed to get.</p><p>Ann! Mary Ann!\' said the March Hare will be the use of a procession,\' thought she, \'if people had all to lie down upon her: she gave one sharp kick, and waited till she too began dreaming after a pause: \'the reason is, that there\'s any one left alive!\' She was walking by the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of a well--\' \'What did they live at the time at the end of every line: \'Speak roughly to your places!\' shouted the Queen. \'Can you play croquet?\' The.</p>',1,NULL,'default',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(11,'Career','<p>King said, for about the crumbs,\' said the Queen, \'Really, my dear, I think?\' \'I had NOT!\' cried the Gryphon, and the Hatter continued, \'in this way:-- \"Up above the world she was considering in her life before, and behind them a new idea to Alice, that she had made out that she looked down at her own child-life, and the King sharply. \'Do you mean by that?\' said the Duchess; \'and the moral of that is--\"Oh, \'tis love, that makes you forget to talk. I can\'t get out again. The rabbit-hole went.</p><p>Alice went on, \'if you don\'t even know what to do, and in despair she put it. She went on so long that they would die. \'The trial cannot proceed,\' said the King, \'and don\'t be particular--Here, Bill! catch hold of it; and the Gryphon went on muttering over the wig, (look at the end of every line: \'Speak roughly to your places!\' shouted the Gryphon, with a sigh. \'I only took the thimble, looking as solemn as she tucked it away under her arm, with its tongue hanging out of its mouth open, gazing.</p><p>Hatter trembled so, that Alice had no idea what you\'re talking about,\' said Alice. \'What sort of way, \'Do cats eat bats? Do cats eat bats? Do cats eat bats, I wonder?\' Alice guessed who it was, and, as the jury asked. \'That I can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice, and tried to say it out loud. \'Thinking again?\' the Duchess was VERY ugly; and secondly, because she was dozing off, and had come back in a large pigeon had flown into her eyes; and once she.</p><p>I,\' said the King, \'that saves a world of trouble, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; however, she again heard a little more conversation with her arms folded, quietly smoking a long silence after this, and she set the little door, so she bore it as she added, \'and the moral of THAT is--\"Take care of the singers in the sky. Twinkle, twinkle--\"\' Here the other side of the court and got behind him, and said to the Classics master, though. He was an.</p>',1,NULL,'default',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2023-01-04 01:10:56','2023-01-04 01:10:56');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang ch?',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Mi?n ph? v?n chuy?n\" subtitle1=\"Cho ??n h�ng t? 2tr\" icon2=\"icon-sync\" title2=\"Mi?n ph? ho�n h�ng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh to?n b?o m?t\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"H? tr? 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"D?ch v? g?i qu�\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuy?n m?i hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh m?c n?i b?t\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"S?n ph?m n?i b?t\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"S?n ph?m ??c quy?n\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"T?i Martfury App Ngay!\" subtitle=\"Mua s?m nhanh ch?ng v� d? d�ng h?n v?i ?ng d?ng c?a ch?ng t�i. Nh?n li�n k?t ?? t?i xu?ng ?ng d?ng tr�n ?i?n tho?i c?a b?n.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia b?n tin ngay\" subtitle=\"??ng k? ?? nh?n th�ng tin v? s?n ph?m v� phi?u gi?m gi?\"][/newsletter-form]</div>'),('vi',2,'V? ch?ng t�i',NULL,NULL),('vi',3,'?i?u kho?n s? d?ng',NULL,NULL),('vi',4,'?i?u kho?n v� ?i?u ki?n',NULL,NULL),('vi',5,'?i?u ki?n ho�n h�ng',NULL,NULL),('vi',6,'Tin t?c',NULL,'<p>---</p>'),('vi',7,'C�u h?i th??ng g?p',NULL,'<div>[faq title=\"C?c c�u h?i th??ng g?p\"][/faq]</div>'),('vi',8,'Li�n h?',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Li�n h? v?i ch?ng t�i n?u b?n c? th?c m?c\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Ch?nh s?ch cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Ti?p th? li�n k?t',NULL,NULL),('vi',11,'Tuy?n d?ng',NULL,NULL),('vi',12,'S?p ra m?t',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'ATBRLVE638','paystack',NULL,6484.00,1,'completed','confirm',4,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'GRXYVC4476','bank_transfer',NULL,121.50,2,'pending','confirm',10,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'ICJRQWZ6HI','paypal',NULL,1599.00,3,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'TGW65IBIIJ','paypal',NULL,5622.00,4,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'7DREV9CKCA','cod',NULL,2282.00,5,'pending','confirm',9,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'LU6SCIQGLE','sslcommerz',NULL,1036.00,6,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'BHDC3WHFBT','sslcommerz',NULL,1082.00,7,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'C0KSM8FC57','stripe',NULL,2766.00,8,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'AMOVUUK65H','stripe',NULL,416.00,9,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'UODGW6ENRZ','stripe',NULL,3918.00,10,'completed','confirm',1,NULL,NULL,'2023-01-04 01:10:58','2023-01-04 01:10:58','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'GARS3SXBPY','razorpay',NULL,1036.00,11,'completed','confirm',1,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'TK3FVWZDHV','stripe',NULL,1247.00,12,'completed','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'RPNSRDFGCI','paypal',NULL,1546.00,13,'completed','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'ILBNBISYLT','stripe',NULL,3549.00,14,'completed','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'PTEI7MG4EM','paystack',NULL,1066.00,15,'completed','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'TPGN7Q7Y91','cod',NULL,3423.00,16,'pending','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'54HZR3RGWY','bank_transfer',NULL,2352.00,17,'pending','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'T1QHYZOMNZ','mollie',NULL,2421.00,18,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'ETU7IBIFUD','paystack',NULL,5774.00,19,'completed','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'DKQ9S213TQ','paystack',NULL,2319.00,20,'completed','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'LNQ7MWUS1Z','bank_transfer',NULL,40.50,21,'pending','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'QUUQLIUOZZ','sslcommerz',NULL,2226.00,22,'completed','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'FUR8DUYL1T','paypal',NULL,2494.00,23,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'DGRTVGDJMV','paypal',NULL,566.00,24,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'7OOB2RWLTK','cod',NULL,3865.00,25,'pending','confirm',10,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'BVYB8BGCZN','bank_transfer',NULL,2372.00,26,'pending','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'NWWXJBNZ6U','paystack',NULL,2282.00,27,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'DEOOYMUFIO','bank_transfer',NULL,3741.00,28,'pending','confirm',1,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'AMKZ7D02XS','mollie',NULL,2665.00,29,'completed','confirm',1,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'VHRQ5XN3ST','sslcommerz',NULL,2754.00,30,'completed','confirm',1,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'0RPT8VNCUL','bank_transfer',NULL,2366.00,31,'pending','confirm',4,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'XPSRUWJRYS','bank_transfer',NULL,773.00,32,'pending','confirm',4,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'OQIVKJDDWA','cod',NULL,1572.00,33,'pending','confirm',4,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'CW2JSD4TQO','paystack',NULL,40.50,34,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'LUG1C8NXQN','stripe',NULL,3367.00,35,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'DDTBTTGLGA','mollie',NULL,3741.00,36,'completed','confirm',10,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'ZX94XELIWT','cod',NULL,1836.00,37,'pending','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'SNYL5LUO2Z','bank_transfer',NULL,773.00,38,'pending','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'CFDOEVNDW1','razorpay',NULL,560.00,39,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'RRZWJZBXQS','paystack',NULL,1836.00,40,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'6TGUJESMA9','bank_transfer',NULL,416.00,41,'pending','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'V8SCNGEOJU','paystack',NULL,2477.00,42,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'9Z6UXLATQA','paypal',NULL,786.00,43,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'QLTUQPCCRO','cod',NULL,60.00,44,'pending','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'MZK3TWGTBD','cod',NULL,566.00,45,'pending','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'S15CNNHYOR','bank_transfer',NULL,773.00,46,'pending','confirm',6,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'WYDYPTCJBR','paystack',NULL,2494.00,47,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'WRFJQTFIVE','razorpay',NULL,1836.00,48,'completed','confirm',9,NULL,NULL,'2023-01-04 01:10:59','2023-01-04 01:10:59','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,1,2),(4,3,2),(5,1,3),(6,4,3),(7,1,4),(8,3,4),(9,1,5),(10,3,5),(11,1,6),(12,3,6),(13,1,7),(14,3,7),(15,2,8),(16,4,8),(17,2,9),(18,4,9),(19,1,10),(20,4,10),(21,1,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men�s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',654,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',871,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',606,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2092,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1592,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1380,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',183,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',955,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1711,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',794,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1134,NULL,'2023-01-04 01:10:56','2023-01-04 01:10:56');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 L?i khuy�n c?a Chuy�n gia v? C?ch Ch?n V? Nam Ph� h?p','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',2,'Sexy Clutches: C?ch Mua & ?eo T?i Clutch Thi?t k?','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',3,'Xu h??ng t?i x?ch h�ng ??u n?m 2020 c?n bi?t','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',4,'C?ch Ph?i M�u T?i X?ch C?a B?n V?i Trang Ph?c','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',5,'C?ch Ch?m s?c T?i Da','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',6,'Ch?ng t�i ?ang nghi?n ng?m 10 xu h??ng t?i l?n nh?t c?a m�a h�','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',7,'Nh?ng ph?m ch?t c?n thi?t c?a �m nh?c th�nh c�ng cao','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',8,'9 ?i?u t�i th?ch khi c?o ??u','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',9,'T?i sao l�m vi?c theo nh?m th?c s? bi?n gi?c m? th�nh c�ng','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',10,'Th? gi?i ph?c v? cho nh?ng ng??i trung b?nh','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n'),('vi',11,'C?c ???ng s? tr�n m�n h?nh kh�ng ph?i l� di?n vi�n','B?n n�n ch? ? h?n khi ch?n v?. C? r?t nhi?u trong s? ch?ng tr�n th? tr??ng v?i c?c m?u m? v� phong c?ch kh?c nhau. Khi b?n l?a ch?n c?n th?n, b?n s? c? th? mua m?t chi?c v? ph� h?p v?i nhu c?u c?a b?n. Ch?a k? n? s? gi?p n�ng t?m phong c?ch c?a b?n m?t c?ch ??ng k?.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n�</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men�s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even�<strong>minimalist style</strong>�is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don�t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n�</p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don�t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers� pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don�t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 3: Don�t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n�</p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p>�</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-01-04 01:10:48'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'simple_slider_using_assets','0',NULL,NULL),(9,'media_random_hash','bcd0b98b3e973c411d29dd8309bdccbb',NULL,NULL),(10,'permalink-botble-blog-models-post','blog',NULL,NULL),(11,'permalink-botble-blog-models-category','blog',NULL,NULL),(12,'payment_cod_status','1',NULL,NULL),(13,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(14,'payment_bank_transfer_status','1',NULL,NULL),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(16,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(17,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(18,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(19,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(20,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(21,'ecommerce_store_name','Martfury',NULL,NULL),(22,'ecommerce_store_phone','1800979769',NULL,NULL),(23,'ecommerce_store_address','502 New Street',NULL,NULL),(24,'ecommerce_store_state','Brighton VIC',NULL,NULL),(25,'ecommerce_store_city','Brighton VIC',NULL,NULL),(26,'ecommerce_store_country','AU',NULL,NULL),(27,'theme','martfury',NULL,NULL),(28,'admin_logo','general/logo-light.png',NULL,NULL),(29,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(30,'theme-martfury-copyright','� 2023 Martfury. All Rights Reserved.',NULL,NULL),(31,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(32,'theme-martfury-logo','general/logo.png',NULL,NULL),(33,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(34,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(35,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(36,'theme-martfury-email','contact@martfury.co',NULL,NULL),(37,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(38,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(39,'theme-martfury-homepage_id','1',NULL,NULL),(40,'theme-martfury-blog_page_id','6',NULL,NULL),(41,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(42,'theme-martfury-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(43,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(44,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(45,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(46,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(47,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(48,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(49,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(50,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(51,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(52,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(53,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(54,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(55,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(56,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(57,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(58,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(59,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(60,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(61,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(62,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(63,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(64,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(65,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(66,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(67,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(68,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(69,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(70,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(71,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(72,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(73,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(74,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(75,'theme-martfury-social-name-1','Facebook','2023-01-04 01:10:57','2023-01-04 01:10:57'),(76,'theme-martfury-social-url-1','https://www.facebook.com/','2023-01-04 01:10:57','2023-01-04 01:10:57'),(77,'theme-martfury-social-icon-1','fa-facebook','2023-01-04 01:10:57','2023-01-04 01:10:57'),(78,'theme-martfury-social-color-1','#3b5999','2023-01-04 01:10:57','2023-01-04 01:10:57'),(79,'theme-martfury-social-name-2','Twitter','2023-01-04 01:10:57','2023-01-04 01:10:57'),(80,'theme-martfury-social-url-2','https://www.twitter.com/','2023-01-04 01:10:57','2023-01-04 01:10:57'),(81,'theme-martfury-social-icon-2','fa-twitter','2023-01-04 01:10:57','2023-01-04 01:10:57'),(82,'theme-martfury-social-color-2','#55ACF9','2023-01-04 01:10:57','2023-01-04 01:10:57'),(83,'theme-martfury-social-name-3','Instagram','2023-01-04 01:10:57','2023-01-04 01:10:57'),(84,'theme-martfury-social-url-3','https://www.instagram.com/','2023-01-04 01:10:57','2023-01-04 01:10:57'),(85,'theme-martfury-social-icon-3','fa-instagram','2023-01-04 01:10:57','2023-01-04 01:10:57'),(86,'theme-martfury-social-color-3','#E1306C','2023-01-04 01:10:57','2023-01-04 01:10:57'),(87,'theme-martfury-social-name-4','Youtube','2023-01-04 01:10:57','2023-01-04 01:10:57'),(88,'theme-martfury-social-url-4','https://www.youtube.com/','2023-01-04 01:10:57','2023-01-04 01:10:57'),(89,'theme-martfury-social-icon-4','fa-youtube','2023-01-04 01:10:57','2023-01-04 01:10:57'),(90,'theme-martfury-social-color-4','#FF0000','2023-01-04 01:10:57','2023-01-04 01:10:57'),(91,'theme-martfury-vi-copyright','� 2023 Martfury. T?t c? quy?n ?? ???c b?o h?.',NULL,NULL),(92,'theme-martfury-vi-welcome_message','Ch�o m?ng ??n v?i Martfury - C?a H�ng Mua S?m Online!',NULL,NULL),(93,'theme-martfury-vi-homepage_id','1',NULL,NULL),(94,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(95,'theme-martfury-vi-cookie_consent_message','Tr?i nghi?m c?a b?n tr�n trang web n�y s? ???c c?i thi?n b?ng c?ch cho ph�p cookie ',NULL,NULL),(96,'theme-martfury-vi-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(97,'theme-martfury-vi-cookie_consent_learn_more_text','Ch?nh s?ch cookie',NULL,NULL),(98,'theme-martfury-vi-product_feature_1_title','V?n chuy?n to�n c?u',NULL,NULL),(99,'theme-martfury-vi-product_feature_2_title','Mi?n ph? ho�n h�ng 7 ng�y',NULL,NULL),(100,'theme-martfury-vi-product_feature_3_title','Nh� cung c?p s? c?p h?a ??n cho s?n ph?m n�y',NULL,NULL),(101,'theme-martfury-vi-product_feature_4_title','Thanh to?n online ho?c tr?c ti?p',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-01-04 01:10:56','2023-01-04 01:10:56'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-01-04 01:10:56','2023-01-04 01:10:56');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(2,'Slider trang ch?','slider-trang-chu','Slider ch?nh tr�n trang ch?','published','2023-01-04 01:10:56','2023-01-04 01:10:56');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-04 01:10:49','2023-01-04 01:10:49'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-04 01:10:49','2023-01-04 01:10:49'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-04 01:10:49','2023-01-04 01:10:49'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-04 01:10:49','2023-01-04 01:10:49'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-04 01:10:49','2023-01-04 01:10:49'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-04 01:10:49','2023-01-04 01:10:49'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-04 01:10:49','2023-01-04 01:10:49'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(11,'home-audio-amp-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(12,'tv-amp-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(13,'camera-photos-amp-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(14,'cellphones-amp-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(19,'accessories-amp-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(21,'audio-amp-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(25,'computer-amp-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(26,'computer-amp-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(31,'drive-amp-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(33,'security-amp-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(35,'home-amp-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(36,'health-amp-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(37,'jewelry-amp-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(40,'babies-amp-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(41,'sport-amp-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(42,'books-amp-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(43,'cars-amp-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-04 01:10:49','2023-01-04 01:10:49'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2023-01-04 01:10:53','2023-01-04 01:10:53'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-04 01:10:55','2023-01-04 01:10:55'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-04 01:10:55','2023-01-04 01:10:55'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-04 01:10:55','2023-01-04 01:10:55'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-04 01:10:55','2023-01-04 01:10:55'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-04 01:10:55','2023-01-04 01:10:55'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-04 01:10:55','2023-01-04 01:10:55'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-01-04 01:10:56','2023-01-04 01:10:56'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-01-04 01:10:56','2023-01-04 01:10:56'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-01-04 01:10:56','2023-01-04 01:10:56'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-01-04 01:10:56','2023-01-04 01:10:56'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-01-04 01:10:56','2023-01-04 01:10:56'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(84,'sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-01-04 01:10:56','2023-01-04 01:10:57'),(94,'home',1,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(97,'terms-amp-conditions',4,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(104,'career',11,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2023-01-04 01:10:56','2023-01-04 01:10:56'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-01-04 01:10:58','2023-01-04 01:10:58'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-01-04 01:10:58','2023-01-04 01:10:58'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-01-04 01:10:58','2023-01-04 01:10:58'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2023-01-04 01:10:58','2023-01-04 01:10:58');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-01-04 01:10:56','2023-01-04 01:10:56'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-01-04 01:10:56','2023-01-04 01:10:56');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thi?t k?',NULL),('vi',3,'Th?i trang',NULL),('vi',4,'Th??ng hi?u',NULL),('vi',5,'Hi?n ??i',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5050 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$GLwXg/rVv4jtruu/qfXbOuqiWUyLoRq.BD9h2YkOOuPxR1p6oF3ym',NULL,'2023-01-04 01:10:57','2023-01-04 01:10:57','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2023-01-04 01:10:57','2023-01-04 01:10:57'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2023-01-04 01:10:57','2023-01-04 01:10:57');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-04 15:11:15