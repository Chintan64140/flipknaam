-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2026 at 10:31 PM
-- Server version: 8.0.38
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `f6k26_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_code` varchar(255) NOT NULL,
  `cat_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_code`, `cat_img`) VALUES
(1, 'Mobiles', 'Mobile', '/assets/images/category/mobile.webp'),
(2, 'Electronics', 'Electronics', '/assets/images/category/ele.webp'),
(3, 'Appliances', 'Appliances', '/assets/images/category/kit.webp'),
(4, 'Furniture', 'Furniture', '/assets/images/category/fur.webp'),
(5, 'Sarees', 'kurtis', '/assets/images/category/kur.webp'),
(6, 'Western Wear', 'Western Wear', '/assets/images/category/west.webp'),
(7, 'Sandals', 'crocs', '/assets/images/category/cro.webp'),
(8, 'Sport Shoes', 'Shoes', '/assets/images/category/shoes.webp'),
(9, 'Grocery', 'Grocery', '/assets/images/category/gro.webp'),
(10, 'Dryfruit', 'dryfruit', '/assets/images/category/dryfruit.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audit_logs`
--

CREATE TABLE `tbl_audit_logs` (
  `id` int NOT NULL,
  `record_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `operation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `from` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `custom_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_audit_logs`
--

INSERT INTO `tbl_audit_logs` (`id`, `record_id`, `user_id`, `action`, `operation`, `from`, `status`, `date_added`, `date_modified`, `custom_text`, `is_deleted`, `ip_address`) VALUES
(1, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-08-30 17:42:10', '2023-08-30 17:42:10', '', NULL, '2401:4900:576f:60c1:'),
(2, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-08-30 17:43:27', '2023-08-30 17:43:27', '', 1, '2401:4900:576f:60c1:'),
(3, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-08-30 17:49:30', '2023-08-30 17:49:30', '', NULL, '2401:4900:1f3f:21ce:'),
(4, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-08-30 17:50:36', '2023-08-30 17:50:36', '', 1, '2401:4900:1f3f:21ce:'),
(5, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-08-30 17:53:33', '2023-08-30 17:53:33', '', 1, '2401:4900:1f3f:21ce:'),
(6, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-05 07:49:04', '2023-09-05 07:49:04', '', NULL, '2401:4900:53f5:4169:'),
(7, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-05 07:50:19', '2023-09-05 07:50:19', '', 1, '2401:4900:53f5:4169:'),
(8, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-05 07:50:27', '2023-09-05 07:50:27', '', 1, '2401:4900:53f5:4169:'),
(9, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-05 07:50:31', '2023-09-05 07:50:31', '', 1, '2401:4900:53f5:4169:'),
(10, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-05 07:50:35', '2023-09-05 07:50:35', '', 1, '2401:4900:53f5:4169:'),
(11, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-05 07:50:38', '2023-09-05 07:50:38', '', 1, '2401:4900:53f5:4169:'),
(12, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-05 07:50:58', '2023-09-05 07:50:58', '', 1, '2401:4900:53f5:4169:'),
(13, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-05 07:51:29', '2023-09-05 07:51:29', '', 1, '2401:4900:53f5:4169:'),
(14, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-05 07:54:53', '2023-09-05 07:54:53', '', NULL, '2401:4900:53f5:4169:'),
(15, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-05 07:55:49', '2023-09-05 07:55:49', '', 1, '2401:4900:53f5:4169:'),
(16, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-08 12:26:56', '2023-09-08 12:26:56', '', NULL, '148.113.8.227'),
(17, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-08 19:05:52', '2023-09-08 19:05:52', '', NULL, '2409:40c1:103f:1d21:'),
(18, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-08 19:12:08', '2023-09-08 19:12:08', '', NULL, '2409:40c1:103f:1d21:'),
(19, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-08 19:22:03', '2023-09-08 19:22:03', '', NULL, '2409:40c1:103f:1d21:'),
(20, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-08 19:22:16', '2023-09-08 19:22:16', '', 1, '2409:40c1:103f:1d21:'),
(21, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-08 19:36:05', '2023-09-08 19:36:05', '', NULL, '2409:40c1:103f:1d21:'),
(22, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-08 19:36:17', '2023-09-08 19:36:17', '', 1, '2409:40c1:103f:1d21:'),
(23, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-08 19:36:20', '2023-09-08 19:36:20', '', 1, '2409:40c1:103f:1d21:'),
(24, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-09 09:39:24', '2023-09-09 09:39:24', '', NULL, '2409:40c1:101c:1200:'),
(25, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-09 15:37:51', '2023-09-09 15:37:51', '', NULL, '2402:3a80:1267:36a0:'),
(26, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-09 15:43:08', '2023-09-09 15:43:08', '', NULL, '2402:3a80:1267:36a0:'),
(27, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-09 16:23:13', '2023-09-09 16:23:13', '', NULL, '185.174.110.2'),
(28, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-09 16:23:27', '2023-09-09 16:23:27', '', 1, '185.174.110.2'),
(29, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-09 16:34:51', '2023-09-09 16:34:51', '', NULL, '185.174.110.2'),
(30, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-09 17:00:49', '2023-09-09 17:00:49', '', NULL, '185.174.110.2'),
(31, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 10:31:11', '2023-09-10 10:31:11', '', NULL, '2401:4900:1c80:c82e:'),
(32, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-10 10:31:41', '2023-09-10 10:31:41', '', 1, '2401:4900:1c80:c82e:'),
(33, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 15:50:11', '2023-09-10 15:50:11', '', NULL, '194.28.84.109'),
(34, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-10 15:50:58', '2023-09-10 15:50:58', '', 1, '194.28.84.109'),
(35, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 17:13:24', '2023-09-10 17:13:24', '', NULL, '122.161.87.144'),
(36, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-10 17:14:32', '2023-09-10 17:14:32', '', 1, '122.161.87.144'),
(37, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 17:16:07', '2023-09-10 17:16:07', '', NULL, '122.161.87.144'),
(38, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 17:22:50', '2023-09-10 17:22:50', '', NULL, '122.161.87.144'),
(39, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 17:40:59', '2023-09-10 17:40:59', '', NULL, '122.161.87.144'),
(40, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 18:07:46', '2023-09-10 18:07:46', '', NULL, '122.161.87.144'),
(41, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 18:32:19', '2023-09-10 18:32:19', '', NULL, '122.161.87.144'),
(42, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 18:45:42', '2023-09-10 18:45:42', '', NULL, '122.161.87.144'),
(43, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-10 18:46:34', '2023-09-10 18:46:34', '', 1, '122.161.87.144'),
(44, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 18:48:27', '2023-09-10 18:48:27', '', NULL, '122.161.87.144'),
(45, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 18:55:00', '2023-09-10 18:55:00', '', NULL, '122.161.87.144'),
(46, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 18:59:40', '2023-09-10 18:59:40', '', NULL, '122.161.87.144'),
(47, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-10 22:28:40', '2023-09-10 22:28:40', '', NULL, '122.161.87.144'),
(48, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 01:54:18', '2023-09-11 01:54:18', '', NULL, '122.161.87.144'),
(49, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:00:17', '2023-09-11 03:00:17', '', NULL, '223.178.100.196'),
(50, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-11 03:00:34', '2023-09-11 03:00:34', '', 1, '223.178.100.196'),
(51, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-11 03:01:04', '2023-09-11 03:01:04', '', 1, '223.178.100.196'),
(52, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:26:04', '2023-09-11 03:26:04', '', NULL, '122.161.87.144'),
(53, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-11 03:26:45', '2023-09-11 03:26:45', '', 1, '122.161.87.144'),
(54, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-11 03:27:16', '2023-09-11 03:27:16', '', 1, '122.161.87.144'),
(55, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:29:02', '2023-09-11 03:29:02', '', NULL, '122.161.87.144'),
(56, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-11 03:29:09', '2023-09-11 03:29:09', '', 1, '122.161.87.144'),
(57, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:33:57', '2023-09-11 03:33:57', '', NULL, '2401:4900:53f2:bca9:'),
(58, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-11 03:34:34', '2023-09-11 03:34:34', '', 1, '2401:4900:53f2:bca9:'),
(59, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:35:10', '2023-09-11 03:35:10', '', NULL, '122.161.87.144'),
(60, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:39:50', '2023-09-11 03:39:50', '', NULL, '122.161.87.144'),
(61, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:42:25', '2023-09-11 03:42:25', '', NULL, '122.161.87.144'),
(62, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-11 03:42:47', '2023-09-11 03:42:47', '', 1, '122.161.87.144'),
(63, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-11 03:43:19', '2023-09-11 03:43:19', '', 1, '122.161.87.144'),
(64, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:45:04', '2023-09-11 03:45:04', '', NULL, '122.161.87.144'),
(65, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 03:53:22', '2023-09-11 03:53:22', '', NULL, '122.161.87.144'),
(66, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 04:18:54', '2023-09-11 04:18:54', '', NULL, '122.161.87.144'),
(67, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 04:45:46', '2023-09-11 04:45:46', '', NULL, '122.161.87.144'),
(68, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 05:59:33', '2023-09-11 05:59:33', '', NULL, '103.240.234.7'),
(69, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 09:58:59', '2023-09-11 09:58:59', '', NULL, '103.240.234.7'),
(70, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 12:50:12', '2023-09-11 12:50:12', '', NULL, '2401:4900:1f3f:7ad:a'),
(71, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:52:07', '2023-09-11 12:52:07', '', 1, '2401:4900:1f3f:7ad:a'),
(72, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:52:10', '2023-09-11 12:52:10', '', 1, '2401:4900:1f3f:7ad:a'),
(73, 0, 0, 'Delete', 'delete_record', 'panel', 1, '2023-09-11 12:52:30', '2023-09-11 12:52:30', '', 1, '2401:4900:1f3f:7ad:a'),
(74, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 12:53:03', '2023-09-11 12:53:03', '', NULL, '2401:4900:1f3f:7ad:a'),
(75, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:53:13', '2023-09-11 12:53:13', '', 1, '2401:4900:1f3f:7ad:a'),
(76, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:53:17', '2023-09-11 12:53:17', '', 1, '2401:4900:1f3f:7ad:a'),
(77, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:53:21', '2023-09-11 12:53:21', '', 1, '2401:4900:1f3f:7ad:a'),
(78, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:53:23', '2023-09-11 12:53:23', '', 1, '2401:4900:1f3f:7ad:a'),
(79, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:53:26', '2023-09-11 12:53:26', '', 1, '2401:4900:1f3f:7ad:a'),
(80, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:53:34', '2023-09-11 12:53:34', '', 1, '2401:4900:1f3f:7ad:a'),
(81, 0, 0, 'Delete', 'delete_record', 'panel', 1, '2023-09-11 12:54:07', '2023-09-11 12:54:07', '', 1, '2401:4900:1f3f:7ad:a'),
(82, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:54:14', '2023-09-11 12:54:14', '', 1, '2401:4900:1f3f:7ad:a'),
(83, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:54:20', '2023-09-11 12:54:20', '', 1, '2401:4900:1f3f:7ad:a'),
(84, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:54:30', '2023-09-11 12:54:30', '', 1, '2401:4900:1f3f:7ad:a'),
(85, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:54:36', '2023-09-11 12:54:36', '', 1, '2401:4900:1f3f:7ad:a'),
(86, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:55:13', '2023-09-11 12:55:13', '', 1, '2401:4900:1f3f:7ad:a'),
(87, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:55:25', '2023-09-11 12:55:25', '', 1, '2401:4900:1f3f:7ad:a'),
(88, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-11 12:56:09', '2023-09-11 12:56:09', '', NULL, '2401:4900:1f3f:7ad:a'),
(89, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-11 12:57:44', '2023-09-11 12:57:44', '', 1, '2401:4900:1f3f:7ad:a'),
(90, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-13 07:04:12', '2023-09-13 07:04:12', '', NULL, '2401:4900:1f3f:6bb0:'),
(91, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-13 07:04:29', '2023-09-13 07:04:29', '', 1, '2401:4900:1f3f:6bb0:'),
(92, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-13 07:18:30', '2023-09-13 07:18:30', '', NULL, '2401:4900:1f3f:6bb0:'),
(93, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-14 12:13:32', '2023-09-14 12:13:32', '', NULL, '2401:4900:1c80:3261:'),
(94, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-16 16:57:41', '2023-09-16 16:57:41', '', NULL, '2401:4900:1f3f:4be8:'),
(95, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-16 17:08:21', '2023-09-16 17:08:21', '', NULL, '2401:4900:1f3f:4be8:'),
(96, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-16 17:58:52', '2023-09-16 17:58:52', '', NULL, '2401:4900:1f3f:4be8:'),
(97, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-16 19:01:46', '2023-09-16 19:01:46', '', NULL, '2401:4900:1f3f:4be8:'),
(98, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-17 06:38:13', '2023-09-17 06:38:13', '', NULL, '2401:4900:1c80:8a99:'),
(99, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-17 10:14:03', '2023-09-17 10:14:03', '', NULL, '2401:4900:1c80:8a99:'),
(100, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-17 10:15:48', '2023-09-17 10:15:48', '', 1, '2401:4900:1c80:8a99:'),
(101, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-17 10:16:05', '2023-09-17 10:16:05', '', 1, '2401:4900:1c80:8a99:'),
(102, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-17 10:16:30', '2023-09-17 10:16:30', '', 1, '2401:4900:1c80:8a99:'),
(103, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-17 10:17:16', '2023-09-17 10:17:16', '', NULL, '2401:4900:1c80:8a99:'),
(104, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-18 01:38:51', '2023-09-18 01:38:51', '', NULL, '95.143.193.15'),
(105, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-18 01:43:45', '2023-09-18 01:43:45', '', NULL, '23.106.63.107'),
(106, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-18 01:43:52', '2023-09-18 01:43:52', '', NULL, '95.143.193.15'),
(107, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-18 01:44:05', '2023-09-18 01:44:05', '', 1, '95.143.193.15'),
(108, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-18 01:45:06', '2023-09-18 01:45:06', '', 1, '23.106.63.107'),
(109, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-18 01:45:21', '2023-09-18 01:45:21', '', 1, '23.106.63.107'),
(110, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-18 01:47:19', '2023-09-18 01:47:19', '', NULL, '23.106.63.107'),
(111, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-18 01:48:02', '2023-09-18 01:48:02', '', 1, '23.106.63.107'),
(112, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-18 01:48:19', '2023-09-18 01:48:19', '', 1, '23.106.63.107'),
(113, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-18 03:41:24', '2023-09-18 03:41:24', '', NULL, '2409:40c1:30:590:e18'),
(114, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-18 08:36:52', '2023-09-18 08:36:52', '', NULL, '2401:4900:1f3f:f8d3:'),
(115, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-18 08:40:28', '2023-09-18 08:40:28', '', NULL, '2401:4900:1f3f:f8d3:'),
(116, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-18 08:52:04', '2023-09-18 08:52:04', '', NULL, '2401:4900:1f3f:f8d3:'),
(117, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-19 16:04:37', '2023-09-19 16:04:37', '', NULL, '2401:4900:1f3f:a8fb:'),
(118, 0, 0, 'Update', 'update_product_order', 'panel', 1, '2023-09-19 16:05:34', '2023-09-19 16:05:34', '', 1, '2401:4900:1f3f:a8fb:'),
(119, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-19 16:23:47', '2023-09-19 16:23:47', '', NULL, '2401:4900:1f3f:a8fb:'),
(120, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:23:54', '2023-09-19 16:23:54', '', 1, '2401:4900:1f3f:a8fb:'),
(121, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-19 16:27:13', '2023-09-19 16:27:13', '', NULL, '2401:4900:1f3f:a8fb:'),
(122, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:27:22', '2023-09-19 16:27:22', '', 1, '2401:4900:1f3f:a8fb:'),
(123, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-19 16:32:12', '2023-09-19 16:32:12', '', NULL, '2401:4900:1f3f:a8fb:'),
(124, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:32:28', '2023-09-19 16:32:28', '', 1, '2401:4900:1f3f:a8fb:'),
(125, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-19 16:42:55', '2023-09-19 16:42:55', '', NULL, '2401:4900:1f3f:a8fb:'),
(126, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:43:09', '2023-09-19 16:43:09', '', 1, '2401:4900:1f3f:a8fb:'),
(127, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-19 16:46:50', '2023-09-19 16:46:50', '', NULL, '2401:4900:1f3f:a8fb:'),
(128, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:47:01', '2023-09-19 16:47:01', '', 1, '2401:4900:1f3f:a8fb:'),
(129, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:48:23', '2023-09-19 16:48:23', '', 1, '2401:4900:1f3f:a8fb:'),
(130, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:48:33', '2023-09-19 16:48:33', '', 1, '2401:4900:1f3f:a8fb:'),
(131, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-19 16:49:45', '2023-09-19 16:49:45', '', NULL, '2401:4900:1f3f:a8fb:'),
(132, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:49:57', '2023-09-19 16:49:57', '', 1, '2401:4900:1f3f:a8fb:'),
(133, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:52:05', '2023-09-19 16:52:05', '', 1, '2401:4900:1f3f:a8fb:'),
(134, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-19 16:52:11', '2023-09-19 16:52:11', '', 1, '2401:4900:1f3f:a8fb:'),
(135, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 04:25:24', '2023-09-20 04:25:24', '', NULL, '2401:4900:1f3f:6934:'),
(136, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 04:31:12', '2023-09-20 04:31:12', '', NULL, '2401:4900:1f3f:6934:'),
(137, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:31:18', '2023-09-20 04:31:18', '', 1, '2401:4900:1f3f:6934:'),
(138, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:32:08', '2023-09-20 04:32:08', '', 1, '2401:4900:1f3f:6934:'),
(139, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:32:17', '2023-09-20 04:32:17', '', 1, '2401:4900:1f3f:6934:'),
(140, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:32:57', '2023-09-20 04:32:57', '', 1, '2401:4900:1f3f:6934:'),
(141, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:33:06', '2023-09-20 04:33:06', '', 1, '2401:4900:1f3f:6934:'),
(142, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 04:44:18', '2023-09-20 04:44:18', '', NULL, '2401:4900:1f3f:6934:'),
(143, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:44:25', '2023-09-20 04:44:25', '', 1, '2401:4900:1f3f:6934:'),
(144, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:45:11', '2023-09-20 04:45:11', '', 1, '2401:4900:1f3f:6934:'),
(145, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:45:52', '2023-09-20 04:45:52', '', 1, '2401:4900:1f3f:6934:'),
(146, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 04:48:15', '2023-09-20 04:48:15', '', NULL, '2401:4900:1f3f:6934:'),
(147, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:48:24', '2023-09-20 04:48:24', '', 1, '2401:4900:1f3f:6934:'),
(148, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:48:55', '2023-09-20 04:48:55', '', 1, '2401:4900:1f3f:6934:'),
(149, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:48:58', '2023-09-20 04:48:58', '', 1, '2401:4900:1f3f:6934:'),
(150, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:49:21', '2023-09-20 04:49:21', '', 1, '2401:4900:1f3f:6934:'),
(151, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:49:49', '2023-09-20 04:49:49', '', 1, '2401:4900:1f3f:6934:'),
(152, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:50:38', '2023-09-20 04:50:38', '', 1, '2401:4900:1f3f:6934:'),
(153, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 04:51:31', '2023-09-20 04:51:31', '', NULL, '2401:4900:1f3f:6934:'),
(154, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:51:37', '2023-09-20 04:51:37', '', 1, '2401:4900:1f3f:6934:'),
(155, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:53:45', '2023-09-20 04:53:45', '', 1, '2401:4900:1f3f:6934:'),
(156, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 04:55:32', '2023-09-20 04:55:32', '', NULL, '2401:4900:1f3f:6934:'),
(157, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:55:39', '2023-09-20 04:55:39', '', 1, '2401:4900:1f3f:6934:'),
(158, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:56:22', '2023-09-20 04:56:22', '', 1, '2401:4900:1f3f:6934:'),
(159, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:56:50', '2023-09-20 04:56:50', '', 1, '2401:4900:1f3f:6934:'),
(160, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:57:15', '2023-09-20 04:57:15', '', 1, '2401:4900:1f3f:6934:'),
(161, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 04:58:22', '2023-09-20 04:58:22', '', NULL, '2401:4900:1f3f:6934:'),
(162, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 04:58:27', '2023-09-20 04:58:27', '', 1, '2401:4900:1f3f:6934:'),
(163, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:00:31', '2023-09-20 05:00:31', '', 1, '2401:4900:1f3f:6934:'),
(164, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:00:34', '2023-09-20 05:00:34', '', 1, '2401:4900:1f3f:6934:'),
(165, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 05:04:29', '2023-09-20 05:04:29', '', NULL, '2401:4900:1f3f:6934:'),
(166, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:04:55', '2023-09-20 05:04:55', '', 1, '2401:4900:1f3f:6934:'),
(167, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:05:37', '2023-09-20 05:05:37', '', 1, '2401:4900:1f3f:6934:'),
(168, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:06:04', '2023-09-20 05:06:04', '', 1, '2401:4900:1f3f:6934:'),
(169, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:06:25', '2023-09-20 05:06:25', '', 1, '2401:4900:1f3f:6934:'),
(170, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:06:58', '2023-09-20 05:06:58', '', 1, '2401:4900:1f3f:6934:'),
(171, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 05:07:47', '2023-09-20 05:07:47', '', NULL, '2401:4900:1f3f:6934:'),
(172, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:07:51', '2023-09-20 05:07:51', '', 1, '2401:4900:1f3f:6934:'),
(173, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:08:22', '2023-09-20 05:08:22', '', 1, '2401:4900:1f3f:6934:'),
(174, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:08:38', '2023-09-20 05:08:38', '', 1, '2401:4900:1f3f:6934:'),
(175, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:09:11', '2023-09-20 05:09:11', '', 1, '2401:4900:1f3f:6934:'),
(176, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 05:10:40', '2023-09-20 05:10:40', '', NULL, '2401:4900:1f3f:6934:'),
(177, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:10:44', '2023-09-20 05:10:44', '', 1, '2401:4900:1f3f:6934:'),
(178, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:11:20', '2023-09-20 05:11:20', '', 1, '2401:4900:1f3f:6934:'),
(179, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:12:39', '2023-09-20 05:12:39', '', 1, '2401:4900:1f3f:6934:'),
(180, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 05:12:39', '2023-09-20 05:12:39', '', 1, '2401:4900:1f3f:6934:'),
(181, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 06:08:40', '2023-09-20 06:08:40', '', NULL, '2401:4900:1f3f:6934:'),
(182, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 06:08:41', '2023-09-20 06:08:41', '', NULL, '2401:4900:1f3f:6934:'),
(183, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 06:08:47', '2023-09-20 06:08:47', '', 1, '2401:4900:1f3f:6934:'),
(184, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 06:10:07', '2023-09-20 06:10:07', '', 1, '2401:4900:1f3f:6934:'),
(185, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 06:10:49', '2023-09-20 06:10:49', '', 1, '2401:4900:1f3f:6934:'),
(186, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 11:11:10', '2023-09-20 11:11:10', '', NULL, '2401:4900:1f3f:6934:'),
(187, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:11:17', '2023-09-20 11:11:17', '', 1, '2401:4900:1f3f:6934:'),
(188, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:12:05', '2023-09-20 11:12:05', '', 1, '2401:4900:1f3f:6934:'),
(189, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:12:40', '2023-09-20 11:12:40', '', 1, '2401:4900:1f3f:6934:'),
(190, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:13:07', '2023-09-20 11:13:07', '', 1, '2401:4900:1f3f:6934:'),
(191, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:13:37', '2023-09-20 11:13:37', '', 1, '2401:4900:1f3f:6934:'),
(192, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 11:14:12', '2023-09-20 11:14:12', '', NULL, '2401:4900:1f3f:6934:'),
(193, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:14:17', '2023-09-20 11:14:17', '', 1, '2401:4900:1f3f:6934:'),
(194, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:14:43', '2023-09-20 11:14:43', '', 1, '2401:4900:1f3f:6934:'),
(195, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:15:44', '2023-09-20 11:15:44', '', 1, '2401:4900:1f3f:6934:'),
(196, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:15:46', '2023-09-20 11:15:46', '', 1, '2401:4900:1f3f:6934:'),
(197, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 11:56:17', '2023-09-20 11:56:17', '', NULL, '2401:4900:1c80:3938:'),
(198, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:56:25', '2023-09-20 11:56:25', '', 1, '2401:4900:1c80:3938:'),
(199, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:57:16', '2023-09-20 11:57:16', '', 1, '2401:4900:1c80:3938:'),
(200, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:57:23', '2023-09-20 11:57:23', '', 1, '2401:4900:1c80:3938:'),
(201, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:58:01', '2023-09-20 11:58:01', '', 1, '2401:4900:1c80:3938:'),
(202, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 11:59:45', '2023-09-20 11:59:45', '', NULL, '2401:4900:1c80:3938:'),
(203, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 11:59:54', '2023-09-20 11:59:54', '', 1, '2401:4900:1c80:3938:'),
(204, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:00:14', '2023-09-20 12:00:14', '', 1, '2401:4900:1c80:3938:'),
(205, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 12:02:46', '2023-09-20 12:02:46', '', NULL, '2401:4900:1c80:3938:'),
(206, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:02:59', '2023-09-20 12:02:59', '', 1, '2401:4900:1c80:3938:'),
(207, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:04:11', '2023-09-20 12:04:11', '', 1, '2401:4900:1c80:3938:'),
(208, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:04:44', '2023-09-20 12:04:44', '', 1, '2401:4900:1c80:3938:'),
(209, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:05:15', '2023-09-20 12:05:15', '', 1, '2401:4900:1c80:3938:'),
(210, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 12:06:50', '2023-09-20 12:06:50', '', NULL, '2401:4900:1c80:3938:'),
(211, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 12:15:42', '2023-09-20 12:15:42', '', NULL, '2401:4900:1c80:3938:'),
(212, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:15:50', '2023-09-20 12:15:50', '', 1, '2401:4900:1c80:3938:'),
(213, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 12:19:41', '2023-09-20 12:19:41', '', NULL, '2401:4900:1c80:3938:'),
(214, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:19:51', '2023-09-20 12:19:51', '', 1, '2401:4900:1c80:3938:'),
(215, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 12:23:47', '2023-09-20 12:23:47', '', NULL, '2401:4900:1c80:3938:'),
(216, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:23:53', '2023-09-20 12:23:53', '', 1, '2401:4900:1c80:3938:'),
(217, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:24:22', '2023-09-20 12:24:22', '', 1, '2401:4900:1c80:3938:'),
(218, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 12:45:56', '2023-09-20 12:45:56', '', NULL, '2401:4900:1c80:3938:'),
(219, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:46:54', '2023-09-20 12:46:54', '', 1, '2401:4900:1c80:3938:'),
(220, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 12:49:26', '2023-09-20 12:49:26', '', NULL, '2401:4900:1c80:3938:'),
(221, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:49:33', '2023-09-20 12:49:33', '', 1, '2401:4900:1c80:3938:'),
(222, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:50:10', '2023-09-20 12:50:10', '', 1, '2401:4900:1c80:3938:'),
(223, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:50:27', '2023-09-20 12:50:27', '', 1, '2401:4900:1c80:3938:'),
(224, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:50:36', '2023-09-20 12:50:36', '', 1, '2401:4900:1c80:3938:'),
(225, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:51:16', '2023-09-20 12:51:16', '', 1, '2401:4900:1c80:3938:'),
(226, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:51:28', '2023-09-20 12:51:28', '', 1, '2401:4900:1c80:3938:'),
(227, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:51:56', '2023-09-20 12:51:56', '', 1, '2401:4900:1c80:3938:'),
(228, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 12:58:36', '2023-09-20 12:58:36', '', NULL, '2401:4900:1c80:3938:'),
(229, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 12:58:41', '2023-09-20 12:58:41', '', 1, '2401:4900:1c80:3938:'),
(230, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 14:04:10', '2023-09-20 14:04:10', '', NULL, '2401:4900:1c80:3938:'),
(231, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 14:04:17', '2023-09-20 14:04:17', '', 1, '2401:4900:1c80:3938:'),
(232, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 17:14:53', '2023-09-20 17:14:53', '', NULL, '2401:4900:1c80:3938:'),
(233, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 17:15:04', '2023-09-20 17:15:04', '', 1, '2401:4900:1c80:3938:'),
(234, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 17:30:45', '2023-09-20 17:30:45', '', NULL, '2401:4900:1c80:3938:'),
(235, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 17:32:20', '2023-09-20 17:32:20', '', 1, '2401:4900:1c80:3938:'),
(236, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 17:35:09', '2023-09-20 17:35:09', '', NULL, '2401:4900:1c80:3938:'),
(237, 0, 0, 'Delete', 'delete_all_record', 'panel', 1, '2023-09-20 17:35:19', '2023-09-20 17:35:19', '', 1, '2401:4900:1c80:3938:'),
(238, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 18:11:47', '2023-09-20 18:11:47', '', NULL, '2401:4900:1c80:3938:'),
(239, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 18:14:46', '2023-09-20 18:14:46', '', NULL, '2401:4900:1c80:3938:'),
(240, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-20 18:15:25', '2023-09-20 18:15:25', '', 1, '2401:4900:1c80:3938:'),
(241, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 18:17:36', '2023-09-20 18:17:36', '', NULL, '2401:4900:1c80:3938:'),
(242, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-20 18:18:16', '2023-09-20 18:18:16', '', 1, '2401:4900:1c80:3938:'),
(243, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 18:36:36', '2023-09-20 18:36:36', '', NULL, '2401:4900:1c80:3938:'),
(244, 0, 0, 'Update', 'update_settings', 'panel', 1, '2023-09-20 18:36:41', '2023-09-20 18:36:41', '', 1, '2401:4900:1c80:3938:'),
(245, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-20 18:37:06', '2023-09-20 18:37:06', '', NULL, '2401:4900:1c80:3938:'),
(246, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-21 05:44:46', '2023-09-21 05:44:46', '', NULL, '2401:4900:1c80:2fd2:'),
(247, 0, NULL, 'Login', 'login_user', 'panel', 1, '2023-09-21 06:07:36', '2023-09-21 06:07:36', '', NULL, '2401:4900:1c80:2fd2:');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selling_price` double(10,2) DEFAULT NULL,
  `mrp` double(10,2) DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `disp_order` int DEFAULT '0',
  `from_csv` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--



INSERT INTO `tbl_product` (`id`, `name`, `color`, `size`, `storage`, `selling_price`, `mrp`, `features`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `keywords`, `disp_order`, `from_csv`, `created_at`) VALUES
(1, 'Seventh Heaven Milan 3 Seater Sofa | Luxury Comfort & Extra Spacious | Sofa | Sofa Set | Wooden Sofa Set for Living Room | Sofa for Living Room & Office (Chenille Molfino - Black)', 'Default', 'Free Size', '', 399.00, 9999.00, '', '/images/products/1_1.jpg', '/images/products/1_2.jpg', '/images/products/1_3.jpg', '/images/products/1_4.jpg', '/images/products/1_5.jpg', 'Furniture', '', 1, 1, '2026-06-16 17:09:40'),
(2, '2-Seater Indoor & Outdoor Swing - Natural Wooden Polished (50kg) | Upper Pipe Swing Jhula for Home and Blacony with Sturdy Stand | Strong 300 Kg Capacity Heavy Metal Swing', 'Default', 'Free Size', '', 389.00, 21499.00, '', '/images/products/2_1.jpg', '/images/products/2_2.jpg', '/images/products/2_3.jpg', '/images/products/2_4.jpg', '', 'Furniture', '', 2, 1, '2026-06-16 17:09:40'),
(3, 'Skechers CORDOVA CLASSIC', 'Default', 'Free Size', '', 391.00, 6799.00, '', '/images/products/3_1.jpg', '/images/products/3_2.jpg', '/images/products/3_3.jpg', '/images/products/3_4.jpg', '/images/products/3_5.jpg', 'Shoes', '', 3, 1, '2026-06-16 17:09:40'),
(4, 'Bajaj Rex Mixer Grinder 500W | Mixie For Kitchen With Nutri-Pro Features | 3 SS Mixer Jars For Heavy Duty Grinding | Adjustable Speed Control | Multifunctional Blade System | 2 Yr Warranty', 'Default', 'Free Size', '', 399.00, 2299.00, '', '/images/products/4_1.jpg', '/images/products/4_2.jpg', '/images/products/4_3.jpg', '/images/products/4_4.jpg', '/images/products/4_5.jpg', 'Appliances', '', 4, 1, '2026-06-16 17:09:40'),
(5, 'Teal Mock Layer kurta, Orange Parallel Pants And Dupatta Set', 'Default', 'Free Size', '', 179.00, 2199.00, '', '/images/products/5_1.jpg', '/images/products/5_2.jpg', '/images/products/5_3.jpg', '/images/products/5_4.jpg', '/images/products/5_5.jpg', 'kurtis', '', 6, 1, '2026-06-16 17:09:40'),
(6, 'Pigeon Healthifry Digital Air Fryer, 360° High Speed Air Circulation Technology 1200 W with Non-Stick 4.2 L Basket - Green', 'Default', 'Free Size', '', 391.00, 2699.00, '', '/images/products/6_1.jpg', '/images/products/6_2.jpg', '/images/products/6_3.jpg', '/images/products/6_4.jpg', '/images/products/6_5.jpg', 'Appliances', '', 7, 1, '2026-06-16 17:09:40'),
(7, 'Skechers Aero Spark', 'Default', 'Free Size', '', 411.00, 6799.00, '', '/images/products/7_1.jpg', '/images/products/7_2.jpg', '/images/products/7_3.jpg', '/images/products/7_4.jpg', '/images/products/7_5.jpg', 'Shoes', '', 8, 1, '2026-06-16 17:09:40'),
(8, 'Premium Leatherette Office Chair for Work | 3-Years Warranty | Boss Chair for Office, Ergonomic Executive Chair, Cushioned Arms & Seat, Leg Rest, Heavy Duty Metal Base (Burgundy)', 'Default', 'Free Size', '', 399.00, 19999.00, '', '/images/products/8_1.jpg', '/images/products/8_2.jpg', '/images/products/8_3.jpg', '/images/products/8_4.jpg', '', 'Furniture', '', 9, 1, '2026-06-16 17:09:40'),
(9, 'Nothing Phone (2a) Plus 5G (Black, 12GB RAM + 256GB Storage)', 'Default', 'Free Size', '', 599.00, 21999.00, '', '/images/products/9_1.jpg', '', '', '', '', 'Mobile', '', 10, 1, '2026-06-16 17:09:40'),
(10, '20Kg Atta, 5Kg Sugar, 1Kg Besan, 5L Fortune Oil : Combo of 4', 'Default', 'Free Size', '', 499.00, 2999.00, '', '/images/products/10_1.jpg', '', '', '', '', 'Grocery', '', 11, 1, '2026-06-16 17:09:40'),
(11, 'Skechers GO WALK ARCH FIT 2.0 - IDYLLI', 'Default', 'Free Size', '', 411.00, 6499.00, '', '/images/products/11_1.jpg', '/images/products/11_2.jpg', '', '', '', 'Shoes', '', 12, 1, '2026-06-16 17:09:41'),
(12, 'NutriPro Juicer Mixer Grinder - Smoothie Maker - 500 Watts (2 Jar, Silver) - 2 Year Warranty', 'Default', 'Free Size', '', 389.00, 6899.00, '', '/images/products/12_1.jpg', '/images/products/12_2.jpg', '/images/products/12_3.jpg', '/images/products/12_4.jpg', '/images/products/12_5.jpg', 'Appliances', '', 13, 1, '2026-06-16 17:09:41'),
(13, 'boAt Aavante Bar A2060 Dolby  ', 'Default', 'Free Size', '', 389.00, 9999.00, '', '/images/products/13_1.jpg', '/images/products/13_2.jpg', '/images/products/13_3.jpg', '/images/products/13_4.jpg', '/images/products/13_5.jpg', 'Electronics', '', 14, 1, '2026-06-16 17:09:41'),
(14, 'Samsung 183 L, 4 Star, Digital Inverter, Direct-Cool Single Door Refrigerator (RR20C1824CR/HL, Red, Camellia Purple, Base Stand Drawer)', 'Default', 'Free Size', '', 393.00, 16449.00, '', '/images/products/14_1.jpg', '/images/products/14_2.jpg', '/images/products/14_3.jpg', '/images/products/14_4.jpg', '/images/products/14_5.jpg', 'Appliances', '', 16, 1, '2026-06-16 17:09:41'),
(15, 'Crocs Unisex-Adult Bayaband ClogClogs', 'Default', 'Free Size', '', 393.00, 3699.00, '', '/images/products/15_1.jpg', '/images/products/15_2.jpg', '/images/products/15_3.jpg', '/images/products/15_4.jpg', '', 'crocs', '', 17, 1, '2026-06-16 17:09:41'),
(16, 'Samsung 138 cm (55 inches) Vision AI 4K Ultra HD Smart QLED TV QA55QEF1AULXL', 'Default', 'Free Size', '', 393.00, 53990.00, '', '/images/products/16_1.jpg', '/images/products/16_2.jpg', '/images/products/16_3.jpg', '/images/products/16_4.jpg', '/images/products/16_5.jpg', 'Electronics', '', 18, 1, '2026-06-16 17:09:41'),
(17, 'NutriPro Juicer Mixer Grinder - Smoothie Maker - 500 Watts (2 Jars & 1 Blade, Silver) - 2 Year Warranty', 'Default', 'Free Size', '', 389.00, 1599.00, '', '/images/products/17_1.jpg', '/images/products/17_2.jpg', '/images/products/17_3.jpg', '/images/products/17_4.jpg', '/images/products/17_5.jpg', 'Appliances', '', 19, 1, '2026-06-16 17:09:41'),
(18, 'Crocs Unisex-Adult Bayaband ClogClogs', 'Default', 'Free Size', '', 399.00, 3299.00, '', '/images/products/18_1.jpg', '/images/products/18_2.jpg', '/images/products/18_3.jpg', '/images/products/18_4.jpg', '/images/products/18_5.jpg', 'crocs', '', 20, 1, '2026-06-16 17:09:41'),
(19, 'Atomberg Zenova Mixer Grinder | Unique Coarse Mode for Silbatta-like Texture | Intelligent BLDC Motor | Safety Features | 4 Jars including Chopper | Hands-Free Operation (Red Wine)', 'Default', 'Free Size', '', 411.00, 6999.00, '', '/images/products/19_1.jpg', '/images/products/19_2.jpg', '/images/products/19_3.jpg', '/images/products/19_4.jpg', '/images/products/19_5.jpg', 'Appliances', '', 21, 1, '2026-06-16 17:09:41'),
(20, '(4KG - 1Kg*4) Organic Purify Dry Fruits Combo Pack of 4 - (Almonds, Cashews, Pistachios, Raisins) - Healthy Dry Fruit Snacks | Tasty & Delicious, Rich in Protein | High in Protein, Fiber & Boost Immunity | Real Nuts | Gluten-Free | Super Healthy Nuts', 'Default', 'Free Size', '', 289.00, 1999.00, '', '/images/products/20_1.jpg', '/images/products/20_2.jpg', '/images/products/20_3.jpg', '/images/products/20_4.jpg', '/images/products/20_5.jpg', 'Grocery', '', 22, 1, '2026-06-16 17:09:41'),
(21, 'boAt Aavante Bar 5500DA', 'Default', 'Free Size', '', 399.00, 17999.00, '', '/images/products/21_1.jpg', '/images/products/21_2.jpg', '/images/products/21_3.jpg', '/images/products/21_4.jpg', '/images/products/21_5.jpg', 'Electronics', '', 23, 1, '2026-06-16 17:09:41'),
(22, 'Butterfly Smart 2 Burner Glass Top Gas Stove | Manual Ignition | Scratch Resistant Toughened Glass | Brass Burners | Skid-proof Legs | 1 Year Manufacturer\'s Warranty | Black', 'Default', 'Free Size', '', 411.00, 2599.00, '', '/images/products/22_1.jpg', '/images/products/22_2.jpg', '/images/products/22_3.jpg', '/images/products/22_4.jpg', '/images/products/22_5.jpg', 'Appliances', '', 24, 1, '2026-06-16 17:09:41'),
(23, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 389.00, 6995.00, '', '/images/products/23_1.jpg', '/images/products/23_2.jpg', '/images/products/23_3.jpg', '/images/products/23_4.jpg', '/images/products/23_5.jpg', 'crocs', '', 25, 1, '2026-06-16 17:09:41'),
(24, 'Royal Interiors 3 Seater Foldable Sofa with Cushion and Armrests | Compact Sleeper Couch for Small Spaces | Sleeper Sofa for Living Room, Bedroom | Convertible Tri-Fold Sofa Cum Bed (Blue)', 'Default', 'Free Size', '', 391.00, 19999.00, '', '/images/products/24_1.jpg', '/images/products/24_2.jpg', '/images/products/24_3.jpg', '/images/products/24_4.jpg', '/images/products/24_5.jpg', 'Furniture', '', 26, 1, '2026-06-16 17:09:41'),
(25, 'Sleepyhead Kiki - 2 Seater Sofa (Fabric, Lava Orange) 2 Person Sofa', 'Default', 'Free Size', '', 391.00, 31999.00, '', '/images/products/25_1.jpg', '/images/products/25_2.jpg', '/images/products/25_3.jpg', '/images/products/25_4.jpg', '/images/products/25_5.jpg', 'Furniture', '', 28, 1, '2026-06-16 17:09:41'),
(26, 'Wicker Rattan Wrought Iron Single Seater Swing Chair Stand For Adults|Garden & Outdoor Hammock Swing Cushions For Kids|Teardrop Swing Hanging Chair W/ Curve Stand|Jhula-114.3 Cm,25.5 Cm,50\"', 'Default', 'Free Size', '', 391.00, 9999.00, '', '/images/products/26_1.jpg', '/images/products/26_2.jpg', '/images/products/26_3.jpg', '/images/products/26_4.jpg', '', 'Furniture', '', 29, 1, '2026-06-16 17:09:41'),
(27, 'boAt Aavante Bar Quake Pro, 240W Signature Sound, 2.1CH, Wireless Subwoofer, BT v5.3, Multiple Ports, Bass & Treble Controls, Bluetooth Sound bar, Home Theatre Soundbar Speaker (Premium Black)', 'Default', 'Free Size', '', 391.00, 9999.00, '', '/images/products/27_1.jpg', '/images/products/27_2.jpg', '/images/products/27_3.jpg', '/images/products/27_4.jpg', '/images/products/27_5.jpg', 'Electronics', '', 30, 1, '2026-06-16 17:09:41'),
(28, '15 Kg Tirupati Cottonseed Oil Tin', 'Default', 'Free Size', '', 349.00, 2425.00, '', '/images/products/28_1.jpg', '/images/products/28_2.jpg', '/images/products/28_3.jpg', '/images/products/28_4.jpg', '', 'Grocery', '', 31, 1, '2026-06-16 17:09:41'),
(29, 'Gaming & Office Chair| Premium Spandex & PU Leather Fabric | Adjustable Neck, Lumbar Pillow | 4D Adjustable Armrests (Black Blue)', 'Default', 'Free Size', '', 449.00, 19999.00, '', '/images/products/29_1.jpg', '/images/products/29_2.jpg', '/images/products/29_3.jpg', '/images/products/29_4.jpg', '/images/products/29_5.jpg', 'Furniture', '', 32, 1, '2026-06-16 17:09:41'),
(30, '5 Kg Daawat Biryani Basmati Rice | World s Longest Rice Grain expands 24mm* | Tasty, Non-sticky & Rich Aroma |Naturally Aged', 'Default', 'Free Size', '', 237.00, 1028.00, '', '/images/products/30_1.jpg', '/images/products/30_2.jpg', '/images/products/30_3.jpg', '/images/products/30_4.jpg', '/images/products/30_5.jpg', 'Grocery', '', 33, 1, '2026-06-16 17:09:41'),
(31, 'Peachtree Butterfly 1 Seater Chair for Living Room, Mango Wooden Frame & Sheesham Wood Leg | Velvet Fabric Chair for Dining Room | Single Seater Chair | No Armstyle |1 Year Warrranty (Set of 2, Green)', 'Default', 'Free Size', '', 399.00, 25599.00, '', '/images/products/31_1.jpg', '/images/products/31_2.jpg', '/images/products/31_3.jpg', '/images/products/31_4.jpg', '/images/products/31_5.jpg', 'Furniture', '', 34, 1, '2026-06-16 17:09:40'),
(32, 'Oppo K12x 5G Smartphone (8GB RAM + 256GB Storage) | 16.94cm LCD Display, 5100mAh Battery | 45W SUPERVOOC Flash Charge | 360° Damage-Proof Armour Body | Charger in The Box (Feather Pink)', 'Default', 'Free Size', '', 499.00, 16499.00, '', '/images/products/32_1.jpg', '/images/products/32_2.jpg', '/images/products/32_3.jpg', '/images/products/32_4.jpg', '/images/products/32_5.jpg', 'Mobile', '', 35, 1, '2026-06-16 17:09:40'),
(33, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 411.00, 3499.00, '', '/images/products/33_1.jpg', '/images/products/33_2.jpg', '/images/products/33_3.jpg', '/images/products/33_4.jpg', '/images/products/33_5.jpg', 'crocs', '', 36, 1, '2026-06-16 17:09:40'),
(34, 'Bharat Lifestyle Austin Manual Recliner | 1 Seater Chair Sofa | Single Sofa Recliner| 3 Comfort Position | Wooden Frame | Suede Fabric | 1 Seater Recliner for Living Room Bedroom,1 Year Warranty, Grey', 'Default', 'Free Size', '', 389.00, 8999.00, '', '/images/products/34_1.jpg', '/images/products/34_2.jpg', '/images/products/34_3.jpg', '/images/products/34_4.jpg', '/images/products/34_5.jpg', 'Furniture', '', 37, 1, '2026-06-16 17:09:40'),
(35, 'Skechers D\'LUX WALKER 2.0-NEON SITES', 'Default', 'Free Size', '', 399.00, 6799.00, '', '/images/products/35_1.jpg', '/images/products/35_2.jpg', '/images/products/35_3.jpg', '/images/products/35_4.jpg', '/images/products/35_5.jpg', 'Shoes', '', 38, 1, '2026-06-16 17:09:40'),
(36, 'Skechers GO RUN RIDE 11', 'Default', 'Free Size', '', 399.00, 6999.00, '', '/images/products/36_1.jpg', '/images/products/36_2.jpg', '/images/products/36_3.jpg', '/images/products/36_4.jpg', '/images/products/36_5.jpg', 'Shoes', '', 39, 1, '2026-06-16 17:09:40'),
(37, 'Skechers GO WALK Max Cushioning Arch Fit - Haptic', 'Default', 'Free Size', '', 379.00, 8199.00, '', '/images/products/37_1.jpg', '/images/products/37_2.jpg', '/images/products/37_3.jpg', '/images/products/37_4.jpg', '/images/products/37_5.jpg', 'Shoes', '', 40, 1, '2026-06-16 17:09:40'),
(38, 'Butterfly Renz 3 Burner 3 Star Glass Top Gas Stove | Fan shield | Leak Proof European Valve | Rust Resistant Frame | Patented Lift Lock | 8mm Tempered Designer Glass | 2 Years Product Warranty', 'Default', 'Free Size', '', 389.00, 7999.00, '', '/images/products/38_1.jpg', '/images/products/38_2.jpg', '/images/products/38_3.jpg', '/images/products/38_4.jpg', '/images/products/38_5.jpg', 'Appliances', '', 41, 1, '2026-06-16 17:09:40'),
(39, 'Butterfly Rapid - 4J / Rapid 750 W Juicer Mixer Grinder (4 Jars, Black)', 'Default', 'Free Size', '', 399.00, 3999.00, '', '/images/products/39_1.jpg', '/images/products/39_2.jpg', '/images/products/39_3.jpg', '/images/products/39_4.jpg', '', 'Appliances', '', 42, 1, '2026-06-16 17:09:40'),
(40, 'Crocs Unisex-Adult Bayaband ClogClogs', 'Default', 'Free Size', '', 389.00, 6799.00, '', '/images/products/40_1.jpg', '/images/products/40_2.jpg', '/images/products/40_3.jpg', '/images/products/40_4.jpg', '', 'crocs', '', 43, 1, '2026-06-16 17:09:40'),
(41, 'Lifelong Mixer Grinder for Kitchen - 3 Jars 500 Watt Mixie - Chutney Jar, Dry Grinder Jar & Liquidizing Jar used as Wet Grinder & Blender for Milkshake, Smoothie, Puree -Stainless Steel Blades(LLMG23)', 'Default', 'Free Size', '', 349.00, 7999.00, '', '/images/products/41_1.jpg', '/images/products/41_2.jpg', '/images/products/41_3.jpg', '/images/products/41_4.jpg', '/images/products/41_5.jpg', 'Appliances', '', 44, 1, '2026-06-16 17:09:40'),
(42, 'crocs Unisex-Adult Clog Duet Max Clog', 'Default', 'Free Size', '', 399.00, 2396.00, '', '/images/products/42_1.jpg', '/images/products/42_2.jpg', '/images/products/42_3.jpg', '/images/products/42_4.jpg', '/images/products/42_5.jpg', 'crocs', '', 45, 1, '2026-06-16 17:09:40'),
(43, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 389.00, 6399.00, '', '/images/products/43_1.jpg', '/images/products/43_2.jpg', '/images/products/43_3.jpg', '/images/products/43_4.jpg', '/images/products/43_5.jpg', 'crocs', '', 46, 1, '2026-06-16 17:09:40'),
(44, 'VIVO V30 Pro 5G Smartphone, 12GB RAM, 512GB Storage, Andaman Blue', 'Default', 'Free Size', '', 499.00, 39800.00, '', '/images/products/44_1.jpg', '/images/products/44_2.jpg', '/images/products/44_3.jpg', '/images/products/44_4.jpg', '/images/products/44_5.jpg', 'Mobile', '', 47, 1, '2026-06-16 17:09:40'),
(45, 'OnePlus Nord 5 | Snapdragon 8s Gen 3 | Stable 144FPS Gaming | Dual 50MP Flagship Camera | Powered by OnePlus AI | 8GB + 256GB | Dry Ice', 'Default', 'Free Size', '', 599.00, 21999.00, '', '/images/products/45_1.jpg', '/images/products/45_2.jpg', '/images/products/45_3.jpg', '/images/products/45_4.jpg', '/images/products/45_5.jpg', 'Mobile', '', 48, 1, '2026-06-16 17:09:40'),
(46, 'Low Carbon Steel 3 Seater Garden Swing Seat Outdoor Canopy Cushioned Bench- Brown, 127 Centimeters, 188 Centimeters', 'Default', 'Free Size', '', 389.00, 25599.00, '', '/images/products/46_1.jpg', '/images/products/46_2.jpg', '/images/products/46_3.jpg', '/images/products/46_4.jpg', '', 'Furniture', '', 49, 1, '2026-06-16 17:09:40'),
(47, 'Lime Green Schiffli Embroidered Pure Cotton Flared Spaghetti Dress', 'Default', 'Free Size', '', 179.00, 1399.00, '', '/images/products/47_1.jpg', '/images/products/47_2.jpg', '/images/products/47_3.jpg', '/images/products/47_4.jpg', '/images/products/47_5.jpg', 'kurtis', '', 50, 1, '2026-06-16 17:09:40'),
(48, 'Lukzer 8 Shelves Modern Simple Engineered Wood Book Shelf with Storage Display Rack Open Bookcase Showcase Stand (MR-004/White/164 x 24 x 70 cm) DIY (Do It Yourself)', 'Default', 'Free Size', '', 399.00, 25599.00, '', '/images/products/48_1.jpg', '/images/products/48_2.jpg', '/images/products/48_3.jpg', '/images/products/48_4.jpg', '/images/products/48_5.jpg', 'Furniture', '', 51, 1, '2026-06-16 17:09:40'),
(49, 'Aamna 100% Viscose Draped Shirt Dress', 'Default', 'Free Size', '', 259.00, 1999.00, '', '/images/products/49_1.jpg', '/images/products/49_2.jpg', '/images/products/49_3.jpg', '/images/products/49_4.jpg', '/images/products/49_5.jpg', 'Western Wear', '', 52, 1, '2026-06-16 17:09:40'),
(50, 'Light Orange Stonework Satin Saree', 'Default', 'Free Size', '', 199.00, 1999.00, '', '/images/products/50_1.jpg', '/images/products/50_2.jpg', '/images/products/50_3.jpg', '/images/products/50_4.jpg', '/images/products/50_5.jpg', 'kurtis', '', 53, 1, '2026-06-16 17:09:40'),
(51, 'boAt Airdopes 800', 'Default', 'Free Size', '', 393.00, 1799.00, '', '/images/products/51_1.jpg', '/images/products/51_2.jpg', '/images/products/51_3.jpg', '/images/products/51_4.jpg', '/images/products/51_5.jpg', 'Electronics', '', 54, 1, '2026-06-16 17:09:40'),
(52, 'Leora 100% Cotton Gingham Front Tie-Up Bodycon Dress', 'Default', 'Free Size', '', 259.00, 2999.00, '', '/images/products/52_1.jpg', '/images/products/52_2.jpg', '/images/products/52_3.jpg', '/images/products/52_4.jpg', '/images/products/52_5.jpg', 'Western Wear', '', 55, 1, '2026-06-16 17:09:40'),
(53, 'Crocs Women\'s Sloane Glitter Wedge Clog', 'Default', 'Free Size', '', 379.00, 2489.00, '', '/images/products/53_1.jpg', '/images/products/53_2.jpg', '/images/products/53_3.jpg', '/images/products/53_4.jpg', '/images/products/53_5.jpg', 'crocs', '', 56, 1, '2026-06-16 17:09:40'),
(54, 'Black Printed Gathered Chiffon Kurta With Embroidery, Churidar And Dupatta Set', 'Default', 'Free Size', '', 179.00, 1289.00, '', '/images/products/54_1.jpg', '/images/products/54_2.jpg', '/images/products/54_3.jpg', '/images/products/54_4.jpg', '/images/products/54_5.jpg', 'kurtis', '', 57, 1, '2026-06-16 17:09:40'),
(55, '8Kg Tide Washing Powder, 2L Shampoo, 2x Colgate Combo, 4x Nivea Soap : Combo Deal', 'Default', 'Free Size', '', 389.00, 1299.00, '', '/images/products/55_1.jpg', '', '', '', '', 'Grocery', '', 58, 1, '2026-06-16 17:09:40'),
(56, '20Kg Chakki Atta : Combo of 2', 'Default', 'Free Size', '', 299.00, 999.00, '', '/images/products/56_1.jpg', '', '', '', '', 'Grocery', '', 59, 1, '2026-06-16 17:09:40'),
(57, 'Skechers Aero Tempo', 'Default', 'Free Size', '', 379.00, 6799.00, '', '/images/products/57_1.jpg', '/images/products/57_2.jpg', '/images/products/57_3.jpg', '/images/products/57_4.jpg', '/images/products/57_5.jpg', 'Shoes', '', 60, 1, '2026-06-16 17:09:40'),
(58, 'Crocs Unisex-Adult Bayaband ClogClogs', 'Default', 'Free Size', '', 391.00, 3799.00, '', '/images/products/58_1.jpg', '/images/products/58_2.jpg', '/images/products/58_3.jpg', '/images/products/58_4.jpg', '', 'crocs', '', 61, 1, '2026-06-16 17:09:40'),
(59, 'Lifelong LLMG23 Power Pro 500-Watt Mixer Grinder with 3 Jars (Liquidizing, Wet Grinding and Chutney Jar), Stainless Steel blades, 1 Year Warranty ', 'Default', 'Free Size', '', 399.00, 1599.00, '', '/images/products/59_1.jpg', '/images/products/59_2.jpg', '/images/products/59_3.jpg', '/images/products/59_4.jpg', '/images/products/59_5.jpg', 'Appliances', '', 62, 1, '2026-06-16 17:09:40'),
(60, 'Marvina 100% Cotton Shirt Dress', 'Default', 'Free Size', '', 259.00, 1499.00, '', '/images/products/60_1.jpg', '/images/products/60_2.jpg', '/images/products/60_3.jpg', '/images/products/60_4.jpg', '/images/products/60_5.jpg', 'Western Wear', '', 63, 1, '2026-06-16 17:09:40'),
(61, 'iQOO Z10 Lite 5G (Cyber Green, 6GB RAM, 128GB Storage) | 6000 mAh Battery | Dimensity 6300 5G Processor with 433K+* AnTuTu Score | IP64 Rated & Military Grade Shock-Resistance*', 'Default', 'Free Size', '', 599.00, 10999.00, '', '/images/products/61_1.jpg', '/images/products/61_2.jpg', '/images/products/61_3.jpg', '/images/products/61_4.jpg', '/images/products/61_5.jpg', 'Mobile', '', 64, 1, '2026-06-16 17:09:41'),
(62, 'Skechers Slip-ins Relaxed Fit: Arch Fit Garza - Langston', 'Default', 'Free Size', '', 389.00, 8199.00, '', '/images/products/62_1.jpg', '/images/products/62_2.jpg', '/images/products/62_3.jpg', '/images/products/62_4.jpg', '/images/products/62_5.jpg', 'Shoes', '', 65, 1, '2026-06-16 17:09:41'),
(63, 'Adidas ADILETTE LITE SLIDES', 'Default', 'Free Size', '', 391.00, 2990.00, '', '/images/products/63_1.jpg', '/images/products/63_2.jpg', '/images/products/63_3.jpg', '/images/products/63_4.jpg', '', 'crocs', '', 66, 1, '2026-06-16 17:09:41'),
(64, 'Skechers TRES-AIR UNO - AH - MAZING', 'Default', 'Free Size', '', 411.00, 7899.00, '', '/images/products/64_1.jpg', '/images/products/64_2.jpg', '/images/products/64_3.jpg', '/images/products/64_4.jpg', '/images/products/64_5.jpg', 'Shoes', '', 67, 1, '2026-06-16 17:09:41'),
(65, 'White Floral Printed Chiffon Tiered Flared Dress with Printed Cape', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/65_1.jpg', '/images/products/65_2.jpg', '/images/products/65_3.jpg', '/images/products/65_4.jpg', '/images/products/65_5.jpg', 'kurtis', '', 68, 1, '2026-06-16 17:09:41'),
(66, 'Skechers Slip-ins: BOBS Sun Ray - Bright Take', 'Default', 'Free Size', '', 411.00, 6799.00, '', '/images/products/66_1.jpg', '/images/products/66_2.jpg', '/images/products/66_3.jpg', '/images/products/66_4.jpg', '/images/products/66_5.jpg', 'crocs', '', 69, 1, '2026-06-16 17:09:41'),
(67, 'Adidas ADILETTE SLIDES', 'Default', 'Free Size', '', 391.00, 2499.00, '', '/images/products/67_1.jpg', '/images/products/67_2.jpg', '/images/products/67_3.jpg', '/images/products/67_4.jpg', '', 'crocs', '', 70, 1, '2026-06-16 17:09:41'),
(68, 'Noise Halo Plus 1.46\" Super AMOLED Display Elite Smart Watch, Bluetooth Calling, Stainless Steel Build, Always on Display, Upto 7 Days Battery (Elite Black)', 'Default', 'Free Size', '', 399.00, 3499.00, '', '/images/products/68_1.jpg', '/images/products/68_2.jpg', '/images/products/68_3.jpg', '/images/products/68_4.jpg', '/images/products/68_5.jpg', 'Electronics', '', 71, 1, '2026-06-16 17:09:41'),
(69, 'JD FRESH 4 Tier Foldable Plastic Rack for Storage/Kitchen Cupboard/Versatile and Sturdy Wardrobe for Clothes/Multipurpose Storage Organizer/Closet for Bedroom/Living Room/Laundry Room (Transparent)', 'Default', 'Free Size', '', 389.00, 25599.00, '', '/images/products/69_1.jpg', '/images/products/69_2.jpg', '/images/products/69_3.jpg', '/images/products/69_4.jpg', '/images/products/69_5.jpg', 'Furniture', '', 72, 1, '2026-06-16 17:09:41'),
(70, 'White and Green Geometric Printed Flared Spaghetti Dress and Gilet Set', 'Default', 'Free Size', '', 179.00, 1399.00, '', '/images/products/70_1.jpg', '/images/products/70_2.jpg', '/images/products/70_3.jpg', '/images/products/70_4.jpg', '/images/products/70_5.jpg', 'kurtis', '', 73, 1, '2026-06-16 17:09:41'),
(71, 'boAt Airdopes 170 Wireless Bluetooth', 'Default', 'Free Size', '', 391.00, 1599.00, '', '/images/products/71_1.jpg', '/images/products/71_2.jpg', '/images/products/71_3.jpg', '/images/products/71_4.jpg', '/images/products/71_5.jpg', 'Electronics', '', 74, 1, '2026-06-16 17:09:41');

INSERT INTO `tbl_product` (`id`, `name`, `color`, `size`, `storage`, `selling_price`, `mrp`, `features`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `keywords`, `disp_order`, `from_csv`, `created_at`) VALUES
(72, 'Brick Red Viscose Muslin Bandhani Print Kurta', 'Default', 'Free Size', '', 189.00, 2199.00, '', '/images/products/72_1.jpg', '/images/products/72_2.jpg', '/images/products/72_3.jpg', '/images/products/72_4.jpg', '/images/products/72_5.jpg', 'kurtis', '', 75, 1, '2026-06-16 17:09:41'),
(73, 'Sky Blue Floral Printed Pure Cotton Straight Kurta and Pants Co-ord Set', 'Default', 'Free Size', '', 189.00, 1599.00, '', '/images/products/73_1.jpg', '/images/products/73_2.jpg', '/images/products/73_3.jpg', '/images/products/73_4.jpg', '/images/products/73_5.jpg', 'kurtis', '', 76, 1, '2026-06-16 17:09:41'),
(74, 'Bottle Green Kashmiri Soft Raw Silk Saree', 'Default', 'Free Size', '', 179.00, 1399.00, '', '/images/products/74_1.jpg', '/images/products/74_2.jpg', '/images/products/74_3.jpg', '/images/products/74_4.jpg', '/images/products/74_5.jpg', 'kurtis', '', 77, 1, '2026-06-16 17:09:41'),
(75, 'FURNY Tressa 2 Seater Pull-Out Premium Fabric Sofa Cum Bed Sofa Set for Living Room (Sky Blue Fabric)', 'Default', 'Free Size', '', 389.00, 25599.00, '', '/images/products/75_1.jpg', '/images/products/75_2.jpg', '/images/products/75_3.jpg', '/images/products/75_4.jpg', '/images/products/75_5.jpg', 'Furniture', '', 78, 1, '2026-06-16 17:09:41'),
(76, 'FUREVER CRUSH SHOE', 'Default', 'Free Size', '', 399.00, 3599.00, '', '/images/products/76_1.jpg', '/images/products/76_2.jpg', '/images/products/76_3.jpg', '/images/products/76_4.jpg', '/images/products/76_5.jpg', 'crocs', '', 79, 1, '2026-06-16 17:09:41'),
(77, 'Outdoor Swings Jhula with Roof Hammock Chair - 3 Seater, High-Strength Iron, 350 kg Capacity, Black', 'Default', 'Free Size', '', 449.00, 9999.00, '', '/images/products/77_1.jpg', '/images/products/77_2.jpg', '/images/products/77_3.jpg', '/images/products/77_4.jpg', '', 'Furniture', '', 80, 1, '2026-06-16 17:09:41'),
(78, 'Pink Floral Printed Sleeveless Kurta & Pants Co-Ord Set', 'Default', 'Free Size', '', 149.00, 1289.00, '', '/images/products/78_1.jpg', '/images/products/78_2.jpg', '/images/products/78_3.jpg', '/images/products/78_4.jpg', '/images/products/78_5.jpg', 'kurtis', '', 81, 1, '2026-06-16 17:09:41'),
(79, 'Skechers D\'LUX WALKER 2.0-NEON SITES', 'Default', 'Free Size', '', 399.00, 7899.00, '', '/images/products/79_1.jpg', '/images/products/79_2.jpg', '/images/products/79_3.jpg', '/images/products/79_4.jpg', '/images/products/79_5.jpg', 'Shoes', '', 82, 1, '2026-06-16 17:09:41'),
(80, '2 Kg Premium Almonds : Combo of 2', 'Default', 'Free Size', '', 279.00, 999.00, '', '/images/products/80_1.jpg', '', '', '', '', 'Grocery', '', 83, 1, '2026-06-16 17:09:41'),
(81, '1000 ML TRESemme Keratin Smooth Shampoo With Keratin Protein and Argan Oil | Salon-Like Smooth Hair | Up To 72H Frizz Control', 'Default', 'Free Size', '', 249.00, 799.00, '', '/images/products/81_1.jpg', '/images/products/81_2.jpg', '/images/products/81_3.jpg', '/images/products/81_4.jpg', '/images/products/81_5.jpg', 'Grocery', '', 84, 1, '2026-06-16 17:09:40'),
(82, 'Skechers ARCH FIT 2.0 - BIG LEAGUE', 'Default', 'Free Size', '', 379.00, 7899.00, '', '/images/products/82_1.jpg', '/images/products/82_2.jpg', '/images/products/82_3.jpg', '/images/products/82_4.jpg', '/images/products/82_5.jpg', 'Shoes', '', 85, 1, '2026-06-16 17:09:40'),
(83, 'HI-Homes Modern Soft 3D Shaggy Fur Carpets for Living Room Thick Fluffy Rugs for Bedroom, 2x5 feet, Multi Color', 'Default', 'Free Size', '', 391.00, 8999.00, '', '/images/products/83_1.jpg', '/images/products/83_2.jpg', '/images/products/83_3.jpg', '/images/products/83_4.jpg', '/images/products/83_5.jpg', 'Furniture', '', 86, 1, '2026-06-16 17:09:40'),
(84, 'crocs womens Swiftwater Sandal W Sandal', 'Default', 'Free Size', '', 411.00, 2189.00, '', '/images/products/84_1.jpg', '/images/products/84_2.jpg', '/images/products/84_3.jpg', '/images/products/84_4.jpg', '/images/products/84_5.jpg', 'crocs', '', 87, 1, '2026-06-16 17:09:40'),
(85, 'Khaki Rohira Saree With Unstitched Blouse', 'Default', 'Free Size', '', 189.00, 1399.00, '', '/images/products/85_1.jpg', '/images/products/85_2.jpg', '/images/products/85_3.jpg', '/images/products/85_4.jpg', '/images/products/85_5.jpg', 'kurtis', '', 88, 1, '2026-06-16 17:09:40'),
(86, 'Crocs STOMP LINED CLOG', 'Default', 'Free Size', '', 379.00, 3499.00, '', '/images/products/86_1.jpg', '/images/products/86_2.jpg', '/images/products/86_3.jpg', '/images/products/86_4.jpg', '/images/products/86_5.jpg', 'crocs', '', 89, 1, '2026-06-16 17:09:40'),
(87, 'Big Pack - Cadbury Celebrations Premium Selections Chocolates Gift Pack 268 G & Happilo Natural Premium Californian Almonds, 200G, 468 Gram', 'Default', 'Free Size', '', 289.00, 899.00, '', '/images/products/87_1.jpg', '/images/products/87_2.jpg', '/images/products/87_3.jpg', '/images/products/87_4.jpg', '/images/products/87_5.jpg', 'Grocery', '', 90, 1, '2026-06-16 17:09:40'),
(88, 'Off White Cotton Solid V-Neck Lace Inserts A-Line Kurta With Front Pleats', 'Default', 'Free Size', '', 179.00, 2399.00, '', '/images/products/88_1.jpg', '/images/products/88_2.jpg', '/images/products/88_3.jpg', '/images/products/88_4.jpg', '/images/products/88_5.jpg', 'kurtis', '', 91, 1, '2026-06-16 17:09:40'),
(89, 'boAt Immortal 170', 'Default', 'Free Size', '', 399.00, 1849.00, '', '/images/products/89_1.jpg', '', '', '', '', 'Electronics', '', 92, 1, '2026-06-16 17:09:40'),
(90, 'Yellow Floral Printed Cotton Kurta And Pants Co-Ord Set', 'Default', 'Free Size', '', 179.00, 2199.00, '', '/images/products/90_1.jpg', '/images/products/90_2.jpg', '/images/products/90_3.jpg', '/images/products/90_4.jpg', '/images/products/90_5.jpg', 'kurtis', '', 93, 1, '2026-06-16 17:09:40'),
(91, '15 Kg | Tin Can | Maanu Cold Pressed Groundnut Peanuts Oil 15 Kg | Tin Can | Kolhu/Kacchi Ghani/Chekku/Ganuga | Peanut Oil | Natural | Chemical-Free | Cold Pressed Groundnut Oil for Cooking', 'Default', 'Free Size', '', 329.00, 4664.00, '', '/images/products/91_1.jpg', '/images/products/91_2.jpg', '/images/products/91_3.jpg', '/images/products/91_4.jpg', '/images/products/91_5.jpg', 'Grocery', '', 94, 1, '2026-06-16 17:09:40'),
(92, 'Kashmir Walnuts with Shell – 1kg | Fresh, Natural & Unprocessed Dry Fruits | Rich in Omega-3 | Boosts Brain & Heart Health', 'Default', 'Free Size', '', 199.00, 1199.00, '', '/images/products/92_1.jpg', '/images/products/92_2.jpg', '/images/products/92_3.jpg', '/images/products/92_4.jpg', '/images/products/92_5.jpg', 'Grocery', '', 95, 1, '2026-06-16 17:09:40'),
(93, 'Navy Blue Floral Embroidered Rayon Kurta', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/93_1.jpg', '/images/products/93_2.jpg', '/images/products/93_3.jpg', '/images/products/93_4.jpg', '/images/products/93_5.jpg', 'kurtis', '', 96, 1, '2026-06-16 17:09:40'),
(94, 'LEVI\'S X CROCS ALL TERRAIN CLOG', 'Default', 'Free Size', '', 393.00, 3499.00, '', '/images/products/94_1.jpg', '/images/products/94_2.jpg', '/images/products/94_3.jpg', '/images/products/94_4.jpg', '/images/products/94_5.jpg', 'crocs', '', 97, 1, '2026-06-16 17:09:40'),
(95, 'Skechers Aero Tempo', 'Default', 'Free Size', '', 391.00, 6799.00, '', '/images/products/95_1.jpg', '/images/products/95_2.jpg', '/images/products/95_3.jpg', '/images/products/95_4.jpg', '/images/products/95_5.jpg', 'Shoes', '', 98, 1, '2026-06-16 17:09:40'),
(96, 'Adidas ADILETTE SLIDES', 'Default', 'Free Size', '', 411.00, 2460.00, '', '/images/products/96_1.jpg', '/images/products/96_2.jpg', '/images/products/96_3.jpg', '/images/products/96_4.jpg', '', 'crocs', '', 99, 1, '2026-06-16 17:09:40'),
(97, 'Skechers SKX Aero Burst', 'Default', 'Free Size', '', 379.00, 6799.00, '', '/images/products/97_1.jpg', '/images/products/97_2.jpg', '/images/products/97_3.jpg', '/images/products/97_4.jpg', '/images/products/97_5.jpg', 'Shoes', '', 100, 1, '2026-06-16 17:09:40'),
(98, 'Crocs ALL-TERRAIN SANDAL', 'Default', 'Free Size', '', 411.00, 4566.00, '', '/images/products/98_1.jpg', '/images/products/98_2.jpg', '', '', '', 'crocs', '', 101, 1, '2026-06-16 17:09:40'),
(99, 'Dark Orange Floral Printed Kurta & Pants Co-Ord Set', 'Default', 'Free Size', '', 189.00, 1399.00, '', '/images/products/99_1.jpg', '/images/products/99_2.jpg', '/images/products/99_3.jpg', '/images/products/99_4.jpg', '/images/products/99_5.jpg', 'kurtis', '', 102, 1, '2026-06-16 17:09:40'),
(100, 'Rust Cotton Geometric Print Kurta With Tassels', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/100_1.jpg', '/images/products/100_2.jpg', '/images/products/100_3.jpg', '/images/products/100_4.jpg', '/images/products/100_5.jpg', 'kurtis', '', 103, 1, '2026-06-16 17:09:40'),
(101, 'Giftrend Corporate Gift Hamper with Chocolates & Dry Fruits for Staff, Colleagues, and Clients', 'Default', 'Free Size', '', 349.00, 3199.00, '', '/images/products/101_1.jpg', '/images/products/101_2.jpg', '/images/products/101_3.jpg', '/images/products/101_4.jpg', '/images/products/101_5.jpg', 'Grocery', '', 104, 1, '2026-06-16 17:09:43'),
(102, 'Black Kalamkari Printed Straight Cotton Voile Kurta And Straight Pants Set', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/102_1.jpg', '/images/products/102_2.jpg', '/images/products/102_3.jpg', '/images/products/102_4.jpg', '/images/products/102_5.jpg', 'kurtis', '', 105, 1, '2026-06-16 17:09:43'),
(103, 'Olive Rayon Botanical Printed Kurta With Mirror Work', 'Default', 'Free Size', '', 189.00, 2199.00, '', '/images/products/103_1.jpg', '/images/products/103_2.jpg', '/images/products/103_3.jpg', '/images/products/103_4.jpg', '/images/products/103_5.jpg', 'kurtis', '', 106, 1, '2026-06-16 17:09:43'),
(104, 'Skechers GO RUN RIDE 11', 'Default', 'Free Size', '', 411.00, 6999.00, '', '/images/products/104_1.jpg', '/images/products/104_2.jpg', '/images/products/104_3.jpg', '/images/products/104_4.jpg', '/images/products/104_5.jpg', 'Shoes', '', 107, 1, '2026-06-16 17:09:43'),
(105, 'Skechers GO RUN 400-INTREPID', 'Default', 'Free Size', '', 391.00, 6999.00, '', '/images/products/105_1.jpg', '/images/products/105_2.jpg', '/images/products/105_3.jpg', '/images/products/105_4.jpg', '/images/products/105_5.jpg', 'Shoes', '', 108, 1, '2026-06-16 17:09:43'),
(106, 'Blue Embellished Kurta, Pants And Jacquard Dupatta Set', 'Default', 'Free Size', '', 179.00, 1599.00, '', '/images/products/106_1.jpg', '/images/products/106_2.jpg', '/images/products/106_3.jpg', '/images/products/106_4.jpg', '/images/products/106_5.jpg', 'kurtis', '', 109, 1, '2026-06-16 17:09:43'),
(107, 'Nothing Phone (1) 5G (Black, 12GB RAM, 256GB Storage) | 6.55 inch 120Hz OLED Display | 50MP+50MP | 16MP Front Camera | Qualcomm Snapdragon 778G+ Processor | Incredible Wireless Charging', 'Default', 'Free Size', '', 599.00, 21999.00, '', '/images/products/107_1.jpg', '/images/products/107_2.jpg', '/images/products/107_3.jpg', '', '', 'Mobile', '', 110, 1, '2026-06-16 17:09:43'),
(108, 'Off White Cotton Contrast Printed V-Neck A-Line Kurta', 'Default', 'Free Size', '', 149.00, 1999.00, '', '/images/products/108_1.jpg', '/images/products/108_2.jpg', '/images/products/108_3.jpg', '/images/products/108_4.jpg', '/images/products/108_5.jpg', 'kurtis', '', 111, 1, '2026-06-16 17:09:43'),
(109, 'crocs Unisex-Adult Baya Clog Clog', 'Default', 'Free Size', '', 393.00, 2689.00, '', '/images/products/109_1.jpg', '/images/products/109_2.jpg', '/images/products/109_3.jpg', '/images/products/109_4.jpg', '/images/products/109_5.jpg', 'crocs', '', 112, 1, '2026-06-16 17:09:43'),
(110, 'Meggi Family Pack, TaTa Tea Gold, McCalm Smiles, Good Day Mega Family Pack, Bru Cofee : Combo of 5', 'Default', 'Free Size', '', 299.00, 1299.00, '', '/images/products/110_1.jpg', '', '', '', '', 'Grocery', '', 113, 1, '2026-06-16 17:09:43'),
(111, 'Bosch TrueMixx Pro Mixer Grinder, 1000W 4 Jars Black MGM8842MIN', 'Default', 'Free Size', '', 349.00, 9000.00, '', '/images/products/111_1.jpg', '/images/products/111_2.jpg', '/images/products/111_3.jpg', '/images/products/111_4.jpg', '/images/products/111_5.jpg', 'Appliances', '', 114, 1, '2026-06-16 17:09:44'),
(112, '5L Fortune Oil, 5Kg Sugar, 5Kg Basmati Rice : Combo of 3', 'Default', 'Free Size', '', 499.00, 2499.00, '', '/images/products/112_1.jpg', '', '', '', '', 'Grocery', '', 115, 1, '2026-06-16 17:09:44'),
(113, 'Samsung Galaxy S24 Ultra 5G AI Smartphone with Galaxy AI (Titanium Gray, 12GB, 256GB Storage), Snapdragon 8 Gen 3, 200 MP Camera with ProVisual Engine and 5000mAh Battery', 'Default', 'Free Size', '', 599.00, 49999.00, '', '/images/products/113_1.jpg', '/images/products/113_2.jpg', '/images/products/113_3.jpg', '/images/products/113_4.jpg', '/images/products/113_5.jpg', 'Mobile', '', 116, 1, '2026-06-16 17:09:44'),
(114, 'Mango & Multi Waterfall Saree', 'Default', 'Free Size', '', 179.00, 1999.00, '', '/images/products/114_1.jpg', '/images/products/114_2.jpg', '/images/products/114_3.jpg', '/images/products/114_4.jpg', '/images/products/114_5.jpg', 'kurtis', '', 117, 1, '2026-06-16 17:09:44'),
(115, 'FUREVER CRUSH SHOE', 'Default', 'Free Size', '', 411.00, 3199.00, '', '/images/products/115_1.jpg', '/images/products/115_2.jpg', '/images/products/115_3.jpg', '/images/products/115_4.jpg', '/images/products/115_5.jpg', 'crocs', '', 118, 1, '2026-06-16 17:09:44'),
(116, 'Solid Maroon Cowl Neck Sleeveless Zipper-Up Tulip Hem Pleated Bodycon Mini Dress', 'Default', 'Free Size', '', 259.00, 2999.00, '', '/images/products/116_1.jpg', '/images/products/116_2.jpg', '/images/products/116_3.jpg', '/images/products/116_4.jpg', '/images/products/116_5.jpg', 'Western Wear', '', 119, 1, '2026-06-16 17:09:44'),
(117, 'Off-White Vibrant Floral Printed Pure Cotton Flared Spaghetti Dress', 'Default', 'Free Size', '', 199.00, 2399.00, '', '/images/products/117_1.jpg', '/images/products/117_2.jpg', '/images/products/117_3.jpg', '/images/products/117_4.jpg', '/images/products/117_5.jpg', 'kurtis', '', 120, 1, '2026-06-16 17:09:44'),
(118, 'Beige Linen Botanical Print Kurta', 'Default', 'Free Size', '', 179.00, 1599.00, '', '/images/products/118_1.jpg', '/images/products/118_2.jpg', '/images/products/118_3.jpg', '/images/products/118_4.jpg', '/images/products/118_5.jpg', 'kurtis', '', 121, 1, '2026-06-16 17:09:44'),
(119, 'White Floral Summer Vacay Dress', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/119_1.jpg', '/images/products/119_2.jpg', '/images/products/119_3.jpg', '/images/products/119_4.jpg', '/images/products/119_5.jpg', 'kurtis', '', 122, 1, '2026-06-16 17:09:44'),
(120, 'Adidas ADILETTE LITE SLIDES', 'Default', 'Free Size', '', 393.00, 2990.00, '', '/images/products/120_1.jpg', '/images/products/120_2.jpg', '/images/products/120_3.jpg', '/images/products/120_4.jpg', '', 'crocs', '', 123, 1, '2026-06-16 17:09:44'),
(121, 'Teal Cotton Blend Abstract Print Kurta', 'Default', 'Free Size', '', 149.00, 1999.00, '', '/images/products/121_1.jpg', '/images/products/121_2.jpg', '/images/products/121_3.jpg', '/images/products/121_4.jpg', '/images/products/121_5.jpg', 'kurtis', '', 124, 1, '2026-06-16 17:09:43'),
(122, 'The Attic Jodhpur Carving Wardrobe|Solid Wood Multiple Utility Storage| Clothes Organizer|Wardrobe for Clothes Wooden, almirah for Clothes Wooden|Natural + White Matte Finish', 'Default', 'Free Size', '', 411.00, 8999.00, '', '/images/products/122_1.jpg', '/images/products/122_2.jpg', '/images/products/122_3.jpg', '/images/products/122_4.jpg', '/images/products/122_5.jpg', 'Furniture', '', 125, 1, '2026-06-16 17:09:43'),
(123, 'Puma Unisex Brand Logo Printed Sliders', 'Default', 'Free Size', '', 379.00, 2499.00, '', '/images/products/123_1.jpg', '/images/products/123_2.jpg', '/images/products/123_3.jpg', '/images/products/123_4.jpg', '', 'crocs', '', 126, 1, '2026-06-16 17:09:43'),
(124, 'Hanging Swing Chair for Balcony & Living Room | Handwoven Cane Hammock Zula for Adults | Indoor Outdoor Single Seater Jhula | Handmade Rattan Swing Chair (91x46x91 cm)', 'Default', 'Free Size', '', 449.00, 21499.00, '', '/images/products/124_1.jpg', '/images/products/124_2.jpg', '/images/products/124_3.jpg', '/images/products/124_4.jpg', '/images/products/124_5.jpg', 'Furniture', '', 127, 1, '2026-06-16 17:09:43'),
(125, 'Floral Printed Flared Polyester Dress', 'Default', 'Free Size', '', 149.00, 2399.00, '', '/images/products/125_1.jpg', '/images/products/125_2.jpg', '/images/products/125_3.jpg', '/images/products/125_4.jpg', '/images/products/125_5.jpg', 'kurtis', '', 128, 1, '2026-06-16 17:09:43'),
(126, 'boAt Rockerz 600 KKR Edition', 'Default', 'Free Size', '', 399.00, 2499.00, '', '/images/products/126_1.jpg', '/images/products/126_2.jpg', '/images/products/126_3.jpg', '/images/products/126_4.jpg', '/images/products/126_5.jpg', 'Electronics', '', 129, 1, '2026-06-16 17:09:43'),
(127, 'Violet Zariwork (Silver) Chiffon Saree', 'Default', 'Free Size', '', 179.00, 2399.00, '', '/images/products/127_1.jpg', '/images/products/127_2.jpg', '/images/products/127_3.jpg', '/images/products/127_4.jpg', '/images/products/127_5.jpg', 'kurtis', '', 130, 1, '2026-06-16 17:09:43'),
(128, 'Light Blue Paisley Printed kurta Co-Ord Set', 'Default', 'Free Size', '', 179.00, 2399.00, '', '/images/products/128_1.jpg', '/images/products/128_2.jpg', '/images/products/128_3.jpg', '/images/products/128_4.jpg', '/images/products/128_5.jpg', 'kurtis', '', 131, 1, '2026-06-16 17:09:43'),
(129, 'Crocs Unisex-Adult Bayaband ClogClogs', 'Default', 'Free Size', '', 391.00, 6499.00, '', '/images/products/129_1.jpg', '/images/products/129_2.jpg', '/images/products/129_3.jpg', '/images/products/129_4.jpg', '', 'crocs', '', 132, 1, '2026-06-16 17:09:43'),
(130, 'Philips HL7756/01 750 Watt Mixer Grinder, 3 Stainless Steel Multipurpose Jars with 3 Speed Control and Pulse function (Black)', 'Default', 'Free Size', '', 349.00, 9000.00, '', '/images/products/130_1.jpg', '/images/products/130_2.jpg', '/images/products/130_3.jpg', '/images/products/130_4.jpg', '/images/products/130_5.jpg', 'Appliances', '', 133, 1, '2026-06-16 17:09:43'),
(131, 'JBL Tune 510BT, On Ear Wireless Headphones with Mic, up to 40 Hours Playtime', 'Default', 'Free Size', '', 379.00, 2799.00, '', '/images/products/131_1.jpg', '/images/products/131_2.jpg', '/images/products/131_3.jpg', '/images/products/131_4.jpg', '/images/products/131_5.jpg', 'Electronics', '', 134, 1, '2026-06-16 17:09:42'),
(132, 'Adidas ADILETTE SHOWER SLIDES', 'Default', 'Free Size', '', 393.00, 2460.00, '', '/images/products/132_1.jpg', '/images/products/132_2.jpg', '/images/products/132_3.jpg', '/images/products/132_4.jpg', '', 'crocs', '', 135, 1, '2026-06-16 17:09:42'),
(133, 'SleepyHug FoldPRO Sofa-Cum-Bed | 3-in-1 Convertible Sofa, Lounger & Bed | TouchSense Technology | HR Foam | Lightweight | 3-Seater | Double Bed | Without Pillow | Grey, 1-Year Warranty', 'Default', 'Free Size', '', 449.00, 8999.00, '', '/images/products/133_1.jpg', '/images/products/133_2.jpg', '/images/products/133_3.jpg', '/images/products/133_4.jpg', '/images/products/133_5.jpg', 'Furniture', '', 136, 1, '2026-06-16 17:09:42'),
(134, 'Almonds, Cashews, Walnut, Black Raisins, Fig - Healthy Dry Fruit Snacks | Tasty & Delicious, Rich in Protein | High in Protein, Fiber & Boost Immunity | Real Nuts | Gluten-Free | Super Healthy Nuts - Combo Pack of 5 KG', 'Default', 'Free Size', '', 349.00, 3999.00, '', '/images/products/134_1.jpg', '', '', '', '', 'Grocery', '', 137, 1, '2026-06-16 17:09:42'),
(135, '5 Litre Jar + Free 1 Litre Pouch Saffola Gold Refined Cooking oil | Blended of Rice Bran & Sunflower oil', 'Default', 'Free Size', '', 239.00, 1199.00, '', '/images/products/135_1.jpg', '/images/products/135_2.jpg', '/images/products/135_3.jpg', '/images/products/135_4.jpg', '/images/products/135_5.jpg', 'Grocery', '', 138, 1, '2026-06-16 17:09:42'),
(136, 'boAt Chrome Horizon', 'Default', 'Free Size', '', 379.00, 3599.00, '', '/images/products/136_1.jpg', '/images/products/136_2.jpg', '/images/products/136_3.jpg', '/images/products/136_4.jpg', '/images/products/136_5.jpg', 'Electronics', '', 139, 1, '2026-06-16 17:09:42'),
(137, 'Crompton DS 500 BLK 500-Watt Mixer Grinder with Powertron Motor & Motor Vent-X Technology (3 Stainless Steel Jars, Black & Grey)', 'Default', 'Free Size', '', 349.00, 9000.00, '', '/images/products/137_1.jpg', '/images/products/137_2.jpg', '/images/products/137_3.jpg', '/images/products/137_4.jpg', '/images/products/137_5.jpg', 'Appliances', '', 140, 1, '2026-06-16 17:09:42'),
(138, 'Skechers GO WALK ARCH FIT 2.0 - IDYLLI', 'Default', 'Free Size', '', 411.00, 6799.00, '', '/images/products/138_1.jpg', '/images/products/138_2.jpg', '/images/products/138_3.jpg', '/images/products/138_4.jpg', '/images/products/138_5.jpg', 'Shoes', '', 141, 1, '2026-06-16 17:09:42'),
(139, 'Fortune Oil, Aashirvaad Atta, India Gate Rozana, Madhur Sugar : Combo of 4', 'Default', 'Free Size', '', 499.00, 2499.00, '', '/images/products/139_1.jpg', '', '', '', '', 'Grocery', '', 142, 1, '2026-06-16 17:09:42'),
(140, 'Ecru Bold Checks A-Line kurta & Pants Co-Ord Set', 'Default', 'Free Size', '', 179.00, 1289.00, '', '/images/products/140_1.jpg', '/images/products/140_2.jpg', '/images/products/140_3.jpg', '/images/products/140_4.jpg', '/images/products/140_5.jpg', 'kurtis', '', 143, 1, '2026-06-16 17:09:42'),
(141, 'Lukzer | MGR-002 | White | Metal Cloth Stand & Garment Rack with Wheels, 2 Bottom Shelves & Single Rod – Space-Saving Clothes Organizer for Bedroom, Laundry, Entryway & More | 173 x 90 x 34 cm', 'Default', 'Free Size', '', 389.00, 9999.00, '', '/images/products/141_1.jpg', '/images/products/141_2.jpg', '/images/products/141_3.jpg', '/images/products/141_4.jpg', '/images/products/141_5.jpg', 'Furniture', '', 144, 1, '2026-06-16 17:09:42'),
(142, 'Crocs Unisex Adult ClasscCrocsFlip', 'Default', 'Free Size', '', 411.00, 1699.00, '', '/images/products/142_1.jpg', '/images/products/142_2.jpg', '/images/products/142_3.jpg', '/images/products/142_4.jpg', '/images/products/142_5.jpg', 'crocs', '', 145, 1, '2026-06-16 17:09:42'),
(143, 'Ministery of Nuts Family Pack of 5 Premium Dry Fruits : Combo of 5', 'Default', 'Free Size', '', 349.00, 1999.00, '', '/images/products/143_1.jpg', '', '', '', '', 'Grocery', '', 146, 1, '2026-06-16 17:09:42'),
(144, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 379.00, 5699.00, '', '/images/products/144_1.jpg', '/images/products/144_2.jpg', '/images/products/144_3.jpg', '/images/products/144_4.jpg', '/images/products/144_5.jpg', 'crocs', '', 147, 1, '2026-06-16 17:09:42'),
(145, 'Crocs ALL-TERRAIN CLOG', 'Default', 'Free Size', '', 389.00, 4566.00, '', '/images/products/145_1.jpg', '/images/products/145_2.jpg', '/images/products/145_3.jpg', '/images/products/145_4.jpg', '/images/products/145_5.jpg', 'crocs', '', 148, 1, '2026-06-16 17:09:42');

INSERT INTO `tbl_product` (`id`, `name`, `color`, `size`, `storage`, `selling_price`, `mrp`, `features`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `keywords`, `disp_order`, `from_csv`, `created_at`) VALUES
(146, 'Crocs CLASSIC COZZZY SANDAL', 'Default', 'Free Size', '', 389.00, 6499.00, '', '/images/products/146_1.jpg', '/images/products/146_2.jpg', '/images/products/146_3.jpg', '/images/products/146_4.jpg', '/images/products/146_5.jpg', 'crocs', '', 149, 1, '2026-06-16 17:09:42'),
(147, 'The Artment your artistic apartment White Metal Nod Modern Minimalism LED Light Corner Floor Lamp for Home Decor, Living Room Or Offices (Height - 150Cm)', 'Default', 'Free Size', '', 399.00, 31999.00, '', '/images/products/147_1.jpg', '/images/products/147_2.jpg', '/images/products/147_3.jpg', '/images/products/147_4.jpg', '/images/products/147_5.jpg', 'Furniture', '', 150, 1, '2026-06-16 17:09:42'),
(148, 'Adidas ADILETTE SLIDES', 'Default', 'Free Size', '', 389.00, 2460.00, '', '/images/products/148_1.jpg', '/images/products/148_2.jpg', '/images/products/148_3.jpg', '/images/products/148_4.jpg', '', 'crocs', '', 151, 1, '2026-06-16 17:09:42'),
(149, 'Office Chair - Adjustable Seat Height, Sturdy Metal Base, Revolving Study & Computer Chair for Work from Home, Black', 'Default', 'Free Size', '', 411.00, 19999.00, '', '/images/products/149_1.jpg', '/images/products/149_2.jpg', '/images/products/149_3.jpg', '/images/products/149_4.jpg', '', 'Furniture', '', 152, 1, '2026-06-16 17:09:42'),
(150, 'Floral Printed Rayon Top & Parallel Pant Co-Ord Set', 'Default', 'Free Size', '', 189.00, 2199.00, '', '/images/products/150_1.jpg', '/images/products/150_2.jpg', '/images/products/150_3.jpg', '/images/products/150_4.jpg', '/images/products/150_5.jpg', 'kurtis', '', 153, 1, '2026-06-16 17:09:42'),
(151, 'Lava Red Darpan Saree With Unstitched Blouse', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/151_1.jpg', '/images/products/151_2.jpg', '/images/products/151_3.jpg', '/images/products/151_4.jpg', '/images/products/151_5.jpg', 'kurtis', '', 154, 1, '2026-06-16 17:09:42'),
(152, 'Bajaj SWX 4 Deluxe 800-Watt 2-Slice Grill Sandwich Maker', 'Default', 'Free Size', '', 339.00, 1699.00, '', '/images/products/152_1.jpg', '/images/products/152_2.jpg', '/images/products/152_3.jpg', '/images/products/152_4.jpg', '', 'Appliances', '', 155, 1, '2026-06-16 17:09:42'),
(153, 'Black & Beige Noni Saree With Stitched Blouse', 'Default', 'Free Size', '', 149.00, 1289.00, '', '/images/products/153_1.jpg', '/images/products/153_2.jpg', '/images/products/153_3.jpg', '/images/products/153_4.jpg', '/images/products/153_5.jpg', 'kurtis', '', 156, 1, '2026-06-16 17:09:42'),
(154, 'Gulab Cold Pressed Groundnut Oil - 5 Litre | Peanut Oil | Sing Tel | Kolhu/Kachhi Ghani/Chekku/Wood Pressed | Natural Cooking Oil | Chemical Free', 'Default', 'Free Size', '', 279.00, 1599.00, '', '/images/products/154_1.jpg', '/images/products/154_2.jpg', '/images/products/154_3.jpg', '/images/products/154_4.jpg', '/images/products/154_5.jpg', 'Grocery', '', 157, 1, '2026-06-16 17:09:42'),
(155, '4Kg Nutraj Almonds : Combo of 4', 'Default', 'Free Size', '', 299.00, 1399.00, '', '/images/products/155_1.jpg', '', '', '', '', 'Grocery', '', 158, 1, '2026-06-16 17:09:42'),
(156, 'Black Multi-Coloured Patch Printed Metallic Embroidered A-Line Kurta, Pants And Dupatta Set', 'Default', 'Free Size', '', 199.00, 1999.00, '', '/images/products/156_1.jpg', '/images/products/156_2.jpg', '/images/products/156_3.jpg', '/images/products/156_4.jpg', '/images/products/156_5.jpg', 'kurtis', '', 159, 1, '2026-06-16 17:09:42'),
(157, 'boAt Lunar Embrace', 'Default', 'Free Size', '', 399.00, 3499.00, '', '/images/products/157_1.jpg', '/images/products/157_2.jpg', '/images/products/157_3.jpg', '/images/products/157_4.jpg', '/images/products/157_5.jpg', 'Electronics', '', 160, 1, '2026-06-16 17:09:42'),
(158, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 393.00, 3499.00, '', '/images/products/158_1.jpg', '/images/products/158_2.jpg', '/images/products/158_3.jpg', '/images/products/158_4.jpg', '/images/products/158_5.jpg', 'crocs', '', 161, 1, '2026-06-16 17:09:42'),
(159, 'Skechers Aero Tempo', 'Default', 'Free Size', '', 399.00, 6499.00, '', '/images/products/159_1.jpg', '/images/products/159_2.jpg', '/images/products/159_3.jpg', '/images/products/159_4.jpg', '', 'Shoes', '', 162, 1, '2026-06-16 17:09:42'),
(160, 'Mustard Rayon Embroidered Kurta With Thread Work', 'Default', 'Free Size', '', 179.00, 1599.00, '', '/images/products/160_1.jpg', '/images/products/160_2.jpg', '/images/products/160_3.jpg', '/images/products/160_4.jpg', '/images/products/160_5.jpg', 'kurtis', '', 163, 1, '2026-06-16 17:09:42'),
(161, 'Bniture Wooden Almirah for Clothes, Door for Bedroom, 2 Door Wardrobe with Drawer & Hanging Space (45D x 75W x 180H CM) | 3 Year Warranty (Giant Wood & Frosty White)', 'Default', 'Free Size', '', 449.00, 8999.00, '', '/images/products/161_1.jpg', '/images/products/161_2.jpg', '/images/products/161_3.jpg', '/images/products/161_4.jpg', '/images/products/161_5.jpg', 'Furniture', '', 164, 1, '2026-06-16 17:09:43'),
(162, 'boAt Stone 352', 'Default', 'Free Size', '', 391.00, 1799.00, '', '/images/products/162_1.jpg', '/images/products/162_2.jpg', '/images/products/162_3.jpg', '/images/products/162_4.jpg', '/images/products/162_5.jpg', 'Electronics', '', 165, 1, '2026-06-16 17:09:43'),
(163, 'Vedaka Black Raisins | Seedless | 500 G | Premium Kali Kishmish | Kali Draksh | Dry Fruits | Flavourful & Delicious Snack | Source Of Potassium & Dietary Fibre | Ambient Temperature', 'Default', 'Free Size', '', 249.00, 899.00, '', '/images/products/163_1.jpg', '/images/products/163_2.jpg', '/images/products/163_3.jpg', '/images/products/163_4.jpg', '/images/products/163_5.jpg', 'Grocery', '', 166, 1, '2026-06-16 17:09:43'),
(164, 'White Floral Printed Pure Cotton Top And Parallel Pants Set', 'Default', 'Free Size', '', 189.00, 1999.00, '', '/images/products/164_1.jpg', '/images/products/164_2.jpg', '/images/products/164_3.jpg', '/images/products/164_4.jpg', '/images/products/164_5.jpg', 'kurtis', '', 167, 1, '2026-06-16 17:09:43'),
(165, 'Skechers SKX Aero Burst', 'Default', 'Free Size', '', 379.00, 6799.00, '', '/images/products/165_1.jpg', '/images/products/165_2.jpg', '/images/products/165_3.jpg', '/images/products/165_4.jpg', '', 'Shoes', '', 168, 1, '2026-06-16 17:09:43'),
(166, 'crocs Unisex-Adult Crocband Clog Clog', 'Default', 'Free Size', '', 399.00, 3769.00, '', '/images/products/166_1.jpg', '/images/products/166_2.jpg', '/images/products/166_3.jpg', '/images/products/166_4.jpg', '', 'crocs', '', 169, 1, '2026-06-16 17:09:43'),
(167, 'boAt Rockerz 450 Pro ', 'Default', 'Free Size', '', 391.00, 1699.00, '', '/images/products/167_1.jpg', '/images/products/167_2.jpg', '/images/products/167_3.jpg', '/images/products/167_4.jpg', '/images/products/167_5.jpg', 'Electronics', '', 170, 1, '2026-06-16 17:09:43'),
(168, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 411.00, 2499.00, '', '/images/products/168_1.jpg', '/images/products/168_2.jpg', '/images/products/168_3.jpg', '', '', 'crocs', '', 171, 1, '2026-06-16 17:09:43'),
(169, '1 Kg | Kismish | Premium Dried Grapes | Sweet Fruity Taste and Soft Chewy Texture | Natural Source of Antioxidants, Potassium & Fiber | Healthy Snack', 'Default', 'Free Size', '', 239.00, 999.00, '', '/images/products/169_1.jpg', '/images/products/169_2.jpg', '/images/products/169_3.jpg', '/images/products/169_4.jpg', '/images/products/169_5.jpg', 'Grocery', '', 172, 1, '2026-06-16 17:09:43'),
(170, '​crocs womens Swiftwater Sandal W Sandal', 'Default', 'Free Size', '', 389.00, 2699.00, '', '/images/products/170_1.jpg', '/images/products/170_2.jpg', '/images/products/170_3.jpg', '/images/products/170_4.jpg', '/images/products/170_5.jpg', 'crocs', '', 173, 1, '2026-06-16 17:09:43'),
(171, 'Crocs ALL-TERRAIN CLOG', 'Default', 'Free Size', '', 389.00, 4599.00, '', '/images/products/171_1.jpg', '/images/products/171_2.jpg', '/images/products/171_3.jpg', '/images/products/171_4.jpg', '/images/products/171_5.jpg', 'crocs', '', 174, 1, '2026-06-16 17:09:43'),
(172, 'NBA MILWAUKEE BUCKS CLASSIC CLOG', 'Default', 'Free Size', '', 379.00, 4469.00, '', '/images/products/172_1.jpg', '/images/products/172_2.jpg', '/images/products/172_3.jpg', '/images/products/172_4.jpg', '/images/products/172_5.jpg', 'crocs', '', 175, 1, '2026-06-16 17:09:43'),
(173, '1kg Yogabar Premium Pista Crunchy Pistachios|Tasty & Healthy Nuts Dry Fruits|Rich in Protein, Fibre, Gluten Free & Low Calories|Healthy Snacks|Dry Fruit Gift Pack', 'Default', 'Free Size', '', 239.00, 1899.00, '', '/images/products/173_1.jpg', '/images/products/173_2.jpg', '/images/products/173_3.jpg', '/images/products/173_4.jpg', '/images/products/173_5.jpg', 'Grocery', '', 176, 1, '2026-06-16 17:09:43'),
(174, 'crocs Unisex-Adult Clog Duet Max Clog', 'Default', 'Free Size', '', 389.00, 2799.00, '', '/images/products/174_1.jpg', '/images/products/174_2.jpg', '/images/products/174_3.jpg', '/images/products/174_4.jpg', '/images/products/174_5.jpg', 'crocs', '', 177, 1, '2026-06-16 17:09:43'),
(175, 'Crocs Unisex-Adult Bayaband ClogClogs', 'Default', 'Free Size', '', 391.00, 3199.00, '', '/images/products/175_1.jpg', '/images/products/175_2.jpg', '/images/products/175_3.jpg', '/images/products/175_4.jpg', '/images/products/175_5.jpg', 'crocs', '', 178, 1, '2026-06-16 17:09:43'),
(176, 'Grey Stonework Satin Saree', 'Default', 'Free Size', '', 149.00, 2399.00, '', '/images/products/176_1.jpg', '/images/products/176_2.jpg', '/images/products/176_3.jpg', '/images/products/176_4.jpg', '/images/products/176_5.jpg', 'kurtis', '', 179, 1, '2026-06-16 17:09:43'),
(177, 'Home Centre 2 Seater Berry Fabric Sofa|Fabric Sofa for Living Room|(Brown)|2 Year Warranty', 'Default', 'Free Size', '', 449.00, 19999.00, '', '/images/products/177_1.jpg', '/images/products/177_2.jpg', '/images/products/177_3.jpg', '/images/products/177_4.jpg', '', 'Furniture', '', 180, 1, '2026-06-16 17:09:43'),
(178, 'Skechers ULTRA FLEX 3.0-COZY STREAK', 'Default', 'Free Size', '', 391.00, 6799.00, '', '/images/products/178_1.jpg', '/images/products/178_2.jpg', '/images/products/178_3.jpg', '/images/products/178_4.jpg', '/images/products/178_5.jpg', 'Shoes', '', 181, 1, '2026-06-16 17:09:43'),
(179, 'Bniture Wooden Almirah for Clothes, Door for Bedroom, 4 Door Wardrobe with Hanging Space (50D x 105W x 180H CM) |3 Year Warranty (Frosty White)', 'Default', 'Free Size', '', 399.00, 21499.00, '', '/images/products/179_1.jpg', '/images/products/179_2.jpg', '/images/products/179_3.jpg', '/images/products/179_4.jpg', '/images/products/179_5.jpg', 'Furniture', '', 182, 1, '2026-06-16 17:09:43'),
(180, 'White Solid Deep V-Neck Sleeveless Ruffles Mini Wrap Dress', 'Default', 'Free Size', '', 259.00, 4999.00, '', '/images/products/180_1.jpg', '/images/products/180_2.jpg', '/images/products/180_3.jpg', '/images/products/180_4.jpg', '/images/products/180_5.jpg', 'Western Wear', '', 183, 1, '2026-06-16 17:09:43'),
(181, 'Skechers HYPER SLIDE - DERIVER', 'Default', 'Free Size', '', 399.00, 5999.00, '', '/images/products/181_1.jpg', '/images/products/181_2.jpg', '/images/products/181_3.jpg', '/images/products/181_4.jpg', '/images/products/181_5.jpg', 'crocs', '', 184, 1, '2026-06-16 17:09:42'),
(182, '5L Fortune Refined Oil, 5Kg Makhan Chor Basmati Rice, 10Kg Aashirvaad Chakki Fresh Atta, 5Kg Sugar : Combo of 4', 'Default', 'Free Size', '', 399.00, 1999.00, '', '/images/products/182_1.jpg', '', '', '', '', 'Grocery', '', 185, 1, '2026-06-16 17:09:42'),
(183, 'Blue Floral Printed Kurta, Sharara And Dupatta Set', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/183_1.jpg', '/images/products/183_2.jpg', '/images/products/183_3.jpg', '/images/products/183_4.jpg', '/images/products/183_5.jpg', 'kurtis', '', 186, 1, '2026-06-16 17:09:42'),
(184, 'ADIDAS Originals Women Pink & Gold-Toned Brand Logo Printed Sliders', 'Default', 'Free Size', '', 411.00, 3599.00, '', '/images/products/184_1.jpg', '/images/products/184_2.jpg', '/images/products/184_3.jpg', '/images/products/184_4.jpg', '', 'crocs', '', 187, 1, '2026-06-16 17:09:42'),
(185, 'Skechers MAX CUSHIONING ARCH FIT 2	', 'Default', 'Free Size', '', 379.00, 10999.00, '', '/images/products/185_1.jpg', '/images/products/185_2.jpg', '/images/products/185_3.jpg', '/images/products/185_4.jpg', '/images/products/185_5.jpg', 'Shoes', '', 188, 1, '2026-06-16 17:09:42'),
(186, 'atomberg Renesa 1200mm BLDC Motor 5 Star Rated Sleek Ceiling Fans with Remote', 'Default', 'Free Size', '', 306.00, 3699.00, '', '/images/products/186_1.jpg', '/images/products/186_2.jpg', '/images/products/186_3.jpg', '/images/products/186_4.jpg', '/images/products/186_5.jpg', 'Appliances', '', 189, 1, '2026-06-16 17:09:42'),
(187, 'Puma Leadcat 2.0 Sliders', 'Default', 'Free Size', '', 399.00, 2499.00, '', '/images/products/187_1.jpg', '/images/products/187_2.jpg', '/images/products/187_3.jpg', '/images/products/187_4.jpg', '', 'crocs', '', 190, 1, '2026-06-16 17:09:42'),
(188, 'Skechers Aero Spark', 'Default', 'Free Size', '', 393.00, 7899.00, '', '/images/products/188_1.jpg', '/images/products/188_2.jpg', '/images/products/188_3.jpg', '/images/products/188_4.jpg', '/images/products/188_5.jpg', 'Shoes', '', 191, 1, '2026-06-16 17:09:42'),
(189, 'Skechers SKX Aero Burst', 'Default', 'Free Size', '', 411.00, 6999.00, '', '/images/products/189_1.jpg', '/images/products/189_2.jpg', '/images/products/189_3.jpg', '/images/products/189_4.jpg', '/images/products/189_5.jpg', 'Shoes', '', 192, 1, '2026-06-16 17:09:42'),
(190, 'Mustard Zariwork (Gold) Soft Raw Silk Saree', 'Default', 'Free Size', '', 189.00, 1289.00, '', '/images/products/190_1.jpg', '/images/products/190_2.jpg', '/images/products/190_3.jpg', '/images/products/190_4.jpg', '/images/products/190_5.jpg', 'kurtis', '', 193, 1, '2026-06-16 17:09:42'),
(191, 'Skechers D\'LUX WALKER 2.0-NEON SITES', 'Default', 'Free Size', '', 393.00, 7899.00, '', '/images/products/191_1.jpg', '/images/products/191_2.jpg', '/images/products/191_3.jpg', '/images/products/191_4.jpg', '/images/products/191_5.jpg', 'Shoes', '', 194, 1, '2026-06-16 17:09:42'),
(192, 'Peach Solid Shoulder Straps Bodycon Mini Dress', 'Default', 'Free Size', '', 259.00, 2499.00, '', '/images/products/192_1.jpg', '/images/products/192_2.jpg', '/images/products/192_3.jpg', '/images/products/192_4.jpg', '/images/products/192_5.jpg', 'Western Wear', '', 195, 1, '2026-06-16 17:09:42'),
(193, 'Samsung Galaxy S23 5G AI Smartphone (Cream, 8GB, 128GB Storage)', 'Default', 'Free Size', '', 799.00, 29999.00, '', '/images/products/193_1.jpg', '/images/products/193_2.jpg', '/images/products/193_3.jpg', '/images/products/193_4.jpg', '/images/products/193_5.jpg', 'Mobile', '', 196, 1, '2026-06-16 17:09:42'),
(194, 'Inflatable Sofa with Household Air Pump - OKSTENCK Air Inflatable Sofa Couch Chair with Footstool for Indoor&Outdoor in Livingroom, Bedroom, Readingroom Office, Balcony, Garden, Courtyard', 'Default', 'Free Size', '', 411.00, 9999.00, '', '/images/products/194_1.jpg', '/images/products/194_2.jpg', '/images/products/194_3.jpg', '', '', 'Furniture', '', 197, 1, '2026-06-16 17:09:42'),
(195, 'Evelina 100% Cotton Tiered Pink Dress', 'Default', 'Free Size', '', 259.00, 2499.00, '', '/images/products/195_1.jpg', '/images/products/195_2.jpg', '/images/products/195_3.jpg', '/images/products/195_4.jpg', '/images/products/195_5.jpg', 'Western Wear', '', 198, 1, '2026-06-16 17:09:42'),
(196, 'Blue Floral Printed Kurta, Sharara And Dupatta Set', 'Default', 'Free Size', '', 189.00, 1599.00, '', '/images/products/196_1.jpg', '/images/products/196_2.jpg', '/images/products/196_3.jpg', '/images/products/196_4.jpg', '/images/products/196_5.jpg', 'kurtis', '', 199, 1, '2026-06-16 17:09:42'),
(197, 'Skechers HYPER SLIDE - SIMPLEX', 'Default', 'Free Size', '', 389.00, 5999.00, '', '/images/products/197_1.jpg', '/images/products/197_2.jpg', '/images/products/197_3.jpg', '/images/products/197_4.jpg', '/images/products/197_5.jpg', 'crocs', '', 200, 1, '2026-06-16 17:09:42'),
(198, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 399.00, 2399.00, '', '/images/products/198_1.jpg', '/images/products/198_2.jpg', '/images/products/198_3.jpg', '/images/products/198_4.jpg', '', 'crocs', '', 201, 1, '2026-06-16 17:09:42'),
(199, 'White Solid V-Neck Short Sleeve Fit and Flare Mini Dress', 'Default', 'Free Size', '', 259.00, 5799.00, '', '/images/products/199_1.jpg', '/images/products/199_2.jpg', '/images/products/199_3.jpg', '/images/products/199_4.jpg', '/images/products/199_5.jpg', 'Western Wear', '', 202, 1, '2026-06-16 17:09:42'),
(200, 'boAt Airdopes 138 PRO', 'Default', 'Free Size', '', 393.00, 1599.00, '', '/images/products/200_1.jpg', '/images/products/200_2.jpg', '/images/products/200_3.jpg', '/images/products/200_4.jpg', '/images/products/200_5.jpg', 'Electronics', '', 203, 1, '2026-06-16 17:09:42'),
(201, 'Off White Georgette Straight Kurta With Self Embroidered Designs', 'Default', 'Free Size', '', 199.00, 1399.00, '', '/images/products/201_1.jpg', '/images/products/201_2.jpg', '/images/products/201_3.jpg', '/images/products/201_4.jpg', '/images/products/201_5.jpg', 'kurtis', '', 204, 1, '2026-06-16 17:09:45'),
(202, 'Skechers GO RUN RIDE 11', 'Default', 'Free Size', '', 391.00, 6999.00, '', '/images/products/202_1.jpg', '/images/products/202_2.jpg', '/images/products/202_3.jpg', '/images/products/202_4.jpg', '/images/products/202_5.jpg', 'Shoes', '', 205, 1, '2026-06-16 17:09:45'),
(203, 'JBL Go 3 Wireless Portable Bluetooth Mini Speaker, Small Speaker with Pro Sound, Vibrant Colors with Rugged Fabric Design, Lightweight IP67 Waterproof, Type C Interface (Without Mic, Black)', 'Default', 'Free Size', '', 393.00, 2799.00, '', '/images/products/203_1.jpg', '/images/products/203_2.jpg', '/images/products/203_3.jpg', '/images/products/203_4.jpg', '/images/products/203_5.jpg', 'Electronics', '', 206, 1, '2026-06-16 17:09:45'),
(204, 'FURNY Supersoft 3 Seater Fabric Sofa Cum Bed Set (Dark Grey)', 'Default', 'Free Size', '', 411.00, 21499.00, '', '/images/products/204_1.jpg', '/images/products/204_2.jpg', '/images/products/204_3.jpg', '/images/products/204_4.jpg', '/images/products/204_5.jpg', 'Furniture', '', 207, 1, '2026-06-16 17:09:45'),
(205, 'Navy Blue Embellished Muslin Blend Straight Kurta', 'Default', 'Free Size', '', 149.00, 1289.00, '', '/images/products/205_1.jpg', '/images/products/205_2.jpg', '/images/products/205_3.jpg', '/images/products/205_4.jpg', '/images/products/205_5.jpg', 'kurtis', '', 208, 1, '2026-06-16 17:09:45'),
(206, 'Skechers ARCH FIT 2.0 - BIG LEAGUE', 'Default', 'Free Size', '', 399.00, 7899.00, '', '/images/products/206_1.jpg', '/images/products/206_2.jpg', '/images/products/206_3.jpg', '/images/products/206_4.jpg', '/images/products/206_5.jpg', 'Shoes', '', 209, 1, '2026-06-16 17:09:45'),
(207, 'Adidas ADILETTE CLOGS', 'Default', 'Free Size', '', 411.00, 2460.00, '', '/images/products/207_1.jpg', '/images/products/207_2.jpg', '/images/products/207_3.jpg', '/images/products/207_4.jpg', '', 'crocs', '', 210, 1, '2026-06-16 17:09:45'),
(208, 'Ivory Cream Bel Buti Patterned Mirror and Stone Work Saree', 'Default', 'Free Size', '', 189.00, 1289.00, '', '/images/products/208_1.jpg', '/images/products/208_2.jpg', '/images/products/208_3.jpg', '/images/products/208_4.jpg', '/images/products/208_5.jpg', 'kurtis', '', 211, 1, '2026-06-16 17:09:45'),
(209, 'Amazon Brand Solimo Premium Faux Leather Bean Bag, Filled with Beans | Capacity: Upto 6 Ft Height, 120 KG Weight | 3XL | Black and Brown', 'Default', 'Free Size', '', 389.00, 21499.00, '', '/images/products/209_1.jpg', '/images/products/209_2.jpg', '/images/products/209_3.jpg', '/images/products/209_4.jpg', '/images/products/209_5.jpg', 'Furniture', '', 212, 1, '2026-06-16 17:09:45'),
(210, 'Skechers SKX Aero Burst', 'Default', 'Free Size', '', 399.00, 7499.00, '', '/images/products/210_1.jpg', '/images/products/210_2.jpg', '/images/products/210_3.jpg', '/images/products/210_4.jpg', '/images/products/210_5.jpg', 'Shoes', '', 213, 1, '2026-06-16 17:09:45'),
(211, 'Turquoise Blue Zariwork Art Silk Saree', 'Default', 'Free Size', '', 179.00, 2199.00, '', '/images/products/211_1.jpg', '/images/products/211_2.jpg', '/images/products/211_3.jpg', '/images/products/211_4.jpg', '/images/products/211_5.jpg', 'kurtis', '', 214, 1, '2026-06-16 17:09:46'),
(212, 'Adidas ADILETTE LITE SLIDES', 'Default', 'Free Size', '', 399.00, 2999.00, '', '/images/products/212_1.jpg', '/images/products/212_2.jpg', '/images/products/212_3.jpg', '/images/products/212_4.jpg', '', 'crocs', '', 215, 1, '2026-06-16 17:09:46'),
(213, 'Peach & Multi Dahlia Saree With Unstitched Blouse', 'Default', 'Free Size', '', 149.00, 2399.00, '', '/images/products/213_1.jpg', '/images/products/213_2.jpg', '/images/products/213_3.jpg', '/images/products/213_4.jpg', '/images/products/213_5.jpg', 'kurtis', '', 216, 1, '2026-06-16 17:09:46'),
(214, 'Skechers Aero Spark', 'Default', 'Free Size', '', 399.00, 6799.00, '', '/images/products/214_1.jpg', '/images/products/214_2.jpg', '/images/products/214_3.jpg', '/images/products/214_4.jpg', '/images/products/214_5.jpg', 'Shoes', '', 217, 1, '2026-06-16 17:09:46'),
(215, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 399.00, 5797.00, '', '/images/products/215_1.jpg', '/images/products/215_2.jpg', '/images/products/215_3.jpg', '/images/products/215_4.jpg', '/images/products/215_5.jpg', 'crocs', '', 218, 1, '2026-06-16 17:09:46'),
(216, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 411.00, 6495.00, '', '/images/products/216_1.jpg', '/images/products/216_2.jpg', '/images/products/216_3.jpg', '/images/products/216_4.jpg', '/images/products/216_5.jpg', 'crocs', '', 219, 1, '2026-06-16 17:09:46'),
(217, 'OFFROAD SPORT CLOG', 'Default', 'Free Size', '', 391.00, 6499.00, '', '/images/products/217_1.jpg', '/images/products/217_2.jpg', '/images/products/217_3.jpg', '/images/products/217_4.jpg', '/images/products/217_5.jpg', 'crocs', '', 220, 1, '2026-06-16 17:09:46'),
(218, 'VIKI Wardrobe | Wooden Almirah for Clothes,Door for Bedroom, 2 Door Wardrobe with Drawer & Hanging Space (Frosty White - 40D x 80W x 180H) | 1 Year Warranty | Free Assembly', 'Default', 'Free Size', '', 411.00, 9999.00, '', '/images/products/218_1.jpg', '/images/products/218_2.jpg', '/images/products/218_3.jpg', '/images/products/218_4.jpg', '', 'Furniture', '', 221, 1, '2026-06-16 17:09:46');

INSERT INTO `tbl_product` (`id`, `name`, `color`, `size`, `storage`, `selling_price`, `mrp`, `features`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `keywords`, `disp_order`, `from_csv`, `created_at`) VALUES
(219, 'realme GT7 Pro 5G Smartphone 16+512 Mars Orange', 'Default', 'Free Size', '', 599.00, 30999.00, '', '/images/products/219_1.jpg', '/images/products/219_2.jpg', '/images/products/219_3.jpg', '/images/products/219_4.jpg', '/images/products/219_5.jpg', 'Mobile', '', 222, 1, '2026-06-16 17:09:46'),
(220, 'Adidas Women\'s SPRIGHT Black Slides', 'Default', 'Free Size', '', 389.00, 2399.00, '', '/images/products/220_1.jpg', '/images/products/220_2.jpg', '/images/products/220_3.jpg', '/images/products/220_4.jpg', '/images/products/220_5.jpg', 'crocs', '', 223, 1, '2026-06-16 17:09:46'),
(221, 'Crocs Unisex-Adult Bayaband ClogClogs', 'Default', 'Free Size', '', 389.00, 2999.00, '', '/images/products/221_1.jpg', '/images/products/221_2.jpg', '/images/products/221_3.jpg', '/images/products/221_4.jpg', '/images/products/221_5.jpg', 'crocs', '', 224, 1, '2026-06-16 17:09:45'),
(222, 'Purple Muslin Bandhani Printed Kurta With Zardosi', 'Default', 'Free Size', '', 189.00, 1399.00, '', '/images/products/222_1.jpg', '/images/products/222_2.jpg', '/images/products/222_3.jpg', '/images/products/222_4.jpg', '/images/products/222_5.jpg', 'kurtis', '', 225, 1, '2026-06-16 17:09:45'),
(223, 'OnePlus Nord Buds 3 Truly Wireless Bluetooth in Ear Earbuds with Up to 32Db Active Noise Cancellation,10Mins for 11Hours Fast Charging with Up to 43H Music Playback -Harmonic Gray', 'Default', 'Free Size', '', 411.00, 2099.00, '', '/images/products/223_1.jpg', '/images/products/223_2.jpg', '/images/products/223_3.jpg', '/images/products/223_4.jpg', '/images/products/223_5.jpg', 'Electronics', '', 226, 1, '2026-06-16 17:09:45'),
(224, 'Skechers HYPER SLIDE - DERIVER', 'Default', 'Free Size', '', 411.00, 5999.00, '', '/images/products/224_1.jpg', '/images/products/224_2.jpg', '/images/products/224_3.jpg', '/images/products/224_4.jpg', '/images/products/224_5.jpg', 'crocs', '', 227, 1, '2026-06-16 17:09:45'),
(225, 'OnePlus Nord Buds 2r True Wireless in Ear Earbuds with Mic, 12.4mm Drivers, Playback:Upto 38hr case,4-Mic Design, IP55 Rating ', 'Default', 'Free Size', '', 393.00, 1649.00, '', '/images/products/225_1.jpg', '/images/products/225_2.jpg', '/images/products/225_3.jpg', '/images/products/225_4.jpg', '/images/products/225_5.jpg', 'Electronics', '', 228, 1, '2026-06-16 17:09:45'),
(226, 'Yellow Embroidered Kurta, Pants And Dupatta Set', 'Default', 'Free Size', '', 199.00, 1599.00, '', '/images/products/226_1.jpg', '/images/products/226_2.jpg', '/images/products/226_3.jpg', '/images/products/226_4.jpg', '/images/products/226_5.jpg', 'kurtis', '', 229, 1, '2026-06-16 17:09:45'),
(227, '7 kg Surf Excel Easy Wash Detergent Powder | Superfine Washing Powder | Dissolves Easily & Removes Tough Stains | Suitable for all Washing Machines', 'Default', 'Free Size', '', 199.00, 999.00, '', '/images/products/227_1.jpg', '/images/products/227_2.jpg', '/images/products/227_3.jpg', '/images/products/227_4.jpg', '/images/products/227_5.jpg', 'Grocery', '', 230, 1, '2026-06-16 17:09:45'),
(228, 'Navy Blue Zariwork Soft Silk Saree', 'Default', 'Free Size', '', 199.00, 1289.00, '', '/images/products/228_1.jpg', '/images/products/228_2.jpg', '/images/products/228_3.jpg', '/images/products/228_4.jpg', '/images/products/228_5.jpg', 'kurtis', '', 231, 1, '2026-06-16 17:09:45'),
(229, 'Crocs BAYA PLATFORM SANDAL', 'Default', 'Free Size', '', 389.00, 6499.00, '', '/images/products/229_1.jpg', '/images/products/229_2.jpg', '/images/products/229_3.jpg', '/images/products/229_4.jpg', '/images/products/229_5.jpg', 'crocs', '', 232, 1, '2026-06-16 17:09:45'),
(230, 'Skechers Aero Burst', 'Default', 'Free Size', '', 389.00, 6499.00, '', '/images/products/230_1.jpg', '/images/products/230_2.jpg', '/images/products/230_3.jpg', '/images/products/230_4.jpg', '/images/products/230_5.jpg', 'Shoes', '', 233, 1, '2026-06-16 17:09:45'),
(231, '5L Fortune Premium Kachi Ghani Pure Mustard Oil, 15L Tirupati Cotton Seed Oil, 1L Coconut Oil : Combo Deal', 'Default', 'Free Size', '', 599.00, 1999.00, '', '/images/products/231_1.jpg', '', '', '', '', 'Grocery', '', 234, 1, '2026-06-16 17:09:44'),
(232, 'Skechers ULTRA FLEX 3.0-COZY STREAK', 'Default', 'Free Size', '', 393.00, 7199.00, '', '/images/products/232_1.jpg', '/images/products/232_2.jpg', '/images/products/232_3.jpg', '/images/products/232_4.jpg', '/images/products/232_5.jpg', 'Shoes', '', 235, 1, '2026-06-16 17:09:44'),
(233, 'Prestige 750 Watts Iris Plus Mixer Grinder With 4 Jars (3 Stainless Steel Jars+ 1 Juicer Jar)| 4 Super Efficient Stainless Blades|', 'Default', 'Free Size', '', 349.00, 6899.00, '', '/images/products/233_1.jpg', '/images/products/233_2.jpg', 'https://pub-48cc73cacc8444b8b58f28180c4556be.r2.dev/assets/uploads/.jpg', '/images/products/233_4.jpg', '/images/products/233_5.jpg', 'Appliances', '', 236, 1, '2026-06-16 17:09:44'),
(234, 'Crocs OFF COURT CLOG', 'Default', 'Free Size', '', 411.00, 3499.00, '', '/images/products/234_1.jpg', '/images/products/234_2.jpg', '/images/products/234_3.jpg', '/images/products/234_4.jpg', '/images/products/234_5.jpg', 'crocs', '', 237, 1, '2026-06-16 17:09:44'),
(235, '6.4L Washing liquid, 8Kg Tide Washing Powder, 3x Harpic Cleaner : Combo Deal', 'Default', 'Free Size', '', 499.00, 1499.00, '', '/images/products/235_1.jpg', '', '', '', '', 'Grocery', '', 238, 1, '2026-06-16 17:09:44'),
(236, 'MILTON Premium 4 Burner Black Manual Ignition Glass Top Gas Stove, (ISI Certified)', 'Default', 'Free Size', '', 389.00, 4199.00, '', '/images/products/236_1.jpg', '/images/products/236_2.jpg', '/images/products/236_3.jpg', '/images/products/236_4.jpg', '/images/products/236_5.jpg', 'Appliances', '', 239, 1, '2026-06-16 17:09:44'),
(237, 'Skechers Slip-ins: BOBS Sun Ray - Bright Take', 'Default', 'Free Size', '', 411.00, 6799.00, '', '/images/products/237_1.jpg', '/images/products/237_2.jpg', '/images/products/237_3.jpg', '/images/products/237_4.jpg', '/images/products/237_5.jpg', 'crocs', '', 240, 1, '2026-06-16 17:09:44'),
(238, 'Skechers TRES-AIR UNO - AH - MAZING', 'Default', 'Free Size', '', 411.00, 7899.00, '', '/images/products/238_1.jpg', '/images/products/238_2.jpg', '/images/products/238_3.jpg', '/images/products/238_4.jpg', '/images/products/238_5.jpg', 'Shoes', '', 241, 1, '2026-06-16 17:09:44'),
(239, 'OnePlus Nord Buds 3 Pro Truly Wireless Bluetooth in Ear Earbuds with Upto 49Db Active Noise Cancellation,12.4Mm Dynamic Drivers,10Mins for 11Hr Fast Charging with Upto 44Hrs Music Playback', 'Default', 'Free Size', '', 391.00, 2799.00, '', '/images/products/239_1.jpg', '/images/products/239_2.jpg', '/images/products/239_3.jpg', '/images/products/239_4.jpg', '/images/products/239_5.jpg', 'Electronics', '', 242, 1, '2026-06-16 17:09:44'),
(240, 'boAt Airdopes 138', 'Default', 'Free Size', '', 391.00, 1499.00, '', '/images/products/240_1.jpg', '/images/products/240_2.jpg', '/images/products/240_3.jpg', '/images/products/240_4.jpg', '', 'Electronics', '', 243, 1, '2026-06-16 17:09:44'),
(241, 'Black Viscose Blend Straight Kurta with Floral Cutdana Work', 'Default', 'Free Size', '', 149.00, 1399.00, '', '/images/products/241_1.jpg', '/images/products/241_2.jpg', '/images/products/241_3.jpg', '/images/products/241_4.jpg', '/images/products/241_5.jpg', 'kurtis', '', 244, 1, '2026-06-16 17:09:44'),
(242, 'GETAWAY PLATFORM GLITTER H-STRAP', 'Default', 'Free Size', '', 379.00, 4699.00, '', '/images/products/242_1.jpg', '/images/products/242_2.jpg', '/images/products/242_3.jpg', '/images/products/242_4.jpg', '/images/products/242_5.jpg', 'crocs', '', 245, 1, '2026-06-16 17:09:44'),
(243, '5Kg Fortune Biryani Special Basmati Rice, 15L Cottonseed Oil, 1Kg Buffalo Ghee : Combo Deal', 'Default', 'Free Size', '', 499.00, 1499.00, '', '/images/products/243_1.jpg', '', '', '', '', 'Grocery', '', 246, 1, '2026-06-16 17:09:44'),
(244, 'Samsung Galaxy S24 5G AI Smartphone (Onyx Black, 8GB, 256GB Storage)', 'Default', 'Free Size', '', 499.00, 39999.00, '', '/images/products/244_1.jpg', '/images/products/244_2.jpg', '/images/products/244_3.jpg', '/images/products/244_4.jpg', '/images/products/244_5.jpg', 'Mobile', '', 247, 1, '2026-06-16 17:09:44'),
(245, 'crocs Unisex-Adult Baya Clog Clog', 'Default', 'Free Size', '', 399.00, 2559.00, '', '/images/products/245_1.jpg', '/images/products/245_2.jpg', '/images/products/245_3.jpg', '/images/products/245_4.jpg', '', 'crocs', '', 248, 1, '2026-06-16 17:09:44'),
(246, 'Skechers GO RUN RIDE 11', 'Default', 'Free Size', '', 393.00, 6999.00, '', '/images/products/246_1.jpg', '/images/products/246_2.jpg', '/images/products/246_3.jpg', '/images/products/246_4.jpg', '/images/products/246_5.jpg', 'Shoes', '', 249, 1, '2026-06-16 17:09:44'),
(247, 'Saregama Carvaan Mini Hindi - Music Player with 401 Pre-Loaded Retro Songs, Bluetooth/FM/AM/AUX, Type-C Charger (Coral Pink)', 'Default', 'Free Size', '', 411.00, 2799.00, '', '/images/products/247_1.jpg', '/images/products/247_2.jpg', '/images/products/247_3.jpg', '/images/products/247_4.jpg', '/images/products/247_5.jpg', 'Electronics', '', 250, 1, '2026-06-16 17:09:44'),
(248, 'Cardamom Elaichi Whole Fresh & Aromatic Spice Perfect for Cooking, Tea & Sweets - 1 Kg', 'Default', 'Free Size', '', 293.00, 4999.00, '', '/images/products/248_1.jpg', '/images/products/248_2.jpg', '/images/products/248_3.jpg', '/images/products/248_4.jpg', '/images/products/248_5.jpg', 'Grocery', '', 251, 1, '2026-06-16 17:09:44'),
(249, 'Skechers Slip-ins Relaxed Fit: Arch Fit Garza - Langston', 'Default', 'Free Size', '', 389.00, 7899.00, '', '/images/products/249_1.jpg', '/images/products/249_2.jpg', '/images/products/249_3.jpg', '/images/products/249_4.jpg', '/images/products/249_5.jpg', 'Shoes', '', 252, 1, '2026-06-16 17:09:44'),
(250, 'Xiaomi 14 CIVI (Cruise Blue, 12GB RAM, 512GB Storage)', 'Default', 'Free Size', '', 599.00, 21999.00, '', '/images/products/250_1.jpg', '/images/products/250_2.jpg', '/images/products/250_3.jpg', '/images/products/250_4.jpg', '/images/products/250_5.jpg', 'Mobile', '', 253, 1, '2026-06-16 17:09:44'),
(251, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 399.00, 2999.00, '', '/images/products/251_1.jpg', '/images/products/251_2.jpg', '/images/products/251_3.jpg', '/images/products/251_4.jpg', '/images/products/251_5.jpg', 'crocs', '', 254, 1, '2026-06-16 17:09:44'),
(252, 'Pink Zariwork Soft Silk Saree', 'Default', 'Free Size', '', 149.00, 1599.00, '', '/images/products/252_1.jpg', '/images/products/252_2.jpg', '/images/products/252_3.jpg', '/images/products/252_4.jpg', '/images/products/252_5.jpg', 'kurtis', '', 255, 1, '2026-06-16 17:09:44'),
(253, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 389.00, 2399.00, '', '/images/products/253_1.jpg', '/images/products/253_2.jpg', '/images/products/253_3.jpg', '/images/products/253_4.jpg', '', 'crocs', '', 256, 1, '2026-06-16 17:09:44'),
(254, 'Skybags Tooper Set of 3 (Cabin+ Medium+Large) Hard Luggage (55+65+75 cm) | Polypropylene Luggage Trolley with 8 Spinner Wheels|Green|Unisex', 'Default', 'Free Size', '', 411.00, 7999.00, '', '/images/products/254_1.jpg', '/images/products/254_2.jpg', '/images/products/254_3.jpg', '/images/products/254_4.jpg', '/images/products/254_5.jpg', 'Electronics', '', 257, 1, '2026-06-16 17:09:44'),
(255, 'POCO M6 Plus 5G Misty Lavender 8GB RAM 128GB ROM', 'Default', 'Free Size', '', 699.00, 10999.00, '', '/images/products/255_1.jpg', '/images/products/255_2.jpg', '/images/products/255_3.jpg', '/images/products/255_4.jpg', '/images/products/255_5.jpg', 'Mobile', '', 258, 1, '2026-06-16 17:09:44'),
(256, 'Dazzling Purple Georgette Saree', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/256_1.jpg', '/images/products/256_2.jpg', '/images/products/256_3.jpg', '/images/products/256_4.jpg', '/images/products/256_5.jpg', 'kurtis', '', 259, 1, '2026-06-16 17:09:44'),
(257, 'crocs Unisex-Adult 206520 Slipper', 'Default', 'Free Size', '', 399.00, 3299.00, '', '/images/products/257_1.jpg', '/images/products/257_2.jpg', '/images/products/257_3.jpg', '/images/products/257_4.jpg', '/images/products/257_5.jpg', 'crocs', '', 260, 1, '2026-06-16 17:09:44'),
(258, 'Vivo Y200 5G Mobile (Jungle Green, 8GB RAM, 256GB Storage) with No Cost EMI/Additional Exchange Offers', 'Default', 'Free Size', '', 499.00, 20999.00, '', '/images/products/258_1.jpg', '/images/products/258_2.jpg', '/images/products/258_3.jpg', '/images/products/258_4.jpg', '/images/products/258_5.jpg', 'Mobile', '', 261, 1, '2026-06-16 17:09:44'),
(259, 'Oshin 100% Cotton Tie-Up Waist Bell Sleeve Dress', 'Default', 'Free Size', '', 259.00, 2999.00, '', '/images/products/259_1.jpg', '/images/products/259_2.jpg', '/images/products/259_3.jpg', '/images/products/259_4.jpg', '/images/products/259_5.jpg', 'Western Wear', '', 262, 1, '2026-06-16 17:09:44'),
(260, 'Adidas Women\'s ADILETTE PLATFORM Blue Slides', 'Default', 'Free Size', '', 411.00, 3199.00, '', '/images/products/260_1.jpg', '/images/products/260_2.jpg', '/images/products/260_3.jpg', '/images/products/260_4.jpg', '/images/products/260_5.jpg', 'crocs', '', 263, 1, '2026-06-16 17:09:44'),
(261, 'Adidas Women\'s ADILETTE SHOWER Pink Slides', 'Default', 'Free Size', '', 411.00, 2499.00, '', '/images/products/261_1.jpg', '/images/products/261_2.jpg', '/images/products/261_3.jpg', '/images/products/261_4.jpg', '/images/products/261_5.jpg', 'crocs', '', 264, 1, '2026-06-16 17:09:44'),
(262, 'HOKIPO Printed 5 Seater Fully Covered Sofa Cover in 3 Seater and 2 Seater Configuration, Bottle Green (AR-4278-E25 + AR-4279-E25)', 'Default', 'Free Size', '', 389.00, 8999.00, '', '/images/products/262_1.jpg', '/images/products/262_2.jpg', '/images/products/262_3.jpg', '/images/products/262_4.jpg', '/images/products/262_5.jpg', 'Furniture', '', 265, 1, '2026-06-16 17:09:44'),
(263, 'OnePlus Nord CE4 (Celadon Marble, 8GB RAM, 128GB Storage) | Lifetime Display Warranty | Qualcomm® Snapdragon™ 7 Gen 3 - Best in The Segment | 50 MP Camera with OIS', 'Default', 'Free Size', '', 499.00, 19999.00, '', '/images/products/263_1.jpg', '/images/products/263_2.jpg', '/images/products/263_3.jpg', '/images/products/263_4.jpg', '/images/products/263_5.jpg', 'Mobile', '', 266, 1, '2026-06-16 17:09:44'),
(264, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 399.00, 6499.00, '', '/images/products/264_1.jpg', '/images/products/264_2.jpg', '/images/products/264_3.jpg', '/images/products/264_4.jpg', '/images/products/264_5.jpg', 'crocs', '', 267, 1, '2026-06-16 17:09:44'),
(265, '1 Kg Almonds Kernel | Premium Badam Giri', 'Default', 'Free Size', '', 239.00, 1299.00, '', '/images/products/265_1.jpg', '/images/products/265_2.jpg', '/images/products/265_3.jpg', '/images/products/265_4.jpg', '/images/products/265_5.jpg', 'Grocery', '', 268, 1, '2026-06-16 17:09:44'),
(266, 'Skechers SKX Aero Burst', 'Default', 'Free Size', '', 393.00, 7899.00, '', '/images/products/266_1.jpg', '/images/products/266_2.jpg', '/images/products/266_3.jpg', '/images/products/266_4.jpg', '/images/products/266_5.jpg', 'Shoes', '', 269, 1, '2026-06-16 17:09:44'),
(267, 'Skechers GO WALK FLEX SANDAL', 'Default', 'Free Size', '', 399.00, 5999.00, '', '/images/products/267_1.jpg', '/images/products/267_2.jpg', '/images/products/267_3.jpg', '/images/products/267_4.jpg', '/images/products/267_5.jpg', '', '', 270, 1, '2026-06-16 17:09:44'),
(268, 'Skechers HYPER SLIDE - DERIVER', 'Default', 'Free Size', '', 399.00, 4799.00, '', '/images/products/268_1.jpg', '/images/products/268_2.jpg', '/images/products/268_3.jpg', '/images/products/268_4.jpg', '/images/products/268_5.jpg', 'crocs', '', 271, 1, '2026-06-16 17:09:44'),
(269, 'Skechers GO RUN Razor 5', 'Default', 'Free Size', '', 411.00, 6899.00, '', '/images/products/269_1.jpg', '/images/products/269_2.jpg', '/images/products/269_3.jpg', '/images/products/269_4.jpg', '/images/products/269_5.jpg', 'Shoes', '', 272, 1, '2026-06-16 17:09:44'),
(270, 'Onion Pink Zariwork Soft Silk Saree', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/270_1.jpg', '/images/products/270_2.jpg', '/images/products/270_3.jpg', '/images/products/270_4.jpg', '/images/products/270_5.jpg', 'kurtis', '', 273, 1, '2026-06-16 17:09:44'),
(271, 'Adorn India Premium New Aspen 3 Seater Sofa Cum Bed 4X6 Velvet Suede with 2 Cushions (Color Grey) and Suitable for All Indoor, with 3 Years Warranty', 'Default', 'Free Size', '', 449.00, 31999.00, '', '/images/products/271_1.jpg', '/images/products/271_2.jpg', '/images/products/271_3.jpg', '/images/products/271_4.jpg', '/images/products/271_5.jpg', 'Furniture', '', 274, 1, '2026-06-16 17:09:45'),
(272, 'Philips Hair Dryer Powerful Drying with Less HeatIIonic Care for Smooth & Shiny HairI 3 Styling Options for Salon like BlowdryI 1600 WattsI Cool ShotI Men & WomenI 2 Year WarrantyI BHD318/00, Purple', 'Default', 'Free Size', '', 399.00, 2999.00, '', '/images/products/272_1.jpg', '/images/products/272_2.jpg', '/images/products/272_3.jpg', '/images/products/272_4.jpg', '/images/products/272_5.jpg', 'Electronics', '', 275, 1, '2026-06-16 17:09:45'),
(273, 'JBL Flip 6 Wireless Portable Bluetooth Speaker Pro Sound, Upto 12 Hours Playtime, IP67 Water & Dustproof, PartyBoost & Personalization App (Without Mic, Black)', 'Default', 'Free Size', '', 389.00, 8999.00, '', '/images/products/273_1.jpg', '/images/products/273_2.jpg', '/images/products/273_3.jpg', '/images/products/273_4.jpg', '/images/products/273_5.jpg', 'Electronics', '', 276, 1, '2026-06-16 17:09:45'),
(274, 'Navy Blue Linen Blend Ikat Print Kurta', 'Default', 'Free Size', '', 189.00, 1999.00, '', '/images/products/274_1.jpg', '/images/products/274_2.jpg', '/images/products/274_3.jpg', '/images/products/274_4.jpg', '/images/products/274_5.jpg', 'kurtis', '', 277, 1, '2026-06-16 17:09:45'),
(275, 'crocs womens Swiftwater Sandal W Sandal', 'Default', 'Free Size', '', 411.00, 3199.00, '', '/images/products/275_1.jpg', '/images/products/275_2.jpg', '/images/products/275_3.jpg', '/images/products/275_4.jpg', '/images/products/275_5.jpg', 'crocs', '', 278, 1, '2026-06-16 17:09:45'),
(276, 'JBL Partybox 110, Wireless Bluetooth Party Speaker, 160W Monstrous Pro Sound, Dynamic Light Show, Upto 12Hrs Playtime, Built-in Powerbank, Guitar & Mic Input, PartyBox App, Splashproof (Black)', 'Default', 'Free Size', '', 399.00, 24999.00, '', '/images/products/276_1.jpg', '/images/products/276_2.jpg', '/images/products/276_3.jpg', '/images/products/276_4.jpg', '/images/products/276_5.jpg', 'Electronics', '', 279, 1, '2026-06-16 17:09:45'),
(277, 'Indigo Blue Georgette Festive Saree', 'Default', 'Free Size', '', 179.00, 2199.00, '', '/images/products/277_1.jpg', '/images/products/277_2.jpg', '/images/products/277_3.jpg', '/images/products/277_4.jpg', '/images/products/277_5.jpg', 'kurtis', '', 280, 1, '2026-06-16 17:09:45'),
(278, 'Skechers TRES-AIR UNO - AH - MAZING', 'Default', 'Free Size', '', 389.00, 7899.00, '', '/images/products/278_1.jpg', '/images/products/278_2.jpg', '/images/products/278_3.jpg', '/images/products/278_4.jpg', '/images/products/278_5.jpg', 'Shoes', '', 281, 1, '2026-06-16 17:09:45'),
(279, 'Off -White Striped Cotton Blend Flared Western Dress', 'Default', 'Free Size', '', 179.00, 1399.00, '', '/images/products/279_1.jpg', '/images/products/279_2.jpg', '/images/products/279_3.jpg', '/images/products/279_4.jpg', '/images/products/279_5.jpg', 'kurtis', '', 282, 1, '2026-06-16 17:09:45'),
(280, 'Yellow Floral Printed Shirt Dress', 'Default', 'Free Size', '', 149.00, 1399.00, '', '/images/products/280_1.jpg', '/images/products/280_2.jpg', '/images/products/280_3.jpg', '/images/products/280_4.jpg', '/images/products/280_5.jpg', 'kurtis', '', 283, 1, '2026-06-16 17:09:45'),
(281, 'Beige Rayon Floral Printed Kurta', 'Default', 'Free Size', '', 189.00, 1399.00, '', '/images/products/281_1.jpg', '/images/products/281_2.jpg', '/images/products/281_3.jpg', '/images/products/281_4.jpg', '/images/products/281_5.jpg', 'kurtis', '', 284, 1, '2026-06-16 17:09:44'),
(282, 'Skechers HYPER SLIDE - RELIANCE', 'Default', 'Free Size', '', 411.00, 5999.00, '', '/images/products/282_1.jpg', '/images/products/282_2.jpg', '/images/products/282_3.jpg', '/images/products/282_4.jpg', '/images/products/282_5.jpg', 'crocs', '', 285, 1, '2026-06-16 17:09:44'),
(283, 'Fuchsia Cotton Blend Abstract Print Kurta', 'Default', 'Free Size', '', 179.00, 1599.00, '', '/images/products/283_1.jpg', '/images/products/283_2.jpg', '/images/products/283_3.jpg', '/images/products/283_4.jpg', '/images/products/283_5.jpg', 'kurtis', '', 286, 1, '2026-06-16 17:09:44'),
(284, 'ZEBRONICS Juke bar 9550 pro 5.2 Soundbar (625 Watts), Dolby Audio, Dual Wireless Subwoofer & Satellite, BT v5.3, HDMI ARC, Optical, Powerful Bass, RGB LED Lights, Wall Mountable', 'Default', 'Free Size', '', 389.00, 17449.00, '', '/images/products/284_1.jpg', '/images/products/284_2.jpg', '/images/products/284_3.jpg', '/images/products/284_4.jpg', '/images/products/284_5.jpg', 'Electronics', '', 287, 1, '2026-06-16 17:09:44'),
(285, '5 Kg - Fortune Sunlite Refined Sunflower Oil', 'Default', 'Free Size', '', 239.00, 1199.00, '', '/images/products/285_1.jpg', '/images/products/285_2.jpg', '/images/products/285_3.jpg', '/images/products/285_4.jpg', '/images/products/285_5.jpg', 'Grocery', '', 288, 1, '2026-06-16 17:09:44'),
(286, 'Crocs ALL-TERRAIN CLOG', 'Default', 'Free Size', '', 389.00, 6499.00, '', '/images/products/286_1.jpg', '/images/products/286_2.jpg', '/images/products/286_3.jpg', '/images/products/286_4.jpg', '/images/products/286_5.jpg', 'crocs', '', 289, 1, '2026-06-16 17:09:44'),
(287, 'boAt Rockerz 255 Pro+  ', 'Default', 'Free Size', '', 389.00, 1199.00, '', '/images/products/287_1.jpg', '/images/products/287_2.jpg', '/images/products/287_3.jpg', '/images/products/287_4.jpg', '/images/products/287_5.jpg', 'Electronics', '', 290, 1, '2026-06-16 17:09:44'),
(288, 'GETAWAY GLITTER FLIP', 'Default', 'Free Size', '', 411.00, 2699.00, '', '/images/products/288_1.jpg', '/images/products/288_2.jpg', '/images/products/288_3.jpg', '/images/products/288_4.jpg', '/images/products/288_5.jpg', 'crocs', '', 291, 1, '2026-06-16 17:09:44'),
(289, 'Teal & Navy Chowki Saree With Unstitched Blouse', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/289_1.jpg', '/images/products/289_2.jpg', '/images/products/289_3.jpg', '/images/products/289_4.jpg', '/images/products/289_5.jpg', 'kurtis', '', 292, 1, '2026-06-16 17:09:44');

INSERT INTO `tbl_product` (`id`, `name`, `color`, `size`, `storage`, `selling_price`, `mrp`, `features`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `keywords`, `disp_order`, `from_csv`, `created_at`) VALUES
(290, 'boAt Immortal 1300', 'Default', 'Free Size', '', 391.00, 3499.00, '', '/images/products/290_1.jpg', '/images/products/290_2.jpg', '/images/products/290_3.jpg', '/images/products/290_4.jpg', '/images/products/290_5.jpg', 'Electronics', '', 293, 1, '2026-06-16 17:09:44'),
(291, 'Skechers GO RUN RIDE 11', 'Default', 'Free Size', '', 411.00, 6999.00, '', '/images/products/291_1.jpg', '/images/products/291_2.jpg', '/images/products/291_3.jpg', '/images/products/291_4.jpg', '/images/products/291_5.jpg', 'Shoes', '', 294, 1, '2026-06-16 17:09:44'),
(292, 'BLUEWUD Kaspen Engineered Wood Wood Dual Tone 3 Doors Shoe Rack Cabinet Slipper Footwear Stand Organizer with Drawer can Store Up to 16 Pairs for Home (Brown Maple & White)', 'Default', 'Free Size', '', 391.00, 8999.00, '', '/images/products/292_1.jpg', '/images/products/292_2.jpg', '/images/products/292_3.jpg', '/images/products/292_4.jpg', '/images/products/292_5.jpg', 'Furniture', '', 295, 1, '2026-06-16 17:09:44'),
(293, 'Redmi 13 5G Prime Edition, Orchid Pink, 8GB+128GB | India Debut SD 4 Gen 2 AE | 108MP Pro Grade Camera | 6.79in Largest Display in Segment', 'Default', 'Free Size', '', 599.00, 12999.00, '', '/images/products/293_1.jpg', '/images/products/293_2.jpg', '/images/products/293_3.jpg', '/images/products/293_4.jpg', '/images/products/293_5.jpg', 'Mobile', '', 296, 1, '2026-06-16 17:09:44'),
(294, 'Solid Flared Pure Cotton Dress', 'Default', 'Free Size', '', 179.00, 1399.00, '', '/images/products/294_1.jpg', '/images/products/294_2.jpg', '/images/products/294_3.jpg', '/images/products/294_4.jpg', '/images/products/294_5.jpg', 'kurtis', '', 297, 1, '2026-06-16 17:09:44'),
(295, 'Noura 100% Cotton Pleated Bubble Hem Dress', 'Default', 'Free Size', '', 249.00, 1999.00, '', '/images/products/295_1.jpg', '/images/products/295_2.jpg', '/images/products/295_3.jpg', '/images/products/295_4.jpg', '/images/products/295_5.jpg', 'Western Wear', '', 298, 1, '2026-06-16 17:09:44'),
(296, 'Skechers GO WALK FLEX SANDAL', 'Default', 'Free Size', '', 379.00, 5999.00, '', '/images/products/296_1.jpg', '/images/products/296_2.jpg', '/images/products/296_3.jpg', '/images/products/296_4.jpg', '/images/products/296_5.jpg', '', '', 299, 1, '2026-06-16 17:09:44'),
(297, 'Skechers HYPER SLIDE - RELIANCE', 'Default', 'Free Size', '', 393.00, 5999.00, '', '/images/products/297_1.jpg', '/images/products/297_2.jpg', '/images/products/297_3.jpg', '/images/products/297_4.jpg', '/images/products/297_5.jpg', 'crocs', '', 300, 1, '2026-06-16 17:09:44'),
(298, 'Hancy 100% Cotton Shirt Dress', 'Default', 'Free Size', '', 259.00, 1999.00, '', '/images/products/298_1.jpg', '/images/products/298_2.jpg', '/images/products/298_3.jpg', '/images/products/298_4.jpg', '/images/products/298_5.jpg', 'Western Wear', '', 301, 1, '2026-06-16 17:09:44'),
(299, 'boAt Nirvana Space', 'Default', 'Free Size', '', 389.00, 2499.00, '', '/images/products/299_1.jpg', '/images/products/299_2.jpg', '/images/products/299_3.jpg', '/images/products/299_4.jpg', '/images/products/299_5.jpg', 'Electronics', '', 302, 1, '2026-06-16 17:09:44'),
(300, '5Kg India Gate Basmati Rice Super, 5L Fortune Rice Bran Health : Combo of 2', 'Default', 'Free Size', '', 399.00, 3499.00, '', '/images/products/300_1.jpg', '', '', '', '', 'Grocery', '', 303, 1, '2026-06-16 17:09:44'),
(301, 'Blue Mirage Ayati Saree With Unstitched Blouse', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/301_1.jpg', '/images/products/301_2.jpg', '/images/products/301_3.jpg', '/images/products/301_4.jpg', '/images/products/301_5.jpg', 'kurtis', '', 304, 1, '2026-06-16 17:09:47'),
(302, 'White Stripe Printed Pintuck Tunic And Pants Co-Ord Set', 'Default', 'Free Size', '', 199.00, 1289.00, '', '/images/products/302_1.jpg', '/images/products/302_2.jpg', '/images/products/302_3.jpg', '/images/products/302_4.jpg', '/images/products/302_5.jpg', 'kurtis', '', 305, 1, '2026-06-16 17:09:47'),
(303, 'Double Seater Swing - 2 Seater Swing for Balcony with Large Grey Full Body Sitting Cushion (Black)-Polyester, 20 Cm', 'Default', 'Free Size', '', 399.00, 9999.00, '', '/images/products/303_1.jpg', '/images/products/303_2.jpg', '/images/products/303_3.jpg', '/images/products/303_4.jpg', '/images/products/303_5.jpg', 'Furniture', '', 306, 1, '2026-06-16 17:09:47'),
(304, 'Green Floral Printed A-Line Kurta & Pants Co-Ord Set', 'Default', 'Free Size', '', 179.00, 2199.00, '', '/images/products/304_1.jpg', '/images/products/304_2.jpg', '/images/products/304_3.jpg', '/images/products/304_4.jpg', '/images/products/304_5.jpg', 'kurtis', '', 307, 1, '2026-06-16 17:09:47'),
(305, 'INSTER Combo of Bean Bag Cover with Footrest and Cushion Only (Without Filling) Faux Leather Bean Bag Chair Couch Cover Seat Lazy Sofa (4XL, Cream)', 'Default', 'Free Size', '', 389.00, 9999.00, '', '/images/products/305_1.jpg', '/images/products/305_2.jpg', '/images/products/305_3.jpg', '/images/products/305_4.jpg', '/images/products/305_5.jpg', 'Furniture', '', 308, 1, '2026-06-16 17:09:47'),
(306, 'Cream Printed Linen Blend Kurta With Mirror Work', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/306_1.jpg', '/images/products/306_2.jpg', '/images/products/306_3.jpg', '/images/products/306_4.jpg', '/images/products/306_5.jpg', 'kurtis', '', 309, 1, '2026-06-16 17:09:47'),
(307, 'Saleisha 100% Cotton Crop Top', 'Default', 'Free Size', '', 259.00, 1699.00, '', '/images/products/307_1.jpg', '/images/products/307_2.jpg', '/images/products/307_3.jpg', '/images/products/307_4.jpg', '/images/products/307_5.jpg', 'Western Wear', '', 310, 1, '2026-06-16 17:09:47'),
(308, 'Skechers SKX Aero Burst', 'Default', 'Free Size', '', 389.00, 7899.00, '', '/images/products/308_1.jpg', '/images/products/308_2.jpg', '/images/products/308_3.jpg', '/images/products/308_4.jpg', '/images/products/308_5.jpg', 'Shoes', '', 311, 1, '2026-06-16 17:09:47'),
(309, 'Ambreal 100% Cotton Corset Top With Puff Sleeves', 'Default', 'Free Size', '', 259.00, 999.00, '', '/images/products/309_1.jpg', '/images/products/309_2.jpg', '/images/products/309_3.jpg', '/images/products/309_4.jpg', '/images/products/309_5.jpg', 'Western Wear', '', 312, 1, '2026-06-16 17:09:47'),
(310, 'Home Centre 3 Seater Berry Fabric Sofa|Fabric Sofa for Living Room|(Grey)|2 Year Warranty', 'Default', 'Free Size', '', 389.00, 21499.00, '', '/images/products/310_1.jpg', '/images/products/310_2.jpg', '/images/products/310_3.jpg', '/images/products/310_4.jpg', '/images/products/310_5.jpg', 'Furniture', '', 313, 1, '2026-06-16 17:09:47'),
(311, 'Skechers Aero Spark', 'Default', 'Free Size', '', 379.00, 7899.00, '', '/images/products/311_1.jpg', '/images/products/311_2.jpg', '/images/products/311_3.jpg', '/images/products/311_4.jpg', '/images/products/311_5.jpg', 'Shoes', '', 314, 1, '2026-06-16 17:09:48'),
(312, 'Rattan Knots Craft India Single Seater Swing Chair With Stand & Cushion Outdoor Indoor Balcony Garden Patio,Powder Coated Frame,Uv Protected Wicker,Premium Cushion Af_In_038', 'Default', 'Free Size', '', 391.00, 31999.00, '', '/images/products/312_1.jpg', '/images/products/312_2.jpg', '/images/products/312_3.jpg', '/images/products/312_4.jpg', '/images/products/312_5.jpg', 'Furniture', '', 315, 1, '2026-06-16 17:09:48'),
(313, 'Eileen 100% Cotton Front Tie Lace Detail Dress', 'Default', 'Free Size', '', 259.00, 2500.00, '', '/images/products/313_1.jpg', '/images/products/313_2.jpg', '/images/products/313_3.jpg', '/images/products/313_4.jpg', '/images/products/313_5.jpg', 'Western Wear', '', 316, 1, '2026-06-16 17:09:48'),
(314, 'EnergyShroom PB300', 'Default', 'Free Size', '', 393.00, 1199.00, '', '/images/products/314_1.jpg', '/images/products/314_2.jpg', '/images/products/314_3.jpg', '/images/products/314_4.jpg', '/images/products/314_5.jpg', 'Electronics', '', 317, 1, '2026-06-16 17:09:48'),
(315, 'OnePlus Nord CE4 (Dark Chrome, 8GB RAM, 256GB Storage) | Lifetime Display Warranty | Qualcomm® Snapdragon™ 7 Gen 3 - Best in The Segment | 50 MP Camera with OIS', 'Default', 'Free Size', '', 599.00, 24999.00, '', '/images/products/315_1.jpg', '/images/products/315_2.jpg', '/images/products/315_3.jpg', '/images/products/315_4.jpg', '/images/products/315_5.jpg', 'Electronics', '', 318, 1, '2026-06-16 17:09:48'),
(316, 'Samsung Galaxy A55 5G (Awesome Iceblue, 8GB RAM, 256GB Storage) | AI | Metal Frame | 50 MP Main Camera (OIS) | Super HDR Video| Nightography | IP67 | Corning Gorilla Glass Victus+ | sAMOLED Display', 'Default', 'Free Size', '', 799.00, 25999.00, '', '/images/products/316_1.jpg', '/images/products/316_2.jpg', '/images/products/316_3.jpg', '/images/products/316_4.jpg', '/images/products/316_5.jpg', 'Mobile', '', 319, 1, '2026-06-16 17:09:48'),
(317, 'Wonderchef Nutri-blend 500W Juicer Mixer Grinder, 22000 RPM Copper Motor, Smoothie Maker, Masala Grinder, Chutney Blender, 2 Unbreakable Jars, Recipe Book by Chef Sanjeev Kapoor, 2 Yr Warranty, Black', 'Default', 'Free Size', '', 393.00, 2299.00, '', '/images/products/317_1.jpg', '/images/products/317_2.jpg', '/images/products/317_3.jpg', '/images/products/317_4.jpg', '/images/products/317_5.jpg', 'Appliances', '', 320, 1, '2026-06-16 17:09:48'),
(318, 'Dabur Chyawanprash, 1Kg Vedaka Almond, 1Kg Namo Organics Kaju : Combo of 3', 'Default', 'Free Size', '', 299.00, 1299.00, '', '/images/products/318_1.jpg', '', '', '', '', 'Grocery', '', 321, 1, '2026-06-16 17:09:48'),
(319, 'Rani Pink Grid Patterned Saree with Peacock Motifs', 'Default', 'Free Size', '', 149.00, 1599.00, '', '/images/products/319_1.jpg', '/images/products/319_2.jpg', '/images/products/319_3.jpg', '/images/products/319_4.jpg', '/images/products/319_5.jpg', 'kurtis', '', 322, 1, '2026-06-16 17:09:48'),
(320, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 399.00, 2399.00, '', '/images/products/320_1.jpg', '/images/products/320_2.jpg', '/images/products/320_3.jpg', '/images/products/320_4.jpg', '', 'crocs', '', 323, 1, '2026-06-16 17:09:48'),
(321, 'Ferrero Rocher Premium Chocolates 24 Pieces', 'Default', 'Free Size', '', 289.00, 999.00, '', '/images/products/321_1.jpg', '/images/products/321_2.jpg', '/images/products/321_3.jpg', '/images/products/321_4.jpg', '/images/products/321_5.jpg', 'Grocery', '', 324, 1, '2026-06-16 17:09:46'),
(322, 'Skechers GO WALK ARCH FIT 2.0 - IDYLLI', 'Default', 'Free Size', '', 393.00, 6499.00, '', '/images/products/322_1.jpg', '/images/products/322_2.jpg', '/images/products/322_3.jpg', '/images/products/322_4.jpg', '/images/products/322_5.jpg', 'Shoes', '', 325, 1, '2026-06-16 17:09:46'),
(323, 'Single Seater Swing Chair with Stand & Cushion Outdoor Indoor Balcony Garden Patio,Powder Coated Frame,UV Protected Wicker,Premium Cushion, Metal', 'Default', 'Free Size', '', 389.00, 9999.00, '', '/images/products/323_1.jpg', '/images/products/323_2.jpg', '/images/products/323_3.jpg', '/images/products/323_4.jpg', '', 'Furniture', '', 326, 1, '2026-06-16 17:09:46'),
(324, 'JBL Wave Buds 2 Ear Buds Wireless BluetoothV5.3, Active Noise Cancellation EarBuds', 'Default', 'Free Size', '', 399.00, 2999.00, '', '/images/products/324_1.jpg', '/images/products/324_2.jpg', '/images/products/324_3.jpg', '/images/products/324_4.jpg', '/images/products/324_5.jpg', 'Electronics', '', 327, 1, '2026-06-16 17:09:46'),
(325, 'Skechers Slip-ins: BOBS Sun Ray - Bright Take', 'Default', 'Free Size', '', 391.00, 7899.00, '', '/images/products/325_1.jpg', '/images/products/325_2.jpg', '/images/products/325_3.jpg', '', '', 'crocs', '', 328, 1, '2026-06-16 17:09:46'),
(326, 'Peachtree Eden 2 Seater Sofa for Living Room| Sofa with 2 Cushions, 3 Year Warranty, Velvet Fabric Sofa with Mango Wooden Frame & Sheesham Wood Legs | Padded Armstyle (Teal Blue)', 'Default', 'Free Size', '', 391.00, 31999.00, '', '/images/products/326_1.jpg', '/images/products/326_2.jpg', '/images/products/326_3.jpg', '/images/products/326_4.jpg', '/images/products/326_5.jpg', 'Furniture', '', 329, 1, '2026-06-16 17:09:46'),
(327, 'Saregama Carvaan Hindi - Portable Music Player with 5000 Preloaded Songs, FM/BT/AUX (Cherrywood Red)', 'Default', 'Free Size', '', 379.00, 7599.00, '', '/images/products/327_1.jpg', '/images/products/327_2.jpg', '/images/products/327_3.jpg', '/images/products/327_4.jpg', '/images/products/327_5.jpg', 'Electronics', '', 330, 1, '2026-06-16 17:09:46'),
(328, 'Crocs Baya Clog', 'Default', 'Free Size', '', 399.00, 3799.00, '', '/images/products/328_1.jpg', '/images/products/328_2.jpg', '/images/products/328_3.jpg', '/images/products/328_4.jpg', '/images/products/328_5.jpg', 'crocs', '', 331, 1, '2026-06-16 17:09:46'),
(329, 'Adidas ADILETTE AQUA SLIDES', 'Default', 'Free Size', '', 399.00, 2460.00, '', '/images/products/329_1.jpg', '/images/products/329_2.jpg', '/images/products/329_3.jpg', '/images/products/329_4.jpg', '', 'crocs', '', 332, 1, '2026-06-16 17:09:46'),
(330, 'Skechers ARCH FIT 2.0-RICH VISION', 'Default', 'Free Size', '', 393.00, 6799.00, '', '/images/products/330_1.jpg', '/images/products/330_2.jpg', '/images/products/330_3.jpg', '/images/products/330_4.jpg', '/images/products/330_5.jpg', 'Shoes', '', 333, 1, '2026-06-16 17:09:46'),
(331, 'Black Multi Madhuhira Saree With Stitched Blouse', 'Default', 'Free Size', '', 189.00, 1289.00, '', '/images/products/331_1.jpg', '/images/products/331_2.jpg', '', '', '', 'kurtis', '', 334, 1, '2026-06-16 17:09:46'),
(332, 'Executive Boss Chair with Spacious Cushioned Seat | Heavy Duty Metal Base | High Back | 3 Years Warranty (Black)', 'Default', 'Free Size', '', 411.00, 9999.00, '', '/images/products/332_1.jpg', '/images/products/332_2.jpg', '/images/products/332_3.jpg', '/images/products/332_4.jpg', '', 'Furniture', '', 335, 1, '2026-06-16 17:09:46'),
(333, 'crocs Unisex-Adult Clog Duet Max Clog', 'Default', 'Free Size', '', 393.00, 4995.00, '', '/images/products/333_1.jpg', '/images/products/333_2.jpg', '/images/products/333_3.jpg', '/images/products/333_4.jpg', '/images/products/333_5.jpg', 'crocs', '', 336, 1, '2026-06-16 17:09:46'),
(334, 'Pearo Inflatable Air Sofa Chair - Portable Single Seater Recliner Sofa Bed Set with Pump, Comfortable Air Chair, Inflatable Lounge Chair for Home, Outdoors & Travel', 'Default', 'Free Size', '', 399.00, 19999.00, '', '/images/products/334_1.jpg', '/images/products/334_2.jpg', '/images/products/334_3.jpg', '/images/products/334_4.jpg', '/images/products/334_5.jpg', 'Furniture', '', 337, 1, '2026-06-16 17:09:46'),
(335, 'Crocs CLASSIC LINED CLOG', 'Default', 'Free Size', '', 389.00, 4599.00, '', '/images/products/335_1.jpg', '/images/products/335_2.jpg', '/images/products/335_3.jpg', '', '', 'crocs', '', 338, 1, '2026-06-16 17:09:46'),
(336, '10 Gm BRAND SAFFRON Grade A+++ Kashmiri Mongra Saffron/Kesar for Pregnant Women, Biryani, Beauty, Cooking and Sweets', 'Default', 'Free Size', '', 349.00, 3499.00, '', '/images/products/336_1.jpg', '/images/products/336_2.jpg', '/images/products/336_3.jpg', '/images/products/336_4.jpg', '/images/products/336_5.jpg', 'Grocery', '', 339, 1, '2026-06-16 17:09:46'),
(337, '6kg+2kg Tide Plus Double Power Detergent Washing Powder Jasmine & Rose 7kg + 3kg FREE', 'Default', 'Free Size', '', 249.00, 999.00, '', '/images/products/337_1.jpg', '/images/products/337_2.jpg', '/images/products/337_3.jpg', '/images/products/337_4.jpg', '/images/products/337_5.jpg', 'Grocery', '', 340, 1, '2026-06-16 17:09:46'),
(338, 'Stevvi 100% Cotton Schiffli Skater Dress', 'Default', 'Free Size', '', 259.00, 2499.00, '', '/images/products/338_1.jpg', '/images/products/338_2.jpg', '/images/products/338_3.jpg', '/images/products/338_4.jpg', '/images/products/338_5.jpg', 'Western Wear', '', 341, 1, '2026-06-16 17:09:46'),
(339, 'Skechers Slip-ins Relaxed Fit: Arch Fit Garza - Langston', 'Default', 'Free Size', '', 411.00, 9199.00, '', '/images/products/339_1.jpg', '/images/products/339_2.jpg', '/images/products/339_3.jpg', '/images/products/339_4.jpg', '/images/products/339_5.jpg', 'Shoes', '', 342, 1, '2026-06-16 17:09:46'),
(340, 'Afghani Dried Anjeer Zaika 1 Kg', 'Default', 'Free Size', '', 289.00, 1989.00, '', '/images/products/340_1.jpg', '/images/products/340_2.jpg', '/images/products/340_3.jpg', '/images/products/340_4.jpg', '/images/products/340_5.jpg', 'Grocery', '', 343, 1, '2026-06-16 17:09:46'),
(341, 'HONOR 200 5G (8GB+256GB, Moonlight White) – 50MP+50MP+12MP Triple Camera with Dual OIS | 50MP Selfie | Quad-Curved AMOLED Display | AI-Powered MagicOS 9.0 | Without Charger', 'Default', 'Free Size', '', 599.00, 21999.00, '', '/images/products/341_1.jpg', '/images/products/341_2.jpg', '/images/products/341_3.jpg', '/images/products/341_4.jpg', '/images/products/341_5.jpg', 'Mobile', '', 344, 1, '2026-06-16 17:09:46'),
(342, 'Pink & Beige Shereen Saree With Unstitched Blouse', 'Default', 'Free Size', '', 189.00, 1289.00, '', '/images/products/342_1.jpg', '/images/products/342_2.jpg', '/images/products/342_3.jpg', '/images/products/342_4.jpg', '/images/products/342_5.jpg', 'kurtis', '', 345, 1, '2026-06-16 17:09:46'),
(343, 'ARCH FIT 2.0-RICH VISION', 'Default', 'Free Size', '', 379.00, 7899.00, '', '/images/products/343_1.jpg', '/images/products/343_2.jpg', '/images/products/343_3.jpg', '/images/products/343_4.jpg', '/images/products/343_5.jpg', 'Shoes', '', 346, 1, '2026-06-16 17:09:46'),
(344, 'Brittani Shorts 100% Cotton Paperbag High Waist Shorts', 'Default', 'Free Size', '', 259.00, 1599.00, '', '/images/products/344_1.jpg', '/images/products/344_2.jpg', '/images/products/344_3.jpg', '/images/products/344_4.jpg', '', 'Western Wear', '', 347, 1, '2026-06-16 17:09:46'),
(345, '5 Kg Unpolished Yellow Moong Dal| Popular Yello Moong Dal | Naturally Rich in Protein | Naturally Cholesterol Free', 'Default', 'Free Size', '', 249.00, 999.00, '', '/images/products/345_1.jpg', '/images/products/345_2.jpg', '/images/products/345_3.jpg', '/images/products/345_4.jpg', '/images/products/345_5.jpg', 'Grocery', '', 348, 1, '2026-06-16 17:09:46'),
(346, 'Skechers Slip-ins: 3D Energy', 'Default', 'Free Size', '', 393.00, 6799.00, '', '/images/products/346_1.jpg', '/images/products/346_2.jpg', '/images/products/346_3.jpg', '/images/products/346_4.jpg', '/images/products/346_5.jpg', 'Shoes', '', 349, 1, '2026-06-16 17:09:46'),
(347, 'Amazon Brand - Solimo Alpha 3 Door Engineered Wood Wardrobe Drawer (Wenge Finish)', 'Default', 'Free Size', '', 411.00, 31999.00, '', '/images/products/347_1.jpg', '/images/products/347_2.jpg', '/images/products/347_3.jpg', '/images/products/347_4.jpg', '/images/products/347_5.jpg', 'Furniture', '', 350, 1, '2026-06-16 17:09:46'),
(348, 'Powder Blue Viscose Muslin Ethnic Motifs Kurta With Tassels', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/348_1.jpg', '/images/products/348_2.jpg', '/images/products/348_3.jpg', '/images/products/348_4.jpg', '/images/products/348_5.jpg', 'kurtis', '', 351, 1, '2026-06-16 17:09:46'),
(349, 'Skechers Slip-ins: 3D Energy', 'Default', 'Free Size', '', 379.00, 6999.00, '', '/images/products/349_1.jpg', '/images/products/349_2.jpg', '/images/products/349_3.jpg', '/images/products/349_4.jpg', '/images/products/349_5.jpg', 'Shoes', '', 352, 1, '2026-06-16 17:09:46'),
(350, 'Ecru Printed Kurta & Pants Co-Ord Set With Kantha Detail', 'Default', 'Free Size', '', 189.00, 2199.00, '', '/images/products/350_1.jpg', '/images/products/350_2.jpg', '/images/products/350_3.jpg', '/images/products/350_4.jpg', '/images/products/350_5.jpg', 'kurtis', '', 353, 1, '2026-06-16 17:09:46'),
(351, 'Skechers HYPER SLIDE - DERIVER', 'Default', 'Free Size', '', 391.00, 5499.00, '', '/images/products/351_1.jpg', '/images/products/351_2.jpg', '/images/products/351_3.jpg', '/images/products/351_4.jpg', '/images/products/351_5.jpg', 'crocs', '', 354, 1, '2026-06-16 17:09:46'),
(352, 'iPhone 16e 128 GB: Built for Apple Intelligence, A18 Chip, Supersized Battery Life, 48MP Fusion. Camera, 15.40 cm (6.1″) Super Retina XDR Display; Black', 'Default', 'Free Size', '', 999.00, 49999.00, '', '/images/products/352_1.jpg', '/images/products/352_2.jpg', '/images/products/352_3.jpg', '/images/products/352_4.jpg', '/images/products/352_5.jpg', 'Mobile', '', 355, 1, '2026-06-16 17:09:46'),
(353, 'OnePlus Nord Buds 3 Pro Truly Wireless Bluetooth in Ear Earbuds with Upto 49Db Active Noise Cancellation,12.4Mm Dynamic Drivers,10Mins for 11Hrs Fast Charging with Upto 44Hrs Music Playback', 'Default', 'Free Size', '', 393.00, 2799.00, '', '/images/products/353_1.jpg', '/images/products/353_2.jpg', '/images/products/353_3.jpg', '/images/products/353_4.jpg', '/images/products/353_5.jpg', 'Electronics', '', 356, 1, '2026-06-16 17:09:46'),
(354, 'Rose Red Embroidered Border Saree', 'Default', 'Free Size', '', 189.00, 1289.00, '', '/images/products/354_1.jpg', '/images/products/354_2.jpg', '/images/products/354_3.jpg', '/images/products/354_4.jpg', '/images/products/354_5.jpg', 'kurtis', '', 357, 1, '2026-06-16 17:09:46'),
(355, 'OPPO Reno14 5G (Mint Green, 8GB RAM, 256GB Storage) with No Cost EMI/Additional Exchange Offers', 'Default', 'Free Size', '', 859.00, 29999.00, '', '/images/products/355_1.jpg', '/images/products/355_2.jpg', '/images/products/355_3.jpg', '/images/products/355_4.jpg', '/images/products/355_5.jpg', 'Mobile', '', 358, 1, '2026-06-16 17:09:46'),
(356, 'Crocs CLASSIC LINED CLOG', 'Default', 'Free Size', '', 389.00, 4599.00, '', '/images/products/356_1.jpg', '/images/products/356_2.jpg', '/images/products/356_3.jpg', '/images/products/356_4.jpg', '/images/products/356_5.jpg', 'crocs', '', 359, 1, '2026-06-16 17:09:46'),
(357, 'FURNY Eagel 3 Seater Fabric Sofa Cum Bed Set with 2 Cushions, Best Fit for Indian Homes, Living Rooms, Offices with 3 Year Warranty (Beige Color)', 'Default', 'Free Size', '', 391.00, 8999.00, '', '/images/products/357_1.jpg', '/images/products/357_2.jpg', '/images/products/357_3.jpg', '/images/products/357_4.jpg', '/images/products/357_5.jpg', 'Furniture', '', 360, 1, '2026-06-16 17:09:46'),
(358, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 389.00, 2499.00, '', '/images/products/358_1.jpg', '/images/products/358_2.jpg', '/images/products/358_3.jpg', '/images/products/358_4.jpg', '', 'crocs', '', 361, 1, '2026-06-16 17:09:46'),
(359, 'Crocs Unisex-Adult Literide 360 Clog Clog', 'Default', 'Free Size', '', 399.00, 5495.00, '', '/images/products/359_1.jpg', '/images/products/359_2.jpg', '/images/products/359_3.jpg', '/images/products/359_4.jpg', '/images/products/359_5.jpg', 'crocs', '', 362, 1, '2026-06-16 17:09:46'),
(360, 'Charcoal Cotton Bandhani Print Kurta With Tassels', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/360_1.jpg', '/images/products/360_2.jpg', '/images/products/360_3.jpg', '/images/products/360_4.jpg', '/images/products/360_5.jpg', 'kurtis', '', 363, 1, '2026-06-16 17:09:46');

INSERT INTO `tbl_product` (`id`, `name`, `color`, `size`, `storage`, `selling_price`, `mrp`, `features`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `keywords`, `disp_order`, `from_csv`, `created_at`) VALUES
(361, 'Skechers SKX Aero Burst', 'Default', 'Free Size', '', 391.00, 6999.00, '', '/images/products/361_1.jpg', '/images/products/361_2.jpg', '/images/products/361_3.jpg', '/images/products/361_4.jpg', '/images/products/361_5.jpg', 'Shoes', '', 364, 1, '2026-06-16 17:09:46'),
(362, 'Skechers GO WALK FLEX SANDAL', 'Default', 'Free Size', '', 399.00, 5999.00, '', '/images/products/362_1.jpg', '/images/products/362_2.jpg', '/images/products/362_3.jpg', '/images/products/362_4.jpg', '/images/products/362_5.jpg', '', '', 365, 1, '2026-06-16 17:09:46'),
(363, 'Prestige IRIS Plus 750 watt mixer grinder with Jar', 'Default', 'Free Size', '', 389.00, 2799.00, '', '/images/products/363_1.jpg', '/images/products/363_2.jpg', '/images/products/363_3.jpg', '/images/products/363_4.jpg', '/images/products/363_5.jpg', 'Appliances', '', 366, 1, '2026-06-16 17:09:46'),
(364, 'Light Teal Dahlia Saree With Unstitched Blouse', 'Default', 'Free Size', '', 149.00, 2399.00, '', '/images/products/364_1.jpg', '/images/products/364_2.jpg', '/images/products/364_3.jpg', '/images/products/364_4.jpg', '/images/products/364_5.jpg', 'kurtis', '', 367, 1, '2026-06-16 17:09:46'),
(365, 'Coral Sterling Saree With Stitched Blouse', 'Default', 'Free Size', '', 179.00, 1399.00, '', '/images/products/365_1.jpg', '/images/products/365_2.jpg', '/images/products/365_3.jpg', '/images/products/365_4.jpg', '/images/products/365_5.jpg', 'kurtis', '', 368, 1, '2026-06-16 17:09:46'),
(366, 'Xiaomi 14 CIVI (Matcha Green, 12GB RAM, 512GB Storage)', 'Default', 'Free Size', '', 599.00, 25999.00, '', '/images/products/366_1.jpg', '/images/products/366_2.jpg', '/images/products/366_3.jpg', '/images/products/366_4.jpg', '/images/products/366_5.jpg', 'Mobile', '', 369, 1, '2026-06-16 17:09:46'),
(367, 'Adidas Women\'s SPRIGHT Pink Slides', 'Default', 'Free Size', '', 393.00, 2299.00, '', '/images/products/367_1.jpg', '/images/products/367_2.jpg', '/images/products/367_3.jpg', '/images/products/367_4.jpg', '/images/products/367_5.jpg', 'crocs', '', 370, 1, '2026-06-16 17:09:46'),
(368, 'Crocs BISTRO PRO LITERIDE™ SLIP RESISTANT WORK CLOG', 'Default', 'Free Size', '', 393.00, 4599.00, '', '/images/products/368_1.jpg', '/images/products/368_2.jpg', '/images/products/368_3.jpg', '/images/products/368_4.jpg', '/images/products/368_5.jpg', 'crocs', '', 371, 1, '2026-06-16 17:09:46'),
(369, 'White Floral Printed Pure Cotton Straight Kurta and Pants Co-ord Set', 'Default', 'Free Size', '', 149.00, 2399.00, '', '/images/products/369_1.jpg', '/images/products/369_2.jpg', '/images/products/369_3.jpg', '/images/products/369_4.jpg', '/images/products/369_5.jpg', 'kurtis', '', 372, 1, '2026-06-16 17:09:46'),
(370, 'Samsung Galaxy Z Flip7 FE 5G Smartphone with Galaxy AI (Black, 8GB RAM, 128GB Storage), Ultra Sleek Compact Design, 50MP High-Resolution FlexCam, Long-Lasting 4000 mAh Battery, All-New One UI 8', 'Default', 'Free Size', '', 899.00, 79999.00, '', '/images/products/370_1.jpg', '/images/products/370_2.jpg', '/images/products/370_3.jpg', '/images/products/370_4.jpg', '/images/products/370_5.jpg', 'Mobile', '', 373, 1, '2026-06-16 17:09:46'),
(371, 'Peacock Blue Silver Stonework Satin Saree', 'Default', 'Free Size', '', 179.00, 1399.00, '', '/images/products/371_1.jpg', '/images/products/371_2.jpg', '/images/products/371_3.jpg', '/images/products/371_4.jpg', '/images/products/371_5.jpg', 'kurtis', '', 374, 1, '2026-06-16 17:09:46'),
(372, 'Engagement Glory Purple Silk Saree with Embroidery and Zari', 'Default', 'Free Size', '', 179.00, 1999.00, '', '/images/products/372_1.jpg', '/images/products/372_2.jpg', '/images/products/372_3.jpg', '/images/products/372_4.jpg', '/images/products/372_5.jpg', 'kurtis', '', 375, 1, '2026-06-16 17:09:46'),
(373, 'Kissan Fresh Tomato, Vim, Surf Excel Matic Super Saver Pack, Surf Excel Matic 3 in 1 : Combo of 6', 'Default', 'Free Size', '', 299.00, 2499.00, '', '/images/products/373_1.jpg', '', '', '', '', 'Grocery', '', 376, 1, '2026-06-16 17:09:46'),
(374, 'White And Black Geometric Printed Top And Trouser Set', 'Default', 'Free Size', '', 149.00, 1599.00, '', '/images/products/374_1.jpg', '/images/products/374_2.jpg', '/images/products/374_3.jpg', '/images/products/374_4.jpg', '/images/products/374_5.jpg', 'kurtis', '', 377, 1, '2026-06-16 17:09:46'),
(375, 'Crocs CLASSIC COZZZY SANDAL', 'Default', 'Free Size', '', 393.00, 6499.00, '', '/images/products/375_1.jpg', '/images/products/375_2.jpg', '/images/products/375_3.jpg', '/images/products/375_4.jpg', '/images/products/375_5.jpg', 'crocs', '', 378, 1, '2026-06-16 17:09:46'),
(376, 'SKANDA FAB Low Seating Cushion -100% Cotton Twill, Hand-Plotted Microfiber Filling, Floor Cushion with 2 Back Support Cushions - Ideal for Living Room, Balcony, Lounge- 80x120 Brown (Pack of 1)', 'Default', 'Free Size', '', 449.00, 9999.00, '', '/images/products/376_1.jpg', '/images/products/376_2.jpg', '/images/products/376_3.jpg', '/images/products/376_4.jpg', '', 'Furniture', '', 379, 1, '2026-06-16 17:09:46'),
(377, 'Black Kashmiri Soft Raw Silk Saree', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/377_1.jpg', '/images/products/377_2.jpg', '/images/products/377_3.jpg', '/images/products/377_4.jpg', '/images/products/377_5.jpg', 'kurtis', '', 380, 1, '2026-06-16 17:09:46'),
(378, 'Purple Cotton Dobby Solid Kurta With Sequins', 'Default', 'Free Size', '', 199.00, 2399.00, '', '/images/products/378_1.jpg', '/images/products/378_2.jpg', '/images/products/378_3.jpg', '/images/products/378_4.jpg', '/images/products/378_5.jpg', 'kurtis', '', 381, 1, '2026-06-16 17:09:46'),
(379, 'crocs womens Swiftwater Sandal W Sandal', 'Default', 'Free Size', '', 391.00, 2599.00, '', '/images/products/379_1.jpg', '/images/products/379_2.jpg', '/images/products/379_3.jpg', '/images/products/379_4.jpg', '/images/products/379_5.jpg', 'crocs', '', 382, 1, '2026-06-16 17:09:46'),
(380, 'Skechers Aero Spark', 'Default', 'Free Size', '', 389.00, 8199.00, '', '/images/products/380_1.jpg', '/images/products/380_2.jpg', '/images/products/380_3.jpg', '/images/products/380_4.jpg', '/images/products/380_5.jpg', 'Shoes', '', 383, 1, '2026-06-16 17:09:46'),
(381, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 391.00, 2499.00, '', '/images/products/381_1.jpg', '/images/products/381_2.jpg', '/images/products/381_3.jpg', '/images/products/381_4.jpg', '', 'crocs', '', 384, 1, '2026-06-16 17:09:46'),
(382, 'Vibrant Pink Elegance Saree', 'Default', 'Free Size', '', 199.00, 1599.00, '', '/images/products/382_1.jpg', '/images/products/382_2.jpg', '/images/products/382_3.jpg', '/images/products/382_4.jpg', '/images/products/382_5.jpg', 'kurtis', '', 385, 1, '2026-06-16 17:09:46'),
(383, 'Mustard Viscose Blend Woven Design Kurta With Zari', 'Default', 'Free Size', '', 149.00, 1999.00, '', '/images/products/383_1.jpg', '/images/products/383_2.jpg', '/images/products/383_3.jpg', '/images/products/383_4.jpg', '/images/products/383_5.jpg', 'kurtis', '', 386, 1, '2026-06-16 17:09:46'),
(384, 'Teal Muslin Ethnic Motifs Kurta', 'Default', 'Free Size', '', 179.00, 1599.00, '', '/images/products/384_1.jpg', '/images/products/384_2.jpg', '/images/products/384_3.jpg', '/images/products/384_4.jpg', '/images/products/384_5.jpg', 'kurtis', '', 387, 1, '2026-06-16 17:09:46'),
(385, 'boAt Immortal 400', 'Default', 'Free Size', '', 393.00, 2359.00, '', '/images/products/385_1.jpg', '/images/products/385_2.jpg', '/images/products/385_3.jpg', '/images/products/385_4.jpg', '/images/products/385_5.jpg', 'Electronics', '', 388, 1, '2026-06-16 17:09:46'),
(386, 'Yellow Flared Panelled Dress', 'Default', 'Free Size', '', 199.00, 2199.00, '', '/images/products/386_1.jpg', '/images/products/386_2.jpg', '/images/products/386_3.jpg', '/images/products/386_4.jpg', '/images/products/386_5.jpg', 'kurtis', '', 389, 1, '2026-06-16 17:09:46'),
(387, 'Crocs Women\'s Sloane Glitter Wedge Clog', 'Default', 'Free Size', '', 399.00, 2966.00, '', '/images/products/387_1.jpg', '/images/products/387_2.jpg', '/images/products/387_3.jpg', '/images/products/387_4.jpg', '/images/products/387_5.jpg', 'crocs', '', 390, 1, '2026-06-16 17:09:46'),
(388, 'Aashirvaad Superior MP Atta, 10kg, Wheat Flour', 'Default', 'Free Size', '', 289.00, 606.00, '', '/images/products/388_1.jpg', '/images/products/388_2.jpg', '/images/products/388_3.jpg', '/images/products/388_4.jpg', '/images/products/388_5.jpg', 'Grocery', '', 391, 1, '2026-06-16 17:09:46'),
(389, 'WOMEN\'S CROCS TULUM FLIP', 'Default', 'Free Size', '', 379.00, 2199.00, '', '/images/products/389_1.jpg', '/images/products/389_2.jpg', '/images/products/389_3.jpg', '/images/products/389_4.jpg', '/images/products/389_5.jpg', 'crocs', '', 392, 1, '2026-06-16 17:09:46'),
(390, 'Gazelle 100% Cotton Waist Smocked Midi Dress', 'Default', 'Free Size', '', 259.00, 2999.00, '', '/images/products/390_1.jpg', '/images/products/390_2.jpg', '/images/products/390_3.jpg', '/images/products/390_4.jpg', '/images/products/390_5.jpg', 'Western Wear', '', 393, 1, '2026-06-16 17:09:46'),
(391, 'Skechers Slip-ins: Glide-Step Altus - Aphtur', 'Default', 'Free Size', '', 411.00, 7899.00, '', '/images/products/391_1.jpg', '/images/products/391_2.jpg', '/images/products/391_3.jpg', '/images/products/391_4.jpg', '', 'Shoes', '', 394, 1, '2026-06-16 17:09:46'),
(392, 'WOODLAB Furniture Sheesham Wood 3 Door Wardrobe Storage with 3 Drawers Wooden Multipurpose Almirah for Home Living Room - Natural Finish', 'Default', 'Free Size', '', 399.00, 9999.00, '', '/images/products/392_1.jpg', '/images/products/392_2.jpg', '/images/products/392_3.jpg', '/images/products/392_4.jpg', '/images/products/392_5.jpg', 'Furniture', '', 395, 1, '2026-06-16 17:09:46'),
(393, 'Coral Blue Rose Pre-Draped Saree', 'Default', 'Free Size', '', 199.00, 1599.00, '', '/images/products/393_1.jpg', '/images/products/393_2.jpg', '/images/products/393_3.jpg', '/images/products/393_4.jpg', '/images/products/393_5.jpg', 'kurtis', '', 396, 1, '2026-06-16 17:09:46'),
(394, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 379.00, 2499.00, '', '/images/products/394_1.jpg', '/images/products/394_2.jpg', '/images/products/394_3.jpg', '', '', 'crocs', '', 397, 1, '2026-06-16 17:09:46'),
(395, '10Kg Chakki Fresh Atta, 5L Kachi Ghani Pure Mustard Oil, 10kg Rozana Mini Mogra : Combo Deal', 'Default', 'Free Size', '', 399.00, 999.00, '', '/images/products/395_1.jpg', '', '', '', '', 'Grocery', '', 398, 1, '2026-06-16 17:09:46'),
(396, 'Adidas ADILETTE AQUA SLIDES', 'Default', 'Free Size', '', 399.00, 2460.00, '', '/images/products/396_1.jpg', '/images/products/396_2.jpg', '/images/products/396_3.jpg', '/images/products/396_4.jpg', '', 'crocs', '', 399, 1, '2026-06-16 17:09:46'),
(397, 'crocs Unisex-Adult Clog Duet Max Clog', 'Default', 'Free Size', '', 399.00, 3399.00, '', '/images/products/397_1.jpg', '/images/products/397_2.jpg', '/images/products/397_3.jpg', '/images/products/397_4.jpg', '/images/products/397_5.jpg', 'crocs', '', 400, 1, '2026-06-16 17:09:46'),
(398, 'Red & Beige Vasu Saree', 'Default', 'Free Size', '', 189.00, 1999.00, '', '/images/products/398_1.jpg', '/images/products/398_2.jpg', '/images/products/398_3.jpg', '/images/products/398_4.jpg', '/images/products/398_5.jpg', 'kurtis', '', 401, 1, '2026-06-16 17:09:46'),
(399, 'Lavender Threadwork Tissue Saree', 'Default', 'Free Size', '', 199.00, 2399.00, '', '/images/products/399_1.jpg', '/images/products/399_2.jpg', '/images/products/399_3.jpg', '/images/products/399_4.jpg', '/images/products/399_5.jpg', 'kurtis', '', 402, 1, '2026-06-16 17:09:46'),
(400, 'boAt Airdopes ProGear', 'Default', 'Free Size', '', 393.00, 1999.00, '', '/images/products/400_1.jpg', '/images/products/400_2.jpg', '/images/products/400_3.jpg', '/images/products/400_4.jpg', '/images/products/400_5.jpg', 'Electronics', '', 403, 1, '2026-06-16 17:09:46'),
(401, 'Starlet 100% Cotton Black RStarlet 100% Cotton Black Ruched Mini Dressched Mini Dress', 'Default', 'Free Size', '', 259.00, 7999.00, '', '/images/products/401_1.jpg', '/images/products/401_2.jpg', '/images/products/401_3.jpg', '/images/products/401_4.jpg', '/images/products/401_5.jpg', 'Western Wear', '', 404, 1, '2026-06-16 17:09:48'),
(402, 'Varsha Furniture Solid Sheesham Wood Sofa for Living Room | Couch Sofa for Living Room | Sofa Set Furniture for Home| Settee (1 Seater)', 'Default', 'Free Size', '', 389.00, 21499.00, '', '/images/products/402_1.jpg', '/images/products/402_2.jpg', '/images/products/402_3.jpg', '/images/products/402_4.jpg', '', 'Furniture', '', 405, 1, '2026-06-16 17:09:48'),
(403, 'Skechers TRES-AIR UNO - AH - MAZING', 'Default', 'Free Size', '', 393.00, 7899.00, '', '/images/products/403_1.jpg', '/images/products/403_2.jpg', '/images/products/403_3.jpg', '/images/products/403_4.jpg', '/images/products/403_5.jpg', 'Shoes', '', 406, 1, '2026-06-16 17:09:48'),
(404, 'Adidas ADILETTE COMFORT ADJUSTABLE BANDAGE SLIDES', 'Default', 'Free Size', '', 393.00, 2399.00, '', '/images/products/404_1.jpg', '/images/products/404_2.jpg', '/images/products/404_3.jpg', '/images/products/404_4.jpg', '', 'crocs', '', 407, 1, '2026-06-16 17:09:48'),
(405, 'Black & Red Sanganeri Saree With Unstitched Blouse', 'Default', 'Free Size', '', 149.00, 1599.00, '', '/images/products/405_1.jpg', '/images/products/405_2.jpg', '/images/products/405_3.jpg', '/images/products/405_4.jpg', '/images/products/405_5.jpg', 'kurtis', '', 408, 1, '2026-06-16 17:09:48'),
(406, 'OnePlus Nord Buds 3 Pro', 'Default', 'Free Size', '', 379.00, 2999.00, '', '/images/products/406_1.jpg', '/images/products/406_2.jpg', '/images/products/406_3.jpg', '/images/products/406_4.jpg', '/images/products/406_5.jpg', 'Electronics', '', 409, 1, '2026-06-16 17:09:48'),
(407, 'Purple Layered Suzani Printed Kurta, Tights And Dupatta Set', 'Default', 'Free Size', '', 149.00, 2399.00, '', '/images/products/407_1.jpg', '/images/products/407_2.jpg', '/images/products/407_3.jpg', '/images/products/407_4.jpg', '/images/products/407_5.jpg', 'kurtis', '', 410, 1, '2026-06-16 17:09:48'),
(408, 'Imani 100% Cotton Lace Neck Baby Doll Top', 'Default', 'Free Size', '', 259.00, 2499.00, '', '/images/products/408_1.jpg', '/images/products/408_2.jpg', '/images/products/408_3.jpg', '/images/products/408_4.jpg', '/images/products/408_5.jpg', 'Western Wear', '', 411, 1, '2026-06-16 17:09:48'),
(409, 'boAt Nirvana X TWS', 'Default', 'Free Size', '', 393.00, 2799.00, '', '/images/products/409_1.jpg', '/images/products/409_2.jpg', '/images/products/409_3.jpg', '/images/products/409_4.jpg', '/images/products/409_5.jpg', 'Electronics', '', 412, 1, '2026-06-16 17:09:48'),
(410, 'boAt Airdopes 213 ', 'Default', 'Free Size', '', 399.00, 3199.00, '', '/images/products/410_1.jpg', '/images/products/410_2.jpg', '/images/products/410_3.jpg', '/images/products/410_4.jpg', '/images/products/410_5.jpg', 'Electronics', '', 413, 1, '2026-06-16 17:09:48'),
(411, 'House of Quirk Polyester Universal Big Elasticity Cover for Couch Flexible Stretch Sofa Slipcover (Tan, Single Seater, 90-145cm)', 'Default', 'Free Size', '', 449.00, 19999.00, '', '/images/products/411_1.jpg', '/images/products/411_2.jpg', '/images/products/411_3.jpg', '/images/products/411_4.jpg', '/images/products/411_5.jpg', 'Furniture', '', 414, 1, '2026-06-16 17:09:50'),
(412, 'Dark Red Cotton Schiffli Top And Pants Co-Ord Set', 'Default', 'Free Size', '', 189.00, 1999.00, '', '/images/products/412_1.jpg', '/images/products/412_2.jpg', '/images/products/412_3.jpg', '/images/products/412_4.jpg', '/images/products/412_5.jpg', 'kurtis', '', 415, 1, '2026-06-16 17:09:50'),
(413, 'Adidas ADILETTE LITE SLIDES', 'Default', 'Free Size', '', 393.00, 2990.00, '', '/images/products/413_1.jpg', '/images/products/413_2.jpg', '/images/products/413_3.jpg', '/images/products/413_4.jpg', '', 'crocs', '', 416, 1, '2026-06-16 17:09:50'),
(414, 'Navy Blue Zardosi Embroidered Silk Long Kurta Paired With Embroidered Organza Dupatta', 'Default', 'Free Size', '', 149.00, 2199.00, '', '/images/products/414_1.jpg', '/images/products/414_2.jpg', '/images/products/414_3.jpg', '/images/products/414_4.jpg', '', 'kurtis', '', 417, 1, '2026-06-16 17:09:50'),
(415, 'Bniture Wooden Almirah for Clothes, Door for Bedroom, 3 Door Wardrobe with 2 Drawer & Hanging Space (40D x 120W x 180H CM) | 3 Year Warranty (Giant Wood & Slate Grey)', 'Default', 'Free Size', '', 411.00, 19999.00, '', '/images/products/415_1.jpg', '/images/products/415_2.jpg', '/images/products/415_3.jpg', '/images/products/415_4.jpg', '/images/products/415_5.jpg', 'Furniture', '', 418, 1, '2026-06-16 17:09:50'),
(416, 'Bajaj GX-1 Mixer Grinder 500W|Superior Mixie For Kitchen|2-in-1 for Dry Grinding| Blade Function With Titan Motor|3 Stainless Steel Mixer Jars|1 Year...', 'Default', 'Free Size', '', 379.00, 7999.00, '', '/images/products/416_1.jpg', '/images/products/416_2.jpg', '/images/products/416_3.jpg', '/images/products/416_4.jpg', '/images/products/416_5.jpg', 'Appliances', '', 419, 1, '2026-06-16 17:09:50'),
(417, 'Skechers HYPER SLIDE - SIMPLEX', 'Default', 'Free Size', '', 411.00, 5999.00, '', '/images/products/417_1.jpg', '/images/products/417_2.jpg', '/images/products/417_3.jpg', '/images/products/417_4.jpg', '/images/products/417_5.jpg', 'crocs', '', 420, 1, '2026-06-16 17:09:50'),
(418, 'Crocs OFF COURT CLOG', 'Default', 'Free Size', '', 393.00, 4356.00, '', '/images/products/418_1.jpg', '/images/products/418_2.jpg', '/images/products/418_3.jpg', '/images/products/418_4.jpg', '/images/products/418_5.jpg', 'crocs', '', 421, 1, '2026-06-16 17:09:50'),
(419, 'Brown Floral Printed Kurta, Pant And Dupatta Set', 'Default', 'Free Size', '', 199.00, 1289.00, '', '/images/products/419_1.jpg', '/images/products/419_2.jpg', '/images/products/419_3.jpg', '/images/products/419_4.jpg', '/images/products/419_5.jpg', 'kurtis', '', 422, 1, '2026-06-16 17:09:50'),
(420, 'Skechers Aero Spark', 'Default', 'Free Size', '', 379.00, 6799.00, '', '/images/products/420_1.jpg', '/images/products/420_2.jpg', '/images/products/420_3.jpg', '/images/products/420_4.jpg', '/images/products/420_5.jpg', 'Shoes', '', 423, 1, '2026-06-16 17:09:50'),
(421, 'Rama Green Buta Patterned Saree with Floral Leaf Border', 'Default', 'Free Size', '', 189.00, 1999.00, '', '/images/products/421_1.jpg', '/images/products/421_2.jpg', '/images/products/421_3.jpg', '/images/products/421_4.jpg', '/images/products/421_5.jpg', 'kurtis', '', 424, 1, '2026-06-16 17:09:48'),
(422, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 411.00, 2499.00, '', '/images/products/422_1.jpg', '/images/products/422_2.jpg', '/images/products/422_3.jpg', '/images/products/422_4.jpg', '', 'crocs', '', 425, 1, '2026-06-16 17:09:48'),
(423, 'White Bold Floral Printed Pure Cotton Tunic and Straight Pants Co-ord Set', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/423_1.jpg', '/images/products/423_2.jpg', '/images/products/423_3.jpg', '/images/products/423_4.jpg', '/images/products/423_5.jpg', 'kurtis', '', 426, 1, '2026-06-16 17:09:48'),
(424, 'Ekdantix Furniture Wood Divana Cot for Home Hall || Diwan Cum Bed with Storage || 3 Seater Sofa Cum Couch || Divan Bed for Living Room || Without Pillow (Natural)', 'Default', 'Free Size', '', 399.00, 25599.00, '', '/images/products/424_1.jpg', '/images/products/424_2.jpg', '/images/products/424_3.jpg', '/images/products/424_4.jpg', '/images/products/424_5.jpg', 'Furniture', '', 427, 1, '2026-06-16 17:09:48'),
(425, 'Black Muslin Botanical Print Kurta', 'Default', 'Free Size', '', 199.00, 1399.00, '', '/images/products/425_1.jpg', '/images/products/425_2.jpg', '/images/products/425_3.jpg', '/images/products/425_4.jpg', '/images/products/425_5.jpg', 'kurtis', '', 428, 1, '2026-06-16 17:09:48'),
(426, 'boAt Nirvana Ion', 'Default', 'Free Size', '', 389.00, 1899.00, '', '/images/products/426_1.jpg', '/images/products/426_2.jpg', '/images/products/426_3.jpg', '/images/products/426_4.jpg', '/images/products/426_5.jpg', 'Electronics', '', 429, 1, '2026-06-16 17:09:48'),
(427, 'Black Solid Shoulder Straps Flared Sexy Maxi Dress', 'Default', 'Free Size', '', 259.00, 7999.00, '', '/images/products/427_1.jpg', '/images/products/427_2.jpg', '/images/products/427_3.jpg', '/images/products/427_4.jpg', '/images/products/427_5.jpg', 'Western Wear', '', 430, 1, '2026-06-16 17:09:48'),
(428, 'Sony New SA-D40M2 4.1ch Home Theatre/PC Speaker System with 100W Power Output and Powerful Subwoofer - Black', 'Default', 'Free Size', '', 399.00, 10999.00, '', '/images/products/428_1.jpg', '/images/products/428_2.jpg', '/images/products/428_3.jpg', '/images/products/428_4.jpg', '/images/products/428_5.jpg', 'Electronics', '', 431, 1, '2026-06-16 17:09:48'),
(429, 'Adidas Women\'s ADILETTE SHOWER Purple Slides', 'Default', 'Free Size', '', 411.00, 2199.00, '', '/images/products/429_1.jpg', '/images/products/429_2.jpg', '/images/products/429_3.jpg', '/images/products/429_4.jpg', '/images/products/429_5.jpg', 'crocs', '', 432, 1, '2026-06-16 17:09:48'),
(430, 'KENT Supreme Plus Alkaline+Copper RO Water Purifier | RO+UV+UF+Alk +Cu+TDSControl+UV LED Tank|Advanced ROTech for Sabse Shudh Paani | Auto Flush | 8L| 20LPH | Ideal for Borewell/Tanker/Municipal Water', 'Default', 'Free Size', '', 391.00, 15999.00, '', '/images/products/430_1.jpg', '/images/products/430_2.jpg', '/images/products/430_3.jpg', '/images/products/430_4.jpg', '/images/products/430_5.jpg', 'Appliances', '', 433, 1, '2026-06-16 17:09:48'),
(431, 'Skechers Aero Spark', 'Default', 'Free Size', '', 399.00, 7899.00, '', '/images/products/431_1.jpg', '/images/products/431_2.jpg', '/images/products/431_3.jpg', '/images/products/431_4.jpg', '/images/products/431_5.jpg', 'Shoes', '', 434, 1, '2026-06-16 17:09:48'),
(432, 'Crocs ALL-TERRAIN CLOG', 'Default', 'Free Size', '', 389.00, 6499.00, '', '/images/products/432_1.jpg', '/images/products/432_2.jpg', '/images/products/432_3.jpg', '/images/products/432_4.jpg', '/images/products/432_5.jpg', 'crocs', '', 435, 1, '2026-06-16 17:09:48');

INSERT INTO `tbl_product` (`id`, `name`, `color`, `size`, `storage`, `selling_price`, `mrp`, `features`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `keywords`, `disp_order`, `from_csv`, `created_at`) VALUES
(433, 'Swing/Jhula Indoor Outdoor With Stand, Roof & Seat 300 Kgs Capacity (White),White, Blue,3 Seater(Hmck-001)(Wrought Iron), 58.66 CM', 'Default', 'Free Size', '', 399.00, 31999.00, '', '/images/products/433_1.jpg', '/images/products/433_2.jpg', '/images/products/433_3.jpg', '/images/products/433_4.jpg', '', 'Furniture', '', 436, 1, '2026-06-16 17:09:48'),
(434, 'Skechers Aero Tempo', 'Default', 'Free Size', '', 389.00, 7899.00, '', '/images/products/434_1.jpg', '/images/products/434_2.jpg', '/images/products/434_3.jpg', '/images/products/434_4.jpg', '/images/products/434_5.jpg', 'Shoes', '', 437, 1, '2026-06-16 17:09:48'),
(435, 'Adidas ADILETTE SHOWER SLIDES', 'Default', 'Free Size', '', 393.00, 2460.00, '', '/images/products/435_1.jpg', '/images/products/435_2.jpg', '/images/products/435_3.jpg', '/images/products/435_4.jpg', '', 'crocs', '', 438, 1, '2026-06-16 17:09:48'),
(436, 'Smartway® Mighty Modern Designer Floor Lamp for Living Room, Bedroom Corner, Home Décor, Hotel & Office Standing Lamp (Natural White)', 'Default', 'Free Size', '', 391.00, 21499.00, '', '/images/products/436_1.jpg', '/images/products/436_2.jpg', '/images/products/436_3.jpg', '/images/products/436_4.jpg', '/images/products/436_5.jpg', 'Furniture', '', 439, 1, '2026-06-16 17:09:48'),
(437, 'Camel Brown Bhairavi Saree With Unstitched Blouse', 'Default', 'Free Size', '', 199.00, 2399.00, '', '/images/products/437_1.jpg', '/images/products/437_2.jpg', '/images/products/437_3.jpg', '/images/products/437_4.jpg', '/images/products/437_5.jpg', 'kurtis', '', 440, 1, '2026-06-16 17:09:48'),
(438, 'CASASTYLE Brio Fabric 3 Seater Sofa Cum Bed Set (Sky Blue)', 'Default', 'Free Size', '', 399.00, 31999.00, '', '/images/products/438_1.jpg', '/images/products/438_2.jpg', '/images/products/438_3.jpg', '/images/products/438_4.jpg', '/images/products/438_5.jpg', 'Furniture', '', 441, 1, '2026-06-16 17:09:48'),
(439, 'Indigo Denim Dots Kurta With Thread Work', 'Default', 'Free Size', '', 189.00, 2399.00, '', '/images/products/439_1.jpg', '/images/products/439_2.jpg', '/images/products/439_3.jpg', '/images/products/439_4.jpg', '/images/products/439_5.jpg', 'kurtis', '', 442, 1, '2026-06-16 17:09:48'),
(440, 'RATANDHARA FURNITURE Solid sheesham Wood Wooden 3 Seater Sofa for Living Room - Sofa with Cousins seat - Sitting Pretty 3-Seater Couch Design 2 (Honey Finish)', 'Default', 'Free Size', '', 449.00, 8999.00, '', '/images/products/440_1.jpg', '/images/products/440_2.jpg', '/images/products/440_3.jpg', '/images/products/440_4.jpg', '/images/products/440_5.jpg', 'Furniture', '', 443, 1, '2026-06-16 17:09:48'),
(441, 'Safari Thorium Neo 8 Wheels 55,66 and 77 Cm Small,Medium and Large 4 Wheel Inline 3 Trolley Bags Polycarbonate 360 Degree Wheeling System Luggage,4 Wheel Inline Trolley Bags,Graphite Blue', 'Default', 'Free Size', '', 399.00, 6999.00, '', '/images/products/441_1.jpg', '/images/products/441_2.jpg', '/images/products/441_3.jpg', '/images/products/441_4.jpg', '/images/products/441_5.jpg', 'Electronics', '', 444, 1, '2026-06-16 17:09:48'),
(442, 'Yellow Glitter Printed Festive Saree Dress With Belt', 'Default', 'Free Size', '', 179.00, 1289.00, '', '/images/products/442_1.jpg', '/images/products/442_2.jpg', '/images/products/442_3.jpg', '/images/products/442_4.jpg', '/images/products/442_5.jpg', 'kurtis', '', 445, 1, '2026-06-16 17:09:48'),
(443, 'PumPum EPE Foam 2-Seater Sofa Cum Bed – 36 Inch Width, Convertible Design, Lightweight & Foldable (Peach)', 'Default', 'Free Size', '', 391.00, 25599.00, '', '/images/products/443_1.jpg', '/images/products/443_2.jpg', '/images/products/443_3.jpg', '/images/products/443_4.jpg', '/images/products/443_5.jpg', 'Furniture', '', 446, 1, '2026-06-16 17:09:48'),
(444, 'Skechers MAX CUSHIONING ARCH FIT 2', 'Default', 'Free Size', '', 379.00, 10999.00, '', '/images/products/444_1.jpg', '/images/products/444_2.jpg', '/images/products/444_3.jpg', '/images/products/444_4.jpg', '/images/products/444_5.jpg', 'Shoes', '', 447, 1, '2026-06-16 17:09:48'),
(445, 'Crocs STOMP LINED CLOG', 'Default', 'Free Size', '', 411.00, 6499.00, '', '/images/products/445_1.jpg', '/images/products/445_2.jpg', '/images/products/445_3.jpg', '/images/products/445_4.jpg', '/images/products/445_5.jpg', 'crocs', '', 448, 1, '2026-06-16 17:09:48'),
(446, 'Skechers HYPER SLIDE - DERIVER', 'Default', 'Free Size', '', 411.00, 5999.00, '', '/images/products/446_1.jpg', '/images/products/446_2.jpg', '/images/products/446_3.jpg', '/images/products/446_4.jpg', '/images/products/446_5.jpg', 'crocs', '', 449, 1, '2026-06-16 17:09:48'),
(447, 'Crocs CLASSIC LINED CLOG', 'Default', 'Free Size', '', 391.00, 4599.00, '', '/images/products/447_1.jpg', '/images/products/447_2.jpg', '/images/products/447_3.jpg', '/images/products/447_4.jpg', '/images/products/447_5.jpg', 'crocs', '', 450, 1, '2026-06-16 17:09:48'),
(448, 'Olive & Beige Shereen Saree With Unstitched Blouse', 'Default', 'Free Size', '', 179.00, 1399.00, '', '/images/products/448_1.jpg', '/images/products/448_2.jpg', '/images/products/448_3.jpg', '/images/products/448_4.jpg', '', 'kurtis', '', 451, 1, '2026-06-16 17:09:48'),
(449, 'Crocs unisex-adult Classic Crush Sandal Sandal', 'Default', 'Free Size', '', 399.00, 3499.00, '', '/images/products/449_1.jpg', '/images/products/449_2.jpg', '/images/products/449_3.jpg', '/images/products/449_4.jpg', '/images/products/449_5.jpg', 'crocs', '', 452, 1, '2026-06-16 17:09:48'),
(450, 'ARCH FIT 2.0 - BIG LEAGUE', 'Default', 'Free Size', '', 399.00, 6799.00, '', '/images/products/450_1.jpg', '/images/products/450_2.jpg', '/images/products/450_3.jpg', '/images/products/450_4.jpg', '/images/products/450_5.jpg', 'Shoes', '', 453, 1, '2026-06-16 17:09:48'),
(451, 'Skechers HYPER SLIDE - SIMPLEX', 'Default', 'Free Size', '', 411.00, 5999.00, '', '/images/products/451_1.jpg', '/images/products/451_2.jpg', '/images/products/451_3.jpg', '/images/products/451_4.jpg', '/images/products/451_5.jpg', 'crocs', '', 454, 1, '2026-06-16 17:09:48'),
(452, 'White Polka Dot Printed Gathered Western Dress', 'Default', 'Free Size', '', 149.00, 1999.00, '', '/images/products/452_1.jpg', '/images/products/452_2.jpg', '/images/products/452_3.jpg', '/images/products/452_4.jpg', '/images/products/452_5.jpg', 'kurtis', '', 455, 1, '2026-06-16 17:09:48'),
(453, 'Skechers D\'LUX WALKER 2.0-NEON SITES', 'Default', 'Free Size', '', 411.00, 6999.00, '', '/images/products/453_1.jpg', '/images/products/453_2.jpg', '', '', '', 'Shoes', '', 456, 1, '2026-06-16 17:09:48'),
(454, 'Skechers ARCH FIT 2.0 - ROAD WAVEt', 'Default', 'Free Size', '', 411.00, 6799.00, '', '/images/products/454_1.jpg', '/images/products/454_2.jpg', '/images/products/454_3.jpg', '/images/products/454_4.jpg', '/images/products/454_5.jpg', 'Shoes', '', 457, 1, '2026-06-16 17:09:48'),
(455, 'boAt Airdopes Ultra Plus', 'Default', 'Free Size', '', 399.00, 1599.00, '', '/images/products/455_1.jpg', '/images/products/455_2.jpg', '/images/products/455_3.jpg', '/images/products/455_4.jpg', '/images/products/455_5.jpg', 'Electronics', '', 458, 1, '2026-06-16 17:09:48'),
(456, 'Adidas ADILETTE COMFORT SLIDES', 'Default', 'Free Size', '', 391.00, 3999.00, '', '/images/products/456_1.jpg', '/images/products/456_2.jpg', '/images/products/456_3.jpg', '/images/products/456_4.jpg', '', 'crocs', '', 459, 1, '2026-06-16 17:09:48'),
(457, 'Atomberg Zenova Mixer Grinder with Unique Coarse Mode | Advanced Safety Features | 4 Jars including Chopper Jar with Hands Free Operation (Red Wine)', 'Default', 'Free Size', '', 379.00, 11999.00, '', '/images/products/457_1.jpg', '/images/products/457_2.jpg', '/images/products/457_3.jpg', '/images/products/457_4.jpg', '/images/products/457_5.jpg', 'Appliances', '', 460, 1, '2026-06-16 17:09:48'),
(458, 'Crocs WOMEN\'S KADEE II SANDAL', 'Default', 'Free Size', '', 391.00, 2699.00, '', '/images/products/458_1.jpg', '/images/products/458_2.jpg', '/images/products/458_3.jpg', '/images/products/458_4.jpg', '/images/products/458_5.jpg', 'crocs', '', 461, 1, '2026-06-16 17:09:48'),
(459, 'Philips HL7756/01 750 Watt Mixer Grinder, 3 Stainless Steel Multipurpose Jars with 3 Speed Control and Pulse function (Black)', 'Default', 'Free Size', '', 393.00, 3099.00, '', '/images/products/459_1.jpg', '/images/products/459_2.jpg', '/images/products/459_3.jpg', '/images/products/459_4.jpg', '/images/products/459_5.jpg', 'Appliances', '', 462, 1, '2026-06-16 17:09:48'),
(460, 'Blue Polka Dot Printed Pure Cotton Straight Kurta and Pants Co-ord Set', 'Default', 'Free Size', '', 149.00, 1599.00, '', '/images/products/460_1.jpg', '/images/products/460_2.jpg', '/images/products/460_3.jpg', '/images/products/460_4.jpg', '/images/products/460_5.jpg', 'kurtis', '', 463, 1, '2026-06-16 17:09:48'),
(461, 'Skechers SKX Aero Burst', 'Default', 'Free Size', '', 379.00, 7899.00, '', '/images/products/461_1.jpg', '/images/products/461_2.jpg', '/images/products/461_3.jpg', '/images/products/461_4.jpg', '/images/products/461_5.jpg', 'Shoes', '', 464, 1, '2026-06-16 17:09:48'),
(462, 'crocs Unisex-Adult Baya Clog Clog', 'Default', 'Free Size', '', 379.00, 2899.00, '', '/images/products/462_1.jpg', '/images/products/462_2.jpg', '/images/products/462_3.jpg', '/images/products/462_4.jpg', '/images/products/462_5.jpg', 'crocs', '', 465, 1, '2026-06-16 17:09:48'),
(463, 'Adidas ADILETTE COMFORT ADJUSTABLE BANDAGE SLIDES', 'Default', 'Free Size', '', 391.00, 2399.00, '', '/images/products/463_1.jpg', '/images/products/463_2.jpg', '/images/products/463_3.jpg', '/images/products/463_4.jpg', '', 'crocs', '', 466, 1, '2026-06-16 17:09:48'),
(464, 'Black Embellished Keyhole Neck Straight Silk Kurta and Pants Set', 'Default', 'Free Size', '', 179.00, 1999.00, '', '/images/products/464_1.jpg', '/images/products/464_2.jpg', '/images/products/464_3.jpg', '/images/products/464_4.jpg', '/images/products/464_5.jpg', 'kurtis', '', 467, 1, '2026-06-16 17:09:48'),
(465, 'Skechers Slip-ins: Glide-Step Altus - Aphtur', 'Default', 'Free Size', '', 389.00, 6999.00, '', '/images/products/465_1.jpg', '/images/products/465_2.jpg', '/images/products/465_3.jpg', '/images/products/465_4.jpg', '/images/products/465_5.jpg', 'Shoes', '', 468, 1, '2026-06-16 17:09:48'),
(466, 'Premium Celebration Combo - A Healthy Gift Box of Cashews, Raisins, and Figs (1kg Pack of Each)', 'Default', 'Free Size', '', 389.00, 899.00, '', '/images/products/466_1.webp', '', '', '', '', 'dryfruit', '', 505, 1, '2026-06-16 17:09:48'),
(467, 'DRY NUTS PREMIUM Healthy & Delicious Dry Fruits Gift Box (4 KG Combo Pack)', 'Default', 'Free Size', '', 393.00, 1889.00, '', '/images/products/467_1.webp', '', '', '', '', 'dryfruit', '', 510, 1, '2026-06-16 17:09:48'),
(468, 'Dry Fruits Gift Box: An Exquisite Collection of Cashews, Almonds, and Raisins with Figs', 'Default', 'Free Size', '', 393.00, 1699.00, '', '/images/products/468_1.webp', '', '', '', '', 'dryfruit', '', 515, 1, '2026-06-16 17:09:48'),
(469, 'Drynuts Premium Heritage Collection: A 4kg Curated Assortment of Gourmet Nuts & Dried Fruits', 'Default', 'Free Size', '', 411.00, 1399.00, '', '/images/products/469_1.webp', '', '', '', '', 'dryfruit', '', 520, 1, '2026-06-16 17:09:48'),
(470, 'Premium Quality Nuts & Dried Fruits Collection (Set of 4 x 1 KG)', 'Default', 'Free Size', '', 379.00, 1399.00, '', '/images/products/470_1.webp', '', '', '', '', 'dryfruit', '', 525, 1, '2026-06-16 17:09:48'),
(471, 'Drynuts Premium Dry Fruit Combo Pack (California Almonds 1kg, Cashews 1kg, Raisins 1kg) - Total 3kg', 'Default', 'Free Size', '', 399.00, 1199.00, '', '/images/products/471_1.webp', '', '', '', '', 'dryfruit', '', 530, 1, '2026-06-16 17:09:48'),
(472, 'DRYNUTS Premium Dry Fruits Combo Pack - 1 KG Each (California Almonds, Cashews, Raisins, Figs)', 'Default', 'Free Size', '', 389.00, 1399.00, '', '/images/products/472_1.webp', '', '', '', '', 'dryfruit', '', 535, 1, '2026-06-16 17:09:48'),
(473, 'DRYNUTS Premium Combo Pack: California Almonds (1 KG) & Turkish Figs (1 KG) - The Perfect Healthy Indulgence', 'Default', 'Free Size', '', 389.00, 1199.00, '', '/images/products/473_1.webp', '', '', '', '', 'dryfruit', '', 540, 1, '2026-06-16 17:09:48'),
(474, 'DRYNUTS Premium Healthy Combo: Gourmet California Almonds (1 KG) & Classic Cashew Nuts (1 KG)', 'Default', 'Free Size', '', 389.00, 1889.00, '', '/images/products/474_1.webp', '', '', '', '', 'dryfruit', '', 545, 1, '2026-06-16 17:09:48'),
(475, 'DRYNUTS Exquisite Dry Fruit & Nut Gift Box - Gourmet Assortment for Festive & Corporate Gifting', 'Default', 'Free Size', '', 399.00, 899.00, '', '/images/products/475_1.webp', '', '', '', '', 'dryfruit', '', 550, 1, '2026-06-16 17:09:48'),
(476, 'DRYNUTS Premium Dried Figs (Anjeer) - 1 KG | Naturally Sweet, Soft & Chewy | Rich in Dietary Fiber | Resealable Pouch', 'Default', 'Free Size', '', 389.00, 1699.00, '', '/images/products/476_1.webp', '', '', '', '', 'dryfruit', '', 555, 1, '2026-06-16 17:09:48'),
(477, 'DRYNUTS Premium Irani Khajoor (Iranian Dates) - 1 KG | Authentic & Naturally Sweet | Exquisite Luxury Gift Box', 'Default', 'Free Size', '', 411.00, 899.00, '', '/images/products/477_1.webp', '', '', '', '', 'dryfruit', '', 560, 1, '2026-06-16 17:09:48'),
(478, 'DRYNUTS Premium Kaju Katli - 1 KG | Authentic Indian Cashew Fudge | Perfect for Festivals & Gifting', 'Default', 'Free Size', '', 393.00, 1499.00, '', '/images/products/478_1.webp', '', '', '', '', 'dryfruit', '', 565, 1, '2026-06-16 17:09:48'),
(479, 'DRYNUTS Premium Black Raisins | Naturally Sweet, Plump & Juicy | Rich in Iron & Antioxidants | All-Natural Healthy Snack', 'Default', 'Free Size', '', 389.00, 1499.00, '', '/images/products/479_1.webp', '', '', '', '', 'dryfruit', '', 570, 1, '2026-06-16 17:09:48'),
(480, 'DRYNUTS Premium Berry Mix - 1 KG | Gourmet Blend of Dried Berries | Antioxidant-Rich, All-Natural Healthy Snack', 'Default', 'Free Size', '', 379.00, 1399.00, '', '/images/products/480_1.webp', '', '', '', '', 'dryfruit', '', 575, 1, '2026-06-16 17:09:48'),
(481, 'DRYNUTS Premium Medjool Dates - 1 KG | All-Natural, Plump & Juicy | Gourmet \"King of Dates\" | Rich in Fiber & Potassium', 'Default', 'Free Size', '', 391.00, 1699.00, '', '/images/products/481_1.webp', '', '', '', '', 'dryfruit', '', 580, 1, '2026-06-16 17:09:48'),
(482, 'DRYNUTS Premium Long Raisins (Kishmish) - 1 KG | Sundried, Sweet & Juicy | All-Natural Golden Kishmish', 'Default', 'Free Size', '', 391.00, 1699.00, '', '/images/products/482_1.webp', '', '', '', '', 'dryfruit', '', 585, 1, '2026-06-16 17:09:48'),
(483, 'DRYNUTS Premium Kashmiri Kesar (Saffron) - 100g | 100% Pure, Grade A, All-Red Threads | Sourced from the Kashmir Valley', 'Default', 'Free Size', '', 379.00, 1699.00, '', '/images/products/483_1.webp', '', '', '', '', 'dryfruit', '', 590, 1, '2026-06-16 17:09:48'),
(484, 'DRYNUTS Pure Himalayan Shilajit Resin - 100g | 100% Natural & Authentic | For Energy, Strength & Vitality', 'Default', 'Free Size', '', 399.00, 1499.00, '', '/images/products/484_1.webp', '', '', '', '', 'dryfruit', '', 595, 1, '2026-06-16 17:09:48'),
(485, 'DRYNUTS Premium Whole Cashews - 1 KG | W320 Grade, Creamy & Crunchy | All-Natural Kaju for Healthy Snacking | Resealable Pouch', 'Default', 'Free Size', '', 389.00, 1499.00, '', '/images/products/485_1.webp', '', '', '', '', 'dryfruit', '', 600, 1, '2026-06-16 17:09:48'),
(486, 'DRYNUTS Premium Pumpkin Seeds - 1 KG | Raw & Unroasted | Rich in Protein, Magnesium & Zinc | Healthy Superfood Snack', 'Default', 'Free Size', '', 393.00, 1399.00, '', '/images/products/486_1.webp', '', '', '', '', 'dryfruit', '', 605, 1, '2026-06-16 17:09:48'),
(487, 'DRYNUTS Premium Phool Makhana (Fox Nuts) - 1 KG | Healthy, Crunchy & Light Snack | Popped Lotus Seeds', 'Default', 'Free Size', '', 411.00, 1699.00, '', '/images/products/487_1.webp', '', '', '', '', 'dryfruit', '', 610, 1, '2026-06-16 17:09:48'),
(488, 'DRYNUTS Premium Kalmi Dates - 1 KG | Soft, Juicy & Delicious | All-Natural Khajoor | Rich in Fiber & Energy', 'Default', 'Free Size', '', 391.00, 1699.00, '', '/images/products/488_1.webp', '', '', '', '', 'dryfruit', '', 615, 1, '2026-06-16 17:09:48'),
(489, 'DRYNUTS Premium Dry Anjeer (Dried Figs) - 1 KG | Naturally Sweet, Soft & Chewy | Rich in Dietary Fiber for Digestion | Resealable Pouch', 'Default', 'Free Size', '', 389.00, 1699.00, '', '/images/products/489_1.webp', '', '', '', '', 'dryfruit', '', 620, 1, '2026-06-16 17:09:48'),
(490, 'DRYNUTS Dry Anjeer (Premium Dried Figs) - 1 KG | All-Natural, Sweet & Chewy | Rich in Dietary Fiber for Digestive Health', 'Default', 'Free Size', '', 393.00, 1399.00, '', '/images/products/490_1.webp', '', '', '', '', 'dryfruit', '', 625, 1, '2026-06-16 17:09:48'),
(491, 'DRYNUTS Premium Green Cardamom (Elaichi) - 1 KG | Whole, Aromatic & Bold Size Pods | Queen of Spices for Tea, Sweets & Cooking', 'Default', 'Free Size', '', 391.00, 899.00, '', '/images/products/491_1.webp', '', '', '', '', 'dryfruit', '', 630, 1, '2026-06-16 17:09:48'),
(492, 'DRYNUTS Premium Dry Figs (Anjeer) - 1 KG | All-Natural, Soft & Sweet | Rich in Fiber, Calcium & Iron | Healthy Superfood', 'Default', 'Free Size', '', 393.00, 1889.00, '', '/images/products/492_1.webp', '', '', '', '', 'dryfruit', '', 635, 1, '2026-06-16 17:09:48'),
(493, 'DRYNUTS Dried Turkish Apricots (Pitted) - 1 KG | Premium, Plump & Chewy | All-Natural, No Added Sugar | Rich in Fiber & Vitamins', 'Default', 'Free Size', '', 391.00, 899.00, '', '/images/products/493_1.webp', '', '', '', '', 'dryfruit', '', 640, 1, '2026-06-16 17:09:48'),
(494, 'DRYNUTS Dried Kiwi Slices - 1 KG | Premium, Sweet & Tangy | Rich in Vitamin C & Fiber | Healthy Dehydrated Fruit Snack', 'Default', 'Free Size', '', 411.00, 1499.00, '', '/images/products/494_1.webp', '', '', '', '', 'dryfruit', '', 645, 1, '2026-06-16 17:09:48'),
(495, 'DRYNUTS Premium Dried Blueberries - 1 KG | Antioxidant-Rich Superfood | Sweet & Juicy | All-Natural Healthy Snack', 'Default', 'Free Size', '', 399.00, 899.00, '', '/images/products/495_1.webp', '', '', '', '', 'dryfruit', '', 650, 1, '2026-06-16 17:09:48'),
(496, 'DRYNUTS Premium Chia Seeds - 1 KG | All-Natural Superfood for Weight Management & Energy | Rich in Omega-3, Fiber & Protein', 'Default', 'Free Size', '', 393.00, 1699.00, '', '/images/products/496_1.webp', '', '', '', '', 'dryfruit', '', 655, 1, '2026-06-16 17:09:48'),
(497, 'DRYNUTS Premium California Walnut Kernels - 1 KG | Raw & Natural Akhrot Giri | Rich in Omega-3 & Antioxidants | Brain Superfood', 'Default', 'Free Size', '', 379.00, 1499.00, '', '/images/products/497_1.webp', '', '', '', '', 'dryfruit', '', 660, 1, '2026-06-16 17:09:48'),
(498, 'DRYNUTS Premium California Pistachios - 1 KG | Roasted & Salted, In-Shell Pista | Crunchy & Healthy Snack', 'Default', 'Free Size', '', 391.00, 1399.00, '', '/images/products/498_1.webp', '', '', '', '', 'dryfruit', '', 665, 1, '2026-06-16 17:09:48'),
(499, 'DRYNUTS Premium California Almonds - 1 KG | Raw, Natural & Crunchy Badam | Rich in Protein & Vitamin E | Healthy Superfood Snack', 'Default', 'Free Size', '', 399.00, 1499.00, '', '/images/products/499_1.webp', '', '', '', '', 'dryfruit', '', 670, 1, '2026-06-16 17:09:48'),
(500, 'DRYNUTS Jumbo Mamra Almonds - 1 KG | Premium & Raw Mamra Badam | Rich in Healthy Oils & Nutrients | The King of Almonds', 'Default', 'Free Size', '', 399.00, 1199.00, '', '/images/products/500_1.webp', '', '', '', '', 'dryfruit', '', 675, 1, '2026-06-16 17:09:48'),
(501, 'DRYNUTS Premium Goa\'s Spicy Masala Cashews: An Authentic and Fiery Snacking Delicacy, Roasted to Perfection (1 KG)', 'Default', 'Free Size', '', 393.00, 1889.00, '', '/images/products/501_1.webp', '', '', '', '', '', '', 680, 1, '2026-06-16 17:09:50'),
(502, 'Premium \"Drynuts\" Brand Assorted Dry Fruits (1 KG) Presented in an Elegant Pouch', 'Default', 'Free Size', '', 391.00, 1889.00, '', '/images/products/502_1.webp', '', '', '', '', '', '', 685, 1, '2026-06-16 17:09:50'),
(503, 'Vibrant and Flavorful: A 1 KG Pouch of Drynuts California Whole Dried Cranberries', 'Default', 'Free Size', '', 411.00, 1399.00, '', '/images/products/503_1.webp', '', '', '', '', '', '', 690, 1, '2026-06-16 17:09:50')
-- Table structure for table `tbl_product_verient`
--

CREATE TABLE `tbl_product_verient` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selling_price` double(10,2) DEFAULT NULL,
  `mrp` double(10,2) DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `from_csv` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id` int NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int NOT NULL,
  `company_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_email_password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `upi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pixel` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `company_name`, `company_email`, `admin_email`, `admin_email_password`, `contact1`, `contact2`, `address`, `upi`, `pixel`) VALUES
(1, 'Flipkart', 'info@flipkart.com', 'mparth141@gmail.com', 'fqjcszhkahmvxdet', '+91 123456789', '+91 123456789', 'test', 'mab.037323028910101@axisbank', '<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=&apos;2.0&apos;;\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,&apos;script&apos;,\n  &apos;https://connect.facebook.net/en_US/fbevents.js&apos;);\n  fbq(&apos;init&apos;, &apos;409988668759648&apos;);\n  fbq(&apos;track&apos;, &apos;PageView&apos;);\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=409988668759648&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Meta Pixel Code -->');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `last_login_offset` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `insert_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `password`, `role_id`, `last_logged_in`, `last_login_offset`, `insert_at`, `phone`, `email`, `token`) VALUES
(1, 'Admin', 'adminn@gmail.com', 'RamRam@123$', 1, '2023-09-21 06:07:36', '330', '2023-02-01 11:49:50', NULL, 'admin@sailon.com', 'b696f212abf683ad4f33430ab4f61b7e_c4ca4238a0b923820dcc509a6f75849b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_audit_logs`
--
ALTER TABLE `tbl_audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_verient`
--
ALTER TABLE `tbl_product_verient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_audit_logs`
--
ALTER TABLE `tbl_audit_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT for table `tbl_product_verient`
--
ALTER TABLE `tbl_product_verient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
