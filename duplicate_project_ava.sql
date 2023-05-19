-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 11:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duplicate_project_ava`
--

-- --------------------------------------------------------

--
-- Table structure for table `merged_users`
--

CREATE TABLE `merged_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merged_users`
--

INSERT INTO `merged_users` (`id`, `user_id`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(4, 5, 'Alex', 'Wix', '2023-05-19 14:07:55', '2023-05-19 14:07:55'),
(5, 5, 'Alex', 'w', '2023-05-19 14:07:55', '2023-05-19 14:07:55'),
(6, 5, 'Alexander', 'w', '2023-05-19 14:07:55', '2023-05-19 14:07:55'),
(7, 33, 'Thom', 'Jackson', '2023-05-19 14:18:45', '2023-05-19 14:18:45'),
(8, 33, 'Thomas', 'Jack', '2023-05-19 14:18:45', '2023-05-19 14:18:45'),
(9, 33, 'THOMAS', 'JACKSON', '2023-05-19 14:18:45', '2023-05-19 14:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_17_003846_create_users_table', 1),
(3, '2023_05_18_173431_create_merged_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', '2023-05-19 13:51:28', '2023-05-19 13:51:28'),
(2, 'Johnattan', 'Doe', '2023-05-19 13:51:32', '2023-05-19 13:51:32'),
(3, 'johnny', 'Doe', '2023-05-19 13:51:40', '2023-05-19 13:51:40'),
(5, 'Alexander', 'Wix', '2023-05-19 13:51:54', '2023-05-19 13:51:54'),
(8, 'JOHN', 'DOE', '2023-05-19 13:52:27', '2023-05-19 13:52:27'),
(9, 'Brad', 'Williams', '2023-05-19 13:52:44', '2023-05-19 13:52:44'),
(10, 'Brad', 'Will', '2023-05-19 13:52:50', '2023-05-19 13:52:50'),
(11, 'Brad', 'w', '2023-05-19 13:52:53', '2023-05-19 13:52:53'),
(12, 'Brad', 'Wii', '2023-05-19 13:53:55', '2023-05-19 13:53:55'),
(20, 'Bradon', 'Williams', '2023-05-19 13:58:14', '2023-05-19 13:58:14'),
(21, 'Bradon', 'Wil', '2023-05-19 13:58:25', '2023-05-19 13:58:25'),
(27, 'David', 'Jones', '2023-05-19 14:10:00', '2023-05-19 14:10:00'),
(28, 'Dave', 'Jones', '2023-05-19 14:10:04', '2023-05-19 14:10:04'),
(29, 'David', 'Jo', '2023-05-19 14:10:11', '2023-05-19 14:10:11'),
(30, 'Robert', 'Garcia', '2023-05-19 14:14:08', '2023-05-19 14:14:08'),
(31, 'Robert', 'ga', '2023-05-19 14:14:14', '2023-05-19 14:14:14'),
(32, 'Robert', 'GARCI', '2023-05-19 14:14:32', '2023-05-19 14:14:32'),
(33, 'Thomas', 'Jackson', '2023-05-19 14:18:01', '2023-05-19 14:18:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merged_users`
--
ALTER TABLE `merged_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merged_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merged_users`
--
ALTER TABLE `merged_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `merged_users`
--
ALTER TABLE `merged_users`
  ADD CONSTRAINT `merged_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
