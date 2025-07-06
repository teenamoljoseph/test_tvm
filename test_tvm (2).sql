-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 06, 2025 at 08:43 AM
-- Server version: 8.0.27
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_tvm`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_foreign` (`post_id`),
  KEY `comments_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 'This is a comment.', '2025-07-05 06:56:03', '2025-07-05 06:56:03'),
(2, 4, 3, 'testing by teena', '2025-07-05 06:56:31', '2025-07-05 07:51:25'),
(4, 5, 3, 'This is second comment.', '2025-07-06 02:24:59', '2025-07-06 02:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_07_04_081002_create_posts_table', 1),
(2, '2025_07_04_081026_create_comments_table', 2),
(3, '2025_07_04_081051_create_post_tag_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth-token', '15e255592d39d12a1e417db48075a5e94bf630fb8a069be8a21d10b3609ab87b', '[\"*\"]', NULL, NULL, '2025-07-05 04:08:48', '2025-07-05 04:08:48'),
(2, 'App\\Models\\User', 2, 'auth-token', '1d7f206f3d6070c156614db520ac9ea510fdb573b3589e684714e8117d5724ec', '[\"*\"]', NULL, NULL, '2025-07-05 04:11:41', '2025-07-05 04:11:41'),
(3, 'App\\Models\\User', 3, 'auth-token', 'fee51597913e10517a5a49ae096ddb0cab0b193ecd5f513296077289d2e9c0c0', '[\"*\"]', NULL, NULL, '2025-07-05 04:29:43', '2025-07-05 04:29:43'),
(4, 'App\\Models\\User', 3, 'auth-token', 'd8b1867597bd1815938538272f5a267108ef47282b86b6c41b5918c780c7bc19', '[\"*\"]', NULL, NULL, '2025-07-05 04:30:30', '2025-07-05 04:30:30'),
(5, 'App\\Models\\User', 3, 'auth-token', 'bcb8361da51c9d302be220d80958d5b0de55f4f2280070c22a8571c390f9b79f', '[\"*\"]', NULL, NULL, '2025-07-05 04:31:12', '2025-07-05 04:31:12'),
(7, 'App\\Models\\User', 4, 'auth-token', '69f50bbf81da1344d9db31947a9cb93fdc777b21255c2d1f4f4343607bec532c', '[\"*\"]', NULL, NULL, '2025-07-06 02:17:53', '2025-07-06 02:17:53'),
(8, 'App\\Models\\User', 4, 'auth-token', '412753497499189b02482babd4ff89b55c7f498f8b8c4ab0931b5c241abb972b', '[\"*\"]', NULL, NULL, '2025-07-06 02:21:23', '2025-07-06 02:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(5, 3, 'My second post', 'This is the body of the post', '2025-07-06 02:22:28', '2025-07-06 02:22:28'),
(4, 3, 'My first post', 'This is the body of the post', '2025-07-05 06:41:40', '2025-07-05 06:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `post_tag_post_id_foreign` (`post_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(15, 4, 15, '2025-07-05 12:11:40', '2025-07-05 12:11:40'),
(14, 4, 14, '2025-07-05 12:11:40', '2025-07-05 12:11:40'),
(13, 4, 13, '2025-07-05 12:11:40', '2025-07-05 12:11:40'),
(12, 4, 12, '2025-07-05 12:11:40', '2025-07-05 12:11:40'),
(11, 4, 11, '2025-07-05 12:11:40', '2025-07-05 12:11:40'),
(16, 5, 11, '2025-07-06 07:52:29', '2025-07-06 07:52:29'),
(17, 5, 12, '2025-07-06 07:52:29', '2025-07-06 07:52:29'),
(18, 5, 13, '2025-07-06 07:52:29', '2025-07-06 07:52:29'),
(19, 5, 14, '2025-07-06 07:52:29', '2025-07-06 07:52:29'),
(20, 5, 15, '2025-07-06 07:52:29', '2025-07-06 07:52:29'),
(21, 5, 16, '2025-07-06 07:52:29', '2025-07-06 07:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(14, 'git', '2025-07-05 06:41:40', '2025-07-05 06:41:40'),
(13, 'api', '2025-07-05 06:41:40', '2025-07-05 06:41:40'),
(12, 'laravel', '2025-07-05 06:41:40', '2025-07-05 06:41:40'),
(11, 'php', '2025-07-05 06:41:40', '2025-07-05 06:41:40'),
(15, 'jira', '2025-07-05 06:41:40', '2025-07-05 06:41:40'),
(16, 'postman', '2025-07-06 02:22:28', '2025-07-06 02:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', 'Secret123!', '2025-07-05 04:08:48', '2025-07-05 04:08:48'),
(2, 'David Bijin', 'david@example.com', 'david123!', '2025-07-05 04:11:41', '2025-07-05 04:11:41'),
(3, 'Teena Bijin', 'teena@example.com', '$2y$12$SsxlKHv1nq25eZ2.MIZCEO39BtzCfF1Qisr2xwcOryEEF9dPumN8S', '2025-07-05 04:29:43', '2025-07-05 04:29:43'),
(4, 'Tibin Joseph', 'tibin@example.com', '$2y$12$kvr2r6foCLm/CE3JN3LyO.fsNT3x.aqTeZ9wOCpMSAG2WsUxgoDGu', '2025-07-06 02:17:53', '2025-07-06 02:17:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
