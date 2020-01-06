-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2020 at 12:39 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`, `small_description`, `description`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Discover spaces.', 'bannerimage.jpg', 'Test', 'Test', 1, 1, '2019-12-30 11:21:53', '2019-12-31 01:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `name`, `image`, `small_description`, `description`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'BUSINESS ACCOUNT: TRACK YOUR MEETINGS EXPENDITURE.', 'mainpic.png', 'With a business account your organisation can easily track global meeting expenditure and savings. The platform includes:', 'With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: With a business account your organisation can easily track global meeting expenditure and savings. The platform includes: ', 1, 2, '2019-12-31 04:15:22', '2019-12-31 04:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `image`, `small_description`, `description`, `price`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'LONDON', 'image4.jpg', 'Explore 4,954 meeting venues in the Capital city of the England', 'Explore 4,954 meeting venues in the Capital city of the England', 250.00, 1, 2, '2020-01-02 00:33:39', '2020-01-02 01:05:01'),
(3, 'LONDON', 'image5.jpg', 'Explore 4,954 meeting venues in the Capital city of the England', 'Explore 4,954 meeting venues in the Capital city of the England', 200.00, 1, 2, '2020-01-02 00:33:39', '2020-01-02 00:35:27'),
(4, 'LONDON', 'image11.jpg', 'Explore 4,954 meeting venues in the Capital city of the England', 'Explore 4,954 meeting venues in the Capital city of the England', 200.00, 1, 2, '2020-01-02 00:33:39', '2020-01-02 00:35:27'),
(5, 'LONDON', 'image22.jpg', 'Explore 4,954 meeting venues in the Capital city of the England', 'Explore 4,954 meeting venues in the Capital city of the England', 200.00, 1, 2, '2020-01-02 00:33:39', '2020-01-02 00:35:27'),
(6, 'LONDON', 'image33.jpg', 'Explore 4,954 meeting venues in the Capital city of the England', 'Explore 4,954 meeting venues in the Capital city of the England', 200.00, 1, 2, '2020-01-02 00:33:39', '2020-01-02 00:35:27'),
(7, 'LONDON', 'image44.jpg', 'Explore 4,954 meeting venues in the Capital city of the England', 'Explore 4,954 meeting venues in the Capital city of the England', 200.00, 1, 2, '2020-01-02 00:33:39', '2020-01-02 00:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `globalms`
--

CREATE TABLE `globalms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `created_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `globalms`
--

INSERT INTO `globalms` (`id`, `name`, `image`, `small_description`, `description`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'OVER 137,000 SPACES AROUND THE WORLD.', 'image22.jpg', 'Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces', 'Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces Discover a wide range of venues suitable for all your meeting needs from major hotel brands to independent alternative spaces ', 1, 2, '2020-01-01 23:40:02', '2020-01-01 23:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `innovations`
--

CREATE TABLE `innovations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innovations`
--

INSERT INTO `innovations` (`id`, `name`, `image`, `small_description`, `description`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SMALL MEETINGS', 'accomodationpic.jpg', 'Book smaller spaces online on-demand by the hour or day.', '', 1, 2, '2019-12-31 03:02:43', '2019-12-31 03:02:43'),
(3, 'CONFERENCE & EVENTS', 'conferencepic.jpg', 'Let venues bid for your larger events. Get multiple quotes, compare and book direct.', NULL, 1, 2, '2019-12-31 03:02:43', '2019-12-31 03:02:43'),
(4, 'GROUP ACCOMMODATION', 'meetingpic.jpg', 'Hotels compete for your groups by adding competitive offers online via RFP', NULL, 1, 2, '2019-12-31 03:02:43', '2019-12-31 03:02:43');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_27_123110_create_banners_table', 2),
(4, '2019_12_27_123150_create_innovations_table', 2),
(5, '2019_12_27_123220_create_globals_table', 2),
(6, '2019_12_27_123233_create_businesses_table', 2),
(7, '2019_12_27_123243_create_unique_venues_table', 2),
(8, '2019_12_27_123324_create_cities_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yogeshk@younggeeks.in', '$2y$10$xIUYceM52DD5YXRR56EkR.JsMJeoxxPdG3EK7pQZ75KHfPOkBDnQK', '2019-12-27 04:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `uniquevenues`
--

CREATE TABLE `uniquevenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uniquevenues`
--

INSERT INTO `uniquevenues` (`id`, `name`, `image`, `small_description`, `description`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'PARIS.ART GALLERIES', 'accomodationpic.jpg', 'DESKEO SAINT-HONORE', '', 1, 2, '2019-12-31 05:22:27', '2019-12-31 05:22:27'),
(3, 'AMSTERDAM.MUSEUM', 'conferencepic.jpg', 'EYE FILMMUSEUM', NULL, 1, 2, '2019-12-31 05:22:27', '2019-12-31 05:22:27'),
(4, 'SAN FRANCISCO', 'meetingpic.jpg', 'ECO-SYSTM SAN FRANCISCO', NULL, 1, 2, '2019-12-31 05:22:27', '2019-12-31 05:22:27'),
(5, 'LONDON.STADIUM', 'accomodationpic.jpg', 'LONDON STADIUM.', NULL, 1, 2, '2019-12-31 05:22:27', '2019-12-31 05:22:27'),
(6, 'BERLIN.STUDIO', 'conferencepic.jpg', 'VILLAGE BERLIN', NULL, 1, 2, '2019-12-31 05:22:27', '2019-12-31 05:22:27'),
(7, 'SYDNEY.BUSINESS CENTERS', 'meetingpic.jpg', 'STONE AND CHALK SYDNEY', NULL, 1, 2, '2019-12-31 05:22:27', '2019-12-31 05:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yogesh kumar', 'kumars@gmail.com1', NULL, '$2y$10$Om9iPcOlp8qKKVb7qJHqwesofIk3.P37PiOsYJtu5VE0cT0izSYfO', NULL, '2019-12-27 04:13:19', '2019-12-27 04:13:19'),
(2, 'Super Admin', 'yogeshk@younggeeks.in', NULL, '$2y$10$neeB9s16FLshci1dJyhww.99WcRB8j8Urlvs3uvnYrc0L6IiX4sGS', NULL, '2019-12-27 04:19:17', '2019-12-27 04:19:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `globalms`
--
ALTER TABLE `globalms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `innovations`
--
ALTER TABLE `innovations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `uniquevenues`
--
ALTER TABLE `uniquevenues`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `globalms`
--
ALTER TABLE `globalms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `innovations`
--
ALTER TABLE `innovations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uniquevenues`
--
ALTER TABLE `uniquevenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
