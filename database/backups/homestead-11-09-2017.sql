-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2017 at 07:40 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `project_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Software', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(2, 'Hardware', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(3, 'Marketting', 2, '2017-09-10 03:34:09', '2017-09-10 03:39:09', NULL),
(4, NULL, 2, '2017-09-10 03:34:09', '2017-09-10 03:34:17', '2017-09-10 03:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phoneNumber`, `organization_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Philip Willms', 'ywindler@example.com', '251.290.7310', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(2, 'Miss Rozella Mueller', 'keebler.wilmer@example.net', '1-385-845-7540', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(3, 'Annabel Stamm', 'raul.schowalter@example.com', '1-793-425-7377', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(4, 'Esmeralda Yundt V', 'hbashirian@example.com', '(391) 648-1220 x40560', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(5, 'Lue Volkman', 'ejacobi@example.net', '791-774-2427', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(6, 'Jodie Schumm', 'labadie.norene@example.org', '1-337-357-3930 x903', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(7, 'Prof. Norma White', 'roslyn.leannon@example.org', '416.233.8496 x1948', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(8, 'Micaela Pollich V', 'iwiegand@example.net', '1-573-597-6161 x244', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(9, 'Demarcus Stark DVM', 'nbogan@example.org', '261.770.0743', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(10, 'Dr. Timmy Streich', 'tess12@example.org', '+1-252-886-1478', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(11, 'June Beer', 'harvey.lakin@example.net', '375.371.2446 x005', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(12, 'Ruth Bernhard', 'katherine68@example.com', '1-767-858-7510 x54011', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(13, 'Marlee Zieme', 'qweber@example.org', '1-635-265-1533', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(14, 'Ophelia Rice', 'ondricka.ena@example.net', '+1 (996) 358-0982', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(15, 'Darren Stanton', 'clara71@example.net', '870-641-7151', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(16, 'Augusta Gutkowski', 'vmiller@example.org', '1-743-409-2991', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(17, 'Ms. Esperanza Bogisich', 'braun.eloy@example.com', '+1 (570) 446-2653', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(18, 'Mr. Chad Stoltenberg III', 'vilma.hammes@example.org', '730.962.1019 x9537', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(19, 'Dr. Amely Cassin DVM', 'bgoldner@example.org', '695.706.3021 x70503', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(20, 'Naomi Tremblay', 'kwhite@example.org', '1-845-725-0670 x5138', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(21, 'Prof. Willy Schneider', 'haley.weimann@example.org', '893-319-5762 x47647', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(22, 'Liam Simonis', 'nrath@example.com', '279-325-1086', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(23, 'Prof. Keven Pfannerstill', 'joyce32@example.com', '793-692-6862', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(24, 'Dillon Veum', 'hyatt.verner@example.com', '1-738-229-8576', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(25, 'Mrs. Eden Hammes', 'anibal.hickle@example.com', '604-224-4013', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(26, 'test', NULL, NULL, NULL, '2017-09-07 12:16:55', '2017-09-07 12:16:55', NULL),
(27, 'asdfasdfsd', NULL, NULL, NULL, '2017-09-07 12:17:20', '2017-09-07 12:17:20', NULL),
(28, 'Barbara Drake', NULL, NULL, NULL, '2017-09-10 03:57:24', '2017-09-10 03:57:24', NULL),
(29, 'Michael (tool library)', NULL, NULL, NULL, '2017-09-10 04:05:13', '2017-09-10 04:05:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_interview`
--

CREATE TABLE `contact_interview` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `interview_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_interview`
--

INSERT INTO `contact_interview` (`id`, `contact_id`, `interview_id`, `created_at`, `updated_at`) VALUES
(1, 9, 12, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(2, 16, 27, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(3, 17, 6, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(4, 2, 38, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(5, 16, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(6, 23, 43, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(7, 15, 18, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(8, 16, 47, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(9, 22, 41, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(10, 1, 27, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(11, 2, 36, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(12, 4, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(13, 8, 34, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(14, 20, 40, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(15, 9, 30, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(16, 11, 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(17, 20, 3, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(18, 20, 4, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(19, 1, 47, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(20, 1, 32, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(21, 21, 50, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(22, 2, 2, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(23, 21, 20, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(24, 18, 30, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(25, 24, 32, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(26, 21, 18, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(27, 19, 3, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(28, 6, 9, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(29, 20, 50, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(30, 5, 33, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(31, 13, 41, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(32, 5, 38, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(33, 9, 19, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(34, 21, 26, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(35, 25, 33, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(36, 22, 47, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(37, 12, 37, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(38, 18, 45, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(39, 11, 35, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(40, 22, 8, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(41, 14, 26, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(42, 23, 11, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(43, 13, 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(44, 12, 40, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(45, 7, 12, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(46, 19, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(47, 5, 23, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(48, 9, 37, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(49, 8, 27, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(50, 18, 17, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(51, 23, 39, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(52, 15, 26, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(53, 6, 25, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(54, 2, 22, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(55, 11, 26, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(56, 5, 36, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(57, 1, 3, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(58, 2, 46, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(59, 2, 48, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(60, 7, 46, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(61, 15, 15, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(62, 16, 30, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(63, 15, 35, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(64, 25, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(65, 21, 48, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(66, 18, 49, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(67, 19, 50, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(68, 16, 3, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(69, 3, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(70, 21, 29, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(71, 17, 42, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(72, 14, 20, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(73, 1, 38, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(74, 21, 4, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(75, 22, 27, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(76, 24, 50, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(77, 10, 12, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(78, 16, 25, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(79, 25, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(80, 2, 38, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(81, 10, 7, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(82, 11, 2, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(83, 25, 46, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(84, 16, 45, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(85, 18, 15, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(86, 1, 18, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(87, 7, 23, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(88, 2, 33, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(89, 10, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(90, 14, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(91, 13, 39, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(92, 14, 48, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(93, 9, 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(94, 10, 9, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(95, 19, 6, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(96, 9, 43, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(97, 9, 14, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(98, 19, 33, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(99, 5, 35, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(100, 19, 47, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(101, 12, 39, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(102, 10, 30, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(103, 3, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(104, 7, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(105, 20, 20, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(106, 1, 44, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(107, 14, 15, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(108, 9, 18, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(109, 4, 35, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(110, 19, 14, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(111, 22, 46, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(112, 13, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(113, 6, 46, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(114, 19, 9, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(115, 3, 29, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(116, 15, 5, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(117, 11, 34, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(118, 12, 39, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(119, 6, 44, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(120, 24, 50, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(121, 9, 15, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(122, 6, 49, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(123, 2, 31, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(124, 20, 37, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(125, 23, 45, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(126, 13, 12, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(127, 3, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(128, 11, 26, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(129, 3, 37, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(130, 25, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(131, 1, 33, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(132, 14, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(133, 17, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(134, 14, 5, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(135, 14, 34, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(136, 10, 23, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(137, 21, 19, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(138, 11, 33, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(139, 25, 41, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(140, 19, 9, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(141, 24, 20, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(142, 15, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(143, 18, 12, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(144, 8, 19, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(145, 23, 15, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(146, 17, 13, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(147, 12, 3, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(148, 25, 5, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(149, 2, 16, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(150, 14, 3, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(152, 26, 51, '2017-09-07 12:17:20', '2017-09-07 12:17:20'),
(153, 27, 51, '2017-09-07 12:17:20', '2017-09-07 12:17:20'),
(156, 28, 53, '2017-09-10 03:58:17', '2017-09-10 03:58:17'),
(157, 29, 54, '2017-09-10 04:05:13', '2017-09-10 04:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Enhanced GUI', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(2, 'Faster software', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(3, 'Sleaker Exterior', 2, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(4, 'Runs cooler', 2, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(5, '', 3, '2017-09-10 03:34:09', '2017-09-10 03:39:09', '2017-09-10 03:39:09'),
(6, '', 4, '2017-09-10 03:34:09', '2017-09-10 03:34:17', '2017-09-10 03:34:17'),
(7, 'Automatic tool to spread the word', 3, '2017-09-10 03:39:09', '2017-09-10 03:39:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feature_interview`
--

CREATE TABLE `feature_interview` (
  `id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL,
  `interview_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_interview`
--

INSERT INTO `feature_interview` (`id`, `feature_id`, `interview_id`, `created_at`, `updated_at`) VALUES
(1, 1, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(2, 3, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(3, 1, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(4, 3, 38, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(5, 4, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(6, 4, 27, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(7, 2, 5, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(8, 4, 36, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(9, 4, 6, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(10, 2, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(11, 1, 47, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(12, 3, 30, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(13, 3, 19, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(14, 4, 12, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(15, 4, 41, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(16, 2, 8, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(17, 4, 2, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(18, 4, 48, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(19, 3, 43, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(20, 1, 48, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(21, 1, 44, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(22, 3, 41, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(23, 2, 17, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(24, 4, 9, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(25, 1, 27, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(26, 2, 9, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(27, 1, 38, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(28, 4, 34, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(29, 1, 37, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(30, 1, 38, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(31, 4, 32, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(32, 4, 11, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(33, 2, 33, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(34, 2, 37, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(35, 3, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(36, 1, 32, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(37, 4, 19, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(38, 3, 8, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(39, 2, 47, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(40, 2, 19, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(41, 2, 11, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(42, 1, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(43, 1, 18, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(44, 3, 46, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(45, 2, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(46, 3, 4, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(47, 2, 34, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(48, 1, 20, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(49, 2, 19, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(50, 1, 50, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(51, 2, 49, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(52, 2, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(53, 3, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(54, 2, 26, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(55, 1, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(56, 3, 6, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(57, 3, 14, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(58, 3, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(59, 3, 10, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(60, 1, 6, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(61, 2, 41, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(62, 2, 35, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(63, 2, 22, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(64, 1, 43, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(65, 1, 25, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(66, 4, 7, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(67, 3, 4, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(68, 1, 35, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(69, 4, 39, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(70, 2, 44, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(71, 2, 8, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(72, 3, 14, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(73, 2, 4, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(74, 4, 36, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(75, 1, 2, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(76, 4, 46, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(77, 2, 14, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(78, 3, 45, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(79, 4, 22, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(80, 3, 43, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(81, 1, 26, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(82, 4, 47, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(83, 3, 34, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(84, 4, 38, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(85, 2, 27, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(86, 3, 18, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(87, 4, 20, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(88, 1, 19, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(89, 3, 24, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(90, 4, 44, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(91, 1, 49, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(92, 3, 9, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(93, 2, 6, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(94, 3, 4, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(95, 4, 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(96, 1, 9, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(97, 2, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(98, 3, 22, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(99, 3, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(100, 2, 21, '2017-09-07 12:16:47', '2017-09-07 12:16:47'),
(102, 7, 54, '2017-09-10 04:05:13', '2017-09-10 04:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interviews`
--

INSERT INTO `interviews` (`id`, `notes`, `date`, `project_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Alice. ''Off with her head!'' Alice glanced rather anxiously at the mushroom for a baby: altogether Alice did not see anything that had made out that she let the Dormouse went on, yawning and rubbing.', '2017-08-11 19:38:53', 1, '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(2, 'I shall be punished for it was indeed: she was talking. ''How CAN I have ordered''; and she very good-naturedly began hunting about for some time with the Gryphon. Alice did not like to show you! A.', '2017-08-22 19:41:40', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(3, 'I think it so quickly that the way of speaking to it,'' she thought, ''and hand round the thistle again; then the other, and making quite a large cauldron which seemed to be patted on the top of her.', '2017-09-09 21:05:34', 1, '2017-09-07 12:16:47', '2017-09-10 04:05:34', '2017-09-10 04:05:34'),
(4, 'Alice didn''t think that very few little girls eat eggs quite as safe to stay in here any longer!'' She waited for a conversation. ''You don''t know of any use, now,'' thought poor Alice, ''when one.', '2017-08-24 10:11:23', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(5, 'Queen. ''Never!'' said the Mock Turtle said with some severity; ''it''s very rude.'' The Hatter was out of this elegant thimble''; and, when it saw Alice. It looked good-natured, she thought: still it had.', '2017-08-08 11:01:11', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(6, 'Mock Turtle in the air: it puzzled her very earnestly, ''Now, Dinah, tell me the truth: did you do either!'' And the Eaglet bent down its head impatiently, and said, ''That''s right, Five! Always lay.', '2017-08-31 02:50:14', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(7, 'White Rabbit, who was beginning very angrily, but the Dormouse sulkily remarked, ''If you please, sir--'' The Rabbit Sends in a great hurry. ''You did!'' said the Pigeon; ''but I must be collected at.', '2017-08-16 01:09:15', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(8, 'Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--"'' ''Found WHAT?'' said the Mock Turtle with a.', '2017-09-01 06:34:21', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(9, 'Queen. ''Sentence first--verdict afterwards.'' ''Stuff and nonsense!'' said Alice sadly. ''Hand it over here,'' said the White Rabbit interrupted: ''UNimportant, your Majesty means, of course,'' the Gryphon.', '2017-08-20 17:02:44', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(10, 'Alice; and Alice looked at the door--I do wish they COULD! I''m sure she''s the best thing to eat some of them bowed low. ''Would you tell me,'' said Alice, who felt very curious sensation, which.', '2017-08-23 21:10:47', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(11, 'But the insolence of his Normans--" How are you getting on?'' said the Gryphon. ''Well, I can''t take more.'' ''You mean you can''t take more.'' ''You mean you can''t help it,'' said Alice timidly. ''Would you.', '2017-08-29 05:36:16', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(12, 'Gryphon, and the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won''t you join the dance?"'' ''Thank you.', '2017-08-08 06:19:13', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(13, 'England the nearer is to find that she was exactly the right distance--but then I wonder what was going to say,'' said the Mouse. ''Of course,'' the Gryphon said, in a very long silence, broken only by.', '2017-08-17 15:00:11', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(14, 'Alice. ''You did,'' said the youth, ''one would hardly suppose That your eye was as much as she wandered about in the pool as it spoke. ''As wet as ever,'' said Alice more boldly: ''you know you''re.', '2017-09-09 21:05:32', 1, '2017-09-07 12:16:47', '2017-09-10 04:05:32', '2017-09-10 04:05:32'),
(15, 'Alice took up the little magic bottle had now had its full effect, and she felt that this could not answer without a cat! It''s the most curious thing I ever saw in my time, but never ONE with such a.', '2017-08-22 09:37:43', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(16, 'SOMEBODY ought to speak, but for a conversation. Alice replied, rather shyly, ''I--I hardly know, sir, just at present--at least I mean what I say,'' the Mock Turtle; ''but it sounds uncommon.', '2017-08-31 06:56:43', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(17, 'I can say.'' This was not a VERY good opportunity for repeating his remark, with variations. ''I shall sit here,'' the Footman went on at last, more calmly, though still sobbing a little scream of.', '2017-08-09 16:39:01', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(18, 'Cheshire Cat,'' said Alice: ''besides, that''s not a moment to be found: all she could not remember the simple and loving heart of her head on her lap as if she were looking up into a pig,'' Alice.', '2017-08-30 05:33:52', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(19, 'As soon as she was not a regular rule: you invented it just grazed his nose, and broke off a little faster?" said a timid voice at her own mind (as well as pigs, and was just in time to avoid.', '2017-08-12 06:50:34', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(20, 'Who for such dainties would not stoop? Soup of the jury consider their verdict,'' the King had said that day. ''A likely story indeed!'' said the Mock Turtle, and to stand on their slates, when the.', '2017-08-28 23:41:05', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(21, 'Cheshire Cat,'' said Alice: ''allow me to him: She gave me a good deal: this fireplace is narrow, to be almost out of the Lizard''s slate-pencil, and the blades of grass, but she knew the right word).', '2017-08-29 16:21:00', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(22, 'Alice soon came upon a time she saw them, they were nowhere to be a person of authority over Alice. ''Stand up and bawled out, "He''s murdering the time! Off with his head!'' she said, as politely as.', '2017-08-21 08:34:20', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(23, 'Said his father; ''don''t give yourself airs! Do you think, at your age, it is to do this, so she went to school in the world you fly, Like a tea-tray in the wood, ''is to grow up again! Let me see:.', '2017-08-17 23:20:31', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(24, 'Alice the moment they saw her, they hurried back to the Hatter. He came in sight of the March Hare meekly replied. ''Yes, but some crumbs must have prizes.'' ''But who has won?'' This question the Dodo.', '2017-08-07 13:24:11', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(25, 'EVER happen in a natural way. ''I thought it over a little three-legged table, all made of solid glass; there was no label this time she found herself safe in a trembling voice:-- ''I passed by his.', '2017-08-22 13:30:07', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(26, 'She waited for a great many more than nine feet high. ''I wish I could say if I shall never get to the Queen. ''You make me smaller, I suppose.'' So she called softly after it, never once considering.', '2017-08-22 21:01:30', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(27, 'I am very tired of this. I vote the young Crab, a little scream, half of fright and half believed herself in a great hurry. ''You did!'' said the Mock Turtle, and to wonder what Latitude or Longitude.', '2017-08-28 21:00:49', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(28, 'Cat. ''I said pig,'' replied Alice; ''and I do so like that curious song about the reason is--'' here the conversation a little. ''''Tis so,'' said the Duchess, digging her sharp little chin. ''I''ve a right.', '2017-08-16 10:55:33', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(29, 'It doesn''t look like it?'' he said. (Which he certainly did NOT, being made entirely of cardboard.) ''All right, so far,'' said the Mock Turtle. ''Certainly not!'' said Alice to herself, being rather.', '2017-08-30 04:38:24', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(30, 'You see the Queen. ''I never was so large a house, that she tipped over the verses to himself: ''"WE KNOW IT TO BE TRUE--" that''s the jury-box,'' thought Alice, ''they''re sure to do it.'' (And, as you.', '2017-08-23 21:29:08', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(31, 'Then followed the Knave of Hearts, who only bowed and smiled in reply. ''Please come back with the Queen, in a trembling voice:-- ''I passed by his face only, she would have made a rush at Alice the.', '2017-08-10 13:25:35', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(32, 'He only does it to half-past one as long as there seemed to be rude, so she turned away. ''Come back!'' the Caterpillar angrily, rearing itself upright as it settled down in an impatient tone:.', '2017-09-05 01:25:22', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(33, 'Let me see--how IS it to be a book of rules for shutting people up like telescopes: this time the Queen ordering off her unfortunate guests to execution--once more the shriek of the crowd below, and.', '2017-08-16 10:30:02', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(34, 'The Footman seemed to Alice again. ''No, I didn''t,'' said Alice: ''she''s so extremely--'' Just then her head pressing against the roof of the month is it?'' The Gryphon lifted up both its paws in.', '2017-08-12 23:20:40', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(35, 'King triumphantly, pointing to the beginning of the garden: the roses growing on it except a tiny golden key, and unlocking the door and found in it a very deep well. Either the well was very nearly.', '2017-08-09 07:47:09', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(36, 'Mock Turtle, capering wildly about. ''Change lobsters again!'' yelled the Gryphon added ''Come, let''s try the first witness,'' said the Mock Turtle. ''Hold your tongue!'' said the Hatter. He had been.', '2017-08-23 10:47:33', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(37, 'France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not, would not, could not, would not, could not help thinking there MUST be more to be lost, as she swam.', '2017-08-08 22:14:20', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(38, 'King replied. Here the Queen was in such a wretched height to be.'' ''It is wrong from beginning to feel a little startled when she went on at last, and managed to swallow a morsel of the house if it.', '2017-08-20 07:29:48', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(39, 'ALL RETURNED FROM HIM TO YOU,"'' said Alice. ''Why?'' ''IT DOES THE BOOTS AND SHOES.'' the Gryphon only answered ''Come on!'' and ran off, thinking while she remembered that she ran off at once in her.', '2017-08-25 13:32:54', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(40, 'Queen''s shrill cries to the Gryphon. ''It''s all his fancy, that: they never executes nobody, you know. Come on!'' ''Everybody says "come on!" here,'' thought Alice, ''they''re sure to kill it in the.', '2017-08-16 04:12:42', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(41, 'Cat; and this Alice thought decidedly uncivil. ''But perhaps he can''t help it,'' she thought, and it was labelled ''ORANGE MARMALADE'', but to open them again, and Alice was so long since she had.', '2017-08-30 12:03:34', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(42, 'If I or she fell past it. ''Well!'' thought Alice to herself, ''because of his shrill little voice, the name ''W. RABBIT'' engraved upon it. She felt very lonely and low-spirited. In a minute or two, she.', '2017-08-14 08:47:15', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(43, 'I don''t know the meaning of half those long words, and, what''s more, I don''t know the way YOU manage?'' Alice asked. The Hatter opened his eyes very wide on hearing this; but all he SAID was, ''Why is.', '2017-08-31 05:12:38', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(44, 'Duchess asked, with another hedgehog, which seemed to rise like a snout than a rat-hole: she knelt down and make one repeat lessons!'' thought Alice; ''but when you come to the porpoise, "Keep back.', '2017-08-09 11:45:11', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(45, 'I''m perfectly sure I have ordered''; and she hastily dried her eyes to see the Hatter went on all the rest, Between yourself and me.'' ''That''s the reason and all sorts of little animals and birds.', '2017-08-09 04:07:34', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(46, 'So she began shrinking directly. As soon as look at the Queen, but she knew that it led into a pig,'' Alice quietly said, just as usual. I wonder if I fell off the cake. * * * * * * * * * * * * *.', '2017-08-24 07:21:27', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(47, 'Pigeon, raising its voice to a lobster--'' (Alice began to tremble. Alice looked round, eager to see if she had grown in the wind, and the White Rabbit blew three blasts on the hearth and grinning.', '2017-08-15 07:38:57', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(48, 'The Queen smiled and passed on. ''Who ARE you doing out here? Run home this moment, and fetch me a good character, But said I could let you out, you know.'' Alice had no idea how to set about it; if.', '2017-09-04 13:03:29', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(49, 'It doesn''t look like one, but the great question is, what?'' The great question certainly was, what? Alice looked round, eager to see if she was a large caterpillar, that was linked into hers began.', '2017-08-26 08:14:54', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(50, 'Queen. ''I haven''t opened it yet,'' said Alice; ''I can''t explain MYSELF, I''m afraid, sir'' said Alice, feeling very glad she had put on one of them were animals, and some of the hall: in fact she was.', '2017-08-11 19:19:47', 1, '2017-09-07 12:16:47', '2017-09-07 12:16:47', NULL),
(51, 'asdfs', '2017-09-09 21:05:29', 1, '2017-09-07 12:16:55', '2017-09-10 04:05:29', '2017-09-10 04:05:29'),
(52, 'fdsa', '2017-09-09 21:05:19', 1, '2017-09-07 12:17:06', '2017-09-10 04:05:19', '2017-09-10 04:05:19'),
(53, '- Renovations done through single person contractors. They hire more help when they need it.\r\n- Contractors have tight timelines. Do not have flexibility to do huge jobs with new technology\r\n- When designing a big project (renovating kitchen or bathroom), work starts with a designer\r\n- Making designs is a collaborative project. Upselling is common when it comes to nice materials or newer appliances\r\n- A larger renovator includes Royal Renovations. They may be more interested\r\n\r\n- When discussing possible uses, the most common ones are:\r\n1) Peace of mind through additional security (motion sensors, video cameras, automatic lights). Not a huge selling point in a small, safe town\r\n2) Time savings. Automated window blinds or automatic wall outlet timers could save time from my mom''s routine of adjusting window blinds or using xmas lights\r\n\r\nInteresting point:\r\nHome automation already exists for significant pain points including: \r\n1) Garage door openers\r\n2) Mechanical wall outlet timers\r\n3) Light dimmers (not really automated as more flexible control)\r\nA home automation solution must some additional value over the existing solutions.', '2017-09-05 07:00:00', 3, '2017-09-10 03:57:24', '2017-09-10 03:58:17', NULL),
(54, '-Seasonal trends in tools (power washer in the summer)\r\n-No budget for marketting. The biggest thing preventing growth is spreading the word and they only have word-of-mouth right now\r\n-Roughly $50k in revenue and $50k in expenses for 2016\r\n-This is a huge increase from previous year (2015 they we around $35k for both\r\n-2k members\r\n-They host regular workshops\r\n-Mainly use two software packages, one for accounts and one for payments. I did not get their names :(', '2017-09-07 07:00:00', 2, '2017-09-10 04:05:13', '2017-09-10 04:05:13', NULL);

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
(191, '2014_10_12_000000_create_users_table', 1),
(192, '2014_10_12_100000_create_password_resets_table', 1),
(193, '2017_09_04_001509_make_organization_table', 1),
(194, '2017_09_04_001528_make_contact_table', 1),
(195, '2017_09_04_001606_make_project_table', 1),
(196, '2017_09_04_001607_make_interview_table', 1),
(197, '2017_09_04_001645_make_category_table', 1),
(198, '2017_09_04_001657_make_feature_table', 1),
(199, '2017_09_04_001721_make_pivot_feature_interview_table', 1),
(200, '2017_09_04_001741_make_pivot_contact_interview_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Acme Corporation', '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Amazing Widgit!', 'This is an amazing widgit that will blow everyone off the ground! The value proposition is to solve the painpoint of all consumers!', '2017-09-07 12:16:46', '2017-09-07 12:16:46', NULL),
(2, 'Tool Library', 'Tool libraries are sprining up across the country and growing in popularity. What are the biggest problems they face and is there space for a product that could help them improve?', '2017-09-10 03:33:01', '2017-09-10 03:39:09', NULL),
(3, 'Home Automation', 'Sensors are cheap. Managing big data is cheap. Why aren''t more people adopting this in their homes?', '2017-09-10 03:41:28', '2017-09-10 03:41:28', NULL);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_project_id_foreign` (`project_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_organization_id_foreign` (`organization_id`);

--
-- Indexes for table `contact_interview`
--
ALTER TABLE `contact_interview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_interview_contact_id_foreign` (`contact_id`),
  ADD KEY `contact_interview_interview_id_foreign` (`interview_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_category_id_foreign` (`category_id`);

--
-- Indexes for table `feature_interview`
--
ALTER TABLE `feature_interview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_interview_feature_id_foreign` (`feature_id`),
  ADD KEY `feature_interview_interview_id_foreign` (`interview_id`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviews_project_id_foreign` (`project_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `contact_interview`
--
ALTER TABLE `contact_interview`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feature_interview`
--
ALTER TABLE `feature_interview`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`);

--
-- Constraints for table `contact_interview`
--
ALTER TABLE `contact_interview`
  ADD CONSTRAINT `contact_interview_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `contact_interview_interview_id_foreign` FOREIGN KEY (`interview_id`) REFERENCES `interviews` (`id`);

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `feature_interview`
--
ALTER TABLE `feature_interview`
  ADD CONSTRAINT `feature_interview_feature_id_foreign` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`),
  ADD CONSTRAINT `feature_interview_interview_id_foreign` FOREIGN KEY (`interview_id`) REFERENCES `interviews` (`id`);

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `interviews_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
