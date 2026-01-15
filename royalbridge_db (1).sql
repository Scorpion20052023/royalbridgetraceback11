-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2026 at 05:34 PM
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
-- Database: `royalbridge_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_uploads`
--

CREATE TABLE `daily_uploads` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_uploads`
--

INSERT INTO `daily_uploads` (`id`, `file_name`, `uploaded_by`, `created_at`) VALUES
(5, 'daily_1766087616.png', 14, '2025-12-18 19:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `rate` decimal(5,2) NOT NULL,
  `duration_days` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('active','completed') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`id`, `user_id`, `amount`, `rate`, `duration_days`, `start_date`, `end_date`, `status`, `created_at`) VALUES
(1, 7, 1.00, 1.30, 0, '2025-12-06', '2025-12-07', 'completed', '2025-12-06 07:30:33'),
(2, 7, 1.00, 1.30, 0, '2025-12-06', '2025-12-07', 'completed', '2025-12-06 07:56:45'),
(3, 7, 1.00, 1.30, 1, '2025-12-06', '2025-12-07', 'completed', '2025-12-06 13:13:53'),
(4, 7, 1.00, 1.30, 1, '2025-12-06', '2025-12-07', 'completed', '2025-12-06 14:02:28'),
(5, 7, 1.00, 1.30, 1, '2025-12-06', '2025-12-07', 'completed', '2025-12-06 19:33:48'),
(6, 7, 1.00, 1.30, 1, '2025-12-08', '2025-12-09', 'completed', '2025-12-08 07:32:51'),
(7, 7, 1.00, 1.30, 1, '2025-12-08', '2025-12-09', 'completed', '2025-12-08 08:41:23'),
(8, 7, 1.00, 1.50, 2, '2025-12-08', '2025-12-10', 'completed', '2025-12-08 08:43:16'),
(9, 7, 1.00, 1.30, 1, '2025-12-08', '2025-12-09', 'completed', '2025-12-08 09:37:54'),
(10, 7, 1.00, 1.30, 1, '2025-12-08', '2025-12-09', 'completed', '2025-12-08 10:00:44'),
(11, 7, 1.00, 1.30, 1, '2025-12-08', '2025-12-09', 'completed', '2025-12-08 10:07:53'),
(12, 7, 1.00, 1.30, 1, '2025-12-08', '2025-12-09', 'completed', '2025-12-08 15:48:20'),
(13, 7, 100.00, 1.30, 1, '2025-12-13', '2025-12-14', '', '2025-12-13 10:14:51'),
(14, 7, 200.00, 1.50, 2, '2025-12-13', '2025-12-15', '', '2025-12-13 11:45:36'),
(15, 7, 1000.00, 1.30, 1, '2025-12-14', '2025-12-15', '', '2025-12-13 22:32:05'),
(16, 7, 1000.00, 1.30, 1, '2025-12-14', '2025-12-15', '', '2025-12-13 22:37:56'),
(17, 7, 1000.00, 1.50, 2, '2025-12-14', '2025-12-16', '', '2025-12-13 22:38:32'),
(18, 7, 1000.00, 1.30, 1, '2025-12-14', '2025-12-15', '', '2025-12-13 22:43:13'),
(19, 7, 1000.00, 1.00, 1, '2025-12-14', '2025-12-15', '', '2025-12-13 22:53:27'),
(20, 7, 1000.00, 1.30, 1, '2025-12-14', '2025-12-15', '', '2025-12-13 23:07:55'),
(21, 7, 1000.00, 1.85, 5, '2025-12-14', '2025-12-19', '', '2025-12-13 23:08:41'),
(24, 7, 1000.00, 1.30, 1, '2025-12-16', '2025-12-17', '', '2025-12-16 01:14:43'),
(25, 7, 3000.00, 1.85, 5, '2025-12-16', '2025-12-21', '', '2025-12-16 01:22:32'),
(26, 7, 1000.00, 1.30, 1, '2025-12-16', '2025-12-17', '', '2025-12-16 01:39:50'),
(27, 14, 1000.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 11:15:24'),
(28, 14, 2000.00, 1.50, 2, '2025-12-17', '2025-12-19', '', '2025-12-17 11:15:36'),
(29, 12, 2500.00, 1.50, 2, '2025-12-17', '2025-12-19', '', '2025-12-17 12:58:13'),
(30, 7, 1500.00, 1.50, 2, '2025-12-17', '2025-12-19', '', '2025-12-17 13:22:15'),
(31, 7, 1000.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 13:41:50'),
(32, 7, 1000.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 13:56:08'),
(33, 7, 1200.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 14:03:31'),
(34, 7, 1200.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 14:08:32'),
(35, 7, 1300.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 14:13:53'),
(36, 7, 1360.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 14:14:30'),
(37, 7, 1350.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 14:56:04'),
(38, 7, 1000.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 15:04:22'),
(39, 7, 1230.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 16:25:59'),
(40, 7, 1250.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 16:58:36'),
(41, 7, 1340.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 16:58:57'),
(42, 6, 1000.00, 1.30, 1, '2025-12-17', '2025-12-18', '', '2025-12-17 20:49:30'),
(43, 6, 1350.00, 1.30, 1, '2025-12-18', '2025-12-19', 'active', '2025-12-17 21:07:00'),
(44, 6, 2000.00, 1.30, 1, '2025-12-18', '2025-12-19', 'active', '2025-12-17 21:31:20'),
(45, 14, 1000.00, 1.30, 1, '2025-12-18', '2025-12-19', '', '2025-12-17 22:25:18'),
(46, 14, 1000.00, 1.30, 1, '2025-12-18', '2025-12-19', '', '2025-12-17 22:36:04'),
(47, 14, 1200.00, 1.30, 1, '2025-12-18', '2025-12-19', '', '2025-12-17 22:51:30'),
(48, 7, 1300.00, 1.30, 1, '2025-12-18', '2025-12-19', '', '2025-12-18 11:05:39'),
(49, 14, 1120.00, 1.30, 1, '2025-12-18', '2025-12-19', '', '2025-12-18 20:21:46'),
(50, 7, 1250.00, 1.50, 2, '2025-12-19', '2025-12-21', '', '2025-12-19 14:50:50'),
(51, 7, 1250.00, 1.50, 2, '2025-12-19', '2025-12-21', '', '2025-12-19 14:53:52'),
(52, 7, 1250.00, 1.50, 2, '2025-12-19', '2025-12-21', '', '2025-12-19 15:38:40'),
(53, 7, 1100.00, 1.30, 1, '2026-01-14', '2026-01-15', '', '2026-01-14 09:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `matured_investments`
--

CREATE TABLE `matured_investments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `investment_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `duration_days` int(11) NOT NULL,
  `matured_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matured_investments`
--

INSERT INTO `matured_investments` (`id`, `user_id`, `investment_id`, `amount`, `duration_days`, `matured_at`) VALUES
(1, 7, 26, 1300.00, 1, '2025-12-17 11:01:22'),
(2, 6, 42, 1300.00, 1, '2025-12-17 21:00:05'),
(3, 7, 31, 1300.00, 1, '2025-12-17 22:11:02'),
(4, 7, 32, 1300.00, 1, '2025-12-17 22:11:02'),
(5, 7, 33, 1560.00, 1, '2025-12-17 22:11:02'),
(6, 7, 34, 1560.00, 1, '2025-12-17 22:11:02'),
(7, 7, 35, 1690.00, 1, '2025-12-17 22:11:02'),
(8, 7, 36, 1768.00, 1, '2025-12-17 22:11:02'),
(9, 7, 37, 1755.00, 1, '2025-12-17 22:11:02'),
(10, 7, 38, 1300.00, 1, '2025-12-17 22:11:02'),
(11, 7, 39, 1599.00, 1, '2025-12-17 22:11:02'),
(12, 7, 40, 1625.00, 1, '2025-12-17 22:11:02'),
(13, 7, 41, 1742.00, 1, '2025-12-17 22:11:03'),
(14, 14, 27, 1300.00, 1, '2025-12-17 22:24:44'),
(15, 7, 21, 1850.00, 5, '2025-12-18 21:05:07'),
(16, 7, 30, 2250.00, 2, '2025-12-18 21:05:07'),
(17, 7, 48, 1690.00, 1, '2025-12-18 21:05:07'),
(18, 14, 28, 3000.00, 2, '2025-12-18 21:29:42'),
(19, 14, 45, 1300.00, 1, '2025-12-18 21:29:42'),
(20, 14, 46, 1300.00, 1, '2025-12-18 21:29:42'),
(21, 14, 47, 1560.00, 1, '2025-12-18 21:29:42'),
(22, 14, 49, 1456.00, 1, '2025-12-18 21:29:42'),
(23, 12, 29, 3750.00, 2, '2025-12-20 11:25:48'),
(24, 7, 25, 5550.00, 5, '2026-01-11 12:55:37'),
(25, 7, 50, 1875.00, 2, '2026-01-11 12:55:37'),
(26, 7, 51, 1875.00, 2, '2026-01-11 12:55:37'),
(27, 7, 52, 1875.00, 2, '2026-01-11 12:55:37'),
(28, 7, 53, 1430.00, 1, '2026-01-15 10:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_logs`
--

CREATE TABLE `mpesa_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `mpesa_ref` varchar(20) DEFAULT NULL,
  `raw_response` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_requests`
--

CREATE TABLE `mpesa_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `merchant_request_id` varchar(64) DEFAULT NULL,
  `checkout_request_id` varchar(64) DEFAULT NULL,
  `status` enum('PENDING','SUCCESS','FAILED') DEFAULT 'PENDING',
  `result_desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mpesa_requests`
--

INSERT INTO `mpesa_requests` (`id`, `user_id`, `phone`, `amount`, `merchant_request_id`, `checkout_request_id`, `status`, `result_desc`, `created_at`) VALUES
(1, 7, '0707746815', 100, NULL, NULL, 'PENDING', NULL, '2025-11-22 05:47:54'),
(2, 7, '0707746815', 100, '3f56-4b46-be17-a8e8f5e0447b24869', 'ws_CO_22112025100751398707746815', 'FAILED', 'The balance is insufficient for the transaction.', '2025-11-22 07:07:51'),
(3, 7, '0707746815', 10, '3e6b-4049-8062-90e8d8a090e73642', 'ws_CO_22112025100948407707746815', 'FAILED', 'Request Cancelled by user.', '2025-11-22 07:09:48'),
(4, 7, '0724070500', 50, 'e076-42ee-9eee-3d5e8c3e7c1c1379', 'ws_CO_22112025101217895724070500', 'FAILED', 'Request Cancelled by user.', '2025-11-22 07:12:18'),
(5, 7, '0724070500', 1000, 'd38e-47b6-a311-2b723935bf103181', 'ws_CO_22112025101351987724070500', 'PENDING', NULL, '2025-11-22 07:13:52'),
(6, 7, '0746280942', 20, '24bd-49d7-97db-56c7d3e91a631778', 'ws_CO_23112025014015838746280942', 'FAILED', 'No response from user.', '2025-11-22 22:40:15'),
(7, 7, '0707746815', 5, '3e6b-4049-8062-90e8d8a090e714147', 'ws_CO_23112025015800679707746815', 'SUCCESS', 'The service request is processed successfully.', '2025-11-22 22:58:00'),
(8, 10, '0708724821', 5, 'ab5a-4ac7-bf19-3e70518a4fe83670', 'ws_CO_23112025213509537708724821', 'SUCCESS', 'The service request is processed successfully.', '2025-11-23 18:35:09'),
(9, 7, '0792607527', 17777, '9d7f-4683-807f-73e1b18b22f49832', 'ws_CO_24112025113618985792607527', 'FAILED', 'Request Cancelled by user.', '2025-11-24 08:36:17'),
(10, 7, '0707746815', 10, '47bf-4fb0-8f1d-0bc74d8bb44036605', 'ws_CO_26112025044917936707746815', 'SUCCESS', 'The service request is processed successfully.', '2025-11-26 01:49:17'),
(11, 7, '0746280942', 1, '3a80-4dc9-b03e-f38e45b5117d6441', 'ws_CO_26112025062922892746280942', 'SUCCESS', 'The service request is processed successfully.', '2025-11-26 03:29:24'),
(12, 7, '0746280942', 1, 'f377-4b34-bd59-a3500cebc5786284', 'ws_CO_26112025065650000746280942', 'SUCCESS', 'The service request is processed successfully.', '2025-11-26 03:56:49'),
(13, 7, '0746280942', 1, 'f377-4b34-bd59-a3500cebc5786689', 'ws_CO_26112025073233725746280942', 'SUCCESS', 'The service request is processed successfully.', '2025-11-26 04:32:33'),
(14, 7, '0746280942', 1, 'f377-4b34-bd59-a3500cebc5786965', 'ws_CO_26112025075626041746280942', 'SUCCESS', 'The service request is processed successfully.', '2025-11-26 04:56:25'),
(15, 7, '0707746815', 1, 'e263-4700-9883-644fd9cb0f481883', 'ws_CO_27112025071035741707746815', 'PENDING', NULL, '2025-11-27 04:10:36'),
(16, 7, '0707746815', 1, '65c1-4675-96a1-ce3150ced5c66873', 'ws_CO_27112025073828584707746815', 'PENDING', NULL, '2025-11-27 04:38:29'),
(17, 7, '0707746815', 1, 'd4b5-41f0-b096-696b4cc638a83582', 'ws_CO_27112025074637722707746815', 'SUCCESS', 'The service request is processed successfully.', '2025-11-27 04:46:38'),
(18, 7, '0707746815', 1, 'd4b5-41f0-b096-696b4cc638a83593', 'ws_CO_27112025074729956707746815', 'FAILED', 'Rule limited.', '2025-11-27 04:47:30'),
(19, 7, '0713382167', 1, '8194-4ed7-b711-b21aa4f7e76512372', 'ws_CO_27112025165420868713382167', 'SUCCESS', 'The service request is processed successfully.', '2025-11-27 13:54:20'),
(20, 7, '0707746815', 1, '1d8d-4478-a27c-7a966831b1d916478', 'ws_CO_28112025072036155707746815', 'FAILED', 'The balance is insufficient for the transaction.', '2025-11-28 04:20:35'),
(21, 6, '0707746815', 1, '964c-4954-ad6f-9d91d6cc6e8616579', 'ws_CO_28112025200932910707746815', 'SUCCESS', 'The service request is processed successfully.', '2025-11-28 17:09:33'),
(22, 7, '0707746815', 10, 'bb14-4675-a9e7-fe3917fec9209192', 'ws_CO_13122025131632532707746815', 'PENDING', NULL, '2025-12-13 10:16:35'),
(23, 7, '0707746815', 15, 'd4b7-41bb-bb8a-cc6ec5ea8bfa15075', 'ws_CO_13122025132550631707746815', 'PENDING', NULL, '2025-12-13 10:25:53'),
(24, 7, '0707746815', 15, 'bb14-4675-a9e7-fe3917fec9209300', 'ws_CO_13122025133034567707746815', 'PENDING', NULL, '2025-12-13 10:30:38'),
(25, 7, '0707746815', 15, '8314-4da9-b471-0322c4e1c3854074', 'ws_CO_14122025013250515707746815', 'PENDING', NULL, '2025-12-13 22:32:53'),
(26, 7, '0707746815', 10, '8314-4da9-b471-0322c4e1c3854087', 'ws_CO_14122025013346214707746815', 'PENDING', NULL, '2025-12-13 22:33:49'),
(27, 7, '0707746815', 10, 'c6d9-42e5-8388-0da36be9c57a269', 'ws_CO_14122025144652932707746815', 'PENDING', NULL, '2025-12-14 11:46:55'),
(28, 7, '0746280942', 10, '5859-47c2-9623-65a1da3a10bb77145', 'ws_CO_14122025144659944746280942', 'PENDING', NULL, '2025-12-14 11:47:02'),
(29, 7, '0746280942', 10, 'c6d9-42e5-8388-0da36be9c57a1586', 'ws_CO_14122025181746542746280942', 'PENDING', NULL, '2025-12-14 15:17:52'),
(30, 7, '0746280942', 10, NULL, NULL, 'PENDING', NULL, '2025-12-14 15:17:56'),
(31, 7, '0707746815', 10, 'Unknown', 'PAYHERO', 'PENDING', NULL, '2026-01-11 14:04:50'),
(32, 7, '0707746815', 10, 'Unknown', 'PAYHERO', 'PENDING', NULL, '2026-01-11 14:07:06'),
(33, 7, '0707746815', 5, 'a513-459c-878b-42bce474ea79577483', 'PAYHERO', 'PENDING', NULL, '2026-01-11 14:44:00'),
(34, 7, '0702749332', 5, '4478-4c5f-a7db-cb8c5ef7540a2153402', 'PAYHERO', 'PENDING', NULL, '2026-01-11 14:49:03'),
(35, 7, '0713382167', 10, '9a7a-428c-9f96-2533a83f54c236380', 'PAYHERO', 'PENDING', NULL, '2026-01-14 09:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `expires_at`) VALUES
(11, 'cyraxpunisher@gmail.com', 'd3aee89f37081c50459bbbdf51da964f4edaa23197b658aa7c70c75431b946cb', '2025-12-20 16:27:36', '2025-12-20 17:27:36'),
(12, 'cyrax6ix9ine@gmail.com', '164cf835cc021eb51dd00000cf80ff04803c78444a197b1fb55a0af364716c0e', '2025-12-20 16:28:27', '2025-12-20 17:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `referrer_id` int(11) NOT NULL,
  `referred_user_id` int(11) NOT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `referrer_id`, `referred_user_id`, `status`, `created_at`) VALUES
(1, 7, 15, 'pending', '2025-12-18 21:10:32'),
(2, 7, 17, 'pending', '2025-12-18 22:55:25'),
(3, 7, 18, 'pending', '2025-12-19 11:53:29'),
(4, 14, 19, 'pending', '2025-12-20 05:42:57'),
(5, 7, 20, 'pending', '2025-12-20 05:56:26'),
(7, 7, 24, 'pending', '2025-12-20 18:34:15'),
(8, 7, 25, 'pending', '2025-12-20 19:13:50'),
(16, 7, 26, 'pending', '2026-01-14 14:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` enum('deposit','investment','whatsapp','cashback','aviator','forex','affiliate','withdrawal','service_purchase','investment_principal','investment_return','token_purchase') DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `method` varchar(50) DEFAULT NULL,
  `status` enum('pending','success','failed','confirmed','matured') NOT NULL DEFAULT 'pending',
  `mpesa_ref` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `category`, `amount`, `views`, `method`, `status`, `mpesa_ref`, `description`, `created_at`) VALUES
(1, 7, 'deposit', 10.00, 0, 'mpesa', 'success', 'TKQO6B6CQT', NULL, '2025-11-26 01:49:39'),
(2, 7, 'deposit', 1.00, 0, 'mpesa', 'success', 'TKQ0HB5MJV', NULL, '2025-11-26 03:29:30'),
(3, 7, 'deposit', 1.00, 0, 'mpesa', 'success', 'TKQ0HB5JT0', NULL, '2025-11-26 03:57:02'),
(4, 7, 'deposit', 1.00, 0, 'mpesa', 'success', 'TKQ0HB5LNF', NULL, '2025-11-26 04:32:44'),
(5, 7, 'deposit', 1.00, 0, 'mpesa', 'success', 'TKQ0HB5NCF', NULL, '2025-11-26 04:56:52'),
(6, 7, 'deposit', 1.00, 0, 'mpesa', 'success', 'TKRO6B9QSH', NULL, '2025-11-27 04:46:55'),
(7, 7, 'deposit', 1.00, 0, 'mpesa', 'success', 'TKRNPBBWUA', NULL, '2025-11-27 13:54:32'),
(8, 6, 'deposit', 1.00, 0, 'mpesa', 'success', 'TKSO6BFE68', NULL, '2025-11-28 17:09:57'),
(9, 7, 'investment', 1.00, 0, 'system', 'pending', '1-day', 'Investment for 1 days at rate 1.3', '2025-12-06 07:30:33'),
(10, 7, 'investment', 1.00, 0, 'system', 'pending', '1-day', 'Investment for 1 days at rate 1.3', '2025-12-06 07:56:45'),
(11, 7, 'investment', 1.00, 0, 'system', 'pending', '1-day', 'Investment for 1 days at rate 1.3', '2025-12-08 10:00:44'),
(12, 7, 'investment', 1.00, 0, 'system', 'pending', '1-day', 'Investment for 1 days at rate 1.3', '2025-12-08 10:07:53'),
(13, 7, 'investment', 1.00, 0, 'system', 'pending', '1-day', 'Investment for 1 days at rate 1.3', '2025-12-08 15:48:20'),
(14, 7, '', 1.00, 0, 'system', 'success', NULL, 'Return from 1-day investment started on 2025-12-08', '2025-12-08 21:04:29'),
(15, 7, '', 1.00, 0, 'system', 'success', NULL, 'Return from 1-day investment started on 2025-12-08', '2025-12-08 21:04:29'),
(16, 7, '', 1.00, 0, 'system', 'success', NULL, 'Return from 1-day investment started on 2025-12-08', '2025-12-08 21:04:29'),
(17, 7, '', 1.00, 0, 'system', 'success', NULL, 'Return from 1-day investment started on 2025-12-08', '2025-12-08 21:04:29'),
(18, 7, '', 1.00, 0, 'system', 'success', NULL, 'Return from 1-day investment started on 2025-12-08', '2025-12-08 21:04:29'),
(19, 7, '', 1.00, 0, 'system', 'success', NULL, 'Return from 1-day investment started on 2025-12-08', '2025-12-08 21:04:29'),
(22, 7, '', 1.00, 0, 'system', 'success', NULL, 'Return from 2-day investment started on 2025-12-08', '2025-12-10 08:20:25'),
(23, 7, 'whatsapp', 1500.00, 10, 'system', 'success', NULL, 'Earned 1500 KES from WhatsApp upload (10 views)', '2025-12-10 11:45:27'),
(24, 7, 'whatsapp', 1500.00, 10, 'system', 'success', NULL, 'Earned 1500 KES from WhatsApp upload (10 views)', '2025-12-10 11:50:32'),
(25, 7, 'investment', 100.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 1 days at rate 1.3', '2025-12-13 10:14:51'),
(26, 7, 'whatsapp', 3000.00, 20, 'system', 'success', NULL, 'Earned 3000 KES from WhatsApp upload (20 views)', '2025-12-13 10:23:49'),
(27, 7, 'investment', 200.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 2 days at rate 1.5', '2025-12-13 11:45:36'),
(28, 7, 'investment', 100.00, 0, 'system', 'success', '1-day', 'Return from 1-day investment started on 2025-12-13', '2025-12-13 21:17:40'),
(29, 7, 'investment', 1000.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 1 days at rate 1300', '2025-12-13 22:32:05'),
(30, 7, 'investment', 1000.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 1 days at rate 1.3', '2025-12-13 22:37:56'),
(31, 7, 'investment', 1000.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 2 days at rate 1.5', '2025-12-13 22:38:32'),
(32, 7, 'investment', 1000.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 1 days at rate 1.3', '2025-12-13 22:43:13'),
(33, 7, 'investment', 1000.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 1 days at rate 1.3', '2025-12-13 22:53:27'),
(34, 7, 'investment', 1000.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 1 days at rate 1.3', '2025-12-13 23:07:55'),
(35, 7, 'investment', 1000.00, 0, 'system', 'pending', 'Confirmed', 'Investment for 5 days at rate 1.85', '2025-12-13 23:08:41'),
(36, 7, 'whatsapp', 1800.00, 12, 'system', 'success', NULL, 'Earned 1800 KES from WhatsApp upload (12 views)', '2025-12-14 00:02:16'),
(37, 7, 'whatsapp', 1200.00, 8, 'system', 'success', NULL, 'Earned 1200 KES from WhatsApp upload (8 views)', '2025-12-14 17:14:47'),
(38, 14, 'whatsapp', 18000.00, 120, 'system', 'success', NULL, 'Earned 18000 KES from WhatsApp upload (120 views)', '2025-12-14 23:41:27'),
(39, 14, 'whatsapp', 18000.00, 120, 'system', 'success', NULL, 'Earned 18000 KES from WhatsApp upload (120 views)', '2025-12-14 23:42:56'),
(40, 14, 'whatsapp', 2400.00, 16, 'system', 'success', NULL, 'Earned 2400 KES from WhatsApp upload (16 views)', '2025-12-15 23:15:55'),
(41, 14, 'whatsapp', 2100.00, 14, 'system', 'success', NULL, 'Earned 2100 KES from WhatsApp upload (14 views)', '2025-12-16 00:46:23'),
(42, 14, 'whatsapp', 2100.00, 14, 'system', 'success', NULL, 'Earned 2100 KES from WhatsApp upload (14 views)', '2025-12-16 00:51:40'),
(43, 7, 'whatsapp', 2100.00, 14, 'system', 'success', NULL, 'Earned 2100 KES from WhatsApp upload (14 views)', '2025-12-16 00:53:28'),
(44, 7, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-16 01:14:43'),
(45, 7, 'investment', 1000.00, 0, 'system', 'success', '1-day', 'Investment for 1 days at rate 1.3', '2025-12-16 01:14:43'),
(46, 7, 'investment', 3000.00, 0, 'system', 'success', '5-day', NULL, '2025-12-16 01:22:32'),
(47, 7, 'investment', 3000.00, 0, 'system', 'success', '5-day', 'Investment for 5 days at rate 1.85', '2025-12-16 01:22:32'),
(48, 7, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-16 01:39:50'),
(49, 7, 'investment', 1000.00, 0, 'system', 'success', '1-day', 'Investment for 1 days at rate 1.3', '2025-12-16 01:39:50'),
(50, 7, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 11:01:22'),
(51, 7, 'investment', 1300.00, 0, 'system', 'success', '1-day', 'Return from 1-day investment started on 2025-12-16', '2025-12-17 11:01:22'),
(52, 14, 'whatsapp', 1650.00, 11, 'system', 'success', NULL, 'Earned 1650 KES from WhatsApp upload (11 views)', '2025-12-17 11:12:19'),
(53, 14, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 11:15:24'),
(54, 14, 'investment', 1000.00, 0, 'system', 'success', '1-day', 'Investment for 1 days at rate 1.3', '2025-12-17 11:15:24'),
(55, 14, 'investment', 2000.00, 0, 'system', 'success', '2-day', NULL, '2025-12-17 11:15:36'),
(56, 14, 'investment', 2000.00, 0, 'system', 'success', '2-day', 'Investment for 2 days at rate 1.5', '2025-12-17 11:15:36'),
(57, 7, 'service_purchase', 1000.00, 0, 'system', 'success', 'PKG_PURCHASE', 'Purchased package: Elite Membership', '2025-12-17 11:51:12'),
(58, 14, 'service_purchase', 1000.00, 0, 'system', 'success', 'PKG_PURCHASE', 'Purchased package: Elite Membership', '2025-12-17 12:03:36'),
(59, 7, 'service_purchase', 5000.00, 0, 'system', 'success', 'Grand Membership', 'Purchased package: Grand Membership', '2025-12-17 12:37:32'),
(60, 14, 'service_purchase', 2500.00, 0, 'system', 'success', 'Prestige Membership', 'Purchased package: Prestige Membership', '2025-12-17 12:46:31'),
(61, 12, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-17 12:57:14'),
(62, 12, 'whatsapp', 1500.00, 10, 'system', 'success', NULL, 'Earned 1500 KES from WhatsApp upload (10 views)', '2025-12-17 12:57:49'),
(63, 12, 'investment', 2500.00, 0, 'system', 'success', '2-day', NULL, '2025-12-17 12:58:13'),
(64, 12, 'investment', 2500.00, 0, 'system', 'success', '2-day', 'Investment for 2 days at rate 1.5', '2025-12-17 12:58:13'),
(65, 7, 'investment', 1500.00, 0, 'system', 'success', '2-day', NULL, '2025-12-17 13:22:15'),
(66, 7, 'investment', 1500.00, 0, 'system', 'success', '2-day', 'Investment for 2 days at rate 1.5', '2025-12-17 13:22:15'),
(67, 7, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 13:41:50'),
(68, 7, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 13:56:08'),
(69, 7, 'investment', 1200.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 14:03:31'),
(70, 7, 'investment', 1200.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 14:08:32'),
(71, 7, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 14:13:53'),
(72, 7, 'investment', 1360.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 14:14:30'),
(73, 7, 'whatsapp', 1650.00, 11, 'system', 'success', NULL, 'Earned 1650 KES from WhatsApp upload (11 views)', '2025-12-17 14:41:47'),
(74, 7, 'investment', 1350.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 14:56:04'),
(75, 7, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 15:04:22'),
(76, 7, 'investment', 1230.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 16:25:59'),
(77, 14, 'investment', 100.00, 0, 'system', 'success', '1-day-test', NULL, '2025-12-17 16:51:20'),
(78, 14, 'investment', 100.00, 0, 'system', 'success', '1-day-test', NULL, '2025-12-17 16:55:27'),
(79, 7, 'investment', 1250.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 16:58:36'),
(80, 7, 'investment', 1340.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 16:58:57'),
(81, 12, 'service_purchase', 2500.00, 0, 'system', 'success', 'Prestige Membership', 'Purchased package: Prestige Membership', '2025-12-17 20:00:50'),
(82, 12, 'service_purchase', 3500.00, 0, 'system', 'success', 'Deluxe Membership', 'Purchased package: Deluxe Membership', '2025-12-17 20:22:03'),
(83, 12, 'cashback', 7000.00, 0, 'system', 'success', 'Cashback for Deluxe Membership', NULL, '2025-12-17 20:22:03'),
(84, 14, 'service_purchase', 3500.00, 0, 'system', 'success', 'Deluxe Membership', 'Purchased package: Deluxe Membership', '2025-12-17 20:44:39'),
(85, 14, 'cashback', 7000.00, 0, 'system', 'success', 'Deluxe Membership', NULL, '2025-12-17 20:44:39'),
(86, 6, 'whatsapp', 18450.00, 123, 'system', 'success', NULL, 'Earned 18450 KES from WhatsApp upload (123 views)', '2025-12-17 20:48:18'),
(87, 6, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 20:49:30'),
(88, 6, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 21:00:05'),
(89, 6, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-17 21:06:13'),
(90, 6, 'cashback', 2000.00, 0, 'system', 'success', 'Elite Membership', NULL, '2025-12-17 21:06:13'),
(91, 6, 'investment', 1350.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 21:07:00'),
(92, 6, 'whatsapp', 1800.00, 12, 'system', 'success', NULL, 'Earned 1800 KES from WhatsApp upload (12 views)', '2025-12-17 21:07:33'),
(93, 6, 'service_purchase', 3500.00, 0, 'system', 'success', 'Deluxe Membership', 'Purchased package: Deluxe Membership', '2025-12-17 21:30:59'),
(94, 6, 'cashback', 7000.00, 0, 'system', 'success', 'Deluxe Membership', NULL, '2025-12-17 21:30:59'),
(95, 6, 'investment', 2000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 21:31:20'),
(96, 6, 'aviator', -5000.00, 0, 'system', 'success', 'Aviator Bot Purchase', NULL, '2025-12-17 21:31:45'),
(97, 6, 'forex', -5000.00, 0, 'system', 'success', 'Forex Signals Purchase', NULL, '2025-12-17 21:34:07'),
(98, 7, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(99, 7, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(100, 7, 'investment', 1560.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(101, 7, 'investment', 1560.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(102, 7, 'investment', 1690.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(103, 7, 'investment', 1768.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(104, 7, 'investment', 1755.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(105, 7, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(106, 7, 'investment', 1599.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(107, 7, 'investment', 1625.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:02'),
(108, 7, 'investment', 1742.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:11:03'),
(109, 14, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:24:44'),
(110, 14, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:25:18'),
(111, 14, 'aviator', -5000.00, 0, 'system', 'success', 'Aviator Bot Purchase', NULL, '2025-12-17 22:25:33'),
(112, 14, 'forex', -5000.00, 0, 'system', 'success', 'Forex Signals Purchase', NULL, '2025-12-17 22:25:59'),
(113, 14, 'investment', 1000.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:36:04'),
(114, 14, 'aviator', -5000.00, 0, 'system', 'success', 'Aviator Bot Purchase', NULL, '2025-12-17 22:36:27'),
(115, 14, 'forex', -5000.00, 0, 'system', 'success', 'Forex Signals Purchase', NULL, '2025-12-17 22:36:37'),
(116, 14, 'investment', 1200.00, 0, 'system', 'success', '1-day', NULL, '2025-12-17 22:51:30'),
(117, 14, 'service_purchase', 5000.00, 0, 'system', 'success', 'Grand Membership', 'Purchased package: Grand Membership', '2025-12-17 22:51:43'),
(118, 14, 'cashback', 10000.00, 0, 'system', 'success', 'Grand Membership', NULL, '2025-12-17 22:51:43'),
(119, 14, 'aviator', -5000.00, 0, 'system', 'success', 'Aviator Bot Purchase', NULL, '2025-12-17 22:54:22'),
(120, 7, 'service_purchase', 7500.00, 0, 'system', 'success', 'Credentials Code', 'Purchased package: Credentials Code', '2025-12-17 23:24:10'),
(121, 7, 'service_purchase', 5000.00, 0, 'system', 'success', 'Grand Membership', 'Purchased package: Grand Membership', '2025-12-18 00:17:16'),
(122, 7, 'cashback', 10000.00, 0, 'system', 'success', 'Grand Membership', NULL, '2025-12-18 00:17:16'),
(123, 7, 'token_purchase', -7500.00, 0, 'system', 'success', 'Credentials Code', NULL, '2025-12-18 00:18:06'),
(124, 7, 'token_purchase', -7500.00, 0, 'system', 'success', 'Credentials Code', NULL, '2025-12-18 00:20:59'),
(125, 7, 'token_purchase', -5500.00, 0, 'system', 'success', 'Authorization Code', NULL, '2025-12-18 00:26:57'),
(126, 6, 'token_purchase', -5500.00, 0, 'system', 'success', 'Authorization Code', NULL, '2025-12-18 00:35:27'),
(127, 7, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-18 11:05:39'),
(128, 12, 'aviator', -5000.00, 0, 'system', 'success', 'Aviator Bot Purchase', NULL, '2025-12-18 11:35:57'),
(129, 12, 'forex', -5000.00, 0, 'system', 'success', 'Forex Signals Purchase', NULL, '2025-12-18 11:36:29'),
(130, 12, 'service_purchase', 3500.00, 0, 'system', 'success', 'Deluxe Membership', 'Purchased package: Deluxe Membership', '2025-12-18 11:40:21'),
(131, 12, 'cashback', 7000.00, 0, 'system', 'success', 'Deluxe Membership', NULL, '2025-12-18 11:40:21'),
(132, 7, 'service_purchase', 5000.00, 0, 'system', 'success', 'Grand Membership', 'Purchased package: Grand Membership', '2025-12-18 14:24:18'),
(133, 7, 'cashback', 10000.00, 0, 'system', 'success', 'Grand Membership', NULL, '2025-12-18 14:24:18'),
(134, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 14:24:42'),
(135, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 15:05:18'),
(136, 7, 'token_purchase', -5500.00, 0, 'system', 'success', 'Authorization Code', NULL, '2025-12-18 15:14:18'),
(137, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2025-12-18 15:19:39'),
(138, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 15:23:36'),
(139, 7, 'service_purchase', 3500.00, 0, 'system', 'success', 'Verification Code', 'Purchased package: Verification Code', '2025-12-18 15:23:36'),
(140, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 15:28:32'),
(141, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 15:30:38'),
(142, 7, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-18 19:27:35'),
(143, 7, 'cashback', 2000.00, 0, 'system', 'success', 'Elite Membership', NULL, '2025-12-18 19:27:35'),
(144, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 19:29:42'),
(145, 7, 'whatsapp', 1950.00, 13, 'system', 'success', NULL, 'Earned 1950 KES from WhatsApp upload (13 views)', '2025-12-18 19:45:47'),
(146, 7, 'service_purchase', 3500.00, 0, 'system', 'success', 'Deluxe Membership', 'Purchased package: Deluxe Membership', '2025-12-18 19:49:06'),
(147, 7, 'cashback', 7000.00, 0, 'system', 'success', 'Deluxe Membership', NULL, '2025-12-18 19:49:06'),
(148, 7, 'aviator', -5000.00, 0, 'system', 'success', 'Aviator Bot Purchase', NULL, '2025-12-18 19:49:18'),
(149, 7, 'forex', -5000.00, 0, 'system', 'success', 'Forex Signals Purchase', NULL, '2025-12-18 19:49:34'),
(150, 14, 'token_purchase', -5500.00, 0, 'system', 'success', 'Authorization Code', NULL, '2025-12-18 19:50:27'),
(151, 14, 'service_purchase', 5500.00, 0, 'system', 'success', 'Authorization Code', 'Purchased package: Authorization Code', '2025-12-18 19:50:28'),
(152, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 20:19:02'),
(153, 14, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 20:19:51'),
(154, 14, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-18 20:20:41'),
(155, 14, 'cashback', 2000.00, 0, 'system', 'success', 'Elite Membership', NULL, '2025-12-18 20:20:41'),
(156, 14, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-18 20:20:53'),
(157, 14, 'investment', 1120.00, 0, 'system', 'success', '1-day', NULL, '2025-12-18 20:21:46'),
(158, 14, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2025-12-18 20:24:03'),
(159, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2025-12-18 20:25:03'),
(160, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2025-12-18 20:25:38'),
(161, 7, 'investment', 1850.00, 0, 'system', 'success', '5-day', NULL, '2025-12-18 21:05:07'),
(162, 7, 'investment', 2250.00, 0, 'system', 'success', '2-day', NULL, '2025-12-18 21:05:07'),
(163, 7, 'investment', 1690.00, 0, 'system', 'success', '1-day', NULL, '2025-12-18 21:05:07'),
(164, 15, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-18 21:13:44'),
(165, 15, 'cashback', 2000.00, 0, 'system', 'success', 'Elite Membership', NULL, '2025-12-18 21:13:44'),
(166, 7, 'affiliate', 700.00, 0, 'system', 'success', 'Ref Bonus: Victor', NULL, '2025-12-18 21:13:44'),
(167, 14, 'investment', 3000.00, 0, 'system', 'success', '2-day', NULL, '2025-12-18 21:29:42'),
(168, 14, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-18 21:29:42'),
(169, 14, 'investment', 1300.00, 0, 'system', 'success', '1-day', NULL, '2025-12-18 21:29:42'),
(170, 14, 'investment', 1560.00, 0, 'system', 'success', '1-day', NULL, '2025-12-18 21:29:42'),
(171, 14, 'investment', 1456.00, 0, 'system', 'success', '1-day', NULL, '2025-12-18 21:29:42'),
(172, 17, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-18 23:03:32'),
(173, 17, 'cashback', 2000.00, 0, 'system', 'success', 'Elite Membership', NULL, '2025-12-18 23:03:32'),
(174, 7, 'affiliate', 700.00, 0, 'system', 'success', 'FrankXanatos', NULL, '2025-12-18 23:03:32'),
(175, 18, 'service_purchase', 2500.00, 0, 'system', 'success', 'Prestige Membership', 'Purchased package: Prestige Membership', '2025-12-19 12:11:21'),
(176, 18, 'cashback', 5000.00, 0, 'system', 'success', 'Prestige Membership', NULL, '2025-12-19 12:11:21'),
(177, 7, 'affiliate', 1750.00, 0, 'system', 'success', 'Dereck', NULL, '2025-12-19 12:11:21'),
(178, 7, 'investment', 1250.00, 0, 'system', 'success', '2-day', NULL, '2025-12-19 14:50:50'),
(179, 7, 'investment', 1250.00, 0, 'system', 'success', '2-day', NULL, '2025-12-19 14:53:52'),
(180, 7, 'whatsapp', 1800.00, 12, 'system', 'success', NULL, 'Earned 1800 KES from WhatsApp upload (12 views)', '2025-12-19 14:55:04'),
(181, 7, 'aviator', -5000.00, 0, 'system', 'success', 'Aviator Bot Purchase', NULL, '2025-12-19 14:55:37'),
(182, 7, 'forex', -5000.00, 0, 'system', 'success', 'Forex Signals Purchase', NULL, '2025-12-19 14:56:31'),
(183, 7, 'service_purchase', 5000.00, 0, 'system', 'success', 'Grand Membership', 'Purchased package: Grand Membership', '2025-12-19 14:56:56'),
(184, 7, 'cashback', 10000.00, 0, 'system', 'success', 'Grand Membership', NULL, '2025-12-19 14:56:56'),
(185, 7, 'token_purchase', -7500.00, 0, 'system', 'success', 'Credentials Code', NULL, '2025-12-19 14:57:18'),
(186, 7, 'investment', 1250.00, 0, 'system', 'success', '2-day', NULL, '2025-12-19 15:38:40'),
(187, 7, 'whatsapp', 1500.00, 10, 'system', 'success', NULL, 'Earned 1500 KES from WhatsApp upload (10 views)', '2025-12-19 15:41:36'),
(188, 7, 'aviator', -5000.00, 0, 'system', 'success', 'Aviator Bot Purchase', NULL, '2025-12-19 15:42:10'),
(189, 7, 'forex', -5000.00, 0, 'system', 'success', 'Forex Signals Purchase', NULL, '2025-12-19 15:42:54'),
(190, 7, 'service_purchase', 5000.00, 0, 'system', 'success', 'Grand Membership', 'Purchased package: Grand Membership', '2025-12-19 15:45:27'),
(191, 7, 'cashback', 10000.00, 0, 'system', 'success', 'Grand Membership', NULL, '2025-12-19 15:45:27'),
(192, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2025-12-19 15:45:48'),
(193, 19, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-20 05:45:15'),
(194, 19, 'cashback', 2000.00, 0, 'system', 'success', 'Elite Membership', NULL, '2025-12-20 05:45:15'),
(195, 14, 'affiliate', 700.00, 0, 'system', 'success', 'AlfredFrankie', NULL, '2025-12-20 05:45:15'),
(196, 20, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-20 06:01:10'),
(197, 20, 'cashback', 2000.00, 0, 'system', 'success', 'Elite Membership', NULL, '2025-12-20 06:01:10'),
(198, 7, 'affiliate', 700.00, 0, 'system', 'success', 'Frankie', NULL, '2025-12-20 06:01:10'),
(199, 12, 'investment', 3750.00, 0, 'system', 'success', '2-day', NULL, '2025-12-20 11:25:48'),
(200, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2025-12-20 13:20:23'),
(201, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-20 16:56:26'),
(202, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2025-12-20 16:56:44'),
(203, 7, 'token_purchase', -5500.00, 0, 'system', 'success', 'Authorization Code', NULL, '2025-12-20 17:00:15'),
(204, 24, 'service_purchase', 1000.00, 0, 'system', 'success', 'Elite Membership', 'Purchased package: Elite Membership', '2025-12-20 18:39:26'),
(205, 24, 'cashback', 2000.00, 0, 'system', 'success', 'Elite Membership', NULL, '2025-12-20 18:39:26'),
(206, 7, 'affiliate', 700.00, 0, 'system', 'success', 'Xanatos Reborn', NULL, '2025-12-20 18:39:26'),
(207, 7, 'investment', 5550.00, 0, 'system', 'success', '5-day', NULL, '2026-01-11 12:55:37'),
(208, 7, 'investment', 1875.00, 0, 'system', 'success', '2-day', NULL, '2026-01-11 12:55:37'),
(209, 7, 'investment', 1875.00, 0, 'system', 'success', '2-day', NULL, '2026-01-11 12:55:37'),
(210, 7, 'investment', 1875.00, 0, 'system', 'success', '2-day', NULL, '2026-01-11 12:55:37'),
(211, 7, 'forex', -5000.00, 0, 'system', 'success', 'Forex Signals Purchase', NULL, '2026-01-11 14:53:14'),
(212, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2026-01-12 12:31:51'),
(213, 7, 'investment', 1100.00, 0, 'system', 'success', '1-day', NULL, '2026-01-14 09:16:00'),
(214, 7, 'whatsapp', 1050.00, 7, 'system', 'success', NULL, 'Earned 1050 KES from WhatsApp upload (7 views)', '2026-01-14 09:20:52'),
(215, 7, 'investment', 1430.00, 0, 'system', 'success', '1-day', NULL, '2026-01-15 10:16:01'),
(216, 7, 'token_purchase', -3500.00, 0, 'system', 'success', 'Verification Code', NULL, '2026-01-15 11:11:19'),
(217, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2026-01-15 15:05:18'),
(218, 7, 'withdrawal', -1000.00, 0, 'system', 'success', 'Withdraw from Whatsapp', NULL, '2026-01-15 15:05:41'),
(219, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2026-01-15 16:13:08'),
(220, 7, 'withdrawal', 1000.00, 0, 'system', 'success', 'Whatsapp', NULL, '2026-01-15 16:13:25'),
(221, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2026-01-15 16:15:01'),
(222, 7, 'withdrawal', 1500.00, 0, 'system', 'success', 'Whatsapp', NULL, '2026-01-15 16:15:29'),
(223, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2026-01-15 16:25:18'),
(224, 7, 'token_purchase', -10000.00, 0, 'system', 'success', 'Luxurious Code', NULL, '2026-01-15 16:28:00'),
(225, 7, 'withdrawal', 1200.00, 0, 'system', 'success', 'Whatsapp', NULL, '2026-01-15 16:28:26');

--
-- Triggers `transactions`
--
DELIMITER $$
CREATE TRIGGER `trg_transactions_after_insert_credit` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
  
  IF NEW.category IN ('deposit','affiliate','whatsapp','aviator','forex') 
     AND NEW.status = 'success' THEN
    UPDATE wallets
    SET 
      account_total = account_total + NEW.amount,
      account_balance = account_balance + NEW.amount,
      
      total_deposits = IF(NEW.category='deposit', total_deposits + NEW.amount, total_deposits),
      affiliate_total = IF(NEW.category='affiliate', affiliate_total + NEW.amount, affiliate_total),
      
      whatsapp_balance = IF(NEW.category='whatsapp', whatsapp_balance + NEW.amount, whatsapp_balance)
      
    WHERE user_id = NEW.user_id;
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_transactions_after_insert_withdraw` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
  IF NEW.category = 'withdrawal' AND NEW.status = 'success' THEN
    UPDATE wallets
    SET 
      total_withdrawn = total_withdrawn + NEW.amount,
      account_balance = account_balance - NEW.amount
    WHERE user_id = NEW.user_id;
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `package` varchar(50) DEFAULT 'NO PACKAGE',
  `is_admin` tinyint(1) DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(20) NOT NULL,
  `first_login_shown` tinyint(1) DEFAULT 0,
  `referrer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `package`, `is_admin`, `password`, `created_at`, `phone`, `first_login_shown`, `referrer_id`) VALUES
(6, 'Alfred Frank', 'cyraxpunisher@gmail.com', 'Deluxe Membership', 0, '$2y$10$iPK9qfyKHVcJp3Z610ih9efWo/qnAp6qR4VjPh9H.mM3rYC0kOLaS', '2025-11-18 16:08:27', '0746280942', 1, NULL),
(7, 'GhostFace', 'alvaeuv66@gmail.com', 'Grand Membership', 1, '$2y$10$NQkeC/pva3fOde2hGIiY3uzjoCmjzhehsaJqIKs2.PvLbIa4DcMCm', '2025-11-18 18:12:43', '0707746815', 1, NULL),
(8, 'Franklin', 'cyrax6ix9ine@gmail.com', 'NO PACKAGE', 0, '$2y$10$pcTCdKG7gdO69mINKNGCEeD4tATXUxd0jTPmXmGEg20.PkBXFYCYO', '2025-11-21 00:09:34', '0713382167', 1, NULL),
(9, 'michaelkitheka', 'michaelkitheka@gmail.com', 'NO PACKAGE', 0, '$2y$10$sN09yM/T6b3a5QhGuYoCL.ZztChP/boEHLv5LsRgbs.VsuuHMEHHe', '2025-11-21 01:12:35', '0712345679', 0, NULL),
(10, 'cynish', 'cynthiakingoti@gmail.com', 'NO PACKAGE', 0, '$2y$10$qcHRyYniQlpfTGOmWplemOCID/wZUdzgJzLxOCqx0vbFwWPtdjG2O', '2025-11-23 18:23:30', '0708724821', 1, NULL),
(11, 'Cynthia', 'cynthia@gmail.com', 'NO PACKAGE', 0, '$2y$10$Tl3P4t6Cn65sX1xiYu1v2.Xjt6q0H8QDzoJxT93mutsRq03iy7No.', '2025-11-30 14:29:45', '0737684906', 1, NULL),
(12, 'Alfred', 'cyraxpunishers@gmail.com', 'Deluxe Membership', 0, '$2y$10$/EzK/sZWkUo/5C5ZwibsZeQPCQINwxEdnfr6FB8nK6/z4gZM4uBLu', '2025-12-02 08:28:38', '0700000000', 1, NULL),
(13, 'OchiengFA', 'ochiengfrank@gmail.com', 'NO PACKAGE', 0, '$2y$10$JUZN.mkSS/9Ru3sFZns8ouJdt.Spnoh0qK4Nc6gnKu83ILmwZD0YS', '2025-12-05 10:59:08', '0707746814', 0, NULL),
(14, 'Peter254', 'peter254254@gmail.com', 'Elite Membership', 1, '$2y$10$OVRZAMChQGAUHN0Cq2OrU.pBFXSmOkoiLXy3w9aCreFGRO6pS2CnK', '2025-12-14 22:30:16', '0712345678', 1, NULL),
(15, 'Victor', 'victorwafula@gmail.com', 'Elite Membership', 0, '$2y$10$R52H2n4hIodP/tXIvmUkuOmr3Fu6.2iGVCP6/1tMEBOinAGvhwRei', '2025-12-18 21:10:32', '0724070500', 1, 7),
(16, 'XanatosFrank', 'xanatos@gmail.com', 'NO PACKAGE', 0, '$2y$10$ShWPfTD34nY6U5OmCzYVZOVA7W44GG/SvsaihK78dLTbCNEwWUGCG', '2025-12-18 22:25:47', '0712345687', 1, NULL),
(17, 'FrankXanatos', 'frankxanatos@gmail.com', 'Elite Membership', 0, '$2y$10$wNWOOwdXHKRdJuZWRhfohuWZSGNm417vli47atsDD5IhnXxlHNtLa', '2025-12-18 22:55:25', '0732145678', 1, 7),
(18, 'Dereck', 'dereckjustine@gmail.com', 'Prestige Membership', 0, '$2y$10$IYE5siBiRxf5a.KejDd0iuHDxFqI.mnsr7SGbm1fia5QlRwpHaXYK', '2025-12-19 11:53:29', '0787654321', 1, 7),
(19, 'AlfredFrankie', 'frankie@gmail.com', 'Elite Membership', 1, '$2y$10$K2nA7YX/NVHaF1zDqmu3ke69LAX6mZHZpH65VPxf7bQDRvlqMjlg2', '2025-12-20 05:42:57', '0798765432', 1, 14),
(20, 'Frankie', 'frankiee@gmail.com', 'Elite Membership', 0, '$2y$10$K6z1HOB.lYcREiBxvakM..CS24MbOD5gEyXyTpcHwXPA02DmHIitC', '2025-12-20 05:56:26', '0712543678', 1, 7),
(24, 'Xanatos Reborn', 'xanatosr@gmail.com', 'Elite Membership', 0, '$2y$10$cIUE0ToHd.5zs2hK58MRRe.mNSkbu4jfgvVCw6.YhQwrphlSVndDC', '2025-12-20 18:34:15', '0798765423', 1, 7),
(25, 'Vickie', 'sikukuvictor469@gmail.com', 'NO PACKAGE', 0, '$2y$10$mshfG11OD.SvmTLBTT1pQOKkf8oNc/8ciukcE4HtsLiJSDcxjgTHG', '2025-12-20 19:13:50', '0724070501', 1, 7),
(26, 'Kraken', 'krakencyras@gmail.com', 'NO PACKAGE', 0, '$2y$10$HdsHpHc9is5o4UUwIpCJYeGUHsrKcacIOEqXA7PYqVN3x9XcswaVC', '2026-01-14 14:57:46', '0713382169', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deposit_balance` decimal(12,2) DEFAULT 0.00,
  `total_deposits` decimal(12,2) DEFAULT 0.00,
  `invested_capital` decimal(12,2) DEFAULT 0.00,
  `affiliate_balance` decimal(12,2) DEFAULT 0.00,
  `affiliate_total` decimal(12,2) DEFAULT 0.00,
  `whatsapp_balance` decimal(12,2) DEFAULT 0.00,
  `account_balance` decimal(12,2) DEFAULT 0.00,
  `account_total` decimal(12,2) DEFAULT 0.00,
  `cashback_balance` decimal(12,2) DEFAULT 0.00,
  `total_withdrawn` decimal(12,2) DEFAULT 0.00,
  `cashback_withdrawn` decimal(12,2) DEFAULT 0.00,
  `whatsapp_withdrawn` decimal(12,2) DEFAULT 0.00,
  `affiliate_withdrawn` decimal(12,2) DEFAULT 0.00,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `deposit_balance`, `total_deposits`, `invested_capital`, `affiliate_balance`, `affiliate_total`, `whatsapp_balance`, `account_balance`, `account_total`, `cashback_balance`, `total_withdrawn`, `cashback_withdrawn`, `whatsapp_withdrawn`, `affiliate_withdrawn`, `updated_at`) VALUES
(1, 7, 1786150.00, 2118016.00, 53548.60, 4550.00, 4550.00, 14400.00, 1907648.60, 5416405.00, 49000.00, 5400.00, 0.00, 3700.00, 0.00, '2026-01-15 16:28:26'),
(2, 7, 1786150.00, 2118016.00, 53548.60, 4550.00, 4550.00, 14400.00, 1907648.60, 5416405.00, 49000.00, 5400.00, 0.00, 3700.00, 0.00, '2026-01-15 16:28:26'),
(3, 7, 1786150.00, 2118016.00, 53548.60, 4550.00, 4550.00, 14400.00, 1907648.60, 5416405.00, 49000.00, 5400.00, 0.00, 3700.00, 0.00, '2026-01-15 16:28:26'),
(4, 7, 1786150.00, 2118016.00, 53548.60, 4550.00, 4550.00, 14400.00, 1907648.60, 5416405.00, 49000.00, 5400.00, 0.00, 3700.00, 0.00, '2026-01-15 16:28:26'),
(5, 7, 1786150.00, 2118016.00, 53548.60, 4550.00, 4550.00, 14400.00, 1907648.60, 5416405.00, 49000.00, 5400.00, 0.00, 3700.00, 0.00, '2026-01-15 16:28:26'),
(6, 7, 1786150.00, 2118016.00, 53548.60, 4550.00, 4550.00, 14400.00, 1907648.60, 5416405.00, 49000.00, 5400.00, 0.00, 3700.00, 0.00, '2026-01-15 16:28:26'),
(7, 7, 1786150.00, 2118016.00, 53548.60, 4550.00, 4550.00, 14400.00, 1907648.60, 5416405.00, 49000.00, 5400.00, 0.00, 3700.00, 0.00, '2026-01-15 16:28:26'),
(8, 6, 75650.00, 100000.00, 1300.00, 0.00, 0.00, 20250.00, 88500.00, 111550.00, 9000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-18 00:35:27'),
(9, 12, 74500.00, 100000.00, 3750.00, 0.00, 0.00, 1500.00, 93750.00, 91500.00, 14000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-20 11:25:48'),
(10, 13, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-12-05 10:59:08'),
(11, 14, 156180.00, 110000.00, 10016.00, 700.00, 700.00, 44250.00, 230146.00, 224050.00, 19000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-20 05:45:15'),
(12, 15, 999000.00, 1000000.00, 0.00, 0.00, 0.00, 0.00, 1001000.00, 1000000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-18 21:13:44'),
(13, 16, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-12-18 22:25:47'),
(14, 17, 999000.00, 1000000.00, 0.00, 0.00, 0.00, 0.00, 1001000.00, 1000000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-18 23:03:32'),
(15, 18, 997500.00, 1000000.00, 0.00, 0.00, 0.00, 0.00, 1002500.00, 1000000.00, 5000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-19 12:11:21'),
(16, 19, 999000.00, 1000000.00, 0.00, 0.00, 0.00, 0.00, 1001000.00, 1000000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-20 05:45:15'),
(17, 20, 999000.00, 1000000.00, 0.00, 0.00, 0.00, 0.00, 1001000.00, 1000000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-20 06:01:10'),
(21, 24, 999000.00, 1000000.00, 0.00, 0.00, 0.00, 0.00, 1001000.00, 1000000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, '2025-12-20 18:39:26'),
(22, 25, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-12-20 19:13:50'),
(23, 26, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2026-01-14 14:57:46');

--
-- Triggers `wallets`
--
DELIMITER $$
CREATE TRIGGER `insert_wallet_balances` BEFORE INSERT ON `wallets` FOR EACH ROW BEGIN
    
    SET NEW.account_balance = 
        COALESCE(NEW.deposit_balance, 0) + 
        COALESCE(NEW.invested_capital, 0) + 
        COALESCE(NEW.affiliate_balance, 0) + 
        COALESCE(NEW.whatsapp_balance, 0) + 
        COALESCE(NEW.cashback_balance, 0);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_wallet_balances` BEFORE UPDATE ON `wallets` FOR EACH ROW BEGIN
    
    
    SET NEW.account_balance = 
        COALESCE(NEW.deposit_balance, 0) + 
        COALESCE(NEW.invested_capital, 0) + 
        COALESCE(NEW.affiliate_balance, 0) + 
        COALESCE(NEW.whatsapp_balance, 0) + 
        COALESCE(NEW.cashback_balance, 0);

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_uploads`
--

CREATE TABLE `whatsapp_uploads` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `whatsapp_uploads`
--

INSERT INTO `whatsapp_uploads` (`id`, `user_id`, `file_name`, `views`, `amount`, `created_at`) VALUES
(1, 7, 'WA_1765367127_7218.jpeg', 10, 1500.00, '2025-12-10 11:45:27'),
(2, 7, 'WA_1765367432_4911.png', 10, 1500.00, '2025-12-10 11:50:32'),
(3, 7, 'WA_1765619862_2383.jpg', 100, 15000.00, '2025-12-13 09:57:42'),
(4, 7, 'WA_1765620857_8849.jpeg', 100, 15000.00, '2025-12-13 10:14:17'),
(5, 7, 'WA_1765621429_9752.png', 20, 3000.00, '2025-12-13 10:23:49'),
(6, 7, 'WA_1765670536_9988.jpg', 12, 1800.00, '2025-12-14 00:02:16'),
(7, 7, 'WA_1765732487_7684.png', 8, 1200.00, '2025-12-14 17:14:47'),
(8, 14, 'WA_1765755687_2326.jpg', 120, 18000.00, '2025-12-14 23:41:27'),
(9, 14, 'WA_1765755776_2722.jpg', 120, 18000.00, '2025-12-14 23:42:56'),
(10, 14, 'WA_1765840555_2130.jpg', 16, 2400.00, '2025-12-15 23:15:55'),
(11, 14, 'WA_1765845983_8552.jpg', 14, 2100.00, '2025-12-16 00:46:23'),
(12, 14, 'WA_1765846300_4008.jpg', 14, 2100.00, '2025-12-16 00:51:40'),
(13, 7, 'WA_1765846408_5815.png', 14, 2100.00, '2025-12-16 00:53:28'),
(14, 14, 'WA_1765969939_2346.jpg', 11, 1650.00, '2025-12-17 11:12:19'),
(15, 12, 'WA_1765976269_4012.jpg', 10, 1500.00, '2025-12-17 12:57:49'),
(16, 7, 'WA_1765982507_8140.jpg', 11, 1650.00, '2025-12-17 14:41:47'),
(17, 6, 'WA_1766004498_1182.jpg', 123, 18450.00, '2025-12-17 20:48:18'),
(18, 6, 'WA_1766005653_3729.png', 12, 1800.00, '2025-12-17 21:07:33'),
(19, 7, 'WA_1766087147_2508.png', 13, 1950.00, '2025-12-18 19:45:47'),
(20, 7, 'WA_1766156104_4436.png', 12, 1800.00, '2025-12-19 14:55:04'),
(21, 7, 'WA_1766158896_2277.png', 10, 1500.00, '2025-12-19 15:41:36'),
(22, 7, 'WA_1768382452_2978.jpeg', 7, 1050.00, '2026-01-14 09:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `source` enum('cashback','whatsapp','referrals','invested') DEFAULT NULL,
  `token_code` varchar(10) DEFAULT NULL,
  `status` enum('pending','approved','declined') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_tokens`
--

CREATE TABLE `withdrawal_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_code` varchar(10) NOT NULL,
  `token_type` varchar(50) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawal_tokens`
--

INSERT INTO `withdrawal_tokens` (`id`, `user_id`, `token_code`, `token_type`, `cost`, `is_used`, `created_at`) VALUES
(1, 7, '73125', 'Credentials Code', 7500.00, 0, '2025-12-18 00:18:06'),
(2, 7, '30819', 'Credentials Code', 7500.00, 0, '2025-12-18 00:20:59'),
(3, 7, '68267', 'Authorization Code', 5500.00, 0, '2025-12-18 00:26:57'),
(4, 6, '16563', 'Authorization Code', 5500.00, 0, '2025-12-18 00:35:27'),
(5, 7, '11374', 'Verification Code', 3500.00, 0, '2025-12-18 14:24:42'),
(6, 7, '32272', 'Verification Code', 3500.00, 0, '2025-12-18 15:05:18'),
(7, 7, '69807', 'Authorization Code', 5500.00, 0, '2025-12-18 15:14:18'),
(8, 7, '89557', 'Luxurious Code', 10000.00, 0, '2025-12-18 15:19:39'),
(9, 7, '17994', 'Verification Code', 3500.00, 0, '2025-12-18 15:23:36'),
(10, 7, '70162', 'Verification Code', 3500.00, 0, '2025-12-18 15:28:32'),
(11, 7, '96861', 'Verification Code', 3500.00, 0, '2025-12-18 15:30:38'),
(12, 7, '51489', 'Verification Code', 3500.00, 0, '2025-12-18 19:29:42'),
(13, 14, '31448', 'Authorization Code', 5500.00, 0, '2025-12-18 19:50:27'),
(14, 7, '18375', 'Verification Code', 3500.00, 0, '2025-12-18 20:19:02'),
(15, 14, '37489', 'Verification Code', 3500.00, 0, '2025-12-18 20:19:51'),
(16, 14, '25950', 'Verification Code', 3500.00, 0, '2025-12-18 20:20:53'),
(17, 14, '29695', 'Luxurious Code', 10000.00, 0, '2025-12-18 20:24:03'),
(18, 7, '22495', 'Luxurious Code', 10000.00, 0, '2025-12-18 20:25:03'),
(19, 7, '98546', 'Luxurious Code', 10000.00, 0, '2025-12-18 20:25:38'),
(20, 7, '71552', 'Credentials Code', 7500.00, 0, '2025-12-19 14:57:18'),
(21, 7, '10124', 'Luxurious Code', 10000.00, 0, '2025-12-19 15:45:48'),
(22, 7, '29196', 'Luxurious Code', 10000.00, 0, '2025-12-20 13:20:23'),
(23, 7, '81908', 'Verification Code', 3500.00, 0, '2025-12-20 16:56:26'),
(24, 7, '65809', 'Verification Code', 3500.00, 0, '2025-12-20 16:56:44'),
(25, 7, '72651', 'Authorization Code', 5500.00, 0, '2025-12-20 17:00:15'),
(26, 7, '90532', 'Luxurious Code', 10000.00, 0, '2026-01-12 12:31:51'),
(27, 7, '36027', 'Verification Code', 3500.00, 0, '2026-01-15 11:11:19'),
(28, 7, '63101', 'Luxurious Code', 10000.00, 1, '2026-01-15 15:05:18'),
(29, 7, '32670', 'Luxurious Code', 10000.00, 1, '2026-01-15 16:13:08'),
(30, 7, '15360', 'Luxurious Code', 10000.00, 1, '2026-01-15 16:15:01'),
(31, 7, '45725', 'Luxurious Code', 10000.00, 0, '2026-01-15 16:25:18'),
(32, 7, '98034', 'Luxurious Code', 10000.00, 1, '2026-01-15 16:28:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_uploads`
--
ALTER TABLE `daily_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `matured_investments`
--
ALTER TABLE `matured_investments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mpesa_logs`
--
ALTER TABLE `mpesa_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_requests`
--
ALTER TABLE `mpesa_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrer_id` (`referrer_id`),
  ADD KEY `referred_user_id` (`referred_user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wallet_user` (`user_id`);

--
-- Indexes for table `whatsapp_uploads`
--
ALTER TABLE `whatsapp_uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `withdrawal_tokens`
--
ALTER TABLE `withdrawal_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_uploads`
--
ALTER TABLE `daily_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `matured_investments`
--
ALTER TABLE `matured_investments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mpesa_logs`
--
ALTER TABLE `mpesa_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mpesa_requests`
--
ALTER TABLE `mpesa_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `whatsapp_uploads`
--
ALTER TABLE `whatsapp_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_tokens`
--
ALTER TABLE `withdrawal_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `investments`
--
ALTER TABLE `investments`
  ADD CONSTRAINT `investments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `matured_investments`
--
ALTER TABLE `matured_investments`
  ADD CONSTRAINT `matured_investments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`referrer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `referrals_ibfk_2` FOREIGN KEY (`referred_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `fk_wallet_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `whatsapp_uploads`
--
ALTER TABLE `whatsapp_uploads`
  ADD CONSTRAINT `whatsapp_uploads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
