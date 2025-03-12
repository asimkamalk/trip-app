-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2024 at 06:39 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tripsummit`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_items`
--

CREATE TABLE `about_items` (
  `id` bigint UNSIGNED NOT NULL,
  `feature_status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_items`
--

INSERT INTO `about_items` (`id`, `feature_status`, `created_at`, `updated_at`) VALUES
(1, 'Show', '2024-07-12 05:57:01', '2024-07-12 06:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `photo`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Morshedul Arefin', 'admin@gmail.com', 'admin_1717493029.jpg', '$2y$12$I2/lLC6jmIfpQ7P0UkkeS.BINvTlik66YGNa76bkz0Zs.N1/FKfEm', '', '2024-06-04 01:49:48', '2024-06-04 03:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Swimming Pool', '2024-07-08 03:47:15', '2024-07-08 03:47:15'),
(4, 'Sightseeing', '2024-07-08 03:48:36', '2024-07-08 03:48:36'),
(5, 'Free Wifi', '2024-07-08 03:48:42', '2024-07-08 03:48:42'),
(6, 'Gym', '2024-07-08 03:48:49', '2024-07-08 03:48:49'),
(7, 'Personal Guide', '2024-07-08 03:49:00', '2024-07-08 03:49:00'),
(8, 'Mountain Bike', '2024-07-08 03:49:10', '2024-07-08 03:49:10'),
(9, 'Festival', '2024-07-08 03:49:19', '2024-07-08 03:49:19'),
(10, 'Airconditioner', '2024-07-08 03:49:31', '2024-07-08 03:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Flight', 'flight', '2024-07-06 19:55:34', '2024-07-06 19:55:34'),
(2, 'Country', 'country', '2024-07-06 19:55:50', '2024-07-06 19:55:50'),
(3, 'Health', 'health', '2024-07-06 19:56:00', '2024-07-06 19:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` int NOT NULL,
  `package_id` int NOT NULL,
  `user_id` int NOT NULL,
  `total_person` int NOT NULL,
  `paid_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `tour_id`, `package_id`, `user_id`, `total_person`, `paid_amount`, `payment_method`, `payment_status`, `invoice_no`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 2, '100.00', 'PayPal', 'Completed', '1720524054', '2024-07-09 05:20:54', '2024-07-09 05:20:54'),
(3, 1, 3, 2, 1, '50', 'Stripe', 'Completed', '1720526235', '2024-07-09 05:57:15', '2024-07-09 05:57:15'),
(4, 5, 4, 2, 4, '2000', 'Stripe', 'Completed', '1720572975', '2024-07-09 18:56:15', '2024-07-09 18:56:15'),
(5, 2, 3, 2, 11, '550', 'Stripe', 'Completed', '1720573065', '2024-07-09 18:57:45', '2024-07-09 18:57:45'),
(7, 1, 3, 2, 1, '50', 'Cash', 'Completed', '1720581237', '2024-07-09 21:13:57', '2024-07-09 21:18:30'),
(8, 1, 3, 3, 1, '50', 'Stripe', 'Completed', '1720592942', '2024-07-10 00:29:02', '2024-07-10 00:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_items`
--

CREATE TABLE `contact_items` (
  `id` bigint UNSIGNED NOT NULL,
  `map_code` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_items`
--

INSERT INTO `contact_items` (`id`, `map_code`, `created_at`, `updated_at`) VALUES
(1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2799198932!2d-74.25987701513004!3d40.69767006272707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1645362221879!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border: 0\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '2024-07-12 06:12:44', '2024-07-12 06:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `counter_items`
--

CREATE TABLE `counter_items` (
  `id` bigint UNSIGNED NOT NULL,
  `item1_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item1_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item2_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item2_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item3_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item3_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item4_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item4_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counter_items`
--

INSERT INTO `counter_items` (`id`, `item1_number`, `item1_text`, `item2_number`, `item2_text`, `item3_number`, `item3_text`, `item4_number`, `item4_text`, `status`, `created_at`, `updated_at`) VALUES
(1, '60', 'Destinations', '1500', 'Clients', '70', 'Packages', '80', 'Feedbacks', 'Show', '2024-07-06 09:20:43', '2024-07-06 10:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_requirement` text COLLATE utf8mb4_unicode_ci,
  `activity` text COLLATE utf8mb4_unicode_ci,
  `best_time` text COLLATE utf8mb4_unicode_ci,
  `health_safety` text COLLATE utf8mb4_unicode_ci,
  `map` text COLLATE utf8mb4_unicode_ci,
  `featured_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `slug`, `description`, `country`, `language`, `currency`, `area`, `timezone`, `visa_requirement`, `activity`, `best_time`, `health_safety`, `map`, `featured_photo`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 'Sydney', 'sydney', '<p>Australia, the land Down Under, is a vast and diverse country known for its stunning natural landscapes, unique wildlife, and vibrant cities. From the sun-kissed beaches of the Gold Coast to the rugged outback of the Northern Territory, Australia offers an array of experiences that cater to every type of traveler. Whether you\'re looking to relax on pristine shores, explore ancient rainforests, or venture into the heart of the desert, Australia has something for everyone.</p>\r\n<p>In addition to its natural beauty, Australia is home to several bustling cities that boast a rich cultural heritage and modern attractions. Sydney, with its iconic Opera House and Harbour Bridge, offers a dynamic urban experience with world-class dining, shopping, and entertainment. Melbourne, known for its artistic vibe and diverse population, is a hub for street art, coffee culture, and live music. Other cities like Brisbane, Perth, and Adelaide each offer their own unique charm and attractions, making urban exploration in Australia equally rewarding.</p>\r\n<p>Australia\'s wildlife is another major draw, with unique species such as kangaroos, koalas, and the platypus. The Great Barrier Reef, a UNESCO World Heritage site, is a must-visit for snorkeling and diving enthusiasts, showcasing a vibrant underwater ecosystem. Additionally, the country\'s commitment to preserving its natural and cultural heritage is evident in its numerous national parks and heritage sites. Whether you\'re an adventure seeker, a nature lover, or a cultural enthusiast, Australia\'s diverse offerings promise an unforgettable travel experience.</p>\r\n<p>&nbsp;</p>', 'Australia', 'English, Spanish', 'AUD', '120039 sqft', 'GMT-6', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>\r\n<p>&nbsp;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29736668.18356832!2d111.81148767494898!3d-24.521314978627814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sen!2sbd!4v1716870853572!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'destination_featured_1720342748.jpg', 17, '2024-07-07 02:59:08', '2024-07-12 12:39:26'),
(2, 'Phuket', 'phuket', '<p>Lorem ipsum dolor sit amet, tollit meliore an mei, assueverit philosophia ei mea. Nec cu torquatos sententiae ullamcorper. Senserit incorrupte at quo. Pro suas rebum tacimates id, mei laboramus maiestatis sententiae id, agam atqui tamquam at mea. Alterum repudiandae ad nec, qui et facer repudiare liberavisse, wisi mediocritatem nec ad. Ei mei dico animal, te eum nullam scripta ornatus.<br /><br />An nec simul maluisset. Eirmod propriae id has, vel sale dicat at. Ei mel tation constituto, mei modo copiosae senserit ad. Utamur alterum quaerendum vix cu. At elitr animal usu, eam eius constituto voluptatibus ea. Vel audire eligendi patrioque ad, cum populo euismod petentium ut.<br /><br />Dicunt scripta usu ex, vis ceteros partiendo instructior ne, te libris praesent eum. Soleat tacimates vix et, qui ut mazim fierent ponderum, ne eum brute nobis utamur. Ex nec dico copiosae quaerendum, malis impedit commune ex duo. Nonumy partem sanctus in pri, mea ubique hendrerit instructior te. Justo accommodare eam ei, no sea homero lucilius. Mel ut choro dicant, ius ea noster dictas malorum, eu nominati laboramus mea.</p>', 'Thailand', 'Thai, English', 'Baht', '10000000 sq miles', 'GMT+3', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29736668.18356832!2d111.81148767494898!3d-24.521314978627814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sen!2sbd!4v1716870853572!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'destination_featured_1720345940.jpg', 10, '2024-07-07 03:52:20', '2024-07-11 17:46:10'),
(3, 'Lisbon', 'lisbon', '<p>Lorem ipsum dolor sit amet, tollit meliore an mei, assueverit philosophia ei mea. Nec cu torquatos sententiae ullamcorper. Senserit incorrupte at quo. Pro suas rebum tacimates id, mei laboramus maiestatis sententiae id, agam atqui tamquam at mea. Alterum repudiandae ad nec, qui et facer repudiare liberavisse, wisi mediocritatem nec ad. Ei mei dico animal, te eum nullam scripta ornatus.<br /><br />An nec simul maluisset. Eirmod propriae id has, vel sale dicat at. Ei mel tation constituto, mei modo copiosae senserit ad. Utamur alterum quaerendum vix cu. At elitr animal usu, eam eius constituto voluptatibus ea. Vel audire eligendi patrioque ad, cum populo euismod petentium ut.<br /><br />Dicunt scripta usu ex, vis ceteros partiendo instructior ne, te libris praesent eum. Soleat tacimates vix et, qui ut mazim fierent ponderum, ne eum brute nobis utamur. Ex nec dico copiosae quaerendum, malis impedit commune ex duo. Nonumy partem sanctus in pri, mea ubique hendrerit instructior te. Justo accommodare eam ei, no sea homero lucilius. Mel ut choro dicant, ius ea noster dictas malorum, eu nominati laboramus mea.</p>', 'Portugal', 'Portugese, English, Spanish', 'Euro', '200000 sq miles', 'GMT-3', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>\r\n<p>&nbsp;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29736668.18356832!2d111.81148767494898!3d-24.521314978627814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sen!2sbd!4v1716870853572!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'destination_featured_1720346050.jpg', 9, '2024-07-07 03:54:10', '2024-07-11 04:05:18'),
(6, 'Paris', 'paris', '<p>Lorem ipsum dolor sit amet, tollit meliore an mei, assueverit philosophia ei mea. Nec cu torquatos sententiae ullamcorper. Senserit incorrupte at quo. Pro suas rebum tacimates id, mei laboramus maiestatis sententiae id, agam atqui tamquam at mea. Alterum repudiandae ad nec, qui et facer repudiare liberavisse, wisi mediocritatem nec ad. Ei mei dico animal, te eum nullam scripta ornatus.<br /><br />An nec simul maluisset. Eirmod propriae id has, vel sale dicat at. Ei mel tation constituto, mei modo copiosae senserit ad. Utamur alterum quaerendum vix cu. At elitr animal usu, eam eius constituto voluptatibus ea. Vel audire eligendi patrioque ad, cum populo euismod petentium ut.<br /><br />Dicunt scripta usu ex, vis ceteros partiendo instructior ne, te libris praesent eum. Soleat tacimates vix et, qui ut mazim fierent ponderum, ne eum brute nobis utamur. Ex nec dico copiosae quaerendum, malis impedit commune ex duo. Nonumy partem sanctus in pri, mea ubique hendrerit instructior te. Justo accommodare eam ei, no sea homero lucilius. Mel ut choro dicant, ius ea noster dictas malorum, eu nominati laboramus mea.</p>\r\n<p>&nbsp;</p>', 'France', 'French, English', 'Euro', '200000 sq miles', 'GMT-8', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ius ad autem virtute alterum, vix ei vivendum scriptorem accommodare. Nec apeirian salutandi no, nam ex deleniti tincidunt neglegentur. Te quo adhuc ponderum volutpat. Mea an quas iriure regione, te quem suavitate his. Et quas cetero latine sed. Ex mei iisque persequeris repudiandae, facer epicurei ea eum. Ex saepe graecis erroribus cum, at prima tollit eos.<br /><br />At pri unum accumsan disputationi, mei electram dissentiet cu. Ridens indoctum explicari eos cu. Eu velit honestatis cum, eum modo quando cu. No utinam mnesarchum delicatissimi pri, pri ubique labore inimicus no, usu no habeo nusquam voluptatum. Postea evertitur ut sit, exerci dicunt causae ei mea. In viris ignota mei, sit ei bonorum deserunt. Eum aliquip omnesque eleifend te, ne nonumy scaevola repudiandae nam.</p>\r\n<p>&nbsp;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29736668.18356832!2d111.81148767494898!3d-24.521314978627814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sen!2sbd!4v1716870853572!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'destination_featured_1720372812.jpg', 12, '2024-07-07 11:20:12', '2024-07-11 17:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `destination_photos`
--

CREATE TABLE `destination_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_id` int NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_photos`
--

INSERT INTO `destination_photos` (`id`, `destination_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'destination_1720356375.jpg', '2024-07-07 06:46:15', '2024-07-07 06:46:15'),
(4, 1, 'destination_1720356759.jpg', '2024-07-07 06:52:39', '2024-07-07 06:52:39'),
(5, 1, 'destination_1720356764.jpg', '2024-07-07 06:52:44', '2024-07-07 06:52:44'),
(6, 2, 'destination_1720356780.jpg', '2024-07-07 06:53:00', '2024-07-07 06:53:00'),
(7, 2, 'destination_1720356784.jpg', '2024-07-07 06:53:04', '2024-07-07 06:53:04'),
(8, 3, 'destination_1720356795.jpg', '2024-07-07 06:53:15', '2024-07-07 06:53:15'),
(9, 3, 'destination_1720371072.jpg', '2024-07-07 10:51:12', '2024-07-07 10:51:12'),
(10, 3, 'destination_1720371076.jpg', '2024-07-07 10:51:16', '2024-07-07 10:51:16'),
(11, 3, 'destination_1720371080.jpg', '2024-07-07 10:51:20', '2024-07-07 10:51:20'),
(12, 1, 'destination_1720371112.jpg', '2024-07-07 10:51:52', '2024-07-07 10:51:52'),
(13, 2, 'destination_1720371135.jpg', '2024-07-07 10:52:15', '2024-07-07 10:52:15'),
(14, 2, 'destination_1720371140.jpg', '2024-07-07 10:52:20', '2024-07-07 10:52:20'),
(15, 6, 'destination_1720373133.jpg', '2024-07-07 11:25:33', '2024-07-07 11:25:33'),
(16, 6, 'destination_1720373138.jpg', '2024-07-07 11:25:38', '2024-07-07 11:25:38'),
(17, 6, 'destination_1720373144.jpg', '2024-07-07 11:25:44', '2024-07-07 11:25:44'),
(18, 6, 'destination_1720373151.jpg', '2024-07-07 11:25:51', '2024-07-07 11:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `destination_videos`
--

CREATE TABLE `destination_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_id` int NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_videos`
--

INSERT INTO `destination_videos` (`id`, `destination_id`, `video`, `created_at`, `updated_at`) VALUES
(3, 1, '3QDoIe5dUh8', '2024-07-07 11:09:10', '2024-07-07 11:09:10'),
(4, 1, 'HRg1gJi6yqc', '2024-07-07 11:09:30', '2024-07-07 11:09:30'),
(5, 2, 'm_pCh6p8_wg', '2024-07-07 11:09:59', '2024-07-07 11:09:59'),
(6, 2, 'K7DRFZBPSu8', '2024-07-07 11:10:28', '2024-07-07 11:10:28'),
(7, 3, 'z9SHTjF2MvQ', '2024-07-07 11:11:02', '2024-07-07 11:11:02'),
(8, 3, 'IF4mJ44xYMI', '2024-07-07 11:11:29', '2024-07-07 11:11:29'),
(9, 6, 'AQ6GmpMu5L8', '2024-07-07 11:26:41', '2024-07-07 11:26:41'),
(11, 6, 'f-tsjV_ydYs', '2024-07-07 11:27:36', '2024-07-07 11:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'How to book a travel package online?', 'To book a travel package online, browse through our website’s offerings, select your desired destination and dates, and follow the prompts to customize your trip. Once you have chosen your options, proceed to the checkout page, enter your details, and make the payment securely. You will receive a confirmation email with your itinerary and booking details.', '2024-07-06 19:18:47', '2024-07-06 19:18:47'),
(2, 'What is included in travel packages?', 'Our travel packages typically include accommodation, transportation, and selected activities or tours. Some packages may also offer meals, travel insurance, and airport transfers. Each package is designed to provide a comprehensive travel experience, but you can always customize your package to include additional services or specific requests. Please check the package details for exact inclusions.', '2024-07-06 19:19:11', '2024-07-06 19:19:11'),
(3, 'Are there any travel discounts available?', 'Yes, we offer various travel discounts throughout the year, including early bird specials, last-minute deals, and seasonal promotions. To stay updated on our latest discounts, subscribe to our newsletter, follow us on social media, or check the “Deals” section of our website. We aim to provide affordable travel options without compromising quality.', '2024-07-06 19:19:26', '2024-07-06 19:19:26'),
(4, 'How to cancel or modify bookings?', 'To cancel or modify a booking, log into your account on our website and go to the “My Bookings” section. Here, you can view your current reservations and follow the prompts to make changes or cancellations. Please note that cancellation policies and modification fees may apply, depending on the terms and conditions of your booking. Contact our customer support for assistance if needed.', '2024-07-06 19:19:40', '2024-07-06 19:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon`, `heading`, `description`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-briefcase', 'Explore Destinations', 'Discover amazing places to visit, from bustling cities to serene beaches, and plan your perfect adventure with our expert guides.', '2024-07-06 08:54:51', '2024-07-06 08:54:51'),
(2, 'fas fa-search', 'Custom Travel Packages', 'Create custom travel packages designed to your accommodations, activities & transportation for a smooth journey.', '2024-07-06 08:55:59', '2024-07-06 08:55:59'),
(3, 'fas fa-share-alt', 'Travel Deals & Discounts', 'Take advantage of our exclusive travel deals and discounts, ensuring you get the best value for your dream vacation.', '2024-07-06 08:56:25', '2024-07-06 08:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `home_items`
--

CREATE TABLE `home_items` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_heading` text COLLATE utf8mb4_unicode_ci,
  `destination_subheading` text COLLATE utf8mb4_unicode_ci,
  `destination_status` text COLLATE utf8mb4_unicode_ci,
  `feature_status` text COLLATE utf8mb4_unicode_ci,
  `package_heading` text COLLATE utf8mb4_unicode_ci,
  `package_subheading` text COLLATE utf8mb4_unicode_ci,
  `package_status` text COLLATE utf8mb4_unicode_ci,
  `testimonial_heading` text COLLATE utf8mb4_unicode_ci,
  `testimonial_subheading` text COLLATE utf8mb4_unicode_ci,
  `testimonial_background` text COLLATE utf8mb4_unicode_ci,
  `testimonial_status` text COLLATE utf8mb4_unicode_ci,
  `blog_heading` text COLLATE utf8mb4_unicode_ci,
  `blog_subheading` text COLLATE utf8mb4_unicode_ci,
  `blog_status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_items`
--

INSERT INTO `home_items` (`id`, `destination_heading`, `destination_subheading`, `destination_status`, `feature_status`, `package_heading`, `package_subheading`, `package_status`, `testimonial_heading`, `testimonial_subheading`, `testimonial_background`, `testimonial_status`, `blog_heading`, `blog_subheading`, `blog_status`, `created_at`, `updated_at`) VALUES
(1, 'Popular Destinations', 'Explore our most popular travel destinations around the world', 'Show', 'Show', 'Latest Packages', 'Explore our latest travel packages around the world', 'Show', 'Client Testimonials', 'See what our clients have to say about their experience with us', 'testimonial_background_1720808299.jpg', 'Show', 'Latest News', 'Check out the latest news and updates from our blog post', 'Show', '2024-07-12 03:08:53', '2024-07-12 12:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2024-07-11 21:07:36', '2024-07-11 21:07:36'),
(3, 3, '2024-07-11 22:09:40', '2024-07-11 22:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `message_comments`
--

CREATE TABLE `message_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `message_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_comments`
--

INSERT INTO `message_comments` (`id`, `message_id`, `sender_id`, `type`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'User', 'I want to know about the travel to Sydney. Please tell me more.', '2024-07-11 21:17:22', '2024-07-11 21:17:22'),
(2, 1, 1, 'Admin', 'Yes, I can tell you more.', '2024-07-11 21:17:22', '2024-07-11 21:17:22'),
(3, 1, 2, 'User', 'Thanks.', '2024-07-11 21:26:18', '2024-07-11 21:26:18'),
(4, 1, 2, 'User', 'I will come to your office.', '2024-07-11 21:29:56', '2024-07-11 21:29:56'),
(5, 1, 1, 'Admin', 'Ok. Anytime.', '2024-07-11 22:00:31', '2024-07-11 22:00:31'),
(6, 1, 2, 'User', 'Tell me your preferred time.', '2024-07-11 22:01:28', '2024-07-11 22:01:28'),
(7, 1, 1, 'Admin', 'After evening, I will be at office each day.', '2024-07-11 22:04:05', '2024-07-11 22:04:05'),
(8, 3, 3, 'User', 'Hello, are you available today?', '2024-07-11 22:10:31', '2024-07-11 22:10:31'),
(9, 3, 1, 'Admin', 'Yes, I am available. Come to my office and before coming call me to this number: 111-233-4444', '2024-07-11 22:13:50', '2024-07-11 22:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_03_094105_create_admins_table', 1),
(5, '2024_07_05_042854_create_sliders_table', 2),
(6, '2024_07_06_135626_create_welcome_items_table', 3),
(7, '2024_07_06_144401_create_features_table', 4),
(8, '2024_07_06_151550_create_counter_items_table', 5),
(9, '2024_07_06_161550_create_testimonials_table', 6),
(10, '2024_07_06_235532_create_team_members_table', 7),
(11, '2024_07_07_011132_create_faqs_table', 8),
(12, '2024_07_07_014641_create_blog_categories_table', 9),
(13, '2024_07_07_021516_create_posts_table', 10),
(14, '2024_07_07_083444_create_destinations_table', 11),
(15, '2024_07_07_122952_create_destination_photos_table', 12),
(16, '2024_07_07_165917_create_destination_videos_table', 13),
(17, '2024_07_08_003005_create_packages_table', 14),
(18, '2024_07_08_094141_create_amenities_table', 15),
(19, '2024_07_08_100244_create_package_amenities_table', 16),
(20, '2024_07_08_114905_create_package_itineraries_table', 17),
(21, '2024_07_08_123238_create_package_photos_table', 18),
(22, '2024_07_08_182407_create_package_videos_table', 19),
(23, '2024_07_09_032902_create_package_faqs_table', 20),
(24, '2024_07_09_090045_create_tours_table', 21),
(25, '2024_07_09_103000_create_bookings_table', 22),
(26, '2024_07_10_060338_create_reviews_table', 23),
(27, '2024_07_11_235532_create_wishlists_table', 24),
(28, '2024_07_12_025241_create_messages_table', 25),
(29, '2024_07_12_025342_create_message_comments_table', 25),
(30, '2024_07_12_043848_create_subscribers_table', 26),
(31, '2024_07_12_090352_create_home_items_table', 27),
(32, '2024_07_12_115523_create_about_items_table', 28),
(33, '2024_07_12_121009_create_contact_items_table', 29),
(34, '2024_07_12_122841_create_term_privacy_items_table', 30),
(35, '2024_07_12_172936_create_settings_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_id` int NOT NULL,
  `featured_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `map` text COLLATE utf8mb4_unicode_ci,
  `price` float DEFAULT NULL,
  `total_rating` int NOT NULL,
  `total_score` int NOT NULL,
  `old_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `destination_id`, `featured_photo`, `banner`, `name`, `slug`, `description`, `map`, `price`, `total_rating`, `total_score`, `old_price`, `created_at`, `updated_at`) VALUES
(3, 1, 'package_featured_1720404072.jpg', 'package_banner_1720404072.jpg', 'Great Barrier Reef', 'great-barrier-reef', '<p>The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.</p>\r\n<p>Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.</p>\r\n<p>&nbsp;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d121617.09728228803!2d151.12127553291478!3d-33.855164815567534!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b129838f39a743f%3A0x3017d681632a850!2sSydney%20NSW%2C%20Australia!5e0!3m2!1sen!2sbd!4v1720404507946!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 50, 2, 9, '150', '2024-07-07 20:01:12', '2024-07-10 03:39:51'),
(4, 6, 'package_featured_1720516785.jpg', 'package_banner_1720516785.jpg', 'Royal Ontario Museum', 'royal-ontario-museum', '<p>Lorem ipsum dolor sit amet, tollit meliore an mei, assueverit philosophia ei mea. Nec cu torquatos sententiae ullamcorper. Senserit incorrupte at quo. Pro suas rebum tacimates id, mei laboramus maiestatis sententiae id, agam atqui tamquam at mea. Alterum repudiandae ad nec, qui et facer repudiare liberavisse, wisi mediocritatem nec ad. Ei mei dico animal, te eum nullam scripta ornatus.<br /><br />An nec simul maluisset. Eirmod propriae id has, vel sale dicat at. Ei mel tation constituto, mei modo copiosae senserit ad. Utamur alterum quaerendum vix cu. At elitr animal usu, eam eius constituto voluptatibus ea. Vel audire eligendi patrioque ad, cum populo euismod petentium ut.</p>', NULL, 500, 0, 0, '700', '2024-07-09 03:19:45', '2024-07-09 03:19:45'),
(5, 3, 'package_featured_1720809341.jpg', 'package_banner_1720809341.jpg', 'Similan Islands, Andaman Sea', 'similan-islands', '<p>The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.</p>\r\n<p>Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.</p>\r\n<p>&nbsp;</p>', NULL, 230, 0, 0, '500', '2024-07-12 12:35:41', '2024-07-12 12:35:41'),
(6, 2, 'package_featured_1720809541.jpg', 'package_banner_1720809541.jpg', 'Venice Grand Canal', 'venice-grand-canal', '<p>The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.</p>\r\n<p>Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.</p>\r\n<p>&nbsp;</p>', NULL, 800, 0, 0, '1000', '2024-07-12 12:39:01', '2024-07-12 12:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `package_amenities`
--

CREATE TABLE `package_amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `amenity_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_amenities`
--

INSERT INTO `package_amenities` (`id`, `package_id`, `amenity_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 3, 10, 'Include', '2024-07-08 04:18:19', '2024-07-08 04:18:19'),
(4, 3, 9, 'Exclude', '2024-07-08 04:27:28', '2024-07-08 04:27:28'),
(6, 3, 1, 'Include', '2024-07-08 04:29:59', '2024-07-08 04:29:59'),
(7, 3, 5, 'Exclude', '2024-07-08 04:30:06', '2024-07-08 04:30:06'),
(8, 3, 6, 'Include', '2024-07-08 04:55:24', '2024-07-08 04:55:24'),
(9, 3, 8, 'Include', '2024-07-08 04:55:28', '2024-07-08 04:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `package_faqs`
--

CREATE TABLE `package_faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_faqs`
--

INSERT INTO `package_faqs` (`id`, `package_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 3, 'What activities are included in the tour?', 'The Great Barrier Reef tour includes snorkeling, diving, and glass-bottom boat tours, allowing you to explore the vibrant marine life and coral formations. Additionally, the package offers guided reef tours, informative presentations by marine biologists, and leisure time on stunning beaches.', '2024-07-08 21:35:43', '2024-07-08 21:35:43'),
(2, 3, 'What should I bring on the tour?', 'We recommend bringing swimwear, sunscreen, a hat, sunglasses, and a reusable water bottle. If you plan to snorkel or dive, bring your own gear if you prefer, although equipment is provided. Don\'t forget a camera to capture the incredible underwater scenery!', '2024-07-08 21:36:12', '2024-07-08 21:36:12'),
(3, 3, 'Is the tour suitable for beginners?', 'Yes, the tour is designed for all experience levels. Our guides provide comprehensive instructions and safety briefings for snorkeling and diving. Beginners can enjoy glass-bottom boat tours and shallow water snorkeling, while experienced divers can explore deeper parts of the reef.', '2024-07-08 21:36:25', '2024-07-08 21:36:25'),
(4, 3, 'How long is the tour and what\'s the schedule?', 'The Great Barrier Reef tour typically lasts a full day, starting early in the morning and returning by late afternoon. The schedule includes transportation to and from the reef, several hours of water activities, lunch, and free time for relaxation and exploration.', '2024-07-08 21:36:40', '2024-07-08 21:36:40'),
(5, 3, 'What measures are in place for reef conservation?', 'Our tours adhere to strict environmental guidelines to protect the reef. We use eco-friendly boats, limit visitor numbers, and provide education on reef conservation. Our guides also ensure that all activities are conducted responsibly, minimizing impact on the marine ecosystem.', '2024-07-08 21:36:52', '2024-07-08 21:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `package_itineraries`
--

CREATE TABLE `package_itineraries` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_itineraries`
--

INSERT INTO `package_itineraries` (`id`, `package_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'Day 1', '<p><strong>Morning:</strong><br />1. Arrive at Cairns or Port Douglas and check into your hotel.<br />2. Welcome meeting with the tour guide and fellow travelers.<br /><strong>Afternoon</strong><br />1. Lunch at a local restaurant.<br />2. Visit the Cairns Aquarium to get an introduction to the marine life of the Great Barrier Reef.<br /><strong>Evening</strong><br />1. Free time to explore the local area.<br />2. Welcome dinner at the hotel, with an overview of the tour itinerary and reef conservation briefing.</p>', '2024-07-08 06:02:29', '2024-07-08 06:02:29'),
(2, 3, 'Day 2', '<p><strong>Morning:</strong><br />1. Arrive at Cairns or Port Douglas and check into your hotel.<br />2. Welcome meeting with the tour guide and fellow travelers.<br /><strong>Afternoon</strong><br />1. Lunch at a local restaurant.<br />2. Visit the Cairns Aquarium to get an introduction to the marine life of the Great Barrier Reef.<br /><strong>Evening</strong><br />1. Free time to explore the local area.<br />2. Welcome dinner at the hotel, with an overview of the tour itinerary and reef conservation briefing.</p>', '2024-07-08 06:02:49', '2024-07-08 06:02:49'),
(4, 3, 'Day 3', '<p><strong>Morning:</strong><br />1. Arrive at Cairns or Port Douglas and check into your hotel.<br />2. Welcome meeting with the tour guide and fellow travelers.<br /><strong>Afternoon</strong><br />1. Lunch at a local restaurant.<br />2. Visit the Cairns Aquarium to get an introduction to the marine life of the Great Barrier Reef.<br /><strong>Evening</strong><br />1. Free time to explore the local area.<br />2. Welcome dinner at the hotel, with an overview of the tour itinerary and reef conservation briefing.</p>', '2024-07-08 06:03:33', '2024-07-08 06:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `package_photos`
--

CREATE TABLE `package_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_photos`
--

INSERT INTO `package_photos` (`id`, `package_id`, `photo`, `created_at`, `updated_at`) VALUES
(6, 3, 'package_1720464032.jpg', '2024-07-08 12:40:32', '2024-07-08 12:40:32'),
(7, 3, 'package_1720464042.jpg', '2024-07-08 12:40:42', '2024-07-08 12:40:42'),
(8, 3, 'package_1720464047.jpg', '2024-07-08 12:40:47', '2024-07-08 12:40:47'),
(9, 3, 'package_1720464052.jpg', '2024-07-08 12:40:52', '2024-07-08 12:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `package_videos`
--

CREATE TABLE `package_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_videos`
--

INSERT INTO `package_videos` (`id`, `package_id`, `video`, `created_at`, `updated_at`) VALUES
(4, 3, 'wbNeIn3vVKM', '2024-07-08 12:41:13', '2024-07-08 12:41:13'),
(5, 3, 'DtFxKSH21Qw', '2024-07-08 12:41:18', '2024-07-08 12:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_category_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `blog_category_id`, `title`, `slug`, `short_description`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 3, 'Partnering to create a strong community', 'partnering-create-strong-community', 'In order to create a good community we need to work together. We need to help, support each other and be respectful to each other.', '<p>In order to create a good community we need to work together. We need to help, support each other and be respectful to each other. In order to create a good community we need to work together. We need to help, support each other and be respectful to each other. In order to create a good community we need to work together. We need to help, support each other and be respectful to each other.</p>\r\n<p>In order to create a good community we need to work together. We need to help, support each other and be respectful to each other. In order to create a good community we need to work together. We need to help, support each other and be respectful to each other. In order to create a good community we need to work together. We need to help, support each other and be respectful to each other.</p>', 'post_1720319638.jpg', '2024-07-06 20:33:58', '2024-07-06 20:33:58'),
(2, 2, 'Turning your emergency donation into instant aid', 'turning-emergency-donation-into-instant-aid', 'We are working hard to help the poor people. We are trying to provide them food, shelter, clothing, education and medical assistance.', '<p>We are working hard to help the poor people. We are trying to provide them food, shelter, clothing, education and medical assistance. We are working hard to help the poor people. We are trying to provide them food, shelter, clothing, education and medical assistance. We are working hard to help the poor people. We are trying to provide them food, shelter, clothing, education and medical assistance.</p>\r\n<p>We are working hard to help the poor people. We are trying to provide them food, shelter, clothing, education and medical assistance. We are working hard to help the poor people. We are trying to provide them food, shelter, clothing, education and medical assistance. We are working hard to help the poor people. We are trying to provide them food, shelter, clothing, education and medical assistance.</p>\r\n<p>&nbsp;</p>', 'post_1720319899.jpg', '2024-07-06 20:38:19', '2024-07-06 20:38:19'),
(3, 1, 'Charity provides educational boost for children', 'charity-education-boost-children', 'In order boost the education of the children, we are providing them books, pens, pencils, notebooks and other necessary things.', '<p>In order boost the education of the children, we are providing them books, pens, pencils, notebooks and other necessary things.In order boost the education of the children, we are providing them books, pens, pencils, notebooks and other necessary things.In order boost the education of the children, we are providing them books, pens, pencils, notebooks and other necessary things.</p>\r\n<p>In order boost the education of the children, we are providing them books, pens, pencils, notebooks and other necessary things.In order boost the education of the children, we are providing them books, pens, pencils, notebooks and other necessary things.In order boost the education of the children, we are providing them books, pens, pencils, notebooks and other necessary things.</p>', 'post_1720319942.jpg', '2024-07-06 20:39:02', '2024-07-06 20:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `package_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `package_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 4, 'I am satisfied. Thanks.', '2024-07-10 00:29:44', '2024-07-10 00:29:44'),
(5, 2, 3, 5, 'Awesome support and it was a great tour. I wish to go there again.', '2024-07-10 03:39:51', '2024-07-10 03:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9GSeJb75Wjs3IAgy1CQwm05MZbCJMT1uCR8qe8LT', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiejJUbmVwdjU1NEZQZEtwcWN0VmN5ek5Uc00wSlVJZVhWVkJQZWkxMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1720809577);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_bar_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_bar_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `top_bar_phone`, `top_bar_email`, `footer_address`, `footer_phone`, `footer_email`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `copyright`, `banner`, `created_at`, `updated_at`) VALUES
(1, 'logo_1720806387.png', 'favicon_1720806387.png', '111-222-3356', 'contact@example.com', '34 Antiger Lane, USA, 12937', '111-222-3333', 'contact@example.com', '#', '#', '#', '#', '#', 'Copyright © 2024, TripSummit. All Rights Reserved.', 'banner_1720807992.jpg', '2024-07-12 11:35:20', '2024-07-12 12:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `heading`, `text`, `button_text`, `button_link`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'Trip to Nice Cities', 'Exploring vibrant cities, immersing in diverse cultures, visiting landmarks, savoring local cuisine, and engaging with locals offer unforgettable experiences, enriching your perspective, and creating lasting memories, making city trips unique and invaluable.', 'Read More', '#', 'slider_1720158484.jpg', '2024-07-04 23:48:04', '2024-07-04 23:48:04'),
(3, 'Hire Quality Cars', 'Hire quality cars for a comfortable and reliable journey, ensuring top performance, advanced features, and exceptional service, making every trip smooth, enjoyable, and stress-free, whether for business or leisure travel.', 'Read More', '#', 'slider_1720158513.jpg', '2024-07-04 23:48:33', '2024-07-04 23:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'subscriber1@gmail.com', '', 'Active', '2024-07-11 22:45:42', '2024-07-12 01:57:38'),
(2, 'subscriber2@gmail.com', '', 'Active', '2024-07-12 01:57:56', '2024-07-12 01:58:23'),
(3, 'subscriber3@gmail.com', '', 'Active', '2024-07-12 01:58:09', '2024-07-12 01:58:31'),
(4, 'subscriber4@gmail.com', '267a62b48b4bf8379a566084f7cd808214cc9294956b22c81946d69ab27ad89b', 'Pending', '2024-07-12 02:18:21', '2024-07-12 02:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `slug`, `designation`, `address`, `email`, `phone`, `biography`, `photo`, `facebook`, `twitter`, `linkedin`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'Pat Flynn', 'pat-flynn', 'Founder', '932 Pine Tree Lane, Chevy Chase, MD 20815', 'pat@gmail.com', '111-111-1111', '<div class=\"description\">\r\n<p>Lorem ipsum dolor sit amet, et ius explicari persequeris, an per novum noluisse hendrerit, atqui regione laboramus ea eum. Rebum tractatos ne qui, quis volumus pri an. Vim id idque partem, primis accumsan voluptatum vix ea, id vis zril tibique conclusionemque. Blandit pertinacia in has, cu duo quod deleniti. Vix quas referrentur cu.</p>\r\n<p>Nec purto lobortis ad, mei ea molestie constituto accommodare, deserunt persecuti voluptaria mei ei. In diceret fierent adversarium duo, in homero dissentias vim. Ea nam lucilius liberavisse. At his erant utamur, eam persius laoreet no. Te ubique persecuti usu, cum aliquip aliquando signiferumque eu, ei tale ludus per. Vix at argumentum comprehensam, veri nullam evertitur ne vel.</p>\r\n</div>\r\n<p>&nbsp;</p>', 'team_member_1720311317.jpg', '#', '#', '#', '#', '2024-07-06 18:15:17', '2024-07-06 18:43:10'),
(2, 'David Beckham', 'david-beckham', 'Co-Founder', '932 Pine Tree Lane, Chevy Chase, MD 20815', 'david@gmail.com', '222-222-2222', '<div class=\"description\">\r\n<p>Lorem ipsum dolor sit amet, et ius explicari persequeris, an per novum noluisse hendrerit, atqui regione laboramus ea eum. Rebum tractatos ne qui, quis volumus pri an. Vim id idque partem, primis accumsan voluptatum vix ea, id vis zril tibique conclusionemque. Blandit pertinacia in has, cu duo quod deleniti. Vix quas referrentur cu.</p>\r\n<p>Nec purto lobortis ad, mei ea molestie constituto accommodare, deserunt persecuti voluptaria mei ei. In diceret fierent adversarium duo, in homero dissentias vim. Ea nam lucilius liberavisse. At his erant utamur, eam persius laoreet no. Te ubique persecuti usu, cum aliquip aliquando signiferumque eu, ei tale ludus per. Vix at argumentum comprehensam, veri nullam evertitur ne vel.</p>\r\n</div>\r\n<p>&nbsp;</p>', 'team_member_1720311403.jpg', '#', '#', '#', '#', '2024-07-06 18:16:43', '2024-07-06 18:16:43'),
(3, 'Peter Smith', 'peter-smith', 'CTO', '932 Pine Tree Lane, Chevy Chase, MD 20815', 'peter@gmail.com', '333-333-3333', '<div class=\"description\">\r\n<p>Lorem ipsum dolor sit amet, et ius explicari persequeris, an per novum noluisse hendrerit, atqui regione laboramus ea eum. Rebum tractatos ne qui, quis volumus pri an. Vim id idque partem, primis accumsan voluptatum vix ea, id vis zril tibique conclusionemque. Blandit pertinacia in has, cu duo quod deleniti. Vix quas referrentur cu.</p>\r\n<p>Nec purto lobortis ad, mei ea molestie constituto accommodare, deserunt persecuti voluptaria mei ei. In diceret fierent adversarium duo, in homero dissentias vim. Ea nam lucilius liberavisse. At his erant utamur, eam persius laoreet no. Te ubique persecuti usu, cum aliquip aliquando signiferumque eu, ei tale ludus per. Vix at argumentum comprehensam, veri nullam evertitur ne vel.</p>\r\n</div>\r\n<p>&nbsp;</p>', 'team_member_1720311450.jpg', '#', '#', '#', '#', '2024-07-06 18:17:30', '2024-07-06 18:54:13'),
(4, 'Brent Grundy', 'brent-grundy', 'Tour Manager', '932 Pine Tree Lane, Chevy Chase, MD 20815', 'brent@gmail.com', '444-444-4444', '<div class=\"description\">\r\n<p>Lorem ipsum dolor sit amet, et ius explicari persequeris, an per novum noluisse hendrerit, atqui regione laboramus ea eum. Rebum tractatos ne qui, quis volumus pri an. Vim id idque partem, primis accumsan voluptatum vix ea, id vis zril tibique conclusionemque. Blandit pertinacia in has, cu duo quod deleniti. Vix quas referrentur cu.</p>\r\n<p>Nec purto lobortis ad, mei ea molestie constituto accommodare, deserunt persecuti voluptaria mei ei. In diceret fierent adversarium duo, in homero dissentias vim. Ea nam lucilius liberavisse. At his erant utamur, eam persius laoreet no. Te ubique persecuti usu, cum aliquip aliquando signiferumque eu, ei tale ludus per. Vix at argumentum comprehensam, veri nullam evertitur ne vel.</p>\r\n</div>\r\n<p>&nbsp;</p>', 'team_member_1720311503.jpg', '#', '#', '#', '#', '2024-07-06 18:18:23', '2024-07-06 18:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `term_privacy_items`
--

CREATE TABLE `term_privacy_items` (
  `id` bigint UNSIGNED NOT NULL,
  `term` text COLLATE utf8mb4_unicode_ci,
  `privacy` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_privacy_items`
--

INSERT INTO `term_privacy_items` (`id`, `term`, `privacy`, `created_at`, `updated_at`) VALUES
(1, '<h1>Heading Item</h1>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>\r\n<h2>Heading Item</h2>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>\r\n<h3>Heading Item</h3>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>', '<h1>Heading Item</h1>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>\r\n<h2>Heading Item</h2>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>\r\n<h3>Heading Item</h3>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>', '2024-07-12 06:31:30', '2024-07-12 06:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Brent Grundy', 'Director, ABC Company', 'As a long-time donor, I\'m consistently impressed by this charity\'s transparency and life-changing impact. They provide real support to those in need, making a meaningful difference in various communities. I\'m proud to be a part of their mission and will continue to support their efforts.', 'testimonial_1720284166.jpg', '2024-07-06 10:42:46', '2024-07-06 10:42:46'),
(2, 'Patrick Henderson', 'CEO, BB Company', 'Volunteering with this charity has been a transformative experience. Their unwavering dedication to helping those in need is truly inspiring. I\'m proud to be part of their mission, witnessing the remarkable impact they make. I\'m grateful for the opportunity to contribute to their efforts.', 'testimonial_1720284215.jpg', '2024-07-06 10:43:35', '2024-07-06 10:43:35'),
(3, 'David Beckham', 'Chairman, CC Company', 'This is a very nice website. I like it. This is a very nice website. I like it. This is a very nice website. I like it. This is a very nice website. I like it. This is a very nice website. I like it. This is a very nice website. I like it. This is a very nice website. I like it. This is a very nice website. I like it.', 'testimonial_1720284255.jpg', '2024-07-06 10:44:15', '2024-07-06 10:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `tour_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `package_id`, `tour_start_date`, `tour_end_date`, `booking_end_date`, `total_seat`, `created_at`, `updated_at`) VALUES
(1, 3, '2024-07-27', '2024-07-30', '2024-07-20', '5', '2024-07-09 03:23:50', '2024-07-09 18:39:13'),
(2, 3, '2024-09-13', '2024-09-18', '2024-09-07', '-1', '2024-07-09 03:24:22', '2024-07-09 18:39:09'),
(5, 4, '2024-07-16', '2024-07-20', '2024-07-14', '10', '2024-07-09 18:55:19', '2024-07-09 18:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=pending, 1=active, 2=suspended',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `photo`, `password`, `phone`, `country`, `address`, `state`, `city`, `zip`, `token`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Smith', 'smith@gmail.com', 'user_1720115125.jpg', '$2y$12$wff3DUC48Dv1Tk/akUvBh.UvIMMqlb2jKRVT7AEOghjEcGuS5b1r.', '111-222-3333', 'USA', '34, ABC Street', 'NYC', 'NYC', '91281', '', '1', '2024-07-04 07:29:33', '2024-07-04 11:50:57'),
(3, 'David', 'david@gmail.com', NULL, '$2y$12$0W23ARXb2Nkjdun9vei9TOXdGa5MICi4RWA9O8o0SI8gF2ac5OA0S', NULL, NULL, NULL, NULL, NULL, NULL, '', '1', '2024-07-04 11:48:01', '2024-07-04 11:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `welcome_items`
--

CREATE TABLE `welcome_items` (
  `id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `welcome_items`
--

INSERT INTO `welcome_items` (`id`, `heading`, `description`, `button_text`, `button_link`, `photo`, `video`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to TripSummit', '<p>At TripSummit, our mission is to turn travel dreams into reality by providing personalized and memorable experiences. We leverage our expertise and trusted partners to ensure every trip is seamless and enjoyable. <br /><br />We believe travel fosters personal growth and cultural understanding. Our goal is to help clients explore new destinations and connect with diverse cultures. We promote sustainable travel to positively impact communities and preserve our planet&rsquo;s beauty.</p>', 'Read More', '#', 'welcome_item_1720275719.jpg', 'Rh9Kz2EHKnw', 'Show', '2024-07-06 08:04:03', '2024-07-06 08:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `package_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_items`
--
ALTER TABLE `about_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contact_items`
--
ALTER TABLE `contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter_items`
--
ALTER TABLE `counter_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_photos`
--
ALTER TABLE `destination_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_videos`
--
ALTER TABLE `destination_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_items`
--
ALTER TABLE `home_items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_comments`
--
ALTER TABLE `message_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_amenities`
--
ALTER TABLE `package_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_faqs`
--
ALTER TABLE `package_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_itineraries`
--
ALTER TABLE `package_itineraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_photos`
--
ALTER TABLE `package_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_videos`
--
ALTER TABLE `package_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term_privacy_items`
--
ALTER TABLE `term_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `welcome_items`
--
ALTER TABLE `welcome_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_items`
--
ALTER TABLE `about_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_items`
--
ALTER TABLE `contact_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counter_items`
--
ALTER TABLE `counter_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `destination_photos`
--
ALTER TABLE `destination_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `destination_videos`
--
ALTER TABLE `destination_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_items`
--
ALTER TABLE `home_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message_comments`
--
ALTER TABLE `message_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_amenities`
--
ALTER TABLE `package_amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `package_faqs`
--
ALTER TABLE `package_faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `package_itineraries`
--
ALTER TABLE `package_itineraries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_photos`
--
ALTER TABLE `package_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `package_videos`
--
ALTER TABLE `package_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `term_privacy_items`
--
ALTER TABLE `term_privacy_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `welcome_items`
--
ALTER TABLE `welcome_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
