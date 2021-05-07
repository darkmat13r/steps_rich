-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2021 at 02:11 PM
-- Server version: 5.7.34
-- PHP Version: 7.3.27
DROP DATABASE ugoku;
CREATE DATABASE ugoku;
USE ugoku;
SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `armadadi_walklah`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('steps') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'steps',
  `value` int(11) NOT NULL DEFAULT '0',
  `offset` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `type`, `value`, `offset`, `user_id`, `created_at`, `updated_at`) VALUES
(61, 'steps', 60, 0, 10, '2021-02-07 04:43:23', '2021-02-07 04:43:23'),
(62, 'steps', 60, 0, 10, '2021-02-07 04:43:23', '2021-02-07 05:06:05'),
(74, 'steps', 226, 0, 17, '2021-02-08 02:24:47', '2021-02-08 15:46:14'),
(76, 'steps', 515, 0, 10, '2021-02-08 03:33:45', '2021-02-08 09:48:31'),
(83, 'steps', 89, 0, 10, '2021-02-08 20:12:51', '2021-02-09 09:47:09'),
(86, 'steps', 4500, 0, 17, '2021-02-09 16:08:51', '2021-02-09 16:08:51'),
(87, 'steps', 4013, 0, 17, '2021-02-09 16:08:51', '2021-02-10 12:17:25'),
(90, 'steps', 60, 0, 10, '2021-02-09 21:53:26', '2021-02-09 21:53:26'),
(91, 'steps', 186, 0, 10, '2021-02-09 21:53:26', '2021-02-10 09:46:40'),
(97, 'steps', 20, 0, 10, '2021-02-10 20:42:25', '2021-02-11 12:07:11'),
(100, 'steps', 4776, 0, 17, '2021-02-08 16:01:20', '2021-02-09 08:57:58'),
(101, 'steps', 4800, 0, 17, '2021-02-11 18:46:48', '2021-02-12 06:33:04'),
(102, 'steps', 4000, 0, 17, '2021-02-11 10:48:47', '2021-02-11 10:48:47'),
(104, 'steps', 49, 0, 10, '2021-02-11 16:03:57', '2021-02-11 20:24:34'),
(109, 'steps', 237, 0, 10, '2021-02-12 16:24:47', '2021-02-13 11:30:40'),
(110, 'steps', 1415, 0, 17, '2021-02-12 17:02:39', '2021-02-13 15:57:13'),
(116, 'steps', 247, 0, 10, '2021-02-13 16:02:03', '2021-02-14 15:03:01'),
(117, 'steps', 816, 0, 17, '2021-02-13 16:22:28', '2021-02-14 14:25:02'),
(120, 'steps', 55555, 0, 10, '2021-02-07 17:44:27', NULL),
(121, 'steps', 55555, 0, 10, '2021-02-08 17:44:27', NULL),
(122, 'steps', 55555, 0, 10, '2021-02-09 17:44:27', NULL),
(123, 'steps', 55555, 0, 10, '2021-02-09 17:44:27', NULL),
(124, 'steps', 55555, 0, 10, '2021-02-08 17:44:27', NULL),
(129, 'steps', 5025, 0, 17, '2021-02-14 16:19:28', '2021-02-15 14:35:47'),
(135, 'steps', 5000, 0, 17, '2021-02-15 16:40:13', '2021-02-16 14:20:58'),
(141, 'steps', 149, 0, 10, '2021-02-16 05:58:02', '2021-02-16 15:20:01'),
(142, 'steps', 5000, 0, 17, '2021-02-16 16:12:58', '2021-02-17 08:02:10'),
(164, 'steps', 70, 0, 10, '2021-02-18 12:07:43', '2021-02-18 14:37:43'),
(166, 'steps', 2197, 0, 17, '2021-02-18 17:42:58', '2021-02-19 15:05:23'),
(177, 'steps', 97, 0, 10, '2021-02-19 02:29:05', '2021-02-19 15:22:58'),
(186, 'steps', 279, 0, 17, '2021-02-19 16:19:31', '2021-02-20 15:15:49'),
(195, 'steps', 125, 0, 10, '2021-02-20 01:19:03', '2021-02-20 15:06:08'),
(200, 'steps', 756, 0, 17, '2021-02-20 16:21:58', '2021-02-21 15:24:01'),
(204, 'steps', 4127, 0, 10, '2021-02-20 17:36:15', '2021-02-21 15:16:22'),
(217, 'steps', 6505, 0, 17, '2021-02-21 18:12:16', '2021-02-22 14:37:58'),
(224, 'steps', 35, 0, 10, '2021-02-21 23:03:34', '2021-02-21 23:03:34'),
(228, 'steps', 1328, 0, 17, '2021-02-22 16:07:10', '2021-02-23 14:11:58'),
(243, 'steps', 8547, 0, 10, '2021-02-23 05:29:41', '2021-02-23 15:30:19'),
(246, 'steps', 6509, 0, 17, '2021-02-23 16:09:12', '2021-02-24 15:01:43'),
(260, 'steps', 2697, 0, 10, '2021-02-24 00:45:55', '2021-02-24 15:42:48'),
(263, 'steps', 1513, 0, 17, '2021-02-24 16:17:03', '2021-02-25 11:35:12'),
(267, 'steps', 4603, 0, 10, '2021-02-24 16:42:59', '2021-02-25 15:51:31'),
(282, 'steps', 6550, 0, 17, '2021-02-25 16:39:12', '2021-02-26 15:10:23'),
(283, 'steps', 1947, 0, 10, '2021-02-25 16:21:31', '2021-02-26 15:17:04'),
(293, 'steps', 10, 0, 17, '2021-02-26 16:19:55', '2021-02-26 16:19:55'),
(294, 'steps', 214, 0, 17, '2021-02-26 16:19:55', '2021-02-27 14:51:18'),
(298, 'steps', 12, 0, 10, '2021-02-26 16:33:07', '2021-02-26 16:33:07'),
(299, 'steps', 1672, 0, 10, '2021-02-26 16:33:07', '2021-02-27 15:48:38'),
(314, 'steps', 1612, 0, 17, '2021-02-27 16:51:19', '2021-02-28 15:21:33'),
(316, 'steps', 6064, 0, 10, '2021-02-27 16:19:20', '2021-02-28 15:42:33'),
(330, 'steps', 2557, 0, 17, '2021-02-28 16:14:14', '2021-03-01 15:29:29'),
(335, 'steps', 3071, 0, 10, '2021-02-28 16:05:11', '2021-03-01 08:44:27'),
(349, 'steps', 1491, 0, 17, '2021-03-01 17:09:33', '2021-03-02 14:44:17'),
(361, 'steps', 91, 0, 10, '2021-03-02 03:00:46', '2021-03-02 08:17:23'),
(363, 'steps', 1717, 0, 17, '2021-03-02 16:23:48', '2021-03-03 14:31:09'),
(376, 'steps', 6127, 0, 10, '2021-03-03 01:58:25', '2021-03-03 14:15:43'),
(380, 'steps', 1025, 0, 17, '2021-03-03 16:38:52', '2021-03-04 14:14:16'),
(392, 'steps', 86, 0, 10, '2021-03-04 01:00:47', '2021-03-04 13:37:28'),
(396, 'steps', 792, 0, 17, '2021-03-04 16:35:43', '2021-03-05 14:37:25'),
(398, 'steps', 262, 0, 10, '2021-03-04 16:50:10', '2021-03-05 14:50:32'),
(413, 'steps', 1243, 0, 17, '2021-03-05 16:32:24', '2021-03-06 15:53:45'),
(422, 'steps', 364, 0, 10, '2021-03-05 23:57:31', '2021-03-06 08:52:21'),
(430, 'steps', 1949, 0, 17, '2021-03-06 16:28:09', '2021-03-07 13:12:08'),
(432, 'steps', 66, 0, 10, '2021-03-06 16:19:27', '2021-03-07 00:32:43'),
(445, 'steps', 3454, 0, 17, '2021-03-07 16:29:27', '2021-03-08 12:47:21'),
(456, 'steps', 55, 0, 10, '2021-03-08 02:33:11', '2021-03-08 15:12:15'),
(463, 'steps', 613, 0, 17, '2021-03-08 16:33:51', '2021-03-09 15:29:24'),
(466, 'steps', 38, 0, 10, '2021-03-09 01:53:51', '2021-03-09 05:39:20'),
(467, 'steps', 10, 0, 10, '2021-03-09 18:06:18', '2021-03-09 18:06:18'),
(468, 'steps', 10, 0, 10, '2021-03-09 18:06:18', '2021-03-09 18:06:18'),
(469, 'steps', 10, 0, 10, '2021-03-09 18:06:18', '2021-03-09 18:06:18'),
(470, 'steps', 123, 0, 10, '2021-03-09 18:06:18', '2021-03-10 14:42:30'),
(471, 'steps', 5606, 0, 17, '2021-03-09 23:21:21', '2021-03-10 15:12:25'),
(474, 'steps', 3901, 0, 17, '2021-03-11 00:27:55', '2021-03-11 14:51:37'),
(475, 'steps', 135, 0, 10, '2021-03-11 01:10:41', '2021-03-11 14:39:41'),
(476, 'steps', 36, 0, 17, '2021-03-12 00:29:33', '2021-03-12 00:29:33'),
(477, 'steps', 2491, 0, 17, '2021-03-12 00:29:33', '2021-03-12 13:30:34'),
(478, 'steps', 16, 0, NULL, '2021-03-12 02:46:05', '2021-03-12 02:46:05'),
(479, 'steps', 27, 0, 10, '2021-03-12 01:55:27', '2021-03-12 01:55:27'),
(480, 'steps', 5359, 0, 17, '2021-03-12 16:03:12', '2021-03-13 14:01:03'),
(481, 'steps', 33, 0, 17, '2021-03-14 02:35:13', '2021-03-14 02:35:13'),
(482, 'steps', 33, 0, 17, '2021-03-14 02:35:13', '2021-03-14 02:35:13'),
(483, 'steps', 955, 0, 17, '2021-03-14 02:35:13', '2021-03-14 15:13:03'),
(487, 'steps', 2496, 0, 17, '2021-03-14 23:25:20', '2021-03-15 15:06:18'),
(488, 'steps', 3272, 0, 51, '2021-03-15 03:20:15', '2021-03-15 15:11:41'),
(489, 'steps', 1156, 0, NULL, '2021-03-15 03:35:53', '2021-03-15 03:39:37'),
(490, 'steps', 2963, 0, 56, '2021-03-15 03:46:03', '2021-03-15 14:39:42'),
(493, 'steps', 2822, 0, 57, '2021-03-15 03:59:21', '2021-03-15 14:38:56'),
(495, 'steps', 42, 0, 10, '2021-03-15 07:11:00', '2021-03-15 15:16:25'),
(496, 'steps', 2011, 0, 59, '2021-03-15 11:44:35', '2021-03-15 15:25:59'),
(497, 'steps', 26, 0, 62, '2021-03-15 15:57:11', '2021-03-15 15:57:11'),
(498, 'steps', 9685, 0, 62, '2021-03-15 16:02:36', '2021-03-16 15:19:16'),
(499, 'steps', 3961, 0, 56, '2021-03-15 16:40:44', '2021-03-16 14:34:18'),
(500, 'steps', 3631, 0, 51, '2021-03-15 21:59:53', '2021-03-16 12:46:52'),
(502, 'steps', 3955, 0, 17, '2021-03-15 23:34:23', '2021-03-16 15:24:54'),
(503, 'steps', 3913, 0, 59, '2021-03-16 00:11:53', '2021-03-16 11:17:36'),
(505, 'steps', 6726, 0, 57, '2021-03-16 01:08:31', '2021-03-16 12:49:37'),
(506, 'steps', 9010, 0, 64, '2021-03-16 01:40:34', '2021-03-16 15:12:37'),
(507, 'steps', 4394, 0, 65, '2021-03-16 03:15:50', '2021-03-16 13:19:13'),
(508, 'steps', 147, 0, 10, '2021-03-16 01:17:33', '2021-03-16 15:17:50'),
(509, 'steps', 988, 0, 66, '2021-03-16 08:08:29', '2021-03-16 14:09:32'),
(512, 'steps', 354, 0, 56, '2021-03-16 17:23:03', '2021-03-17 15:38:32'),
(513, 'steps', 4418, 0, 65, '2021-03-16 17:56:03', '2021-03-17 13:33:28'),
(514, 'steps', 1034, 0, 17, '2021-03-16 18:03:19', '2021-03-17 13:20:57'),
(515, 'steps', 6153, 0, 51, '2021-03-16 21:49:24', '2021-03-17 14:04:36'),
(516, 'steps', 606, 0, 62, '2021-03-16 22:00:38', '2021-03-17 15:32:30'),
(517, 'steps', 3966, 0, 66, '2021-03-16 22:44:08', '2021-03-17 15:16:48'),
(519, 'steps', 2854, 0, 57, '2021-03-16 22:51:39', '2021-03-17 13:38:19'),
(520, 'steps', 12271, 0, 64, '2021-03-16 23:22:12', '2021-03-17 14:14:38'),
(521, 'steps', 60, 0, 10, '2021-03-17 02:06:22', '2021-03-17 07:21:24'),
(522, 'steps', 2381, 0, 59, '2021-03-17 04:56:44', '2021-03-17 08:54:02'),
(523, 'steps', 1342, 0, 62, '2021-03-17 16:05:12', '2021-03-18 14:23:54'),
(524, 'steps', 10273, 0, 63, '2021-03-17 16:48:33', '2021-03-18 09:50:21'),
(525, 'steps', 32, 0, 10, '2021-03-17 16:57:11', '2021-03-18 01:16:44'),
(526, 'steps', 8377, 0, 64, '2021-03-17 20:00:22', '2021-03-18 15:57:15'),
(528, 'steps', 5723, 0, 56, '2021-03-17 22:35:07', '2021-03-18 11:30:04'),
(529, 'steps', 2612, 0, 65, '2021-03-17 23:02:16', '2021-03-18 12:30:03'),
(531, 'steps', 14, 0, 66, '2021-03-17 23:16:26', '2021-03-17 23:16:26'),
(532, 'steps', 8003, 0, 66, '2021-03-17 23:16:26', '2021-03-18 15:25:43'),
(533, 'steps', 6959, 0, 51, '2021-03-17 23:17:31', '2021-03-18 15:54:20'),
(535, 'steps', 1981, 0, 17, '2021-03-17 23:55:21', '2021-03-18 15:56:52'),
(536, 'steps', 20, 0, 57, '2021-03-18 00:34:02', '2021-03-18 00:34:02'),
(537, 'steps', 6436, 0, 57, '2021-03-18 00:34:02', '2021-03-18 14:42:57'),
(538, 'steps', 114, 0, 70, '2021-03-18 05:49:34', '2021-03-18 15:32:46'),
(539, 'steps', 73, 0, 49, '2021-03-18 12:54:26', '2021-03-18 12:54:26'),
(540, 'steps', 29744, 0, 64, '2021-03-18 16:27:44', '2021-03-19 14:32:24'),
(541, 'steps', 8646, 0, 62, '2021-03-18 16:46:41', '2021-03-19 03:07:36'),
(543, 'steps', 7741, 0, 57, '2021-03-18 22:08:30', '2021-03-19 11:59:23'),
(544, 'steps', 10714, 0, 51, '2021-03-18 22:09:08', '2021-03-19 14:52:54'),
(545, 'steps', 4533, 0, 66, '2021-03-18 22:50:32', '2021-03-19 14:36:33'),
(546, 'steps', 4302, 0, 17, '2021-03-18 23:23:34', '2021-03-19 15:51:19'),
(548, 'steps', 4541, 0, 65, '2021-03-19 01:23:41', '2021-03-19 14:09:15'),
(549, 'steps', 7102, 0, 56, '2021-03-19 02:21:21', '2021-03-19 13:31:58'),
(550, 'steps', 21568, 0, 63, '2021-03-19 03:24:39', '2021-03-19 14:03:29'),
(551, 'steps', 205, 0, 70, '2021-03-19 04:01:29', '2021-03-19 13:36:53'),
(553, 'steps', 1423, 0, 17, '2021-03-19 16:21:21', '2021-03-20 15:37:17'),
(555, 'steps', 7, 0, 51, '2021-03-19 21:16:49', '2021-03-19 21:16:49'),
(556, 'steps', 9125, 0, 51, '2021-03-19 21:16:49', '2021-03-20 13:10:16'),
(557, 'steps', 23243, 0, 66, '2021-03-19 22:23:17', '2021-03-20 15:45:54'),
(559, 'steps', 3231, 0, 57, '2021-03-19 23:41:57', '2021-03-20 14:29:58'),
(560, 'steps', 6043, 0, 56, '2021-03-20 00:54:38', '2021-03-20 15:30:34'),
(561, 'steps', 11288, 0, 64, '2021-03-20 02:19:05', '2021-03-20 14:52:53'),
(562, 'steps', 7679, 0, 65, '2021-03-20 02:35:13', '2021-03-20 15:20:21'),
(563, 'steps', 42, 0, 70, '2021-03-20 01:16:32', '2021-03-20 01:16:32'),
(564, 'steps', 5102, 0, 62, '2021-03-20 06:57:36', '2021-03-20 13:55:50'),
(565, 'steps', 26, 0, 10, '2021-03-20 06:08:31', '2021-03-20 09:48:26'),
(566, 'steps', 182, 0, 72, '2021-03-20 09:58:51', '2021-03-20 13:26:38'),
(567, 'steps', 9473, 0, 65, '2021-03-20 16:00:01', '2021-03-21 14:04:43'),
(568, 'steps', 3714, 0, 56, '2021-03-20 16:01:10', '2021-03-21 15:52:13'),
(569, 'steps', 3282, 0, 17, '2021-03-20 17:00:09', '2021-03-21 14:51:42'),
(570, 'steps', 48, 0, 72, '2021-03-20 17:33:33', '2021-03-21 11:42:36'),
(572, 'steps', 4399, 0, 64, '2021-03-20 23:18:30', '2021-03-21 14:35:11'),
(573, 'steps', 4748, 0, 51, '2021-03-20 23:33:19', '2021-03-21 15:15:29'),
(574, 'steps', 1329, 0, 57, '2021-03-20 23:48:04', '2021-03-21 15:21:08'),
(575, 'steps', 1267, 0, 66, '2021-03-21 03:55:54', '2021-03-21 15:04:30'),
(578, 'steps', 2851, 0, 51, '2021-03-21 16:10:05', '2021-03-22 15:33:50'),
(579, 'steps', 11, 0, 72, '2021-03-21 17:19:53', '2021-03-21 17:19:53'),
(580, 'steps', 11, 0, 72, '2021-03-21 17:19:53', '2021-03-21 17:19:53'),
(581, 'steps', 11, 0, 72, '2021-03-21 17:19:53', '2021-03-21 17:19:53'),
(582, 'steps', 127, 0, 72, '2021-03-21 17:19:53', '2021-03-22 15:12:42'),
(583, 'steps', 8678, 0, 64, '2021-03-21 20:57:53', '2021-03-22 14:10:44'),
(585, 'steps', 5221, 0, 66, '2021-03-21 22:55:15', '2021-03-22 15:12:47'),
(586, 'steps', 1414, 0, 17, '2021-03-21 23:46:29', '2021-03-22 15:27:59'),
(588, 'steps', 5133, 0, 56, '2021-03-21 23:58:13', '2021-03-22 14:50:34'),
(589, 'steps', 4014, 0, 65, '2021-03-22 00:20:11', '2021-03-22 12:04:55'),
(590, 'steps', 2396, 0, 57, '2021-03-22 00:21:23', '2021-03-22 14:12:28'),
(592, 'steps', 2049, 0, 59, '2021-03-22 02:23:12', '2021-03-22 03:33:01'),
(593, 'steps', 1892, 0, 61, '2021-03-22 03:43:27', '2021-03-22 15:48:59'),
(594, 'steps', 1656, 0, 62, '2021-03-22 06:08:34', '2021-03-22 14:18:19'),
(595, 'steps', 14932, 0, 62, '2021-03-22 16:19:03', '2021-03-23 15:47:31'),
(596, 'steps', 3198, 0, 57, '2021-03-22 19:12:02', '2021-03-23 12:24:15'),
(597, 'steps', 5124, 0, 65, '2021-03-22 19:23:32', '2021-03-23 14:47:19'),
(598, 'steps', 140, 0, 72, '2021-03-22 17:13:18', '2021-03-23 14:21:47'),
(599, 'steps', 2326, 0, 66, '2021-03-22 21:55:38', '2021-03-23 15:41:05'),
(600, 'steps', 1539, 0, 51, '2021-03-22 22:17:31', '2021-03-23 15:17:54'),
(601, 'steps', 3065, 0, 61, '2021-03-22 22:29:27', '2021-03-23 13:02:24'),
(602, 'steps', 3166, 0, 56, '2021-03-22 22:37:23', '2021-03-23 12:51:01'),
(603, 'steps', 1909, 0, 17, '2021-03-23 00:31:59', '2021-03-23 15:26:51'),
(604, 'steps', 5256, 0, 64, '2021-03-23 00:33:22', '2021-03-23 15:36:21'),
(605, 'steps', 1994, 0, 59, '2021-03-23 00:33:23', '2021-03-23 10:15:43'),
(607, 'steps', 1231, 0, 17, '2021-03-23 17:33:02', '2021-03-24 13:50:03'),
(608, 'steps', 6546, 0, 65, '2021-03-23 19:24:36', '2021-03-24 13:24:34'),
(609, 'steps', 2492, 0, 62, '2021-03-23 20:12:08', '2021-03-24 15:49:48'),
(610, 'steps', 4281, 0, 51, '2021-03-23 22:12:12', '2021-03-24 14:24:02'),
(611, 'steps', 4229, 0, 57, '2021-03-23 22:52:00', '2021-03-24 14:56:48'),
(612, 'steps', 1932, 0, 66, '2021-03-23 23:22:40', '2021-03-24 15:33:09'),
(614, 'steps', 124, 0, 61, '2021-03-23 23:50:02', '2021-03-23 23:50:02'),
(615, 'steps', 2517, 0, 61, '2021-03-23 23:50:02', '2021-03-24 15:48:44'),
(616, 'steps', 44, 0, 56, '2021-03-24 00:44:38', '2021-03-24 00:44:38'),
(617, 'steps', 6551, 0, 56, '2021-03-24 00:44:38', '2021-03-24 14:50:29'),
(618, 'steps', 3144, 0, 59, '2021-03-24 01:01:21', '2021-03-24 07:42:06'),
(619, 'steps', 10987, 0, 64, '2021-03-24 01:37:04', '2021-03-24 15:00:03'),
(620, 'steps', 131, 0, 72, '2021-03-24 01:09:19', '2021-03-24 09:47:44'),
(622, 'steps', 2881, 0, 62, '2021-03-24 16:49:50', '2021-03-25 10:56:01'),
(623, 'steps', 131, 0, 72, '2021-03-24 16:00:06', '2021-03-24 16:00:06'),
(626, 'steps', 6739, 0, 51, '2021-03-24 22:10:11', '2021-03-25 15:00:04'),
(627, 'steps', 5434, 0, 66, '2021-03-24 22:41:10', '2021-03-25 15:18:04'),
(628, 'steps', 1468, 0, 17, '2021-03-24 23:24:28', '2021-03-25 05:49:03'),
(629, 'steps', 3012, 0, 61, '2021-03-24 23:45:45', '2021-03-25 13:49:29'),
(630, 'steps', 2265, 0, 57, '2021-03-25 00:28:15', '2021-03-25 14:34:56'),
(631, 'steps', 3310, 0, 56, '2021-03-25 00:50:01', '2021-03-25 15:27:53'),
(632, 'steps', 2709, 0, 65, '2021-03-25 01:18:05', '2021-03-25 14:49:58'),
(633, 'steps', 3934, 0, 64, '2021-03-25 01:39:29', '2021-03-25 15:55:00'),
(634, 'steps', 3329, 0, 56, '2021-03-25 16:01:50', '2021-03-26 15:10:14'),
(635, 'steps', 6881, 0, 64, '2021-03-25 16:23:11', '2021-03-26 13:45:52'),
(636, 'steps', 4807, 0, 51, '2021-03-25 22:01:15', '2021-03-26 14:21:21'),
(637, 'steps', 1640, 0, 61, '2021-03-25 22:58:25', '2021-03-26 12:30:21'),
(638, 'steps', 527, 0, 66, '2021-03-25 23:42:37', '2021-03-26 15:21:27'),
(639, 'steps', 1473, 0, 65, '2021-03-26 00:51:30', '2021-03-26 13:05:11'),
(642, 'steps', 7435, 0, 57, '2021-03-26 01:42:40', '2021-03-26 15:13:02'),
(643, 'steps', 3574, 0, 59, '2021-03-26 02:11:23', '2021-03-26 02:27:40'),
(644, 'steps', 192, 0, 17, '2021-03-26 14:55:58', '2021-03-26 15:42:15'),
(645, 'steps', 54, 0, 56, '2021-03-26 16:10:31', '2021-03-26 16:56:11'),
(647, 'steps', 3463, 0, 57, '2021-03-26 16:15:56', '2021-03-27 13:43:47'),
(648, 'steps', 526, 0, 65, '2021-03-26 16:50:31', '2021-03-27 10:19:15'),
(649, 'steps', 1766, 0, 51, '2021-03-26 21:09:21', '2021-03-27 02:19:53'),
(650, 'steps', 4710, 0, 61, '2021-03-26 22:54:23', '2021-03-27 11:54:02'),
(651, 'steps', 16673, 0, 66, '2021-03-26 23:07:34', '2021-03-27 15:14:44'),
(652, 'steps', 166, 0, 80, '2021-03-27 02:05:31', '2021-03-27 14:39:59'),
(653, 'steps', 5328, 0, 62, '2021-03-27 07:18:37', '2021-03-27 15:51:57'),
(654, 'steps', 254, 0, 62, '2021-03-27 16:31:37', '2021-03-28 00:55:35'),
(655, 'steps', 113, 0, 56, '2021-03-27 17:05:01', '2021-03-28 03:38:20'),
(656, 'steps', 45, 0, 65, '2021-03-27 17:09:31', '2021-03-27 17:09:31'),
(657, 'steps', 65, 0, 65, '2021-03-27 17:09:31', '2021-03-28 02:00:14'),
(658, 'steps', 2089, 0, 61, '2021-03-27 22:51:33', '2021-03-28 03:59:02'),
(659, 'steps', 1285, 0, 66, '2021-03-27 23:14:37', '2021-03-28 03:12:30'),
(660, 'steps', 733, 0, 57, '2021-03-28 00:37:13', '2021-03-28 03:40:27'),
(661, 'steps', 1374, 0, 80, '2021-03-28 03:23:09', '2021-03-28 15:06:02'),
(662, 'steps', 2530, 0, 80, '2021-03-28 23:31:49', '2021-03-29 15:01:10'),
(663, 'steps', 1497, 0, 80, '2021-03-29 16:05:43', '2021-03-30 13:24:40'),
(664, 'steps', 88, 0, 80, '2021-03-30 16:11:36', '2021-03-30 16:11:36'),
(665, 'steps', 1894, 0, 80, '2021-03-30 16:11:36', '2021-03-31 14:36:24'),
(666, 'steps', 7295, 0, 80, '2021-03-31 23:40:36', '2021-04-01 15:52:30'),
(667, 'steps', 2750, 0, 80, '2021-04-01 16:22:31', '2021-04-02 14:49:09'),
(669, 'steps', 3500, 0, 80, '2021-04-02 16:11:05', '2021-04-03 14:49:40'),
(670, 'steps', 2261, 0, 80, '2021-04-04 02:33:01', '2021-04-04 14:49:49'),
(671, 'steps', 1775, 0, 80, '2021-04-05 00:15:45', '2021-04-05 06:39:20'),
(672, 'steps', 4836, 0, 80, '2021-04-06 04:33:31', '2021-04-06 13:50:14'),
(673, 'steps', 2700, 0, 80, '2021-04-06 23:19:47', '2021-04-07 15:11:47'),
(674, 'steps', 2217, 0, 80, '2021-04-07 23:52:42', '2021-04-08 13:17:38'),
(675, 'steps', 11, 0, 80, '2021-04-09 01:05:28', '2021-04-09 01:05:28'),
(676, 'steps', 5366, 0, 80, '2021-04-09 01:05:28', '2021-04-09 15:36:52'),
(677, 'steps', 2627, 0, 80, '2021-04-09 16:07:45', '2021-04-10 15:05:14'),
(678, 'steps', 1142, 0, 80, '2021-04-11 03:45:10', '2021-04-11 15:36:41'),
(679, 'steps', 3362, 0, 80, '2021-04-11 23:30:36', '2021-04-12 15:12:33'),
(680, 'steps', 1462, 0, 80, '2021-04-12 23:37:54', '2021-04-13 10:17:39'),
(681, 'steps', 4141, 0, 80, '2021-04-13 23:43:42', '2021-04-14 14:56:36'),
(682, 'steps', 23, 0, 10, '2021-04-14 12:43:56', '2021-04-14 12:43:56'),
(683, 'steps', 2477, 0, 80, '2021-04-14 23:39:22', '2021-04-15 15:32:27'),
(684, 'steps', 3793, 0, 80, '2021-04-15 23:30:55', '2021-04-16 14:50:58'),
(685, 'steps', 1830, 0, 80, '2021-04-17 06:05:26', '2021-04-17 15:26:09'),
(686, 'steps', 1752, 0, 80, '2021-04-18 07:06:34', '2021-04-18 13:05:14'),
(687, 'steps', 898, 0, 80, '2021-04-18 23:51:54', '2021-04-19 03:04:18'),
(688, 'steps', 3626, 0, 83, '2021-04-19 03:23:02', '2021-04-19 13:55:40'),
(690, 'steps', 2261, 0, 83, '2021-04-19 23:31:37', '2021-04-20 14:50:54'),
(692, 'steps', 35, 0, 10, '2021-04-20 13:23:25', '2021-04-20 13:23:25'),
(693, 'steps', 2098, 0, 83, '2021-04-20 23:30:52', '2021-04-21 14:36:17'),
(694, 'steps', 28, 0, 10, '2021-04-21 02:40:10', '2021-04-21 02:40:10'),
(695, 'steps', 128, 0, 10, '2021-04-21 02:40:10', '2021-04-21 09:30:56'),
(700, 'steps', 1318, 0, 83, '2021-04-25 04:51:02', '2021-04-25 13:32:27'),
(702, 'steps', 112, 0, 10, '2021-04-25 04:55:48', '2021-04-25 05:55:49'),
(703, 'steps', 58, 0, 86, '2021-04-25 13:08:54', '2021-04-25 13:11:03'),
(704, 'steps', 2420, 0, 88, '2021-04-25 23:28:13', '2021-04-26 13:25:46'),
(706, 'steps', 2418, 0, 88, '2021-04-26 23:46:46', '2021-04-27 14:10:08'),
(707, 'steps', 4168, 0, 90, '2021-04-27 10:05:15', '2021-04-27 12:34:40'),
(708, 'steps', 2526, 0, 88, '2021-04-27 23:48:36', '2021-04-28 13:41:38'),
(709, 'steps', 8, 0, 90, '2021-04-28 00:14:48', '2021-04-28 00:14:48'),
(710, 'steps', 2021, 0, 91, '2021-04-28 00:46:36', '2021-04-28 15:23:39'),
(711, 'steps', 1430, 0, 88, '2021-04-28 22:24:40', '2021-04-29 14:13:45'),
(712, 'steps', 4003, 0, 91, '2021-04-29 00:30:54', '2021-04-29 13:09:18'),
(713, 'steps', 4664, 0, 90, '2021-04-29 09:12:16', '2021-04-29 10:57:44'),
(714, 'steps', 1024, 0, 92, '2021-04-29 10:16:38', '2021-04-29 15:03:27'),
(715, 'steps', 4055, 0, 92, '2021-04-29 16:28:39', '2021-04-30 15:48:24'),
(716, 'steps', 1200, 0, 91, '2021-04-29 17:57:33', '2021-04-30 11:50:41'),
(717, 'steps', 2568, 0, 88, '2021-04-29 23:26:13', '2021-04-30 14:46:51'),
(718, 'steps', 7, 0, 90, '2021-04-30 00:38:19', '2021-04-30 00:38:24'),
(719, 'steps', 7752, 0, 90, '2021-04-30 16:04:49', '2021-05-01 11:14:28'),
(720, 'steps', 41, 0, 88, '2021-04-30 16:17:08', '2021-04-30 16:17:08'),
(721, 'steps', 465, 0, 88, '2021-04-30 16:17:08', '2021-05-01 13:13:05'),
(722, 'steps', 3145, 0, 92, '2021-04-30 23:33:57', '2021-05-01 15:32:10'),
(723, 'steps', 1591, 0, 91, '2021-05-01 02:36:16', '2021-05-01 15:22:20'),
(724, 'steps', 6690, 0, 92, '2021-05-01 16:00:36', '2021-05-02 14:12:29'),
(725, 'steps', 54, 0, 90, '2021-05-02 00:49:41', '2021-05-02 06:52:19'),
(726, 'steps', 19, 0, 91, '2021-05-02 02:50:27', '2021-05-02 02:50:27'),
(727, 'steps', 479, 0, 88, '2021-05-02 06:13:11', '2021-05-02 10:29:19'),
(728, 'steps', 84, 0, 92, '2021-05-02 18:22:38', '2021-05-02 18:22:38'),
(729, 'steps', 4713, 0, 92, '2021-05-02 18:22:38', '2021-05-03 15:51:19'),
(730, 'steps', 129, 0, 88, '2021-05-02 23:32:55', '2021-05-02 23:32:55'),
(731, 'steps', 1736, 0, 88, '2021-05-02 23:32:55', '2021-05-03 13:31:37'),
(732, 'steps', 4034, 0, 91, '2021-05-03 05:18:40', '2021-05-03 15:56:52'),
(733, 'steps', 9, 0, 90, '2021-05-03 09:59:28', '2021-05-03 09:59:30'),
(734, 'steps', 3044, 0, 92, '2021-05-03 17:09:37', '2021-05-04 14:25:20'),
(735, 'steps', 2374, 0, 91, '2021-05-03 17:23:57', '2021-05-04 08:03:50'),
(736, 'steps', 409, 0, 90, '2021-05-03 18:40:29', '2021-05-03 18:40:29'),
(737, 'steps', 1330, 0, 88, '2021-05-03 18:52:38', '2021-05-04 13:23:23'),
(738, 'steps', 126, 0, 10, '2021-05-04 06:40:53', '2021-05-04 13:41:15'),
(739, 'steps', 1175, 0, 91, '2021-05-04 16:49:53', '2021-05-05 14:16:45'),
(740, 'steps', 1143, 0, 88, '2021-05-04 23:26:36', '2021-05-05 10:53:51'),
(741, 'steps', 3837, 0, 92, '2021-05-05 00:04:51', '2021-05-05 14:14:37'),
(742, 'steps', 139, 0, 10, '2021-05-05 01:40:26', '2021-05-05 14:10:30'),
(743, 'steps', 1629, 0, 90, '2021-05-05 07:30:12', '2021-05-05 08:36:11'),
(744, 'steps', 1916, 0, 91, '2021-05-05 17:28:08', '2021-05-06 15:17:34'),
(745, 'steps', 149, 0, 10, '2021-05-05 16:26:57', '2021-05-06 13:08:44'),
(746, 'steps', 15, 0, 92, '2021-05-05 22:12:45', '2021-05-05 22:12:45'),
(747, 'steps', 8536, 0, 92, '2021-05-05 22:12:45', '2021-05-06 14:49:43'),
(748, 'steps', 1886, 0, 88, '2021-05-05 23:27:27', '2021-05-06 13:31:48'),
(749, 'steps', 144, 0, 90, '2021-05-06 05:23:57', '2021-05-06 05:23:57'),
(750, 'steps', 485, 0, 90, '2021-05-06 05:23:57', '2021-05-06 07:57:56'),
(751, 'steps', 293, 0, 91, '2021-05-06 16:48:35', '2021-05-07 05:28:47'),
(752, 'steps', 74, 0, 88, '2021-05-06 23:25:44', '2021-05-06 23:25:44'),
(753, 'steps', 855, 0, 88, '2021-05-06 23:25:44', '2021-05-07 06:10:23'),
(754, 'steps', 1897, 0, 92, '2021-05-07 00:10:17', '2021-05-07 05:52:45'),
(755, 'steps', 21, 0, 10, '2021-05-07 02:05:17', '2021-05-07 02:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `account_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `account_type` enum('saving','current') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'saving',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `bank_name`, `account_number`, `account_name`, `account_type`, `created_at`, `updated_at`) VALUES
(6, 72, 'Asdoasdm', '123123123123', 'UCO', 'saving', '2021-03-25 02:06:46', '2021-03-25 14:12:01'),
(7, 79, 'asdasdasd', '123123123', 'avinash', 'saving', '2021-03-25 18:52:59', '2021-03-25 18:52:59'),
(8, 17, 'cimb', '1234-5678-9876', 'hazly', 'saving', '2021-03-26 12:15:12', '2021-03-26 15:47:12'),
(9, 80, 'paypal', '1231231', 'asdas', '', '2021-03-26 16:14:20', '2021-04-17 06:34:38'),
(13, 10, 'chhi', '5699-9', 'chhi', 'saving', '2021-04-14 11:55:28', '2021-04-14 11:55:44'),
(14, 82, 'paypal', 'darkmat13r@gmail.com', 'avinash', '', '2021-04-16 17:35:29', '2021-04-16 17:35:29'),
(15, 83, 'paypal', 'sb-id5fr5952366@personal.example.com', 'Hazly Paypal Test', '', '2021-04-19 03:24:17', '2021-04-19 03:24:17'),
(17, 86, 'paypal', 'sb-id5fr5952366@personal.example.com', 'dark', '', '2021-04-25 10:45:25', '2021-04-25 10:45:25'),
(18, 87, 'paypal', 'sb-id5fr5952366@personal.example.com', 'paypal hazly', '', '2021-04-25 14:21:31', '2021-04-25 14:21:31'),
(19, 88, 'paypal', 'sb-id5fr5952366@personal.example.com', 'Testing Paypal', '', '2021-04-25 14:31:41', '2021-04-25 14:31:41'),
(20, 90, 'paypal', 'sb-id5fr5952366@personal.example.com', 'Paypal Test Thiru', '', '2021-04-27 02:33:37', '2021-04-27 02:33:37'),
(21, 91, 'paypal', 'sb-id5fr5952366@personal.example.com', 'PayPal test-vane', '', '2021-04-28 00:34:56', '2021-04-28 00:34:56'),
(22, 92, 'paypal', 'sb-id5fr5952366@personal.example.com', 'PayPal Test Pravin', '', '2021-04-29 10:05:22', '2021-04-29 10:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lectus nulla, posuere nec libero et, cursus pulvinar nibh. Maecenas eget metus porttitor, aliquet mauris quis, aliquet sem. Suspendisse a finibus lectus. Praesent in placerat diam, at maximus libero. Curabitur et ante vitae elit sagittis elementum ac non justo. Sed ac massa ut orci suscipit mattis a et erat. Aliquam ac feugiat massa, vitae blandit sapien. Curabitur nec ante vel tellus sollicitudin pharetra at in diam. Vivamus vestibulum consectetur nibh, vitae ullamcorper elit mollis quis. Praesent ac est ac ante mattis finibus. Suspendisse dui sem, finibus ac diam ut, tristique dictum libero. Mauris tincidunt risus sit amet mauris placerat sodales. Donec ac lectus vehicula, blandit arcu a, ultrices ante. Proin quis aliquet tortor. Maecenas quis molestie urna, at volutpat turpis. Nulla facilisi.', '2021-04-20 13:16:25', '2021-04-20 13:16:25'),
(2, 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lectus nulla, posuere nec libero et, cursus pulvinar nibh. Maecenas eget metus porttitor, aliquet mauris quis, aliquet sem. Suspendisse a finibus lectus. Praesent in placerat diam, at maximus libero. Curabitur et ante vitae elit sagittis elementum ac non justo. Sed ac massa ut orci suscipit mattis a et erat. Aliquam ac feugiat massa, vitae blandit sapien. Curabitur nec ante vel tellus sollicitudin pharetra at in diam. Vivamus vestibulum consectetur nibh, vitae ullamcorper elit mollis quis. Praesent ac est ac ante mattis finibus. Suspendisse dui sem, finibus ac diam ut, tristique dictum libero. Mauris tincidunt risus sit amet mauris placerat sodales. Donec ac lectus vehicula, blandit arcu a, ultrices ante. Proin quis aliquet tortor. Maecenas quis molestie urna, at volutpat turpis. Nulla facilisi.', '2021-04-20 13:16:54', '2021-04-20 13:16:54'),
(3, 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lectus nulla, posuere nec libero et, cursus pulvinar nibh. Maecenas eget metus porttitor, aliquet mauris quis, aliquet sem. Suspendisse a finibus lectus. Praesent in placerat diam, at maximus libero. Curabitur et ante vitae elit sagittis elementum ac non justo. Sed ac massa ut orci suscipit mattis a et erat. Aliquam ac feugiat massa, vitae blandit sapien. Curabitur nec ante vel tellus sollicitudin pharetra at in diam. Vivamus vestibulum consectetur nibh, vitae ullamcorper elit mollis quis. Praesent ac est ac ante mattis finibus. Suspendisse dui sem, finibus ac diam ut, tristique dictum libero. Mauris tincidunt risus sit amet mauris placerat sodales. Donec ac lectus vehicula, blandit arcu a, ultrices ante. Proin quis aliquet tortor. Maecenas quis molestie urna, at volutpat turpis. Nulla facilisi.', '2021-04-20 13:16:55', '2021-04-20 13:16:55'),
(4, 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lectus nulla, posuere nec libero et, cursus pulvinar nibh. Maecenas eget metus porttitor, aliquet mauris quis, aliquet sem. Suspendisse a finibus lectus. Praesent in placerat diam, at maximus libero. Curabitur et ante vitae elit sagittis elementum ac non justo. Sed ac massa ut orci suscipit mattis a et erat. Aliquam ac feugiat massa, vitae blandit sapien. Curabitur nec ante vel tellus sollicitudin pharetra at in diam. Vivamus vestibulum consectetur nibh, vitae ullamcorper elit mollis quis. Praesent ac est ac ante mattis finibus. Suspendisse dui sem, finibus ac diam ut, tristique dictum libero. Mauris tincidunt risus sit amet mauris placerat sodales. Donec ac lectus vehicula, blandit arcu a, ultrices ante. Proin quis aliquet tortor. Maecenas quis molestie urna, at volutpat turpis. Nulla facilisi.', '2021-04-20 13:16:56', '2021-04-20 13:16:56'),
(5, 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lectus nulla, posuere nec libero et, cursus pulvinar nibh. Maecenas eget metus porttitor, aliquet mauris quis, aliquet sem. Suspendisse a finibus lectus. Praesent in placerat diam, at maximus libero. Curabitur et ante vitae elit sagittis elementum ac non justo. Sed ac massa ut orci suscipit mattis a et erat. Aliquam ac feugiat massa, vitae blandit sapien. Curabitur nec ante vel tellus sollicitudin pharetra at in diam. Vivamus vestibulum consectetur nibh, vitae ullamcorper elit mollis quis. Praesent ac est ac ante mattis finibus. Suspendisse dui sem, finibus ac diam ut, tristique dictum libero. Mauris tincidunt risus sit amet mauris placerat sodales. Donec ac lectus vehicula, blandit arcu a, ultrices ante. Proin quis aliquet tortor. Maecenas quis molestie urna, at volutpat turpis. Nulla facilisi.', '2021-04-20 13:16:58', '2021-04-20 13:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `feed_comments`
--

CREATE TABLE `feed_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feed_comments`
--

INSERT INTO `feed_comments` (`id`, `feed_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'Full', '2021-04-25 12:57:22', '2021-04-25 12:57:22'),
(2, 1, 10, 'Full', '2021-04-25 12:57:22', '2021-04-25 12:57:22'),
(3, 1, 10, 'function', '2021-04-25 12:57:27', '2021-04-25 12:57:27'),
(4, 1, 10, 'function', '2021-04-25 12:57:27', '2021-04-25 12:57:27'),
(7, 1, 86, 'chhu Gigi', '2021-04-25 13:35:23', '2021-04-25 13:35:23'),
(8, 5, 86, 'yuhkk', '2021-04-25 13:35:48', '2021-04-25 13:35:48'),
(9, 5, 86, 'uvbjk', '2021-04-25 13:41:22', '2021-04-25 13:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `feed_images`
--

CREATE TABLE `feed_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feed_images`
--

INSERT INTO `feed_images` (`id`, `feed_id`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/images/oVk0pTHBj4NkDUFG2HFp1zsDGyBZpf0fMFD9QnI5.png', '2021-04-20 13:16:25', '2021-04-20 13:16:25'),
(2, 2, 'uploads/images/CtJN0AtEGgFrczqf7vstRrFr62Okd4ukWzpQBkLR.png', '2021-04-20 13:16:54', '2021-04-20 13:16:54'),
(3, 3, 'uploads/images/HEM5WXkcseGNkgA9zFjExVPM5CPuXBPT24b3cOk8.png', '2021-04-20 13:16:55', '2021-04-20 13:16:55'),
(4, 4, 'uploads/images/5rJJ3ulBUCOsvxESQpZ6R9LBXWUcYdYHgPVQ1dwY.png', '2021-04-20 13:16:56', '2021-04-20 13:16:56'),
(5, 5, 'uploads/images/Rnpg2Pun5RBjfXCUvdOWw7vC5WLmU0YSygoklf5H.png', '2021-04-20 13:16:58', '2021-04-20 13:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `feed_likes`
--

CREATE TABLE `feed_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feed_likes`
--

INSERT INTO `feed_likes` (`id`, `feed_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 3, 10, '2021-04-20 14:22:40', '2021-04-20 14:22:40'),
(4, 5, 86, '2021-04-25 13:32:06', '2021-04-25 13:32:06'),
(5, 4, 86, '2021-04-25 13:32:07', '2021-04-25 13:32:07'),
(6, 1, 86, '2021-04-25 13:32:11', '2021-04-25 13:32:11'),
(7, 2, 86, '2021-04-25 13:32:12', '2021-04-25 13:32:12'),
(9, 4, 10, '2021-05-04 07:12:30', '2021-05-04 07:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `health_conditions`
--

CREATE TABLE `health_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `require_addition_info` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `health_conditions`
--

INSERT INTO `health_conditions` (`id`, `name`, `require_addition_info`, `created_at`, `updated_at`) VALUES
(1, 'High Blood Sugar', 0, '2021-01-30 22:12:18', '2021-01-30 22:12:18'),
(2, 'High Blood Pressure', 0, '2021-01-30 22:12:18', '2021-01-30 22:12:18'),
(3, 'High Cholesterol', 0, '2021-01-30 22:12:18', '2021-01-30 22:12:18'),
(4, 'Heart Disease', 0, '2021-01-30 22:12:18', '2021-01-30 22:12:18'),
(5, 'Lung Disease', 0, '2021-01-30 22:12:18', '2021-01-30 22:12:18'),
(6, 'Knee or Hip Pain', 0, '2021-01-30 22:12:18', '2021-01-30 22:12:18'),
(7, 'Others', 1, '2021-01-30 22:12:18', '2021-01-30 22:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `level_requirements`
--

CREATE TABLE `level_requirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_level` enum('active','moderate','inactive') COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `has_health_condition` tinyint(1) NOT NULL,
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `min_bmi` double(8,2) DEFAULT NULL,
  `max_bmi` double(8,2) DEFAULT NULL,
  `required_steps` bigint(20) UNSIGNED DEFAULT NULL,
  `required_repeat` int(10) UNSIGNED DEFAULT NULL,
  `required_period` int(10) UNSIGNED DEFAULT NULL,
  `required_repeat_interval` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_cycle` int(10) UNSIGNED DEFAULT NULL,
  `minimum_steps` bigint(20) UNSIGNED NOT NULL,
  `minimum_repeat` int(10) UNSIGNED NOT NULL,
  `minimum_period` int(10) UNSIGNED NOT NULL,
  `minimum_repeat_interval` enum('day','week','month','year') COLLATE utf8_unicode_ci NOT NULL,
  `minimum_cycle` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `level_requirements`
--

INSERT INTO `level_requirements` (`id`, `activity_level`, `level`, `has_health_condition`, `min_age`, `max_age`, `min_bmi`, `max_bmi`, `required_steps`, `required_repeat`, `required_period`, `required_repeat_interval`, `required_cycle`, `minimum_steps`, `minimum_repeat`, `minimum_period`, `minimum_repeat_interval`, `minimum_cycle`, `created_at`, `updated_at`) VALUES
(1, 'inactive', 1, 0, 18, 85, 0.00, 100.00, 4000, 5, 3, 'day', 1, 4000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'inactive', 2, 0, 18, 85, 0.00, 100.00, 5000, 5, 3, 'day', 1, 5000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'inactive', 3, 0, 18, 85, 0.00, 100.00, 7000, 5, 3, 'day', 1, 7000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'inactive', 4, 0, 18, 85, 0.00, 100.00, 8000, 5, 3, 'day', 1, 8000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'inactive', 5, 0, 18, 85, 0.00, 100.00, 10000, 5, 3, 'day', 1, 10000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'moderate', 1, 0, 18, 85, 0.00, 100.00, 5000, 5, 3, 'day', 1, 5000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'moderate', 2, 0, 18, 85, 0.00, 100.00, 6000, 5, 3, 'day', 1, 6000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'moderate', 3, 0, 18, 85, 0.00, 100.00, 7000, 5, 3, 'day', 1, 7000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'moderate', 4, 0, 18, 85, 0.00, 100.00, 9000, 5, 3, 'day', 1, 9000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'moderate', 5, 0, 18, 85, 0.00, 100.00, 10000, 5, 3, 'day', 1, 10000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'inactive', 1, 1, 18, 85, 0.00, 100.00, 4000, 5, 3, 'day', 1, 4000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'inactive', 2, 1, 18, 85, 0.00, 100.00, 5000, 5, 3, 'day', 1, 5000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'inactive', 3, 1, 18, 85, 0.00, 100.00, 7000, 5, 3, 'day', 1, 7000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'inactive', 4, 1, 18, 85, 0.00, 100.00, 8000, 5, 3, 'day', 1, 8000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'inactive', 5, 1, 18, 85, 0.00, 100.00, 10000, 5, 3, 'day', 1, 10000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'moderate', 1, 1, 18, 85, 0.00, 100.00, 5000, 5, 3, 'day', 1, 5000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'moderate', 2, 1, 18, 85, 0.00, 100.00, 6000, 5, 3, 'day', 1, 6000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'moderate', 3, 1, 18, 85, 0.00, 100.00, 7000, 5, 3, 'day', 1, 7000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'moderate', 4, 1, 18, 85, 0.00, 100.00, 9000, 5, 3, 'day', 1, 9000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'moderate', 5, 1, 18, 85, 0.00, 100.00, 10000, 5, 3, 'day', 1, 10000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'active', 1, 1, 18, 85, 0.00, 100.00, 6000, 5, 3, 'day', 1, 6000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'active', 2, 1, 18, 85, 0.00, 100.00, 7000, 5, 3, 'day', 1, 7000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'active', 3, 1, 18, 85, 0.00, 100.00, 8000, 5, 3, 'day', 1, 8000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'active', 4, 1, 18, 85, 0.00, 100.00, 9000, 5, 3, 'day', 1, 9000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'active', 5, 1, 18, 85, 0.00, 100.00, 10000, 5, 3, 'day', 1, 10000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'active', 1, 0, 18, 85, 0.00, 100.00, 6000, 5, 3, 'day', 1, 6000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'active', 2, 0, 18, 85, 0.00, 100.00, 7000, 5, 3, 'day', 1, 7000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'active', 3, 0, 18, 85, 0.00, 100.00, 8000, 5, 3, 'day', 1, 8000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'active', 4, 0, 18, 85, 0.00, 100.00, 9000, 5, 3, 'day', 1, 9000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'active', 5, 0, 18, 85, 0.00, 100.00, 10000, 5, 3, 'day', 1, 10000, 5, 3, 'day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_12_26_134311_create_health_conditions_table', 1),
(10, '2020_12_26_134522_create_user_health_conditions_table', 1),
(11, '2020_12_27_152001_create_activity_logs_table', 1),
(12, '2021_01_04_154119_create_settings_table', 1),
(13, '2021_01_04_155146_create_user_trees_table', 1),
(14, '2021_01_05_060012_create_level_requirements_table', 1),
(15, '2021_01_05_061642_add_level_column_to_users_table', 1),
(16, '2021_01_19_051740_add_offset_value_to_activity_logs_table', 1),
(17, '2021_01_23_062058_add_level_last_updated_at_column_to_users_table', 1),
(18, '2021_01_23_062545_add_first_cycle_started_at_column_to_users_table', 1),
(19, '2021_01_30_074810_add_info_column_to_user_health_conditions_table', 1),
(20, '2021_01_30_075641_add_require_additional_info_column_to_health_conditions_table', 1),
(21, '2021_01_31_153142_add_country_column_to_users_table', 2),
(22, '2021_02_13_063407_create_user_level_histories_table', 3),
(23, '2021_02_13_063409_add_timezone_in_users_table', 4),
(24, '2021_02_20_163120_create_permission_tables', 5),
(25, '2021_03_03_165307_create_reward_settings_table', 5),
(28, '2021_03_04_154103_recreate_reward_hitories_table', 6),
(29, '2021_03_11_164557_add_wallet_amount_column_to_users_table', 6),
(30, '2021_03_15_142725_add_from_step_level_column_to_reward_histories_table', 7),
(31, '2021_03_23_203656_create_bank_accounts_table', 8),
(32, '2021_03_23_204237_create__transactions_table', 8),
(33, '2021_03_23_204237_create_transactions_table', 9),
(34, '2021_03_23_204727_create_user_bank_transfer_receipts_table', 9),
(35, '2021_03_23_204909_add_approved_at_column_to_users_table', 9),
(36, '2021_03_26_135647_add_identity_no_column_to_users_table', 10),
(37, '2021_04_17_125658_create_orders_table', 11),
(38, '2021_04_20_152913__create_feed_tables', 12),
(39, '2021_04_24_200000_create_payout_batch_requests_table', 13),
(40, '2021_04_24_205259_create_payout_requests_table', 13),
(41, '2021_04_25_211149_remove_cerno_column_from_users_table', 14),
(42, '2021_04_28_151812_drop_ic_no_column_from_users_table', 15),
(43, '2021_04_28_153133_add_status_column_to_payout_batch_requests_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 35),
(1, 'App\\Models\\User', 38);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0031daebbf9b5a25cf4c464932fa5d055d63828eeed6bab98d6edfc255e2537fa91a695b237a6d69', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-03-08 03:41:58', '2021-03-08 03:41:58', '2022-03-08 11:41:58'),
('0129fc836d5f928d43d805f648dfb72e417dee0f6076306bbe7dd57fab0b2b8fd1e30f7d8ce14a44', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-22 03:24:08', '2021-02-22 03:24:08', '2022-02-22 11:24:08'),
('01c9507c08487827a7927fd403d34acab9f74891dd8a26d1db28463ecd8854ab5e89ed148cd453d4', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-10 15:13:29', '2021-02-10 15:13:29', '2022-02-10 23:13:29'),
('01fddedefc8c3b17f838c04a120d03fc300e6d9a900878292addce968802f31b0a6fb12460cd5dc3', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-07 03:26:04', '2021-03-07 03:26:04', '2022-03-07 11:26:04'),
('029169081de5145b422e6868bbc662111db4e8d7500e6d3a9661666e72b38f5aaa15d5c3f694a55d', 14, 1, 'test_token', '[]', 0, '2021-02-07 18:43:05', '2021-02-07 18:43:05', '2022-02-08 02:43:05'),
('031445fa8b14a5a6db9cb83a51852ac21374fac0776a198b24c8cb2051b459c64251b5e8ee75071c', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-09 07:28:59', '2021-02-09 07:28:59', '2022-02-09 15:28:59'),
('038c4d7f7962b7344e63c7faebe363ee782f3f9b16b7a5b5b3465a3db36ff6c905fadcba645a0ace', 1, 1, 'dark@gmail.com', '[]', 0, '2021-01-30 22:32:26', '2021-01-30 22:32:26', '2022-01-31 06:32:26'),
('03a9f69d7119bb85b082edeef95e2e95d31c20a36a795d9fb92e96904a13d3cc5c97b95db2609bba', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-24 05:30:50', '2021-02-24 05:30:50', '2022-02-24 13:30:50'),
('0500d04c5360a43f40fabb354fe08ccdeae90cee9914eb9b8d39e6ddfaad3907dc43d79a7da51b1c', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-25 17:37:05', '2021-02-25 17:37:05', '2022-02-26 01:37:05'),
('053b7decddb36b57995c4be60ef74a1ce46a17e79f9a15b100666fc61ff684f8e9be40a832d16c06', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-22 10:07:42', '2021-03-22 10:07:42', '2022-03-22 18:07:42'),
('05f42269ddd125611811e2fed90ef356e8ee7a55efda0a3b9a91a9726d301fee9b027d0d0931a8c1', 2, 1, 'test_token', '[]', 0, '2021-02-05 05:50:37', '2021-02-05 05:50:37', '2022-02-05 13:50:37'),
('0623c6e5dcb92cd72db9555ee6e4493d6fd248f9d63648215b47002f412cea81e3b95a36afbdff8a', 8, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-02 01:00:31', '2021-02-02 01:00:31', '2022-02-02 09:00:31'),
('066bd85290f215421a87b7853605af577dce61a5e72244673f61a389e284776d8c6c453c85ddb30f', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-08 02:21:48', '2021-02-08 02:21:48', '2022-02-08 10:21:48'),
('06b989c5a8d92f856b3f3ab20c11cb35e53bebd8ba08533f64485d32de0a466963472c045b9933c7', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 17:55:53', '2021-02-07 17:55:53', '2022-02-08 01:55:53'),
('07384af6cb305d73ef2d0b5bf15303006e1d542b97094202a9b97a3d8654887dd9c1c1a8d6b4382d', 86, 1, 'cub@gmail.com', '[]', 0, '2021-04-25 13:12:43', '2021-04-25 13:12:43', '2022-04-25 21:12:43'),
('0746710226f4ae17d7368b0c6eeceb5304a2777a4579d8658d677a8c4cb2e6b54998726ed82e8a9c', 10, 1, 'test_token', '[]', 0, '2021-02-08 08:54:12', '2021-02-08 08:54:12', '2022-02-08 16:54:12'),
('0763096bbb111891a098408782b7b35b8843859fc93b37b275556ed6e6004699069f3a0e8294c287', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-04-14 14:25:20', '2021-04-14 14:25:20', '2022-04-14 22:25:20'),
('0917a95e362c65a414451eb959e55b41bdef08eb4e7a8e794ebe8af643d82ceb73f6f5f8b6dd02aa', 69, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-03-18 01:26:55', '2021-03-18 01:26:55', '2022-03-18 09:26:55'),
('0a0df019a8888623807dc8f91dd65c51285925567bd6988440eb247f4cc47eb387554ff75a3ebac2', 80, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-04-06 04:25:56', '2021-04-06 04:25:56', '2022-04-06 12:25:56'),
('0ba87a03caa1c821e27d1e384b2f0cbc6c5dafe47f1435fe3309bc1c26179a799d57982ec7d5b0d4', 80, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 16:12:25', '2021-03-26 16:12:25', '2022-03-27 00:12:25'),
('0bb4f3d3e28b4f029a5c49384b73b5299558ddbb842e28db46247bf9252476c59c6aa6e2110f5145', 89, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-04-27 01:37:04', '2021-04-27 01:37:04', '2022-04-27 09:37:04'),
('0bd7ff4354b2a3f9558e35536069a0bccfee355815de40f410bdfa1cdef7bcfa578f076e3086ff2a', 21, 1, 'Kalaiselviacesm@gmail.com', '[]', 0, '2021-02-16 00:09:54', '2021-02-16 00:09:54', '2022-02-16 08:09:54'),
('0d1e4559d9d3ca358698034dbc8e5edc2dabfb3698a9885900922379c8e1f1a6fc45c48812b0061c', 40, 1, 'mytyffa@yahoo.com', '[]', 0, '2021-03-12 02:28:34', '2021-03-12 02:28:34', '2022-03-12 10:28:34'),
('0d36fdd8b3a35ed286cb5ea0aacdb303e2d14f9648b024561c41b3464b510233153e55c2b6e0b5da', 5, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 03:43:22', '2021-02-07 03:43:22', '2022-02-07 11:43:22'),
('0d41d3f4207db2ca450ee6ddae6321a9fc45de01ff633864a47a4037a80a9113b81f1d16a20aa375', 33, 1, 'mytyffa@yahoo.com', '[]', 0, '2021-02-23 14:40:42', '2021-02-23 14:40:42', '2022-02-23 22:40:42'),
('0d750039aadceb281b97a639d82557bc255ea63d3b5b9b34fe1e74db1a1ee192ec7a02c971f8ab88', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-22 03:20:56', '2021-03-22 03:20:56', '2022-03-22 11:20:56'),
('0da1ce4fecd1771665c379b34b6899994610702205da8456d233f0d6627b54c9422beafa1b4bbba2', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-09 07:29:45', '2021-02-09 07:29:45', '2022-02-09 15:29:45'),
('0dd9cb80b52622106f36deb05eb49c351113f97177a586522ba8b1247dbf38fc1bcfb68951d1523f', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 15:57:21', '2021-03-26 15:57:21', '2022-03-26 23:57:21'),
('0df51157dc001fe87943a9f4f51cd6569aab48beaa752da1b6b37bd9373a57381a9f8e6aa90f7331', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-12 17:29:29', '2021-02-12 17:29:29', '2022-02-13 01:29:29'),
('0ec3327b6ba8f412bed3db0956ab1b85b495691d1ba3b04d852b9a771e8ab45154af2243a76c5fa1', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-03 21:27:59', '2021-02-03 21:27:59', '2022-02-04 05:27:59'),
('0f79fcf5a6750c1648508a4bf5df51530f12a85dd8e56bff5fbf34bda7412dea2e6a42dc57e02d2e', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-14 16:27:08', '2021-02-14 16:27:08', '2022-02-15 00:27:08'),
('0fcec50e1f328b568a95668a79e2345c0345c6fa4f6b889a1ac5b15e67afe499a4975bba852af578', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-14 16:35:25', '2021-02-14 16:35:25', '2022-02-15 00:35:25'),
('105e2506959d2649b8d152291a111af54a098f92fc18ecbc06867938575b42b23dd22b6472208faa', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 23:18:27', '2021-02-11 23:18:27', '2022-02-12 07:18:27'),
('10a398f915ced559849da607a1250e03c937ca5603388816765b60cdaa078ae0a5c0712798ae9028', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-28 17:04:47', '2021-02-28 17:04:47', '2022-03-01 01:04:47'),
('10d2127e1fda9c37afa58e894307a326f42fa53139792e4628eaae18cc761e2c47ba6d4d59a3c7e0', 15, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 01:00:47', '2021-02-08 01:00:47', '2022-02-08 09:00:47'),
('112316b5e6c22f23a23b0ac7814244996bd6039baed2390b1c20930ca4da4c0de4003e4af6b3167e', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-02 09:04:32', '2021-02-02 09:04:32', '2022-02-02 17:04:32'),
('117d50ffe47b76caee4151e9949cbe711397b152e474f8f5162eef49936c983e040e55f87d1219cc', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-08 02:57:46', '2021-02-08 02:57:46', '2022-02-08 10:57:46'),
('11e46c43c759b849e6038bb1dda69df9548284a6e1f1fcb4e346b8885725a581d36f8d2556b9b3e0', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-08 18:23:24', '2021-02-08 18:23:24', '2022-02-09 02:23:24'),
('12420e7421a56301f4831ffd2f373dd78d94539b4e3fc593b00194de16e36ee91faacd19053b4d5b', 51, 1, 'drcplee@yahoo.com', '[]', 0, '2021-03-20 10:36:40', '2021-03-20 10:36:40', '2022-03-20 18:36:40'),
('12baf3f199e2c8db89b6ec13daeca5872b26abf86cb8cd0118bcd8e74ab12ab577a2c59308ecff40', 66, 1, 'ashraffaiz2303@gmail.com', '[]', 0, '2021-03-16 08:03:55', '2021-03-16 08:03:55', '2022-03-16 16:03:55'),
('1369257f8f85d0adfe5fa992418abf4376bef7328c149972cd351dc8affceea6ab3f0c5edf196e08', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-14 11:36:17', '2021-03-14 11:36:17', '2022-03-14 19:36:17'),
('139d63e19ab154e590e32c7fc3dae95ae5928abc42d756fa4080c45f62f5a9758e123ba31992b86c', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-01-31 07:50:57', '2021-01-31 07:50:57', '2022-01-31 15:50:57'),
('14e72b3e9b77549b27f9ca0cdb693bc4696601ff8a545ff6c9fc91ab4fef653b38f05f84486d8011', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-11 09:04:28', '2021-02-11 09:04:28', '2022-02-11 17:04:28'),
('14f90c5fd27056282e9615cfbd39da5feb43102806c277014708bb29185dbb6ff5e0bf9bf4649b28', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 03:54:17', '2021-02-09 03:54:17', '2022-02-09 11:54:17'),
('153936bf3616acb4a2ebaa444fd14897f28567e96bd8308382954302c60a4a4e3f431ab0c660414e', 87, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-04-25 14:19:10', '2021-04-25 14:19:10', '2022-04-25 22:19:10'),
('15b9ba3c8c7ed4e88444b4b833cc61af96bddf17df7642d31b0c2891c9349b7cf9fbd161e051e3a0', 34, 1, 'khooyingshu@gmail.com', '[]', 0, '2021-02-28 03:03:37', '2021-02-28 03:03:37', '2022-02-28 11:03:37'),
('164c352796ac59d030cdf756ddff81565445bd7da199f3e6d342c34c590f67e692ccd13420df7931', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 19:03:16', '2021-02-07 19:03:16', '2022-02-08 03:03:16'),
('16bf02f9d49a4cd83064a424ad9169a6d125c65bda46c7e0212a898c9724b4a11b598f5ebe7b52f4', 56, 1, 'beryllium428@gmail.com', '[]', 0, '2021-03-22 04:05:27', '2021-03-22 04:05:27', '2022-03-22 12:05:27'),
('16f104c0b597b3f947c77569812fb59b3deeb2957e8e4456e08ac2bb9e71ddcba56add1773e64e1c', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 04:31:57', '2021-02-11 04:31:57', '2022-02-11 12:31:57'),
('1829e3df5f93a74e0647851783fc38f09f8bdbee602dd54d93a3e1ad533555f8a1f454e5c9e72b59', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-01-31 16:25:09', '2021-01-31 16:25:09', '2022-02-01 00:25:09'),
('1846ae99b2dd92523b25dade3824b0bd9be45adbb0d1bf5a0493bdb886345e52b0440cfd621544e2', 21, 1, 'Kalaiselviacesm@gmail.com', '[]', 0, '2021-02-17 23:37:13', '2021-02-17 23:37:13', '2022-02-18 07:37:13'),
('18d55340e0dffcaf6cdb11e114aa1acae6f4686f9171b20dda3e2f54252ed24aecc9791668c440a6', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-02-24 08:33:40', '2021-02-24 08:33:40', '2022-02-24 16:33:40'),
('19c197a3124bdd57c447eeae5f4defb2fe4b508d17f213b9d33a2e86845299fa2ad2808258cc4538', 18, 1, 'test_token', '[]', 0, '2021-02-08 06:24:32', '2021-02-08 06:24:32', '2022-02-08 14:24:32'),
('1af75e20f0e036850ac9029ed7197f25b26d9e0d39e9a07dfb43ec2a1c6349a9004d593052b8912d', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-08 06:59:35', '2021-02-08 06:59:35', '2022-02-08 14:59:35'),
('1b1726a841390e3fca40ade4d7b477084399c5ecc97b6873a89ab9d11c29e60c55eba7c654d0b739', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-09 00:42:25', '2021-02-09 00:42:25', '2022-02-09 08:42:25'),
('1b4827ed93b9a77c0e34692e454e8a19d9551f723da18e04056c28cca153cc259b58738131479286', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-10 15:16:58', '2021-02-10 15:16:58', '2022-02-10 23:16:58'),
('1bf2e27ef91050bab04e02d64abafb879db0a1f58d6c8eb55113c8fd59f13bdf77d13764b4d58668', 85, 1, 'random212323@url.com1', '[]', 0, '2021-04-25 13:10:02', '2021-04-25 13:10:02', '2022-04-25 21:10:02'),
('1c08a19a153243f5303b8e40c444262fa0bea2c400a717c121a17842bc4786d45b5525c083c8c9c9', 1, 1, 'dark@gmail.com', '[]', 0, '2021-01-31 07:06:31', '2021-01-31 07:06:31', '2022-01-31 15:06:31'),
('1c3841810734ed5d118f4db2fbac411450e7cdab073658717cd551f185c091e079a5fe7d7bab0ea4', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-08 06:54:09', '2021-02-08 06:54:09', '2022-02-08 14:54:09'),
('1c710ba11367f1c9932e4ea58bfa0420fc12f5c729b3f73074c086935c003d48e95c9c67834cd011', 32, 1, 'test_token', '[]', 0, '2021-02-26 03:33:59', '2021-02-26 03:33:59', '2022-02-26 11:33:59'),
('1c94ed67c4c574b463fd04eb4a7b2a9a85ab410dd0380dda6ff9f077ec0898258719e53cab5f5601', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-10 01:02:29', '2021-02-10 01:02:29', '2022-02-10 09:02:29'),
('1caada449c0acf83586c7e4f0eb994a28da8e9eaac0ec1381a68f91875178de5067447cd6e20eb27', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-24 21:46:03', '2021-02-24 21:46:03', '2022-02-25 05:46:03'),
('1d0c0a4628a43c19f6e1a4a3d3f57d570207907a226bdee1184970d825e41ebc5a5cd93c73536e70', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-23 08:08:24', '2021-02-23 08:08:24', '2022-02-23 16:08:24'),
('1d5603b5ee541393339e35ecb1dcf490fd57b00fd6502efcf48f63a9d5b5152a57bfc9662f77db8a', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-01-31 00:48:05', '2021-01-31 00:48:05', '2022-01-31 08:48:05'),
('1d8b036f6b278444111de877bf70fe01d05bef04e58a0e99bb1d7c9e6e39d4de034885c65481ec8c', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-15 03:45:00', '2021-03-15 03:45:00', '2022-03-15 11:45:00'),
('1edf949c0135e5406e308f2d723555bc87f5669696f863762f05bbbceef87d17524db455d5aa5fae', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-08 09:45:08', '2021-02-08 09:45:08', '2022-02-08 17:45:08'),
('1f05f1cc722004e29f238be2176b655cceb65593ec9981089069fa00299dee3461e2a841a9a0ba4c', 9, 1, 'dark@gmail.com', '[]', 0, '2021-02-03 20:55:55', '2021-02-03 20:55:55', '2022-02-04 04:55:55'),
('1f4689fb652e96d459b889021cb9e8d44de1b3b2143c63eed9fe7f27aa753d8e3a7483da6e6e9014', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-08 16:44:10', '2021-03-08 16:44:10', '2022-03-09 00:44:10'),
('201e8f1f28a627c37c265ab98dd5e895c21ddda150a7f270eddf4578cb425f038d7b1fcc4daa65bd', 31, 1, 'tasha_lee88@outlook.com', '[]', 0, '2021-02-21 13:06:39', '2021-02-21 13:06:39', '2022-02-21 21:06:39'),
('20853d898c493ae187724cbe6d700916fad32496c55ee36f863168f0b8f79df12142ec51c61f8792', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-24 11:50:40', '2021-02-24 11:50:40', '2022-02-24 19:50:40'),
('20c76b5c86d0c45c3ad6493e8bbb1fda1cec7f004bb65a705d194a2d5ce0b9fc64fc8423d7e94774', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 14:50:49', '2021-02-07 14:50:49', '2022-02-07 22:50:49'),
('214940f2ea8ee66d73ceb91f1f64bbe16ceb7540c1db94046a326ed89250fb1322d7ae32df97a67f', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-05 16:17:44', '2021-03-05 16:17:44', '2022-03-06 00:17:44'),
('2195468fb0ab84f2343a741bd0fb8df29b6108ed8cf79e96876d2bff49f56fa50d1d4b75cb51b41a', 50, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-14 11:56:13', '2021-03-14 11:56:13', '2022-03-14 19:56:13'),
('240b3d98bb78fe18cf1bebfa34dab72af1eaf54824e3f0720666f304a2fd51a67cc8f1d8b3e2ff5e', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-15 17:27:37', '2021-02-15 17:27:37', '2022-02-16 01:27:37'),
('2414f1d07acce2a21cbfe1c86942f6a89c602849fe54cf11057f3d6f5ebb76dead5de1256eb289a7', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 04:31:25', '2021-02-07 04:31:25', '2022-02-07 12:31:25'),
('245724055eecd994361854722534550649fd923fa5b4a5942f9e124560b34c6cfcf19510cb237f16', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-10 15:16:05', '2021-02-10 15:16:05', '2022-02-10 23:16:05'),
('24dff27315d13a7ea38b9dda00e172943c930d171b74da94c066259223df7838af4b04c81bec01c1', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-20 10:34:39', '2021-02-20 10:34:39', '2022-02-20 18:34:39'),
('254184711a69d76b411004a516eb92d28aa3a3dfe7ca9f48fdcdf637203784e99fbd91f8ba7f0d7e', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-22 12:53:29', '2021-02-22 12:53:29', '2022-02-22 20:53:29'),
('2593a3f145f34310825e0465bc9dcbc56ec8aa16f2b0d80b52d1fa2c751b9d60af5e4e2542b60c34', 24, 1, 'rajeshwaran0925@gmail.com', '[]', 0, '2021-02-26 06:35:46', '2021-02-26 06:35:46', '2022-02-26 14:35:46'),
('275e2de9b7c23c241c4f9dc60832d2cb5b6710d4301c68f181bf2ff59e816f9d6cda0359a4674ed9', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 01:34:44', '2021-02-08 01:34:44', '2022-02-08 09:34:44'),
('2a02f065614c5876c45abef5acef776452f1a0314e381da8570558891c78b0e90959132fa58e5962', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-10 00:50:26', '2021-02-10 00:50:26', '2022-02-10 08:50:26'),
('2a2f3a2774f7b28c65f6a2ca1e8fa5522602005385aceab2f69a6561ea8b92e5379f917d65abc170', 62, 1, 'manikkam.rajagopal@gmail.com', '[]', 0, '2021-03-15 14:22:58', '2021-03-15 14:22:58', '2022-03-15 22:22:58'),
('2a5592b1d584c4a058f0cb426c6059d8c7bbf64a0dc1c75c09839191d3f2feb194b6a47e81da1b34', 31, 1, 'tasha_lee88@outlook.com', '[]', 0, '2021-02-28 00:51:03', '2021-02-28 00:51:03', '2022-02-28 08:51:03'),
('2a767d59cb500d1f3144f6f412303782e7f7f0e4d2fe1dbaa751c1b84fb782979e79929a44b42b7f', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-10 09:13:09', '2021-02-10 09:13:09', '2022-02-10 17:13:09'),
('2aa249289d8d552fe72946ec64b1ad3a328fed79b7bc849ed4e4c9441c22de112daf2aca79f4e94b', 75, 1, 'random223@url.com', '[]', 0, '2021-03-26 08:41:31', '2021-03-26 08:41:31', '2022-03-26 16:41:31'),
('2b776164e9508e8cde8e037a6830c5ce87e7b0d4efa12378059d657da85d5ef38ceb03138a88d65b', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-17 23:29:29', '2021-02-17 23:29:29', '2022-02-18 07:29:29'),
('2be78f9ab91e998a296ab21836313046dff3732f7c9440d4f10d9a7596ae2d8a7190f65f17c41596', 25, 1, 'adli_ahmadzaharudin@yahoo.com', '[]', 0, '2021-02-25 07:04:08', '2021-02-25 07:04:08', '2022-02-25 15:04:08'),
('2c6ed187a77943c277c044b230857d81db0d8f584be32abe1d3be05e4e19e1adc30a0cb5c0246881', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-20 12:09:35', '2021-02-20 12:09:35', '2022-02-20 20:09:35'),
('2caa9783ffc04340bc0154c7d9bc4da96f8cc118efe1d3254e07e8a9470ac9d68508502c7755bd05', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 07:38:41', '2021-02-08 07:38:41', '2022-02-08 15:38:41'),
('2cc673457009766a83b01d6cbb5aea3ddc8375307198ebebaea6bcba1500f107108d1d9af3d55541', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-10 02:48:43', '2021-02-10 02:48:43', '2022-02-10 10:48:43'),
('2dec39a791ffaa1baa9e84f293915a0c0db8ce064e0d0f87197bae52f93b370ad4f296183d5b3b50', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 23:03:07', '2021-02-09 23:03:07', '2022-02-10 07:03:07'),
('2e365adb3959f61d22db14dc584dfb5f66b0b3eb1682fa3b2b2e1a00138520a7913ec19391039db5', 11, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 16:05:59', '2021-02-07 16:05:59', '2022-02-08 00:05:59'),
('2e8066cd297dc386bebf9b9f7a80fda3bfc6fda50b39dd399cad72854e97979899f3fa5f2682a472', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-23 10:11:06', '2021-03-23 10:11:06', '2022-03-23 18:11:06'),
('2f1fdafddc22a561aa8d9ee8c7c4c09852579a273626df491d81cef4b4c7dcfee5acbe7aaee11611', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-15 03:45:24', '2021-03-15 03:45:24', '2022-03-15 11:45:24'),
('2fb0780b6dfe71d35ebe4b6b5b00ea4c9f9b3ad6ee4c0d173809297f07129f00f38cb6bef8289bb7', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-07 03:51:15', '2021-03-07 03:51:15', '2022-03-07 11:51:15'),
('304d1e7e8e15172fc7c3b5350212760412e17d6c1b9ef02602100403874271d695bb269d80b48f65', 65, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-03-22 02:17:40', '2021-03-22 02:17:40', '2022-03-22 10:17:40'),
('32d841d197374940e7b7ce34bc1b24eb8b6e09547162079b35c436820230504569b9efed9192d9d4', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 18:56:05', '2021-02-07 18:56:05', '2022-02-08 02:56:05'),
('33d078d25f3f88998188a4e99a1d18c988e7e3e9be49aefe16a7b2d657f30bc3f5187461a12f57ef', 59, 1, 'adli_ahmadzaharudin@yahoo.com', '[]', 0, '2021-03-23 09:55:48', '2021-03-23 09:55:48', '2022-03-23 17:55:48'),
('33ea0d69c4b318698a106beb6fb800cfc1cae961fec87b83ccdc7f21d3be33df8cba8a1c2fad8f48', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-12 16:44:45', '2021-02-12 16:44:45', '2022-02-13 00:44:45'),
('3470a3d2f07b4f05dee67104e2602436ba64f08307d57d296440471ee352b8d2f0ea7c371405d94a', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-08 01:07:41', '2021-02-08 01:07:41', '2022-02-08 09:07:41'),
('347c174bf3448f4c9300e0c7e77d56a4ea5962ec59457893c2c30ca51814587aeabb36ffe8b54bdc', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-09 18:14:23', '2021-02-09 18:14:23', '2022-02-10 02:14:23'),
('36132332425746a15fb345e34d4f16e016f09d9e83457789b195aeb2ab48e5218bb3ac57416a1296', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-02-26 15:52:53', '2021-02-26 15:52:53', '2022-02-26 23:52:53'),
('37044775ceb7b575baea9aeb721b25bc35cf3e46d0177ae8fdc92bbb116dec30c82c3e2a7c60ce01', 72, 1, 'jackob@gmail.com', '[]', 0, '2021-03-24 13:42:26', '2021-03-24 13:42:26', '2022-03-24 21:42:26'),
('3737850dec6fc93122f369e4cdb144223bc3b7cdedb20472a5bd3704b923cf8da365229d77616f70', 90, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-04-27 02:30:46', '2021-04-27 02:30:46', '2022-04-27 10:30:46'),
('379a27bddd7a54083e8c82d683aff7b347402e50e691a83e03acd889fc6fb20cd4d7dd7448b00b2e', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-18 22:14:48', '2021-02-18 22:14:48', '2022-02-19 06:14:48'),
('3865fb4c93004191305a662d9580ffe7b8aaaf47d8ad4c5c19626250ffa7b969439a3be8d5c7fb37', 42, 1, 'dar123123k@gmail.com', '[]', 0, '2021-03-12 05:28:14', '2021-03-12 05:28:14', '2022-03-12 13:28:14'),
('38d6dc7bfee35bfa567dab169caba0b879d8c7d5ed9d316d4f45ef6bf63b19cd49803ddf70f4b90d', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-22 09:34:47', '2021-03-22 09:34:47', '2022-03-22 17:34:47'),
('39e6370ae43efc2810a16238f83c6a6b6eff1dab824c661708b8277ee4b0acefbc04a9696396ccbc', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-22 03:19:11', '2021-03-22 03:19:11', '2022-03-22 11:19:11'),
('3a8c6af2c908fe70f7f03a64c07dca438d15d5fb39b8f2bacd3d04c8a114885dba956407e8cd066c', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 01:39:05', '2021-02-08 01:39:05', '2022-02-08 09:39:05'),
('3b033a982160aaaca4467f0eb2ce071470dd8fc3a64cdbf94f277f6e1167557dff320290dc5817e1', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-12 16:43:28', '2021-02-12 16:43:28', '2022-02-13 00:43:28'),
('3b6317b8973c58e957f84079bc5dea79a7f7b963c36d0bcc5a51fa07fe87153b429a134611754da2', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-02-27 04:57:09', '2021-02-27 04:57:09', '2022-02-27 12:57:09'),
('3b6bcfe80caa64a270841fba18c8096ac0e9623fe333482ffd5c3cc186735483129b08f3ab79231f', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 08:14:45', '2021-02-11 08:14:45', '2022-02-11 16:14:45'),
('3bca131a3929fbcbaf9242dff549c839eedaacadc0d89501c5a6029d936278827ad8e5e6027c62c6', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-05 13:53:26', '2021-03-05 13:53:26', '2022-03-05 21:53:26'),
('3d133b819c7696075f2dcc8955bf0c90e75fbf03dff669d7d6b1623b7d88c940ca4d1dac4fe45ba6', 90, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-04-27 02:39:28', '2021-04-27 02:39:28', '2022-04-27 10:39:28'),
('3d62c9be2b05446169f9b923874b19a70667f9a3ee4a12b66d87f86acf4cc703a8b93e98521954bf', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-09 08:00:49', '2021-02-09 08:00:49', '2022-02-09 16:00:49'),
('3de86dc01814ce07c756a2b049b93c4760f7f8fdc6b10c9871c5fb5d1c7c6afd00f72469fffb1079', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-02-22 14:08:39', '2021-02-22 14:08:39', '2022-02-22 22:08:39'),
('3dfc94c7cd67253075d9a54872021728905fa58d9fcf3ae601be7bdcd85da763819a52ba2bb7c73c', 52, 1, 'rajeshwaran0925@gmail.com', '[]', 0, '2021-03-15 03:29:45', '2021-03-15 03:29:45', '2022-03-15 11:29:45'),
('3e7e5d913708128560ed58acaeebe527de4366b982a1e8c08f9f43b8c2017d1f31b99e04973d055a', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-14 16:30:38', '2021-02-14 16:30:38', '2022-02-15 00:30:38'),
('3ebc138330e907e0f01bb5b86ed0c42b5e427dbdd3692195dd74e279c5877e4c6258105e57371963', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-16 00:31:55', '2021-02-16 00:31:55', '2022-02-16 08:31:55'),
('3f15463a4531bdcadde5fd20bfc179e86bfcbdf549bc94dad1ce1f89ae0bf8717b7c88051b4789a8', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-13 17:34:42', '2021-02-13 17:34:42', '2022-02-14 01:34:42'),
('3f17652c9c5d4ca6d89fe6e6cd4cb4dccf7deda1444bc4a1172ad4fc0b21b61c5c06a04fe6fc358e', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-17 23:29:29', '2021-02-17 23:29:29', '2022-02-18 07:29:29'),
('415ea2a2212ca4d1d29d179246a333b3ad6de5f16fac33bb709f5d1274d77ebc4492f776e6396f51', 13, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-07 16:21:43', '2021-02-07 16:21:43', '2022-02-08 00:21:43'),
('41bc65c04911d5deb6bf4b5804a8e618c0421bf2f5ec47293294b2907d4955e2b8e8f2ab6e1d75c5', 11, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 15:59:59', '2021-02-07 15:59:59', '2022-02-07 23:59:59'),
('41ca938aff549658d3d383ec5f61e74ba56d0529c2a81c52b62d48e1e648aae9bf077ac523c22ff9', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-03-07 04:50:23', '2021-03-07 04:50:23', '2022-03-07 12:50:23'),
('41dc7fbd2a8f56debac2fff83ff8ac4095ecec9bbc36e416e02cda80bd324431a08c626f2137ff03', 12, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-07 09:51:03', '2021-02-07 09:51:03', '2022-02-07 17:51:03'),
('429a69ce93edc857d5f0438f9955588b664c9ed4a409556c640cf8e43a0558ab4d405830c206f0a9', 81, 1, 'test@gm.com', '[]', 0, '2021-04-16 09:03:15', '2021-04-16 09:03:15', '2022-04-16 17:03:15'),
('43a578890df6423d9280b17da1492c39f5b8534d074092742fe907936dfaa1292340f1329f33c10e', 21, 1, 'Kalaiselviacesm@gmail.com', '[]', 0, '2021-02-20 10:48:23', '2021-02-20 10:48:23', '2022-02-20 18:48:23'),
('4540d41bff091c5ab6b2db70bcd70cd5c72d881efe49bab70987aa50dbb04308a25e39b18afb6ca9', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-01-31 16:17:21', '2021-01-31 16:17:21', '2022-02-01 00:17:21'),
('457b6f459f8d641bcdc2ed2f59aab45ec21f135c96f4b1224836629d75bfb50d2c2807533c3fe246', 32, 1, 'cellsnutrition@gmail.com', '[]', 0, '2021-02-24 16:30:11', '2021-02-24 16:30:11', '2022-02-25 00:30:11'),
('4600e2aeba3dcd46ec5edc6869284deb280b2fa039cb0218ab2569b6d17086bb82091002e78aa629', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 14:15:15', '2021-03-26 14:15:15', '2022-03-26 22:15:15'),
('47eb0f55afe9fe4ef899e77534ae1bc459c0099a4622ed488aa031779992661ead6c920bab0944ed', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-02-16 00:38:52', '2021-02-16 00:38:52', '2022-02-16 08:38:52'),
('4891d9aff498cb25bef47af0bba327bb602f07052b59effc37222a235259e264ed1ea6a519060f69', 5, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-01-31 16:13:57', '2021-01-31 16:13:57', '2022-02-01 00:13:57'),
('48b8836f48889e8fabc0ca05fbd9c458b55cb4db6f567c4839126398d24e512ccdb60ba51e554e62', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-21 11:06:02', '2021-03-21 11:06:02', '2022-03-21 19:06:02'),
('49113093a241aa7ad61eee612d3aa38c8643cf59d4096435f4dade9093e4a17ca4552d5bd8af4dfb', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-03 06:14:11', '2021-02-03 06:14:11', '2022-02-03 14:14:11'),
('491ae56c26fee1a90d814644bc05dfb5a58cdeed9216c592ea8a20c7a04f596c8e7647533f27288a', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-02-23 12:26:57', '2021-02-23 12:26:57', '2022-02-23 20:26:57'),
('4a48270582be41d3f1ddc6d763ee982d9c5f21668bb72d6107af083741b8461a0b99d95c1a6036d0', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 02:30:11', '2021-02-09 02:30:11', '2022-02-09 10:30:11'),
('4a707338d1fd6db06f8d448a4019ae8c82c756d1de8b26259c7cc04746afa91a6dd3974bf23065f1', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-03-15 08:56:06', '2021-03-15 08:56:06', '2022-03-15 16:56:06'),
('4aad3a144cbf988f25e00620c9b223c5a1bd4ff179c7f006fd140268c20c423c3daca0ec0b6873a9', 72, 1, 'jackob@gmail.com', '[]', 0, '2021-03-26 04:11:50', '2021-03-26 04:11:50', '2022-03-26 12:11:50'),
('4bdb2bebc1c6604c0363cf4d4c3f27c1e762b37b3a041a80a146b7a326a8d6ae874d6684562b9f4d', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-15 03:48:37', '2021-03-15 03:48:37', '2022-03-15 11:48:37'),
('4caeb924aaaf7efb83e3a0c1229a4aa771a316ee0d16e9743ef8d7a7156a8d017d5704320bce08d9', 88, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-05-02 06:33:40', '2021-05-02 06:33:40', '2022-05-02 14:33:40'),
('4cebe713318f5e71c42e9e9cfd506b42eb88e15f9d36ea14441d0cf22bcc5dbed1d8b449eed6102b', 7, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-01 19:01:57', '2021-02-01 19:01:57', '2022-02-02 03:01:57'),
('4d8a3c6ec76e856eead55f6d39f36ac6188c3f71bd45bb5a4e33c09fb86ce22b382fddc302c95518', 11, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 07:57:16', '2021-02-07 07:57:16', '2022-02-07 15:57:16'),
('4dbb141d2ea12550319d059caf396f252ce0be002e91a805f7260b702a2081ef42f894e6194e9831', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-09 17:42:58', '2021-02-09 17:42:58', '2022-02-10 01:42:58'),
('4dbb21359eea0932650711c5c398bd7dac9cdb371ab8bc500a410a021b18ca19886ad3ed6d9d62d4', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-14 14:58:44', '2021-02-14 14:58:44', '2022-02-14 22:58:44'),
('4ddac4535c9012778587294f231e66fd7f4ab32d0c58c2d1c6ed136461904ebb3bc790c37f8e6834', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-11 05:28:11', '2021-02-11 05:28:11', '2022-02-11 13:28:11'),
('4f0755de548a339fb0ba701e9a25d51566108f682da739001872150eaea17889f85c7966cc060d83', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 03:57:20', '2021-02-09 03:57:20', '2022-02-09 11:57:20'),
('4f3e40ba7f3c5f8ae575317c6923e012b34ab6e770f5dac73037e97762c9c1a93fd466e84bf1cd15', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-24 06:41:35', '2021-02-24 06:41:35', '2022-02-24 14:41:35'),
('4f7166c21c2521c7677f9814e28dfd36f0909698265aee3cef1e2dbd82b6dd5b3b896fb3715c074b', 65, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-03-20 12:35:31', '2021-03-20 12:35:31', '2022-03-20 20:35:31'),
('4f8a9de94d16b21540ac88989760a4639a37caa1e8336199bbae598e687b47e88d928f873df58978', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 15:47:51', '2021-03-26 15:47:51', '2022-03-26 23:47:51'),
('4ff242520e342c66e4d6df7486760b995a415523e37939deada79f39d53456db09dbab9c93f0c0ff', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-08 08:37:49', '2021-02-08 08:37:49', '2022-02-08 16:37:49'),
('50a0108cb282a0a80bf4fd4fa0e052fddc23c72a8fd0198e0b676139fa0d022f77f14c4035f298e5', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 18:18:59', '2021-02-08 18:18:59', '2022-02-09 02:18:59'),
('50d6c1517979f4ce3e611f171f2c5d468cc0390339a85e9e7e90c51ec9b36cb26a3065bd1a3cfda5', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 21:28:57', '2021-02-08 21:28:57', '2022-02-09 05:28:57'),
('51450f8216a0a6b7e16867f92bbc8825b5d294d0a94f318963e78e24f1fc942b14920d40bb476ec0', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-05 01:52:03', '2021-02-05 01:52:03', '2022-02-05 09:52:03'),
('51a465f56a1afd4e1a531509efeb81889c1d30c11990e1074bbcac95bcc78105dd080e7d5bb77b3d', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 12:14:14', '2021-03-26 12:14:14', '2022-03-26 20:14:14'),
('51e03d6bf5a3b3307c7703d0080c7d58b3cb83049c02199f7c5e388bbc516c433053b3790e325111', 10, 1, 'test_token', '[]', 0, '2021-04-20 13:15:50', '2021-04-20 13:15:50', '2022-04-20 21:15:50'),
('5370121ce87d2e68475796f97db1faf721ea5af41ff5f84c187eb7fc31e2577074a776247f6cc079', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-11 16:49:03', '2021-02-11 16:49:03', '2022-02-12 00:49:03'),
('53aeee2147289d5330ad19c1b17d76f3093b0deec1f2ed54e6fa2fbbbb802fae2d11e0494f463a15', 29, 1, 'cheeminglee@hotmail.com', '[]', 0, '2021-02-18 04:27:18', '2021-02-18 04:27:18', '2022-02-18 12:27:18'),
('53c2edcc516ed9f078504249b177cf506bd7618227beedaa1c3df17f98aa80cd6c45393683da8aa2', 19, 1, 'test_token', '[]', 0, '2021-02-24 08:40:13', '2021-02-24 08:40:13', '2022-02-24 16:40:13'),
('53cff41041c6f71748e5207374da26638d607d45551d5aeb9d07dab87ffb69321060ba28f5dbc332', 91, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-04-28 00:31:46', '2021-04-28 00:31:46', '2022-04-28 08:31:46'),
('5464a94d6503aac60c92ab8c434a11529afbc3304a77b932c8f16e7151eb1fda4326a4b081d1ba5d', 4, 1, 'High@gmail.com', '[]', 0, '2021-01-31 07:43:32', '2021-01-31 07:43:32', '2022-01-31 15:43:32'),
('54a86962a6bf9071cdf4478b887d771d500f79fb89a847aca9bf6cb0cccd220c38294ed3aee4d4c1', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 02:42:33', '2021-02-09 02:42:33', '2022-02-09 10:42:33'),
('553621cfe72ee91b6a26c2b714fd80fef6577940d69d8c4db10ddf6651c5da18fe074ba4d729a47c', 48, 1, 'hjfjf@gmail.ckkf', '[]', 0, '2021-03-12 07:26:45', '2021-03-12 07:26:45', '2022-03-12 15:26:45'),
('559bee42669f9ae55c94c1a60cfa153a4608ef99c7bfc30a99cc62c195b13940f25ef517ce2f3d36', 5, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 03:52:44', '2021-02-07 03:52:44', '2022-02-07 11:52:44'),
('55bbbd39bccffcb7b7cc250b0a7de13e50785e481dc466c454e230407cc5caf90dee0d05c6d60f3c', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 04:34:29', '2021-02-07 04:34:29', '2022-02-07 12:34:29'),
('569934ca6ac5408cbfe36d4f316b99cf099536b8f3f55c42c5aef99fee3683bc4f5eaafd8bd7bbee', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-05 06:01:48', '2021-02-05 06:01:48', '2022-02-05 14:01:48'),
('576323d37f59e91bb35d91eb87dda2596f31e1040a03d5adbd52963573c2ad512c993ac18a29f3a9', 49, 1, 'mytyffa@yahoo.com', '[]', 0, '2021-03-12 07:44:19', '2021-03-12 07:44:19', '2022-03-12 15:44:19'),
('5795281660113065e1e23242b7c15f320d2298bc4d848c48ff827aeb1f317b9a7bbf130de6e4d2c4', 56, 1, 'beryllium428@gmail.com', '[]', 0, '2021-03-15 03:43:59', '2021-03-15 03:43:59', '2022-03-15 11:43:59'),
('5806bf3a9a55373829aaa40e8a39248c5b8c47545887fa6fda8e9435c0ee2c3e1511b98e74bfeb04', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-01-31 03:47:17', '2021-01-31 03:47:17', '2022-01-31 11:47:17'),
('5a651bbf426ecbc6db2dd33368548b638507e9e112152ab4c884d0252c65a23ddabee70d0534b992', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 23:24:50', '2021-02-08 23:24:50', '2022-02-09 07:24:50'),
('5af2d3dfef0cf280478bd09bec0450cbc8de2534ce5f203ebebc638b8d3169b4f29e0f7fe42a2c89', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-03 21:13:30', '2021-02-03 21:13:30', '2022-02-04 05:13:30'),
('5b45d181ea8a7a00429da5be9a698d3c9561a4fe78f9baf267a492927dbff680508a4ee277423b3c', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-10 16:09:24', '2021-02-10 16:09:24', '2022-02-11 00:09:24'),
('5b81f4ba56ccec4486b2974f24e910cf49be2889f0d6896eeba2ac1f62d6f0dcd14ca5e38d56d87f', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-13 16:51:02', '2021-02-13 16:51:02', '2022-02-14 00:51:02'),
('5cafabcb5a6ca76409ca758db7a6136890797690c291429556e2456366e411edddcb1ae95df31292', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 05:02:23', '2021-02-09 05:02:23', '2022-02-09 13:02:23'),
('5d0664c558f880e39d541ce207227ccf8a93398920f6436ab3c724af08440220a2d120749c4c644e', 88, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-04-25 14:30:23', '2021-04-25 14:30:23', '2022-04-25 22:30:23'),
('5d33ec86dae25fdee6684a76be739c8768ac53befb630ff92cb84d293ce03d94b15e969d578e6908', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-10 05:44:43', '2021-02-10 05:44:43', '2022-02-10 13:44:43'),
('5d585de13ef9d754786f9f74459044dac6809717f59928e5d14b519b2721806b5c9a01ed92c5a125', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-14 11:46:35', '2021-03-14 11:46:35', '2022-03-14 19:46:35'),
('5dc364f49aaaca9cfe334637f2adaf0113f2dc918f027b4a4a09eb8ff6c14b2eb278c6688853d523', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-18 17:54:11', '2021-02-18 17:54:11', '2022-02-19 01:54:11'),
('5df33a0678d79c8f47267cc240db9881d694386499310d568d62d5d7ba3d3a198a519f60b9f1e57f', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-08 02:18:36', '2021-02-08 02:18:36', '2022-02-08 10:18:36'),
('5e2087c32ffae36bf3dcea890c54e68650acff88397dd645042d02729c87249dce456c073b551dab', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-08 02:28:04', '2021-02-08 02:28:04', '2022-02-08 10:28:04'),
('5e4ca5630e090ea5b81d85a998947a816814ab32044267242f8ccee66126dc04ca88daefebb6c789', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-01-31 00:35:24', '2021-01-31 00:35:24', '2022-01-31 08:35:24'),
('5e81021ca88f177c0191d38a214b1c2fb900bcb6c0ab87dc69170e299894edc9c9d836fb826f3520', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-15 10:22:39', '2021-03-15 10:22:39', '2022-03-15 18:22:39'),
('5f1a587179a6af6782736158d1604325ea00e05e8a66b150049c9ba9314201901b26a49becb3c214', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-17 23:28:46', '2021-02-17 23:28:46', '2022-02-18 07:28:46'),
('5fe09b05fa394c09ce97a62db434cec1e8e01779800357235f7cd688d3ccd230e8bb8760418f1b59', 28, 1, 'leechechen@gmail.com', '[]', 0, '2021-02-18 00:10:43', '2021-02-18 00:10:43', '2022-02-18 08:10:43'),
('609cfbb60a36840206f31cb0f02a141a266842d9e12b619c91bcc2be86c9bfb2c24b1819ea65680e', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-14 05:32:13', '2021-02-14 05:32:13', '2022-02-14 13:32:13'),
('61954821a670c98ab84962f630f7cec672f2baa4c1bc48c72fa4946c937710e624e803f6f36699a3', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 10:45:43', '2021-02-11 10:45:43', '2022-02-11 18:45:43'),
('6236f59d9878cf047e9d746bb3a012f5319975d1ac15d2d9bdf2d18091b22a97ea2de9be1f19e1e1', 29, 1, 'cheeminglee@hotmail.com', '[]', 0, '2021-02-18 04:28:23', '2021-02-18 04:28:23', '2022-02-18 12:28:23'),
('629aeadebc171a4b1f2ebdbaeaeedc34f92461f2500ffc62947fd11b23e3e3b5b69be0a02d0a41ac', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-03-20 05:46:39', '2021-03-20 05:46:39', '2022-03-20 13:46:39'),
('62e80bafbb2183ec60923d12f64179da2d9a8d245726ba7b7cfa67d1c45114f81cf42c61be01cf3d', 63, 1, 'cellsnutrition@gmail.com', '[]', 0, '2021-03-16 02:04:38', '2021-03-16 02:04:38', '2022-03-16 10:04:38'),
('63d4e7a40dbaf5e6e3a4ba41491d1db765251b4982e1edff7ea8e32d46aacf5d919131f53c803745', 23, 1, 'praadeshmaniam@gmail.com', '[]', 0, '2021-02-16 21:57:08', '2021-02-16 21:57:08', '2022-02-17 05:57:08'),
('64287063d40a4861a6fb99d93db35fdbcca85221074b4de19f7c2b727ad86c7be517f5f07aece490', 11, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 07:49:59', '2021-02-07 07:49:59', '2022-02-07 15:49:59'),
('6577f7d2041b81fdb48adb598328b15ed84344387ad8c7e1b0e8fc1565c601b38cbbb59bbd252ea2', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-03-07 05:57:02', '2021-03-07 05:57:02', '2022-03-07 13:57:02'),
('65cf1d326e9bdff88ad933e0dbdec545badbbd580b1261464e6cd45cf3d1fd7c5f39ebc4aeaf61a4', 68, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-03-17 13:44:50', '2021-03-17 13:44:50', '2022-03-17 21:44:50'),
('65d4f1339e0923f8610362c92640e988139a9e40680ef67f89b4a26cff08bec48669b83ee39edf1b', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-27 02:37:39', '2021-03-27 02:37:39', '2022-03-27 10:37:39'),
('660c58779de8ac7d276ef1d507fd1795e3006fbd03b7c6bcd43acfc319187b0afa310f5a77334038', 21, 1, 'Kalaiselviacesm@gmail.com', '[]', 0, '2021-02-22 02:00:30', '2021-02-22 02:00:30', '2022-02-22 10:00:30'),
('662ad946fd68b04ce320121819723f4f4daae16b3ce42af78f23155d28fbffff415d488a60929d20', 17, 1, 'test_token', '[]', 0, '2021-02-23 17:19:40', '2021-02-23 17:19:40', '2022-02-24 01:19:40'),
('6703c238076cd08bc1c5f028fd4fcaf216353984992a788301bde4f126f2bad6866eca3e32912fa5', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-19 13:18:34', '2021-02-19 13:18:34', '2022-02-19 21:18:34'),
('68b0049cf7aff818fca696a1fe63ae253ede613246c2dcf7436b62cb13a90d14e6ace3111d645cef', 25, 1, 'adli_ahmadzaharudin@yahoo.com', '[]', 0, '2021-02-22 03:38:47', '2021-02-22 03:38:47', '2022-02-22 11:38:47'),
('69889b1705af951cedb9e391082c7a13083e67d434a0cbb42efd4c78fa7b0eab4ac55d5b2b0c794f', 23, 1, 'praadeshmaniam@gmail.com', '[]', 0, '2021-03-07 04:12:53', '2021-03-07 04:12:53', '2022-03-07 12:12:53'),
('69ab98af05074f9682ddc5943158df0ebb92417529bafa6b4fc3913c0e33f2a801e86c9f44bc5923', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 16:23:16', '2021-02-08 16:23:16', '2022-02-09 00:23:16'),
('6a64776792d6f5283fd0ffd35739033e92fb6cd23435f3d3fa945b9c38b1bafc473e4b47a4e8d402', 13, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-08 01:29:35', '2021-02-08 01:29:35', '2022-02-08 09:29:35'),
('6a6bbffc83779cc6e3a1df7bdeede2e2948079c6fe12860d261f8aed4d36c548c4153468addc9afb', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 19:28:30', '2021-02-07 19:28:30', '2022-02-08 03:28:30'),
('6ac09edaaf1bc473ff82f3e248ff806f24de9916c0ebadc751984c383253c93fb6444558c250b79a', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-02 22:05:29', '2021-02-02 22:05:29', '2022-02-03 06:05:29'),
('6b47825f6ca16d42201c5b9e13d54eefe028e43976c1038d46338f1e2bae01979d5009b07e8aaad0', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-12 16:38:25', '2021-02-12 16:38:25', '2022-02-13 00:38:25'),
('6b68c3acd47a4a4caf749d467141552354c873cf6073b88318e2a5a1a052fc5de592ffd7b20bf71c', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-07 03:29:27', '2021-03-07 03:29:27', '2022-03-07 11:29:27'),
('6b8103549f6d2882d6fcb238847ffbd330ba743ca960751b61ab47e4d56c6abd7a4e12e560c648c4', 80, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-27 04:37:40', '2021-03-27 04:37:40', '2022-03-27 12:37:40'),
('6c7ddd2b91bd0b9a202abcdae634ca10e255f583bc26579efa7098aba55ac2b18f130da88acb023f', 24, 1, 'rajeshwaran0925@gmail.com', '[]', 0, '2021-02-20 11:23:24', '2021-02-20 11:23:24', '2022-02-20 19:23:24'),
('6c8dca1cf30a69407008eb7f330eec6a9bc8b7e7f759934398fd4547ee359c7b5e9a85d49624624c', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 08:05:28', '2021-02-11 08:05:28', '2022-02-11 16:05:28'),
('6ca4eac14986eb81c61a891e6cda5e5cf248d941c37ae095edbbada32c251f9ec921d13b4c2221e0', 12, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-07 15:57:05', '2021-02-07 15:57:05', '2022-02-07 23:57:05'),
('6dce96910132a5ca347d073e8eea1115f5fe67799da7c024492f742f490fd6f5c18adfbb053f539f', 84, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-04-20 00:22:10', '2021-04-20 00:22:10', '2022-04-20 08:22:10'),
('6e7bc47de7535e765aac44e9eb84e899ab516d36589ec8714b905c3e70112fbcbf91e4e6118d66d9', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-09 08:12:21', '2021-02-09 08:12:21', '2022-02-09 16:12:21'),
('6e84e9090e9cfe2c14ed858d9e0ce630326e59d2a53586e3fcf487a1758ec6104f6825ac56ab5512', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-09 17:18:00', '2021-02-09 17:18:00', '2022-02-10 01:18:00'),
('6e85af31f27e9a2ba236a0a3a7ac0d39246296dd0a3d1bc72dc8e5e6c6c6a3ffeaa30447a6491627', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-24 11:51:35', '2021-02-24 11:51:35', '2022-02-24 19:51:35'),
('6eca37a5f9ceb5a7aaf78dae60bbecd1d54208f7d03599aa998aae56e0b85373352dbc3e57ee31a1', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 16:43:19', '2021-02-09 16:43:19', '2022-02-10 00:43:19'),
('6ee2f61d3dc7b9b52bd6f54169655869f8b03b8dce2973fdcd39b1617e474158a684f0290b4dfce5', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-13 01:27:31', '2021-02-13 01:27:31', '2022-02-13 09:27:31'),
('6fe1d5135247b4fd928090b8a2046f858f0d7acad2e2c730dd78856252f8f21dc5e299065555ca64', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-15 16:10:28', '2021-02-15 16:10:28', '2022-02-16 00:10:28'),
('70784a5638ea4ea77a9ac0a2f131e69832ad6ef4008eea254f819ea9206315b110813895de7741a2', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-13 23:33:59', '2021-02-13 23:33:59', '2022-02-14 07:33:59'),
('711b31ca4880ab6f8be852a100ba3fc236775015e11a22a68dc65ee82fbed06a47c8f41937d7e6a3', 82, 1, 'random@random.com', '[]', 0, '2021-04-17 06:25:24', '2021-04-17 06:25:24', '2022-04-17 14:25:24'),
('723a5833457c2fdd41a8a1a6919d6dafd5802e86b9b0e12b52922a49af113e4eea20b2b635bb0f16', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-03 22:40:15', '2021-02-03 22:40:15', '2022-02-04 06:40:15'),
('72aaf54be1d59a4cde01a3fa3ffa0070dd86bde6b836fb858040f0c63b42c9b9965892118ef8a148', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-08 02:40:04', '2021-02-08 02:40:04', '2022-02-08 10:40:04'),
('73b102d7b45eb93f48754f05781c6314d7565f2bf8c86c3ee851edbbc20d1f290909911320ae9899', 63, 1, 'cellsnutrition@gmail.com', '[]', 0, '2021-03-15 14:55:37', '2021-03-15 14:55:37', '2022-03-15 22:55:37'),
('73c2de686d9b8b921406a33b4058a383c6c4a9348627a718914395fea4bae721fc11ba0dd6ee42eb', 50, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-29 00:14:16', '2021-03-29 00:14:16', '2022-03-29 08:14:16'),
('744d524c9345f77949b94f9672eac807865dbf3b2ce08b7854accbb7de6d88f174a1417f7b07a3c1', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-03-08 01:15:41', '2021-03-08 01:15:41', '2022-03-08 09:15:41'),
('745a8b6699f304c4fe7158c1bbaa189d6edbe0a9eaa97336f5dd8506d4bfea3c09290edb07b7bc3f', 1, 1, 'test_token', '[]', 0, '2021-01-30 22:22:44', '2021-01-30 22:22:44', '2022-01-31 06:22:44'),
('75345ce706d544918f80e16a7c4d39796aedae34939b73f10f640b1cde3d748803d8b262afa4f006', 64, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-03-20 11:10:13', '2021-03-20 11:10:13', '2022-03-20 19:10:13'),
('75763f8f26638ec78b7295e8ae186dd6e1d4836005cf98d6cb61718ab57538c073fdf3c6adc94d3f', 69, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-03-18 01:27:36', '2021-03-18 01:27:36', '2022-03-18 09:27:36'),
('75d908ea8057c6014f99940dd3760d2dde429676227db33f1ac1d837a91ae0ae62b92918f07db7fa', 73, 1, 'kunalk@gmail.com', '[]', 0, '2021-03-26 08:38:21', '2021-03-26 08:38:21', '2022-03-26 16:38:21'),
('761fba990e7783cedaf97d9cc10fb71186f9bafc809ac7a7c0adaf516e576379673e0f01a5680b82', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-23 08:14:14', '2021-02-23 08:14:14', '2022-02-23 16:14:14'),
('7714aadee697e0af78c74a3e423b4fcc4b285df909dbdeb784b25e23161f63198d65ea6d51218cfc', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-05 05:47:57', '2021-02-05 05:47:57', '2022-02-05 13:47:57'),
('79211d604ad00096283588fac0680152f20f5c1537988b76b561e18d3551b902d51ac2041691e11f', 92, 1, 'pravs8579@gmail.com', '[]', 0, '2021-05-04 03:07:12', '2021-05-04 03:07:12', '2022-05-04 11:07:12'),
('79d2666f1b4193875f562d26f9571680106f2819446aab82e684a724c3850c91f4733f6cdb7ddd6b', 1, 1, 'dark@gmail.com', '[]', 0, '2021-01-30 22:19:51', '2021-01-30 22:19:51', '2022-01-31 06:19:51'),
('7a1dd3a25514457fe726e2ebd445c101af4f62924491868ce3dd3bf8c08a3331b1901ea9e05386a7', 51, 1, 'drcplee@yahoo.com', '[]', 0, '2021-03-15 03:05:20', '2021-03-15 03:05:20', '2022-03-15 11:05:20'),
('7a364dea51c546c2d10c6b8352357bc1f23e4c7eda793cd055223ea1215c0516be47c3c090575468', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-14 16:20:13', '2021-02-14 16:20:13', '2022-02-15 00:20:13'),
('7a99c316ae67d42855ebaa39bcdb10f55032d6de42d2613c2a2e271a09e4d2ad62772f63344e2eda', 64, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-03-16 00:13:34', '2021-03-16 00:13:34', '2022-03-16 08:13:34'),
('7afbdaa9f370da990233bcf989f5a8a7d8761667cb97349123ff523da3274f928722aa8950992b75', 2, 1, 'test_token', '[]', 0, '2021-02-03 20:52:03', '2021-02-03 20:52:03', '2022-02-04 04:52:03'),
('7afedf58ef0787ca4e08abe2d5814cafe1ba019463e96db62fbfaea054ea89b63b76c478c848fa6e', 28, 1, 'leechechen@gmail.com', '[]', 0, '2021-02-20 10:40:04', '2021-02-20 10:40:04', '2022-02-20 18:40:04'),
('7b779aba21aa996f778fd9297ce921542521b0a75b6b7cff9ea06bf28587d06a70a7a892cd434ccf', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-07 18:26:16', '2021-02-07 18:26:16', '2022-02-08 02:26:16'),
('7c60976ec4625b831936465c01adce5b8706c1fcc766a301b411b102505f37bab8f34040ce271dfb', 56, 1, 'beryllium428@gmail.com', '[]', 0, '2021-03-27 02:49:32', '2021-03-27 02:49:32', '2022-03-27 10:49:32'),
('7cf57fee7c7c2a2fd22a7850aac4d4ffbb8efcb735b28a35ae3b648175d187ba868723a35353d949', 5, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 03:57:04', '2021-02-07 03:57:04', '2022-02-07 11:57:04'),
('7d619a9abc781130580cad0f4fcae2bcc68a37e044297739ee27be7781145d9411a0775554927dc9', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 23:49:33', '2021-02-08 23:49:33', '2022-02-09 07:49:33'),
('7d782250ea2b1a6c7942c7c1ebac0ea6cc95693a8d1c807c1043507bbf0e8072b424fd2308eefbd5', 28, 1, 'leechechen@gmail.com', '[]', 0, '2021-03-07 04:13:35', '2021-03-07 04:13:35', '2022-03-07 12:13:35'),
('7e1206684192b21d17f7e336d0d26bdbfdf6264f90fac7308a1f5c8d6aaebf1f46707a257192507b', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-08 21:42:39', '2021-02-08 21:42:39', '2022-02-09 05:42:39'),
('7e9b779d05fb0b322bf844239cd92072f22dc2adb1f12a339c4678a6aaefbd5fc51b0a0e29e0ccf9', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-14 10:54:04', '2021-02-14 10:54:04', '2022-02-14 18:54:04'),
('7ec923457c8a9e6f4c3f2830cc79e0850f9730847c041fab66faf268cee80142d8cf003d4570b41c', 59, 1, 'adli_ahmadzaharudin@yahoo.com', '[]', 0, '2021-03-15 11:41:19', '2021-03-15 11:41:19', '2022-03-15 19:41:19'),
('7f31b22cef4056f4e49c069fcf96d07626e7d548430cc2234ed42e7895547b84a4647a040f5db41f', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 04:59:44', '2021-02-09 04:59:44', '2022-02-09 12:59:44'),
('7f9b401c919cb1f2a9f38f4b7358b4dd056dcc4c1a5d8a3afb06ec3ab9192b08f79d9baf56a2c490', 3, 1, 'acinash@gmail.com', '[]', 0, '2021-01-31 07:43:15', '2021-01-31 07:43:15', '2022-01-31 15:43:15'),
('80141e83420e2f1da8df902fece1be056b8e5697e0fe72ab24c2392a98103d73d41418a714dc19ae', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-15 23:41:14', '2021-02-15 23:41:14', '2022-02-16 07:41:14'),
('8111eb2500b4df979815b2d0e0c9295c9bc9fcf4b072eb9a699449b36a7e911e454cf0da6cbc8b4d', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-26 00:58:44', '2021-02-26 00:58:44', '2022-02-26 08:58:44'),
('812ecb477f9d969c043876e3a70481dc871935deac1ade6fa1c5f18d191d093fcea93d3a87f65a77', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 04:32:14', '2021-02-07 04:32:14', '2022-02-07 12:32:14'),
('813cd420a9db64138ff2441a8e6a8621e0492dda9b3a5f60bdf4f52522cbdc5c189bf30f3aed75a2', 21, 1, 'Kalaiselviacesm@gmail.com', '[]', 0, '2021-02-16 00:41:51', '2021-02-16 00:41:51', '2022-02-16 08:41:51'),
('824c5f54e9d16786d775a9c4b46403b59c5a1f350c936753ce57ebfa4c8b2210b8662e5da28803e4', 24, 1, 'Rajeshwaran0925@gmail.com', '[]', 0, '2021-02-17 10:24:30', '2021-02-17 10:24:30', '2022-02-17 18:24:30'),
('83c897e0835eb8985ddf13568b2b8697dc0ec4b4e7b1f5eed1539e85af0312f565b60ee82aaf5b74', 71, 1, 'chechenlee303@gmail.com', '[]', 0, '2021-03-18 12:04:02', '2021-03-18 12:04:02', '2022-03-18 20:04:02'),
('83e0cad96f130125abad89ba57db75dd3d4962b335247935a5f366ed53bd5aece9c41141dd514f4a', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-16 00:29:29', '2021-02-16 00:29:29', '2022-02-16 08:29:29'),
('8428aac000cf071080593041ed80638b374d04793a85306dc9b910f9783386b6df49fb5b92247da0', 57, 1, 'rajeshwaran0925@gmail.com', '[]', 0, '2021-03-15 03:44:09', '2021-03-15 03:44:09', '2022-03-15 11:44:09'),
('84ef754d9f819e354746a1746ffca184b2a0c73477a5af93b1d48ed1fa352c1fb32ee76aea4552bc', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-15 16:16:01', '2021-02-15 16:16:01', '2022-02-16 00:16:01'),
('85026046d9732b0bab3085d9631fdcae0ad554050b016dd3934a8f3b006559edfba0d7f57060aca4', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-03-23 13:14:10', '2021-03-23 13:14:10', '2022-03-23 21:14:10'),
('8624fd9dbc2af7f53c9c387bb71b6b17f8f9700e54a31b95e541aafa455f8bf0b6b3331d70b0153a', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 08:40:55', '2021-02-11 08:40:55', '2022-02-11 16:40:55'),
('867e17592a1d13fc17a0a1e83ab793cab19b03f28c3cd927a2eaa8fb0f65a18045bd6b0f7ce62225', 44, 1, 'dar123123k@gmail.com', '[]', 0, '2021-03-12 05:30:30', '2021-03-12 05:30:30', '2022-03-12 13:30:30'),
('86b800954939de4b87c03ad0fd90c56e2e116c580b63c7a3218599a11538ceb30035c99559d39f20', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 15:55:18', '2021-03-26 15:55:18', '2022-03-26 23:55:18');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('86f1cf600e514541b5add359ffb90915c865dd19657021d248f2aa24f981298c021bc041c82f86ec', 28, 1, 'leechechen@gmail.com', '[]', 0, '2021-02-18 17:12:01', '2021-02-18 17:12:01', '2022-02-19 01:12:01'),
('87f4e89693119f7a08626e474a67f7c6bee8d59fa1c040d53b5f85561cff721132627346b0049843', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-26 01:05:34', '2021-02-26 01:05:34', '2022-02-26 09:05:34'),
('8812d417eca33c43a45df71d0824ca95e790927972ea6d6aa4c948e5d88bb3a0d139ba10f94f8557', 11, 1, 'test_token', '[]', 0, '2021-02-07 19:01:54', '2021-02-07 19:01:54', '2022-02-08 03:01:54'),
('88dbf4f456a26ac43da2bac20a9a63d433ce35a7327286caaa52ab08b09f1a054f93fe628a21799e', 92, 1, 'pravs8579@gmail.com', '[]', 0, '2021-04-29 10:02:17', '2021-04-29 10:02:17', '2022-04-29 18:02:17'),
('8a80e894e8e98c1109b514746c08cfef6239f92646278e6fd66821be590a4d85574205bba096637e', 57, 1, 'rajeshwaran0925@gmail.com', '[]', 0, '2021-03-20 12:45:07', '2021-03-20 12:45:07', '2022-03-20 20:45:07'),
('8ab1b30f7ae860062115be7f299b3e549a1457ce380442ed4eb2202e8900e99d2ba26e40a63201fd', 91, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-05-04 03:00:51', '2021-05-04 03:00:51', '2022-05-04 11:00:51'),
('8b3988b8330464983e356b76d7fd9d6bc3ab85c23ac5df5674c3e257af622448ae6b77ee8fc65e52', 11, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 16:08:32', '2021-02-07 16:08:32', '2022-02-08 00:08:32'),
('8b7170ea84b0dc1e64f3bff4b60a524773d6e8cd31d97a1290302aa8da54c20fd68977a70f925fa0', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 21:24:51', '2021-02-08 21:24:51', '2022-02-09 05:24:51'),
('8bb10e50903c541b20c44cd1bc75545d65b5bc19040905b90e7514717722960eac964bd00d8e7771', 67, 1, 'leechechen@gmail.com', '[]', 0, '2021-03-16 09:47:08', '2021-03-16 09:47:08', '2022-03-16 17:47:08'),
('8bc036a72e1e2bdd9cee4efae3e2da9847296e6309ed466d6c3b7c72e7fcc6a00220ba8221f55f6c', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-08 02:37:31', '2021-02-08 02:37:31', '2022-02-08 10:37:31'),
('8c260d489d8ab4c10888951dd22abb495f32ebab0170410ca035c3727863da1627054cde5cb5e69a', 10, 1, 'test_token', '[]', 0, '2021-02-05 06:22:48', '2021-02-05 06:22:48', '2022-02-05 14:22:48'),
('8cb92c58119f28f8a7a0357cc45c1b159338ef3d0e3b9fc2b3b48c6670f57ba30c5b5fa3a6cfde35', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-13 01:21:17', '2021-02-13 01:21:17', '2022-02-13 09:21:17'),
('8cf13dd3799f413ea49e8dbb5dc06f9ba35361f9e43d3658a8f85904dd87e24dfb19b35c3978530c', 21, 1, 'Kalaiselviacesm@gmail.com', '[]', 0, '2021-02-16 00:44:26', '2021-02-16 00:44:26', '2022-02-16 08:44:26'),
('8d15e97e542e47873185762499bc588436a21bd614be72256cd184eebf461a01709563d9e328484e', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-02-22 03:10:43', '2021-02-22 03:10:43', '2022-02-22 11:10:43'),
('8d40c6fc8b9b97a5173cf9e447c019040a0840e7f597d6178206b674a8cfedab2dc6923d001e27e6', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-14 11:04:16', '2021-02-14 11:04:16', '2022-02-14 19:04:16'),
('8d819e05bf8530072b27b23adb45417b21810defa3febe90af213efdde45a8ed7f79327639d3f832', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-03-15 06:38:58', '2021-03-15 06:38:58', '2022-03-15 14:38:58'),
('8e16c3810a0f6be3ac79758971af2801e55896df540dde3007611fe73639ce75cc89a8808cb76968', 67, 1, 'leechechen@gmail.com', '[]', 0, '2021-03-16 09:45:50', '2021-03-16 09:45:50', '2022-03-16 17:45:50'),
('8ed6536d77c76da5b25f38b21824b383bde5f746d2471b58efebd472282df39aff1c2bda427b588b', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-04-25 07:20:25', '2021-04-25 07:20:25', '2022-04-25 15:20:25'),
('8f003c85d627037a830c6c96713e2bcd2022af79ec10f47edb44148353f6bc876130da20794264ca', 61, 1, 'Jtlee48@hotmail.com', '[]', 0, '2021-03-15 13:51:35', '2021-03-15 13:51:35', '2022-03-15 21:51:35'),
('8f9eddce030253b09366c398ccdd1ce2378d20a0e2a4d251436f1f46fad6e9a0087f493cf663fe0c', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-23 16:57:49', '2021-02-23 16:57:49', '2022-02-24 00:57:49'),
('8fab64d6226267c61778067617817668ab773d14e6ac26b5a178356f9f74870bc6f94fd4f2a142cd', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-24 09:00:20', '2021-02-24 09:00:20', '2022-02-24 17:00:20'),
('8fdf0228ecd2b1f6adb0b31ecb04d4c6d8e8d7abf7638aff9bc02d287fc85351e5566184a1334d82', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-21 18:30:05', '2021-02-21 18:30:05', '2022-02-22 02:30:05'),
('8ff9dafac571798473b78cbbe55035fad99abe2f9fb6445ee46ce6eb82811ac0b841a42af9e5d3de', 83, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-04-19 03:19:45', '2021-04-19 03:19:45', '2022-04-19 11:19:45'),
('9092020dd0ee5e355f70efd8559bba1bc8523f6ea041489951657bbc7691a3562700e5c95b911a98', 56, 1, 'beryllium428@gmail.com', '[]', 0, '2021-03-27 02:36:14', '2021-03-27 02:36:14', '2022-03-27 10:36:14'),
('91e1e03dc3e17c346d10c5188457fb8fd25a065a912256816db1243b6da391b98efea5cc89148b3e', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-20 15:52:51', '2021-02-20 15:52:51', '2022-02-20 23:52:51'),
('921b761201dbd552fb3d83d24ac27ecea6db5e9ab0d5c8cd9ec3f38659e3d680922b7998dce07df1', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-05 05:42:08', '2021-02-05 05:42:08', '2022-02-05 13:42:08'),
('9253336d8e0309a169a6abe46f2ae6ecab2f04f81591bb79d2c019ef981078d26c14c9874110fd56', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-02-18 01:39:24', '2021-02-18 01:39:24', '2022-02-18 09:39:24'),
('9365ca79f20cd2e51e45327248a87cb90faf597a7f9f07ba3242f69aed3717e2cf18b1d0d1bd667b', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 09:24:22', '2021-02-08 09:24:22', '2022-02-08 17:24:22'),
('93c61eacb90c51bf8c582f8bef62d72ddd5faca8aaf01648e705b46e984ba063942939cbb3670a85', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-11 05:53:26', '2021-02-11 05:53:26', '2022-02-11 13:53:26'),
('946dbe83d864e45e675b4b3d46c3dfe433200bd916d1fa9050d2e6003c3dc45a11c681dd61faf7a2', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-21 11:16:13', '2021-03-21 11:16:13', '2022-03-21 19:16:13'),
('94e075566d755349cafe797d44756ddf1a9aa91dccd6ec9146e84969e480c9f73e168d96a214c2b1', 25, 1, 'adli_ahmadzaharudin@yahoo.com', '[]', 0, '2021-03-04 00:53:46', '2021-03-04 00:53:46', '2022-03-04 08:53:46'),
('95416e900e0d4ab144e4321e0d27eb8557305d061aebc970e1bcd18cbf0a2d6093ec7bb826901d1e', 29, 1, 'cheeminglee@hotmail.com', '[]', 0, '2021-02-18 04:25:09', '2021-02-18 04:25:09', '2022-02-18 12:25:09'),
('956294ffe364d40ed152156b90201f0f48b2c11a47e3499b3c2455d809fd43d8ae6f6e3cf4eecb13', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-08 08:45:50', '2021-02-08 08:45:50', '2022-02-08 16:45:50'),
('97ed17469615414b730632214d31e9d30a839ec65e20393a6cea8cc13a34df43d7174f0357d98895', 5, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-02 16:09:31', '2021-02-02 16:09:31', '2022-02-03 00:09:31'),
('97f34efc3007daeedb43e2b621ebc4f64a05d9c15c38df1b316efbbd13e4277c134b4eefa1a8bb1b', 19, 1, 'test_token', '[]', 0, '2021-02-24 08:15:36', '2021-02-24 08:15:36', '2022-02-24 16:15:36'),
('9834569d815e6c781829691a0d6e2f96f895150b90dd3874dc09f0660362edd3b90733c37b2da8b4', 80, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-27 04:24:50', '2021-03-27 04:24:50', '2022-03-27 12:24:50'),
('983c2572b039ba714357372f0bfdab9fb7d0fb2ee99e74b5ac28530246054d6db588ba4309985591', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-04-15 14:15:12', '2021-04-15 14:15:12', '2022-04-15 22:15:12'),
('985667a48738d10d49a67ba833d53ed6ca3d4374df304448822aa1df6ac10c60cc02fa6213024e5d', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-03 14:28:15', '2021-02-03 14:28:15', '2022-02-03 22:28:15'),
('98bccca149543054a4b5f46ed62c25b39c28c1492ded26fc6fccc52eebff489c20aff700075cb389', 50, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-28 00:36:24', '2021-03-28 00:36:24', '2022-03-28 08:36:24'),
('98f230cd89e4c9c11a34e59ebd541d89d2bb80b15413741aded7f824ea5f1842e1666a2b1e086d0b', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-02-25 06:45:47', '2021-02-25 06:45:47', '2022-02-25 14:45:47'),
('9952914959c97c7bcebc6af6dd059f02e80f5fdb9c16006022713d6386e8511bc261db6dba187c58', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-22 14:40:35', '2021-02-22 14:40:35', '2022-02-22 22:40:35'),
('99f1f9c6f2745bbcf497ab39268e9f93569d35394409788562330c4d35171f379d18e5eb27eba0e1', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-24 07:49:54', '2021-03-24 07:49:54', '2022-03-24 15:49:54'),
('9a1ca5ca4e8474ab94dbbac47c2565a99bb863f6c21eb271b8b33b40b25ab59e1fd5a75c395c8335', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 07:51:38', '2021-02-07 07:51:38', '2022-02-07 15:51:38'),
('9a9842b7de28ef74c89fcb2f16020fbd18008ae638583bdd40fa5ee24483ce2463a02fae8c37f9f4', 5, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 05:50:02', '2021-02-07 05:50:02', '2022-02-07 13:50:02'),
('9aceb1b9155f80e5c2c05134378b1d3270050ea542114f49d670d604bfea5ed9be5f4ddf5139ff8f', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-15 23:44:42', '2021-02-15 23:44:42', '2022-02-16 07:44:42'),
('9b0b713bbc3c33cc39f80b1ca5b35f98d559e3b3311e1ac65247fc48cf3ac4c4a3ed3ba91f02d517', 10, 1, 'test_token', '[]', 0, '2021-03-01 04:13:18', '2021-03-01 04:13:18', '2022-03-01 12:13:18'),
('9dfc6a352dfc8e5d52c5ab9f69e55cfb714e4d66e9f24feef715e94255854b553a78e085f91fdb6e', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-03-01 04:12:19', '2021-03-01 04:12:19', '2022-03-01 12:12:19'),
('9e1730e37632031a056886c09da710fbdf04e5d2c74fe3ed59d84f28585217226a626d252e5fdb5c', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-12 17:59:24', '2021-02-12 17:59:24', '2022-02-13 01:59:24'),
('9e44f548a99b7d22432fbb71aa2327d1b2ff165aad08eaa8ecb42e14c914dfe2a481c858c013b949', 80, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-04-17 13:46:19', '2021-04-17 13:46:19', '2022-04-17 21:46:19'),
('9f34ec325050d99bfa1644c0a189dfca8767b21bcba8325ba10a2d5ef139fd33f5bfe7baec28e462', 25, 1, 'adli_ahmadzaharudin@yahoo.com', '[]', 0, '2021-02-25 07:01:53', '2021-02-25 07:01:53', '2022-02-25 15:01:53'),
('9f420de8e5b79fca66d94dba4ea09560b1117d69fb435bdaf5ca08ac7d80c23708415c065c6c3ea5', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-10 16:11:49', '2021-02-10 16:11:49', '2022-02-11 00:11:49'),
('9faf13b74f2eafe36f6c11fbb0b65e6170d0440102ca68de0e9ff03b98595089a169ff2916831a28', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-09 07:26:11', '2021-02-09 07:26:11', '2022-02-09 15:26:11'),
('a12d49df93177f2f15931044feb8894519106f022fb87caedf9044f52d50237110e19a1b6abf1ff0', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-20 11:52:48', '2021-02-20 11:52:48', '2022-02-20 19:52:48'),
('a282f70781d5e87743b611c8889b568615d2a3bdba3646dbadf37359ba98e1bbad07a63a47f93693', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 06:48:39', '2021-02-08 06:48:39', '2022-02-08 14:48:39'),
('a2ce0ac45918dade8d2caea330000cd1695ea41482c1ffabaf52a7b9569f612a3c1c5f0dbfc2db26', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-22 10:06:30', '2021-03-22 10:06:30', '2022-03-22 18:06:30'),
('a2d0dc333a8092df7a1e02fa6847c2188d88f2169913e9bdcefbe508e901068898f94bc7aca05f87', 18, 1, 'test_token', '[]', 0, '2021-02-08 06:24:20', '2021-02-08 06:24:20', '2022-02-08 14:24:20'),
('a3776a528a19176663e4b526f13f07feb105683ac674ab07c6fc98b16fe92a46e197ee0a0ae2ed60', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 05:00:50', '2021-02-07 05:00:50', '2022-02-07 13:00:50'),
('a46a6448a5dffc646e408a7670cf56a273ff1e3653ef03ab5e7eca1ac30b5061b2df7d86d935ee3a', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-16 04:34:56', '2021-02-16 04:34:56', '2022-02-16 12:34:56'),
('a4f7bfd27ab4d95d0b24a17da5cf16b82caec58f5416e8d85da5165b9997aae4d09148ed9e02aa49', 10, 1, 'test_token', '[]', 0, '2021-02-13 18:18:28', '2021-02-13 18:18:28', '2022-02-14 02:18:28'),
('a540d030b8df1d0c8b8e6d1c67e78b161c592b6d7cf6a44720f0981561ba193908d1b21415033774', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-01-31 07:55:49', '2021-01-31 07:55:49', '2022-01-31 15:55:49'),
('a55fe73b38af1a0d5bd299a452d6526b4d79e0adbf067a87f9dcf17f61cf0debf1b4971a1f2b3637', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-20 10:06:36', '2021-02-20 10:06:36', '2022-02-20 18:06:36'),
('a6d3db756e477a9970ca4db48fc55016d1290452db48e84890c4ff26a35a151747bcdf267c05b229', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 04:29:03', '2021-02-11 04:29:03', '2022-02-11 12:29:03'),
('a801916ce51bbaea7b745b1c770cd36d7ece904b42deb2091c5bbbadfbfc1083f2506c49a709c4fa', 29, 1, 'cheeminglee@hotmail.com', '[]', 0, '2021-02-18 04:29:35', '2021-02-18 04:29:35', '2022-02-18 12:29:35'),
('a888def3d15bdb7b634f0daa4db1bb8495c83e53aab3b677558ec141ea18abf1a92355ac35112d1f', 88, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-05-04 06:45:21', '2021-05-04 06:45:21', '2022-05-04 14:45:21'),
('a8b7ad411dc4783462c20c8fa56292b44f72a6d365d6e31e6d9a5e5d2bd695e9c552d153dd168cc0', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-04-16 08:37:54', '2021-04-16 08:37:54', '2022-04-16 16:37:54'),
('a9117cbc27a7bbe24103fe3826c66c39df555ce01e00733c5bfc2fd298f57abcf7842af90fd2823f', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-24 12:36:57', '2021-02-24 12:36:57', '2022-02-24 20:36:57'),
('a9def5cb7f392fb470649417c0dc50431fb26218eb3346929f96f761ebcef214addc6aa30434fa29', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-14 05:34:49', '2021-02-14 05:34:49', '2022-02-14 13:34:49'),
('aa0188869f0d69fa3d528a72ab899478c1b696c537135db86ceae65b14c1270ea9da639e20afa7fa', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-25 21:58:45', '2021-02-25 21:58:45', '2022-02-26 05:58:45'),
('aa26e49799e8d0bf112ad0cf7136140aa6923fcabd4104046d49840c82dcf756b25d418af425ee98', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-09 17:42:02', '2021-02-09 17:42:02', '2022-02-10 01:42:02'),
('aa6634827dd1bd8b491051e1a55a5ae6670aa111d7fc89f7bd11165c96a6c55f2038128f410f9d65', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-08 02:24:44', '2021-02-08 02:24:44', '2022-02-08 10:24:44'),
('aab1a171672e98e3e0825b7457ff0c9529a6929b6841f614694083fd0b8eeabc737902eed5543c94', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-02-23 08:01:20', '2021-02-23 08:01:20', '2022-02-23 16:01:20'),
('aae8113617240ddfc4198da4bbc6d1eb7d7896cb17aaaa2acb9a524f067253d093f8824516d2816c', 77, 1, 'random212323@url.com', '[]', 0, '2021-03-26 08:43:43', '2021-03-26 08:43:43', '2022-03-26 16:43:43'),
('ab498393aafea1dd7e3c1fa27aed8b4ff1d390d568e1b4021122d36cd1922827a811eeded3f73dd3', 79, 1, 'avinash@gmail.com', '[]', 0, '2021-03-26 08:52:23', '2021-03-26 08:52:23', '2022-03-26 16:52:23'),
('abc2f6c6f712a1e77cbc08b23497c42f189ef4d20fc0bee757611017add392ea2475b149f6cf3975', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 05:01:28', '2021-02-09 05:01:28', '2022-02-09 13:01:28'),
('abd36464f4bd069262c819da5ae5d0aaf9e525b4e80e18f668301155c6e181346e54ac43be6050c6', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-09 08:02:01', '2021-02-09 08:02:01', '2022-02-09 16:02:01'),
('ac17ab2023abf8d9cdc80f86086250717663fe29d97484af8173e1cfbcc55778c1af1462917e2cec', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 22:36:04', '2021-02-09 22:36:04', '2022-02-10 06:36:04'),
('ad064379d5f9b103ec3062d42d60d778b851578bee70622813bb208e2ccbe94abc24d28100cf6069', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-03 22:22:34', '2021-02-03 22:22:34', '2022-02-04 06:22:34'),
('ae426f76b9211d5d3bc1f0fe8b4bfbafa4466c283202fc9ad36f0a85d5118276830c513c422ee14d', 11, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 09:07:37', '2021-02-07 09:07:37', '2022-02-07 17:07:37'),
('aeedcfdb2027a3e48ba579520f54eb0b5b9f1ee0c3c0933ad145ba9a2b2c2549e6d38f932b3bd944', 41, 1, 'dark@gmail.com', '[]', 0, '2021-03-12 05:21:16', '2021-03-12 05:21:16', '2022-03-12 13:21:16'),
('af6f5bdb6d40ebf83726996e1ba3aa4db6921dee8d9d46fd61b3707f350491af3ef3611371496446', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-20 10:45:00', '2021-02-20 10:45:00', '2022-02-20 18:45:00'),
('af78361f299d2c23640e0ab8ff6333b0cd75bd1a92fb29606a2607a52b41aca200141588b324983b', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-11 05:54:58', '2021-02-11 05:54:58', '2022-02-11 13:54:58'),
('afe7f0d8467a503c8b6e7fa76e531204ac00fe799f719a6b3aaebae7f268f4c652a6388e433e8ac8', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-10 00:48:37', '2021-02-10 00:48:37', '2022-02-10 08:48:37'),
('b0b3115dd7e9f60c8ba2077a1f61e7f7bdf3a758ad67cc0c3a918590367e83c7d22da433d40df7db', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-08 20:51:29', '2021-02-08 20:51:29', '2022-02-09 04:51:29'),
('b0c0cb9ef7d3b82f04066f1ae4ae26034d7de9974661390eec322516132eb2d4c9f4f7933e46c9e2', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-20 10:10:38', '2021-02-20 10:10:38', '2022-02-20 18:10:38'),
('b25755eeb4633ee456ccd204dcc57282293eb6e91aff4d04d9efa2f54eb45cc7afc96acafad7b34d', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-11 05:34:32', '2021-02-11 05:34:32', '2022-02-11 13:34:32'),
('b392434635949bcc9490519415fa44eeb590fae0702733365aeb1d16800019d3d03ca9ca4043ea3b', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-02-22 14:24:16', '2021-02-22 14:24:16', '2022-02-22 22:24:16'),
('b3cd59aa7cbfe92afc8876a54d50c75826208fc76f64edd6628b32c961f80c94762ccd6ef83aacee', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-10 15:10:19', '2021-02-10 15:10:19', '2022-02-10 23:10:19'),
('b42118af0e2930361f11a00717cf2d8f00507cfa36d19711be937f50f2efb4ebeca719be30abf40e', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 16:01:05', '2021-03-26 16:01:05', '2022-03-27 00:01:05'),
('b4814f1e7dce0cb56d2552596ad49f8fcd3ceecdffa6a5d8655be80acedd1e58f7c14f61e8dc6293', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-08 16:33:43', '2021-03-08 16:33:43', '2022-03-09 00:33:43'),
('b4a31b78706f0034ec9c66b03c3c840d256517dfe5f0018248452e100ff84d52baa57e9df6775ae4', 50, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-21 15:04:58', '2021-03-21 15:04:58', '2022-03-21 23:04:58'),
('b4c7fd844b917bfdf2a26cd033bf11aa56dcc0dbc7f0924ea68fb8220d2ce472b65092438ac281fa', 50, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-30 01:58:54', '2021-03-30 01:58:54', '2022-03-30 09:58:54'),
('b4e72f35cfdd05ff793fc2c5679e411e3d93579dcb231c45b65bed6c452a15eac94e61ac2da16a0e', 26, 1, 'drcplee@yahoo.com', '[]', 0, '2021-02-24 06:00:56', '2021-02-24 06:00:56', '2022-02-24 14:00:56'),
('b4fabcde6cf9083f86b43c3f0417c952b8102d7521a71f27b1c9659d0cfdde607dfe540d74ca6bf1', 25, 1, 'adli_ahmadzaharudin@yahoo.com', '[]', 0, '2021-02-17 10:28:41', '2021-02-17 10:28:41', '2022-02-17 18:28:41'),
('b50a733af69296833578e65396ffc29aeace8c3d27b3f7c27bc09c2cd81d5b480b992bba837d3507', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-10 00:20:11', '2021-02-10 00:20:11', '2022-02-10 08:20:11'),
('b5365a5a7166455bb963bd36ed6d6f1def323db4f14a570f1537ca482e0e4b0cad06354b243de8a6', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-15 04:34:52', '2021-03-15 04:34:52', '2022-03-15 12:34:52'),
('b5474e7b78b955e4e0843cd07078f42cc2814143e553feba7732f572d12c3990ead4ddc9f39c841f', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-20 10:14:20', '2021-02-20 10:14:20', '2022-02-20 18:14:20'),
('b54e51d1646c95d2ebb9bdde2b7a0c7c592d0f829d6fc8564f724565469df7040bc90b2da52d2a80', 10, 1, 'Avinashkumawat2@gmail.com', '[]', 0, '2021-05-04 06:34:33', '2021-05-04 06:34:33', '2022-05-04 14:34:33'),
('b6d335dd5e81a187c29062ba0c4a104ffe4e456bde5b3e02ff63bec83bf1fd5c5102e566b9e7837f', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-04-17 13:11:26', '2021-04-17 13:11:26', '2022-04-17 21:11:26'),
('b753d28212e4aec06994c9709562b1fe6618f76edf919cef3154a1d873a8aa78161f24c0bc9621fe', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-02-18 01:49:49', '2021-02-18 01:49:49', '2022-02-18 09:49:49'),
('b7c4d486ddaa0b6d403c3132ae0f6c4fcd44f78958c054b88309dd2875be2bc68624a03265dcb4c6', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-09 15:25:39', '2021-02-09 15:25:39', '2022-02-09 23:25:39'),
('b7ea8468add919f537295ce199791b536ef645a011c71aefd34842a695a3988393e2bf6b60ae6b81', 60, 1, 'anuprakash1717@gmail.com', '[]', 0, '2021-03-15 13:08:06', '2021-03-15 13:08:06', '2022-03-15 21:08:06'),
('b896f6bb9edd9d6f0fc8ebb0034994352bad66c672b340f30dba4d674431c21306fa11ff018607a2', 55, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-03-15 03:43:59', '2021-03-15 03:43:59', '2022-03-15 11:43:59'),
('b9450d19c6c5b7102946fb2ba6a5105a677e88923d46e6012717ff1839fa7bd15b865aa08cc4b45d', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 19:17:38', '2021-02-07 19:17:38', '2022-02-08 03:17:38'),
('b9cb68015df3998048b2487ab6b58765d6509eda8ab6585425f97a90c2a5dd9f51c04e5adca045ed', 24, 1, 'rajeshwaran0925@gmail.com', '[]', 0, '2021-02-24 05:22:08', '2021-02-24 05:22:08', '2022-02-24 13:22:08'),
('ba0307bdf78f57b935fea6837b37a1b6092e2a3e92b288315576c74c5260b600023b546b41ee4448', 72, 1, 'jackob@gmail.com', '[]', 0, '2021-03-20 12:21:46', '2021-03-20 12:21:46', '2022-03-20 20:21:46'),
('ba71327d9a9157e50c61bf7b4d4126025cf81919e1a7b9c85a2befa3ba14d5bac4ae64abf1f0c3f5', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-09 17:19:26', '2021-02-09 17:19:26', '2022-02-10 01:19:26'),
('ba9b598143af8356f938a5cc54092847ede9a9c94e2120ecbc28e186e225f190d3f3ba870cd5efe6', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-05 14:17:16', '2021-03-05 14:17:16', '2022-03-05 22:17:16'),
('baef07b84caf3083f3846ded3ef3e950728568f2b4fb660421180b458ae3e95a3bf63f6a46ce1e0b', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-25 16:51:04', '2021-02-25 16:51:04', '2022-02-26 00:51:04'),
('bb6a92438897468636ba52c87b429abe1bf14d7fc963d789fc9ff01283bd1c9bfccfc8442afbaa8e', 72, 1, 'jackob@gmail.com', '[]', 0, '2021-03-24 13:22:52', '2021-03-24 13:22:52', '2022-03-24 21:22:52'),
('bbe1875780b3d1ff6123f9a63eec909ced8055ccb7f6f0f00a0b14623cee9b9a9e71c25ed54195b7', 51, 1, 'drcplee@yahoo.com', '[]', 0, '2021-03-27 02:26:10', '2021-03-27 02:26:10', '2022-03-27 10:26:10'),
('bc8844a69efc76d7afb3edee0110b5e9af91a7af2e41643b3ac007d9b77059afe5d74df243645e28', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-09 17:27:57', '2021-02-09 17:27:57', '2022-02-10 01:27:57'),
('bcb4393c190826b0deab723471f00add3073be3082aa734a746d56615ae9d287ff0451e75958fc88', 21, 1, 'kalaiselviacesm@gmail.com', '[]', 0, '2021-02-25 17:36:24', '2021-02-25 17:36:24', '2022-02-26 01:36:24'),
('be5cdd6f1f803d7d610b1b6cb760d3aa9a4b9ed7d81404711797d572f0c321acf40d647a5147925c', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-05 03:16:20', '2021-02-05 03:16:20', '2022-02-05 11:16:20'),
('be71f150589eb954cc4d51d04060ea27f261a9bf5029e81693352bfa57692e4d06a76f315aeabb41', 65, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-03-16 02:32:13', '2021-03-16 02:32:13', '2022-03-16 10:32:13'),
('bf036fd0d5d4fd6544badd8e70d57a3d78c45b001941318a9a79d4fcfba3b87e0c0e49e8d75a9585', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 04:32:59', '2021-02-07 04:32:59', '2022-02-07 12:32:59'),
('bf114c1e362c2c5ef76a2cd6df31a621a67178101a78515d83d1fd5480d1982a6e03bc20d0cf926f', 11, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-04 04:37:57', '2021-02-04 04:37:57', '2022-02-04 12:37:57'),
('bf2ddab43d2319813e9e666ea17c87313cdb716e0e3018cb281eabedbd45ddb08ddd0256c0e8e160', 28, 1, 'leechechen@gmail.com', '[]', 0, '2021-02-24 13:06:58', '2021-02-24 13:06:58', '2022-02-24 21:06:58'),
('bf7328efca0b49f7eb7090480a85a7c3c79e5eb26b63bc48758f0bdf9b87fdd77735daf856811366', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 18:02:45', '2021-02-11 18:02:45', '2022-02-12 02:02:45'),
('c00e8e710bfd514735fc119cc374da27e0cb20656390d78a3e11ce829fa2565727309fec4e0adabc', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-07 03:55:43', '2021-03-07 03:55:43', '2022-03-07 11:55:43'),
('c0328a6f2cfd3b0e84301c293e58d93050ab79091dbfcefe8bd920aca6014951fed9d6df0ae4b3d2', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 17:54:06', '2021-02-07 17:54:06', '2022-02-08 01:54:06'),
('c049d860704d1569289368cbc88b675b8c6fb77a10de5469cf6a58cfa15bfe3628f18874055b947e', 46, 1, 'dar123123123k@gmail.com', '[]', 0, '2021-03-12 07:08:11', '2021-03-12 07:08:11', '2022-03-12 15:08:11'),
('c075d9a89719854c9b75f221720f6f6e41f59ef1f40c34e30b36bc03daebde7bfd4c935f6ed645a4', 24, 1, 'rajeshwaran0925@gmail.com', '[]', 0, '2021-03-07 04:28:18', '2021-03-07 04:28:18', '2022-03-07 12:28:18'),
('c195674a37e36daea30891cacadf5dcd8ade705b96e2d3cdd4966b005fe144f0a0c687210a891191', 80, 1, 'test_token', '[]', 0, '2021-03-27 04:21:01', '2021-03-27 04:21:01', '2022-03-27 12:21:01'),
('c2d155e4be815ab960fd2f54395ac104c63be330c66b319d18e50c3045214dc2498da7ac1ce09adb', 26, 1, 'drcplee@yahoo.com', '[]', 0, '2021-02-17 23:14:49', '2021-02-17 23:14:49', '2022-02-18 07:14:49'),
('c2f761b9c73b78b02a4b4150752a65b71664f9cd9fabe7ab1cb2e48773f00bdc89def0b9be228482', 21, 1, 'kalaiselviacesm@gmail.com', '[]', 0, '2021-02-25 16:50:22', '2021-02-25 16:50:22', '2022-02-26 00:50:22'),
('c372cd51e48466a6c9a2daa592718c6f9b8de92b323557609ef6fb2aaf8e49dac8add19e3084ea1a', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-22 03:21:38', '2021-02-22 03:21:38', '2022-02-22 11:21:38'),
('c3d55eb9d4a9b2a99fc66a37162ba98d2f6a8681ee28c0dac61e5b1764aa68bc3b289587eaf592fb', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-13 16:52:03', '2021-02-13 16:52:03', '2022-02-14 00:52:03'),
('c49462f16cae225ebfcbd8368bbdd42be60496db9a593718dcef0cf2daddd3df22886b6ed010d67d', 11, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-04 04:23:40', '2021-02-04 04:23:40', '2022-02-04 12:23:40'),
('c53f30572e84a613d73c8dfde7b285504dd7b0250995a32d494905bb7136a88fec65d422b86bd00e', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 02:32:19', '2021-02-08 02:32:19', '2022-02-08 10:32:19'),
('c624e397574d418116ad7ac0f9be4d8111b2dce4efc021138a9d7eebbd28ddf0b394952d13813f48', 11, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-07 16:02:33', '2021-02-07 16:02:33', '2022-02-08 00:02:33'),
('c651451d05a52cad9ae5b19d2ec06b2629b4e58c6b0a92110c29dcc39fa9b04295910dbe73371a37', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-09 00:45:41', '2021-02-09 00:45:41', '2022-02-09 08:45:41'),
('c68803f9a56a8dd6c6c5231819be96e838657ab0dc968c04bf537d42c550fe89df692699aef605df', 6, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-01-31 19:45:56', '2021-01-31 19:45:56', '2022-02-01 03:45:56'),
('c6f3fd9c6bd730d7e0734ea43b5391704da9b9c4f55a5a5f05f4b59e801fede86ac28c76184bb1ca', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 06:41:21', '2021-02-09 06:41:21', '2022-02-09 14:41:21'),
('c805bec9ac69a15b9fd4ae6a8f68fa44f0d2065dc62e124a0e18e9447c2430615dbb35c248d94ea1', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 00:01:31', '2021-02-08 00:01:31', '2022-02-08 08:01:31'),
('c9b35c1cf061339cab47a6d1f4ef6a92f21f7d6faf5624f3ceafe897451926b0b5e94ba0143785d5', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-02-22 02:50:12', '2021-02-22 02:50:12', '2022-02-22 10:50:12'),
('cb0b9d35c8461d4dd9312cbbb781eb8e71d6ca31c4342d5892d27bf1e93599a32edf297e1b097a33', 2, 1, 'test_token', '[]', 0, '2021-02-07 19:07:47', '2021-02-07 19:07:47', '2022-02-08 03:07:47'),
('cb91f6b76a5b0d90e210cb5249130ece1356b8ebe3c091f2726b3fd19b8f0a45038303401113d7bb', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-16 03:32:04', '2021-02-16 03:32:04', '2022-02-16 11:32:04'),
('cc3a8238592985ef0e2b1a671e81142015a2df58ac0777ae9fea14c62eb9224ff3689ce26b80a809', 17, 1, 'test_token', '[]', 0, '2021-03-26 15:50:37', '2021-03-26 15:50:37', '2022-03-26 23:50:37'),
('ce679ee692f2d2233ea25740601309068c134e17e02e95bd4d2595130a58dabd8d447c262f407570', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-07 03:14:44', '2021-03-07 03:14:44', '2022-03-07 11:14:44'),
('ceae7005d204a3980381cbc791c4e5cfe80a6cd9ba7de9cb4041d35c2a29b8a9b7c16974688f926d', 12, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-07 15:55:04', '2021-02-07 15:55:04', '2022-02-07 23:55:04'),
('cec2780df7adbcac535cda07e515cbadbca1e92bc53459ce6bf656bce25e752b11b75c4ea367723b', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 06:46:28', '2021-02-08 06:46:28', '2022-02-08 14:46:28'),
('ced397c4e07eb5aab8bd086990d648f915f54583768513c8e9e7b1c773b1e18c4c797ceb179766f9', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-08 07:35:03', '2021-02-08 07:35:03', '2022-02-08 15:35:03'),
('cf091d69e3bdd4e4c0999394b1cae349b82fbf6b29820ccb5854b8a74348c29c885946d427bddbf9', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-05-04 06:31:08', '2021-05-04 06:31:08', '2022-05-04 14:31:08'),
('cf3ad8886919d6e56241f55838434d96136b93fd13dedc4f432006a0af0bbee0487eeecccd86a80c', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-26 21:17:58', '2021-02-26 21:17:58', '2022-02-27 05:17:58'),
('cfc55db22b9a4a79764d0dfc9adddf9d4a685355ace130ab47ac801541bc93b5fc4ff3c181b0882a', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 19:06:40', '2021-02-07 19:06:40', '2022-02-08 03:06:40'),
('d01743e61eee7a1660e99992b976f6bf1e3d645b7159eee7c91037438c80d969be9d3a5e3bed7c82', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 03:30:40', '2021-02-08 03:30:40', '2022-02-08 11:30:40'),
('d056df4ad0a88a7f3d713bdae6ee4dae81a7894c433676aab8306ec50218394fe0857dc621c3aa42', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 18:02:34', '2021-02-07 18:02:34', '2022-02-08 02:02:34'),
('d0805ac107c15ee14951b4e083ea695c6776fd02f7c19fd3513e11d5a8f0291b358ef57c871f7ed4', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-03 22:23:35', '2021-02-03 22:23:35', '2022-02-04 06:23:35'),
('d0c376b29828fb261e0f807050a72b05f1e8a1d3f6ab01b946566e475109b9c640af2948333211bc', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-10 00:33:47', '2021-02-10 00:33:47', '2022-02-10 08:33:47'),
('d1bf817645e6060aa878658db724fac2bd03051770e13ac17dcbb2d40c0ba0f120fd98f85c18fe57', 13, 1, 'test_token', '[]', 0, '2021-02-07 18:43:49', '2021-02-07 18:43:49', '2022-02-08 02:43:49'),
('d287765786f8aae1c567f8fcf48c2fc9d75e92f1aefe726924adab49e3619ffa4c6e06d1445a25c3', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-22 04:05:18', '2021-02-22 04:05:18', '2022-02-22 12:05:18'),
('d3e927180a181aca89eca64756662be1c28c59ad3cecf3b76269b187c33463efcb075f609d12cf58', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-09 07:12:05', '2021-02-09 07:12:05', '2022-02-09 15:12:05'),
('d4094842f39c28469bebd4e9ad531c9e948aa9e1d3a5292508f04003bd7113d19131e1cf60eb7bb2', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-10 22:43:12', '2021-02-10 22:43:12', '2022-02-11 06:43:12'),
('d5ac691391a65e3fe175ab6e7bb4550db6222036478b4baf5c21b736d6b24915c97b267bd176d87b', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 17:58:37', '2021-02-09 17:58:37', '2022-02-10 01:58:37'),
('d62643a72f19ad2766547a22c261bb653d407b87d7cde817e7b2e357bd2bb10f1e3e6a5d9ae4844c', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-19 22:43:31', '2021-02-19 22:43:31', '2022-02-20 06:43:31'),
('d9f0b818585993ac83e9881569b6bdd4ea12c6774efae3eba7435d6662fddb70b680295722312057', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-08 17:50:49', '2021-02-08 17:50:49', '2022-02-09 01:50:49'),
('da7cb73ca74af98fb3ac4275b0308792feaf1ae97767577a1bdee45801853df27eebc47f6a1be8d3', 10, 1, 'test_token', '[]', 0, '2021-02-03 21:37:41', '2021-02-03 21:37:41', '2022-02-04 05:37:41'),
('db1725353216c32efc956fb4cf8942fdc94ffa1ee0bb54051bf5bb0ea0f1323d4d30b57c47403923', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-08 03:00:03', '2021-02-08 03:00:03', '2022-02-08 11:00:03'),
('db983e6c879c1a79f8ddca0d9736b7ec2febfea6943970649e1dfaf798084643bdc80d9b6c63553f', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-24 05:18:09', '2021-02-24 05:18:09', '2022-02-24 13:18:09'),
('dcc9aee93d26b9c671f438242da938f52ba8000b6b66a5546925f136057b26b6d2bd265126592804', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-11 09:08:57', '2021-02-11 09:08:57', '2022-02-11 17:08:57'),
('dd0311d3f715cfd8954c554e69cb9ee1eddf228817d797b9328012cfe946c0c44b7774a38ddd3135', 53, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-15 03:37:34', '2021-03-15 03:37:34', '2022-03-15 11:37:34'),
('dd383aed7089c6fb1a1882fb0a3a3f19145d6e45e86b9086d6d670d294ff961805c05d5307b0bc1b', 51, 1, 'drcplee@yahoo.com', '[]', 0, '2021-03-27 02:47:09', '2021-03-27 02:47:09', '2022-03-27 10:47:09'),
('dd67a1b68934180e539d163898538e86383eaf8c972a48feeae19326f978d04a388562ac2e1adf10', 51, 1, 'drcplee@yahoo.com', '[]', 0, '2021-03-22 03:18:59', '2021-03-22 03:18:59', '2022-03-22 11:18:59'),
('dd7c7ba589dadacbf2157e314adfbc5d3d0065ef062768869a343c23ff7fc695f51b2a9f9713756e', 11, 1, 'test_token', '[]', 0, '2021-02-07 18:43:33', '2021-02-07 18:43:33', '2022-02-08 02:43:33'),
('de309e0d291ca3cc3da9df2aebae9084d371e5efbdc190125764995dad18705765b98a2b69835569', 50, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-18 23:15:12', '2021-03-18 23:15:12', '2022-03-19 07:15:12'),
('de71c654e5a41b97bd66b7ad2cc06971639fd423c15a55d83922739c88d0e13111a9d278a9dbe91c', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 08:10:38', '2021-02-07 08:10:38', '2022-02-07 16:10:38'),
('de8dd7b5c47cc3e9079c93ad2e3207d9648ec595aeec8f43d7ab416b6dd6f75db405dc8d311c5eac', 30, 1, 'ravenlee87@gmail.com', '[]', 0, '2021-02-19 12:32:22', '2021-02-19 12:32:22', '2022-02-19 20:32:22'),
('dee7624474872c32dd687a536bbf364390645902efb738a57895f3cfaecdd9cac92a620a7a7a7104', 26, 1, 'drcplee@yahoo.com', '[]', 0, '2021-03-07 04:02:25', '2021-03-07 04:02:25', '2022-03-07 12:02:25'),
('deee3ba67f61371703366d60be7cb947eaea48a52716f94eb28dfba2467f3fc7bf9d1bf9859e5173', 58, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-03-15 03:45:55', '2021-03-15 03:45:55', '2022-03-15 11:45:55'),
('defe6408bc572bd18e089dd75213e943502f6b9cdf513765e63d9b0359f8a4d03bb8464d5e67350d', 19, 1, 'test_token', '[]', 0, '2021-02-24 08:21:30', '2021-02-24 08:21:30', '2022-02-24 16:21:30'),
('df9767ac324b7649bc9107737a979b62a418d034d7a76fce81b124f2a059deea0b740848df37df85', 93, 1, 'dhhdhx@gmail.com', '[]', 0, '2021-05-02 05:01:56', '2021-05-02 05:01:56', '2022-05-02 13:01:56'),
('dfa22caabe10fb5ee2bd23b52b7da9f6b6d0546318af9fe08a5c7b8222de3bb9a760be074d9c6e54', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 15:46:46', '2021-03-26 15:46:46', '2022-03-26 23:46:46'),
('e0db483fc225162a29007f80db7323711ae251436537cc50f95b1ff385d90258c895f772376ab5af', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-23 09:40:23', '2021-02-23 09:40:23', '2022-02-23 17:40:23'),
('e10d3d07dde8c30398ccba3f0706c73d0951d00b7a041ee2063f0869e686ae3224036121b6ec0e3d', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-14 03:54:32', '2021-03-14 03:54:32', '2022-03-14 11:54:32'),
('e1279aa18e67ccb480c0584c5fb0541bb9fa2661c52d0466ac645584f410b1088a31a2f9f65efc4f', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-18 16:22:34', '2021-02-18 16:22:34', '2022-02-19 00:22:34'),
('e1bde52d4cccf496604ea3779236d6c45ef79c5373434b76550ed7e9e840ea8aac2336917e2c1b69', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-03-07 05:56:21', '2021-03-07 05:56:21', '2022-03-07 13:56:21'),
('e2e8c9ab5da65d338b31c26c5aca06f03ed794128471136451b9d58a66e7645254ba61dc29598c06', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-03-08 03:51:57', '2021-03-08 03:51:57', '2022-03-08 11:51:57'),
('e2f6ba93dac1776858b50a83500062f61ef6e132ef1f73f9ace56f5d772bac91f0de6ce626395256', 11, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-04 04:27:08', '2021-02-04 04:27:08', '2022-02-04 12:27:08'),
('e369480a055577721272afeda0a18d69d28f0549fbbc741dabb432a54da59dab4538e0d2516598e8', 32, 1, 'cellsnutrition@gmail.com', '[]', 0, '2021-02-21 14:47:10', '2021-02-21 14:47:10', '2022-02-21 22:47:10'),
('e39ef5dc6dfe3de7e6c643daaee320981e60b6d9a937425e0c164fd56abe2725deab534b153366b9', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-03-26 16:02:18', '2021-03-26 16:02:18', '2022-03-27 00:02:18'),
('e3dbacf8d692e851091b218cd8306e9316683512e675f5a3269135ddd2664cce9891c95ca88ce562', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-02-22 02:53:59', '2021-02-22 02:53:59', '2022-02-22 10:53:59'),
('e4b62e5c1ceca5d2d6e578bbda075c50414087ad0de88d136cd65327280024b6380381f2284b9d0b', 53, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-15 03:34:09', '2021-03-15 03:34:09', '2022-03-15 11:34:09'),
('e4f50194ea6f12cfe4895b900ab1c0a666913dbe7f0e78cdb289435a284e5a945e04144ab2ac52f5', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-03-20 08:36:26', '2021-03-20 08:36:26', '2022-03-20 16:36:26'),
('e55da84d274466559bf419489c84cba2fcdbf2c9203b55ba399c094020309e990fa7daa2db915c86', 7, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-03 06:41:36', '2021-02-03 06:41:36', '2022-02-03 14:41:36'),
('e572dd6694637c16fb25393bbda15603787b0f14fcd97595cc436892f6aeb01178fbbcb510afbc5a', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-15 03:43:50', '2021-03-15 03:43:50', '2022-03-15 11:43:50'),
('e6f2d3d5f6dd631ba739b26da2cb537d6cd9f3eb7b1d87eb4a8655af6f6bbdcf68e33051b73ccffb', 22, 1, 'adamhamid972998@gmail.com', '[]', 0, '2021-03-08 07:51:32', '2021-03-08 07:51:32', '2022-03-08 15:51:32'),
('e84be946af71749a9666e6033d68986c3c2b6e76c30884d73ff51bcb581c3af3a31e95c9a4157efb', 12, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-07 15:51:36', '2021-02-07 15:51:36', '2022-02-07 23:51:36'),
('e91229e759ef61f71464c9cdd2f530d9d4e8f54cf70cd156a81ef5e0518a59ce8a5ca9c23eaf70a0', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-24 07:20:49', '2021-02-24 07:20:49', '2022-02-24 15:20:49'),
('e93b2f02d1e5d3c4b6e7a688fa8dbaa055b893c6c7e0192bd535d30d05c99c3c5c3b5313d132be82', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-09 05:27:47', '2021-02-09 05:27:47', '2022-02-09 13:27:47'),
('e95bbb5f57c473d7a869ee0447d14f614ac26449eca0ebc883b7c841c125cdb5b9240d5804e1bcc0', 23, 1, 'praadeshmaniam@gmail.com', '[]', 0, '2021-02-24 05:47:09', '2021-02-24 05:47:09', '2022-02-24 13:47:09'),
('e9721147a5035f233a40a3e1fd5e42277c2f45d094e749956dd41901d2df7d3d04498ee7c89c5756', 10, 1, 'test_token', '[]', 0, '2021-02-24 08:35:54', '2021-02-24 08:35:54', '2022-02-24 16:35:54'),
('eaa9e21da680f2e7fbb7679ee8809e67dda69a3b48e44cc0d47ea691887c54fa854754c95510db91', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-11 08:52:12', '2021-02-11 08:52:12', '2022-02-11 16:52:12'),
('eab8882897c7aa59d2926e1b210a84228e0d32695ec3ae3278c82a45707a8c9fdafff2106bfe4035', 27, 1, 'acsolve11@gmail.com', '[]', 0, '2021-02-18 00:01:12', '2021-02-18 00:01:12', '2022-02-18 08:01:12'),
('ed96f90e9f2cf28b1bec343da0f25a5d0d3b073536b5306cfb84e948e53a7beb022d4bb89e05f1e6', 11, 1, 'test_token', '[]', 0, '2021-02-07 08:58:37', '2021-02-07 08:58:37', '2022-02-07 16:58:37'),
('eec4eb2917de111f2d0d8ecd4df7b862251e9b54690f86673730c0d111b14d9978306c3374207bb5', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-11 19:25:52', '2021-02-11 19:25:52', '2022-02-12 03:25:52'),
('ef6968c59d24d7f95a8c49a88cb82d707d1feff39fad0b19915aac1f19e83ef115ef7a1c91a07151', 43, 1, 'dar123123k@gmail.com', '[]', 0, '2021-03-12 05:29:48', '2021-03-12 05:29:48', '2022-03-12 13:29:48'),
('ef6a6832f223017a38513c192cd41915d74c0c3b9ba88291495aeda078dd134ad68520365d58ee4a', 66, 1, 'ashraffaiz2303@gmail.com', '[]', 0, '2021-03-21 01:36:53', '2021-03-21 01:36:53', '2022-03-21 09:36:53'),
('ef9fe0cfaf12d9ca900eb56211d6aa6c3ffc2b30912a2dd14df5f009e675789c325585c2535fa4ea', 8, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-02 01:01:19', '2021-02-02 01:01:19', '2022-02-02 09:01:19'),
('efe06cbfe482e04f6c28a429320ed9ae64bf1a400b11822a4d189a1a6b04a85902581d6d60cdb0dc', 21, 1, 'Kalaiselviacesm@gmail.com', '[]', 0, '2021-02-23 01:45:54', '2021-02-23 01:45:54', '2022-02-23 09:45:54'),
('efe823b6d8970f6cc4deba630d8528a5c6d037e36d893e3e62203e5afb5bfb778bac78870e2f885b', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-08 02:30:42', '2021-02-08 02:30:42', '2022-02-08 10:30:42'),
('f03c295e1091594f63efbc697f3845ce9d3643796acc05cebfafa5be445836925fbb7e2398169fe7', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-19 12:25:10', '2021-02-19 12:25:10', '2022-02-19 20:25:10'),
('f11934bae27e3635e5dc52f117ffbf778aa794223fa0ccae2272ff41c83359b9a46b46802ff335f2', 47, 1, 'kunal@gmail.comh', '[]', 0, '2021-03-12 07:12:11', '2021-03-12 07:12:11', '2022-03-12 15:12:11'),
('f199956f1c493f4c2e10e0a9a7588ae865f432f136355f195f0ff24982496f35d63b735002ccdb66', 76, 1, 'random212323@url.com', '[]', 0, '2021-03-26 08:42:23', '2021-03-26 08:42:23', '2022-03-26 16:42:23'),
('f263a480f6f76cf7db0f17c220a087635b4653994e9c760ce4964a12eb6de2ec2399f2d03e288980', 8, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-02 00:54:02', '2021-02-02 00:54:02', '2022-02-02 08:54:02'),
('f2dcbd4aa23cdcdc4900fa6352f1be8e10480674f70dc8e58a9809713c4939e6b204d5d83f61fec5', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-03-07 04:29:34', '2021-03-07 04:29:34', '2022-03-07 12:29:34'),
('f2e708ded432accee7a5e86374f12f1160602cab2914f338b21081287abe152c4c48e1d12a2a95fe', 78, 1, 'kunalk@gmail.com', '[]', 0, '2021-03-26 08:47:33', '2021-03-26 08:47:33', '2022-03-26 16:47:33'),
('f43c5eec847677929ed7aef6b90fe2ab732db0485e1945957fd05cd095e8b101650019958932bede', 88, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-04-27 06:11:35', '2021-04-27 06:11:35', '2022-04-27 14:11:35'),
('f47dabcbc27d050fd1e57922562db6c7c0cf2dc0f765c587af3e99ea479c377ccf37588d4b032f6c', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-14 16:40:56', '2021-02-14 16:40:56', '2022-02-15 00:40:56'),
('f5cb8568ebd498f492ae46c6fe7121c7fbfc23caea0703e451d41db987776f1c0c784ef1faaaf194', 12, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-07 16:16:02', '2021-02-07 16:16:02', '2022-02-08 00:16:02'),
('f61a81040c5c6ccd81dcf3918e582ae387c4155cf08c029d6bdda59e8e52eec9ce452fa324714cc7', 20, 1, 'noomi93rin@gmail.com', '[]', 0, '2021-02-22 03:24:25', '2021-02-22 03:24:25', '2022-02-22 11:24:25'),
('f6c49e1ff861e9d171215bd70e8750a6166eebea8d411a47fa91c1f8f60f63933dd24635314ca4f8', 10, 1, 'dark@gmail.com', '[]', 0, '2021-02-09 03:37:25', '2021-02-09 03:37:25', '2022-02-09 11:37:25'),
('f7601e3471e17c0cba349476d92bf882f851e88d3cc42e3c92531594fe5b13957e6749c6a3a37528', 18, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-02-11 05:41:18', '2021-02-11 05:41:18', '2022-02-11 13:41:18'),
('f8a0fe7837f565c4d77e8f9c0b7364821a8bd5b063dc9faf5efa5ecc6c518f276e1abf04e391cc93', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-03-25 04:51:26', '2021-03-25 04:51:26', '2022-03-25 12:51:26'),
('f9178beddf963b9e30f932308014823315d36ac9a171508d958bd66990f0bc12a316c710ffed38ef', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-07 19:11:30', '2021-02-07 19:11:30', '2022-02-08 03:11:30'),
('f9dd21299d4a0bdd7592eb8e3326fde5756cc5c9d97223d45bcf2becc6e341d600a75e4cbd8635d4', 70, 1, 'hakl@gmail.com', '[]', 0, '2021-03-18 07:22:36', '2021-03-18 07:22:36', '2022-03-18 15:22:36'),
('fa24f17b2c175a8c1da5240b0f4e0fe3d8938f80a28bd13bd06839d2c3b29f1b7d83ca96bb1bd55a', 74, 1, 'random2@url.com', '[]', 0, '2021-03-26 08:39:35', '2021-03-26 08:39:35', '2022-03-26 16:39:35'),
('fb54f3d90cd5ba78d05a949691bcafaaa81f9e5331f68449bbd1685f491a7762969013aeff74534e', 10, 1, 'avinashkumawat2@gmail.com', '[]', 0, '2021-04-20 13:35:04', '2021-04-20 13:35:04', '2022-04-20 21:35:04'),
('fb58698ccf02e53fdf88abe066010e04d559a42f48e9624756740ee97864fb52c294fb5f101c7a98', 17, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-15 16:34:28', '2021-02-15 16:34:28', '2022-02-16 00:34:28'),
('fb8db7ee30e1f8bddc1f540f442999a6686bac3b0ed09f54a1f8f70cfd824dc3f3b2c160d0353cb3', 16, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-03-07 03:36:18', '2021-03-07 03:36:18', '2022-03-07 11:36:18'),
('fbb2456bb3a28175ec9ef962e6efac065c6392bd5fc6c7e343346c07a7984cc5f7f6eb1fa941cddb', 2, 1, 'hazly@pidc.edu.my', '[]', 0, '2021-02-05 06:39:39', '2021-02-05 06:39:39', '2022-02-05 14:39:39'),
('fbe149fb48e416fce489ea47e60da412cc0494fa110bf24ebd2f050684fb7a1ab6b05f5018e83cdf', 26, 1, 'drcplee@yahoo.com', '[]', 0, '2021-02-20 10:29:41', '2021-02-20 10:29:41', '2022-02-20 18:29:41'),
('fbedc4943403a568be8a1c3d2707e713eec77ec113061886f3eaf53f74e995271d98f9df3c3412b5', 54, 1, 'kalaivane@yahoo.com', '[]', 0, '2021-03-22 09:35:37', '2021-03-22 09:35:37', '2022-03-22 17:35:37'),
('fbfa664a021a9d90230bfd87b55558c694c44fa0283819e558c766d74ab7211e987dcba10573f5cf', 5, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-02-03 06:47:37', '2021-02-03 06:47:37', '2022-02-03 14:47:37'),
('fc13a7e7847cdfc8cbac90012706d640b9eefc88d7fb03acbd7e96b337dee7034bff6960acf0d4ad', 72, 1, 'jackob@gmail.com', '[]', 0, '2021-03-24 17:34:04', '2021-03-24 17:34:04', '2022-03-25 01:34:04'),
('fc46e394850e4d8dc8ab5260c5ca3086bddfbd5a21d6878ee3a5433d9d4c5883aa61985edf9a8cdf', 19, 1, 'hommychee2001@gmail.com', '[]', 0, '2021-02-21 01:44:01', '2021-02-21 01:44:01', '2022-02-21 09:44:01'),
('fd27a61dcd7e0aa0f9875711ae6a2dcf86c14726a5297f376a97e96f2639469a1360268eb4d6fec3', 14, 1, 'beryllium428@gmail.com', '[]', 0, '2021-02-07 18:24:14', '2021-02-07 18:24:14', '2022-02-08 02:24:14'),
('fe949a7fc2c99c41b6beb315190f9fea8b53edec9fd86b12338c123dcaaedcb3da13d334a1c11dfd', 11, 1, 'test_token', '[]', 0, '2021-02-07 19:17:06', '2021-02-07 19:17:06', '2022-02-08 03:17:06'),
('ff2e8fcdf7172dea815cf41ad381465bdd8f15e4ad4dd1b2e58ea4fe2f490af38901ac859c515558', 45, 1, 'mytyffa@yahoo.com', '[]', 0, '2021-03-12 06:58:44', '2021-03-12 06:58:44', '2022-03-12 14:58:44'),
('ffb2d86f1bd3f666bc47b9b6d80caf0eccacf0702d38d1a09331b503d1cfd77ade1c0ff8cab4e120', 90, 1, 'sthiru@armadadigital.com.my', '[]', 0, '2021-05-04 03:05:09', '2021-05-04 03:05:09', '2022-05-04 11:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'HEzaj5MwiqzihHgwdEjNE3YsYzxungxWWtJANSoT', NULL, 'http://localhost', 1, 0, 0, '2021-01-30 22:12:18', '2021-01-30 22:12:18'),
(2, NULL, 'Laravel Password Grant Client', '1hlURvl3QTg2nQoej8qIUy6PVPCBMUcwMn8dmLET', 'users', 'http://localhost', 0, 1, 0, '2021-01-30 22:12:18', '2021-01-30 22:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-30 22:12:18', '2021-01-30 22:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `response` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL COMMENT 'Multiply amount with 100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `response`, `status`, `amount`, `created_at`, `updated_at`) VALUES
(1, 10, '43J65624DY917531S', '{\"id\":\"43J65624DY917531S\",\"status\":\"CREATED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/43J65624DY917531S\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=43J65624DY917531S\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/43J65624DY917531S\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/43J65624DY917531S\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 0, '2021-04-17 05:39:19', '2021-04-17 05:39:19'),
(2, 10, '05J56740WD289343E', '{\"id\":\"05J56740WD289343E\",\"status\":\"CREATED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/05J56740WD289343E\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=05J56740WD289343E\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/05J56740WD289343E\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/05J56740WD289343E\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 0, '2021-04-17 05:39:31', '2021-04-17 05:39:31'),
(3, 10, '9EM741879X9945528', '{\"id\":\"9EM741879X9945528\",\"status\":\"CREATED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9EM741879X9945528\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=9EM741879X9945528\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9EM741879X9945528\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9EM741879X9945528\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 0, '2021-04-17 05:39:41', '2021-04-17 05:39:41'),
(4, 10, '97M32123FE403915W', '{\"id\":\"97M32123FE403915W\",\"status\":\"CREATED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/97M32123FE403915W\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=97M32123FE403915W\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/97M32123FE403915W\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/97M32123FE403915W\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 10000, '2021-04-17 05:40:47', '2021-04-17 05:40:47'),
(5, 10, '9UK98357MB4426456', '{\"id\":\"9UK98357MB4426456\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"2YK987243Y271751J\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/2YK987243Y271751J\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/2YK987243Y271751J\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9UK98357MB4426456\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T05:43:00Z\",\"update_time\":\"2021-04-17T05:43:00Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9UK98357MB4426456\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 05:42:31', '2021-04-17 05:43:01'),
(6, 10, '4TB021379P2882815', '{\"id\":\"4TB021379P2882815\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"9VG697079H671470Y\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/9VG697079H671470Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/9VG697079H671470Y\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4TB021379P2882815\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T05:44:20Z\",\"update_time\":\"2021-04-17T05:44:20Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4TB021379P2882815\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 05:44:03', '2021-04-17 05:44:21'),
(7, 82, '14G31074JM502954Y', '{\"id\":\"14G31074JM502954Y\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"8TF523634H310494P\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/8TF523634H310494P\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/8TF523634H310494P\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/14G31074JM502954Y\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:05:54Z\",\"update_time\":\"2021-04-17T07:05:54Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/14G31074JM502954Y\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:04:24', '2021-04-17 07:05:55'),
(8, 82, '4UH53720PM123134X', '{\"id\":\"4UH53720PM123134X\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"05G293758K2004141\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/05G293758K2004141\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/05G293758K2004141\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4UH53720PM123134X\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:09:22Z\",\"update_time\":\"2021-04-17T07:09:22Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4UH53720PM123134X\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:09:05', '2021-04-17 07:09:23'),
(9, 82, '579422964J528872D', '{\"id\":\"579422964J528872D\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"46F27462UD672060L\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/46F27462UD672060L\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/46F27462UD672060L\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/579422964J528872D\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:11:12Z\",\"update_time\":\"2021-04-17T07:11:12Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/579422964J528872D\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:10:40', '2021-04-17 07:11:13'),
(10, 82, '6047653493504570F', '{\"id\":\"6047653493504570F\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"6LK60276DN348532F\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/6LK60276DN348532F\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/6LK60276DN348532F\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6047653493504570F\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:12:13Z\",\"update_time\":\"2021-04-17T07:12:13Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6047653493504570F\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:11:27', '2021-04-17 07:12:14'),
(11, 82, '77X76214757019806', '{\"id\":\"77X76214757019806\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"4J4044391X221783Y\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/4J4044391X221783Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/4J4044391X221783Y\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/77X76214757019806\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:13:29Z\",\"update_time\":\"2021-04-17T07:13:29Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/77X76214757019806\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:13:15', '2021-04-17 07:13:31'),
(12, 82, '5GS36364H9328901R', '{\"id\":\"5GS36364H9328901R\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"9HX702858W232994H\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/9HX702858W232994H\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/9HX702858W232994H\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/5GS36364H9328901R\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:15:21Z\",\"update_time\":\"2021-04-17T07:15:21Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/5GS36364H9328901R\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:15:06', '2021-04-17 07:15:22'),
(13, 82, '1T5350291L751163R', '{\"id\":\"1T5350291L751163R\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"6L617557CW593644K\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/6L617557CW593644K\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/6L617557CW593644K\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/1T5350291L751163R\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:20:19Z\",\"update_time\":\"2021-04-17T07:20:19Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/1T5350291L751163R\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:19:59', '2021-04-17 07:20:20'),
(14, 82, '6WG72428AC5474033', '{\"id\":\"6WG72428AC5474033\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"7YD46778GJ091353Y\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/7YD46778GJ091353Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/7YD46778GJ091353Y\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6WG72428AC5474033\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:22:12Z\",\"update_time\":\"2021-04-17T07:22:12Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6WG72428AC5474033\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:21:44', '2021-04-17 07:22:13'),
(15, 82, '6Y270609X3361793A', '{\"id\":\"6Y270609X3361793A\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"17359888JS499971T\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/17359888JS499971T\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/17359888JS499971T\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6Y270609X3361793A\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:22:53Z\",\"update_time\":\"2021-04-17T07:22:53Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6Y270609X3361793A\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:22:35', '2021-04-17 07:22:55'),
(16, 82, '4PH798060M975431D', '{\"id\":\"4PH798060M975431D\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"6B8041599P860634B\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/6B8041599P860634B\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/6B8041599P860634B\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4PH798060M975431D\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:24:52Z\",\"update_time\":\"2021-04-17T07:24:52Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4PH798060M975431D\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:24:32', '2021-04-17 07:24:53'),
(17, 82, '2XS52244UE767470Y', '{\"id\":\"2XS52244UE767470Y\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"1D941786P14535452\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/1D941786P14535452\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/1D941786P14535452\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/2XS52244UE767470Y\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:36:07Z\",\"update_time\":\"2021-04-17T07:36:07Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/2XS52244UE767470Y\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:35:50', '2021-04-17 07:36:08'),
(18, 82, '9VH08819Y1298380P', '{\"id\":\"9VH08819Y1298380P\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"5E671448H8087624J\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"100.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"3.92\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"96.08\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/5E671448H8087624J\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/5E671448H8087624J\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9VH08819Y1298380P\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-17T07:36:45Z\",\"update_time\":\"2021-04-17T07:36:45Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9VH08819Y1298380P\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 10000, '2021-04-17 07:36:25', '2021-04-17 07:36:46'),
(19, 82, '05Y27798V17054153', '{\"id\":\"05Y27798V17054153\",\"status\":\"CREATED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/05Y27798V17054153\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=05Y27798V17054153\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/05Y27798V17054153\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/05Y27798V17054153\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 3000, '2021-04-17 13:43:28', '2021-04-17 13:43:28'),
(20, 82, '1U4948384V154733X', '{\"id\":\"1U4948384V154733X\",\"status\":\"CREATED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/1U4948384V154733X\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=1U4948384V154733X\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/1U4948384V154733X\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/1U4948384V154733X\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 3000, '2021-04-17 13:44:33', '2021-04-17 13:44:33'),
(21, 83, '4XW23992H3891781A', '{\"id\":\"4XW23992H3891781A\",\"status\":\"CREATED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4XW23992H3891781A\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=4XW23992H3891781A\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4XW23992H3891781A\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4XW23992H3891781A\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 3000, '2021-04-19 03:24:42', '2021-04-19 03:24:42'),
(22, 83, '7HC12847RC619551L', '{\"id\":\"7HC12847RC619551L\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}},\"payments\":{\"captures\":[{\"id\":\"3LJ26820UD914551D\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"30.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"30.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"1.40\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"28.60\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/3LJ26820UD914551D\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/3LJ26820UD914551D\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/7HC12847RC619551L\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-04-19T03:29:49Z\",\"update_time\":\"2021-04-19T03:29:49Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/7HC12847RC619551L\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'COMPLETED', 3000, '2021-04-19 03:26:35', '2021-04-19 03:29:50'),
(24, 86, '6GT53940U86077836', '{\"id\":\"6GT53940U86077836\",\"intent\":\"CAPTURE\",\"status\":\"APPROVED\",\"purchase_units\":[{\"reference_id\":\"86\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"},\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"create_time\":\"2021-04-25T13:17:11Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6GT53940U86077836\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6GT53940U86077836\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6GT53940U86077836\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'APPROVED', 500, '2021-04-25 13:17:12', '2021-04-25 13:18:22'),
(25, 86, '6R290445UB596861Y', '{\"id\":\"6R290445UB596861Y\",\"intent\":\"CAPTURE\",\"status\":\"APPROVED\",\"purchase_units\":[{\"reference_id\":\"86\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"},\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"create_time\":\"2021-04-25T13:23:41Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6R290445UB596861Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6R290445UB596861Y\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6R290445UB596861Y\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'APPROVED', 500, '2021-04-25 13:23:41', '2021-04-25 13:24:40'),
(26, 86, '86J78198G9005653D', '{\"id\":\"86J78198G9005653D\",\"intent\":\"CAPTURE\",\"status\":\"APPROVED\",\"purchase_units\":[{\"reference_id\":\"86\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"},\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"create_time\":\"2021-04-25T13:25:35Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/86J78198G9005653D\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/86J78198G9005653D\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/86J78198G9005653D\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'APPROVED', 500, '2021-04-25 13:25:36', '2021-04-25 13:26:20'),
(27, 86, '517041008S8901322', '{\"id\":\"517041008S8901322\",\"intent\":\"CAPTURE\",\"status\":\"APPROVED\",\"purchase_units\":[{\"reference_id\":\"86\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"},\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"create_time\":\"2021-04-25T13:30:15Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/517041008S8901322\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/517041008S8901322\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/517041008S8901322\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'APPROVED', 500, '2021-04-25 13:30:16', '2021-04-25 13:31:38'),
(28, 87, '8FB85844Y5125571R', '{\"id\":\"8FB85844Y5125571R\",\"intent\":\"CAPTURE\",\"status\":\"CREATED\",\"purchase_units\":[{\"reference_id\":\"87\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"}}],\"create_time\":\"2021-04-25T14:21:48Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/8FB85844Y5125571R\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=8FB85844Y5125571R\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/8FB85844Y5125571R\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/8FB85844Y5125571R\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 500, '2021-04-25 14:21:48', '2021-04-25 14:21:48'),
(29, 87, '2T87692633882292G', '{\"id\":\"2T87692633882292G\",\"intent\":\"CAPTURE\",\"status\":\"CREATED\",\"purchase_units\":[{\"reference_id\":\"87\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"}}],\"create_time\":\"2021-04-25T14:23:39Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/2T87692633882292G\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=2T87692633882292G\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/2T87692633882292G\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/2T87692633882292G\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 500, '2021-04-25 14:23:40', '2021-04-25 14:23:40'),
(30, 87, '6P9633164L4573025', '{\"id\":\"6P9633164L4573025\",\"intent\":\"CAPTURE\",\"status\":\"CREATED\",\"purchase_units\":[{\"reference_id\":\"87\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"}}],\"create_time\":\"2021-04-25T14:24:33Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6P9633164L4573025\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=6P9633164L4573025\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6P9633164L4573025\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/6P9633164L4573025\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 500, '2021-04-25 14:24:33', '2021-04-25 14:24:33'),
(31, 88, '47A247681N2257403', '{\"id\":\"47A247681N2257403\",\"intent\":\"CAPTURE\",\"status\":\"CREATED\",\"purchase_units\":[{\"reference_id\":\"88\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"}}],\"create_time\":\"2021-04-25T14:31:56Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/47A247681N2257403\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=47A247681N2257403\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/47A247681N2257403\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/47A247681N2257403\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 500, '2021-04-25 14:31:57', '2021-04-25 14:31:57'),
(32, 88, '4UR81655XG985403N', '{\"id\":\"4UR81655XG985403N\",\"intent\":\"CAPTURE\",\"status\":\"CREATED\",\"purchase_units\":[{\"reference_id\":\"88\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"}}],\"create_time\":\"2021-04-25T14:35:25Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4UR81655XG985403N\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/www.sandbox.paypal.com\\/checkoutnow?token=4UR81655XG985403N\",\"rel\":\"approve\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4UR81655XG985403N\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/4UR81655XG985403N\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'CREATED', 500, '2021-04-25 14:35:26', '2021-04-25 14:35:26'),
(33, 88, '5HR82123B55325612', '{\"id\":\"5HR82123B55325612\",\"intent\":\"CAPTURE\",\"status\":\"APPROVED\",\"purchase_units\":[{\"reference_id\":\"88\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"},\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"create_time\":\"2021-04-25T14:37:04Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/5HR82123B55325612\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/5HR82123B55325612\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/5HR82123B55325612\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'APPROVED', 500, '2021-04-25 14:37:04', '2021-04-25 14:40:47'),
(34, 90, '07N811321K8049630', '{\"id\":\"07N811321K8049630\",\"intent\":\"CAPTURE\",\"status\":\"APPROVED\",\"purchase_units\":[{\"reference_id\":\"90\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"},\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"create_time\":\"2021-04-27T02:34:13Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/07N811321K8049630\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/07N811321K8049630\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/07N811321K8049630\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'APPROVED', 500, '2021-04-27 02:34:14', '2021-04-27 02:36:34'),
(35, 91, '3C125169WK279413Y', '{\"id\":\"3C125169WK279413Y\",\"intent\":\"CAPTURE\",\"status\":\"APPROVED\",\"purchase_units\":[{\"reference_id\":\"91\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"},\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"create_time\":\"2021-04-28T00:35:09Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/3C125169WK279413Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/3C125169WK279413Y\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/3C125169WK279413Y\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'APPROVED', 500, '2021-04-28 00:35:09', '2021-04-28 00:36:47'),
(36, 92, '8XA52758EM9239237', '{\"id\":\"8XA52758EM9239237\",\"intent\":\"CAPTURE\",\"status\":\"APPROVED\",\"purchase_units\":[{\"reference_id\":\"92\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"5.00\"},\"payee\":{\"email_address\":\"sb-oq2dv5911529@business.example.com\",\"merchant_id\":\"G4NL4Z6LAD5DL\"},\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Level 01\",\"admin_area_2\":\"Petaling Jaya\",\"admin_area_1\":\"Selangor\",\"postal_code\":\"47800\",\"country_code\":\"MY\"}}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-id5fr5952366@personal.example.com\",\"payer_id\":\"56EV9ZPU8RXNU\",\"address\":{\"country_code\":\"MY\"}},\"create_time\":\"2021-04-29T10:05:39Z\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/8XA52758EM9239237\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/8XA52758EM9239237\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/8XA52758EM9239237\\/capture\",\"rel\":\"capture\",\"method\":\"POST\"}]}', 'APPROVED', 500, '2021-04-29 10:05:39', '2021-04-29 10:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('noomi93rin@gmail.com', '$2y$10$33BWYNCy4DocLkqvtmUi..p62zJIsrn1SiytbEW7IQGlcVuG7Sd5m', '2021-02-16 00:06:44'),
('hazly@pidc.edu.my', '$2y$10$xHD5plC/oGKdhb4BFAG9tOro8KpRxc.Wrw4fVMyoMEZHFmfxhBKvy', '2021-02-16 00:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `payout_batch_requests`
--

CREATE TABLE `payout_batch_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PENDING',
  `batch_response` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_requests`
--

CREATE TABLE `payout_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_batch_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `amount` text COLLATE utf8_unicode_ci NOT NULL,
  `currency` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `response` text COLLATE utf8_unicode_ci NOT NULL,
  `bank_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_histories`
--

CREATE TABLE `reward_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_step_level` int(11) NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `from_tree_level` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `from_step_level` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reward_histories`
--

INSERT INTO `reward_histories` (`id`, `user_id`, `user_step_level`, `from_id`, `from_tree_level`, `amount`, `created_at`, `updated_at`, `from_step_level`) VALUES
(2, 10, 1, 10, 1, 0.00, '2021-03-15 06:54:32', NULL, 1),
(3, 64, 1, 64, 0, 6.00, '2021-03-22 16:27:06', '2021-03-22 16:27:06', 2),
(4, 61, 0, 64, 1, 6.00, '2021-03-22 16:27:06', '2021-03-22 16:27:06', 2),
(5, 56, 1, 61, 2, 0.80, '2021-03-22 16:27:06', '2021-03-22 16:27:06', 1),
(6, 51, 1, 56, 3, 0.80, '2021-03-22 16:27:06', '2021-03-22 16:27:06', 2),
(7, 65, 1, 65, 0, 6.00, '2021-03-22 16:27:06', '2021-03-22 16:27:06', 2),
(8, 57, 1, 65, 1, 6.00, '2021-03-22 16:27:06', '2021-03-22 16:27:06', 2),
(9, 51, 1, 57, 2, 0.80, '2021-03-22 16:27:06', '2021-03-22 16:27:06', 2),
(10, 66, 1, 66, 0, 6.00, '2021-03-22 16:27:06', '2021-03-22 16:27:06', 2),
(11, 88, 1, 90, 1, 0.15, '2021-05-02 06:23:58', '2021-05-02 06:23:58', 1),
(12, 92, 0, 92, 0, 1.46, '2021-05-03 17:18:56', '2021-05-03 17:18:56', 1),
(13, 91, -1, 92, 1, 0.15, '2021-05-03 17:18:56', '2021-05-03 17:18:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reward_settings`
--

CREATE TABLE `reward_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `step_level` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `reward` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reward_settings`
--

INSERT INTO `reward_settings` (`id`, `step_level`, `tree_level`, `reward`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1.46, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(2, 1, 1, 0.15, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(3, 2, 1, 0.17, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(4, 3, 1, 0.19, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(5, 4, 1, 0.22, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(6, 5, 1, 0.24, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(8, 1, 2, 0.15, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(9, 2, 2, 0.17, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(10, 3, 2, 0.19, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(11, 4, 2, 0.22, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(12, 5, 2, 0.24, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(14, 1, 3, 0.15, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(15, 2, 3, 0.17, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(16, 3, 3, 0.19, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(17, 4, 3, 0.22, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(18, 5, 3, 0.24, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(20, 1, 4, 0.15, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(21, 2, 4, 0.17, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(22, 3, 4, 0.19, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(23, 4, 4, 0.22, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(24, 5, 4, 0.24, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(26, 1, 5, 0.15, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(27, 2, 5, 0.17, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(28, 3, 5, 0.19, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(29, 4, 5, 0.22, '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(30, 5, 5, 0.24, '2021-03-04 08:33:26', '2021-03-04 08:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-03-04 08:33:26', '2021-03-04 08:33:26'),
(2, 'customer', 'web', '2021-03-04 08:33:26', '2021-03-04 08:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ALLOW_EXTENDED_TREE', '1', 'Automatically add sub child under a child when a user reached maximum number of child under him.', '2021-01-30 22:12:18', '2021-01-30 22:12:18'),
(2, 'MAX_ALLOW_CHILD', '4', 'Each user can have maximum number of child user', '2021-01-30 22:12:18', '2021-01-30 22:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `bank_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `via` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `bank_account_id`, `via`, `created_at`, `updated_at`) VALUES
(1, 10, 10.00, 13, 'Bank Transfer', '2021-04-19 03:07:33', '2021-04-19 03:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `steps_goal` bigint(20) UNSIGNED NOT NULL DEFAULT '10000',
  `referral_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `activity_level` enum('active','moderate','inactive') COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL COMMENT 'Weight Unit is KG.',
  `height` int(11) DEFAULT NULL COMMENT 'Height Unit is CM.',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `level_last_updated_at` datetime DEFAULT NULL,
  `first_cycle_stated_at` datetime DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `is_type` tinyint(4) DEFAULT '0',
  `approved_at` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wallet_amount` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `country_code`, `country`, `phone`, `steps_goal`, `referral_code`, `dob`, `gender`, `age`, `activity_level`, `weight`, `height`, `email_verified_at`, `password`, `level`, `level_last_updated_at`, `first_cycle_stated_at`, `device_id`, `is_type`, `approved_at`, `remember_token`, `created_at`, `updated_at`, `timezone`, `wallet_amount`) VALUES
(10, 'dark', 'avinashkumawat2@gmail.com', '+60', 'Malaysia', '9464649494', 10000, 'YA3wqU', '1991-02-14', 'male', NULL, 'active', 55.00, 167, NULL, '$2y$10$2PE6jRznVfU48DbbV/ZfteDQqCHO96y5WREtrvm4XAZL2M0mWdx0e', 1, '2021-05-02 12:04:02', NULL, '07c3c5d2114447d19999234234', 0, '2021-04-17 13:44:21', 'Kimcu5JzNfccamiqC0UHHIM4DtOVEtl3SVfEF38ZcAkLso5uA0La266CFi7O', '2021-02-06 21:13:30', '2021-05-04 09:10:53', 'Asia/Kolkata', 0.00),
(35, 'Admin', 'admin@gmail.com', '+60', 'Malaysia', '12345', 10000, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EByWXatXHDvL3F2Kuwckd.cReqvTUWhhNlfjesKhFU5IL3eeeYfFW', 1, NULL, NULL, '12345', 1, '2021-03-27 10:11:29', NULL, '2021-03-09 13:03:23', '2021-03-09 13:03:23', NULL, 0.00),
(38, 'staff', 'staff@gmail.com', '+60', 'Malaysia', '0195571001', 10000, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AKd.LNP7cmJ46hcviXr7gOAvYJzeKngLIddB2ruq6OQmjo2jMw9v6', 1, NULL, NULL, '12345', 1, '2021-03-27 10:11:33', NULL, '2021-03-10 08:00:47', '2021-03-10 08:00:47', NULL, 0.00),
(44, NULL, 'dar123123k@gmail.com', '+60', 'Malaysia', '94604950241', 10000, 'urZsFf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jwFmERg8t8nZ/qJjU4prneYcI0vBhUgOsi1GwOD19V/Nez7iXQyt2', 1, NULL, NULL, 'asdasdasd123123', 0, '2021-03-27 10:11:37', NULL, '2021-03-12 05:30:30', '2021-03-12 05:30:30', NULL, 0.00),
(46, NULL, 'dar123123123k@gmail.com', '+60', 'Malaysia', '9460495024112', 10000, 'jZxYLi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fMZVhgNgsuV86mIPJ5xdDeqiTqD4J4JRZP4isbKmO6AZdwh28mlg.', 1, NULL, NULL, 'asdasdasd123123123123', 0, '2021-03-27 10:11:41', NULL, '2021-03-12 07:08:11', '2021-03-12 07:08:11', NULL, 0.00),
(49, 'DINIEY', 'mytyffa@yahoo.com', '+60', 'Malaysia', '0194191001', 10000, 'z3K9QH', '1982-07-28', 'female', NULL, 'active', 80.00, 170, NULL, '$2y$10$.yt0XVpCgPFeuSLeVpYDjuVF.GxWAtl4nXeqjxWWKRXOBvbrHZrkG', 1, '2021-05-07 02:10:50', NULL, '5c1993a12bfce00fasdas', 0, '2021-03-27 10:11:49', NULL, '2021-03-12 07:44:19', '2021-05-06 18:10:50', 'Asia/Kuala_Lumpur', 0.00),
(70, 'avinash', 'hakl@gmail.com', '+60', 'Malaysia', '976599595', 10000, 'qACY0X', '1998-03-19', 'male', NULL, 'active', 55.00, 126, NULL, '$2y$10$1HGxRKmoBt0EZrLD48OD5u9KEoufcGlDRXd/Z8VPMhZFFFazg/6Tm', 1, '2021-05-02 12:04:02', NULL, '07c3c5d219849489489', 0, '2021-03-27 10:12:39', NULL, '2021-03-18 07:22:36', '2021-05-02 04:04:02', 'Asia/Kolkata', 0.00),
(81, 'avinash', 'test@gm.com', '+60', 'Malaysia', '94685585366', 10000, 'TE000081', '1989-04-28', 'male', NULL, 'inactive', 55.00, 126, NULL, '$2y$10$bdSJYzd79IAmB851ZLUS/OSvtnokzuPq.U0U0ughk/rUa7s1mlXkm', 1, '2021-05-02 12:04:02', NULL, '83b05522b84077e3', 0, NULL, NULL, '2021-04-16 09:03:15', '2021-05-02 04:04:02', 'Asia/Kolkata', 0.00),
(82, 'Kumawat', 'random@random.com', '+60', 'Malaysia', '21231321', 10000, 'RA000082', '1997-04-17', 'male', NULL, 'inactive', 55.00, 126, NULL, '$2y$10$gksJcXPL0UplPZm3tDH0xeJL6KODQmmnKW1NOqu4JUYMS9iWK8iRG', 1, '2021-05-02 01:34:02', NULL, 'b34008a69aba68f8', 0, NULL, NULL, '2021-04-17 06:25:24', '2021-05-01 17:34:02', 'America/Mexico_City', 0.00),
(85, NULL, 'random212323@url.com1', '91', 'india', '545214234234123', 10000, 'RA000085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rlyZYDw20aRJRB/9gcWdz.wpXmSiAzw06NL2Z5F41/zC3v9GSfoxC', 0, NULL, NULL, '1278378234231', 0, NULL, NULL, '2021-04-25 13:10:02', '2021-04-25 13:10:02', NULL, 0.00),
(86, 'avin', 'cub@gmail.com', '+60', 'Malaysia', '9468842139', 10000, 'CU000086', '2000-03-23', 'male', NULL, 'moderate', 55.00, 126, NULL, '$2y$10$R2VRS9BmGueYuXU69Zu3..vAVFkMM9BHKF3maKn2Qw0GlQlzJhHzu', 0, '2021-05-02 12:04:02', NULL, 'd6e5240901fe2699', 0, '2021-04-25 21:31:38', NULL, '2021-04-25 13:12:43', '2021-05-02 04:04:02', 'Asia/Kolkata', 0.00),
(88, 'MUHAMAD HAZLY BIN ARSHAD', 'hazly@pidc.edu.my', '+60', 'Malaysia', '0195571003', 10000, 'HA000088', '1980-06-24', 'male', NULL, 'active', 90.00, 170, NULL, '$2y$10$SCc65ZslRULhrsrtenWdXuo6Y5b8adQGx9BA56FRxpWpLuR.oMVBm', 0, '2021-05-07 02:10:50', NULL, '497eae0168234c4f', 0, '2021-04-25 22:40:47', NULL, '2021-04-25 14:30:23', '2021-05-06 18:10:50', 'Asia/Kuala_Lumpur', 0.15),
(90, 'Thiru Subramaniam', 'sthiru@armadadigital.com.my', '+60', 'Malaysia', '0123007300', 10000, 'ST000090', '1974-07-27', 'male', NULL, 'inactive', 85.00, 180, NULL, '$2y$10$UP2NUMcJ//lxZk2/kQn3nu4Rcreu9cfVSawBGR.4z93OLmkcgYGl2', 1, '2021-05-07 02:10:50', NULL, '90b68166c253b346', 0, '2021-04-27 10:36:34', NULL, '2021-04-27 02:30:46', '2021-05-06 18:10:50', 'Asia/Kuala_Lumpur', 1.76),
(91, 'Kalaivane Subbramaniam', 'kalaivane@yahoo.com', '+60', 'Malaysia', '124238579', 10000, 'KA000091', '1974-03-20', 'female', NULL, 'inactive', 60.10, 165, NULL, '$2y$10$aeh4lPmzef10jWvW.7ObLODNNrS1mrcglCW5bEgNZ43Azc4akYP52', 0, '2021-05-03 02:30:47', NULL, 'd4fda50bff753836', 0, '2021-04-28 08:36:47', NULL, '2021-04-28 00:31:46', '2021-05-03 17:18:56', 'Asia/Kuala_Lumpur', 0.15),
(92, 'Pravin Kumar Subbramaniam', 'pravs8579@gmail.com', '+60', 'Malaysia', '194814299', 10000, 'PR000092', '1979-05-08', 'male', NULL, 'inactive', 98.00, 174, NULL, '$2y$10$k15/akJfW.OH9bpzcqnNe.n/y7VTaLWcmCDe9mBnJKqRg1BHUUAv.', 1, '2021-05-04 01:18:56', NULL, '01f18583dde1747f', 0, '2021-04-29 18:07:18', NULL, '2021-04-29 10:02:17', '2021-05-03 17:18:56', 'Asia/Kuala_Lumpur', 1.46);

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_transfer_receipts`
--

CREATE TABLE `user_bank_transfer_receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_bank_transfer_receipts`
--

INSERT INTO `user_bank_transfer_receipts` (`id`, `user_id`, `path`, `created_at`, `updated_at`) VALUES
(11, 72, 'receipts/72/6LyTPQX9X3ExWTplqg9UwYGM67YC5jwV56MzocO9.png', '2021-03-25 02:06:34', '2021-03-25 02:06:34'),
(12, 79, 'receipts/79/dD8CUDvnw2Na03cYsxUWJJft5fzvjIwWOMBIqPht.png', '2021-03-25 18:53:25', '2021-03-25 18:53:25'),
(13, 17, 'receipts/17/uY0p9YR34Io77xD754mfp5OCJs3XedRA6H1KjPcW.jpg', '2021-03-26 12:16:28', '2021-03-26 12:16:28'),
(14, 80, 'receipts/80/lbeMJCnyV1dseqnkhirlgIWKOWj7DyYH2nGft9PX.jpg', '2021-03-26 16:15:26', '2021-03-26 16:15:26'),
(15, 56, 'receipts/56/jHfclHgte1kGTDcyQV7WXMt75W2vAiuBzG1sfyNR.jpg', '2021-03-27 02:38:04', '2021-03-27 02:38:04'),
(17, 10, 'receipts/10/tviuzeL42xqT2tstsT80iURC7bw4s5xIWmjKjuyn.png', '2021-04-14 11:56:06', '2021-04-14 11:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_health_conditions`
--

CREATE TABLE `user_health_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `health_condition_id` bigint(20) UNSIGNED NOT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_health_conditions`
--

INSERT INTO `user_health_conditions` (`id`, `user_id`, `health_condition_id`, `info`, `created_at`, `updated_at`) VALUES
(9, 10, 1, NULL, '2021-03-03 03:17:11', '2021-03-03 03:17:11'),
(10, 10, 2, NULL, '2021-03-03 03:17:11', '2021-03-03 03:17:11'),
(11, 10, 3, NULL, '2021-03-03 03:17:11', '2021-03-03 03:17:11'),
(12, 10, 4, NULL, '2021-03-03 03:17:11', '2021-03-03 03:17:11'),
(13, 10, 5, NULL, '2021-03-03 03:17:11', '2021-03-03 03:17:11'),
(17, 49, 6, NULL, '2021-03-12 07:45:15', '2021-03-12 07:45:15'),
(20, 59, 6, NULL, '2021-03-15 11:42:55', '2021-03-15 11:42:55'),
(21, 62, 6, NULL, '2021-03-15 14:24:18', '2021-03-15 14:24:18'),
(23, 70, 1, NULL, '2021-03-18 04:53:05', '2021-03-18 04:53:05'),
(24, 70, 2, NULL, '2021-03-18 04:53:05', '2021-03-18 04:53:05'),
(25, 72, 1, NULL, '2021-03-20 09:52:24', '2021-03-20 09:52:24'),
(26, 72, 2, NULL, '2021-03-20 09:52:24', '2021-03-20 09:52:24'),
(27, 78, 1, NULL, '2021-03-25 18:48:02', '2021-03-25 18:48:02'),
(28, 78, 3, NULL, '2021-03-25 18:48:02', '2021-03-25 18:48:02'),
(29, 78, 2, NULL, '2021-03-25 18:48:02', '2021-03-25 18:48:02'),
(30, 79, 1, NULL, '2021-03-25 18:52:48', '2021-03-25 18:52:48'),
(31, 79, 2, NULL, '2021-03-25 18:52:48', '2021-03-25 18:52:48'),
(32, 79, 3, NULL, '2021-03-25 18:52:48', '2021-03-25 18:52:48'),
(33, 79, 4, NULL, '2021-03-25 18:52:48', '2021-03-25 18:52:48'),
(34, 80, 6, NULL, '2021-03-26 16:13:24', '2021-03-26 16:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_level_histories`
--

CREATE TABLE `user_level_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `steps` int(11) NOT NULL DEFAULT '0',
  `goal` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `last_level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_level_histories`
--

INSERT INTO `user_level_histories` (`id`, `user_id`, `steps`, `goal`, `level`, `last_level`, `created_at`, `updated_at`) VALUES
(4, 10, 166725, 15000, 1, -1, '2021-02-13 17:46:07', '2021-02-13 17:46:07'),
(6, 17, 13015, 12000, 1, -1, '2021-02-14 16:27:46', '2021-02-14 16:27:46'),
(10, 10, 867, 24000, 2, 1, '2021-02-21 22:43:56', '2021-02-21 22:43:56'),
(13, 17, 15025, 15000, 2, -1, '2021-02-22 01:13:57', '2021-02-22 01:13:57'),
(25, 17, 22405, 19500, 3, 2, '2021-02-28 17:55:27', '2021-02-28 17:55:27'),
(26, 51, 13056, 9000, 2, 1, '2021-03-21 16:25:49', '2021-03-21 16:25:49'),
(28, 56, 26146, 12000, 2, 1, '2021-03-21 16:25:49', '2021-03-21 16:25:49'),
(29, 57, 26579, 12000, 2, 1, '2021-03-21 16:25:49', '2021-03-21 16:25:49'),
(30, 59, 8305, 6000, 2, 1, '2021-03-21 16:25:49', '2021-03-21 16:25:49'),
(31, 62, 25407, 15000, 2, 1, '2021-03-21 16:25:49', '2021-03-21 16:25:49'),
(32, 64, 29658, 9000, 2, 1, '2021-03-22 16:27:06', '2021-03-22 16:27:06'),
(33, 65, 15965, 12000, 2, 1, '2021-03-22 16:27:06', '2021-03-22 16:27:06'),
(34, 66, 17490, 9000, 2, 1, '2021-03-22 16:27:06', '2021-03-22 16:27:06'),
(35, 90, 16599, 12000, 0, -1, '2021-05-02 06:23:58', '2021-05-02 06:23:58'),
(36, 92, 19627, 12000, 0, -1, '2021-05-03 17:18:56', '2021-05-03 17:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_trees`
--

CREATE TABLE `user_trees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_user_id` bigint(20) UNSIGNED NOT NULL,
  `child_user_id` bigint(20) UNSIGNED NOT NULL,
  `referred_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_trees`
--

INSERT INTO `user_trees` (`id`, `parent_user_id`, `child_user_id`, `referred_by`, `created_at`, `updated_at`) VALUES
(1, 10, 44, 10, '2021-03-12 05:30:30', '2021-03-12 05:30:30'),
(2, 10, 46, 10, '2021-03-12 07:08:11', '2021-03-12 07:08:11'),
(3, 10, 48, 10, '2021-03-12 07:26:45', '2021-03-12 07:26:45'),
(4, 17, 49, 17, '2021-03-12 07:44:19', '2021-03-12 07:44:19'),
(8, 51, 56, 51, '2021-03-15 03:43:59', '2021-03-15 03:43:59'),
(9, 51, 57, 51, '2021-03-15 03:44:09', '2021-03-15 03:44:09'),
(11, 51, 59, 51, '2021-03-15 11:41:19', '2021-03-15 11:41:19'),
(12, 56, 61, 56, '2021-03-15 13:51:35', '2021-03-15 13:51:35'),
(14, 61, 64, 61, '2021-03-16 00:13:34', '2021-03-16 00:13:34'),
(15, 57, 65, 57, '2021-03-16 02:32:13', '2021-03-16 02:32:13'),
(17, 10, 72, 10, '2021-03-20 12:21:46', '2021-03-20 12:21:46'),
(18, 10, 74, 10, '2021-03-26 08:39:35', '2021-03-26 08:39:35'),
(19, 10, 78, 10, '2021-03-26 08:47:33', '2021-03-26 08:47:33'),
(20, 10, 79, 10, '2021-03-26 08:52:23', '2021-03-26 08:52:23'),
(22, 10, 81, 10, '2021-04-16 09:03:15', '2021-04-16 09:03:15'),
(23, 81, 82, 81, '2021-04-17 06:25:24', '2021-04-17 06:25:24'),
(26, 35, 85, 35, '2021-04-25 13:10:02', '2021-04-25 13:10:02'),
(27, 35, 86, 35, '2021-04-25 13:12:43', '2021-04-25 13:12:43'),
(31, 88, 90, 88, '2021-04-27 02:30:46', '2021-04-27 02:30:46'),
(32, 90, 91, 90, '2021-04-28 00:31:46', '2021-04-28 00:31:46'),
(33, 91, 92, 91, '2021-04-29 10:02:18', '2021-04-29 10:02:18'),
(34, 35, 93, 35, '2021-05-02 05:01:56', '2021-05-02 05:01:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feeds_user_id_foreign` (`user_id`);

--
-- Indexes for table `feed_comments`
--
ALTER TABLE `feed_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_comments_feed_id_foreign` (`feed_id`),
  ADD KEY `feed_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `feed_images`
--
ALTER TABLE `feed_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_images_feed_id_foreign` (`feed_id`);

--
-- Indexes for table `feed_likes`
--
ALTER TABLE `feed_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_likes_feed_id_foreign` (`feed_id`),
  ADD KEY `feed_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `health_conditions`
--
ALTER TABLE `health_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_requirements`
--
ALTER TABLE `level_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payout_batch_requests`
--
ALTER TABLE `payout_batch_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_requests`
--
ALTER TABLE `payout_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payout_requests_bank_account_id_foreign` (`bank_account_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `reward_histories`
--
ALTER TABLE `reward_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reward_histories_user_id_foreign` (`user_id`),
  ADD KEY `reward_histories_from_id_foreign` (`from_id`);

--
-- Indexes for table `reward_settings`
--
ALTER TABLE `reward_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_bank_account_id_foreign` (`bank_account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_bank_transfer_receipts`
--
ALTER TABLE `user_bank_transfer_receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bank_transfer_receipts_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_health_conditions`
--
ALTER TABLE `user_health_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_health_conditions_user_id_foreign` (`user_id`),
  ADD KEY `user_health_conditions_health_condition_id_foreign` (`health_condition_id`);

--
-- Indexes for table `user_level_histories`
--
ALTER TABLE `user_level_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_trees`
--
ALTER TABLE `user_trees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_trees_parent_user_id_foreign` (`parent_user_id`),
  ADD KEY `user_trees_child_user_id_foreign` (`child_user_id`),
  ADD KEY `user_trees_referred_by_foreign` (`referred_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feed_comments`
--
ALTER TABLE `feed_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feed_images`
--
ALTER TABLE `feed_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feed_likes`
--
ALTER TABLE `feed_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `health_conditions`
--
ALTER TABLE `health_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `level_requirements`
--
ALTER TABLE `level_requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payout_batch_requests`
--
ALTER TABLE `payout_batch_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_requests`
--
ALTER TABLE `payout_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward_histories`
--
ALTER TABLE `reward_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reward_settings`
--
ALTER TABLE `reward_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `user_bank_transfer_receipts`
--
ALTER TABLE `user_bank_transfer_receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_health_conditions`
--
ALTER TABLE `user_health_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_level_histories`
--
ALTER TABLE `user_level_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_trees`
--
ALTER TABLE `user_trees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
  ADD CONSTRAINT `feeds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `feed_comments`
--
ALTER TABLE `feed_comments`
  ADD CONSTRAINT `feed_comments_feed_id_foreign` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `feed_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `feed_images`
--
ALTER TABLE `feed_images`
  ADD CONSTRAINT `feed_images_feed_id_foreign` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `feed_likes`
--
ALTER TABLE `feed_likes`
  ADD CONSTRAINT `feed_likes_feed_id_foreign` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `feed_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payout_requests`
--
ALTER TABLE `payout_requests`
  ADD CONSTRAINT `payout_requests_bank_account_id_foreign` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_accounts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reward_histories`
--
ALTER TABLE `reward_histories`
  ADD CONSTRAINT `reward_histories_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reward_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_bank_account_id_foreign` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_accounts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_bank_transfer_receipts`
--
ALTER TABLE `user_bank_transfer_receipts`
  ADD CONSTRAINT `user_bank_transfer_receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_health_conditions`
--
ALTER TABLE `user_health_conditions`
  ADD CONSTRAINT `user_health_conditions_health_condition_id_foreign` FOREIGN KEY (`health_condition_id`) REFERENCES `health_conditions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_health_conditions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_level_histories`
--
ALTER TABLE `user_level_histories`
  ADD CONSTRAINT `user_level_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_trees`
--
ALTER TABLE `user_trees`
  ADD CONSTRAINT `user_trees_child_user_id_foreign` FOREIGN KEY (`child_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_trees_parent_user_id_foreign` FOREIGN KEY (`parent_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_trees_referred_by_foreign` FOREIGN KEY (`referred_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
