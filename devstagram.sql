-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: devstagram
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_post_id_foreign` (`post_id`),
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Earum libero quis aspernatur voluptates porro sint tenetur sapiente unde ipsam.',10,5,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(2,'Minima illum aut quae at voluptate aperiam pariatur voluptatum culpa.',4,94,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(3,'Tempore facilis accusantium labore facilis et consequuntur est nemo odio.',8,21,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(4,'Maxime voluptate iusto id quaerat quisquam in hic tenetur repellat et dolores et blanditiis et at.',2,52,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(5,'Esse sint excepturi sunt ut itaque dignissimos qui unde sint.',5,33,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(7,'Illo voluptatibus eveniet consequatur quod ea amet quam quae numquam exercitationem reiciendis voluptatem quisquam soluta.',2,27,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(9,'Pariatur nulla dicta quasi et sit qui quas ipsam nisi voluptas est.',8,87,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(10,'Nemo exercitationem non saepe eos neque ut sit vel et quos suscipit.',2,51,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(11,'Inventore doloremque aut sint suscipit aut rerum voluptatem aut.',7,53,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(14,'Veritatis omnis laudantium aut ab molestiae voluptates autem et quia cupiditate animi itaque temporibus.',5,100,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(15,'Velit quam corrupti quam vitae culpa expedita necessitatibus ad dicta eum consequuntur ipsa.',3,75,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(16,'Quo ratione aspernatur laborum excepturi quis voluptas ut ad facilis officiis et aliquam.',10,43,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(17,'A nostrum sit excepturi in a illo sint voluptatem.',5,39,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(18,'Quam a facilis placeat praesentium voluptatem quia cumque velit eius nemo consequatur facilis nobis id asperiores.',7,9,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(19,'Accusantium aut aut sit alias voluptatum dolorem cupiditate aut doloremque.',2,87,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(20,'Saepe labore magnam voluptas rerum iusto voluptates nihil et rerum dignissimos nobis id delectus et cupiditate exercitationem.',8,36,'2023-07-20 14:44:12','2023-07-20 14:44:12');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `follower_id` bigint unsigned NOT NULL,
  `followed_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `follows_follower_id_followed_id_unique` (`follower_id`,`followed_id`),
  KEY `follows_followed_id_foreign` (`followed_id`),
  CONSTRAINT `follows_followed_id_foreign` FOREIGN KEY (`followed_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `follows_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `check_follower_followed_different` CHECK ((`follower_id` <> `followed_id`))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1,3,6,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(3,8,2,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(4,2,5,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(7,4,9,'2023-07-20 14:44:13','2023-07-20 14:44:13'),(8,6,2,'2023-07-20 14:44:13','2023-07-20 14:44:13'),(9,10,7,'2023-07-20 14:44:13','2023-07-20 14:44:13'),(10,3,2,'2023-07-20 14:44:13','2023-07-20 14:44:13');
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `likes_user_id_post_id_unique` (`user_id`,`post_id`),
  KEY `likes_post_id_foreign` (`post_id`),
  CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,4,17,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(2,6,56,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(3,8,96,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(5,5,63,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(7,3,29,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(8,9,33,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(9,7,21,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(10,10,73,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(11,4,49,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(12,2,76,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(13,4,58,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(14,10,49,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(15,5,14,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(17,3,82,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(18,9,61,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(19,7,29,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(20,2,74,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(22,10,79,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(23,9,88,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(25,10,80,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(26,7,43,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(27,5,84,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(28,2,2,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(29,6,45,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(30,5,86,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(31,3,41,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(33,10,48,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(36,4,75,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(37,10,70,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(38,4,61,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(39,6,60,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(41,10,43,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(42,7,41,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(43,4,85,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(44,6,29,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(45,8,73,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(46,5,33,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(47,10,100,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(48,10,84,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(49,9,73,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(50,4,81,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(51,3,80,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(52,7,39,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(53,10,38,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(54,6,73,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(55,4,47,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(56,5,55,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(57,8,87,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(58,6,93,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(59,10,15,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(60,2,93,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(61,9,87,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(62,8,14,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(65,6,85,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(67,5,94,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(68,2,5,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(69,6,72,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(72,8,76,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(73,2,75,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(74,10,13,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(76,4,29,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(77,8,18,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(78,9,66,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(79,3,7,'2023-07-20 14:44:12','2023-07-20 14:44:12'),(80,9,94,'2023-07-20 14:44:12','2023-07-20 14:44:12');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (296,'2014_10_12_000000_create_users_table',1),(297,'2014_10_12_100000_create_password_reset_tokens_table',1),(298,'2019_08_19_000000_create_failed_jobs_table',1),(299,'2019_12_14_000001_create_personal_access_tokens_table',1),(300,'2023_07_08_085851_add_username_column_to_users_table',1),(301,'2023_07_12_233343_create_posts_table',1),(302,'2023_07_16_165254_create_comments_table',1),(303,'2023_07_16_173444_create_likes_table',1),(304,'2023_07_16_212442_create_follows_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,'Iste minus dolor molestiae quis natus sequi.','Sapiente non consequatur nostrum fugiat nobis unde provident labore et soluta aliquam qui magni sed esse non quia quo aut beatae ipsa sunt sint eligendi ab quam dolorum.','sample-images/6.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(3,'Quae rerum consequatur amet nisi minima.','Enim inventore ipsum quia sunt corrupti sunt cum non modi quos necessitatibus tenetur voluptas et ullam repellendus libero asperiores non quod ex numquam dolorem repellat.','sample-images/18.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(4,'Non tenetur quaerat laudantium assumenda dolore accusantium.','Officiis veniam vitae laborum perferendis aut et molestiae nostrum quod est aut et odio odio velit vitae at aliquam praesentium qui ex dolorem nulla.','sample-images/11.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(5,'Voluptatem aut enim itaque dicta laboriosam.','Inventore voluptatem sunt dolores deleniti eos quis omnis qui sed magni aliquid accusantium veritatis aut possimus consectetur aut sunt molestiae accusamus et assumenda quam.','sample-images/19.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(6,'Reprehenderit eligendi dolores aut.','Nisi corporis dolorem quas voluptatem sint eligendi iure deserunt rerum magnam repellat repudiandae reprehenderit possimus maxime.','sample-images/20.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(7,'Reiciendis odio non eos ut perspiciatis omnis.','Assumenda at qui expedita minus ut et sed aut magni laboriosam repellat ipsa omnis delectus consequatur voluptatem voluptatem asperiores voluptatem.','sample-images/13.jpg',9,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(8,'Animi accusantium impedit quae et sunt nesciunt.','Laborum provident nesciunt praesentium ipsam qui quam maxime sit nulla quibusdam et mollitia architecto maiores pariatur accusamus et in quam dignissimos porro consectetur qui.','sample-images/7.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(9,'Atque vero laudantium a voluptas.','Qui sed quaerat voluptas fugiat et maiores doloremque illo est deserunt voluptatem consequatur nisi vel voluptatum sed expedita quo non quae recusandae nemo molestias quis non minus.','sample-images/19.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(10,'Expedita harum odit aspernatur ad voluptatem inventore.','Consequatur non omnis nemo minus recusandae sit eveniet quia velit sit velit nihil dolores expedita et reprehenderit et aut qui.','sample-images/7.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(11,'Nam dolorem accusamus nobis illo tempore eos.','Nam voluptas non beatae libero officiis et quis praesentium qui numquam rem qui.','sample-images/11.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(12,'Est id tempore ut occaecati optio sit.','Eos sit dolores sequi sed earum aspernatur et inventore fugiat debitis aut suscipit eos illum repellat quibusdam amet perferendis laborum similique adipisci optio voluptatem dolorem ut sed natus voluptas.','sample-images/9.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(13,'Error quaerat animi minima alias animi.','Et nam quaerat mollitia vel est a voluptas ipsa ut harum ut ea fugit molestiae quasi minima esse temporibus reprehenderit veritatis enim soluta consectetur labore labore quo.','sample-images/18.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(14,'Inventore omnis aperiam aspernatur.','Cum eveniet autem quibusdam quia ea aut iste at qui illum ut est est ratione libero iste amet aperiam.','sample-images/15.jpg',9,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(15,'Maxime aspernatur optio iste.','Adipisci praesentium et fugit minus ad non autem soluta voluptatum dolor suscipit dignissimos voluptate fugit quod odio recusandae ut minima velit.','sample-images/11.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(17,'Quidem mollitia deleniti incidunt similique molestiae.','Iste quia et et dolorem magnam non sint est earum nam alias possimus qui nisi tenetur nemo amet aut laboriosam perspiciatis voluptatum.','sample-images/13.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(18,'Velit incidunt porro sed ad suscipit voluptate.','Sint dolores sunt aut eius dolor quas dolores enim labore voluptatum dignissimos repudiandae est explicabo et temporibus consectetur autem recusandae ipsa sint et dolorem sunt.','sample-images/17.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(19,'Qui aut minima explicabo.','Eum et odio est non odio quis impedit animi ratione quo consequatur qui autem dolorem molestiae dicta sit odit deleniti sed sequi excepturi occaecati vel possimus sunt.','sample-images/12.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(20,'Aut dolor vero maxime consequuntur corporis.','Quis rerum et optio porro eum ut voluptate officiis id assumenda voluptatem eaque perspiciatis tempora praesentium quisquam ut et perspiciatis eligendi error voluptas earum voluptas voluptas.','sample-images/12.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(21,'Dolores iure repudiandae distinctio ex fugit et ea.','Et est voluptatem nesciunt ut cumque odio eligendi vel enim eaque suscipit omnis aliquam nulla molestiae.','sample-images/3.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(22,'Saepe nihil quia cumque.','Adipisci perferendis optio distinctio voluptatibus dolore totam et cupiditate molestiae est sapiente qui enim fuga qui molestiae neque commodi dolorum rerum.','sample-images/20.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(23,'Aut incidunt ex facere iste cupiditate eligendi.','Qui dignissimos cumque similique eos et consectetur provident et perspiciatis optio similique necessitatibus architecto id quo eveniet quis vel illo nesciunt illo assumenda sed voluptates omnis.','sample-images/17.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(24,'Inventore porro illo blanditiis mollitia illo aliquam.','Est porro aspernatur debitis dolorem atque tenetur expedita quisquam repudiandae quia voluptatem alias soluta dicta et nostrum esse cum.','sample-images/2.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(25,'Consequuntur nam id minima perspiciatis et.','Exercitationem accusantium eos eligendi quis id molestias et quo aliquam id neque necessitatibus doloremque temporibus velit dolore blanditiis porro dolorem quis error quia quae aut ea.','sample-images/15.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(26,'Aut corrupti tenetur et voluptatem quas ipsum.','Quisquam sed est quo a in beatae ratione tempore impedit ut aliquam incidunt error vel rerum perspiciatis similique tempora cupiditate hic cupiditate cum sint voluptate in.','sample-images/8.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(27,'Qui repudiandae facere quo inventore dolor dolores.','Cum sit voluptas sint exercitationem officia eum hic voluptatem est omnis ipsum aut sunt voluptatem eos hic distinctio laborum accusantium blanditiis culpa voluptate.','sample-images/16.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(28,'Accusamus impedit deleniti autem at.','Ea consequatur sit iusto nihil consequatur enim temporibus eos sunt voluptatibus aliquid possimus sint consequatur animi sapiente et rerum vel voluptatem.','sample-images/16.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(29,'Qui repellat impedit non.','Minima sed explicabo occaecati illum quas quia rerum nihil reiciendis qui nam neque perspiciatis in molestiae rem facere odio fugiat reprehenderit quo ratione delectus quis praesentium.','sample-images/16.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(30,'Voluptas assumenda consequatur sit in dolor.','Ducimus enim voluptatem sequi velit et ut in minus nobis earum animi ut.','sample-images/2.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(31,'Quibusdam quia soluta provident suscipit.','Ut numquam laboriosam est accusantium amet voluptate maiores aut neque voluptatem ad magni odit ullam et quos qui ullam reiciendis accusamus et totam consequatur dicta voluptatem.','sample-images/8.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(32,'Pariatur modi voluptas sequi rerum sint error.','Sed aut repellendus et perspiciatis necessitatibus quas et error pariatur quisquam omnis rem pariatur rem veniam dolor.','sample-images/10.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(33,'Velit nesciunt est sed aut vero.','Omnis laborum hic quod sint qui laudantium molestias et voluptatem et est occaecati quod quis qui quam similique neque.','sample-images/20.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(35,'Voluptatibus dolores quia similique eveniet unde et.','Tempora aut enim aut eveniet ducimus maxime sunt quam quia excepturi dolore sit neque occaecati unde et harum.','sample-images/18.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(36,'Quis consequatur assumenda eius.','Dignissimos aliquam quia ab dolorem sit et voluptas adipisci veniam cumque asperiores facere ratione qui facere voluptatem eius exercitationem omnis voluptatum repellat fugit est officiis perspiciatis soluta exercitationem.','sample-images/7.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(37,'Quisquam inventore unde et ullam est.','Repudiandae accusantium vero nam dicta nemo placeat dolor quia sed est et et nesciunt.','sample-images/18.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(38,'Eius ipsum quos ratione quam.','Eaque maxime sed repudiandae placeat ratione reprehenderit voluptatem voluptas aut voluptates laborum quia dicta temporibus minus nostrum expedita.','sample-images/16.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(39,'Accusantium et ut cupiditate voluptatem quo.','Nobis amet repellat qui excepturi voluptatem dolorem minus tempore iusto et est optio et eum.','sample-images/16.jpg',9,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(40,'Aut soluta ratione porro numquam eveniet.','Voluptatem architecto non aut laborum esse harum rerum dicta perspiciatis cupiditate quia odit harum nam voluptatem.','sample-images/5.jpg',9,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(41,'Dolore ipsum ut dolorem.','Voluptatem quisquam voluptatem et possimus non consectetur velit deserunt voluptas eveniet laborum deserunt ut harum pariatur occaecati placeat harum.','sample-images/7.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(42,'Est assumenda soluta nihil.','Id pariatur et aliquid dolorum quia sit quae consequatur at aliquid laboriosam voluptas voluptatum ut pariatur repellendus non dicta voluptatem voluptatem rerum repudiandae magnam voluptas.','sample-images/10.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(43,'Deleniti expedita eos et et ratione rem voluptatem.','Necessitatibus provident quia voluptates voluptatem eligendi sed alias sed hic ea ut accusantium placeat quia ut quia aspernatur non mollitia autem ut consequatur porro quaerat.','sample-images/3.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(45,'Atque ut repellat nihil.','Optio vitae quos placeat fugit nihil autem velit quas deleniti animi facere minus eos ex.','sample-images/11.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(46,'Fugit autem et similique vitae.','Adipisci tempora a et minima repellat quae non beatae dolorem quia id in similique excepturi beatae deserunt doloremque.','sample-images/1.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(47,'Eaque est minima laboriosam qui optio.','Vitae repudiandae fugiat fugit pariatur odio qui quia cumque magni commodi rerum ab aut placeat adipisci at reiciendis eum assumenda.','sample-images/10.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(48,'Doloribus perferendis et et qui.','In aut et aperiam et et sed quas est voluptatem est rem illum dolore aut sint quaerat qui mollitia.','sample-images/14.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(49,'At similique occaecati et sit.','Magni in tenetur quia mollitia ea consequuntur similique corrupti itaque ipsa expedita eligendi.','sample-images/11.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(50,'Non voluptas quis nihil.','Est provident a doloribus alias odio facere doloremque voluptas nemo rerum ducimus neque error in a consequatur eum sed totam quae alias et.','sample-images/18.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(51,'Excepturi est impedit quia dolorem nulla qui.','Voluptatem provident autem quia ducimus facere quia et numquam qui cupiditate fugit unde dolor sunt.','sample-images/4.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(52,'Quibusdam explicabo aliquid quo non sunt.','Dolorem saepe consequatur expedita exercitationem ea eum aut voluptas et dolores in nostrum.','sample-images/4.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(53,'Aut quos doloribus iste.','Nisi enim quia porro possimus doloremque minus ut odit libero praesentium soluta aliquid beatae blanditiis adipisci atque qui rerum consequuntur error vel ea consequatur dolor natus molestias quisquam.','sample-images/7.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(54,'Dolores deleniti est natus.','Id aut tenetur eligendi reprehenderit amet dolores eveniet debitis ut dolor voluptatibus asperiores neque exercitationem enim inventore.','sample-images/3.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(55,'Quos sit sequi odit officia.','Consequatur similique officiis officiis quam repellat tempora nam quos repellat iusto repellat in optio non iusto.','sample-images/10.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(56,'Dolores facilis sit cumque dolor sit voluptatem.','Doloremque libero qui et autem reiciendis porro numquam excepturi quos libero officiis et ut.','sample-images/7.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(57,'Voluptates autem suscipit consequatur.','Ut eaque omnis et possimus quasi molestiae officiis porro rem consequatur quaerat deserunt natus nesciunt ut libero rerum quia ab voluptatem molestias iusto repellat beatae.','sample-images/16.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(58,'Sunt distinctio tempora est inventore neque.','Et aliquam deserunt sit nobis voluptatum quidem quia nihil ipsa corrupti debitis unde recusandae nihil quo neque ea sint asperiores asperiores.','sample-images/5.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(59,'Debitis est et et ut.','Recusandae et vero aut porro ea perspiciatis et odit est voluptatibus impedit impedit temporibus numquam sed dolor.','sample-images/13.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(60,'Quia dolorum deserunt ipsa et et.','Dicta sunt quibusdam eveniet maiores eum ut necessitatibus atque est aut architecto dolorum ut.','sample-images/1.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(61,'Quis culpa corporis aut et quia.','Velit optio incidunt et eum sit voluptatem et sed in et cumque et vel et provident quidem facere nulla est minus.','sample-images/10.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(62,'Amet pariatur fugiat alias.','Et sunt animi aut repudiandae quidem totam est alias doloribus consequatur dolor molestias nihil culpa nihil.','sample-images/1.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(63,'Excepturi nisi inventore magni et eius.','Ad ipsam pariatur consequatur consequatur expedita vitae consequatur quas voluptates necessitatibus eos temporibus veniam aliquam.','sample-images/4.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(66,'Reprehenderit beatae sed temporibus et natus.','Voluptatem dicta natus itaque in ipsa qui unde ut quaerat omnis qui sit dicta ut tenetur rem corporis ut dolorum qui.','sample-images/14.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(67,'Reiciendis voluptatum ab quam.','Suscipit veritatis quis nisi quas nobis consectetur numquam quam quam consequuntur iusto minus deserunt quo consequatur id eos accusantium in soluta optio est eligendi iusto eveniet omnis.','sample-images/9.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(68,'Modi porro doloribus sunt aperiam velit ad rerum.','Recusandae molestiae rerum sed consequatur aperiam voluptatem maxime est blanditiis sit magnam repudiandae natus necessitatibus incidunt.','sample-images/16.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(69,'Ut quae facere voluptates iste aliquid recusandae.','Atque mollitia odit corporis ipsam delectus asperiores rerum accusamus aut eos est maxime veritatis consequatur architecto vel corrupti amet consequuntur est nulla qui quia asperiores.','sample-images/10.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(70,'Ab hic dolor laborum.','A rerum nulla nobis incidunt consectetur possimus necessitatibus non autem illum ex fuga fuga atque omnis possimus doloremque consectetur adipisci.','sample-images/11.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(72,'Modi sunt dolorum sapiente necessitatibus consequatur repudiandae.','Eos quo optio iste cum est accusantium consequuntur consectetur et et sit facilis sit quo quasi voluptatem.','sample-images/15.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(73,'Eveniet ratione molestiae et assumenda nesciunt maiores.','Consequatur excepturi harum at vitae est consequatur cumque qui assumenda earum facilis exercitationem quisquam officia asperiores et aliquam voluptatem.','sample-images/8.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(74,'Velit at qui tempore et vero facere.','Libero molestiae necessitatibus accusantium minima amet dolorem quia illo nobis facere deleniti temporibus.','sample-images/20.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(75,'Eum sequi temporibus voluptatem ipsam commodi.','Harum voluptatem maiores ut corrupti quas corrupti ex ad molestiae et mollitia doloribus.','sample-images/17.jpg',9,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(76,'Exercitationem et aliquid at nihil deleniti.','Commodi modi eum sed quam a dolorem iure rerum illo delectus veniam magnam id consequatur asperiores non unde qui alias est voluptate nisi porro dicta quia quia eveniet.','sample-images/10.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(77,'Sequi illo similique quibusdam.','Labore facere nostrum hic debitis blanditiis sapiente neque error ut est et ipsam veritatis optio quis unde aut inventore eos.','sample-images/12.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(78,'Itaque hic et omnis ipsa sint qui.','Quam vel adipisci quis ab eaque eius quos suscipit eum et aut ipsam qui aut occaecati est enim maxime.','sample-images/6.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(79,'Ex est possimus vitae optio.','Maiores est eum delectus rerum commodi consectetur nihil adipisci rerum voluptatem eveniet repellat sunt consectetur beatae voluptatibus qui cumque quia provident nisi voluptas eum qui quis.','sample-images/20.jpg',9,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(80,'Eos officiis aliquid sunt.','Praesentium quo error voluptas est repellendus ducimus magni occaecati ullam nisi natus quidem sapiente est numquam magni dolor eum nam voluptatibus suscipit tempora pariatur aut est quam.','sample-images/14.jpg',9,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(81,'Qui dicta ipsa ipsam unde.','Labore deleniti est corporis aut nam laborum veritatis enim eaque aut laudantium ullam iste nisi perspiciatis repellat cum nihil.','sample-images/4.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(82,'Nam sunt aut vel consequatur animi.','Debitis quo numquam nemo minima praesentium ducimus aspernatur sit sint voluptates laudantium alias magni.','sample-images/5.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(83,'Molestiae aut beatae libero cumque delectus.','Quia et enim cumque distinctio magnam suscipit omnis excepturi voluptatem in consequatur possimus sapiente modi nemo omnis quo accusantium.','sample-images/15.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(84,'Veniam et enim sapiente accusantium aliquid.','Cumque voluptatem non atque assumenda unde expedita tenetur cumque odit qui velit nesciunt qui atque est labore itaque laborum sit enim aut molestiae.','sample-images/17.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(85,'Quam nulla consequatur dolores officia.','Nulla delectus aspernatur mollitia non et similique nobis quo voluptatem deleniti vero dolores.','sample-images/18.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(86,'Qui sed cupiditate qui quos.','Sequi quisquam eos et vel nam sint assumenda et est aut unde perspiciatis nemo natus quis rerum quia itaque nihil voluptatibus sapiente nihil odit praesentium deleniti.','sample-images/9.jpg',9,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(87,'Deleniti dolorem vero cum autem unde.','Cumque ut maiores reiciendis et debitis fugit nemo quidem optio rerum recusandae tempore et enim.','sample-images/3.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(88,'Sunt tempore sint ut omnis et.','Sed blanditiis veritatis animi rerum in expedita non non debitis ea nostrum repellat quia.','sample-images/8.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(89,'Id aspernatur quo animi sed aut.','Ab a maiores vel tempore beatae officiis iure eos vel cumque neque deleniti voluptatem quibusdam aut omnis tempore beatae non quo explicabo numquam molestias voluptas dolorem repudiandae ratione est.','sample-images/6.jpg',6,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(90,'Architecto voluptatibus quis voluptas aut.','Unde unde enim nihil similique est eum et hic id voluptas est eum ea fugiat iusto optio eos molestiae.','sample-images/5.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(91,'Fugit ut velit magnam quo ut.','Animi eligendi veniam voluptatum aperiam ad et quia assumenda ut officia sit voluptate dolorem et hic eum libero veritatis iste eum corporis illum accusantium et voluptatem est deleniti.','sample-images/16.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(92,'Tempore sit vitae nihil nemo consectetur.','Fugiat odit possimus explicabo aut ducimus aperiam aut voluptates ullam sit ut quas sit rerum unde maxime nihil illo minima asperiores porro accusamus odio.','sample-images/12.jpg',3,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(93,'Autem nemo aspernatur ducimus enim.','Enim sed odit doloremque iure animi repudiandae porro nulla dolores corporis exercitationem porro dolor aut optio ipsum et quia et et.','sample-images/3.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(94,'Est tempore nesciunt tempore.','Consequuntur in ad voluptatem hic officia enim est animi incidunt et cum voluptatum voluptas eos sit qui architecto qui.','sample-images/18.jpg',8,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(95,'Commodi omnis eum dolor.','Eos ducimus dolor officia in vero ipsam sed eveniet est architecto in et dolore illo qui est veritatis distinctio dignissimos incidunt doloribus fuga qui officia.','sample-images/9.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(96,'Et suscipit aut at.','Quia ducimus id maiores assumenda est est fugiat quisquam libero quo alias laudantium voluptatum neque corporis tempora voluptates animi provident deserunt repudiandae soluta.','sample-images/20.jpg',2,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(97,'Hic ex quo ipsa in sit.','Tenetur nobis voluptates ut consequuntur molestias magni laborum non provident rerum enim voluptatem eveniet nulla voluptas omnis.','sample-images/13.jpg',4,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(99,'Sequi aut eligendi ullam rerum.','Omnis minus quia itaque cupiditate voluptatem architecto earum repellendus est tenetur eum ipsum suscipit quaerat laborum eum nemo voluptate aut est qui sint deserunt sint nam earum mollitia.','sample-images/14.jpg',7,'2023-07-20 14:44:11','2023-07-20 14:44:11'),(100,'Consectetur ipsa voluptate voluptatum ducimus.','Voluptas et quos quia aut ab ipsum saepe ullam nemo in explicabo eos eos magnam corrupti nisi enim ex laborum magni pariatur.','sample-images/8.jpg',5,'2023-07-20 14:44:11','2023-07-20 14:44:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Jordy Nienow','von.rogers@example.net','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/7.jpg','1Dc6v3XFwh','2023-07-20 14:44:11','2023-07-20 14:44:11','zaltenwerth'),(3,'Herminio Schulist','gusikowski.ora@example.org','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/18.jpg','ExJrt2Zu4NXxmzG6dyPN1s34VbGanAwRNMN4W0WpRFSxltsIy2owJjK1GRjF','2023-07-20 14:44:11','2023-07-20 14:44:11','stamm.dax'),(4,'Prof. Regan Dach II','goodwin.lela@example.net','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/14.jpg','x3UF9kUVQU','2023-07-20 14:44:11','2023-07-20 14:44:11','hillard.rowe'),(5,'Deon Conn','rudy.ortiz@example.org','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/11.jpg','DYwyp3Vrf5','2023-07-20 14:44:11','2023-07-20 14:44:11','jeanie.feil'),(6,'Margot Gleichner Sr.','rashad64@example.org','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/15.jpg','ldcY288uYI9XpBSJlFfZlg5gwUdBkmRtax99dud9pFPE4UcWkSnHFTroziY6','2023-07-20 14:44:11','2023-07-20 14:44:11','ywelch'),(7,'Dr. Lamont Kulas PhD','freeda.schultz@example.net','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/19.jpg','p6fp855MBD','2023-07-20 14:44:11','2023-07-20 14:44:11','rowe.raphael'),(8,'Loraine Bradtke','bode.kendra@example.com','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/9.jpg','mYKFNq0cD9','2023-07-20 14:44:11','2023-07-20 14:44:11','okon.evelyn'),(9,'Dr. Nikolas Towne','bbarrows@example.com','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/1.jpg','HxOCFqfV1D','2023-07-20 14:44:11','2023-07-20 14:44:11','ryder.abbott'),(10,'Mr. Marlon Braun MD','jaylin.reilly@example.com','2023-07-20 14:44:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','/sample-images/1.jpg','8OBXvhyghI','2023-07-20 14:44:11','2023-07-20 14:44:11','kozey.wellington'),(14,'nuevo','nuevo@mail.com',NULL,'$2y$10$OZ3zutydZCxil1/9AEIvEuh76D4aSD.gyTwJSsNwfy9N4onvzKkBq','8c361c8e-e0e5-4b1c-9cff-5a00dee3829b.jpg',NULL,'2023-07-21 04:32:27','2023-07-21 09:06:58','nuevo');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-23 23:03:24
