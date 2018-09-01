-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2018 at 12:07 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyberframe`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_default` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attribute_type` int(11) NOT NULL,
  `multivalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attribute_id`, `attribute_name`, `product_id`, `attribute_default`, `created_at`, `updated_at`, `attribute_type`, `multivalue`) VALUES
(1, 'memory', 1, NULL, '2018-08-26 07:49:04', '2018-08-26 07:49:04', 1, 0),
(2, 'xxx', 1, NULL, '2018-08-26 07:50:54', '2018-08-26 07:50:54', 1, 0),
(3, 'memory', 1, NULL, '2018-08-26 07:54:11', '2018-08-26 07:54:11', 1, 0),
(4, 'memory', 1, NULL, '2018-08-26 07:55:43', '2018-08-26 07:55:43', 1, 0),
(5, 'memory', 1, NULL, '2018-08-26 07:55:57', '2018-08-26 07:55:57', 1, 0),
(6, 'memory', 4, NULL, '2018-08-31 02:17:13', '2018-08-31 02:17:13', 1, 0),
(7, 'memory', 6, NULL, '2018-09-01 04:11:15', '2018-09-01 04:11:15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`attribute_value_id`, `attribute_id`, `attribute_value`, `attribute_size`, `attribute_price`, `created_at`, `updated_at`) VALUES
(1, 1, '64', '44', '2000', NULL, NULL),
(2, 1, '32', NULL, '2000', NULL, NULL),
(3, 1, '128', NULL, '4000', NULL, NULL),
(4, 2, '64', '44', '2000', NULL, NULL),
(5, 3, '64', NULL, '2000', NULL, NULL),
(6, 4, '32', NULL, NULL, NULL, NULL),
(7, 5, '32', NULL, NULL, NULL, NULL),
(8, 6, '64', '50', '10000', NULL, NULL),
(9, 6, '128', '60', '20000', NULL, NULL),
(10, 7, '32', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `parent_category`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 0, 0, '2018-08-26 07:47:10', '2018-08-26 07:47:10'),
(2, 'samsung', 1, 1, '2018-08-26 08:11:37', '2018-08-26 08:11:37'),
(3, 'Note series', 2, 2, '2018-08-26 08:12:11', '2018-08-26 08:12:11'),
(4, 'laptops', 0, 0, '2018-08-26 08:22:23', '2018-08-26 08:22:23'),
(5, 'LENOVO', 4, 1, '2018-08-26 08:23:42', '2018-08-26 08:23:42'),
(6, 'dell', 4, 1, '2018-08-26 08:26:21', '2018-08-26 08:26:21'),
(7, 'Shoes', 0, 0, '2018-08-26 08:27:19', '2018-08-26 08:27:19'),
(8, 'Casual Shoes', 7, 1, '2018-08-26 08:27:40', '2018-08-26 08:27:40'),
(9, 'Sports Shoes', 7, 1, '2018-08-26 08:27:50', '2018-08-26 08:27:50'),
(10, 'Reebok', 9, 2, '2018-08-26 08:28:10', '2018-08-26 08:28:10'),
(11, 'Nokia', 1, 1, '2018-08-31 02:10:50', '2018-08-31 02:10:50'),
(12, 'Liberty', 8, 2, '2018-08-31 02:15:05', '2018-08-31 02:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2018_08_25_115553_create_attribute_value_price_table', 1),
(42, '2018_08_25_105316_create_attribute_table', 2),
(46, '2014_10_12_000000_create_users_table', 3),
(47, '2014_10_12_100000_create_password_resets_table', 3),
(48, '2018_08_25_105150_create_products_table', 3),
(49, '2018_08_25_105349_create_attribute_value_table', 3),
(50, '2018_08_25_120757_create_categories_table', 3),
(51, '2018_08_25_121115_create_products_categories_table', 3),
(52, '2018_08_26_131527_create_attributes_table', 3),
(53, '2018_09_01_093218_add_attribute_type_to_attributes', 4),
(54, '2018_09_01_093437_add_multivalue_to_attributes', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `sku`, `product_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'TFD008', 'note 3', 1899, '2018-08-26 07:47:33', '2018-08-26 07:47:33'),
(2, 'del11', 'Inspiron N5050', 34000, '2018-08-26 08:29:11', '2018-08-26 08:29:11'),
(3, 'yy55', 'note 2', 1899, '2018-08-26 08:29:36', '2018-08-26 08:29:36'),
(4, 'lum725', 'Lumia 725', 10000, '2018-08-31 02:14:06', '2018-08-31 02:14:06'),
(5, 'fly500', 'Fly 500', 5000, '2018-08-31 02:15:47', '2018-08-31 02:15:47'),
(6, 'note5', 'note 5', 40000, '2018-09-01 03:40:44', '2018-09-01 03:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 6, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 11, 4, NULL, NULL),
(5, 10, 5, NULL, NULL),
(6, 3, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`attribute_value_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `attribute_value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
