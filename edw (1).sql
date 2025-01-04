-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 01:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edw`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, '2025-01-03 01:16:45'),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, '2025-01-03 01:16:45'),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2025-01-03 01:16:45'),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2025-01-03 01:16:45'),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2025-01-03 01:16:45'),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2025-01-03 01:16:45'),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2025-01-03 01:16:45'),
(8, 0, 8, 'Helpers', 'icon-cogs', '', NULL, '2024-12-25 23:21:18', '2025-01-03 01:16:45'),
(9, 8, 9, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-12-25 23:21:18', '2025-01-03 01:16:45'),
(10, 8, 10, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-12-25 23:21:18', '2025-01-03 01:16:45'),
(11, 8, 11, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-12-25 23:21:18', '2025-01-03 01:16:45'),
(12, 8, 12, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-12-25 23:21:18', '2025-01-03 01:16:45'),
(13, 0, 13, 'Contact-uses', 'icon-file', 'contact-uses', NULL, '2024-12-26 06:08:17', '2025-01-03 01:16:45'),
(14, 16, 21, 'Categories', 'icon-file', 'categories', NULL, '2024-12-30 04:08:25', '2025-01-04 00:17:03'),
(15, 16, 22, 'Cat-categories', 'icon-file', 'cat-categories', NULL, '2024-12-30 05:55:03', '2025-01-04 00:17:03'),
(16, 0, 20, 'Category Section', 'icon-angle-right', NULL, 'ext.helpers', '2025-01-03 01:15:52', '2025-01-04 00:17:03'),
(17, 0, 17, 'Services Section', 'icon-angle-right', NULL, '*', '2025-01-03 01:20:32', '2025-01-04 00:17:03'),
(18, 17, 19, 'Services', 'icon-file', 'services', NULL, '2025-01-03 03:21:37', '2025-01-04 00:17:03'),
(19, 17, 18, 'Service-categories', 'icon-file', 'service-categories', NULL, '2025-01-03 04:10:57', '2025-01-04 00:17:03'),
(20, 22, 16, 'Tool-categories', 'icon-file', 'tool-categories', NULL, '2025-01-03 05:49:49', '2025-01-04 00:17:03'),
(21, 22, 15, 'Tools', 'icon-file', 'tools', NULL, '2025-01-03 06:27:14', '2025-01-04 00:17:03'),
(22, 0, 14, 'Tools Section', 'icon-angle-right', NULL, NULL, '2025-01-04 00:15:28', '2025-01-04 00:17:03'),
(23, 0, 22, 'Titles', 'icon-file', 'titles', NULL, '2025-01-04 01:03:42', '2025-01-04 01:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-25 23:13:57', '2024-12-25 23:13:57'),
(2, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-12-25 23:14:20', '2024-12-25 23:14:20'),
(3, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-12-25 23:15:21', '2024-12-25 23:15:21'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-25 23:15:26', '2024-12-25 23:15:26'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-25 23:17:58', '2024-12-25 23:17:58'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-25 23:21:22', '2024-12-25 23:21:22'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-26 06:03:54', '2024-12-26 06:03:54'),
(8, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-26 06:05:36', '2024-12-26 06:05:36'),
(9, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contact_us\",\"model_name\":\"App\\\\Models\\\\ContactUs\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"fname\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"lname\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"phone\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"select\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"deadline\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"word_count\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"8\":{\"name\":\"check_out_date\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"9\":{\"name\":\"message\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"10\":{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"tEfvnQfn58jr3n5LJXszGEGTw8RVHW4UyFQLU7J5\"}', '2024-12-26 06:08:17', '2024-12-26 06:08:17'),
(10, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-26 06:08:18', '2024-12-26 06:08:18'),
(11, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-26 06:08:44', '2024-12-26 06:08:44'),
(12, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-26 06:08:46', '2024-12-26 06:08:46'),
(13, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-26 07:04:55', '2024-12-26 07:04:55'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-26 23:23:38', '2024-12-26 23:23:38'),
(15, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-27 00:24:06', '2024-12-27 00:24:06'),
(16, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-27 00:24:12', '2024-12-27 00:24:12'),
(17, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-27 00:24:37', '2024-12-27 00:24:37'),
(18, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-27 05:26:13', '2024-12-27 05:26:13'),
(19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-27 05:29:54', '2024-12-27 05:29:54'),
(20, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-27 05:29:55', '2024-12-27 05:29:55'),
(21, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-27 05:30:01', '2024-12-27 05:30:01'),
(22, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-28 00:56:30', '2024-12-28 00:56:30'),
(23, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-28 00:56:38', '2024-12-28 00:56:38'),
(24, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-28 00:58:05', '2024-12-28 00:58:05'),
(25, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-28 00:59:09', '2024-12-28 00:59:09'),
(26, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"message\",\"type\":\"desc\"}}', '2024-12-28 00:59:13', '2024-12-28 00:59:13'),
(27, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"message\",\"type\":\"desc\"}}', '2024-12-28 00:59:59', '2024-12-28 00:59:59'),
(28, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"fname\",\"type\":\"desc\"}}', '2024-12-28 01:00:02', '2024-12-28 01:00:02'),
(29, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"fname\",\"type\":\"asc\"}}', '2024-12-28 01:00:03', '2024-12-28 01:00:03'),
(30, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"fname\",\"type\":\"desc\"}}', '2024-12-28 01:00:04', '2024-12-28 01:00:04'),
(31, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"fname\",\"type\":\"asc\"}}', '2024-12-28 01:00:07', '2024-12-28 01:00:07'),
(32, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-28 02:01:12', '2024-12-28 02:01:12'),
(33, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2024-12-28 02:01:24', '2024-12-28 02:01:24'),
(34, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '{\"per_page\":\"100\"}', '2024-12-28 02:01:39', '2024-12-28 02:01:39'),
(35, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '{\"per_page\":\"100\",\"_sort\":{\"column\":\"image\",\"type\":\"desc\"}}', '2024-12-28 04:29:33', '2024-12-28 04:29:33'),
(36, 1, 'admin/contact-uses/4/edit', 'GET', '127.0.0.1', '[]', '2024-12-28 04:29:38', '2024-12-28 04:29:38'),
(37, 1, 'admin/contact-uses/4/edit', 'GET', '127.0.0.1', '[]', '2024-12-28 05:49:27', '2024-12-28 05:49:27'),
(38, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-28 06:22:15', '2024-12-28 06:22:15'),
(39, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-12-28 06:22:20', '2024-12-28 06:22:20'),
(40, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-12-28 06:22:20', '2024-12-28 06:22:20'),
(41, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-28 06:22:21', '2024-12-28 06:22:21'),
(42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-12-30 03:45:44', '2024-12-30 03:45:44'),
(43, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-30 03:45:52', '2024-12-30 03:45:52'),
(44, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"categorys\",\"model_name\":\"App\\\\Models\\\\Category\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"category_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_content\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"view_user\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"url\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"whatapp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"facebook\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"linkedin\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"youtube\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"twitter\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"5yb4Gk8kjMcYWQdk9UopUi2cRuScssBQnbRRJTY9\"}', '2024-12-30 04:08:24', '2024-12-30 04:08:24'),
(45, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-30 04:08:27', '2024-12-30 04:08:27'),
(46, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-30 04:08:50', '2024-12-30 04:08:50'),
(47, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 04:08:52', '2024-12-30 04:08:52'),
(48, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-30 05:52:50', '2024-12-30 05:52:50'),
(49, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"cat_category\",\"model_name\":\"App\\\\Models\\\\CatCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CatCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"5yb4Gk8kjMcYWQdk9UopUi2cRuScssBQnbRRJTY9\"}', '2024-12-30 05:55:02', '2024-12-30 05:55:02'),
(50, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-30 05:55:03', '2024-12-30 05:55:03'),
(51, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-12-30 05:55:16', '2024-12-30 05:55:16'),
(52, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 05:55:17', '2024-12-30 05:55:17'),
(53, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 05:55:21', '2024-12-30 05:55:21'),
(54, 1, 'admin/cat-categories/create', 'GET', '127.0.0.1', '[]', '2024-12-30 05:55:29', '2024-12-30 05:55:29'),
(55, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 05:55:54', '2024-12-30 05:55:54'),
(56, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 05:56:36', '2024-12-30 05:56:36'),
(57, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:00:06', '2024-12-30 06:00:06'),
(58, 1, 'admin/cat-categories/create', 'GET', '127.0.0.1', '[]', '2024-12-30 06:00:09', '2024-12-30 06:00:09'),
(59, 1, 'admin/cat-categories', 'POST', '127.0.0.1', '{\"name\":\"Cat_Catergory1\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"5yb4Gk8kjMcYWQdk9UopUi2cRuScssBQnbRRJTY9\"}', '2024-12-30 06:00:32', '2024-12-30 06:00:32'),
(60, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:00:32', '2024-12-30 06:00:32'),
(61, 1, 'admin/cat-categories/1/edit', 'GET', '127.0.0.1', '[]', '2024-12-30 06:00:35', '2024-12-30 06:00:35'),
(62, 1, 'admin/cat-categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Cat_Catergory1\",\"slug\":\"cat-catergory1\",\"seo_title\":\"titel\",\"seo_description\":\"des\",\"seo_keyword\":\"key\",\"_token\":\"5yb4Gk8kjMcYWQdk9UopUi2cRuScssBQnbRRJTY9\",\"_method\":\"PUT\"}', '2024-12-30 06:00:47', '2024-12-30 06:00:47'),
(63, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:00:47', '2024-12-30 06:00:47'),
(64, 1, 'admin/cat-categories/create', 'GET', '127.0.0.1', '[]', '2024-12-30 06:00:49', '2024-12-30 06:00:49'),
(65, 1, 'admin/cat-categories', 'POST', '127.0.0.1', '{\"name\":\"Cat_Catergory2\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"5yb4Gk8kjMcYWQdk9UopUi2cRuScssBQnbRRJTY9\"}', '2024-12-30 06:00:53', '2024-12-30 06:00:53'),
(66, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:00:53', '2024-12-30 06:00:53'),
(67, 1, 'admin/cat-categories/create', 'GET', '127.0.0.1', '[]', '2024-12-30 06:00:56', '2024-12-30 06:00:56'),
(68, 1, 'admin/cat-categories', 'POST', '127.0.0.1', '{\"name\":\"Cat_Catergory3\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"5yb4Gk8kjMcYWQdk9UopUi2cRuScssBQnbRRJTY9\"}', '2024-12-30 06:01:01', '2024-12-30 06:01:01'),
(69, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:01:01', '2024-12-30 06:01:01'),
(70, 1, 'admin/cat-categories/2/edit', 'GET', '127.0.0.1', '[]', '2024-12-30 06:01:04', '2024-12-30 06:01:04'),
(71, 1, 'admin/cat-categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Cat_Catergory2\",\"slug\":\"cat-catergory2\",\"seo_title\":\"Title 2\",\"seo_description\":\"Des 2\",\"seo_keyword\":\"key 2\",\"_token\":\"5yb4Gk8kjMcYWQdk9UopUi2cRuScssBQnbRRJTY9\",\"_method\":\"PUT\"}', '2024-12-30 06:01:41', '2024-12-30 06:01:41'),
(72, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:01:41', '2024-12-30 06:01:41'),
(73, 1, 'admin/cat-categories/3/edit', 'GET', '127.0.0.1', '[]', '2024-12-30 06:01:43', '2024-12-30 06:01:43'),
(74, 1, 'admin/cat-categories/3', 'PUT', '127.0.0.1', '{\"name\":\"Cat_Catergory3\",\"slug\":\"cat-catergory3\",\"seo_title\":\"title 3\",\"seo_description\":\"des3\",\"seo_keyword\":\"key3\",\"_token\":\"5yb4Gk8kjMcYWQdk9UopUi2cRuScssBQnbRRJTY9\",\"_method\":\"PUT\"}', '2024-12-30 06:01:56', '2024-12-30 06:01:56'),
(75, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:01:56', '2024-12-30 06:01:56'),
(76, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:01:59', '2024-12-30 06:01:59'),
(77, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:02:47', '2024-12-30 06:02:47'),
(78, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:03:38', '2024-12-30 06:03:38'),
(79, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:04:15', '2024-12-30 06:04:15'),
(80, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:04:55', '2024-12-30 06:04:55'),
(81, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:11:48', '2024-12-30 06:11:48'),
(82, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:11:58', '2024-12-30 06:11:58'),
(83, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-30 06:19:32', '2024-12-30 06:19:32'),
(84, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-30 06:19:34', '2024-12-30 06:19:34'),
(85, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-30 06:20:36', '2024-12-30 06:20:36'),
(86, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-30 06:21:23', '2024-12-30 06:21:23'),
(87, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-31 00:08:55', '2024-12-31 00:08:55'),
(88, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-31 00:09:02', '2024-12-31 00:09:02'),
(89, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-31 03:57:03', '2024-12-31 03:57:03'),
(90, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Et quaerat minus con\",\"slug\":null,\"short_content\":\"Modi vero architecto\",\"view_user\":\"Dolore quibusdam tem\",\"alt\":\"Quam fugiat sed exc\",\"url\":\"https:\\/\\/www.qopixunopa.co\",\"description\":\"<p>Description<\\/p>\",\"seo_title\":\"Occaecat velit cillu\",\"seo_description\":\"Quia veniam est qu\",\"seo_keyword\":\"Sit exercitationem a\",\"question\":\"Est amet velit rec\",\"answer\":\"Voluptatum laborum q\",\"status\":\"Omnis soluta ut ipsa\",\"whatapp\":\"https:\\/\\/www.domysaxote.cm\",\"facebook\":\"https:\\/\\/www.mijivabod.ca\",\"linkedin\":\"https:\\/\\/www.wugyjylyzajal.cm\",\"youtube\":\"https:\\/\\/www.qogesuxitoka.org.au\",\"twitter\":\"https:\\/\\/www.gogatydypas.mobi\",\"_token\":\"rT8hGv8WiReeHHEUVMz4sB75QItN2hIjfY11CkUQ\",\"after-save\":\"view\"}', '2024-12-31 03:58:23', '2024-12-31 03:58:23'),
(91, 1, 'admin/categories/1', 'GET', '127.0.0.1', '[]', '2024-12-31 03:58:23', '2024-12-31 03:58:23'),
(92, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-31 03:58:27', '2024-12-31 03:58:27'),
(93, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-31 03:58:30', '2024-12-31 03:58:30'),
(94, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2024-12-31 03:58:36', '2024-12-31 03:58:36'),
(95, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Et quaerat minus con\",\"slug\":\"et-quaerat-minus-con\",\"short_content\":\"Modi vero architecto\",\"view_user\":\"Dolore quibusdam tem\",\"alt\":\"Quam fugiat sed exc\",\"url\":\"https:\\/\\/www.qopixunopa.co\",\"description\":\"<p>Description<\\/p>\",\"seo_title\":\"Occaecat velit cillu\",\"seo_description\":\"Quia veniam est qu\",\"seo_keyword\":\"Sit exercitationem a\",\"question\":\"Est amet velit rec\",\"answer\":\"Voluptatum laborum q\",\"status\":\"Omnis soluta ut ipsa\",\"whatapp\":\"https:\\/\\/www.domysaxote.cm\",\"facebook\":\"https:\\/\\/www.mijivabod.ca\",\"linkedin\":\"https:\\/\\/www.wugyjylyzajal.cm\",\"youtube\":\"https:\\/\\/www.qogesuxitoka.org.au\",\"twitter\":\"https:\\/\\/www.gogatydypas.mobi\",\"_token\":\"rT8hGv8WiReeHHEUVMz4sB75QItN2hIjfY11CkUQ\",\"_method\":\"PUT\"}', '2024-12-31 03:58:44', '2024-12-31 03:58:44'),
(96, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-31 03:58:44', '2024-12-31 03:58:44'),
(97, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-31 04:00:51', '2024-12-31 04:00:51'),
(98, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-31 04:01:22', '2024-12-31 04:01:22'),
(99, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Ut sunt tenetur volu\",\"slug\":null,\"short_content\":\"Commodo officia fuga\",\"view_user\":\"Eveniet et accusant\",\"alt\":\"Tenetur officia lore\",\"url\":\"https:\\/\\/www.selaqipukucyxy.tv\",\"description\":\"<h1><strong>dis2<\\/strong><\\/h1>\",\"seo_title\":\"Cillum sit sed inci\",\"seo_description\":\"Ipsum facere id in\",\"seo_keyword\":\"Dolorem magna sit vo\",\"question\":\"Quo sit pariatur Ve\",\"answer\":\"Laboris beatae expli\",\"status\":\"Quo exercitation ear\",\"whatapp\":\"https:\\/\\/www.sagivipigy.biz\",\"facebook\":\"https:\\/\\/www.lotutiv.co\",\"linkedin\":\"https:\\/\\/www.deky.org\",\"youtube\":\"https:\\/\\/www.wazawotymesifyg.com\",\"twitter\":\"https:\\/\\/www.bol.biz\",\"_token\":\"rT8hGv8WiReeHHEUVMz4sB75QItN2hIjfY11CkUQ\",\"after-save\":\"view\"}', '2024-12-31 04:01:40', '2024-12-31 04:01:40'),
(100, 1, 'admin/categories/2', 'GET', '127.0.0.1', '[]', '2024-12-31 04:01:40', '2024-12-31 04:01:40'),
(101, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-31 04:01:43', '2024-12-31 04:01:43'),
(102, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Qui harum est ea ex\",\"slug\":null,\"short_content\":\"Adipisci est libero\",\"view_user\":\"In aliquam voluptate\",\"alt\":\"Perspiciatis eius v\",\"url\":\"https:\\/\\/www.wikajaqaxo.co\",\"description\":\"<h2><strong>description 3<\\/strong><\\/h2>\",\"seo_title\":\"Molestiae in et sed\",\"seo_description\":\"Voluptatum non solut\",\"seo_keyword\":\"Nulla non aut placea\",\"question\":\"Dicta natus et sed q\",\"answer\":\"Et iusto ut enim und\",\"status\":\"Officia esse qui dol\",\"whatapp\":\"https:\\/\\/www.jygulekeduly.me.uk\",\"facebook\":\"https:\\/\\/www.nykilopipyja.mobi\",\"linkedin\":\"https:\\/\\/www.gybehylyg.biz\",\"youtube\":\"https:\\/\\/www.lebumahiheta.cm\",\"twitter\":\"https:\\/\\/www.bogelezazepeku.biz\",\"_token\":\"rT8hGv8WiReeHHEUVMz4sB75QItN2hIjfY11CkUQ\",\"after-save\":\"view\"}', '2024-12-31 04:02:23', '2024-12-31 04:02:23'),
(103, 1, 'admin/categories/3', 'GET', '127.0.0.1', '[]', '2024-12-31 04:02:23', '2024-12-31 04:02:23'),
(104, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2024-12-31 04:02:25', '2024-12-31 04:02:25'),
(105, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-31 04:02:26', '2024-12-31 04:02:26'),
(106, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2024-12-31 04:02:28', '2024-12-31 04:02:28'),
(107, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Ut sunt tenetur volu\",\"slug\":\"ut-sunt-tenetur-volu\",\"short_content\":\"Commodo officia fuga\",\"view_user\":\"Eveniet et accusant\",\"alt\":\"Tenetur officia lore\",\"url\":\"https:\\/\\/www.selaqipukucyxy.tv\",\"description\":\"<h1><strong>dis2<\\/strong><\\/h1>\",\"seo_title\":\"Cillum sit sed inci\",\"seo_description\":\"Ipsum facere id in\",\"seo_keyword\":\"Dolorem magna sit vo\",\"question\":\"Quo sit pariatur Ve\",\"answer\":\"Laboris beatae expli\",\"status\":\"Quo exercitation ear\",\"whatapp\":\"https:\\/\\/www.sagivipigy.biz\",\"facebook\":\"https:\\/\\/www.lotutiv.co\",\"linkedin\":\"https:\\/\\/www.deky.org\",\"youtube\":\"https:\\/\\/www.wazawotymesifyg.com\",\"twitter\":\"https:\\/\\/www.bol.biz\",\"_token\":\"rT8hGv8WiReeHHEUVMz4sB75QItN2hIjfY11CkUQ\",\"_method\":\"PUT\"}', '2024-12-31 04:02:35', '2024-12-31 04:02:35'),
(108, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-31 04:02:35', '2024-12-31 04:02:35'),
(109, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2024-12-31 06:50:04', '2024-12-31 06:50:04'),
(110, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-01 23:18:27', '2025-01-01 23:18:27'),
(111, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-01 23:18:38', '2025-01-01 23:18:38'),
(112, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-01 23:18:43', '2025-01-01 23:18:43'),
(113, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-01 23:18:48', '2025-01-01 23:18:48'),
(114, 1, 'admin/cat-categories', 'GET', '127.0.0.1', '[]', '2025-01-01 23:18:54', '2025-01-01 23:18:54'),
(115, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-01 23:18:55', '2025-01-01 23:18:55'),
(116, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-01 23:45:25', '2025-01-01 23:45:25'),
(117, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-02 04:23:23', '2025-01-02 04:23:23'),
(118, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-02 04:55:53', '2025-01-02 04:55:53'),
(119, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-02 04:56:01', '2025-01-02 04:56:01'),
(120, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Et quaerat minus con\",\"slug\":\"et-quaerat-minus-con\",\"short_content\":\"Modi vero architecto\",\"view_user\":\"Dolore quibusdam tem\",\"alt\":\"Quam fugiat sed exc\",\"url\":\"https:\\/\\/www.qopixunopa.co\",\"description\":\"<p>Description<\\/p>\",\"seo_title\":\"Occaecat velit cillu\",\"seo_description\":\"Quia veniam est qu\",\"seo_keyword\":\"Sit exercitationem a\",\"question\":\"Est amet velit rec\",\"answer\":\"Voluptatum laborum q\",\"status\":\"Omnis soluta ut ipsa\",\"whatapp\":\"https:\\/\\/www.domysaxote.cm\",\"facebook\":\"https:\\/\\/www.mijivabod.ca\",\"linkedin\":\"https:\\/\\/www.wugyjylyzajal.cm\",\"youtube\":\"https:\\/\\/www.qogesuxitoka.org.au\",\"twitter\":null,\"_token\":\"kPZIVSNhut6HXQtPZJc1Q4gRgKmvO3OZlSSu6ZHt\",\"_method\":\"PUT\"}', '2025-01-02 04:56:10', '2025-01-02 04:56:10'),
(121, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-02 04:56:10', '2025-01-02 04:56:10'),
(122, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-02 23:59:34', '2025-01-02 23:59:34'),
(123, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:15:16', '2025-01-03 01:15:16'),
(124, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Category Section\",\"icon\":\"icon-angle-right\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"ext.helpers\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 01:15:51', '2025-01-03 01:15:51'),
(125, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:15:52', '2025-01-03 01:15:52'),
(126, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2025-01-03 01:16:16', '2025-01-03 01:16:16'),
(127, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"16\",\"search_terms\":null,\"title\":\"Categories\",\"icon\":\"icon-file\",\"uri\":\"categories\",\"roles\":[null],\"permission\":null,\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\",\"_method\":\"PUT\"}', '2025-01-03 01:16:21', '2025-01-03 01:16:21'),
(128, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:16:21', '2025-01-03 01:16:21'),
(129, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"16\\\",\\\"children\\\":[{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"15\\\"}]},{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"}]\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 01:16:35', '2025-01-03 01:16:35'),
(130, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:16:36', '2025-01-03 01:16:36'),
(131, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"16\\\",\\\"children\\\":[{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"15\\\"}]}]\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 01:16:45', '2025-01-03 01:16:45'),
(132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:16:45', '2025-01-03 01:16:45'),
(133, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:16:48', '2025-01-03 01:16:48'),
(134, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-01-03 01:16:57', '2025-01-03 01:16:57'),
(135, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:19:35', '2025-01-03 01:19:35'),
(136, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Services Section\",\"icon\":\"icon-angle-right\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 01:20:32', '2025-01-03 01:20:32'),
(137, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:20:32', '2025-01-03 01:20:32'),
(138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:20:38', '2025-01-03 01:20:38'),
(139, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"17\\\"},{\\\"id\\\":\\\"16\\\",\\\"children\\\":[{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"15\\\"}]}]\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 01:20:52', '2025-01-03 01:20:52'),
(140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:20:52', '2025-01-03 01:20:52'),
(141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 01:20:54', '2025-01-03 01:20:54'),
(142, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-01-03 01:20:56', '2025-01-03 01:20:56'),
(143, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 02:08:02', '2025-01-03 02:08:02'),
(144, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"services\",\"model_name\":\"App\\\\Models\\\\Service\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ServiceController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"service_category_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_content\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"home_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"url\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 03:21:36', '2025-01-03 03:21:36'),
(145, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 03:21:39', '2025-01-03 03:21:39'),
(146, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 03:22:08', '2025-01-03 03:22:08'),
(147, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-03 03:22:10', '2025-01-03 03:22:10'),
(148, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-01-03 03:40:38', '2025-01-03 03:40:38'),
(149, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-03 03:40:39', '2025-01-03 03:40:39'),
(150, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-03 03:40:47', '2025-01-03 03:40:47'),
(151, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 04:09:37', '2025-01-03 04:09:37'),
(152, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"service_category\",\"model_name\":\"App\\\\Models\\\\ServiceCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ServiceCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 04:10:57', '2025-01-03 04:10:57'),
(153, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 04:10:57', '2025-01-03 04:10:57'),
(154, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 04:11:14', '2025-01-03 04:11:14'),
(155, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-01-03 04:11:15', '2025-01-03 04:11:15'),
(156, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 04:11:17', '2025-01-03 04:11:17'),
(157, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 04:13:08', '2025-01-03 04:13:08'),
(158, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-03 04:13:11', '2025-01-03 04:13:11'),
(159, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-03 04:13:23', '2025-01-03 04:13:23'),
(160, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2025-01-03 04:13:27', '2025-01-03 04:13:27'),
(161, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 04:13:31', '2025-01-03 04:13:31'),
(162, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2025-01-03 04:15:04', '2025-01-03 04:15:04'),
(163, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Service 1\",\"slug\":null,\"seo_title\":\"seo title\",\"seo_des\":\"seo des\",\"seo_key\":\"seo key\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 04:15:43', '2025-01-03 04:15:43'),
(164, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 04:15:43', '2025-01-03 04:15:43'),
(165, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2025-01-03 04:41:55', '2025-01-03 04:41:55'),
(166, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Service 2\",\"slug\":null,\"seo_title\":\"SEO  title\",\"seo_des\":\"Seo Des\",\"seo_key\":\"Seo key\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 04:42:31', '2025-01-03 04:42:31'),
(167, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 04:42:31', '2025-01-03 04:42:31'),
(168, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-03 04:42:33', '2025-01-03 04:42:33'),
(169, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2025-01-03 04:42:35', '2025-01-03 04:42:35'),
(170, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"1\",\"search_terms\":null,\"title\":\"Service title\",\"slug\":null,\"short_content\":\"Short content\",\"alt\":null,\"url\":null,\"description\":\"<h1><strong>Description&nbsp;<\\/strong><\\/h1>\",\"seo_title\":\"seo title\",\"seo_description\":\"SEO DES\",\"seo_keyword\":\"SEO KEY\",\"question\":null,\"answer\":null,\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 04:43:49', '2025-01-03 04:43:49'),
(171, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-03 04:43:50', '2025-01-03 04:43:50'),
(172, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2025-01-03 05:03:28', '2025-01-03 05:03:28'),
(173, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"2\",\"search_terms\":null,\"title\":\"Title 2\",\"slug\":null,\"short_content\":\"Short content 2\",\"alt\":null,\"url\":null,\"description\":\"<h2>Description 2<\\/h2>\",\"seo_title\":\"Seo title 2\",\"seo_description\":\"Seo Des 2\",\"seo_keyword\":\"Seo Key 2\",\"question\":null,\"answer\":null,\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 05:04:54', '2025-01-03 05:04:54'),
(174, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-03 05:04:55', '2025-01-03 05:04:55'),
(175, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:04', '2025-01-03 05:05:04'),
(176, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:08', '2025-01-03 05:05:08'),
(177, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"17\",\"search_terms\":null,\"title\":\"Services\",\"icon\":\"icon-file\",\"uri\":\"services\",\"roles\":[null],\"permission\":null,\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\",\"_method\":\"PUT\"}', '2025-01-03 05:05:23', '2025-01-03 05:05:23'),
(178, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:23', '2025-01-03 05:05:23'),
(179, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:27', '2025-01-03 05:05:27'),
(180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:30', '2025-01-03 05:05:30'),
(181, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:36', '2025-01-03 05:05:36'),
(182, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"17\\\",\\\"children\\\":[{\\\"id\\\":\\\"19\\\"},{\\\"id\\\":\\\"18\\\"}]},{\\\"id\\\":\\\"16\\\",\\\"children\\\":[{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"15\\\"}]}]\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 05:05:46', '2025-01-03 05:05:46'),
(183, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:46', '2025-01-03 05:05:46'),
(184, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:48', '2025-01-03 05:05:48'),
(185, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-01-03 05:05:50', '2025-01-03 05:05:50'),
(186, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 05:48:02', '2025-01-03 05:48:02'),
(187, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"tool_category\",\"model_name\":\"App\\\\Models\\\\ToolCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ToolCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 05:49:48', '2025-01-03 05:49:48'),
(188, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 05:49:49', '2025-01-03 05:49:49'),
(189, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 05:50:07', '2025-01-03 05:50:07'),
(190, 1, 'admin/tool-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 05:50:10', '2025-01-03 05:50:10'),
(191, 1, 'admin/tool-categories/create', 'GET', '127.0.0.1', '[]', '2025-01-03 05:58:51', '2025-01-03 05:58:51'),
(192, 1, 'admin/tool-categories/create', 'GET', '127.0.0.1', '[]', '2025-01-03 05:59:38', '2025-01-03 05:59:38'),
(193, 1, 'admin/tool-categories', 'POST', '127.0.0.1', '{\"name\":\"Tool 1\",\"slug\":null,\"seo_title\":\"Seo Title\",\"seo_des\":\"Seo Des\",\"seo_key\":\"Seo Key\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 06:08:06', '2025-01-03 06:08:06'),
(194, 1, 'admin/tool-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 06:08:07', '2025-01-03 06:08:07'),
(195, 1, 'admin/tool-categories/create', 'GET', '127.0.0.1', '[]', '2025-01-03 06:08:09', '2025-01-03 06:08:09'),
(196, 1, 'admin/tool-categories', 'POST', '127.0.0.1', '{\"name\":\"Tool 2\",\"slug\":null,\"seo_title\":\"Seo title 2\",\"seo_des\":\"Seo Des 2\",\"seo_key\":\"Seo key 2\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 06:08:37', '2025-01-03 06:08:37'),
(197, 1, 'admin/tool-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 06:08:37', '2025-01-03 06:08:37'),
(198, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 06:24:12', '2025-01-03 06:24:12'),
(199, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"tool\",\"model_name\":\"App\\\\Models\\\\Tool\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ToolController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"1\":{\"name\":\"tool_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"0\":{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"short_content\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"url\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"8\":{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"9\":{\"name\":\"seo_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"10\":{\"name\":\"seo_keyword\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"11\":{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"12\":{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"13\":{\"name\":\"status\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"fZS7wQFMzkovaHut11kpm99tBXnHy6NtKsCtRCk6\"}', '2025-01-03 06:27:14', '2025-01-03 06:27:14'),
(200, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 06:27:15', '2025-01-03 06:27:15'),
(201, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-03 06:27:30', '2025-01-03 06:27:30'),
(202, 1, 'admin/tool-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 06:27:33', '2025-01-03 06:27:33'),
(203, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 06:27:35', '2025-01-03 06:27:35'),
(204, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:07:26', '2025-01-03 23:07:26'),
(205, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:17:27', '2025-01-03 23:17:27'),
(206, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:18:09', '2025-01-03 23:18:09'),
(207, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:18:35', '2025-01-03 23:18:35'),
(208, 1, 'admin/tool-categories', 'GET', '127.0.0.1', '[]', '2025-01-03 23:18:38', '2025-01-03 23:18:38'),
(209, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:18:39', '2025-01-03 23:18:39'),
(210, 1, 'admin/tools/create', 'GET', '127.0.0.1', '[]', '2025-01-03 23:18:41', '2025-01-03 23:18:41'),
(211, 1, 'admin/tools/create', 'GET', '127.0.0.1', '[]', '2025-01-03 23:24:04', '2025-01-03 23:24:04'),
(212, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:24:07', '2025-01-03 23:24:07'),
(213, 1, 'admin/tools/create', 'GET', '127.0.0.1', '[]', '2025-01-03 23:24:09', '2025-01-03 23:24:09'),
(214, 1, 'admin/tools/create', 'GET', '127.0.0.1', '[]', '2025-01-03 23:25:50', '2025-01-03 23:25:50'),
(215, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:25:54', '2025-01-03 23:25:54'),
(216, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:39:20', '2025-01-03 23:39:20'),
(217, 1, 'admin/tools/create', 'GET', '127.0.0.1', '[]', '2025-01-03 23:39:22', '2025-01-03 23:39:22'),
(218, 1, 'admin/tools', 'POST', '127.0.0.1', '{\"tool_id\":\"1\",\"search_terms\":null,\"title\":\"Title 1\",\"slug\":null,\"short_content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n<\\/ul>\",\"description\":\"<h2>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h2>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<h3>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h3>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<p>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis vero assumenda unde laudantium voluptate vitae voluptates, aspernatur velit numquam alias!<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum doloremque optio sed numquam voluptates quo pariatur obcaecati! Ex, labore natus.<\\/li>\\r\\n<\\/ul>\",\"alt\":null,\"url\":null,\"seo_title\":\"seo title\",\"seo_description\":\"seo des\",\"seo_keyword\":\"seo key\",\"question\":null,\"answer\":null,\"status\":null,\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\"}', '2025-01-03 23:40:36', '2025-01-03 23:40:36'),
(219, 1, 'admin/tools/create', 'GET', '127.0.0.1', '[]', '2025-01-03 23:40:41', '2025-01-03 23:40:41');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(220, 1, 'admin/tools', 'POST', '127.0.0.1', '{\"tool_id\":\"1\",\"search_terms\":null,\"title\":\"Title 1\",\"slug\":null,\"short_content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n<\\/ul>\",\"description\":\"<h2>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h2>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<h3>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h3>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<p>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis vero assumenda unde laudantium voluptate vitae voluptates, aspernatur velit numquam alias!<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum doloremque optio sed numquam voluptates quo pariatur obcaecati! Ex, labore natus.<\\/li>\\r\\n<\\/ul>\",\"alt\":null,\"url\":null,\"seo_title\":\"seo title\",\"seo_description\":\"seo des\",\"seo_keyword\":\"seo key\",\"question\":null,\"answer\":null,\"status\":null,\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\"}', '2025-01-03 23:42:00', '2025-01-03 23:42:00'),
(221, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:42:01', '2025-01-03 23:42:01'),
(222, 1, 'admin/tools/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-03 23:42:03', '2025-01-03 23:42:03'),
(223, 1, 'admin/tools/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-03 23:42:33', '2025-01-03 23:42:33'),
(224, 1, 'admin/tools/1', 'PUT', '127.0.0.1', '{\"tool_id\":\"1\",\"search_terms\":null,\"title\":\"Title 1\",\"slug\":\"title-1\",\"short_content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n<\\/ul>\",\"description\":\"<h2>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h2>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<h3>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h3>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<p>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis vero assumenda unde laudantium voluptate vitae voluptates, aspernatur velit numquam alias!<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum doloremque optio sed numquam voluptates quo pariatur obcaecati! Ex, labore natus.<\\/li>\\r\\n<\\/ul>\",\"alt\":null,\"url\":null,\"seo_title\":\"seo title\",\"seo_description\":\"seo des\",\"seo_keyword\":\"seo key\",\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tools\"}', '2025-01-03 23:42:43', '2025-01-03 23:42:43'),
(225, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:42:43', '2025-01-03 23:42:43'),
(226, 1, 'admin/tools/create', 'GET', '127.0.0.1', '[]', '2025-01-03 23:58:32', '2025-01-03 23:58:32'),
(227, 1, 'admin/tools', 'POST', '127.0.0.1', '{\"tool_id\":\"2\",\"search_terms\":null,\"title\":\"Title\",\"slug\":null,\"short_content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n<\\/ul>\",\"description\":\"<h2>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h2>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<h3>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h3>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<p>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis vero assumenda unde laudantium voluptate vitae voluptates, aspernatur velit numquam alias!<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum doloremque optio sed numquam voluptates quo pariatur obcaecati! Ex, labore natus.<\\/li>\\r\\n<\\/ul>\",\"alt\":\"image\",\"url\":null,\"seo_title\":\"Seo\",\"seo_description\":\"seo des\",\"seo_keyword\":\"seo key\",\"question\":null,\"answer\":null,\"status\":\"0\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\"}', '2025-01-03 23:59:38', '2025-01-03 23:59:38'),
(228, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:59:39', '2025-01-03 23:59:39'),
(229, 1, 'admin/tools/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-03 23:59:44', '2025-01-03 23:59:44'),
(230, 1, 'admin/tools/1', 'PUT', '127.0.0.1', '{\"tool_id\":\"1\",\"search_terms\":null,\"title\":\"Title 1\",\"slug\":\"title-1\",\"short_content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.<\\/li>\\r\\n<\\/ul>\",\"description\":\"<h2>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h2>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<h3>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/h3>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<p>Benefits of SmallSEOTools&rsquo; Plagiarism Detector<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis vero assumenda unde laudantium voluptate vitae voluptates, aspernatur velit numquam alias!<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum doloremque optio sed numquam voluptates quo pariatur obcaecati! Ex, labore natus.<\\/li>\\r\\n<\\/ul>\",\"alt\":null,\"url\":null,\"seo_title\":\"seo title\",\"seo_description\":\"seo des\",\"seo_keyword\":\"seo key\",\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-03 23:59:52', '2025-01-03 23:59:52'),
(231, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-03 23:59:52', '2025-01-03 23:59:52'),
(232, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-04 00:11:40', '2025-01-04 00:11:40'),
(233, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 00:11:52', '2025-01-04 00:11:52'),
(234, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-04 00:15:02', '2025-01-04 00:15:02'),
(235, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Tools Section\",\"icon\":\"icon-angle-right\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\"}', '2025-01-04 00:15:28', '2025-01-04 00:15:28'),
(236, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-04 00:15:28', '2025-01-04 00:15:28'),
(237, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-04 00:15:35', '2025-01-04 00:15:35'),
(238, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:15:42', '2025-01-04 00:15:42'),
(239, 1, 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"22\",\"search_terms\":null,\"title\":\"Tool-categories\",\"icon\":\"icon-file\",\"uri\":\"tool-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:15:52', '2025-01-04 00:15:52'),
(240, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-04 00:15:52', '2025-01-04 00:15:52'),
(241, 1, 'admin/auth/menu/21/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:15:56', '2025-01-04 00:15:56'),
(242, 1, 'admin/auth/menu/21', 'PUT', '127.0.0.1', '{\"parent_id\":\"22\",\"search_terms\":null,\"title\":\"Tools\",\"icon\":\"icon-file\",\"uri\":\"tools\",\"roles\":[null],\"permission\":null,\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:16:02', '2025-01-04 00:16:02'),
(243, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-04 00:16:03', '2025-01-04 00:16:03'),
(244, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-04 00:16:22', '2025-01-04 00:16:22'),
(245, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"22\\\",\\\"children\\\":[{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"20\\\"}]},{\\\"id\\\":\\\"17\\\",\\\"children\\\":[{\\\"id\\\":\\\"19\\\"},{\\\"id\\\":\\\"18\\\"}]},{\\\"id\\\":\\\"16\\\",\\\"children\\\":[{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"15\\\"}]}]\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\"}', '2025-01-04 00:17:03', '2025-01-04 00:17:03'),
(246, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-04 00:17:03', '2025-01-04 00:17:03'),
(247, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-01-04 00:17:06', '2025-01-04 00:17:06'),
(248, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-04 00:21:09', '2025-01-04 00:21:09'),
(249, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-04 00:21:12', '2025-01-04 00:21:12'),
(250, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-04 00:22:41', '2025-01-04 00:22:41'),
(251, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 00:22:43', '2025-01-04 00:22:43'),
(252, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 00:22:52', '2025-01-04 00:22:52'),
(253, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:22:58', '2025-01-04 00:22:58'),
(254, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:23:25', '2025-01-04 00:23:25'),
(255, 1, 'admin/services/2', 'PUT', '127.0.0.1', '{\"service_category_id\":\"2\",\"search_terms\":null,\"title\":\"Title 2\",\"slug\":\"title-2\",\"short_content\":\"Short content 2\",\"alt\":null,\"url\":null,\"description\":\"<h2>Description 2<\\/h2>\",\"seo_title\":\"Seo title 2\",\"seo_description\":\"Seo Des 2\",\"seo_keyword\":\"Seo Key 2\",\"question\":null,\"answer\":null,\"status\":\"on\",\"status_cb\":\"on\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:23:29', '2025-01-04 00:23:29'),
(256, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 00:23:29', '2025-01-04 00:23:29'),
(257, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:23:32', '2025-01-04 00:23:32'),
(258, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 00:23:35', '2025-01-04 00:23:35'),
(259, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:23:37', '2025-01-04 00:23:37'),
(260, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"service_category_id\":\"1\",\"search_terms\":null,\"title\":\"Service title\",\"slug\":\"service-title\",\"short_content\":\"Short content\",\"alt\":null,\"url\":null,\"description\":\"<h1><strong>Description&nbsp;<\\/strong><\\/h1>\",\"seo_title\":\"seo title\",\"seo_description\":\"SEO DES\",\"seo_keyword\":\"SEO KEY\",\"question\":null,\"answer\":null,\"status\":\"on\",\"status_cb\":\"on\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:23:42', '2025-01-04 00:23:42'),
(261, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 00:23:42', '2025-01-04 00:23:42'),
(262, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:24:30', '2025-01-04 00:24:30'),
(263, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:24:45', '2025-01-04 00:24:45'),
(264, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:24:52', '2025-01-04 00:24:52'),
(265, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Et quaerat minus con\",\"slug\":\"et-quaerat-minus-con\",\"short_content\":\"Modi vero architecto\",\"view_user\":\"Dolore quibusdam tem\",\"alt\":\"Quam fugiat sed exc\",\"url\":\"https:\\/\\/www.qopixunopa.co\",\"description\":\"<p>Description<\\/p>\",\"seo_title\":\"Occaecat velit cillu\",\"seo_description\":\"Quia veniam est qu\",\"seo_keyword\":\"Sit exercitationem a\",\"question\":\"Est amet velit rec\",\"answer\":\"Voluptatum laborum q\",\"status\":\"Omnis soluta ut ipsa\",\"status_cb\":\"on\",\"whatapp\":\"https:\\/\\/www.domysaxote.cm\",\"facebook\":\"https:\\/\\/www.mijivabod.ca\",\"linkedin\":\"https:\\/\\/www.wugyjylyzajal.cm\",\"youtube\":\"https:\\/\\/www.qogesuxitoka.org.au\",\"twitter\":null,\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:24:55', '2025-01-04 00:24:55'),
(266, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:24:55', '2025-01-04 00:24:55'),
(267, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:24:57', '2025-01-04 00:24:57'),
(268, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Ut sunt tenetur volu\",\"slug\":\"ut-sunt-tenetur-volu\",\"short_content\":\"Commodo officia fuga\",\"view_user\":\"Eveniet et accusant\",\"alt\":\"Tenetur officia lore\",\"url\":\"https:\\/\\/www.selaqipukucyxy.tv\",\"description\":\"<h1><strong>dis2<\\/strong><\\/h1>\",\"seo_title\":\"Cillum sit sed inci\",\"seo_description\":\"Ipsum facere id in\",\"seo_keyword\":\"Dolorem magna sit vo\",\"question\":\"Quo sit pariatur Ve\",\"answer\":\"Laboris beatae expli\",\"status\":\"Quo exercitation ear\",\"status_cb\":\"on\",\"whatapp\":\"https:\\/\\/www.sagivipigy.biz\",\"facebook\":\"https:\\/\\/www.lotutiv.co\",\"linkedin\":\"https:\\/\\/www.deky.org\",\"youtube\":\"https:\\/\\/www.wazawotymesifyg.com\",\"twitter\":\"https:\\/\\/www.bol.biz\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:24:59', '2025-01-04 00:24:59'),
(269, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:24:59', '2025-01-04 00:24:59'),
(270, 1, 'admin/categories/3/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:02', '2025-01-04 00:25:02'),
(271, 1, 'admin/categories/3', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Qui harum est ea ex\",\"slug\":\"qui-harum-est-ea-ex\",\"short_content\":\"Adipisci est libero\",\"view_user\":\"In aliquam voluptate\",\"alt\":\"Perspiciatis eius v\",\"url\":\"https:\\/\\/www.wikajaqaxo.co\",\"description\":\"<h2><strong>description 3<\\/strong><\\/h2>\",\"seo_title\":\"Molestiae in et sed\",\"seo_description\":\"Voluptatum non solut\",\"seo_keyword\":\"Nulla non aut placea\",\"question\":\"Dicta natus et sed q\",\"answer\":\"Et iusto ut enim und\",\"status\":\"on\",\"status_cb\":\"on\",\"whatapp\":\"https:\\/\\/www.jygulekeduly.me.uk\",\"facebook\":\"https:\\/\\/www.nykilopipyja.mobi\",\"linkedin\":\"https:\\/\\/www.gybehylyg.biz\",\"youtube\":\"https:\\/\\/www.lebumahiheta.cm\",\"twitter\":\"https:\\/\\/www.bogelezazepeku.biz\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:25:06', '2025-01-04 00:25:06'),
(272, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:06', '2025-01-04 00:25:06'),
(273, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:09', '2025-01-04 00:25:09'),
(274, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Ut sunt tenetur volu\",\"slug\":\"ut-sunt-tenetur-volu\",\"short_content\":\"Commodo officia fuga\",\"view_user\":\"Eveniet et accusant\",\"alt\":\"Tenetur officia lore\",\"url\":\"https:\\/\\/www.selaqipukucyxy.tv\",\"description\":\"<h1><strong>dis2<\\/strong><\\/h1>\",\"seo_title\":\"Cillum sit sed inci\",\"seo_description\":\"Ipsum facere id in\",\"seo_keyword\":\"Dolorem magna sit vo\",\"question\":\"Quo sit pariatur Ve\",\"answer\":\"Laboris beatae expli\",\"status\":\"on\",\"status_cb\":\"on\",\"whatapp\":\"https:\\/\\/www.sagivipigy.biz\",\"facebook\":\"https:\\/\\/www.lotutiv.co\",\"linkedin\":\"https:\\/\\/www.deky.org\",\"youtube\":\"https:\\/\\/www.wazawotymesifyg.com\",\"twitter\":\"https:\\/\\/www.bol.biz\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:25:13', '2025-01-04 00:25:13'),
(275, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:13', '2025-01-04 00:25:13'),
(276, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:16', '2025-01-04 00:25:16'),
(277, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Et quaerat minus con\",\"slug\":\"et-quaerat-minus-con\",\"short_content\":\"Modi vero architecto\",\"view_user\":\"Dolore quibusdam tem\",\"alt\":\"Quam fugiat sed exc\",\"url\":\"https:\\/\\/www.qopixunopa.co\",\"description\":\"<p>Description<\\/p>\",\"seo_title\":\"Occaecat velit cillu\",\"seo_description\":\"Quia veniam est qu\",\"seo_keyword\":\"Sit exercitationem a\",\"question\":\"Est amet velit rec\",\"answer\":\"Voluptatum laborum q\",\"status\":\"on\",\"status_cb\":\"on\",\"whatapp\":\"https:\\/\\/www.domysaxote.cm\",\"facebook\":\"https:\\/\\/www.mijivabod.ca\",\"linkedin\":\"https:\\/\\/www.wugyjylyzajal.cm\",\"youtube\":\"https:\\/\\/www.qogesuxitoka.org.au\",\"twitter\":null,\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:25:19', '2025-01-04 00:25:19'),
(278, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:19', '2025-01-04 00:25:19'),
(279, 1, 'admin/categories/3/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:21', '2025-01-04 00:25:21'),
(280, 1, 'admin/categories/3', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Qui harum est ea ex\",\"slug\":\"qui-harum-est-ea-ex\",\"short_content\":\"Adipisci est libero\",\"view_user\":\"In aliquam voluptate\",\"alt\":\"Perspiciatis eius v\",\"url\":\"https:\\/\\/www.wikajaqaxo.co\",\"description\":\"<h2><strong>description 3<\\/strong><\\/h2>\",\"seo_title\":\"Molestiae in et sed\",\"seo_description\":\"Voluptatum non solut\",\"seo_keyword\":\"Nulla non aut placea\",\"question\":\"Dicta natus et sed q\",\"answer\":\"Et iusto ut enim und\",\"status\":\"off\",\"whatapp\":\"https:\\/\\/www.jygulekeduly.me.uk\",\"facebook\":\"https:\\/\\/www.nykilopipyja.mobi\",\"linkedin\":\"https:\\/\\/www.gybehylyg.biz\",\"youtube\":\"https:\\/\\/www.lebumahiheta.cm\",\"twitter\":\"https:\\/\\/www.bogelezazepeku.biz\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:25:24', '2025-01-04 00:25:24'),
(281, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:24', '2025-01-04 00:25:24'),
(282, 1, 'admin/categories/3/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:27', '2025-01-04 00:25:27'),
(283, 1, 'admin/categories/3', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Qui harum est ea ex\",\"slug\":\"qui-harum-est-ea-ex\",\"short_content\":\"Adipisci est libero\",\"view_user\":\"In aliquam voluptate\",\"alt\":\"Perspiciatis eius v\",\"url\":\"https:\\/\\/www.wikajaqaxo.co\",\"description\":\"<h2><strong>description 3<\\/strong><\\/h2>\",\"seo_title\":\"Molestiae in et sed\",\"seo_description\":\"Voluptatum non solut\",\"seo_keyword\":\"Nulla non aut placea\",\"question\":\"Dicta natus et sed q\",\"answer\":\"Et iusto ut enim und\",\"status\":\"on\",\"status_cb\":\"on\",\"whatapp\":\"https:\\/\\/www.jygulekeduly.me.uk\",\"facebook\":\"https:\\/\\/www.nykilopipyja.mobi\",\"linkedin\":\"https:\\/\\/www.gybehylyg.biz\",\"youtube\":\"https:\\/\\/www.lebumahiheta.cm\",\"twitter\":\"https:\\/\\/www.bogelezazepeku.biz\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\",\"_method\":\"PUT\"}', '2025-01-04 00:25:31', '2025-01-04 00:25:31'),
(284, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:31', '2025-01-04 00:25:31'),
(285, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:35', '2025-01-04 00:25:35'),
(286, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:39', '2025-01-04 00:25:39'),
(287, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:53', '2025-01-04 00:25:53'),
(288, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-04 00:25:57', '2025-01-04 00:25:57'),
(289, 1, 'admin/contact-uses', 'GET', '127.0.0.1', '[]', '2025-01-04 00:36:22', '2025-01-04 00:36:22'),
(290, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-04 00:55:18', '2025-01-04 00:55:18'),
(291, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"title\",\"model_name\":\"App\\\\Models\\\\Title\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TitleController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"seo_title_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"seo_des_home\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"seo_key_home\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"seo_title_about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"seo_des_about\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"seo_key_about\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"seo_title_tool\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"seo_des_tool\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"8\":{\"name\":\"seo_key_tool\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"9\":{\"name\":\"seo_title_services\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"10\":{\"name\":\"seo_des_services\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"11\":{\"name\":\"seo_key_services\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"12\":{\"name\":\"seo_title_category\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"13\":{\"name\":\"seo_des_category\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"14\":{\"name\":\"seo_key_category\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"15\":{\"name\":\"seo_title_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"16\":{\"name\":\"seo_des_contact\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"17\":{\"name\":\"seo_key_contact\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"18\":{\"name\":\"seo_title_login\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"19\":{\"name\":\"seo_des_login\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"20\":{\"name\":\"seo_key_login\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"21\":{\"name\":\"seo_title_signup\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"22\":{\"name\":\"seo_des_signup\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"23\":{\"name\":\"seo_key_signup\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"25\":{\"name\":\"seo_title_policy\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"26\":{\"name\":\"seo_des_policy\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"24\":{\"name\":\"seo_key_policy\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"27\":{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\"}', '2025-01-04 01:03:40', '2025-01-04 01:03:40'),
(292, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-04 01:03:45', '2025-01-04 01:03:45'),
(293, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-01-04 01:04:02', '2025-01-04 01:04:02'),
(294, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-01-04 01:04:04', '2025-01-04 01:04:04'),
(295, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2025-01-04 01:04:06', '2025-01-04 01:04:06'),
(296, 1, 'admin/titles', 'POST', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home description\",\"seo_key_home\":\"home keyword\",\"seo_title_about\":\"about title\",\"seo_des_about\":\"about description\",\"seo_key_about\":\"about keyword\",\"seo_title_tool\":\"tool title\",\"seo_des_tool\":\"tool description\",\"seo_key_tool\":\"tool keyword\",\"seo_title_services\":\"service title\",\"seo_des_services\":\"service description\",\"seo_key_services\":\"service keyword\",\"seo_title_category\":\"category title\",\"seo_des_category\":\"category description\",\"seo_key_category\":\"category keyword\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact description\",\"seo_key_contact\":\"contact keyword\",\"seo_title_login\":\"login title\",\"seo_des_login\":\"login description\",\"seo_key_login\":\"login keyword\",\"seo_title_signup\":\"sign up title\",\"seo_des_signup\":\"sign up description\",\"seo_key_signup\":\"sign up keyword\",\"seo_title_policy\":\"policy title\",\"seo_des_policy\":\"policy description\",\"seo_key_policy\":\"policy keyword\",\"_token\":\"NY6F7Om0ZRhJ4UPbWKZpeehI2vZzCZ9se80gMTqE\"}', '2025-01-04 01:09:08', '2025-01-04 01:09:08'),
(297, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-01-04 01:09:08', '2025-01-04 01:09:08'),
(298, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-01-04 01:09:42', '2025-01-04 01:09:42'),
(299, 1, 'admin/tools', 'GET', '127.0.0.1', '[]', '2025-01-04 04:34:40', '2025-01-04 04:34:40'),
(300, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:41:07', '2025-01-04 05:41:07'),
(301, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:41:10', '2025-01-04 05:41:10'),
(302, 1, 'admin/services/2', 'PUT', '127.0.0.1', '{\"service_category_id\":\"2\",\"search_terms\":null,\"title\":\"Title 2\",\"slug\":\"title-2\",\"short_content\":\"Short content 2\",\"alt\":null,\"url\":null,\"description\":\"<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.quam, corrupti repellat cupiditate inventore ut dolores dolor<\\/p>\",\"seo_title\":\"Seo title 2\",\"seo_description\":\"Seo Des 2\",\"seo_keyword\":\"Seo Key 2\",\"question\":null,\"answer\":null,\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:41:45', '2025-01-04 05:41:45'),
(303, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:41:45', '2025-01-04 05:41:45'),
(304, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:42:46', '2025-01-04 05:42:46'),
(305, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:43:08', '2025-01-04 05:43:08'),
(306, 1, 'admin/services/2', 'PUT', '127.0.0.1', '{\"service_category_id\":\"2\",\"search_terms\":null,\"title\":\"Title 2\",\"slug\":\"title-2\",\"short_content\":\"<h2>Lorem, ipsum dolor sit amet consectetur adipisicing.<\\/h2>\\r\\n\\r\\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio?<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam aut deserunt odit, magnam labore, cum aspernatur et explicabo molestias necessitatibus eum impedit eveniet corrupti temporibus blanditiis in? Optio quae nihil molestiae esse deleniti sunt eum atque asperiores, repellat hic placeat ipsum iusto maiores, iste eveniet laborum, adipisci fugit quibusdam consequatur.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n<\\/ul>\",\"alt\":null,\"url\":null,\"description\":\"<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.quam, corrupti repellat cupiditate inventore ut dolores dolor<\\/p>\",\"seo_title\":\"Seo title 2\",\"seo_description\":\"Seo Des 2\",\"seo_keyword\":\"Seo Key 2\",\"question\":null,\"answer\":null,\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:43:13', '2025-01-04 05:43:13'),
(307, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:43:14', '2025-01-04 05:43:14'),
(308, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:43:26', '2025-01-04 05:43:26'),
(309, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:43:31', '2025-01-04 05:43:31'),
(310, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:43:41', '2025-01-04 05:43:41'),
(311, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:43:45', '2025-01-04 05:43:45'),
(312, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"service_category_id\":\"1\",\"search_terms\":null,\"title\":\"Service title\",\"slug\":\"service-title\",\"short_content\":\"<h2>Lorem, ipsum dolor sit amet consectetur adipisicing.<\\/h2>\\r\\n\\r\\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio?<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam aut deserunt odit, magnam labore, cum aspernatur et explicabo molestias necessitatibus eum impedit eveniet corrupti temporibus blanditiis in? Optio quae nihil molestiae esse deleniti sunt eum atque asperiores, repellat hic placeat ipsum iusto maiores, iste eveniet laborum, adipisci fugit quibusdam consequatur.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n<\\/ul>\",\"alt\":null,\"url\":null,\"description\":\"<h1><strong>Description&nbsp;<\\/strong><\\/h1>\",\"seo_title\":\"seo title\",\"seo_description\":\"SEO DES\",\"seo_keyword\":\"SEO KEY\",\"question\":null,\"answer\":null,\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:43:51', '2025-01-04 05:43:51'),
(313, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:43:51', '2025-01-04 05:43:51'),
(314, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:43:53', '2025-01-04 05:43:53'),
(315, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"service_category_id\":\"1\",\"search_terms\":null,\"title\":\"Service title\",\"slug\":\"service-title\",\"short_content\":\"<h2>Lorem, ipsum dolor sit amet consectetur adipisicing.<\\/h2>\\r\\n\\r\\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio?<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam aut deserunt odit, magnam labore, cum aspernatur et explicabo molestias necessitatibus eum impedit eveniet corrupti temporibus blanditiis in? Optio quae nihil molestiae esse deleniti sunt eum atque asperiores, repellat hic placeat ipsum iusto maiores, iste eveniet laborum, adipisci fugit quibusdam consequatur.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n<\\/ul>\",\"alt\":null,\"url\":null,\"description\":\"<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.quam, corrupti repellat cupiditate inventore ut dolores dolor<\\/p>\",\"seo_title\":\"seo title\",\"seo_description\":\"SEO DES\",\"seo_keyword\":\"SEO KEY\",\"question\":null,\"answer\":null,\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:44:01', '2025-01-04 05:44:01'),
(316, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:44:01', '2025-01-04 05:44:01'),
(317, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:48:38', '2025-01-04 05:48:38');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(318, 1, 'admin/services/2', 'PUT', '127.0.0.1', '{\"service_category_id\":\"2\",\"search_terms\":null,\"title\":\"Title 2\",\"slug\":\"title-2\",\"short_content\":\"<h2>Lorem, ipsum dolor sit amet consectetur adipisicing.<\\/h2>\\r\\n\\r\\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio?<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam aut deserunt odit, magnam labore, cum aspernatur et explicabo molestias necessitatibus eum impedit eveniet corrupti temporibus blanditiis in? Optio quae nihil molestiae esse deleniti sunt eum atque asperiores, repellat hic placeat ipsum iusto maiores, iste eveniet laborum, adipisci fugit quibusdam consequatur.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>Lorem, ipsum dolor sit amet consectetur adipisicing.<\\/h2>\\r\\n\\r\\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio?<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam aut deserunt odit, magnam labore, cum aspernatur et explicabo molestias necessitatibus eum impedit eveniet corrupti temporibus blanditiis in? Optio quae nihil molestiae esse deleniti sunt eum atque asperiores, repellat hic placeat ipsum iusto maiores, iste eveniet laborum, adipisci fugit quibusdam consequatur.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n\\t<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"alt\":null,\"url\":null,\"description\":\"<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"icon\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/assets\\/images\\/help-icon.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem, ipsum dolor.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.quam, corrupti repellat cupiditate inventore ut dolores dolor<\\/p>\",\"seo_title\":\"Seo title 2\",\"seo_description\":\"Seo Des 2\",\"seo_keyword\":\"Seo Key 2\",\"question\":null,\"answer\":null,\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:48:57', '2025-01-04 05:48:57'),
(319, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:48:58', '2025-01-04 05:48:58'),
(320, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 05:54:32', '2025-01-04 05:54:32'),
(321, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 05:54:34', '2025-01-04 05:54:34'),
(322, 1, 'admin/service-categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:54:36', '2025-01-04 05:54:36'),
(323, 1, 'admin/service-categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Service 1\",\"slug\":\"service-1\",\"short_des\":\"Lorem, ipsum dolor sit amet consectetur adipisicing.\\r\\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio\",\"seo_title\":\"seo title\",\"seo_des\":\"seo des\",\"seo_key\":\"seo key\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:55:04', '2025-01-04 05:55:04'),
(324, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 05:55:05', '2025-01-04 05:55:05'),
(325, 1, 'admin/service-categories/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:55:06', '2025-01-04 05:55:06'),
(326, 1, 'admin/service-categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Service 2\",\"slug\":\"service-2\",\"short_des\":\"Lorem, ipsum dolor sit amet consectetur adipisicing.\\r\\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio\",\"seo_title\":\"SEO  title\",\"seo_des\":\"Seo Des\",\"seo_key\":\"Seo key\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:55:09', '2025-01-04 05:55:09'),
(327, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 05:55:09', '2025-01-04 05:55:09'),
(328, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 05:56:38', '2025-01-04 05:56:38'),
(329, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 05:57:18', '2025-01-04 05:57:18'),
(330, 1, 'admin/service-categories/1/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:57:24', '2025-01-04 05:57:24'),
(331, 1, 'admin/service-categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Service 1\",\"slug\":\"service-1\",\"short_des\":\"Lorem, ipsum dolor sit amet consectetur adipisicing.\\r\\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio\",\"seo_title\":\"seo title\",\"seo_des\":\"seo des\",\"seo_key\":\"seo key\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:57:48', '2025-01-04 05:57:48'),
(332, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 05:57:48', '2025-01-04 05:57:48'),
(333, 1, 'admin/service-categories/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 05:57:50', '2025-01-04 05:57:50'),
(334, 1, 'admin/service-categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Service 2\",\"slug\":\"service-2\",\"short_des\":\"Lorem, ipsum dolor sit amet consectetur adipisicing.\\r\\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio\",\"seo_title\":\"SEO  title\",\"seo_des\":\"Seo Des\",\"seo_key\":\"Seo key\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 05:57:57', '2025-01-04 05:57:57'),
(335, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 05:57:58', '2025-01-04 05:57:58'),
(336, 1, 'admin/service-categories/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 06:02:50', '2025-01-04 06:02:50'),
(337, 1, 'admin/service-categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Service 2\",\"slug\":\"service-2\",\"short_des\":\"Lorem, ipsum dolor sit amet consectetur adipisicing.\\r\\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio\",\"seo_title\":\"SEO  title\",\"seo_des\":\"Seo Des\",\"seo_key\":\"Seo key\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 06:03:00', '2025-01-04 06:03:00'),
(338, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 06:03:00', '2025-01-04 06:03:00'),
(339, 1, 'admin/service-categories/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 06:03:10', '2025-01-04 06:03:10'),
(340, 1, 'admin/service-categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Service 2\",\"slug\":\"service-2\",\"short_des\":\"Lorem, ipsum dolor sit amet consectetur adipisicing.\\r\\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio\",\"seo_title\":\"SEO  title\",\"seo_des\":\"Seo Des\",\"seo_key\":\"Seo key\",\"_token\":\"r1U5Qo8poJe5L56cBe2oRPvDu8I1qAHmxeUREfy0\",\"_method\":\"PUT\"}', '2025-01-04 06:03:15', '2025-01-04 06:03:15'),
(341, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2025-01-04 06:03:16', '2025-01-04 06:03:16'),
(342, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2025-01-04 06:03:43', '2025-01-04 06:03:43'),
(343, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 06:03:45', '2025-01-04 06:03:45'),
(344, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 06:04:06', '2025-01-04 06:04:06'),
(345, 1, 'admin/services/2/edit', 'GET', '127.0.0.1', '[]', '2025-01-04 06:04:19', '2025-01-04 06:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-12-25 23:21:18', '2024-12-25 23:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-12-25 04:54:59', '2024-12-25 04:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 16, NULL, NULL),
(1, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$5yMOUGN5mUBNBHXYeNtgBeCoNKxrSkdb.GioT8WNQCmmMlKmgKNn6', 'Administrator', NULL, 'TDKMiyLotFn10Ih2pb8162e54wK9TmugZzilFsk3b1eVwmQS3eG8PmujCZBV', '2024-12-25 04:54:59', '2024-12-25 04:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `category_id`, `title`, `slug`, `short_content`, `view_user`, `image`, `alt`, `url`, `description`, `seo_title`, `seo_description`, `seo_keyword`, `question`, `answer`, `status`, `whatapp`, `facebook`, `linkedin`, `youtube`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '1', 'Et quaerat minus con', 'et-quaerat-minus-con', 'Modi vero architecto', 'Dolore quibusdam tem', 'images/Fullmetal Alchemist.jpg', 'Quam fugiat sed exc', 'https://www.qopixunopa.co', '<p>Description</p>', 'Occaecat velit cillu', 'Quia veniam est qu', 'Sit exercitationem a', 'Est amet velit rec', 'Voluptatum laborum q', '1', 'https://www.domysaxote.cm', 'https://www.mijivabod.ca', 'https://www.wugyjylyzajal.cm', 'https://www.qogesuxitoka.org.au', NULL, '2024-12-31 03:58:23', '2025-01-04 00:25:19'),
(2, '1', 'Ut sunt tenetur volu', 'ut-sunt-tenetur-volu', 'Commodo officia fuga', 'Eveniet et accusant', 'images/Keijo!!!!!!!!.jpg', 'Tenetur officia lore', 'https://www.selaqipukucyxy.tv', '<h1><strong>dis2</strong></h1>', 'Cillum sit sed inci', 'Ipsum facere id in', 'Dolorem magna sit vo', 'Quo sit pariatur Ve', 'Laboris beatae expli', '1', 'https://www.sagivipigy.biz', 'https://www.lotutiv.co', 'https://www.deky.org', 'https://www.wazawotymesifyg.com', 'https://www.bol.biz', '2024-12-31 04:01:40', '2025-01-04 00:25:13'),
(3, '2', 'Qui harum est ea ex', 'qui-harum-est-ea-ex', 'Adipisci est libero', 'In aliquam voluptate', 'images/High School DxD.jpg', 'Perspiciatis eius v', 'https://www.wikajaqaxo.co', '<h2><strong>description 3</strong></h2>', 'Molestiae in et sed', 'Voluptatum non solut', 'Nulla non aut placea', 'Dicta natus et sed q', 'Et iusto ut enim und', '1', 'https://www.jygulekeduly.me.uk', 'https://www.nykilopipyja.mobi', 'https://www.gybehylyg.biz', 'https://www.lebumahiheta.cm', 'https://www.bogelezazepeku.biz', '2024-12-31 04:02:23', '2025-01-04 00:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `cat_category`
--

CREATE TABLE `cat_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cat_category`
--

INSERT INTO `cat_category` (`id`, `name`, `slug`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(1, 'Cat_Catergory1', 'cat-catergory1', 'titel', 'des', 'key', '2024-12-30 06:00:32', '2024-12-30 06:00:47'),
(2, 'Cat_Catergory2', 'cat-catergory2', 'Title 2', 'Des 2', 'key 2', '2024-12-30 06:00:53', '2024-12-30 06:01:41'),
(3, 'Cat_Catergory3', 'cat-catergory3', 'title 3', 'des3', 'key3', '2024-12-30 06:01:01', '2024-12-30 06:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `select` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `word_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `fname`, `lname`, `phone`, `email`, `select`, `deadline`, `word_count`, `image`, `check_out_date`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Shoshana', 'Rigel', 'Plato', 'nasimahe@mailinator.com', 'Accounting & Finance', '1971-12-19', '928', '1735278180.jpg', '1974-05-13', 'Non rerum id ut ut', '2024-12-27 00:13:01', '2024-12-27 00:13:01'),
(2, 'Kaushik', 'Dey', '08306449106', 'kaushik0077dey@gmail.com', 'Accounting & Finance', '2024-12-27', '12312', '1735278389.jpg', '2024-12-28', '13e23e32e23e32', '2024-12-27 00:16:29', '2024-12-27 00:16:29'),
(3, 'Noble', 'Reed', 'Angela', 'fatyh@mailinator.com', 'Accounting & Finance', '1979-08-31', '973', '1735278478.jpg', '1980-02-26', 'Quos sit in ex vel', '2024-12-27 00:17:58', '2024-12-27 00:17:58'),
(4, 'Haviva', 'Cara', '2131321321', 'pebame@mailinator.com', 'Accounting & Finance', '1982-12-07', '286', '1735297187.jpg', '2017-06-23', 'In ipsum veritatis', '2024-12-27 05:29:47', '2024-12-27 05:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2024_12_26_113817_create_contact_us_table', 3),
(7, '2024_12_30_093824_create_categorys_table', 4),
(8, '2024_12_30_112502_create_cat_category_table', 5),
(9, '2025_01_03_085136_create_services_table', 6),
(10, '2025_01_03_094057_create_service_category_table', 7),
(11, '2025_01_03_111948_create_tool_category_table', 8),
(12, '2025_01_03_115714_create_tool_table', 9),
(13, '2025_01_04_063340_create_title_table', 10);

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
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_category_id`, `title`, `slug`, `short_content`, `image`, `home_image`, `alt`, `url`, `description`, `seo_title`, `seo_description`, `seo_keyword`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Service title', 'service-title', '<h2>Lorem, ipsum dolor sit amet consectetur adipisicing.</h2>\r\n\r\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam aut deserunt odit, magnam labore, cum aspernatur et explicabo molestias necessitatibus eum impedit eveniet corrupti temporibus blanditiis in? Optio quae nihil molestiae esse deleniti sunt eum atque asperiores, repellat hic placeat ipsum iusto maiores, iste eveniet laborum, adipisci fugit quibusdam consequatur.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet.</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n</ul>', 'images/21635.jpg', 'images/21615.jpg', NULL, NULL, '<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.quam, corrupti repellat cupiditate inventore ut dolores dolor</p>', 'seo title', 'SEO DES', 'SEO KEY', NULL, NULL, '1', '2025-01-03 04:43:49', '2025-01-04 05:44:01'),
(2, '2', 'Title 2', 'title-2', '<h2>Lorem, ipsum dolor sit amet consectetur adipisicing.</h2>\r\n\r\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam aut deserunt odit, magnam labore, cum aspernatur et explicabo molestias necessitatibus eum impedit eveniet corrupti temporibus blanditiis in? Optio quae nihil molestiae esse deleniti sunt eum atque asperiores, repellat hic placeat ipsum iusto maiores, iste eveniet laborum, adipisci fugit quibusdam consequatur.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet.</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n</ul>\r\n\r\n<h2>Lorem, ipsum dolor sit amet consectetur adipisicing.</h2>\r\n\r\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam aut deserunt odit, magnam labore, cum aspernatur et explicabo molestias necessitatibus eum impedit eveniet corrupti temporibus blanditiis in? Optio quae nihil molestiae esse deleniti sunt eum atque asperiores, repellat hic placeat ipsum iusto maiores, iste eveniet laborum, adipisci fugit quibusdam consequatur.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet.</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut minima fugit nemo saepe corporis libero.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'images/The Testament of Sister New Devil.jpg', 'images/Flavors of Youth.jpg', NULL, NULL, '<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.</p>\r\n\r\n<p><img alt=\"icon\" src=\"http://127.0.0.1:8000/assets/images/help-icon.png\" /></p>\r\n\r\n<p>Lorem, ipsum dolor.</p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non dignissimos dicta possimus quam, corrupti repellat cupiditate inventore ut dolores dolor.quam, corrupti repellat cupiditate inventore ut dolores dolor</p>', 'Seo title 2', 'Seo Des 2', 'Seo Key 2', NULL, NULL, '1', '2025-01-03 05:04:55', '2025-01-04 05:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`id`, `name`, `image`, `slug`, `short_des`, `seo_title`, `seo_des`, `seo_key`, `created_at`, `updated_at`) VALUES
(1, 'Service 1', 'images/help-icon.png', 'service-1', 'Lorem, ipsum dolor sit amet consectetur adipisicing.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio', 'seo title', 'seo des', 'seo key', '2025-01-03 04:15:43', '2025-01-04 05:57:48'),
(2, 'Service 2', 'images/help-icon_1.png', 'service-2', 'Lorem, ipsum dolor sit amet consectetur adipisicing.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Atque possimus quasi soluta quae, voluptates obcaecati cupiditate suscipit quis, sed quas odit minus et, commodi totam eius beatae alias ducimus laudantium dignissimos minima. Eum ratione voluptates, veritatis ipsum iusto placeat accusantium tenetur, quaerat possimus aliquam repudiandae quas doloribus sit voluptate optio', 'SEO  title', 'Seo Des', 'Seo key', '2025-01-03 04:42:31', '2025-01-04 06:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_title_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_home` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_home` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_tool` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_tool` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_tool` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_services` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_services` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_services` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_signup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_signup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_signup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `seo_title_home`, `seo_des_home`, `seo_key_home`, `seo_title_about`, `seo_des_about`, `seo_key_about`, `seo_title_tool`, `seo_des_tool`, `seo_key_tool`, `seo_title_services`, `seo_des_services`, `seo_key_services`, `seo_title_category`, `seo_des_category`, `seo_key_category`, `seo_title_contact`, `seo_des_contact`, `seo_key_contact`, `seo_title_login`, `seo_des_login`, `seo_key_login`, `seo_title_signup`, `seo_des_signup`, `seo_key_signup`, `seo_title_policy`, `seo_des_policy`, `seo_key_policy`, `created_at`, `updated_at`) VALUES
(1, 'home title', 'home description', 'home keyword', 'about title', 'about description', 'about keyword', 'tool title', 'tool description', 'tool keyword', 'service title', 'service description', 'service keyword', 'category title', 'category description', 'category keyword', 'contact title', 'contact description', 'contact keyword', 'login title', 'login description', 'login keyword', 'sign up title', 'sign up description', 'sign up keyword', 'policy title', 'policy description', 'policy keyword', '2025-01-04 01:09:08', '2025-01-04 01:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `id` int(10) UNSIGNED NOT NULL,
  `tool_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`id`, `tool_id`, `title`, `slug`, `short_content`, `description`, `image`, `alt`, `url`, `seo_title`, `seo_description`, `seo_keyword`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Title 1', 'title-1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.</li>\r\n</ul>', '<h2>Benefits of SmallSEOTools&rsquo; Plagiarism Detector</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!</p>\r\n\r\n<h3>Benefits of SmallSEOTools&rsquo; Plagiarism Detector</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!</p>\r\n\r\n<p>Benefits of SmallSEOTools&rsquo; Plagiarism Detector</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis vero assumenda unde laudantium voluptate vitae voluptates, aspernatur velit numquam alias!</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum doloremque optio sed numquam voluptates quo pariatur obcaecati! Ex, labore natus.</li>\r\n</ul>', 'images/a-silent-voice.jpg', NULL, NULL, 'seo title', 'seo des', 'seo key', NULL, NULL, 1, '2025-01-03 23:42:00', '2025-01-03 23:59:52'),
(2, '2', 'Title', 'title', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit earum illum sint provident odit aliquid laudantium. Libero, inventore eaque veritatis dolores voluptatem velit eveniet quibusdam expedita minus autem recusandae laborum ducimus exercitationem eum, tempore esse debitis? Dicta esse culpa minima inventore aspernatur nam sequi voluptas nesciunt laborum fugit. Assumenda, harum.</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore dignissimos ab distinctio atque consequuntur ea? Laborum consectetur quaerat dolores harum.</li>\r\n</ul>', '<h2>Benefits of SmallSEOTools&rsquo; Plagiarism Detector</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!</p>\r\n\r\n<h3>Benefits of SmallSEOTools&rsquo; Plagiarism Detector</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!</p>\r\n\r\n<p>Benefits of SmallSEOTools&rsquo; Plagiarism Detector</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut exercitationem libero perspiciatis reiciendis veniam nihil maiores dolores nesciunt perferendis, sunt assumenda, quos modi accusamus deleniti obcaecati minus? Laborum expedita, pariatur molestias inventore officiis repudiandae ab iure adipisci consequatur voluptas quidem minus qui? Laboriosam eligendi reprehenderit distinctio in suscipit unde est!</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis vero assumenda unde laudantium voluptate vitae voluptates, aspernatur velit numquam alias!</li>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum doloremque optio sed numquam voluptates quo pariatur obcaecati! Ex, labore natus.</li>\r\n</ul>', 'images/Jujutsu Kaisen.jpg', 'image', NULL, 'Seo', 'seo des', 'seo key', NULL, NULL, 0, '2025-01-03 23:59:39', '2025-01-03 23:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `tool_category`
--

CREATE TABLE `tool_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tool_category`
--

INSERT INTO `tool_category` (`id`, `name`, `slug`, `seo_title`, `seo_des`, `seo_key`, `created_at`, `updated_at`) VALUES
(1, 'Tool 1', 'tool-1', 'Seo Title', 'Seo Des', 'Seo Key', '2025-01-03 06:08:06', '2025-01-03 06:08:06'),
(2, 'Tool 2', 'tool-2', 'Seo title 2', 'Seo Des 2', 'Seo key 2', '2025-01-03 06:08:37', '2025-01-03 06:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `fname`, `lname`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kaushik', 'Dey', '1234564659', 'kaushik0077dey@gmail.com', NULL, '$2y$12$KUCobIrt2ANoyfC5HWrE4uVxMmFHy9mg5C0Jpc.3.f4wF6xY0spG2', NULL, '2024-12-25 23:39:41', '2024-12-25 23:39:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_category`
--
ALTER TABLE `cat_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tool`
--
ALTER TABLE `tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tool_category`
--
ALTER TABLE `tool_category`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cat_category`
--
ALTER TABLE `cat_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tool`
--
ALTER TABLE `tool`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tool_category`
--
ALTER TABLE `tool_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
