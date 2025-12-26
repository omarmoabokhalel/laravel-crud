-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2025 at 01:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(8, 'Sweets', 'sweets', '2025-12-26 09:55:13', '2025-12-26 09:55:13'),
(9, 'Breakfast', 'breakfast', '2025-12-26 09:55:25', '2025-12-26 09:55:25'),
(10, 'Lunch', 'lunch', '2025-12-26 09:55:36', '2025-12-26 09:55:36'),
(11, 'Drinks', 'drinks', '2025-12-26 09:55:43', '2025-12-26 09:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

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
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `category_id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(3, 9, 'Health Breakfast', 'Bangina Breakfast Potatoes: The Ultimate Morning Kickstart', 100, 'meals/2VTw0PdFzkQIS7tuUeqcwB6cwgnXW4688xDAFlh3.jpg', '2025-12-26 09:57:15', '2025-12-26 09:57:15'),
(4, 10, 'Chicken Creamy', 'A comforting yet fresh dish perfect for a cozy dinner, family meal, or casual weekend get-together. This recipe combines juicy grilled herb-marinated chicken', 500, 'meals/52RE1EPV5l4rBKFC8gDUUJAIFAOWCqUeSo0Tepqb.jpg', '2025-12-26 09:58:32', '2025-12-26 09:58:32'),
(5, 8, 'Strawberry', 'Strawberry Cheesecake Recipe', 150, 'meals/mxxnWvGhO5YdkVDOg9DUZUS8gVV7YxJs5FII700d.jpg', '2025-12-26 09:59:42', '2025-12-26 09:59:42'),
(6, 11, 'Hot Chocolate', 'This french hot chocolate is easy to make, silky, and rich in chocolate flavor. You will only need 10 minutes to make this Parisian style hot chocolate and a few simple ingredients.', 70, 'meals/A8bbBYzsljJnjkod365zTk8gRdoAFrjqM06UiXSt.jpg', '2025-12-26 10:01:00', '2025-12-26 10:01:00'),
(7, 11, 'Matcha Bubble Tea', 'This simple but delicious Matcha Bubble Tea with Brown Sugar is the perfect afternoon treat. Refreshing and flavourful, you\'ll want two cups to yourself!', 120, 'meals/6v5mQWRt8IlmDFrXzUqnBgxEi9KDfSCrfcjbAFrY.jpg', '2025-12-26 10:06:23', '2025-12-26 10:06:23'),
(8, 11, 'Port Cobbler', 'The Port Cobbler is a refreshing, historic cocktail that dates back to the 19th century. It is a simple yet delightful mix of port wine, sugar, and fresh fruit, usually served over crushed ice. It\'s perfect for a warm afternoon or a casual evening.', 58, 'meals/loDqE9SIXNpWIgQfxiteTU3063849huhXm5Y2RmY.jpg', '2025-12-26 10:07:09', '2025-12-26 10:07:09'),
(9, 11, 'Pink Lemonade Cocktail', 'A simple, refreshing, and pretty Pink Lemonade Cocktail. Made with cranberry juice, Malibu, and some fizz to give you a go-to cocktail.', 200, 'meals/bHxhdTEvwAWcLsizxnnw2lFEaefHTsrcvqeXNlhB.jpg', '2025-12-26 10:08:01', '2025-12-26 10:08:01'),
(10, 8, 'Chocolate Croissants', 'Easy Chocolate Croissants', 320, 'meals/Z3xSJLC6WzfmaLVIpzyBmS3dVUsFU1QSCjwEGIbo.jpg', '2025-12-26 10:13:43', '2025-12-26 10:13:43'),
(11, 8, 'Vanilla Cupcakes', 'These vanilla cupcakes are simple, sweet, and satisfying!', 150, 'meals/mSbzXY1s3ac969PO4sguupscPCKBaXwPPub7zsHS.jpg', '2025-12-26 10:14:18', '2025-12-26 10:14:18'),
(12, 8, 'Pan cake', 'pan cake with chocolate', 150, 'meals/QyDcHEgMEyHoX8MnmlUvQQb2F1UTmSiHCavkCB90.jpg', '2025-12-26 10:16:53', '2025-12-26 10:16:53'),
(13, 9, 'Fluffy Scrambled Eggs', 'These Fluffy Scrambled Eggs turn out soft and creamy every time!', 250, 'meals/0rWV0pk9zjSKD8Ctevtn3KtFbFHGzBkLOwhxaNln.jpg', '2025-12-26 10:17:43', '2025-12-26 10:17:43'),
(14, 9, 'Salsa-Topped Avocado', 'Salsa-Topped Avocado Toast Is an Easy Snack Packed with 8 Grams of Fiber', 90, 'meals/gC4Qa0PXBYUQgJUUgeGjyl61ZoPnH4hpm3areYSi.jpg', '2025-12-26 10:18:56', '2025-12-26 10:18:56'),
(15, 9, 'Breakfast Veggie Wraps', 'Breakfast Veggie Wraps', 180, 'meals/kuZ1tFh5rqrKTZ0ENaJw7XDi2W1o33XXXPerPqQk.jpg', '2025-12-26 10:19:29', '2025-12-26 10:19:29'),
(16, 10, 'Burger', 'Recette de hamburger et de frites Double Smash paresseux', 320, 'meals/ToYwRUjlJ8ZXIcKnWEnes1nV7ioJK3gmMTJHlH0J.jpg', '2025-12-26 10:20:11', '2025-12-26 10:20:11'),
(17, 10, 'Pizza', 'Four-Cheese Pizza Recipe – A Cheesy Delight for Cheese Day', 420, 'meals/0mbVZfj3vDM6wJGRErBpMkwbhFimU8hlNV8CBWwf.jpg', '2025-12-26 10:20:57', '2025-12-26 10:20:57'),
(18, 10, 'Kabsa', 'Delicious Arabic Chicken and Rice (Kabsa) Recipe', 460, 'meals/AhsKhIJLmAX4wNVSjlO7ID07dnqz7oPrb95lGbMg.jpg', '2025-12-26 10:21:56', '2025-12-26 10:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2025_11_14_120520_create_categories_table', 1),
(10, '2025_11_14_120615_create_meals_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zVNJ06lLPfVYFApjmtXHK8O98O14yuTge5R4sUiG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaWR5bjU3eU4zYVdvUW9ZaEJPOXVDWVVLdDE5WkZFUUlreTd4MlhpSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tZWFscy8xOC9lZGl0IjtzOjU6InJvdXRlIjtzOjEwOiJtZWFscy5lZGl0Ijt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1766751852);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Omar Abokhalel', 'omarabokhalel9@gmail.com', NULL, '$2y$12$vyOxBLJ4rsrhchGjFhDaq.I/sWYyPiFp7HdcNX3zIeSXlFH8SisCO', NULL, '2025-12-26 09:39:37', '2025-12-26 09:39:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meals_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
