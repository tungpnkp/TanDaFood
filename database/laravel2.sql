-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 01:50 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 31, 20, 'Khách hàng', 'fa-user-md', 'shop_customer', '2018-01-13 08:27:55', '2022-04-18 16:41:50'),
(9, 25, 17, 'Đơn hàng', 'fa-shopping-cart', 'shop_order', '2018-01-13 08:33:55', '2022-04-18 16:41:50'),
(10, 15, 13, 'Quản lý sản phảm', 'fa-file-photo-o', 'shop_product', '2018-01-13 08:44:02', '2022-04-18 16:41:50'),
(11, 15, 15, 'Nhãn hiệu', 'fa-bank', 'shop_brand', '2018-01-13 08:47:15', '2022-04-18 16:41:50'),
(13, 15, 11, 'Danh mục sản phẩm', 'fa-folder-open-o', 'shop_category', '2018-01-13 08:52:17', '2022-04-18 16:41:50'),
(14, 15, 12, 'Giá khuyến mãi', 'fa-paw', 'shop_special_price', '2018-02-06 11:07:21', '2022-04-18 16:41:50'),
(15, 0, 10, 'Danh mục và sản phẩm', 'fa-folder-open', NULL, '2018-02-08 23:04:43', '2022-04-18 16:41:50'),
(17, 0, 8, 'Quản lý nội dung CMS', 'fa-coffee', NULL, '2018-02-10 02:06:05', '2018-05-07 06:42:32'),
(18, 23, 28, 'Cấu hình thông tin', 'fa-cog', 'config_info', '2018-02-10 02:07:45', '2022-04-18 16:41:50'),
(21, 17, 9, 'Blog & Tin tức', 'fa-file-powerpoint-o', 'cms_news', '2018-02-10 02:13:01', '2022-04-18 16:41:50'),
(23, 0, 27, 'Cấu hình website', 'fa-cogs', NULL, '2018-02-11 08:01:24', '2022-04-18 16:41:50'),
(24, 0, 30, 'Banner & Hình ảnh', 'fa-picture-o', 'banner', '2018-03-13 13:10:22', '2022-04-18 16:41:50'),
(25, 0, 16, 'Quản lý đơn hàng', 'fa-cart-arrow-down', NULL, '2018-05-06 07:59:14', '2022-04-18 16:41:50'),
(26, 25, 18, 'Order status', 'fa-asterisk', 'shop_order_status', '2018-05-06 08:56:14', '2022-04-18 16:41:50'),
(30, 0, 21, 'Marketing', 'fa-star-half-empty', NULL, '2018-05-07 06:47:33', '2022-04-18 16:41:50'),
(31, 0, 19, 'Khách hàng, nhà cung cấp', 'fa-group', NULL, '2018-05-07 06:52:20', '2022-04-18 16:41:50'),
(41, 30, 22, 'Coupon & khuyến mãi', 'fa-rocket', 'shop_promotion', '2018-05-07 16:54:45', '2022-04-18 16:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-13 17:53:19', '2022-04-13 17:53:19'),
(2, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-13 17:53:27', '2022-04-13 17:53:27'),
(3, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-13 17:53:30', '2022-04-13 17:53:30'),
(4, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-13 17:53:35', '2022-04-13 17:53:35'),
(5, 1, 'admin/shop_option', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-13 17:53:41', '2022-04-13 17:53:41'),
(6, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-13 17:53:46', '2022-04-13 17:53:46'),
(7, 1, 'admin/shop_brand/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-13 17:53:50', '2022-04-13 17:53:50'),
(8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-14 14:32:22', '2022-04-14 14:32:22'),
(9, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:32:28', '2022-04-14 14:32:28'),
(10, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:32:59', '2022-04-14 14:32:59'),
(11, 1, 'admin/shop_option', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:33:09', '2022-04-14 14:33:09'),
(12, 1, 'admin/shop_option/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:33:13', '2022-04-14 14:33:13'),
(13, 1, 'admin/shop_option', 'POST', '127.0.0.1', '{"name":"C\\u00e2n n\\u1eb7ng","status":"on","sort":null,"type":"3","_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_option"}', '2022-04-14 14:33:30', '2022-04-14 14:33:30'),
(14, 1, 'admin/shop_option/create', 'GET', '127.0.0.1', '[]', '2022-04-14 14:33:31', '2022-04-14 14:33:31'),
(15, 1, 'admin/shop_option', 'POST', '127.0.0.1', '{"name":"C\\u00e2n n\\u1eb7ng","status":"on","sort":"NaN","type":"3","_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH"}', '2022-04-14 14:33:48', '2022-04-14 14:33:48'),
(16, 1, 'admin/shop_option', 'GET', '127.0.0.1', '[]', '2022-04-14 14:33:48', '2022-04-14 14:33:48'),
(17, 1, 'admin/shop_option/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:37:06', '2022-04-14 14:37:06'),
(18, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:37:41', '2022-04-14 14:37:41'),
(19, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:37:43', '2022-04-14 14:37:43'),
(20, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:40:22', '2022-04-14 14:40:22'),
(21, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:40:24', '2022-04-14 14:40:24'),
(22, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:42:53', '2022-04-14 14:42:53'),
(23, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:42:55', '2022-04-14 14:42:55'),
(24, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:43:04', '2022-04-14 14:43:04'),
(25, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:43:06', '2022-04-14 14:43:06'),
(26, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Rau","parent":"0","uniquekey":"rau-xanh","sort":null,"status":"on","keyword":["Rau xanh",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 14:43:36', '2022-04-14 14:43:36'),
(27, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '[]', '2022-04-14 14:43:36', '2022-04-14 14:43:36'),
(28, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Rau","parent":"0","uniquekey":"rau-xanh","sort":"NaN","status":"on","keyword":[null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH"}', '2022-04-14 14:43:43', '2022-04-14 14:43:43'),
(29, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 14:43:43', '2022-04-14 14:43:43'),
(30, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:43:45', '2022-04-14 14:43:45'),
(31, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Th\\u1ecbt l\\u1ee3n","parent":"0","uniquekey":"thit-lon","sort":"NaN","status":"on","keyword":["th\\u1ecbt l\\u1ee3n",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 14:44:48', '2022-04-14 14:44:48'),
(32, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 14:44:49', '2022-04-14 14:44:49'),
(33, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 14:44:51', '2022-04-14 14:44:51'),
(34, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Th\\u1ecbt g\\u00e0","parent":"0","uniquekey":"thit-ga","sort":"NaN","status":"on","keyword":["th\\u1ecbt g\\u00e0",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 14:49:22', '2022-04-14 14:49:22'),
(35, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 14:49:22', '2022-04-14 14:49:22'),
(36, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:09:36', '2022-04-14 15:09:36'),
(37, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"aaa","parent":"0","uniquekey":null,"sort":"NaN","status":"on","keyword":[null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 15:09:52', '2022-04-14 15:09:52'),
(38, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '[]', '2022-04-14 15:09:53', '2022-04-14 15:09:53'),
(39, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"aaa","parent":"0","uniquekey":"aa","sort":"NaN","status":"on","keyword":[null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH"}', '2022-04-14 15:09:58', '2022-04-14 15:09:58'),
(40, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:09:58', '2022-04-14 15:09:58'),
(41, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:23:33', '2022-04-14 15:23:33'),
(42, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Khoai lang","parent":"0","uniquekey":"khoai-lang","sort":"NaN","status":"on","keyword":["khoai lang",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 15:24:12', '2022-04-14 15:24:12'),
(43, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:24:12', '2022-04-14 15:24:12'),
(44, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:29:07', '2022-04-14 15:29:07'),
(45, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Khoai T\\u00e2y","parent":"0","uniquekey":"khoai-tay","sort":"NaN","status":"on","keyword":["khoai t\\u00e2y",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 15:29:35', '2022-04-14 15:29:35'),
(46, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:29:35', '2022-04-14 15:29:35'),
(47, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:31:40', '2022-04-14 15:31:40'),
(48, 1, 'admin/shop_category/25', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:31:44', '2022-04-14 15:31:44'),
(49, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:31:49', '2022-04-14 15:31:49'),
(50, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:31:51', '2022-04-14 15:31:51'),
(51, 1, 'admin/shop_category/25/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:31:53', '2022-04-14 15:31:53'),
(52, 1, 'admin/shop_category/25', 'PUT', '127.0.0.1', '{"key":"0","image":"_file_del_","_file_del_":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT"}', '2022-04-14 15:31:56', '2022-04-14 15:31:56'),
(53, 1, 'admin/shop_category/25', 'PUT', '127.0.0.1', '{"name":"Khoai T\\u00e2y","parent":"0","uniquekey":"khoai-tay","sort":"0","status":"on","keyword":["khoai t\\u00e2y",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 15:32:06', '2022-04-14 15:32:06'),
(54, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:32:06', '2022-04-14 15:32:06'),
(55, 1, 'admin/shop_category/22/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:32:40', '2022-04-14 15:32:40'),
(56, 1, 'admin/shop_category/22', 'PUT', '127.0.0.1', '{"key":"0","image":"_file_del_","_file_del_":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT"}', '2022-04-14 15:32:42', '2022-04-14 15:32:42'),
(57, 1, 'admin/shop_category/22', 'PUT', '127.0.0.1', '{"name":"Th\\u1ecbt g\\u00e0","parent":"0","uniquekey":"thit-ga","sort":"0","status":"on","keyword":["th\\u1ecbt g\\u00e0",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 15:32:49', '2022-04-14 15:32:49'),
(58, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:32:49', '2022-04-14 15:32:49'),
(59, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:37:33', '2022-04-14 15:37:33'),
(60, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:37:36', '2022-04-14 15:37:36'),
(61, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Th\\u1ecbt g\\u00e0","parent":"0","uniquekey":"thit-ga","sort":"NaN","status":"on","keyword":["th\\u1ecbt g\\u00e0",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 15:37:57', '2022-04-14 15:37:57'),
(62, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:37:58', '2022-04-14 15:37:58'),
(63, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:39:32', '2022-04-14 15:39:32'),
(64, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:39:42', '2022-04-14 15:39:42'),
(65, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:39:44', '2022-04-14 15:39:44'),
(66, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Rau xanh","parent":"0","uniquekey":"rau-xanh","sort":"NaN","status":"on","keyword":["rau xanh",null],"description":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-14 15:40:12', '2022-04-14 15:40:12'),
(67, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:40:13', '2022-04-14 15:40:13'),
(68, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:46:17', '2022-04-14 15:46:17'),
(69, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:46:28', '2022-04-14 15:46:28'),
(70, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:47:42', '2022-04-14 15:47:42'),
(71, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:48:00', '2022-04-14 15:48:00'),
(72, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:54:49', '2022-04-14 15:54:49'),
(73, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:55:01', '2022-04-14 15:55:01'),
(74, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:55:31', '2022-04-14 15:55:31'),
(75, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-14 15:56:20', '2022-04-14 15:56:20'),
(76, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:56:23', '2022-04-14 15:56:23'),
(77, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 15:56:26', '2022-04-14 15:56:26'),
(78, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"27","category_other":[null],"keyword":["B\\u1eafp C\\u1ea3i","Rau xanh",null],"description":"B\\u1eafp c\\u1ea3i si\\u00eau ngon","content":"<p><strong>B\\u1eafp c\\u1ea3i si&ecirc;u s&aacute;ch abcs xyzt&nbsp;<\\/strong><\\/p>","price":"20000","cost":"20000","stock":"100","sku":"BC001","brand_id":"0","status":"on","sort":"1","type":"0","date_available":null,"images":{"new_1":{"id":null,"_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 16:01:43', '2022-04-14 16:01:43'),
(79, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-14 16:03:36', '2022-04-14 16:03:36'),
(80, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-14 16:03:36', '2022-04-14 16:03:36'),
(81, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:03:41', '2022-04-14 16:03:41'),
(82, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:03:52', '2022-04-14 16:03:52'),
(83, 1, 'admin/shop_brand/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:03:55', '2022-04-14 16:03:55'),
(84, 1, 'admin/shop_brand', 'POST', '127.0.0.1', '{"name":"T\\u1ea3n \\u0110\\u00e0 Food","status":"on","sort":"1","_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_brand"}', '2022-04-14 16:04:19', '2022-04-14 16:04:19'),
(85, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '[]', '2022-04-14 16:04:19', '2022-04-14 16:04:19'),
(86, 1, 'admin/shop_brand/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:04:21', '2022-04-14 16:04:21'),
(87, 1, 'admin/shop_brand', 'POST', '127.0.0.1', '{"name":"\\u0110ang c\\u1eadp nh\\u1eadt","status":"on","sort":"NaN","_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_brand"}', '2022-04-14 16:04:36', '2022-04-14 16:04:36'),
(88, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '[]', '2022-04-14 16:04:36', '2022-04-14 16:04:36'),
(89, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:08:15', '2022-04-14 16:08:15'),
(90, 1, 'admin/shop_product/50/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:08:18', '2022-04-14 16:08:18'),
(91, 1, 'admin/shop_product/50', 'PUT', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"27","category_other":[null],"keyword":["B\\u1eafp C\\u1ea3i","Rau xanh",null],"description":"B\\u1eafp c\\u1ea3i si\\u00eau ngon","content":"<p><strong>B\\u1eafp c\\u1ea3i si&ecirc;u s&aacute;ch abcs xyzt&nbsp;<\\/strong><\\/p>","price":"20000","cost":"20000","stock":"100","sku":"BC001","brand_id":"7","status":"on","sort":"1","type":"0","date_available":null,"images":{"113":{"id":"113","_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 16:08:27', '2022-04-14 16:08:27'),
(92, 1, 'admin/shop_product/50', 'GET', '127.0.0.1', '[]', '2022-04-14 16:08:44', '2022-04-14 16:08:44'),
(93, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:08:49', '2022-04-14 16:08:49'),
(94, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:08:57', '2022-04-14 16:08:57'),
(95, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"Th\\u1ecbt ch\\u00e2n gi\\u00f2 1kg","category_id":"21","category_other":[null],"keyword":["Ch\\u00e2n gi\\u00f2","Th\\u1ecbt l\\u1ee3n",null],"description":null,"content":"<ul>\\r\\n\\t<li>s\\u1ed1 m\\u1ed9t v\\u1ec1 bi\\u1ec3u t\\u01b0\\u1ee3ng s\\u1ed1 2 s\\u1ed1 3 s\\u1ed1 4&nbsp;<\\/li>\\r\\n\\t<li>adfbvaslkfhda;sldf<\\/li>\\r\\n\\t<li>fals;djfa;lsdkjf;als<\\/li>\\r\\n\\t<li>fas;ldjkfa;sdlkfjas;ldfas;d<\\/li>\\r\\n<\\/ul>","price":"100000","cost":"100000","stock":"50","sku":"CG001","brand_id":"7","status":"on","sort":"NaN","type":"2","date_available":null,"types":{"new_1":{"opt_name":null,"opt_sku":null,"opt_price":null,"id":null,"_remove_":"1"}},"images":{"new_2":{"id":null,"_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product\\/"}', '2022-04-14 16:13:54', '2022-04-14 16:13:54'),
(96, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:14:11', '2022-04-14 16:14:11'),
(97, 1, 'admin/shop_product/51/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:14:29', '2022-04-14 16:14:29'),
(98, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:18:25', '2022-04-14 16:18:25'),
(99, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:20:17', '2022-04-14 16:20:17'),
(100, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:20:19', '2022-04-14 16:20:19'),
(101, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:20:22', '2022-04-14 16:20:22'),
(102, 1, 'admin/shop_product/51/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:20:24', '2022-04-14 16:20:24'),
(103, 1, 'admin/shop_product/51', 'PUT', '127.0.0.1', '{"name":"Th\\u1ecbt ch\\u00e2n gi\\u00f2 1kg","category_id":"21","category_other":[null],"keyword":["Ch\\u00e2n gi\\u00f2","Th\\u1ecbt l\\u1ee3n",null],"description":null,"content":"<ul>\\r\\n\\t<li>s\\u1ed1 m\\u1ed9t v\\u1ec1 bi\\u1ec3u t\\u01b0\\u1ee3ng s\\u1ed1 2 s\\u1ed1 3 s\\u1ed1 4&nbsp;<\\/li>\\r\\n\\t<li>adfbvaslkfhda;sldf<\\/li>\\r\\n\\t<li>fals;djfa;lsdkjf;als<\\/li>\\r\\n\\t<li>fas;ldjkfa;sdlkfjas;ldfas;d<\\/li>\\r\\n\\t<li>4444444<\\/li>\\r\\n<\\/ul>","price":"100000","cost":"100000","stock":"50","sku":"CG001","brand_id":"7","status":"on","sort":"0","type":"2","date_available":null,"images":{"114":{"id":"114","_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 16:20:31', '2022-04-14 16:20:31'),
(104, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:20:32', '2022-04-14 16:20:32'),
(105, 1, 'admin/shop_product/51/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:20:35', '2022-04-14 16:20:35'),
(106, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:20:38', '2022-04-14 16:20:38'),
(107, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:20:39', '2022-04-14 16:20:39'),
(108, 1, 'admin/shop_product/51/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:20:55', '2022-04-14 16:20:55'),
(109, 1, 'admin/shop_product/51', 'PUT', '127.0.0.1', '{"name":"Th\\u1ecbt ch\\u00e2n gi\\u00f2 1kg","category_id":"21","category_other":[null],"keyword":["Ch\\u00e2n gi\\u00f2","Th\\u1ecbt l\\u1ee3n",null],"description":null,"content":"<ul>\\r\\n\\t<li>s\\u1ed1 m\\u1ed9t v\\u1ec1 bi\\u1ec3u t\\u01b0\\u1ee3ng s\\u1ed1 2 s\\u1ed1 3 s\\u1ed1 4&nbsp;<\\/li>\\r\\n\\t<li>adfbvaslkfhda;sldf<\\/li>\\r\\n\\t<li>fals;djfa;lsdkjf;als<\\/li>\\r\\n\\t<li>fas;ldjkfa;sdlkfjas;ldfas;d<\\/li>\\r\\n\\t<li>4444444<\\/li>\\r\\n<\\/ul>","price":"100000","cost":"100000","stock":"50","sku":"CG001","brand_id":"7","status":"on","sort":"0","type":"2","date_available":null,"images":{"114":{"id":"114","_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 16:20:58', '2022-04-14 16:20:58'),
(110, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:20:58', '2022-04-14 16:20:58'),
(111, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:21:04', '2022-04-14 16:21:04'),
(112, 1, 'admin/shop_product/51/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:21:06', '2022-04-14 16:21:06'),
(113, 1, 'admin/shop_product/51', 'PUT', '127.0.0.1', '{"name":"Th\\u1ecbt ch\\u00e2n gi\\u00f2 1kg","category_id":"21","category_other":[null],"keyword":["Ch\\u00e2n gi\\u00f2","Th\\u1ecbt l\\u1ee3n",null],"description":null,"content":"<ul>\\r\\n\\t<li>s\\u1ed1 m\\u1ed9t v\\u1ec1 bi\\u1ec3u t\\u01b0\\u1ee3ng s\\u1ed1 2 s\\u1ed1 3 s\\u1ed1 4&nbsp;<\\/li>\\r\\n\\t<li>adfbvaslkfhda;sldf<\\/li>\\r\\n\\t<li>fals;djfa;lsdkjf;als<\\/li>\\r\\n\\t<li>fas;ldjkfa;sdlkfjas;ldfas;d<\\/li>\\r\\n\\t<li>4444444a<\\/li>\\r\\n<\\/ul>","price":"100000","cost":"100000","stock":"50","sku":"CG001","brand_id":"7","status":"on","sort":"0","type":"2","date_available":null,"images":{"114":{"id":"114","_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 16:21:10', '2022-04-14 16:21:10'),
(114, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:21:10', '2022-04-14 16:21:10'),
(115, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:21:13', '2022-04-14 16:21:13'),
(116, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:21:14', '2022-04-14 16:21:14'),
(117, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"B\\u1ecfng ng\\u00f4","category_id":"27","category_other":[null],"keyword":["b\\u1ecfng ng\\u00f4",null],"description":null,"content":"<p>B\\u1ed5ng ng&ocirc; si&ecirc;u ngonnnnnnnnn<\\/p>","price":"30000","cost":"30000","stock":"50","sku":"BN001","brand_id":"7","status":"on","sort":"NaN","type":"1","date_available":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 16:22:21', '2022-04-14 16:22:21'),
(118, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:22:21', '2022-04-14 16:22:21'),
(119, 1, 'admin/shop_product/51/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:22:49', '2022-04-14 16:22:49'),
(120, 1, 'admin/shop_product/51', 'PUT', '127.0.0.1', '{"name":"Th\\u1ecbt ch\\u00e2n gi\\u00f2 1kg","category_id":"21","category_other":[null],"keyword":["Ch\\u00e2n gi\\u00f2","Th\\u1ecbt l\\u1ee3n",null],"description":null,"content":"<ul>\\r\\n\\t<li>s\\u1ed1 m\\u1ed9t v\\u1ec1 bi\\u1ec3u t\\u01b0\\u1ee3ng s\\u1ed1 2 s\\u1ed1 3 s\\u1ed1 4&nbsp;<\\/li>\\r\\n\\t<li>adfbvaslkfhda;sldf<\\/li>\\r\\n\\t<li>fals;djfa;lsdkjf;als<\\/li>\\r\\n\\t<li>fas;ldjkfa;sdlkfjas;ldfas;d<\\/li>\\r\\n\\t<li>4444444a<\\/li>\\r\\n<\\/ul>","price":"100000","cost":"100000","stock":"50","sku":"CG001","brand_id":"7","status":"on","sort":"0","type":"2","date_available":null,"images":{"114":{"id":"114","_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 16:22:54', '2022-04-14 16:22:54'),
(121, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:22:55', '2022-04-14 16:22:55'),
(122, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:26:42', '2022-04-14 16:26:42'),
(123, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:26:57', '2022-04-14 16:26:57'),
(124, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:27:10', '2022-04-14 16:27:10'),
(125, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:27:59', '2022-04-14 16:27:59'),
(126, 1, 'admin/shop_product/51/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:28:08', '2022-04-14 16:28:08'),
(127, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:28:48', '2022-04-14 16:28:48'),
(128, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:31:06', '2022-04-14 16:31:06'),
(129, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:31:34', '2022-04-14 16:31:34'),
(130, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:33:57', '2022-04-14 16:33:57'),
(131, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:34:05', '2022-04-14 16:34:05'),
(132, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:34:28', '2022-04-14 16:34:28'),
(133, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:34:38', '2022-04-14 16:34:38'),
(134, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:35:01', '2022-04-14 16:35:01'),
(135, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:35:23', '2022-04-14 16:35:23'),
(136, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:36:02', '2022-04-14 16:36:02'),
(137, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:36:51', '2022-04-14 16:36:51'),
(138, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:37:00', '2022-04-14 16:37:00'),
(139, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:37:21', '2022-04-14 16:37:21'),
(140, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:37:31', '2022-04-14 16:37:31'),
(141, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:37:37', '2022-04-14 16:37:37'),
(142, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:37:41', '2022-04-14 16:37:41'),
(143, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:37:51', '2022-04-14 16:37:51'),
(144, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:38:10', '2022-04-14 16:38:10'),
(145, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:38:27', '2022-04-14 16:38:27'),
(146, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:39:46', '2022-04-14 16:39:46'),
(147, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:40:04', '2022-04-14 16:40:04'),
(148, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:40:42', '2022-04-14 16:40:42'),
(149, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:41:12', '2022-04-14 16:41:12'),
(150, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:41:31', '2022-04-14 16:41:31'),
(151, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:43:48', '2022-04-14 16:43:48'),
(152, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:44:03', '2022-04-14 16:44:03'),
(153, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:44:18', '2022-04-14 16:44:18'),
(154, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:44:44', '2022-04-14 16:44:44'),
(155, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:44:51', '2022-04-14 16:44:51'),
(156, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:44:56', '2022-04-14 16:44:56'),
(157, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:45:27', '2022-04-14 16:45:27'),
(158, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 16:45:49', '2022-04-14 16:45:49'),
(159, 1, 'admin/shop_product/52/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 16:45:51', '2022-04-14 16:45:51'),
(160, 1, 'admin/shop_product/52/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 16:58:38', '2022-04-14 16:58:38'),
(161, 1, 'admin/shop_product/52/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 17:02:16', '2022-04-14 17:02:16'),
(162, 1, 'admin/shop_product/52/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 17:08:10', '2022-04-14 17:08:10'),
(163, 1, 'admin/shop_product/52/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 17:08:49', '2022-04-14 17:08:49'),
(164, 1, 'admin/shop_product/52/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 17:08:59', '2022-04-14 17:08:59'),
(165, 1, 'admin/shop_product/52/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 17:09:36', '2022-04-14 17:09:36'),
(166, 1, 'admin/shop_product/52/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 17:11:02', '2022-04-14 17:11:02'),
(167, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:11:10', '2022-04-14 17:11:10'),
(168, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:11:23', '2022-04-14 17:11:23'),
(169, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:11:25', '2022-04-14 17:11:25'),
(170, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:11:28', '2022-04-14 17:11:28'),
(171, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"D\\u00e2u t\\u00e2y","category_id":"27","category_other":[null],"keyword":[null],"description":null,"content":"<p>D&acirc;u t&acirc;y 1 -2- 3<\\/p>\\r\\n\\r\\n<p><img alt=\\"{{ $product-&gt;name }}\\" class=\\"first-img\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/product\\/33bf045b8736cdefb08235adca9cc015.png\\" \\/><\\/p>","price":"20000","cost":"2","stock":"50","sku":"DT001","brand_id":"7","status":"on","sort":null,"type":"1","date_available":null,"images":{"new_1":{"id":null,"_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 17:15:22', '2022-04-14 17:15:22'),
(172, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '[]', '2022-04-14 17:15:23', '2022-04-14 17:15:23'),
(173, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"D\\u00e2u t\\u00e2y","category_id":"27","category_other":[null],"keyword":[null],"description":null,"content":"<p>D&acirc;u t&acirc;y 1 -2- 3<\\/p>","price":"20000","cost":"2","stock":"50","sku":"DT001","brand_id":"7","status":"on","sort":null,"type":"1","date_available":null,"images":{"new___LA_KEY__":{"id":null,"_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH"}', '2022-04-14 17:15:34', '2022-04-14 17:15:34'),
(174, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '[]', '2022-04-14 17:15:34', '2022-04-14 17:15:34'),
(175, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"D\\u00e2u t\\u00e2y","category_id":"27","category_other":[null],"keyword":[null],"description":null,"content":"<p>D&acirc;u t&acirc;y 1 -2- 3<\\/p>","price":"20000","cost":"2","stock":"50","sku":"DT001","brand_id":"7","status":"on","sort":"NaN","type":"1","date_available":null,"images":{"new___LA_KEY__":{"id":null,"_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH"}', '2022-04-14 17:15:42', '2022-04-14 17:15:42'),
(176, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 17:15:42', '2022-04-14 17:15:42'),
(177, 1, 'admin/shop_product/53/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:15:48', '2022-04-14 17:15:48'),
(178, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:15:57', '2022-04-14 17:15:57'),
(179, 1, 'admin/shop_product/53/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:16:03', '2022-04-14 17:16:03'),
(180, 1, 'admin/shop_product/53', 'PUT', '127.0.0.1', '{"name":"D\\u00e2u t\\u00e2y","category_id":"27","category_other":[null],"keyword":[null],"description":null,"content":"<p>D&acirc;u t&acirc;y 1 -2- 3<\\/p>","price":"20000","cost":"2","stock":"50","sku":"DT001","brand_id":"7","status":"on","sort":"0","type":"1","date_available":null,"images":{"111":{"id":"111","_remove_":"1"},"115":{"id":"115","_remove_":"0"}},"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-14 17:16:17', '2022-04-14 17:16:17'),
(181, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-14 17:16:17', '2022-04-14 17:16:17'),
(182, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:25:36', '2022-04-14 17:25:36'),
(183, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:26:14', '2022-04-14 17:26:14'),
(184, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:26:17', '2022-04-14 17:26:17'),
(185, 1, 'admin/shop_product/53/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:26:23', '2022-04-14 17:26:23'),
(186, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:26:28', '2022-04-14 17:26:28'),
(187, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:26:35', '2022-04-14 17:26:35'),
(188, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:26:37', '2022-04-14 17:26:37'),
(189, 1, 'admin/banner/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:26:44', '2022-04-14 17:26:44'),
(190, 1, 'admin/banner', 'POST', '127.0.0.1', '{"html":null,"url":null,"type":"0","status":"off","sort":null,"_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/banner"}', '2022-04-14 17:28:10', '2022-04-14 17:28:10'),
(191, 1, 'admin/banner/create', 'GET', '127.0.0.1', '[]', '2022-04-14 17:28:10', '2022-04-14 17:28:10'),
(192, 1, 'admin/banner', 'POST', '127.0.0.1', '{"html":null,"url":null,"type":"0","status":"off","sort":"1","_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH"}', '2022-04-14 17:28:15', '2022-04-14 17:28:15'),
(193, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-14 17:28:15', '2022-04-14 17:28:15'),
(194, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-14 17:28:21', '2022-04-14 17:28:21'),
(195, 1, 'admin/banner/18/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:28:25', '2022-04-14 17:28:25'),
(196, 1, 'admin/banner/18', 'PUT', '127.0.0.1', '{"html":null,"url":null,"type":"0","status":"on","sort":"1","_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/banner"}', '2022-04-14 17:28:35', '2022-04-14 17:28:35'),
(197, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-14 17:28:35', '2022-04-14 17:28:35'),
(198, 1, 'admin/banner/17', 'PUT', '127.0.0.1', '{"status":"0","_token":"GM1LJP7FhzzHqkkNBEOKsC5AJfGFPlnE3fhTWeeH","_method":"PUT","_edit_inline":"true"}', '2022-04-14 17:28:38', '2022-04-14 17:28:38'),
(199, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-14 17:56:23', '2022-04-14 17:56:23'),
(200, 1, 'admin/cms_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:56:36', '2022-04-14 17:56:36'),
(201, 1, 'admin/cms_content', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:56:40', '2022-04-14 17:56:40'),
(202, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:56:42', '2022-04-14 17:56:42'),
(203, 1, 'admin/cms_news/7/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:56:45', '2022-04-14 17:56:45'),
(204, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:57:43', '2022-04-14 17:57:43'),
(205, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:57:44', '2022-04-14 17:57:44'),
(206, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:58:09', '2022-04-14 17:58:09'),
(207, 1, 'admin/cms_news/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-14 17:58:12', '2022-04-14 17:58:12'),
(208, 1, 'admin/cms_news/5/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 18:01:58', '2022-04-14 18:01:58'),
(209, 1, 'admin/cms_news/5/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 18:02:05', '2022-04-14 18:02:05'),
(210, 1, 'admin/ckfinder', 'GET', '127.0.0.1', '[]', '2022-04-14 18:03:39', '2022-04-14 18:03:39'),
(211, 1, 'admin/cms_news/5/edit', 'GET', '127.0.0.1', '[]', '2022-04-14 18:03:45', '2022-04-14 18:03:45'),
(212, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-16 01:54:19', '2022-04-16 01:54:19'),
(213, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 01:54:53', '2022-04-16 01:54:53'),
(214, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 01:54:59', '2022-04-16 01:54:59'),
(215, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:01:42', '2022-04-16 02:01:42'),
(216, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:01:51', '2022-04-16 02:01:51'),
(217, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:02:02', '2022-04-16 02:02:02'),
(218, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:03:50', '2022-04-16 02:03:50'),
(219, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:05:38', '2022-04-16 02:05:38'),
(220, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:06:12', '2022-04-16 02:06:12'),
(221, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:07:50', '2022-04-16 02:07:50'),
(222, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:08:01', '2022-04-16 02:08:01'),
(223, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:12:11', '2022-04-16 02:12:11'),
(224, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:13:03', '2022-04-16 02:13:03'),
(225, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:18:16', '2022-04-16 02:18:16'),
(226, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:19:21', '2022-04-16 02:19:21'),
(227, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:20:13', '2022-04-16 02:20:13'),
(228, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:20:22', '2022-04-16 02:20:22'),
(229, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:25:24', '2022-04-16 02:25:24'),
(230, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:25:33', '2022-04-16 02:25:33'),
(231, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:37:39', '2022-04-16 02:37:39'),
(232, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:37:49', '2022-04-16 02:37:49'),
(233, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:38:23', '2022-04-16 02:38:23'),
(234, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:38:30', '2022-04-16 02:38:30'),
(235, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:45:57', '2022-04-16 02:45:57'),
(236, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:46:03', '2022-04-16 02:46:03'),
(237, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:47:13', '2022-04-16 02:47:13'),
(238, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:47:23', '2022-04-16 02:47:23'),
(239, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-16 02:47:38', '2022-04-16 02:47:38'),
(240, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"ZX20P6yjDxu1bocTjqgao1mlSb9hcXYaigD83r80","type":"Images","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-16 02:48:00', '2022-04-16 02:48:00'),
(241, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"Th\\u1ef1c ph\\u1ea9m s\\u1ea1ch","content":"<p style=\\"text-align: center;\\"><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/2dcc78be78e50dfd482e6dca2efc2027d9bb483fad2fb13f9a43e4ee61320089.png\\" style=\\"width: 469px; height: 250px;\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\"text-align: center;\\">T\\u1ea3n \\u0111&agrave; food s\\u1ea1ch t\\u1eeb n&ocirc;ng tr\\u1ea1i \\u0111\\u1ebfn b&agrave;n \\u0103n<\\/p>","status":"on","sort":"1","keyword":["T\\u1ea3n d\\u00e0",null],"description":"B\\u00e0i vi\\u1ebft gi\\u1edbi thi\\u1ec7u v\\u1ec1 t\\u1ea3n \\u0111\\u00e0 food","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai"}', '2022-04-16 02:49:52', '2022-04-16 02:49:52'),
(242, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-16 02:49:53', '2022-04-16 02:49:53'),
(243, 1, 'admin/cms_news/7', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 02:49:58', '2022-04-16 02:49:58'),
(244, 1, 'admin/cms_news/6', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 02:49:59', '2022-04-16 02:49:59'),
(245, 1, 'admin/cms_news/5', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 02:50:01', '2022-04-16 02:50:01'),
(246, 1, 'admin/cms_news/4', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 02:50:02', '2022-04-16 02:50:02'),
(247, 1, 'admin/cms_news/3', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 02:50:03', '2022-04-16 02:50:03'),
(248, 1, 'admin/cms_news/2', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 02:50:04', '2022-04-16 02:50:04'),
(249, 1, 'admin/cms_news/1', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 02:50:04', '2022-04-16 02:50:04'),
(250, 1, 'admin/cms_news/7', 'PUT', '127.0.0.1', '{"status":"1","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 02:50:23', '2022-04-16 02:50:23'),
(251, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-16 02:55:22', '2022-04-16 02:55:22'),
(252, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 02:55:23', '2022-04-16 02:55:23'),
(253, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-16 02:56:22', '2022-04-16 02:56:22'),
(254, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 03:07:07', '2022-04-16 03:07:07'),
(255, 1, 'admin/banner/18', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 03:07:09', '2022-04-16 03:07:09'),
(256, 1, 'admin/banner/17', 'PUT', '127.0.0.1', '{"status":"1","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 03:07:09', '2022-04-16 03:07:09'),
(257, 1, 'admin/banner/18', 'PUT', '127.0.0.1', '{"status":"1","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 03:07:49', '2022-04-16 03:07:49'),
(258, 1, 'admin/banner/17', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 03:07:50', '2022-04-16 03:07:50'),
(259, 1, 'admin/banner/18', 'PUT', '127.0.0.1', '{"status":"0","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 03:09:55', '2022-04-16 03:09:55'),
(260, 1, 'admin/banner/18', 'PUT', '127.0.0.1', '{"status":"1","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_method":"PUT","_edit_inline":"true"}', '2022-04-16 03:15:46', '2022-04-16 03:15:46'),
(261, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-16 03:16:06', '2022-04-16 03:16:06'),
(262, 1, 'admin/banner/8', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 03:16:15', '2022-04-16 03:16:15'),
(263, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 03:16:18', '2022-04-16 03:16:18'),
(264, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-16 03:16:20', '2022-04-16 03:16:20'),
(265, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-16 03:21:02', '2022-04-16 03:21:02'),
(266, 1, 'admin/banner/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 03:21:05', '2022-04-16 03:21:05'),
(267, 1, 'admin/banner', 'POST', '127.0.0.1', '{"html":null,"url":null,"type":"1","status":"on","sort":"2","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/banner"}', '2022-04-16 03:21:25', '2022-04-16 03:21:25'),
(268, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-16 03:21:25', '2022-04-16 03:21:25'),
(269, 1, 'admin/banner/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 03:21:51', '2022-04-16 03:21:51'),
(270, 1, 'admin/banner', 'POST', '127.0.0.1', '{"html":null,"url":null,"type":"2","status":"on","sort":"3","_token":"uiGaGZJveUkWtzmeYEYhuo3JN9MEsqcsGXRR88Ai","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/banner"}', '2022-04-16 03:22:11', '2022-04-16 03:22:11'),
(271, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-16 03:22:11', '2022-04-16 03:22:11'),
(272, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 03:41:53', '2022-04-16 03:41:53'),
(273, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 07:36:28', '2022-04-16 07:36:28'),
(274, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 07:36:31', '2022-04-16 07:36:31'),
(275, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-16 07:36:47', '2022-04-16 07:36:47'),
(276, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"t6rAH4YIgWzAh1Zdr1zDzmakeaDHZFWXYQoMVtZH","_editable":"1","_method":"PUT"}', '2022-04-16 07:37:00', '2022-04-16 07:37:00'),
(277, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-16 07:37:02', '2022-04-16 07:37:02'),
(278, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-16 07:37:07', '2022-04-16 07:37:07'),
(279, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-16 14:42:35', '2022-04-16 14:42:35'),
(280, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:42:45', '2022-04-16 14:42:45'),
(281, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:44:51', '2022-04-16 14:44:51'),
(282, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-16 14:45:02', '2022-04-16 14:45:02'),
(283, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:45:05', '2022-04-16 14:45:05'),
(284, 1, 'admin/shop_promotion', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:45:07', '2022-04-16 14:45:07'),
(285, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"action":"paypal","_pjax":"#pjax-container"}', '2022-04-16 14:45:10', '2022-04-16 14:45:10'),
(286, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:45:12', '2022-04-16 14:45:12'),
(287, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"action":"paypal","_pjax":"#pjax-container"}', '2022-04-16 14:45:14', '2022-04-16 14:45:14'),
(288, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:45:20', '2022-04-16 14:45:20'),
(289, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:45:23', '2022-04-16 14:45:23'),
(290, 1, 'admin/config_mode', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:45:33', '2022-04-16 14:45:33'),
(291, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:45:39', '2022-04-16 14:45:39'),
(292, 1, 'admin/shop_shipping/1', 'PUT', '127.0.0.1', '{"status":"0","_token":"xCKtG6CqN8q9Bd8M6x2bogInG1AXeJCdSMQciybc","_method":"PUT","_edit_inline":"true"}', '2022-04-16 14:45:41', '2022-04-16 14:45:41'),
(293, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:45:46', '2022-04-16 14:45:46'),
(294, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:08', '2022-04-16 14:46:08'),
(295, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:10', '2022-04-16 14:46:10'),
(296, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:11', '2022-04-16 14:46:11'),
(297, 1, 'admin/shop_payment_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:20', '2022-04-16 14:46:20'),
(298, 1, 'admin/shop_shipping_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:22', '2022-04-16 14:46:22'),
(299, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:23', '2022-04-16 14:46:23');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(300, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:25', '2022-04-16 14:46:25'),
(301, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:26', '2022-04-16 14:46:26'),
(302, 1, 'admin/shop_payment_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:28', '2022-04-16 14:46:28'),
(303, 1, 'admin/shop_shipping_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-16 14:46:29', '2022-04-16 14:46:29'),
(304, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"action":"paypal","_pjax":"#pjax-container"}', '2022-04-16 14:46:33', '2022-04-16 14:46:33'),
(305, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-17 13:22:35', '2022-04-17 13:22:35'),
(306, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 13:22:42', '2022-04-17 13:22:42'),
(307, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:30:44', '2022-04-17 13:30:44'),
(308, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:30:49', '2022-04-17 13:30:49'),
(309, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:30:54', '2022-04-17 13:30:54'),
(310, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"3","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:31:01', '2022-04-17 13:31:01'),
(311, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"3","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:31:20', '2022-04-17 13:31:20'),
(312, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-17 13:34:29', '2022-04-17 13:34:29'),
(313, 1, 'admin/shop_category/24', 'PUT', '127.0.0.1', '{"status":"0","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_method":"PUT","_edit_inline":"true"}', '2022-04-17 13:34:38', '2022-04-17 13:34:38'),
(314, 1, 'admin/shop_category/24', 'PUT', '127.0.0.1', '{"status":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_method":"PUT","_edit_inline":"true"}', '2022-04-17 13:34:47', '2022-04-17 13:34:47'),
(315, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:39:41', '2022-04-17 13:39:41'),
(316, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:39:47', '2022-04-17 13:39:47'),
(317, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"4","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:39:53', '2022-04-17 13:39:53'),
(318, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-17 13:39:54', '2022-04-17 13:39:54'),
(319, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:40:25', '2022-04-17 13:40:25'),
(320, 1, 'admin/shop_category/21', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 13:40:46', '2022-04-17 13:40:46'),
(321, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 13:40:49', '2022-04-17 13:40:49'),
(322, 1, 'admin/shop_category/21/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 13:40:52', '2022-04-17 13:40:52'),
(323, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"3","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:41:30', '2022-04-17 13:41:30'),
(324, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-17 13:41:31', '2022-04-17 13:41:31'),
(325, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:43:17', '2022-04-17 13:43:17'),
(326, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:43:21', '2022-04-17 13:43:21'),
(327, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-17 13:43:21', '2022-04-17 13:43:21'),
(328, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:43:35', '2022-04-17 13:43:35'),
(329, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:43:39', '2022-04-17 13:43:39'),
(330, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-17 13:43:40', '2022-04-17 13:43:40'),
(331, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:43:44', '2022-04-17 13:43:44'),
(332, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:43:49', '2022-04-17 13:43:49'),
(333, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:43:52', '2022-04-17 13:43:52'),
(334, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:43:54', '2022-04-17 13:43:54'),
(335, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:44:05', '2022-04-17 13:44:05'),
(336, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"3","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:44:21', '2022-04-17 13:44:21'),
(337, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:45:18', '2022-04-17 13:45:18'),
(338, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"4","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:45:22', '2022-04-17 13:45:22'),
(339, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:45:27', '2022-04-17 13:45:27'),
(340, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 13:45:31', '2022-04-17 13:45:31'),
(341, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"0LvBShRTWhnZ8qkcfpF1wxXc3EcOjHV9OfgtjfXz","_editable":"1","_method":"PUT"}', '2022-04-17 13:45:35', '2022-04-17 13:45:35'),
(342, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:52:51', '2022-04-17 15:52:51'),
(343, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 15:52:58', '2022-04-17 15:52:58'),
(344, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-17 15:52:58', '2022-04-17 15:52:58'),
(345, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:53:28', '2022-04-17 15:53:28'),
(346, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 15:53:34', '2022-04-17 15:53:34'),
(347, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-17 15:53:34', '2022-04-17 15:53:34'),
(348, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:53:47', '2022-04-17 15:53:47'),
(349, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:54:10', '2022-04-17 15:54:10'),
(350, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:54:23', '2022-04-17 15:54:23'),
(351, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 15:54:26', '2022-04-17 15:54:26'),
(352, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:54:31', '2022-04-17 15:54:31'),
(353, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:54:36', '2022-04-17 15:54:36'),
(354, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 15:54:41', '2022-04-17 15:54:41'),
(355, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-17 15:54:41', '2022-04-17 15:54:41'),
(356, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:54:42', '2022-04-17 15:54:42'),
(357, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:55:23', '2022-04-17 15:55:23'),
(358, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 15:55:27', '2022-04-17 15:55:27'),
(359, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:55:30', '2022-04-17 15:55:30'),
(360, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:56:26', '2022-04-17 15:56:26'),
(361, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"4","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 15:56:46', '2022-04-17 15:56:46'),
(362, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 15:59:52', '2022-04-17 15:59:52'),
(363, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:01:03', '2022-04-17 16:01:03'),
(364, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:05:54', '2022-04-17 16:05:54'),
(365, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:06:07', '2022-04-17 16:06:07'),
(366, 1, 'admin/shop_shipping/1', 'PUT', '127.0.0.1', '{"status":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_method":"PUT","_edit_inline":"true"}', '2022-04-17 16:06:09', '2022-04-17 16:06:09'),
(367, 1, 'admin/shop_shipping/1', 'PUT', '127.0.0.1', '{"status":"0","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_method":"PUT","_edit_inline":"true"}', '2022-04-17 16:06:19', '2022-04-17 16:06:19'),
(368, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:06:26', '2022-04-17 16:06:26'),
(369, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:06:27', '2022-04-17 16:06:27'),
(370, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:06:31', '2022-04-17 16:06:31'),
(371, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:06:36', '2022-04-17 16:06:36'),
(372, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:06:42', '2022-04-17 16:06:42'),
(373, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:07:04', '2022-04-17 16:07:04'),
(374, 1, 'admin/shop_shipping/1', 'PUT', '127.0.0.1', '{"name":"free","value":"10000000","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:07:37', '2022-04-17 16:07:37'),
(375, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '[]', '2022-04-17 16:07:41', '2022-04-17 16:07:41'),
(376, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '[]', '2022-04-17 16:08:05', '2022-04-17 16:08:05'),
(377, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:08:11', '2022-04-17 16:08:11'),
(378, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"4","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:08:17', '2022-04-17 16:08:17'),
(379, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:08:26', '2022-04-17 16:08:26'),
(380, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:08:29', '2022-04-17 16:08:29'),
(381, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:08:46', '2022-04-17 16:08:46'),
(382, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:08:49', '2022-04-17 16:08:49'),
(383, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:08:58', '2022-04-17 16:08:58'),
(384, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:09:01', '2022-04-17 16:09:01'),
(385, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:17:18', '2022-04-17 16:17:18'),
(386, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:17:21', '2022-04-17 16:17:21'),
(387, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:17:32', '2022-04-17 16:17:32'),
(388, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:17:35', '2022-04-17 16:17:35'),
(389, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:20:31', '2022-04-17 16:20:31'),
(390, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:20:35', '2022-04-17 16:20:35'),
(391, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:20:44', '2022-04-17 16:20:44'),
(392, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"3","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:20:48', '2022-04-17 16:20:48'),
(393, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:21:34', '2022-04-17 16:21:34'),
(394, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"4","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:21:37', '2022-04-17 16:21:37'),
(395, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:21:42', '2022-04-17 16:21:42'),
(396, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:21:47', '2022-04-17 16:21:47'),
(397, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:22:02', '2022-04-17 16:22:02'),
(398, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"1","pk":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_editable":"1","_method":"PUT"}', '2022-04-17 16:22:05', '2022-04-17 16:22:05'),
(399, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-17 16:22:18', '2022-04-17 16:22:18'),
(400, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:22:21', '2022-04-17 16:22:21'),
(401, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:22:25', '2022-04-17 16:22:25'),
(402, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:22:32', '2022-04-17 16:22:32'),
(403, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:22:33', '2022-04-17 16:22:33'),
(404, 1, 'admin/shop_product/53', 'PUT', '127.0.0.1', '{"status":"0","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_method":"PUT","_edit_inline":"true"}', '2022-04-17 16:22:36', '2022-04-17 16:22:36'),
(405, 1, 'admin/shop_product/53', 'PUT', '127.0.0.1', '{"status":"1","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_method":"PUT","_edit_inline":"true"}', '2022-04-17 16:22:37', '2022-04-17 16:22:37'),
(406, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-17 16:22:43', '2022-04-17 16:22:43'),
(407, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-17 16:23:27', '2022-04-17 16:23:27'),
(408, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:23:30', '2022-04-17 16:23:30'),
(409, 1, 'admin/cms_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:24:30', '2022-04-17 16:24:30'),
(410, 1, 'admin/cms_content', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:24:32', '2022-04-17 16:24:32'),
(411, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:24:34', '2022-04-17 16:24:34'),
(412, 1, 'admin/cms_news/7', 'PUT', '127.0.0.1', '{"status":"0","_token":"jODEzhRQwyLSYHI6jZuyaWNbO671nWjElkl1GL03","_method":"PUT","_edit_inline":"true"}', '2022-04-17 16:24:37', '2022-04-17 16:24:37'),
(413, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-17 16:24:39', '2022-04-17 16:24:39'),
(414, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:24:55', '2022-04-17 16:24:55'),
(415, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-17 16:25:00', '2022-04-17 16:25:00'),
(416, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 13:33:27', '2022-04-18 13:33:27'),
(417, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 13:33:41', '2022-04-18 13:33:41'),
(418, 1, 'admin/shop_category/21/edit', 'GET', '127.0.0.1', '[]', '2022-04-18 13:33:43', '2022-04-18 13:33:43'),
(419, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 13:33:50', '2022-04-18 13:33:50'),
(420, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 13:35:23', '2022-04-18 13:35:23'),
(421, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 13:50:16', '2022-04-18 13:50:16'),
(422, 1, 'admin/banner/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 13:50:19', '2022-04-18 13:50:19'),
(423, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 13:51:41', '2022-04-18 13:51:41'),
(424, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 13:51:51', '2022-04-18 13:51:51'),
(425, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 13:52:21', '2022-04-18 13:52:21'),
(426, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 13:55:57', '2022-04-18 13:55:57'),
(427, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:05:49', '2022-04-18 14:05:49'),
(428, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:10:22', '2022-04-18 14:10:22'),
(429, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:11:18', '2022-04-18 14:11:18'),
(430, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:12:16', '2022-04-18 14:12:16'),
(431, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:20:56', '2022-04-18 14:20:56'),
(432, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:21:11', '2022-04-18 14:21:11'),
(433, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:21:26', '2022-04-18 14:21:26'),
(434, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:22:58', '2022-04-18 14:22:58'),
(435, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:23:59', '2022-04-18 14:23:59'),
(436, 1, 'admin/shop_product/53', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:26:31', '2022-04-18 14:26:31'),
(437, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:26:33', '2022-04-18 14:26:33'),
(438, 1, 'admin/shop_product/53/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:26:37', '2022-04-18 14:26:37'),
(439, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:26:49', '2022-04-18 14:26:49'),
(440, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:33:10', '2022-04-18 14:33:10'),
(441, 1, 'admin/shop_product/53', 'PUT', '127.0.0.1', '{"status":"0","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_method":"PUT","_edit_inline":"true"}', '2022-04-18 14:33:15', '2022-04-18 14:33:15'),
(442, 1, 'admin/shop_product/53', 'PUT', '127.0.0.1', '{"status":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_method":"PUT","_edit_inline":"true"}', '2022-04-18 14:33:16', '2022-04-18 14:33:16'),
(443, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:33:24', '2022-04-18 14:33:24'),
(444, 1, 'admin/cms_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:33:28', '2022-04-18 14:33:28'),
(445, 1, 'admin/cms_content', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:33:30', '2022-04-18 14:33:30'),
(446, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:33:32', '2022-04-18 14:33:32'),
(447, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:33:34', '2022-04-18 14:33:34'),
(448, 1, 'admin/cms_page', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:33:40', '2022-04-18 14:33:40'),
(449, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:33:43', '2022-04-18 14:33:43'),
(450, 1, 'admin/shop_option', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:34:09', '2022-04-18 14:34:09'),
(451, 1, 'admin/shop_option/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:34:12', '2022-04-18 14:34:12'),
(452, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:34:16', '2022-04-18 14:34:16'),
(453, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:34:29', '2022-04-18 14:34:29'),
(454, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:34:33', '2022-04-18 14:34:33'),
(455, 1, 'admin/shop_product/51/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:34:41', '2022-04-18 14:34:41'),
(456, 1, 'admin/shop_product/51', 'PUT', '127.0.0.1', '{"name":"Th\\u1ecbt ch\\u00e2n gi\\u00f2 1kg","category_id":"21","category_other":[null],"keyword":["Ch\\u00e2n gi\\u00f2","Th\\u1ecbt l\\u1ee3n",null],"description":null,"content":"<ul>\\r\\n\\t<li>s\\u1ed1 m\\u1ed9t v\\u1ec1 bi\\u1ec3u t\\u01b0\\u1ee3ng s\\u1ed1 2 s\\u1ed1 3 s\\u1ed1 4&nbsp;<\\/li>\\r\\n\\t<li>adfbvaslkfhda;sldf<\\/li>\\r\\n\\t<li>fals;djfa;lsdkjf;als<\\/li>\\r\\n\\t<li>fas;ldjkfa;sdlkfjas;ldfas;d<\\/li>\\r\\n\\t<li>4444444a<\\/li>\\r\\n<\\/ul>","price":"100000","cost":"100000","stock":"49","sku":"CG001","brand_id":"8","status":"on","sort":"0","type":"2","date_available":null,"images":{"114":{"id":"114","_remove_":"0"}},"_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-18 14:34:49', '2022-04-18 14:34:49'),
(457, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:34:49', '2022-04-18 14:34:49'),
(458, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:35:21', '2022-04-18 14:35:21'),
(459, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 14:36:10', '2022-04-18 14:36:10'),
(460, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 14:36:23', '2022-04-18 14:36:23'),
(461, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 14:38:45', '2022-04-18 14:38:45'),
(462, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 14:39:31', '2022-04-18 14:39:31'),
(463, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:39:41', '2022-04-18 14:39:41'),
(464, 1, 'admin/auth/menu/14', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:39:45', '2022-04-18 14:39:45'),
(465, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2022-04-18 14:39:45', '2022-04-18 14:39:45'),
(466, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{"parent_id":"15","title":"Gi\\u00e1 khuy\\u1ebfn m\\u00e3i","icon":"fa-paw","uri":"shop_special_price","roles":[null],"permission":null,"_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_method":"PUT"}', '2022-04-18 14:39:58', '2022-04-18 14:39:58'),
(467, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2022-04-18 14:39:59', '2022-04-18 14:39:59'),
(468, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:40:04', '2022-04-18 14:40:04'),
(469, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 14:48:05', '2022-04-18 14:48:05'),
(470, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 14:48:35', '2022-04-18 14:48:35'),
(471, 1, 'admin/auth/menu/19', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 14:48:46', '2022-04-18 14:48:46'),
(472, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:48:46', '2022-04-18 14:48:46'),
(473, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 14:48:51', '2022-04-18 14:48:51'),
(474, 1, 'admin/auth/menu/22', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 14:48:57', '2022-04-18 14:48:57'),
(475, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:48:57', '2022-04-18 14:48:57'),
(476, 1, 'admin/auth/menu/20', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 14:49:00', '2022-04-18 14:49:00'),
(477, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:49:00', '2022-04-18 14:49:00'),
(478, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:49:07', '2022-04-18 14:49:07'),
(479, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:49:14', '2022-04-18 14:49:14'),
(480, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 14:49:23', '2022-04-18 14:49:23'),
(481, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:50:08', '2022-04-18 14:50:08'),
(482, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:50:57', '2022-04-18 14:50:57'),
(483, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 14:51:23', '2022-04-18 14:51:23'),
(484, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 15:05:59', '2022-04-18 15:05:59'),
(485, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 15:09:57', '2022-04-18 15:09:57'),
(486, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 15:11:47', '2022-04-18 15:11:47'),
(487, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 15:16:06', '2022-04-18 15:16:06'),
(488, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 15:16:08', '2022-04-18 15:16:08'),
(489, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 15:16:10', '2022-04-18 15:16:10'),
(490, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 15:25:55', '2022-04-18 15:25:55'),
(491, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 15:25:56', '2022-04-18 15:25:56'),
(492, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 15:40:27', '2022-04-18 15:40:27'),
(493, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 15:40:38', '2022-04-18 15:40:38'),
(494, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:07:40', '2022-04-18 16:07:40'),
(495, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"53","_model":"App_Models_ShopProduct","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:07:51', '2022-04-18 16:07:51'),
(496, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:07:57', '2022-04-18 16:07:57'),
(497, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:12:41', '2022-04-18 16:12:41'),
(498, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:13:43', '2022-04-18 16:13:43'),
(499, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"52","_model":"App_Models_ShopProduct","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:13:47', '2022-04-18 16:13:47'),
(500, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:14:06', '2022-04-18 16:14:06'),
(501, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"51","_model":"App_Models_ShopProduct","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:14:13', '2022-04-18 16:14:13'),
(502, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:14:15', '2022-04-18 16:14:15'),
(503, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:14:28', '2022-04-18 16:14:28'),
(504, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"50","_model":"App_Models_ShopProduct","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:14:38', '2022-04-18 16:14:38'),
(505, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:15:15', '2022-04-18 16:15:15'),
(506, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:15:17', '2022-04-18 16:15:17'),
(507, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"kIhod5f38815gQrP1H0i8I3dku9RhTDI0b9j7UAf","type":"Images","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-18 16:15:55', '2022-04-18 16:15:55'),
(508, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"24","category_other":["21",null],"keyword":["asd",null],"description":"asdfasdfadsfasdfafadsfaaaaaasdfasdfasdfasdfasdfasdfasdf","content":"<p>qwerqwer qwerqwer qwer qwe rwqe rqwe rqwe rq ew<img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/83c778002826f9dca64eec9c9660b278d675926ab316d01956fde79dbbbe4379.jpg\\" style=\\"width: 1200px; height: 676px;\\" \\/><\\/p>","price":"100000","cost":"100000","stock":"111","sku":"BC002","brand_id":"7","status":"on","sort":"1","type":"2","date_available":null,"_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-18 16:16:32', '2022-04-18 16:16:32'),
(509, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:16:32', '2022-04-18 16:16:32'),
(510, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:16:36', '2022-04-18 16:16:36'),
(511, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:16:47', '2022-04-18 16:16:47'),
(512, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:17:28', '2022-04-18 16:17:28'),
(513, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"21","_model":"App_Models_ShopCategory","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:17:42', '2022-04-18 16:17:42'),
(514, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:17:42', '2022-04-18 16:17:42'),
(515, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:17:44', '2022-04-18 16:17:44'),
(516, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:17:51', '2022-04-18 16:17:51'),
(517, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:17:56', '2022-04-18 16:17:56'),
(518, 1, 'admin/shop_payment_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:17:57', '2022-04-18 16:17:57'),
(519, 1, 'admin/shop_shipping_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:17:58', '2022-04-18 16:17:58'),
(520, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:17:58', '2022-04-18 16:17:58'),
(521, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:18:04', '2022-04-18 16:18:04'),
(522, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"24","_model":"App_Models_ShopCategory","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:18:13', '2022-04-18 16:18:13'),
(523, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:18:13', '2022-04-18 16:18:13'),
(524, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"25","_model":"App_Models_ShopCategory","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:18:17', '2022-04-18 16:18:17'),
(525, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:18:17', '2022-04-18 16:18:17'),
(526, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"26","_model":"App_Models_ShopCategory","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:18:21', '2022-04-18 16:18:21'),
(527, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:18:21', '2022-04-18 16:18:21'),
(528, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"27","_model":"App_Models_ShopCategory","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:18:24', '2022-04-18 16:18:24'),
(529, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:18:24', '2022-04-18 16:18:24'),
(530, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:18:29', '2022-04-18 16:18:29'),
(531, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:22:28', '2022-04-18 16:22:28'),
(532, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"54","_model":"App_Models_ShopProduct","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:22:33', '2022-04-18 16:22:33'),
(533, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:22:33', '2022-04-18 16:22:33'),
(534, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:22:37', '2022-04-18 16:22:37'),
(535, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:23:03', '2022-04-18 16:23:03'),
(536, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:23:06', '2022-04-18 16:23:06'),
(537, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:23:08', '2022-04-18 16:23:08'),
(538, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":null,"category_other":[null],"keyword":[null],"description":null,"content":"<p>32131<\\/p>","price":"31333","cost":"213123","stock":"333","sku":"BN001","brand_id":"7","status":"on","sort":"1","type":"0","date_available":null,"types":{"new_1":{"opt_name":null,"opt_sku":null,"opt_price":null,"id":null,"_remove_":"0"}},"_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-18 16:23:45', '2022-04-18 16:23:45'),
(539, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '[]', '2022-04-18 16:23:45', '2022-04-18 16:23:45'),
(540, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:23:56', '2022-04-18 16:23:56'),
(541, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:23:59', '2022-04-18 16:23:59'),
(542, 1, 'admin/shop_category', 'POST', '127.0.0.1', '{"name":"Th\\u1ef1c ph\\u1ea9m","parent":"0","uniquekey":"rau-xanh","sort":"1","status":"on","keyword":[null],"description":null,"_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_category"}', '2022-04-18 16:24:28', '2022-04-18 16:24:28'),
(543, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:24:28', '2022-04-18 16:24:28'),
(544, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:24:31', '2022-04-18 16:24:31'),
(545, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:24:33', '2022-04-18 16:24:33'),
(546, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"kIhod5f38815gQrP1H0i8I3dku9RhTDI0b9j7UAf","type":"Images","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","CKEditor":"content","CKEditorFuncNum":"359","langCode":"en"}', '2022-04-18 16:25:08', '2022-04-18 16:25:08'),
(547, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"28","category_other":[null],"keyword":["rau-xanh",null],"description":null,"content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/5238e136c2da99a84b6068751c80abf366de6f760bb5e31ab869bf92e0bf2f38.jpg\\" style=\\"width: 760px; height: 760px;\\" \\/><\\/p>","price":"1231","cost":"3213","stock":"100","sku":"BC002","brand_id":"7","status":"on","sort":"1","type":"0","date_available":null,"_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-18 16:25:36', '2022-04-18 16:25:36'),
(548, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:25:37', '2022-04-18 16:25:37'),
(549, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:25:45', '2022-04-18 16:25:45'),
(550, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:25:49', '2022-04-18 16:25:49'),
(551, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:26:21', '2022-04-18 16:26:21'),
(552, 1, 'admin/shop_product/55', 'PUT', '127.0.0.1', '{"status":"0","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_method":"PUT","_edit_inline":"true"}', '2022-04-18 16:26:24', '2022-04-18 16:26:24'),
(553, 1, 'admin/shop_product/55', 'PUT', '127.0.0.1', '{"status":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_method":"PUT","_edit_inline":"true"}', '2022-04-18 16:26:25', '2022-04-18 16:26:25'),
(554, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:26:26', '2022-04-18 16:26:26'),
(555, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:26:31', '2022-04-18 16:26:31'),
(556, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:26:48', '2022-04-18 16:26:48'),
(557, 1, 'admin/shop_category/28/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:26:54', '2022-04-18 16:26:54'),
(558, 1, 'admin/shop_category/28/edit', 'GET', '127.0.0.1', '[]', '2022-04-18 16:28:39', '2022-04-18 16:28:39'),
(559, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:28:44', '2022-04-18 16:28:44'),
(560, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 16:29:16', '2022-04-18 16:29:16'),
(561, 1, 'admin/shop_product/55/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:29:18', '2022-04-18 16:29:18'),
(562, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:29:20', '2022-04-18 16:29:20'),
(563, 1, 'admin/shop_option', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:29:27', '2022-04-18 16:29:27'),
(564, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:29:29', '2022-04-18 16:29:29'),
(565, 1, 'admin/shop_option', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:29:31', '2022-04-18 16:29:31'),
(566, 1, 'admin/shop_option', 'GET', '127.0.0.1', '[]', '2022-04-18 16:30:04', '2022-04-18 16:30:04'),
(567, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:30:11', '2022-04-18 16:30:11'),
(568, 1, 'admin/shop_product/55/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:30:14', '2022-04-18 16:30:14'),
(569, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:32:52', '2022-04-18 16:32:52'),
(570, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:03', '2022-04-18 16:33:03'),
(571, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 16:33:08', '2022-04-18 16:33:08'),
(572, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:12', '2022-04-18 16:33:12'),
(573, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"1","_model":"App_Models_ShopOrderStatus","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:33:17', '2022-04-18 16:33:17'),
(574, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-18 16:33:17', '2022-04-18 16:33:17'),
(575, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-18 16:33:19', '2022-04-18 16:33:19'),
(576, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:21', '2022-04-18 16:33:21'),
(577, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:27', '2022-04-18 16:33:27'),
(578, 1, 'admin/shop_payment_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:30', '2022-04-18 16:33:30'),
(579, 1, 'admin/shop_shipping_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:32', '2022-04-18 16:33:32'),
(580, 1, 'admin/shop_payment_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:33', '2022-04-18 16:33:33'),
(581, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:35', '2022-04-18 16:33:35'),
(582, 1, 'admin/auth/menu/27', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 16:33:39', '2022-04-18 16:33:39'),
(583, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:39', '2022-04-18 16:33:39'),
(584, 1, 'admin/auth/menu/28', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 16:33:41', '2022-04-18 16:33:41'),
(585, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:33:42', '2022-04-18 16:33:42'),
(586, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:00', '2022-04-18 16:34:00'),
(587, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:06', '2022-04-18 16:34:06'),
(588, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:08', '2022-04-18 16:34:08'),
(589, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:30', '2022-04-18 16:34:30'),
(590, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:31', '2022-04-18 16:34:31'),
(591, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:33', '2022-04-18 16:34:33'),
(592, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:37', '2022-04-18 16:34:37'),
(593, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:37', '2022-04-18 16:34:37'),
(594, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:43', '2022-04-18 16:34:43'),
(595, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:48', '2022-04-18 16:34:48'),
(596, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:52', '2022-04-18 16:34:52'),
(597, 1, 'admin/shop_order/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:55', '2022-04-18 16:34:55'),
(598, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:34:57', '2022-04-18 16:34:57'),
(599, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 16:35:43', '2022-04-18 16:35:43'),
(600, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 16:35:49', '2022-04-18 16:35:49'),
(601, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 16:35:51', '2022-04-18 16:35:51'),
(602, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 16:36:15', '2022-04-18 16:36:15'),
(603, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 16:36:25', '2022-04-18 16:36:25'),
(604, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:36:33', '2022-04-18 16:36:33'),
(605, 1, 'admin/shop_option', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:36:34', '2022-04-18 16:36:34'),
(606, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:36:36', '2022-04-18 16:36:36'),
(607, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '[]', '2022-04-18 16:39:52', '2022-04-18 16:39:52'),
(608, 1, 'admin/shop_brand/7/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:39:56', '2022-04-18 16:39:56'),
(609, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:40:01', '2022-04-18 16:40:01'),
(610, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:40:09', '2022-04-18 16:40:09'),
(611, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"7","_model":"App_Models_CmsNews","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:40:14', '2022-04-18 16:40:14'),
(612, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-18 16:40:14', '2022-04-18 16:40:14'),
(613, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"6","_model":"App_Models_CmsNews","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:40:17', '2022-04-18 16:40:17'),
(614, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-18 16:40:17', '2022-04-18 16:40:17'),
(615, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"5","_model":"App_Models_CmsNews","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:40:20', '2022-04-18 16:40:20'),
(616, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-18 16:40:20', '2022-04-18 16:40:20'),
(617, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"4","_model":"App_Models_CmsNews","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:40:23', '2022-04-18 16:40:23'),
(618, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-18 16:40:23', '2022-04-18 16:40:23'),
(619, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"8","_model":"App_Models_CmsNews","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:40:26', '2022-04-18 16:40:26'),
(620, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-18 16:40:26', '2022-04-18 16:40:26'),
(621, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"1","_model":"App_Models_CmsNews","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:40:31', '2022-04-18 16:40:31'),
(622, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-18 16:40:31', '2022-04-18 16:40:31'),
(623, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"2","_model":"App_Models_CmsNews","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:40:35', '2022-04-18 16:40:35'),
(624, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-18 16:40:35', '2022-04-18 16:40:35'),
(625, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"3","_model":"App_Models_CmsNews","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:40:38', '2022-04-18 16:40:38'),
(626, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-18 16:40:38', '2022-04-18 16:40:38'),
(627, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:40:39', '2022-04-18 16:40:39'),
(628, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:40:42', '2022-04-18 16:40:42'),
(629, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:40:43', '2022-04-18 16:40:43'),
(630, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:40:44', '2022-04-18 16:40:44'),
(631, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:40:45', '2022-04-18 16:40:45'),
(632, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:40:49', '2022-04-18 16:40:49'),
(633, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 16:41:38', '2022-04-18 16:41:38'),
(634, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:41:47', '2022-04-18 16:41:47'),
(635, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_order":"[{\\"id\\":1},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]},{\\"id\\":17,\\"children\\":[{\\"id\\":21}]},{\\"id\\":15,\\"children\\":[{\\"id\\":13},{\\"id\\":14},{\\"id\\":10},{\\"id\\":12},{\\"id\\":11}]},{\\"id\\":25,\\"children\\":[{\\"id\\":9},{\\"id\\":26}]},{\\"id\\":31,\\"children\\":[{\\"id\\":8}]},{\\"id\\":30,\\"children\\":[{\\"id\\":41}]},{\\"id\\":42,\\"children\\":[{\\"id\\":49}]},{\\"id\\":43,\\"children\\":[{\\"id\\":50}]},{\\"id\\":23,\\"children\\":[{\\"id\\":18},{\\"id\\":16}]},{\\"id\\":24}]"}', '2022-04-18 16:41:50', '2022-04-18 16:41:50');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(636, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:41:50', '2022-04-18 16:41:50'),
(637, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 16:41:53', '2022-04-18 16:41:53'),
(638, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:42:49', '2022-04-18 16:42:49'),
(639, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:42:52', '2022-04-18 16:42:52'),
(640, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-18 16:43:26', '2022-04-18 16:43:26'),
(641, 1, 'admin/banner/20', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:43:34', '2022-04-18 16:43:34'),
(642, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:43:38', '2022-04-18 16:43:38'),
(643, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"17","_model":"App_Models_Banner","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 16:43:45', '2022-04-18 16:43:45'),
(644, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-18 16:43:45', '2022-04-18 16:43:45'),
(645, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:45:03', '2022-04-18 16:45:03'),
(646, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:45:05', '2022-04-18 16:45:05'),
(647, 1, 'admin/shop_promotion', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:45:19', '2022-04-18 16:45:19'),
(648, 1, 'admin/shop_promotion/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:45:26', '2022-04-18 16:45:26'),
(649, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:45:44', '2022-04-18 16:45:44'),
(650, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:45:47', '2022-04-18 16:45:47'),
(651, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:51:01', '2022-04-18 16:51:01'),
(652, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 16:51:04', '2022-04-18 16:51:04'),
(653, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:51:12', '2022-04-18 16:51:12'),
(654, 1, 'admin/auth/menu/12', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 16:51:15', '2022-04-18 16:51:15'),
(655, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:51:16', '2022-04-18 16:51:16'),
(656, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:51:24', '2022-04-18 16:51:24'),
(657, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-18 16:51:25', '2022-04-18 16:51:25'),
(658, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:51:28', '2022-04-18 16:51:28'),
(659, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-18 16:51:59', '2022-04-18 16:51:59'),
(660, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 16:52:03', '2022-04-18 16:52:03'),
(661, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"0","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_method":"PUT","_edit_inline":"true"}', '2022-04-18 16:52:08', '2022-04-18 16:52:08'),
(662, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:02:08', '2022-04-18 17:02:08'),
(663, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:02:09', '2022-04-18 17:02:09'),
(664, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:02:10', '2022-04-18 17:02:10'),
(665, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:02:12', '2022-04-18 17:02:12'),
(666, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:02:13', '2022-04-18 17:02:13'),
(667, 1, 'admin/shop_special_price/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:02:14', '2022-04-18 17:02:14'),
(668, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":null}', '2022-04-18 17:02:14', '2022-04-18 17:02:14'),
(669, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:02:16', '2022-04-18 17:02:16'),
(670, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:02:20', '2022-04-18 17:02:20'),
(671, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:04:36', '2022-04-18 17:04:36'),
(672, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:05:12', '2022-04-18 17:05:12'),
(673, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:09:32', '2022-04-18 17:09:32'),
(674, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:09:37', '2022-04-18 17:09:37'),
(675, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:10:40', '2022-04-18 17:10:40'),
(676, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 17:13:34', '2022-04-18 17:13:34'),
(677, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 17:15:19', '2022-04-18 17:15:19'),
(678, 1, 'admin/auth/menu/49', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 17:15:25', '2022-04-18 17:15:25'),
(679, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:15:26', '2022-04-18 17:15:26'),
(680, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 17:15:33', '2022-04-18 17:15:33'),
(681, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 17:16:50', '2022-04-18 17:16:50'),
(682, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 17:19:14', '2022-04-18 17:19:14'),
(683, 1, 'admin/auth/menu/42', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 17:19:21', '2022-04-18 17:19:21'),
(684, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:19:21', '2022-04-18 17:19:21'),
(685, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 17:19:25', '2022-04-18 17:19:25'),
(686, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:19:30', '2022-04-18 17:19:30'),
(687, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:19:32', '2022-04-18 17:19:32'),
(688, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:19:57', '2022-04-18 17:19:57'),
(689, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:20:00', '2022-04-18 17:20:00'),
(690, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:20:54', '2022-04-18 17:20:54'),
(691, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:21:08', '2022-04-18 17:21:08'),
(692, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:21:37', '2022-04-18 17:21:37'),
(693, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:21:38', '2022-04-18 17:21:38'),
(694, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:24:43', '2022-04-18 17:24:43'),
(695, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:24:46', '2022-04-18 17:24:46'),
(696, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:25:22', '2022-04-18 17:25:22'),
(697, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:25:27', '2022-04-18 17:25:27'),
(698, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:25:30', '2022-04-18 17:25:30'),
(699, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:25:37', '2022-04-18 17:25:37'),
(700, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:25:40', '2022-04-18 17:25:40'),
(701, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:25:57', '2022-04-18 17:25:57'),
(702, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"3","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:26:00', '2022-04-18 17:26:00'),
(703, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"4","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:26:04', '2022-04-18 17:26:04'),
(704, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:26:05', '2022-04-18 17:26:05'),
(705, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:26:07', '2022-04-18 17:26:07'),
(706, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:26:09', '2022-04-18 17:26:09'),
(707, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:26:48', '2022-04-18 17:26:48'),
(708, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:28:57', '2022-04-18 17:28:57'),
(709, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:29:03', '2022-04-18 17:29:03'),
(710, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:29:12', '2022-04-18 17:29:12'),
(711, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:33:22', '2022-04-18 17:33:22'),
(712, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:33:25', '2022-04-18 17:33:25'),
(713, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:38:55', '2022-04-18 17:38:55'),
(714, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"3","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:39:09', '2022-04-18 17:39:09'),
(715, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:39:38', '2022-04-18 17:39:38'),
(716, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:39:50', '2022-04-18 17:39:50'),
(717, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"4","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:39:53', '2022-04-18 17:39:53'),
(718, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:40:23', '2022-04-18 17:40:23'),
(719, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:41:00', '2022-04-18 17:41:00'),
(720, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:44:04', '2022-04-18 17:44:04'),
(721, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:44:08', '2022-04-18 17:44:08'),
(722, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:45:10', '2022-04-18 17:45:10'),
(723, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:45:43', '2022-04-18 17:45:43'),
(724, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:45:51', '2022-04-18 17:45:51'),
(725, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"55","_model":"App_Models_ShopProduct","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 17:45:59', '2022-04-18 17:45:59'),
(726, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:46:03', '2022-04-18 17:46:03'),
(727, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-18 17:46:40', '2022-04-18 17:46:40'),
(728, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:46:59', '2022-04-18 17:46:59'),
(729, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:47:08', '2022-04-18 17:47:08'),
(730, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:47:20', '2022-04-18 17:47:20'),
(731, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"2","pk":"1","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:47:23', '2022-04-18 17:47:23'),
(732, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-18 17:47:26', '2022-04-18 17:47:26'),
(733, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:47:31', '2022-04-18 17:47:31'),
(734, 1, 'admin/shop_order_status/2', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:47:36', '2022-04-18 17:47:36'),
(735, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:47:39', '2022-04-18 17:47:39'),
(736, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"2","_model":"App_Models_ShopOrderStatus","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 17:47:47', '2022-04-18 17:47:47'),
(737, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-18 17:47:51', '2022-04-18 17:47:51'),
(738, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"3","_model":"App_Models_ShopOrderStatus","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 17:48:23', '2022-04-18 17:48:23'),
(739, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"4","_model":"App_Models_ShopOrderStatus","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-18 17:49:00', '2022-04-18 17:49:00'),
(740, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-18 17:49:10', '2022-04-18 17:49:10'),
(741, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:12', '2022-04-18 17:49:12'),
(742, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:19', '2022-04-18 17:49:19'),
(743, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:26', '2022-04-18 17:49:26'),
(744, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:29', '2022-04-18 17:49:29'),
(745, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:33', '2022-04-18 17:49:33'),
(746, 1, 'admin/shop_promotion', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:40', '2022-04-18 17:49:40'),
(747, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:42', '2022-04-18 17:49:42'),
(748, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:44', '2022-04-18 17:49:44'),
(749, 1, 'admin/config_mode', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:46', '2022-04-18 17:49:46'),
(750, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:49:52', '2022-04-18 17:49:52'),
(751, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:50:00', '2022-04-18 17:50:00'),
(752, 1, 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb"}', '2022-04-18 17:50:08', '2022-04-18 17:50:08'),
(753, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:50:08', '2022-04-18 17:50:08'),
(754, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-18 17:50:13', '2022-04-18 17:50:13'),
(755, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:50:16', '2022-04-18 17:50:16'),
(756, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:50:17', '2022-04-18 17:50:17'),
(757, 1, 'admin/config_info/2', 'PUT', '127.0.0.1', '{"name":"value","value":"keyword1","pk":"2","_token":"qqPfF0LiDyJOVjPq2e0WKB7nGPhTjuh5O7Jgq5vb","_editable":"1","_method":"PUT"}', '2022-04-18 17:50:27', '2022-04-18 17:50:27'),
(758, 1, 'admin/config_info', 'GET', '127.0.0.1', '[]', '2022-04-18 17:50:29', '2022-04-18 17:50:29'),
(759, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:50:31', '2022-04-18 17:50:31'),
(760, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:51:17', '2022-04-18 17:51:17'),
(761, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:51:21', '2022-04-18 17:51:21'),
(762, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-18 17:51:24', '2022-04-18 17:51:24'),
(763, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-19 14:00:15', '2022-04-19 14:00:15'),
(764, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-19 14:00:26', '2022-04-19 14:00:26'),
(765, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:00:30', '2022-04-19 14:00:30'),
(766, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:00:37', '2022-04-19 14:00:37'),
(767, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:00:40', '2022-04-19 14:00:40'),
(768, 1, 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{"parent_id":"25","title":"Tr\\u1ea1ng th\\u00e1i \\u0111\\u01a1n h\\u00e0ng","icon":"fa-asterisk","uri":"shop_order_status","roles":[null],"permission":null,"_token":"LQ4SZlxyINsPgiLaEstDFsX0QuNxmaiQnRGnrd1I","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu"}', '2022-04-19 14:00:53', '2022-04-19 14:00:53'),
(769, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '[]', '2022-04-19 14:00:54', '2022-04-19 14:00:54'),
(770, 1, 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{"parent_id":"25","title":"Tr\\u1ea1ng th\\u00e1i \\u0111\\u01a1n h\\u00e0ng","icon":"fa-asterisk","uri":"shop_order_status","roles":[null],"permission":"admin_shop","_token":"LQ4SZlxyINsPgiLaEstDFsX0QuNxmaiQnRGnrd1I","_method":"PUT"}', '2022-04-19 14:01:09', '2022-04-19 14:01:09'),
(771, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '[]', '2022-04-19 14:01:09', '2022-04-19 14:01:09'),
(772, 1, 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '[]', '2022-04-19 14:02:22', '2022-04-19 14:02:22'),
(773, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:02:26', '2022-04-19 14:02:26'),
(774, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:02:30', '2022-04-19 14:02:30'),
(775, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:02:34', '2022-04-19 14:02:34'),
(776, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:02:36', '2022-04-19 14:02:36'),
(777, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:02:59', '2022-04-19 14:02:59'),
(778, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:02', '2022-04-19 14:03:02'),
(779, 1, 'admin/shop_shipping', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:09', '2022-04-19 14:03:09'),
(780, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:12', '2022-04-19 14:03:12'),
(781, 1, 'admin/auth/menu/43', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"LQ4SZlxyINsPgiLaEstDFsX0QuNxmaiQnRGnrd1I"}', '2022-04-19 14:03:18', '2022-04-19 14:03:18'),
(782, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:18', '2022-04-19 14:03:18'),
(783, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-19 14:03:24', '2022-04-19 14:03:24'),
(784, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:27', '2022-04-19 14:03:27'),
(785, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:29', '2022-04-19 14:03:29'),
(786, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:32', '2022-04-19 14:03:32'),
(787, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:33', '2022-04-19 14:03:33'),
(788, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:34', '2022-04-19 14:03:34'),
(789, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:03:35', '2022-04-19 14:03:35'),
(790, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:05:15', '2022-04-19 14:05:15'),
(791, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-19 14:05:22', '2022-04-19 14:05:22'),
(792, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"3","_model":"App_User","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-19 14:05:26', '2022-04-19 14:05:26'),
(793, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-19 14:05:28', '2022-04-19 14:05:28'),
(794, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"2","_model":"App_User","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-19 14:05:31', '2022-04-19 14:05:31'),
(795, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-19 14:05:33', '2022-04-19 14:05:33'),
(796, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"1","_model":"App_User","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-19 14:05:37', '2022-04-19 14:05:37'),
(797, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-19 14:05:38', '2022-04-19 14:05:38'),
(798, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"4","_model":"App_User","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-19 14:05:41', '2022-04-19 14:05:41'),
(799, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-19 14:05:43', '2022-04-19 14:05:43'),
(800, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"5","_model":"App_User","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-19 14:05:46', '2022-04-19 14:05:46'),
(801, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-19 14:05:48', '2022-04-19 14:05:48'),
(802, 1, 'admin/shop_customer/6', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:05:51', '2022-04-19 14:05:51'),
(803, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-19 14:05:51', '2022-04-19 14:05:51'),
(804, 1, 'admin/shop_customer/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:05:58', '2022-04-19 14:05:58'),
(805, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:06:01', '2022-04-19 14:06:01'),
(806, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:09:48', '2022-04-19 14:09:48'),
(807, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:09:51', '2022-04-19 14:09:51'),
(808, 1, 'admin/shop_brand/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:09:58', '2022-04-19 14:09:58'),
(809, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:10:00', '2022-04-19 14:10:00'),
(810, 1, 'admin/shop_brand/7/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:10:02', '2022-04-19 14:10:02'),
(811, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:10:04', '2022-04-19 14:10:04'),
(812, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-19 14:58:38', '2022-04-19 14:58:38'),
(813, 1, 'admin/shop_promotion', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:41', '2022-04-19 14:58:41'),
(814, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:43', '2022-04-19 14:58:43'),
(815, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:48', '2022-04-19 14:58:48'),
(816, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:50', '2022-04-19 14:58:50'),
(817, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:52', '2022-04-19 14:58:52'),
(818, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:53', '2022-04-19 14:58:53'),
(819, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:54', '2022-04-19 14:58:54'),
(820, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:58', '2022-04-19 14:58:58'),
(821, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:58:59', '2022-04-19 14:58:59'),
(822, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 14:59:03', '2022-04-19 14:59:03'),
(823, 1, 'admin/config_info', 'GET', '127.0.0.1', '[]', '2022-04-19 15:00:28', '2022-04-19 15:00:28'),
(824, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:00:51', '2022-04-19 15:00:51'),
(825, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-19 15:01:08', '2022-04-19 15:01:08'),
(826, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-04-19 15:01:26', '2022-04-19 15:01:26'),
(827, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:01:34', '2022-04-19 15:01:34'),
(828, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:01:36', '2022-04-19 15:01:36'),
(829, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:01:37', '2022-04-19 15:01:37'),
(830, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:01:38', '2022-04-19 15:01:38'),
(831, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:01:50', '2022-04-19 15:01:50'),
(832, 1, 'admin/shop_order_status/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:01:54', '2022-04-19 15:01:54'),
(833, 1, 'admin/shop_order_status', 'POST', '127.0.0.1', '{"name":"\\u0110ang s\\u1eed l\\u00fd","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order_status"}', '2022-04-19 15:02:01', '2022-04-19 15:02:01'),
(834, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-19 15:02:02', '2022-04-19 15:02:02'),
(835, 1, 'admin/shop_order_status/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:02:03', '2022-04-19 15:02:03'),
(836, 1, 'admin/shop_order_status', 'POST', '127.0.0.1', '{"name":"\\u0110ang giao","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order_status"}', '2022-04-19 15:02:08', '2022-04-19 15:02:08'),
(837, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-19 15:02:08', '2022-04-19 15:02:08'),
(838, 1, 'admin/shop_order_status/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:02:09', '2022-04-19 15:02:09'),
(839, 1, 'admin/shop_order_status', 'POST', '127.0.0.1', '{"name":"H\\u1ee7y b\\u1ecf","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order_status"}', '2022-04-19 15:02:13', '2022-04-19 15:02:13'),
(840, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-19 15:02:13', '2022-04-19 15:02:13'),
(841, 1, 'admin/shop_order_status/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:02:16', '2022-04-19 15:02:16'),
(842, 1, 'admin/shop_order_status', 'POST', '127.0.0.1', '{"name":"Ho\\u00e0n th\\u00e0nh","_token":"xe2RZmM5u2TqitEkicmZ5IlMVB5JRkrBFdYi9YEU","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order_status"}', '2022-04-19 15:02:20', '2022-04-19 15:02:20'),
(843, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-19 15:02:20', '2022-04-19 15:02:20'),
(844, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-19 15:02:22', '2022-04-19 15:02:22'),
(845, 1, 'admin/shop_order_status/0', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:02:28', '2022-04-19 15:02:28'),
(846, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:02:30', '2022-04-19 15:02:30'),
(847, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '[]', '2022-04-19 15:03:05', '2022-04-19 15:03:05'),
(848, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:03:09', '2022-04-19 15:03:09'),
(849, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:03:12', '2022-04-19 15:03:12'),
(850, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:03:15', '2022-04-19 15:03:15'),
(851, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:03:19', '2022-04-19 15:03:19'),
(852, 1, 'admin/shop_promotion', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:03:21', '2022-04-19 15:03:21'),
(853, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:03:23', '2022-04-19 15:03:23'),
(854, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:03:24', '2022-04-19 15:03:24'),
(855, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 15:03:29', '2022-04-19 15:03:29'),
(856, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 18:02:23', '2022-04-19 18:02:23'),
(857, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-19 18:02:25', '2022-04-19 18:02:25'),
(858, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-21 15:36:01', '2022-04-21 15:36:01'),
(859, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:36:07', '2022-04-21 15:36:07'),
(860, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:36:09', '2022-04-21 15:36:09'),
(861, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:36:11', '2022-04-21 15:36:11'),
(862, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"28","category_other":["28",null],"keyword":["adfa",null],"description":"adfasdf","content":"<p>adsfasdfasdfasdf<\\/p>","price":"12312","cost":"312312","stock":"33","sku":"312312","brand_id":"7","status":"on","sort":"11","type":"0","date_available":null,"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-21 15:36:51', '2022-04-21 15:36:51'),
(863, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 15:36:51', '2022-04-21 15:36:51'),
(864, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 15:36:56', '2022-04-21 15:36:56'),
(865, 1, 'admin/shop_product/1', 'PUT', '127.0.0.1', '{"status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_edit_inline":"true"}', '2022-04-21 15:37:01', '2022-04-21 15:37:01'),
(866, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 15:37:03', '2022-04-21 15:37:03'),
(867, 1, 'admin/shop_product/1', 'PUT', '127.0.0.1', '{"status":"1","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_edit_inline":"true"}', '2022-04-21 15:37:06', '2022-04-21 15:37:06'),
(868, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 15:37:09', '2022-04-21 15:37:09'),
(869, 1, 'admin/shop_product/1', 'PUT', '127.0.0.1', '{"status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_edit_inline":"true"}', '2022-04-21 15:44:20', '2022-04-21 15:44:20'),
(870, 1, 'admin/shop_product/1', 'PUT', '127.0.0.1', '{"status":"1","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_edit_inline":"true"}', '2022-04-21 15:44:21', '2022-04-21 15:44:21'),
(871, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:56:31', '2022-04-21 15:56:31'),
(872, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:56:55', '2022-04-21 15:56:55'),
(873, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:56:57', '2022-04-21 15:56:57'),
(874, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:56:59', '2022-04-21 15:56:59'),
(875, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 15:57:05', '2022-04-21 15:57:05'),
(876, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 15:57:09', '2022-04-21 15:57:09'),
(877, 1, 'admin/shop_order/1', 'PUT', '127.0.0.1', '{"name":"status","value":"0","pk":"1","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_editable":"1","_method":"PUT"}', '2022-04-21 15:57:34', '2022-04-21 15:57:34'),
(878, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 15:57:37', '2022-04-21 15:57:37'),
(879, 1, 'admin/shop_order/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:57:40', '2022-04-21 15:57:40'),
(880, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 15:59:56', '2022-04-21 15:59:56'),
(881, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:00:21', '2022-04-21 16:00:21'),
(882, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"editItem-form":"1","pId":"1","pName":"Th\\u1ecbt ch\\u00e2n gi\\u00f2 1kg","pQty":"2","pPrice":"100000","pAttr":null,"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:01:22', '2022-04-21 16:01:22'),
(883, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:01:22', '2022-04-21 16:01:22'),
(884, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:01:28', '2022-04-21 16:01:28'),
(885, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:01:32', '2022-04-21 16:01:32'),
(886, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:01:40', '2022-04-21 16:01:40'),
(887, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:02:53', '2022-04-21 16:02:53'),
(888, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:03:02', '2022-04-21 16:03:02'),
(889, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:03:05', '2022-04-21 16:03:05'),
(890, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:03:07', '2022-04-21 16:03:07'),
(891, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:03:26', '2022-04-21 16:03:26'),
(892, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-21 16:03:37', '2022-04-21 16:03:37'),
(893, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"1","pId":[{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"1"}],"pPrice":[{"name":"form_price[]","value":"12312"}],"pAttr":[{"name":"form_attr[]","value":null}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:03:53', '2022-04-21 16:03:53'),
(894, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:03:53', '2022-04-21 16:03:53'),
(895, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:09:07', '2022-04-21 16:09:07'),
(896, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:09:08', '2022-04-21 16:09:08'),
(897, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:09:45', '2022-04-21 16:09:45'),
(898, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:12:29', '2022-04-21 16:12:29'),
(899, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:12:56', '2022-04-21 16:12:56'),
(900, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:14:00', '2022-04-21 16:14:00'),
(901, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:14:12', '2022-04-21 16:14:12'),
(902, 1, 'admin/shop_order_update', 'PUT', '127.0.0.1', '{"name":"address2","value":"B\\u1eafc T\\u1eeb Li\\u00eam 321312312312312312312312312312312312312","pk":"1","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_editable":"1","_method":"PUT"}', '2022-04-21 16:15:16', '2022-04-21 16:15:16'),
(903, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:15:20', '2022-04-21 16:15:20'),
(904, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:15:53', '2022-04-21 16:15:53'),
(905, 1, 'admin/shop_order_update', 'PUT', '127.0.0.1', '{"name":"address2","value":"B\\u1eafc T\\u1eeb Li\\u00eam","pk":"1","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_editable":"1","_method":"PUT"}', '2022-04-21 16:16:01', '2022-04-21 16:16:01'),
(906, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:19:11', '2022-04-21 16:19:11'),
(907, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:19:13', '2022-04-21 16:19:13'),
(908, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:20:21', '2022-04-21 16:20:21'),
(909, 1, 'admin/shop_order/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:20:32', '2022-04-21 16:20:32'),
(910, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:20:41', '2022-04-21 16:20:41'),
(911, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:21:03', '2022-04-21 16:21:03'),
(912, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:21:39', '2022-04-21 16:21:39'),
(913, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:22:27', '2022-04-21 16:22:27'),
(914, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:22:41', '2022-04-21 16:22:41'),
(915, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:22:45', '2022-04-21 16:22:45'),
(916, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:22:48', '2022-04-21 16:22:48'),
(917, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:22:49', '2022-04-21 16:22:49'),
(918, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:22:51', '2022-04-21 16:22:51'),
(919, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:22:53', '2022-04-21 16:22:53'),
(920, 1, 'admin/shop_order', 'POST', '127.0.0.1', '{"user_id":"0","toname":"1","address1":"H\\u00e0 N\\u1ed9i","address2":"B\\u1eafc T\\u1eeb Li\\u00eam","phone":"12323333333","comment":"321312321","status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order"}', '2022-04-21 16:23:23', '2022-04-21 16:23:23'),
(921, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:23:23', '2022-04-21 16:23:23'),
(922, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:23:28', '2022-04-21 16:23:28'),
(923, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-21 16:23:40', '2022-04-21 16:23:40'),
(924, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"2","pId":[{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"1"}],"pPrice":[{"name":"form_price[]","value":"12312"}],"pAttr":[{"name":"form_attr[]","value":null}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:23:43', '2022-04-21 16:23:43'),
(925, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"2","pId":[{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"2"}],"pPrice":[{"name":"form_price[]","value":"12312"}],"pAttr":[{"name":"form_attr[]","value":null}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:23:49', '2022-04-21 16:23:49'),
(926, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-21 16:23:59', '2022-04-21 16:23:59'),
(927, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"2","pId":[{"name":"form_id[]","value":"1"},{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"2"},{"name":"form_qty[]","value":"1"}],"pPrice":[{"name":"form_price[]","value":"12312"},{"name":"form_price[]","value":"12312"}],"pAttr":[{"name":"form_attr[]","value":null},{"name":"form_attr[]","value":null}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:24:00', '2022-04-21 16:24:00'),
(928, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '[]', '2022-04-21 16:24:03', '2022-04-21 16:24:03'),
(929, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"removeItem-form":"1","pId":"6","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:24:08', '2022-04-21 16:24:08'),
(930, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '[]', '2022-04-21 16:24:11', '2022-04-21 16:24:11'),
(931, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"removeItem-form":"1","pId":"5","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:24:13', '2022-04-21 16:24:13'),
(932, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '[]', '2022-04-21 16:24:17', '2022-04-21 16:24:17'),
(933, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"removeItem-form":"1","pId":"4","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:24:28', '2022-04-21 16:24:28'),
(934, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '[]', '2022-04-21 16:24:32', '2022-04-21 16:24:32'),
(935, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:24:41', '2022-04-21 16:24:41'),
(936, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:24:45', '2022-04-21 16:24:45'),
(937, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"editItem-form":"1","pId":"2","pName":"B\\u1eafp c\\u1ea3i","pQty":"2","pPrice":"12312","pAttr":null,"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:24:50', '2022-04-21 16:24:50'),
(938, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:24:50', '2022-04-21 16:24:50'),
(939, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"removeItem-form":"1","pId":"2","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:24:55', '2022-04-21 16:24:55'),
(940, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:24:55', '2022-04-21 16:24:55'),
(941, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:24:59', '2022-04-21 16:24:59'),
(942, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:25:02', '2022-04-21 16:25:02'),
(943, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"removeItem-form":"1","pId":"3","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:25:05', '2022-04-21 16:25:05'),
(944, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '[]', '2022-04-21 16:25:09', '2022-04-21 16:25:09'),
(945, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:25:12', '2022-04-21 16:25:12'),
(946, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:26:19', '2022-04-21 16:26:19'),
(947, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:26:25', '2022-04-21 16:26:25'),
(948, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:26:47', '2022-04-21 16:26:47'),
(949, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:27:40', '2022-04-21 16:27:40'),
(950, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:28:02', '2022-04-21 16:28:02'),
(951, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:28:11', '2022-04-21 16:28:11'),
(952, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:29:23', '2022-04-21 16:29:23'),
(953, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:29:29', '2022-04-21 16:29:29'),
(954, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:29:33', '2022-04-21 16:29:33'),
(955, 1, 'admin/shop_order_update', 'PUT', '127.0.0.1', '{"name":"status","value":"5","pk":"2","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_editable":"1","_method":"PUT"}', '2022-04-21 16:29:37', '2022-04-21 16:29:37'),
(956, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-21 16:29:42', '2022-04-21 16:29:42'),
(957, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"2","pId":[{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"1"}],"pPrice":[{"name":"form_price[]","value":"12312"}],"pAttr":[{"name":"form_attr[]","value":null}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:29:43', '2022-04-21 16:29:43'),
(958, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '[]', '2022-04-21 16:29:46', '2022-04-21 16:29:46'),
(959, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '[]', '2022-04-21 16:30:32', '2022-04-21 16:30:32'),
(960, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '[]', '2022-04-21 16:31:07', '2022-04-21 16:31:07'),
(961, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-21 16:31:13', '2022-04-21 16:31:13'),
(962, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"2","pId":[{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"1"}],"pPrice":[{"name":"form_price[]","value":"12312"}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:31:17', '2022-04-21 16:31:17'),
(963, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:32:29', '2022-04-21 16:32:29'),
(964, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:32:33', '2022-04-21 16:32:33'),
(965, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:35:26', '2022-04-21 16:35:26'),
(966, 1, 'admin/shop_order_edit/2', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:41:05', '2022-04-21 16:41:05'),
(967, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:41:09', '2022-04-21 16:41:09'),
(968, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:41:11', '2022-04-21 16:41:11'),
(969, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:44:10', '2022-04-21 16:44:10'),
(970, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:44:11', '2022-04-21 16:44:11'),
(971, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:44:13', '2022-04-21 16:44:13'),
(972, 1, 'admin/shop_order', 'POST', '127.0.0.1', '{"user_id":"0","toname":"1","address1":"H\\u00e0 N\\u1ed9i","address2":"B\\u1eafc T\\u1eeb Li\\u00eam","phone":"12312321321","comment":"321312312312 fsdfasdfasdf","status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order"}', '2022-04-21 16:44:31', '2022-04-21 16:44:31'),
(973, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:44:31', '2022-04-21 16:44:31'),
(974, 1, 'admin/shop_order_edit/3', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:44:35', '2022-04-21 16:44:35'),
(975, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-21 16:44:40', '2022-04-21 16:44:40'),
(976, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"3","pId":[{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"1"}],"pPrice":[{"name":"form_price[]","value":"12312"}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 16:44:41', '2022-04-21 16:44:41'),
(977, 1, 'admin/shop_order_edit/3', 'GET', '127.0.0.1', '[]', '2022-04-21 16:44:41', '2022-04-21 16:44:41'),
(978, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:44:48', '2022-04-21 16:44:48'),
(979, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","_export_":"all"}', '2022-04-21 16:44:55', '2022-04-21 16:44:55'),
(980, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","_export_":"page:1"}', '2022-04-21 16:45:05', '2022-04-21 16:45:05'),
(981, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '[]', '2022-04-21 16:45:45', '2022-04-21 16:45:45'),
(982, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:45:47', '2022-04-21 16:45:47'),
(983, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:46:21', '2022-04-21 16:46:21'),
(984, 1, 'admin/shop_order_edit/3', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:46:23', '2022-04-21 16:46:23'),
(985, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:46:32', '2022-04-21 16:46:32'),
(986, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:46:42', '2022-04-21 16:46:42'),
(987, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:47:30', '2022-04-21 16:47:30'),
(988, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:47:56', '2022-04-21 16:47:56');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(989, 1, 'admin/shop_order_edit/3', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:48:02', '2022-04-21 16:48:02'),
(990, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:48:05', '2022-04-21 16:48:05'),
(991, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:48:50', '2022-04-21 16:48:50'),
(992, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:48:59', '2022-04-21 16:48:59'),
(993, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:00', '2022-04-21 16:49:00'),
(994, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:01', '2022-04-21 16:49:01'),
(995, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:02', '2022-04-21 16:49:02'),
(996, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:05', '2022-04-21 16:49:05'),
(997, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:10', '2022-04-21 16:49:10'),
(998, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:11', '2022-04-21 16:49:11'),
(999, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:14', '2022-04-21 16:49:14'),
(1000, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:20', '2022-04-21 16:49:20'),
(1001, 1, 'admin/shop_order_edit/3', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:49:29', '2022-04-21 16:49:29'),
(1002, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:51:00', '2022-04-21 16:51:00'),
(1003, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:51:02', '2022-04-21 16:51:02'),
(1004, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '[]', '2022-04-21 16:51:46', '2022-04-21 16:51:46'),
(1005, 1, 'admin/shop_order', 'POST', '127.0.0.1', '{"user_id":"0","toname":"\\u00e2","address1":"H\\u00e0 N\\u1ed9i","address2":"B\\u1eafc T\\u1eeb Li\\u00eam","phone":"21312321312","comment":"321321321","status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order_edit\\/1"}', '2022-04-21 16:51:55', '2022-04-21 16:51:55'),
(1006, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 16:51:55', '2022-04-21 16:51:55'),
(1007, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:52:15', '2022-04-21 16:52:15'),
(1008, 1, 'admin/shop_order_edit/4', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:52:19', '2022-04-21 16:52:19'),
(1009, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:52:38', '2022-04-21 16:52:38'),
(1010, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:53:06', '2022-04-21 16:53:06'),
(1011, 1, 'admin/shop_order', 'POST', '127.0.0.1', '{"user_id":"0","toname":"\\u00e2","address1":"321321","address2":"321321","phone":"3213123123_","comment":"312312321321","status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order"}', '2022-04-21 16:53:17', '2022-04-21 16:53:17'),
(1012, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:53:17', '2022-04-21 16:53:17'),
(1013, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:53:22', '2022-04-21 16:53:22'),
(1014, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:53:29', '2022-04-21 16:53:29'),
(1015, 1, 'admin/shop_order', 'POST', '127.0.0.1', '{"user_id":"0","toname":"\\u00e2","address1":"H\\u00e0 N\\u1ed9i","address2":"B\\u1eafc T\\u1eeb Li\\u00eam","phone":"32131232132","comment":"321312321","status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order"}', '2022-04-21 16:53:37', '2022-04-21 16:53:37'),
(1016, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:53:37', '2022-04-21 16:53:37'),
(1017, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:54:24', '2022-04-21 16:54:24'),
(1018, 1, 'admin/shop_order/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:54:25', '2022-04-21 16:54:25'),
(1019, 1, 'admin/shop_order', 'POST', '127.0.0.1', '{"user_id":"0","toname":"\\u00e2","address1":"H\\u00e0 N\\u1ed9i","address2":"B\\u1eafc T\\u1eeb Li\\u00eam","phone":"3123123123_","comment":"321312312fasdfa","status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order"}', '2022-04-21 16:54:33', '2022-04-21 16:54:33'),
(1020, 1, 'admin/shop_order', 'POST', '127.0.0.1', '{"user_id":"0","toname":"\\u00e2","address1":"H\\u00e0 N\\u1ed9i","address2":"B\\u1eafc T\\u1eeb Li\\u00eam","phone":"3123123123_","comment":"321312312fasdfa","status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_order"}', '2022-04-21 16:54:41', '2022-04-21 16:54:41'),
(1021, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 16:55:06', '2022-04-21 16:55:06'),
(1022, 1, 'admin/shop_order_edit/8', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:56:55', '2022-04-21 16:56:55'),
(1023, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 16:57:13', '2022-04-21 16:57:13'),
(1024, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"1","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_edit_inline":"true"}', '2022-04-21 16:57:16', '2022-04-21 16:57:16'),
(1025, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_edit_inline":"true"}', '2022-04-21 16:57:17', '2022-04-21 16:57:17'),
(1026, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 16:59:43', '2022-04-21 16:59:43'),
(1027, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:00:21', '2022-04-21 17:00:21'),
(1028, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:02:33', '2022-04-21 17:02:33'),
(1029, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:02:37', '2022-04-21 17:02:37'),
(1030, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:03:22', '2022-04-21 17:03:22'),
(1031, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:03:32', '2022-04-21 17:03:32'),
(1032, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:03:47', '2022-04-21 17:03:47'),
(1033, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:05:53', '2022-04-21 17:05:53'),
(1034, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:06:07', '2022-04-21 17:06:07'),
(1035, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:07:05', '2022-04-21 17:07:05'),
(1036, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:07:09', '2022-04-21 17:07:09'),
(1037, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:16:01', '2022-04-21 17:16:01'),
(1038, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:16:06', '2022-04-21 17:16:06'),
(1039, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:16:37', '2022-04-21 17:16:37'),
(1040, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:18:53', '2022-04-21 17:18:53'),
(1041, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:20:52', '2022-04-21 17:20:52'),
(1042, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:24:18', '2022-04-21 17:24:18'),
(1043, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"1","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_edit_inline":"true"}', '2022-04-21 17:24:24', '2022-04-21 17:24:24'),
(1044, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"0","_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_edit_inline":"true"}', '2022-04-21 17:24:27', '2022-04-21 17:24:27'),
(1045, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:24:35', '2022-04-21 17:24:35'),
(1046, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:25:26', '2022-04-21 17:25:26'),
(1047, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:26:01', '2022-04-21 17:26:01'),
(1048, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-21 17:37:27', '2022-04-21 17:37:27'),
(1049, 1, 'admin/shop_category/28/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:37:30', '2022-04-21 17:37:30'),
(1050, 1, 'admin/shop_category/28/edit', 'GET', '127.0.0.1', '[]', '2022-04-21 17:37:58', '2022-04-21 17:37:58'),
(1051, 1, 'admin/shop_category/28/edit', 'GET', '127.0.0.1', '[]', '2022-04-21 17:38:22', '2022-04-21 17:38:22'),
(1052, 1, 'admin/shop_category/28/edit', 'GET', '127.0.0.1', '[]', '2022-04-21 17:38:30', '2022-04-21 17:38:30'),
(1053, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:39:18', '2022-04-21 17:39:18'),
(1054, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:39:24', '2022-04-21 17:39:24'),
(1055, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 17:40:08', '2022-04-21 17:40:08'),
(1056, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-21 17:40:32', '2022-04-21 17:40:32'),
(1057, 1, 'admin/shop_order_edit/8', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:40:38', '2022-04-21 17:40:38'),
(1058, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-21 17:40:46', '2022-04-21 17:40:46'),
(1059, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"8","pId":[{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"1"}],"pPrice":[{"name":"form_price[]","value":"12312"}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 17:40:49', '2022-04-21 17:40:49'),
(1060, 1, 'admin/shop_order_edit/8', 'GET', '127.0.0.1', '[]', '2022-04-21 17:40:49', '2022-04-21 17:40:49'),
(1061, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 17:40:54', '2022-04-21 17:40:54'),
(1062, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:41:01', '2022-04-21 17:41:01'),
(1063, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:41:11', '2022-04-21 17:41:11'),
(1064, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-21 17:41:14', '2022-04-21 17:41:14'),
(1065, 1, 'admin/shop_order_edit', 'POST', '127.0.0.1', '{"addItem-form":"1","pId":[{"name":"form_id[]","value":"1"}],"pQty":[{"name":"form_qty[]","value":"1"}],"pPrice":[{"name":"form_price[]","value":"12312"}],"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5"}', '2022-04-21 17:41:21', '2022-04-21 17:41:21'),
(1066, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-21 17:41:21', '2022-04-21 17:41:21'),
(1067, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 17:41:30', '2022-04-21 17:41:30'),
(1068, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 17:41:31', '2022-04-21 17:41:31'),
(1069, 1, 'admin/shop_product/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:41:35', '2022-04-21 17:41:35'),
(1070, 1, 'admin/shop_product/1', 'PUT', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"28","category_other":["28",null],"keyword":["adfa",null],"description":"adfasdf","content":"<p>adsfasdfasdfasdf<\\/p>","price":"12312","cost":"312312","stock":"50","sku":"312312","brand_id":"7","status":"on","sort":"11","type":"0","date_available":null,"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-21 17:41:43', '2022-04-21 17:41:43'),
(1071, 1, 'admin/shop_product/1', 'PUT', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"28","category_other":["28",null],"keyword":["adfa",null],"description":"adfasdf","content":"<p>adsfasdfasdfasdf<\\/p>","price":"12312","cost":"312312","stock":"50","sku":"312312","brand_id":"7","status":"on","sort":"11","type":"0","date_available":null,"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-21 17:41:49', '2022-04-21 17:41:49'),
(1072, 1, 'admin/shop_product/1', 'GET', '127.0.0.1', '[]', '2022-04-21 17:42:01', '2022-04-21 17:42:01'),
(1073, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:42:06', '2022-04-21 17:42:06'),
(1074, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:42:10', '2022-04-21 17:42:10'),
(1075, 1, 'admin/shop_product/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:42:14', '2022-04-21 17:42:14'),
(1076, 1, 'admin/shop_product/1', 'PUT', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"28","category_other":["28",null],"keyword":["adfa",null],"description":"adfasdf","content":"<p>adsfasdfasdfasdf<\\/p>","price":"12312","cost":"312312","stock":"51","sku":"312312","brand_id":"7","status":"on","sort":"11","type":"0","date_available":null,"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-21 17:42:19', '2022-04-21 17:42:19'),
(1077, 1, 'admin/shop_product/1', 'GET', '127.0.0.1', '[]', '2022-04-21 17:42:47', '2022-04-21 17:42:47'),
(1078, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:42:51', '2022-04-21 17:42:51'),
(1079, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:42:54', '2022-04-21 17:42:54'),
(1080, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"PHUNG NHAT TUNG","category_id":"28","category_other":["28",null],"keyword":["asdf",null],"description":"\\u00e0dsfasfasdf","content":"<p>dfasdf<\\/p>","price":"44444","cost":"44444","stock":"100","sku":"BC00132","brand_id":"7","status":"on","sort":"NaN","type":"0","date_available":null,"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-21 17:43:39', '2022-04-21 17:43:39'),
(1081, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 17:44:06', '2022-04-21 17:44:06'),
(1082, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-21 17:44:09', '2022-04-21 17:44:09'),
(1083, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"B\\u1eafp c\\u1ea3i","category_id":"28","category_other":[null],"keyword":["fasdfas",null],"description":"fsdfasdf","content":"<p>asdfasdfasdf asdf asdfasdf asdf asd fasdf asdf asdfasdfas dfasd fasd<\\/p>","price":"10000","cost":"10000","stock":"NaN","sku":"BC001","brand_id":"7","status":"on","sort":"1","type":"0","date_available":null,"_token":"xzHidF0Bkj2o0tQbu0TPYDx7CFdLpCHElSw1wCO5","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/shop_product"}', '2022-04-21 17:44:47', '2022-04-21 17:44:47'),
(1084, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-21 17:44:47', '2022-04-21 17:44:47'),
(1085, 1, 'admin/shop_order_edit/1', 'GET', '127.0.0.1', '[]', '2022-04-22 12:42:11', '2022-04-22 12:42:11'),
(1086, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:42:24', '2022-04-22 12:42:24'),
(1087, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:42:30', '2022-04-22 12:42:30'),
(1088, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:42:32', '2022-04-22 12:42:32'),
(1089, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:42:41', '2022-04-22 12:42:41'),
(1090, 1, 'admin/config_info', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:42:43', '2022-04-22 12:42:43'),
(1091, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:42:46', '2022-04-22 12:42:46'),
(1092, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:42:57', '2022-04-22 12:42:57'),
(1093, 1, 'admin/shop_order_edit/8', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:42:58', '2022-04-22 12:42:58'),
(1094, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 12:43:02', '2022-04-22 12:43:02'),
(1095, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-22 18:15:16', '2022-04-22 18:15:16'),
(1096, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:15:47', '2022-04-22 18:15:47'),
(1097, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:15:53', '2022-04-22 18:15:53'),
(1098, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:20:16', '2022-04-22 18:20:16'),
(1099, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:20:18', '2022-04-22 18:20:18'),
(1100, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"1","_token":"ul2vwKaDbylvqQty4CCY1iZxoH13VhtGPdX8L2e8","_method":"PUT","_edit_inline":"true"}', '2022-04-22 18:20:19', '2022-04-22 18:20:19'),
(1101, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"0","_token":"ul2vwKaDbylvqQty4CCY1iZxoH13VhtGPdX8L2e8","_method":"PUT","_edit_inline":"true"}', '2022-04-22 18:20:20', '2022-04-22 18:20:20'),
(1102, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-22 18:21:43', '2022-04-22 18:21:43'),
(1103, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-22 18:21:45', '2022-04-22 18:21:45'),
(1104, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-22 18:22:08', '2022-04-22 18:22:08'),
(1105, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-22 18:22:11', '2022-04-22 18:22:11'),
(1106, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-22 18:22:22', '2022-04-22 18:22:22'),
(1107, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-22 18:22:28', '2022-04-22 18:22:28'),
(1108, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:22:44', '2022-04-22 18:22:44'),
(1109, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:22:47', '2022-04-22 18:22:47'),
(1110, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:22:48', '2022-04-22 18:22:48'),
(1111, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-22 18:23:09', '2022-04-22 18:23:09'),
(1112, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-22 18:23:15', '2022-04-22 18:23:15'),
(1113, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-22 18:23:31', '2022-04-22 18:23:31'),
(1114, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-22 18:27:03', '2022-04-22 18:27:03'),
(1115, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:41:24', '2022-04-22 18:41:24'),
(1116, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:41:30', '2022-04-22 18:41:30'),
(1117, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 18:43:28', '2022-04-22 18:43:28'),
(1118, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:43:33', '2022-04-22 18:43:33'),
(1119, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 18:43:34', '2022-04-22 18:43:34'),
(1120, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"v2eImZDSSN7DMp59ME987mj9X2f72cNvrGa30ofT","type":"Images","_token":"ul2vwKaDbylvqQty4CCY1iZxoH13VhtGPdX8L2e8","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-22 18:43:46', '2022-04-22 18:43:46'),
(1121, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"321321","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/7d80fc9a90aca47f5a6fd8a5072a5a58e9598d168b8271540e6fa6516d809da0.png\\" style=\\"width: 300px; height: 300px;\\" \\/><\\/p>","status":"on","sort":"32","keyword":[null],"description":null,"_token":"ul2vwKaDbylvqQty4CCY1iZxoH13VhtGPdX8L2e8","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-22 18:43:59', '2022-04-22 18:43:59'),
(1122, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"321321","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/7d80fc9a90aca47f5a6fd8a5072a5a58e9598d168b8271540e6fa6516d809da0.png\\" style=\\"width: 300px; height: 300px;\\" \\/><\\/p>","status":"on","sort":"32","keyword":["3123",null],"description":null,"_token":"ul2vwKaDbylvqQty4CCY1iZxoH13VhtGPdX8L2e8","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-22 18:44:05', '2022-04-22 18:44:05'),
(1123, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 18:44:20', '2022-04-22 18:44:20'),
(1124, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 18:51:15', '2022-04-22 18:51:15'),
(1125, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 18:55:35', '2022-04-22 18:55:35'),
(1126, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 18:59:52', '2022-04-22 18:59:52'),
(1127, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:00:07', '2022-04-22 19:00:07'),
(1128, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:04:02', '2022-04-22 19:04:02'),
(1129, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:04:13', '2022-04-22 19:04:13'),
(1130, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:04:20', '2022-04-22 19:04:20'),
(1131, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:04:37', '2022-04-22 19:04:37'),
(1132, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:05:15', '2022-04-22 19:05:15'),
(1133, 1, 'admin/shop_order_edit/8', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:05:19', '2022-04-22 19:05:19'),
(1134, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:05:25', '2022-04-22 19:05:25'),
(1135, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:05:27', '2022-04-22 19:05:27'),
(1136, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-22 19:08:14', '2022-04-22 19:08:14'),
(1137, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-22 19:09:48', '2022-04-22 19:09:48'),
(1138, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:09:54', '2022-04-22 19:09:54'),
(1139, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:09:57', '2022-04-22 19:09:57'),
(1140, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:11:31', '2022-04-22 19:11:31'),
(1141, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:15:21', '2022-04-22 19:15:21'),
(1142, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:16:54', '2022-04-22 19:16:54'),
(1143, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:17:06', '2022-04-22 19:17:06'),
(1144, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-22 19:17:53', '2022-04-22 19:17:53'),
(1145, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:18:14', '2022-04-22 19:18:14'),
(1146, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-22 19:46:21', '2022-04-22 19:46:21'),
(1147, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2022-04-22 19:47:37', '2022-04-22 19:47:37'),
(1148, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:47:52', '2022-04-22 19:47:52'),
(1149, 1, 'admin/shop_order_edit/8', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:50:50', '2022-04-22 19:50:50'),
(1150, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:50:53', '2022-04-22 19:50:53'),
(1151, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:51:19', '2022-04-22 19:51:19'),
(1152, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:51:54', '2022-04-22 19:51:54'),
(1153, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-22 19:51:56', '2022-04-22 19:51:56'),
(1154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-23 06:23:35', '2022-04-23 06:23:35'),
(1155, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 06:23:42', '2022-04-23 06:23:42'),
(1156, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:26:23', '2022-04-23 06:26:23'),
(1157, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:26:32', '2022-04-23 06:26:32'),
(1158, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:26:38', '2022-04-23 06:26:38'),
(1159, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:27:08', '2022-04-23 06:27:08'),
(1160, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:27:31', '2022-04-23 06:27:31'),
(1161, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:27:57', '2022-04-23 06:27:57'),
(1162, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:28:32', '2022-04-23 06:28:32'),
(1163, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:28:55', '2022-04-23 06:28:55'),
(1164, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:29:23', '2022-04-23 06:29:23'),
(1165, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:29:49', '2022-04-23 06:29:49'),
(1166, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 06:29:54', '2022-04-23 06:29:54'),
(1167, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 06:29:56', '2022-04-23 06:29:56'),
(1168, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 06:30:07', '2022-04-23 06:30:07'),
(1169, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"1","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_method":"PUT","_edit_inline":"true"}', '2022-04-23 06:30:08', '2022-04-23 06:30:08'),
(1170, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:30:09', '2022-04-23 06:30:09'),
(1171, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"0","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_method":"PUT","_edit_inline":"true"}', '2022-04-23 06:30:11', '2022-04-23 06:30:11'),
(1172, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:30:11', '2022-04-23 06:30:11'),
(1173, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:30:17', '2022-04-23 06:30:17'),
(1174, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-23 06:36:48', '2022-04-23 06:36:48'),
(1175, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 06:38:53', '2022-04-23 06:38:53'),
(1176, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 06:38:57', '2022-04-23 06:38:57'),
(1177, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 06:38:59', '2022-04-23 06:38:59'),
(1178, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"gocJa0yKd4s2HuMwoJYqwRGpnAFgQ87iPBQ08WJ9","type":"Images","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-23 06:39:09', '2022-04-23 06:39:09'),
(1179, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"111","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/139e4945b3dd9c56a84b9647b26c3243565da80cfc88a879e22531cfb0bff22f.png\\" style=\\"width: 300px; height: 300px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":[null],"description":null,"_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-23 06:39:39', '2022-04-23 06:39:39'),
(1180, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"111","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/139e4945b3dd9c56a84b9647b26c3243565da80cfc88a879e22531cfb0bff22f.png\\" style=\\"width: 300px; height: 300px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":["aaa",null],"description":null,"_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-23 06:39:47', '2022-04-23 06:39:47'),
(1181, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"111","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/139e4945b3dd9c56a84b9647b26c3243565da80cfc88a879e22531cfb0bff22f.png\\" style=\\"width: 300px; height: 300px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":["aaa",null],"description":null,"_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-23 06:39:50', '2022-04-23 06:39:50'),
(1182, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"111","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/139e4945b3dd9c56a84b9647b26c3243565da80cfc88a879e22531cfb0bff22f.png\\" style=\\"width: 300px; height: 300px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":["aaa",null],"description":"safadf","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-23 06:40:04', '2022-04-23 06:40:04'),
(1183, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"111","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/139e4945b3dd9c56a84b9647b26c3243565da80cfc88a879e22531cfb0bff22f.png\\" style=\\"width: 300px; height: 300px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":["aaa",null],"description":"safadf","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-23 06:40:05', '2022-04-23 06:40:05'),
(1184, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"111","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/139e4945b3dd9c56a84b9647b26c3243565da80cfc88a879e22531cfb0bff22f.png\\" style=\\"width: 300px; height: 300px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":["aaa",null],"description":"safadf","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-23 06:40:06', '2022-04-23 06:40:06'),
(1185, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-23 06:40:07', '2022-04-23 06:40:07'),
(1186, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-23 06:40:34', '2022-04-23 06:40:34'),
(1187, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"8","_model":"App_Models_CmsNews","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-23 06:40:37', '2022-04-23 06:40:37'),
(1188, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"8","_model":"App_Models_CmsNews","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-23 06:40:40', '2022-04-23 06:40:40'),
(1189, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"6","_model":"App_Models_CmsNews","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-23 06:40:43', '2022-04-23 06:40:43'),
(1190, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"7","_model":"App_Models_CmsNews","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-23 06:40:46', '2022-04-23 06:40:46'),
(1191, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"4","_model":"App_Models_CmsNews","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-23 06:40:53', '2022-04-23 06:40:53'),
(1192, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-23 06:40:55', '2022-04-23 06:40:55'),
(1193, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"2","_model":"App_Models_CmsNews","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-23 06:40:58', '2022-04-23 06:40:58'),
(1194, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"3","_model":"App_Models_CmsNews","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-23 06:41:01', '2022-04-23 06:41:01'),
(1195, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-23 06:41:05', '2022-04-23 06:41:05'),
(1196, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 06:41:13', '2022-04-23 06:41:13'),
(1197, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"gocJa0yKd4s2HuMwoJYqwRGpnAFgQ87iPBQ08WJ9","type":"Images","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-23 06:41:27', '2022-04-23 06:41:27'),
(1198, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"ADFASF","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/6fce8c4e2e1c4ae3e9d6917de634b2aec6b47256a3380b256c3f77328cb41f50.jpg\\" style=\\"width: 760px; height: 760px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":["adf",null],"description":"adsfsa asdfas asdfas","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-23 06:41:42', '2022-04-23 06:41:42'),
(1199, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-23 06:42:25', '2022-04-23 06:42:25'),
(1200, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 06:42:27', '2022-04-23 06:42:27'),
(1201, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"gocJa0yKd4s2HuMwoJYqwRGpnAFgQ87iPBQ08WJ9","type":"Images","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-23 06:42:37', '2022-04-23 06:42:37'),
(1202, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"safasdf","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/1661df8162ccebfb1c4892a1a371f5e81f148164232c44d6a1c51abbdbc83a05.jpg\\" style=\\"width: 760px; height: 760px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":["asdf",null],"description":"fsdafasdf asd fasd","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-23 06:42:46', '2022-04-23 06:42:46'),
(1203, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-23 06:42:46', '2022-04-23 06:42:46'),
(1204, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-23 06:43:04', '2022-04-23 06:43:04'),
(1205, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 07:27:36', '2022-04-23 07:27:36'),
(1206, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"1","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_method":"PUT","_edit_inline":"true"}', '2022-04-23 07:27:39', '2022-04-23 07:27:39'),
(1207, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 07:27:39', '2022-04-23 07:27:39'),
(1208, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"1","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_method":"PUT","_edit_inline":"true"}', '2022-04-23 07:27:40', '2022-04-23 07:27:40'),
(1209, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 07:27:40', '2022-04-23 07:27:40'),
(1210, 1, 'admin/shop_category/28', 'PUT', '127.0.0.1', '{"status":"0","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_method":"PUT","_edit_inline":"true"}', '2022-04-23 07:27:42', '2022-04-23 07:27:42'),
(1211, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 07:27:42', '2022-04-23 07:27:42'),
(1212, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 08:04:40', '2022-04-23 08:04:40'),
(1213, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 08:55:49', '2022-04-23 08:55:49'),
(1214, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-23 10:15:12', '2022-04-23 10:15:12'),
(1215, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 10:15:15', '2022-04-23 10:15:15'),
(1216, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","_export_":"all"}', '2022-04-23 10:15:17', '2022-04-23 10:15:17'),
(1217, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:16:03', '2022-04-23 10:16:03'),
(1218, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:16:04', '2022-04-23 10:16:04'),
(1219, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:18:17', '2022-04-23 10:18:17'),
(1220, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:18:19', '2022-04-23 10:18:19'),
(1221, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:18:39', '2022-04-23 10:18:39'),
(1222, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:18:42', '2022-04-23 10:18:42'),
(1223, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:20:20', '2022-04-23 10:20:20'),
(1224, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:20:21', '2022-04-23 10:20:21'),
(1225, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 10:20:53', '2022-04-23 10:20:53'),
(1226, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","_export_":"all"}', '2022-04-23 10:20:54', '2022-04-23 10:20:54'),
(1227, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:21:22', '2022-04-23 10:21:22'),
(1228, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:21:34', '2022-04-23 10:21:34'),
(1229, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:21:37', '2022-04-23 10:21:37'),
(1230, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_export_":"page:1"}', '2022-04-23 10:21:49', '2022-04-23 10:21:49'),
(1231, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:27:28', '2022-04-23 10:27:28'),
(1232, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:27:30', '2022-04-23 10:27:30'),
(1233, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:27:58', '2022-04-23 10:27:58'),
(1234, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:28:19', '2022-04-23 10:28:19'),
(1235, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:28:21', '2022-04-23 10:28:21'),
(1236, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:28:31', '2022-04-23 10:28:31'),
(1237, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:28:35', '2022-04-23 10:28:35'),
(1238, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '[]', '2022-04-23 10:29:53', '2022-04-23 10:29:53'),
(1239, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 10:29:59', '2022-04-23 10:29:59'),
(1240, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:30:07', '2022-04-23 10:30:07'),
(1241, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:30:15', '2022-04-23 10:30:15'),
(1242, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:30:23', '2022-04-23 10:30:23'),
(1243, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:30:26', '2022-04-23 10:30:26'),
(1244, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:30:29', '2022-04-23 10:30:29'),
(1245, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:30:46', '2022-04-23 10:30:46'),
(1246, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:38:17', '2022-04-23 10:38:17'),
(1247, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:38:34', '2022-04-23 10:38:34'),
(1248, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:38:45', '2022-04-23 10:38:45'),
(1249, 1, 'admin/shop_order/8', 'PUT', '127.0.0.1', '{"name":"status","value":"5","pk":"8","_token":"bdH5mkJpzsVFkTPaKJyZJsB6uwPig644p9eEnuRS","_editable":"1","_method":"PUT"}', '2022-04-23 10:38:50', '2022-04-23 10:38:50'),
(1250, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:38:54', '2022-04-23 10:38:54'),
(1251, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:39:22', '2022-04-23 10:39:22'),
(1252, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:39:45', '2022-04-23 10:39:45'),
(1253, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:39:54', '2022-04-23 10:39:54'),
(1254, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:40:07', '2022-04-23 10:40:07'),
(1255, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:40:09', '2022-04-23 10:40:09'),
(1256, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:43:21', '2022-04-23 10:43:21'),
(1257, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:43:50', '2022-04-23 10:43:50'),
(1258, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:43:52', '2022-04-23 10:43:52'),
(1259, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:44:57', '2022-04-23 10:44:57'),
(1260, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:44:59', '2022-04-23 10:44:59'),
(1261, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:47:35', '2022-04-23 10:47:35'),
(1262, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:47:36', '2022-04-23 10:47:36'),
(1263, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 10:47:50', '2022-04-23 10:47:50'),
(1264, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_export_":"all"}', '2022-04-23 10:47:51', '2022-04-23 10:47:51'),
(1265, 1, 'admin/shop_order', 'GET', '127.0.0.1', '[]', '2022-04-23 13:05:03', '2022-04-23 13:05:03'),
(1266, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-23 18:08:56', '2022-04-23 18:08:56'),
(1267, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 18:09:00', '2022-04-23 18:09:00'),
(1268, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 18:09:09', '2022-04-23 18:09:09'),
(1269, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-23 18:09:17', '2022-04-23 18:09:17'),
(1270, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"zn4flyexhgPQFRBtSuCqytqDHCbcnNLfSFibi3lA","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-23 18:12:07', '2022-04-23 18:12:07'),
(1271, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-23 18:12:15', '2022-04-23 18:12:15'),
(1272, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"zn4flyexhgPQFRBtSuCqytqDHCbcnNLfSFibi3lA","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-23 18:12:29', '2022-04-23 18:12:29'),
(1273, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-24 07:39:31', '2022-04-24 07:39:31'),
(1274, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:39:39', '2022-04-24 07:39:39'),
(1275, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:39:41', '2022-04-24 07:39:41'),
(1276, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:39:49', '2022-04-24 07:39:49'),
(1277, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:39:52', '2022-04-24 07:39:52'),
(1278, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:42:13', '2022-04-24 07:42:13'),
(1279, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:42:16', '2022-04-24 07:42:16'),
(1280, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:42:18', '2022-04-24 07:42:18'),
(1281, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:42:22', '2022-04-24 07:42:22'),
(1282, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:48:30', '2022-04-24 07:48:30'),
(1283, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-24 07:55:28', '2022-04-24 07:55:28'),
(1284, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:55:32', '2022-04-24 07:55:32'),
(1285, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:55:36', '2022-04-24 07:55:36'),
(1286, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:55:39', '2022-04-24 07:55:39'),
(1287, 1, 'admin/shop_special_price/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:55:40', '2022-04-24 07:55:40'),
(1288, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":null}', '2022-04-24 07:55:40', '2022-04-24 07:55:40'),
(1289, 1, 'admin/getInfoProduct', 'GET', '127.0.0.1', '{"id":"1"}', '2022-04-24 07:55:47', '2022-04-24 07:55:47'),
(1290, 1, 'admin/shop_special_price', 'POST', '127.0.0.1', '{"product_id":"1","off":"10","price":"11080","status":"on","date_start":null,"date_end":null,"comment":null,"_token":"rPs39Lw0AJ3o66u18SihXeXaWnC8mQ9d9q4LT5FF","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/shop_special_price"}', '2022-04-24 07:56:02', '2022-04-24 07:56:02'),
(1291, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '[]', '2022-04-24 07:56:02', '2022-04-24 07:56:02'),
(1292, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:57:11', '2022-04-24 07:57:11'),
(1293, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:57:17', '2022-04-24 07:57:17'),
(1294, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:57:25', '2022-04-24 07:57:25'),
(1295, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:57:27', '2022-04-24 07:57:27'),
(1296, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 07:57:29', '2022-04-24 07:57:29'),
(1297, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"rPs39Lw0AJ3o66u18SihXeXaWnC8mQ9d9q4LT5FF","CKEditor":"content","CKEditorFuncNum":"180","langCode":"en"}', '2022-04-24 07:58:23', '2022-04-24 07:58:23'),
(1298, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"Th\\u1ecbt l\\u1ee3n t\\u01b0\\u01a1i 300gr","category_id":"28","category_other":[null],"keyword":["th\\u1ecbt l\\u1ee3n",null],"description":"Ch\\u00e2n gi\\u00f2 th\\u1ecbt si\\u00eau ngon","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/7b2cba4917d8281e6676e88d8a05c3526f75943bee82bc58231fcbe85d0868ac.png\\" style=\\"width: 900px; height: 900px;\\" \\/><\\/p>\\r\\n\\r\\n<p>Ph\\u1ea7n ch&acirc;n gi&ograve; th\\u1ecbt si&ecirc;u t\\u01b0\\u01a1i ngon \\u0111\\u01b0\\u1ee3c s\\u01a1 ch\\u1ebf.<br \\/>\\r\\nKh\\u1ed1i l\\u01b0\\u1ee3ng: 300gr,<br \\/>\\r\\nM&agrave;u s\\u1eafc :<br \\/>\\r\\nChi\\u1ec1u d&agrave;i: ...&nbsp;<\\/p>","price":"100000","cost":"100000","stock":"100","sku":"TL0001","brand_id":"7","status":"on","sort":null,"type":"2","date_available":"2022-04-24 00:00:00","_token":"rPs39Lw0AJ3o66u18SihXeXaWnC8mQ9d9q4LT5FF","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/shop_product"}', '2022-04-24 08:00:06', '2022-04-24 08:00:06'),
(1299, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '[]', '2022-04-24 08:00:07', '2022-04-24 08:00:07'),
(1300, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"Th\\u1ecbt l\\u1ee3n t\\u01b0\\u01a1i 300gr","category_id":"28","category_other":[null],"keyword":[null],"description":"Ch\\u00e2n gi\\u00f2 th\\u1ecbt si\\u00eau ngon","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/7b2cba4917d8281e6676e88d8a05c3526f75943bee82bc58231fcbe85d0868ac.png\\" style=\\"width: 900px; height: 900px;\\" \\/><\\/p>\\r\\n\\r\\n<p>Ph\\u1ea7n ch&acirc;n gi&ograve; th\\u1ecbt si&ecirc;u t\\u01b0\\u01a1i ngon \\u0111\\u01b0\\u1ee3c s\\u01a1 ch\\u1ebf.<br \\/>\\r\\nKh\\u1ed1i l\\u01b0\\u1ee3ng: 300gr,<br \\/>\\r\\nM&agrave;u s\\u1eafc :<br \\/>\\r\\nChi\\u1ec1u d&agrave;i: ...&nbsp;<\\/p>","price":"100000","cost":"100000","stock":"100","sku":"TL0001","brand_id":"7","status":"on","sort":"NaN","type":"2","date_available":"2022-04-24 00:00:00","_token":"rPs39Lw0AJ3o66u18SihXeXaWnC8mQ9d9q4LT5FF"}', '2022-04-24 08:00:20', '2022-04-24 08:00:20'),
(1301, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-24 08:00:21', '2022-04-24 08:00:21'),
(1302, 1, 'admin/shop_product/3', 'PUT', '127.0.0.1', '{"status":"0","_token":"rPs39Lw0AJ3o66u18SihXeXaWnC8mQ9d9q4LT5FF","_method":"PUT","_edit_inline":"true"}', '2022-04-24 08:00:32', '2022-04-24 08:00:32'),
(1303, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-24 08:00:33', '2022-04-24 08:00:33'),
(1304, 1, 'admin/shop_product/2', 'PUT', '127.0.0.1', '{"status":"0","_token":"rPs39Lw0AJ3o66u18SihXeXaWnC8mQ9d9q4LT5FF","_method":"PUT","_edit_inline":"true"}', '2022-04-24 08:00:33', '2022-04-24 08:00:33'),
(1305, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-24 08:00:33', '2022-04-24 08:00:33'),
(1306, 1, 'admin/shop_product/1', 'PUT', '127.0.0.1', '{"status":"0","_token":"rPs39Lw0AJ3o66u18SihXeXaWnC8mQ9d9q4LT5FF","_method":"PUT","_edit_inline":"true"}', '2022-04-24 08:00:33', '2022-04-24 08:00:33');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1307, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-04-24 08:00:33', '2022-04-24 08:00:33'),
(1308, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-04-24 15:05:59', '2022-04-24 15:05:59'),
(1309, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:06:09', '2022-04-24 15:06:09'),
(1310, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:06:19', '2022-04-24 15:06:19'),
(1311, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"qhOFas7HauOFog4TuxCDaUJbVQXgCtLVklpQw8xe","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-24 15:06:32', '2022-04-24 15:06:32'),
(1312, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":null,"content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/1a0ca51001aaeb1c62cf315f0041154979006e7da4bcd4c5791e2a8388ee1311.png\\" style=\\"width: 1193px; height: 454px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":["aa",null],"description":"aa","_token":"qhOFas7HauOFog4TuxCDaUJbVQXgCtLVklpQw8xe","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-04-24 15:06:48', '2022-04-24 15:06:48'),
(1313, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-24 15:06:48', '2022-04-24 15:06:48'),
(1314, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"asdsadas","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/1a0ca51001aaeb1c62cf315f0041154979006e7da4bcd4c5791e2a8388ee1311.png\\" style=\\"width: 1193px; height: 454px;\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":[null],"description":"aa","_token":"qhOFas7HauOFog4TuxCDaUJbVQXgCtLVklpQw8xe"}', '2022-04-24 15:06:52', '2022-04-24 15:06:52'),
(1315, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-24 15:06:52', '2022-04-24 15:06:52'),
(1316, 1, 'admin', 'GET', '::1', '[]', '2022-04-24 15:29:20', '2022-04-24 15:29:20'),
(1317, 1, 'admin', 'GET', '::1', '[]', '2022-04-24 15:31:54', '2022-04-24 15:31:54'),
(1318, 1, 'admin', 'GET', '::1', '[]', '2022-04-24 15:53:29', '2022-04-24 15:53:29'),
(1319, 1, 'admin', 'GET', '::1', '[]', '2022-04-24 15:54:09', '2022-04-24 15:54:09'),
(1320, 1, 'admin/cms_news', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:54:23', '2022-04-24 15:54:23'),
(1321, 1, 'admin/cms_news', 'GET', '::1', '[]', '2022-04-24 15:54:26', '2022-04-24 15:54:26'),
(1322, 1, 'admin/cms_news/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:54:34', '2022-04-24 15:54:34'),
(1323, 1, 'admin/cms_news/create', 'GET', '::1', '[]', '2022-04-24 15:56:00', '2022-04-24 15:56:00'),
(1324, 1, 'admin/shop_category', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:56:28', '2022-04-24 15:56:28'),
(1325, 1, 'admin/shop_category/28', 'PUT', '::1', '{"status":"1","_token":"uJVw75nLL7cLzZbuDOcJMzEe8MHYY8Tia0jqALN4","_method":"PUT","_edit_inline":"true"}', '2022-04-24 15:56:30', '2022-04-24 15:56:30'),
(1326, 1, 'admin/shop_category', 'GET', '::1', '[]', '2022-04-24 15:56:30', '2022-04-24 15:56:30'),
(1327, 1, 'admin/shop_category/28', 'PUT', '::1', '{"status":"0","_token":"uJVw75nLL7cLzZbuDOcJMzEe8MHYY8Tia0jqALN4","_method":"PUT","_edit_inline":"true"}', '2022-04-24 15:56:32', '2022-04-24 15:56:32'),
(1328, 1, 'admin/shop_category', 'GET', '::1', '[]', '2022-04-24 15:56:32', '2022-04-24 15:56:32'),
(1329, 1, 'admin/banner', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:56:35', '2022-04-24 15:56:35'),
(1330, 1, 'admin/banner/20', 'PUT', '::1', '{"status":"0","_token":"uJVw75nLL7cLzZbuDOcJMzEe8MHYY8Tia0jqALN4","_method":"PUT","_edit_inline":"true"}', '2022-04-24 15:56:36', '2022-04-24 15:56:36'),
(1331, 1, 'admin/banner', 'GET', '::1', '[]', '2022-04-24 15:56:36', '2022-04-24 15:56:36'),
(1332, 1, 'admin/banner/20', 'PUT', '::1', '{"status":"1","_token":"uJVw75nLL7cLzZbuDOcJMzEe8MHYY8Tia0jqALN4","_method":"PUT","_edit_inline":"true"}', '2022-04-24 15:56:37', '2022-04-24 15:56:37'),
(1333, 1, 'admin/banner', 'GET', '::1', '[]', '2022-04-24 15:56:38', '2022-04-24 15:56:38'),
(1334, 1, 'admin/banner', 'GET', '::1', '[]', '2022-04-24 15:56:40', '2022-04-24 15:56:40'),
(1335, 1, 'admin/cms_news', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:56:42', '2022-04-24 15:56:42'),
(1336, 1, 'admin/cms_news/11', 'PUT', '::1', '{"status":"0","_token":"uJVw75nLL7cLzZbuDOcJMzEe8MHYY8Tia0jqALN4","_method":"PUT","_edit_inline":"true"}', '2022-04-24 15:56:44', '2022-04-24 15:56:44'),
(1337, 1, 'admin/cms_news', 'GET', '::1', '[]', '2022-04-24 15:56:44', '2022-04-24 15:56:44'),
(1338, 1, 'admin/cms_news/11', 'PUT', '::1', '{"status":"1","_token":"uJVw75nLL7cLzZbuDOcJMzEe8MHYY8Tia0jqALN4","_method":"PUT","_edit_inline":"true"}', '2022-04-24 15:56:45', '2022-04-24 15:56:45'),
(1339, 1, 'admin/cms_news', 'GET', '::1', '[]', '2022-04-24 15:56:45', '2022-04-24 15:56:45'),
(1340, 1, 'admin/cms_news/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:56:46', '2022-04-24 15:56:46'),
(1341, 1, 'admin/cms_news', 'POST', '::1', '{"title":"adfasdfa","content":"<p>fadfasdf<\\/p>","status":"on","sort":"NaN","keyword":["asdfas",null],"description":"asdfasdf","_token":"uJVw75nLL7cLzZbuDOcJMzEe8MHYY8Tia0jqALN4","_previous_":"http:\\/\\/localhost\\/TungPNEconomic1\\/admin\\/cms_news"}', '2022-04-24 15:56:58', '2022-04-24 15:56:58'),
(1342, 1, 'admin/cms_news', 'GET', '::1', '[]', '2022-04-24 15:56:58', '2022-04-24 15:56:58'),
(1343, 1, 'admin/cms_news', 'GET', '::1', '[]', '2022-04-24 15:57:26', '2022-04-24 15:57:26'),
(1344, 1, 'admin/shop_order', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:57:38', '2022-04-24 15:57:38'),
(1345, 1, 'admin/shop_order_edit/8', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2022-04-24 15:57:39', '2022-04-24 15:57:39'),
(1346, 1, 'admin/shop_order_update', 'PUT', '::1', '{"name":"toname","value":"\\u00e2321312","pk":"8","_token":"uJVw75nLL7cLzZbuDOcJMzEe8MHYY8Tia0jqALN4","_editable":"1","_method":"PUT"}', '2022-04-24 15:57:43', '2022-04-24 15:57:43'),
(1347, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-25 13:15:13', '2022-04-25 13:15:13'),
(1348, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:15:17', '2022-04-25 13:15:17'),
(1349, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:17:44', '2022-04-25 13:17:44'),
(1350, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:17:46', '2022-04-25 13:17:46'),
(1351, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:18:42', '2022-04-25 13:18:42'),
(1352, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:19:35', '2022-04-25 13:19:35'),
(1353, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:19:37', '2022-04-25 13:19:37'),
(1354, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:19:39', '2022-04-25 13:19:39'),
(1355, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:19:41', '2022-04-25 13:19:41'),
(1356, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"12","_model":"App_Models_CmsNews","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-25 13:20:02', '2022-04-25 13:20:02'),
(1357, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"11","_model":"App_Models_CmsNews","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-25 13:20:07', '2022-04-25 13:20:07'),
(1358, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"9","_model":"App_Models_CmsNews","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-25 13:20:10', '2022-04-25 13:20:10'),
(1359, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"10","_model":"App_Models_CmsNews","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-25 13:20:13', '2022-04-25 13:20:13'),
(1360, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"1","_model":"App_Models_CmsNews","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-25 13:20:16', '2022-04-25 13:20:16'),
(1361, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"5","_model":"App_Models_CmsNews","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-25 13:20:19', '2022-04-25 13:20:19'),
(1362, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:20:20', '2022-04-25 13:20:20'),
(1363, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:20:22', '2022-04-25 13:20:22'),
(1364, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:20:36', '2022-04-25 13:20:36'),
(1365, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"21312","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/f6d50c23b494f6aad5b0e57cd37c74ef70cd3d9408448ab449ddccab13e7e147.png\\" \\/>&Aacute;DF<\\/p>","status":"on","sort":"NaN","keyword":["ASDF",null],"description":"FASDF \\u00c1DFADS","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/cms_news"}', '2022-04-25 13:20:55', '2022-04-25 13:20:55'),
(1366, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:20:55', '2022-04-25 13:20:55'),
(1367, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"13","_model":"App_Models_CmsNews","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-04-25 13:21:53', '2022-04-25 13:21:53'),
(1368, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:21:54', '2022-04-25 13:21:54'),
(1369, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:21:55', '2022-04-25 13:21:55'),
(1370, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:22:12', '2022-04-25 13:22:12'),
(1371, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"\\u00c1DFSD","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/49fe90a57d19a14c2aabfa9e2a10526425713c25ded90b108d9ba2b0e78b4866.png\\" \\/>321312<\\/p>","status":"on","sort":"NaN","keyword":[null],"description":"dfasfasd","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/cms_news"}', '2022-04-25 13:22:53', '2022-04-25 13:22:53'),
(1372, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:22:54', '2022-04-25 13:22:54'),
(1373, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:24:16', '2022-04-25 13:24:16'),
(1374, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:26:38', '2022-04-25 13:26:38'),
(1375, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:26:47', '2022-04-25 13:26:47'),
(1376, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":null,"content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/efc186e5601657e2a6916745fc4b42e08b6a9657107601198d0034291d106803.png\\" style=\\"width: 949px; height: 560px;\\" \\/><\\/p>","status":"on","sort":"1","keyword":["a",null],"description":null,"_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/cms_news"}', '2022-04-25 13:27:15', '2022-04-25 13:27:15'),
(1377, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:27:15', '2022-04-25 13:27:15'),
(1378, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"aafadsf","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/efc186e5601657e2a6916745fc4b42e08b6a9657107601198d0034291d106803.png\\" style=\\"width: 949px; height: 560px;\\" \\/><\\/p>","status":"on","sort":"1","keyword":["a dfa",null],"description":"adsfasd","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9"}', '2022-04-25 13:27:25', '2022-04-25 13:27:25'),
(1379, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:27:25', '2022-04-25 13:27:25'),
(1380, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:32:39', '2022-04-25 13:32:39'),
(1381, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:33:18', '2022-04-25 13:33:18'),
(1382, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:33:36', '2022-04-25 13:33:36'),
(1383, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:34:29', '2022-04-25 13:34:29'),
(1384, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:35:30', '2022-04-25 13:35:30'),
(1385, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:35:35', '2022-04-25 13:35:35'),
(1386, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:35:42', '2022-04-25 13:35:42'),
(1387, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:36:30', '2022-04-25 13:36:30'),
(1388, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:36:31', '2022-04-25 13:36:31'),
(1389, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:36:40', '2022-04-25 13:36:40'),
(1390, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":null,"content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/0271488a067718ea473fca1cf32051be962e8c1808e86d7c639efbfbba25984b.png\\" \\/><\\/p>","status":"on","sort":"NaN","keyword":[null],"description":null,"_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/cms_news"}', '2022-04-25 13:36:55', '2022-04-25 13:36:55'),
(1391, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:36:55', '2022-04-25 13:36:55'),
(1392, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:37:42', '2022-04-25 13:37:42'),
(1393, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:37:54', '2022-04-25 13:37:54'),
(1394, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:38:43', '2022-04-25 13:38:43'),
(1395, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:38:56', '2022-04-25 13:38:56'),
(1396, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:39:34', '2022-04-25 13:39:34'),
(1397, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:39:41', '2022-04-25 13:39:41'),
(1398, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:40:56', '2022-04-25 13:40:56'),
(1399, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:41:03', '2022-04-25 13:41:03'),
(1400, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:41:19', '2022-04-25 13:41:19'),
(1401, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:41:27', '2022-04-25 13:41:27'),
(1402, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-04-25 13:42:55', '2022-04-25 13:42:55'),
(1403, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"yNEU7dJFAVN4BrufXHxNs5j7fnl9TTUqykVWhup9","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 13:43:01', '2022-04-25 13:43:01'),
(1404, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 13:43:35', '2022-04-25 13:43:35'),
(1405, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 13:43:36', '2022-04-25 13:43:36'),
(1406, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-04-25 15:48:14', '2022-04-25 15:48:14'),
(1407, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 15:48:25', '2022-04-25 15:48:25'),
(1408, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 15:48:26', '2022-04-25 15:48:26'),
(1409, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-04-25 15:48:28', '2022-04-25 15:48:28'),
(1410, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-04-25 15:48:30', '2022-04-25 15:48:30'),
(1411, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"fBMrlX4u927Sut6K1YhitbaDtC0qulnT8IL7g5JZ","type":"Images","_token":"xNx9fTi71nXokm9jHp2SBSG7TkLbwUySjDNkD9bj","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-04-25 15:48:40', '2022-04-25 15:48:40'),
(1412, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:16:07', '2022-12-07 08:16:07'),
(1413, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:19:37', '2022-12-07 08:19:37'),
(1414, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:20:30', '2022-12-07 08:20:30'),
(1415, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:20:32', '2022-12-07 08:20:32'),
(1416, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:21:25', '2022-12-07 08:21:25'),
(1417, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:38:11', '2022-12-07 08:38:11'),
(1418, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:39:19', '2022-12-07 08:39:19'),
(1419, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:43:23', '2022-12-07 08:43:23'),
(1420, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:44:09', '2022-12-07 08:44:09'),
(1421, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:44:47', '2022-12-07 08:44:47'),
(1422, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 08:45:53', '2022-12-07 08:45:53'),
(1423, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:45:58', '2022-12-07 08:45:58'),
(1424, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:46:09', '2022-12-07 08:46:09'),
(1425, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:46:12', '2022-12-07 08:46:12'),
(1426, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:46:55', '2022-12-07 08:46:55'),
(1427, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:49:35', '2022-12-07 08:49:35'),
(1428, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-12-07 08:50:39', '2022-12-07 08:50:39'),
(1429, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:50:47', '2022-12-07 08:50:47'),
(1430, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:51:00', '2022-12-07 08:51:00'),
(1431, 1, 'admin/shop_product/4/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:51:09', '2022-12-07 08:51:09'),
(1432, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:51:46', '2022-12-07 08:51:46'),
(1433, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-12-07 08:52:12', '2022-12-07 08:52:12'),
(1434, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:52:20', '2022-12-07 08:52:20'),
(1435, 1, 'admin/shop_order_status', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:52:22', '2022-12-07 08:52:22'),
(1436, 1, 'admin/shop_order', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:52:25', '2022-12-07 08:52:25'),
(1437, 1, 'admin/shop_customer', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:52:27', '2022-12-07 08:52:27'),
(1438, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:52:33', '2022-12-07 08:52:33'),
(1439, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"15","_model":"App_Models_CmsNews","_token":"ZBkWACEi7IozSn09o3m3Kf2carwCjzbDCYr2nuEe","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-12-07 08:52:39', '2022-12-07 08:52:39'),
(1440, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:52:39', '2022-12-07 08:52:39'),
(1441, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{"_key":"14","_model":"App_Models_CmsNews","_token":"ZBkWACEi7IozSn09o3m3Kf2carwCjzbDCYr2nuEe","_action":"Encore_Admin_Grid_Actions_Delete","_input":"true"}', '2022-12-07 08:52:42', '2022-12-07 08:52:42'),
(1442, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:52:42', '2022-12-07 08:52:42'),
(1443, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-12-07 08:52:44', '2022-12-07 08:52:44'),
(1444, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:52:52', '2022-12-07 08:52:52'),
(1445, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-12-07 08:53:24', '2022-12-07 08:53:24'),
(1446, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:53:39', '2022-12-07 08:53:39'),
(1447, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:53:48', '2022-12-07 08:53:48'),
(1448, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:53:52', '2022-12-07 08:53:52'),
(1449, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:54:09', '2022-12-07 08:54:09'),
(1450, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:54:11', '2022-12-07 08:54:11'),
(1451, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-12-07 15:54:56', '2022-12-07 15:54:56'),
(1452, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 15:55:02', '2022-12-07 15:55:02'),
(1453, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 15:55:06', '2022-12-07 15:55:06'),
(1454, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '[]', '2022-12-07 15:55:26', '2022-12-07 15:55:26'),
(1455, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '[]', '2022-12-07 08:58:02', '2022-12-07 08:58:02'),
(1456, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:58:10', '2022-12-07 08:58:10'),
(1457, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 08:58:15', '2022-12-07 08:58:15'),
(1458, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"Vuj36T5Yy12r5BE1gb6XB10RTXxv6OM94xx6IP03","type":"Images","_token":"RfxJGBDQFtlIFCs4XAM5pE6wMq0WHE2bVHDl2zIe","CKEditor":"content","CKEditorFuncNum":"180","langCode":"en"}', '2022-12-07 08:59:49', '2022-12-07 08:59:49'),
(1459, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"B\\u00e0i vi\\u1ebft gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/e42b358a2e50e93479c49c0b5413f8d94cd710705a1b19b18babb914b6db14f7.png\\" style=\\"width: 1193px; height: 454px;\\" \\/><\\/p>","status":"on","sort":null,"keyword":[null],"description":null,"_token":"RfxJGBDQFtlIFCs4XAM5pE6wMq0WHE2bVHDl2zIe","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/cms_news"}', '2022-12-07 09:00:13', '2022-12-07 09:00:13'),
(1460, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-12-07 09:00:13', '2022-12-07 09:00:13'),
(1461, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"B\\u00e0i vi\\u1ebft gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/e42b358a2e50e93479c49c0b5413f8d94cd710705a1b19b18babb914b6db14f7.png\\" style=\\"width: 1193px; height: 454px;\\" \\/><\\/p>","status":"on","sort":"1","keyword":[null],"description":null,"_token":"RfxJGBDQFtlIFCs4XAM5pE6wMq0WHE2bVHDl2zIe"}', '2022-12-07 09:00:24', '2022-12-07 09:00:24'),
(1462, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-12-07 09:00:24', '2022-12-07 09:00:24'),
(1463, 1, 'admin/cms_news/16/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 09:00:28', '2022-12-07 09:00:28'),
(1464, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:02:32', '2022-12-07 16:02:32'),
(1465, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-12-07 16:07:34', '2022-12-07 16:07:34'),
(1466, 1, 'admin/shop_category/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:07:39', '2022-12-07 16:07:39'),
(1467, 1, 'admin/shop_category', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:07:46', '2022-12-07 16:07:46'),
(1468, 1, 'admin/shop_category/1', 'PUT', '127.0.0.1', '{"status":"1","_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","_method":"PUT","_edit_inline":"true"}', '2022-12-07 16:07:48', '2022-12-07 16:07:48'),
(1469, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-12-07 16:07:49', '2022-12-07 16:07:49'),
(1470, 1, 'admin/shop_category/1', 'PUT', '127.0.0.1', '{"status":"0","_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","_method":"PUT","_edit_inline":"true"}', '2022-12-07 16:07:50', '2022-12-07 16:07:50'),
(1471, 1, 'admin/shop_category', 'GET', '127.0.0.1', '[]', '2022-12-07 16:07:50', '2022-12-07 16:07:50'),
(1472, 1, 'admin/shop_special_price', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:07:58', '2022-12-07 16:07:58'),
(1473, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:08:05', '2022-12-07 16:08:05'),
(1474, 1, 'admin/shop_brand', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:08:07', '2022-12-07 16:08:07'),
(1475, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:08:08', '2022-12-07 16:08:08'),
(1476, 1, 'admin/shop_product', 'GET', '127.0.0.1', '[]', '2022-12-07 16:08:37', '2022-12-07 16:08:37'),
(1477, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:08:40', '2022-12-07 16:08:40'),
(1478, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"Vuj36T5Yy12r5BE1gb6XB10RTXxv6OM94xx6IP03","type":"Images","_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-12-07 16:20:40', '2022-12-07 16:20:40'),
(1479, 1, 'admin/shop_product', 'POST', '127.0.0.1', '{"name":"Rau c\\u1ea3i","category_id":"1","category_other":[null],"keyword":["rau cai","rau sa","rau sach",null],"description":"S\\u1ea3n ph\\u1ea9m rau c\\u1ea3i 100% kh\\u00f4ng phun thu\\u1ed1c tr\\u1eeb s\\u00e2u","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/92bb76e7a181b132e747040828a75f54563f67afcb8984d468211c4f59a49926.jpg\\" \\/>S\\u1ea3n ph\\u1ea9m abc xyzt&nbsp;<\\/p>","price":"30000","cost":"40000","stock":"100","sku":"CAIXANH18","brand_id":"7","status":"on","sort":"1","type":"0","date_available":null,"types":{"new_1":{"opt_name":null,"opt_sku":null,"opt_price":null,"id":null,"_remove_":"0"}},"_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/shop_product"}', '2022-12-07 16:22:56', '2022-12-07 16:22:56'),
(1480, 1, 'admin/shop_product/create', 'GET', '127.0.0.1', '[]', '2022-12-07 16:22:56', '2022-12-07 16:22:56'),
(1481, 1, 'admin/shop_product', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:23:01', '2022-12-07 16:23:01'),
(1482, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:23:09', '2022-12-07 16:23:09'),
(1483, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:23:14', '2022-12-07 16:23:14'),
(1484, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:23:18', '2022-12-07 16:23:18'),
(1485, 1, 'admin/cms_news/16/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:23:20', '2022-12-07 16:23:20'),
(1486, 1, 'admin/cms_news/16', 'PUT', '127.0.0.1', '{"title":"B\\u00e0i vi\\u1ebft gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/e42b358a2e50e93479c49c0b5413f8d94cd710705a1b19b18babb914b6db14f7.png\\" style=\\"width: 1193px; height: 454px;\\" \\/><\\/p>","status":"on","sort":"1","keyword":[null],"description":null,"_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-12-07 16:23:29', '2022-12-07 16:23:29'),
(1487, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-12-07 16:23:29', '2022-12-07 16:23:29'),
(1488, 1, 'admin/cms_news/16/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:23:32', '2022-12-07 16:23:32'),
(1489, 1, 'admin/cms_news/16/edit', 'GET', '127.0.0.1', '[]', '2022-12-07 16:24:21', '2022-12-07 16:24:21'),
(1490, 1, 'admin/cms_news/16', 'PUT', '127.0.0.1', '{"title":"B\\u00e0i vi\\u1ebft gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8000\\/documents\\/website\\/cms_content\\/e42b358a2e50e93479c49c0b5413f8d94cd710705a1b19b18babb914b6db14f7.png\\" style=\\"width: 1193px; height: 454px;\\" \\/><\\/p>","status":"on","sort":"1","keyword":["rau cai",null],"description":"Hello TUNGPN","_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","_method":"PUT"}', '2022-12-07 16:26:09', '2022-12-07 16:26:09'),
(1491, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-12-07 16:26:10', '2022-12-07 16:26:10'),
(1492, 1, 'admin/cms_news/16/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:26:12', '2022-12-07 16:26:12'),
(1493, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:36:31', '2022-12-07 16:36:31'),
(1494, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:36:37', '2022-12-07 16:36:37'),
(1495, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"B\\u00e0i vi\\u1ebft gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m 2","content":null,"status":"off","sort":null,"keyword":[null],"description":null,"_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","_previous_":"http:\\/\\/127.0.0.1:8080\\/admin\\/cms_news"}', '2022-12-07 16:36:51', '2022-12-07 16:36:51'),
(1496, 1, 'admin/cms_news/create', 'GET', '127.0.0.1', '[]', '2022-12-07 16:36:57', '2022-12-07 16:36:57'),
(1497, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"Vuj36T5Yy12r5BE1gb6XB10RTXxv6OM94xx6IP03","type":"Images","_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-12-07 16:37:17', '2022-12-07 16:37:17'),
(1498, 1, 'admin/documents/upload', 'POST', '127.0.0.1', '{"ckCsrfToken":"Vuj36T5Yy12r5BE1gb6XB10RTXxv6OM94xx6IP03","type":"Images","_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX","CKEditor":"content","CKEditorFuncNum":"1","langCode":"en"}', '2022-12-07 16:37:39', '2022-12-07 16:37:39'),
(1499, 1, 'admin/cms_news', 'POST', '127.0.0.1', '{"title":"B\\u00e0i vi\\u1ebft gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m 2","content":"<p><img alt=\\"\\" src=\\"http:\\/\\/127.0.0.1:8080\\/documents\\/website\\/cms_content\\/b1104a52cbfc76a468c54cda0d2ca5af773a3bb81705074492443e6243d990f0.jpg\\" \\/>B&agrave;i vi\\u1ebft 1-2-3-4-5-6-7-8-9-10<\\/p>","status":"on","sort":"2","keyword":["rau xanh",null],"description":"hi\\u1ec3n th\\u1ecb s\\u1ea3n ph\\u1ea9m 12345678","_token":"3ZW40gEdU4sHTc0OUvKDrE2Ik9yrWLma9CKhOKEX"}', '2022-12-07 16:38:17', '2022-12-07 16:38:17'),
(1500, 1, 'admin/cms_news', 'GET', '127.0.0.1', '[]', '2022-12-07 16:38:17', '2022-12-07 16:38:17'),
(1501, 1, 'admin/cms_news/17/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:38:21', '2022-12-07 16:38:21'),
(1502, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:38:24', '2022-12-07 16:38:24'),
(1503, 1, 'admin/cms_news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:38:51', '2022-12-07 16:38:51'),
(1504, 1, 'admin/cms_news/17/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2022-12-07 16:38:52', '2022-12-07 16:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, '2018-07-26 07:29:38'),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT,DELETE', '/auth/setting', NULL, '2018-08-25 04:19:26'),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin CMS', 'admin_cms', '', '/cms_news\r\n/cms_news/*\r\n/cms_page\r\n/cms_page/*', '2018-03-23 08:18:05', '2018-03-23 09:20:58'),
(7, 'Admin Shop', 'admin_shop', '', '/shop_*\r\n/getInfoProduct\r\n/shop_order_edit\r\n/shop_order_update', '2018-03-23 08:21:36', '2018-03-25 02:27:28'),
(8, 'Admin Config', 'admin_confi', '', '/config_*', '2018-03-23 08:25:02', '2018-03-23 08:25:02'),
(9, 'Manager Banner', 'banner', '', '/banner\r\n/banner/*', '2018-03-23 08:25:47', '2018-03-23 09:21:45');

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
(1, 'Administrator', 'administrator', '2018-01-12 10:27:40', '2018-01-12 10:27:40'),
(2, 'Admin', 'admin', '2018-01-12 11:02:33', '2018-01-12 11:02:33'),
(3, 'User', 'user', '2018-01-12 11:03:14', '2018-01-12 11:03:14'),
(4, 'Content', 'content', '2018-01-13 01:27:11', '2018-01-13 01:27:11');

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
(1, 15, NULL, NULL),
(2, 15, NULL, NULL);

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
(1, 1, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(4, 3, NULL, NULL),
(4, 4, NULL, NULL),
(2, 6, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL),
(2, 9, NULL, NULL);

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
(1, 1, NULL, NULL),
(3, 3, NULL, NULL);

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
(1, 'admin', '$2y$10$KZD7OLW2TVusUIpyj/gXw.EHJY1XqM7oLsD5TsRGsZDn4bF7X8fpS', 'Administrator', NULL, '6kMBW6SIFxIUdlnSrhCvERPmIV2F9FTW7voLbDpNVFV76v9KfbuF2By2F0qd', '2018-01-12 10:27:40', '2018-09-03 10:18:02'),
(3, 'user', '$2y$10$5XHIa1PBq5y5XYqaE1Va.ulyxN8QFaFXyTqTcotp4uZj.kjsYTKKO', 'User', NULL, NULL, '2018-01-12 11:05:28', '2018-01-12 11:05:28');

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
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `click` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `url`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
(18, 'banner/a1849d347e72bd5e53cc716275707a78.png', NULL, NULL, 1, 1, 0, 0, '2022-04-14 17:28:15', '2022-04-16 03:15:46'),
(19, 'banner/1dfadcf86899d3d3ebecdc8f78432a98.png', NULL, NULL, 1, 2, 0, 1, '2022-04-16 03:21:25', '2022-04-16 03:21:25'),
(20, 'banner/b43d57bac0f76d11156af180ce74e411.png', NULL, NULL, 1, 3, 0, 2, '2022-04-16 03:22:11', '2022-04-24 15:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `cms_category`
--

CREATE TABLE `cms_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(4) NOT NULL DEFAULT '0',
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_category`
--

INSERT INTO `cms_category` (`id`, `title`, `image`, `parent`, `keyword`, `description`, `uniquekey`, `sort`, `status`) VALUES
(1, 'Thời trang', 'cms_category/2ae26b97a9ae04d209acd33d2cf4b4fc.jpg', 0, 'chu-de-so-1', 'chu-de-so-1', 'chu-de-so-1', 0, 0),
(2, 'Giải trí', 'cms_category/a81accefc6a4f9417d8bd6742140a866.jpg', 0, 'Invoice,Template', 'chu-de-so-2', 'chu-de-so-2', 0, 1),
(3, 'Ẩm thực', 'cms_category/fd6fa3099b4e77989afd5cc99e637d67.jpg', 0, 'noi-dung-con', 'noi-dung-con', 'noi-dung-con', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_conten`
--

CREATE TABLE `cms_conten` (
  `id` int(11) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) UNSIGNED DEFAULT '0',
  `status` tinyint(4) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_conten`
--

INSERT INTO `cms_conten` (`id`, `category_id`, `title`, `image`, `keyword`, `description`, `content`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 'Giải trí', 'cms_content/6d92081ab17e3c11eb416005124a4a92.jpg', 'Invoice,Template', 'fdgdfg', '<p>fdgdfgdfgdfgdfgdfg fgfdg</p>\r\n\r\n<p>fghfgh</p>', 0, 1, '2018-02-09 20:22:10', '2018-09-01 14:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `cms_image`
--

CREATE TABLE `cms_image` (
  `id` int(11) NOT NULL,
  `content_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_image`
--

INSERT INTO `cms_image` (`id`, `content_id`, `image`, `sort`, `status`) VALUES
(1, 3, 'images/1f5eb6db2404b38b86e4246a792f3fac.png', 0, 0),
(2, 3, 'images/75be44c336696094632625d2d85159b1.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_news`
--

CREATE TABLE `cms_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_news`
--

INSERT INTO `cms_news` (`id`, `title`, `content`, `keyword`, `description`, `image`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Bài viết giới thiệu sản phẩm', '<p><img alt="" src="http://127.0.0.1:8000/documents/website/cms_content/e42b358a2e50e93479c49c0b5413f8d94cd710705a1b19b18babb914b6db14f7.png" style="width: 1193px; height: 454px;" /></p>', 'rau cai', 'Hello TUNGPN', 'cms_content/93f38cfe689f81c5aba4f44fbedd715e.jpg', 1, 1, '2022-12-07 09:00:24', '2022-12-07 16:26:09'),
(17, 'Bài viết giới thiệu sản phẩm 2', '<p><img alt="" src="http://127.0.0.1:8080/documents/website/cms_content/b1104a52cbfc76a468c54cda0d2ca5af773a3bb81705074492443e6243d990f0.jpg" />B&agrave;i viết 1-2-3-4-5-6-7-8-9-10</p>', 'rau xanh', 'hiển thị sản phẩm 12345678', 'cms_content/360c227fc7fe6ececc33379b75ed9524.jpg', 2, 1, '2022-12-07 16:38:17', '2022-12-07 16:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`id`, `title`, `image`, `keyword`, `description`, `content`, `uniquekey`, `status`) VALUES
(1, 'Trang chủ (sử dụng  nếu muốn đặt làm trang chủ)', '', NULL, NULL, NULL, 'trang-chu', 1),
(2, 'Giới thiệu', '', 'Giới thiệu website,hướng dẫn đặt hàng', 'Giới thiệu website', '<p><font color="#f39c12"><span style="font-size: 26px;"><b>Nội dung đang cập nhật</b></span></font></p>', 'gioi-thieu', 1),
(3, 'Nội dung thông báo cho người dùng', NULL, 'thông báo', NULL, '<h2>cập nhật</h2>', 'notice', 1),
(4, 'Liên hệ', NULL, 'liên hệ', NULL, '<p><strong>Vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i</strong></p>', 'lien-he', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `code`, `key`, `value`, `sort`, `detail`) VALUES
(1, 'info', 'site_title', 'Tản Đà Food', 1, 'Tiêu đề website'),
(2, 'info', 'site_keyword', 'keyword1', 2, 'Từ khóa'),
(3, 'info', 'site_description', 'description', 3, 'Mô tả website'),
(6, 'info', 'site_phone', '098.400.8996', 6, 'Số điện thoại của website'),
(7, 'info', 'site_address', 'Thái Hòa, Ba Vì, Hà Nội', 7, 'Địa chỉ'),
(8, 'info', 'site_email', 'tandafood@gmail.com', 8, 'Email liên hệ'),
(9, 'config', 'site_status', '1', 9, 'Bật/Tắt website'),
(10, 'config', 'shop_allow_guest', '1', 11, 'Cho phép mua hàng không cần đăng nhập'),
(11, 'info', 'smtp_host', '', 12, 'Server SMTP'),
(12, 'info', 'smtp_user', '', 13, 'Tài khoản SMTP'),
(13, 'info', 'smtp_password', '', 14, 'Mật khẩu SMTP'),
(14, 'info', 'smtp_security', '', 15, 'Giao thức bảo mật (tls,ssl)'),
(15, 'info', 'smtp_port', '', 16, 'Cổng SMTP'),
(16, 'config', 'smtp_mode', '0', 10, 'Tự cấu hình SMTP gửi mail'),
(17, 'config', 'product_display_special', '1', 17, 'Hiển thị cả giá gốc và giá khuyến mãi'),
(18, 'config', 'product_preorder', '1', 18, 'Cho phép đặt hàng trước (mua trước thời gian bán chính thức)'),
(19, 'config', 'product_display_out_of_stock', '1', 19, 'Hiển thị sản phẩm hết hàng'),
(20, 'config', 'product_buy_out_of_stock', '1', 20, 'Cho phép mua vượt stock, kể cả đã hết hàng'),
(21, 'info', 'site_fb_appID', '101471005872661', 22, 'ID app facebook'),
(22, 'config', 'show_date_avalid', '1', 21, 'Hiển thị ngày cho phép mua'),
(23, 'shipping', 'shipping_status', '1', 22, 'Sử dụng shipping'),
(24, 'config', 'promotion_mode', '1', 1, 'Sử dụng mã giảm giá'),
(25, 'config', 'PAYPAL_STATUS', '0', 0, 'Sử dụng paypal cho thanh toán'),
(26, 'info', 'site_phone_long', 'Sale: 098.400.8996', 6, 'Sô điện thoại dài');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{"displayName":"App\\\\Mail\\\\WelcomeEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Mail\\\\SendQueuedMailable","command":"O:34:\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\":3:{s:8:\\"mailable\\";O:21:\\"App\\\\Mail\\\\WelcomeEmail\\":19:{s:4:\\"from\\";a:0:{}s:2:\\"to\\";a:1:{i:0;a:2:{s:4:\\"name\\";N;s:7:\\"address\\";s:17:\\"lanhktc@gmail.com\\";}}s:2:\\"cc\\";a:0:{}s:3:\\"bcc\\";a:0:{}s:7:\\"replyTo\\";a:0:{}s:7:\\"subject\\";N;s:11:\\"\\u0000*\\u0000markdown\\";N;s:4:\\"view\\";N;s:8:\\"textView\\";N;s:8:\\"viewData\\";a:0:{}s:11:\\"attachments\\";a:0:{}s:14:\\"rawAttachments\\";a:0:{}s:9:\\"callbacks\\";a:0:{}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;}"}}', 0, NULL, 1522166893, 1522166893);

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
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2018_03_27_145238_create_jobs_table', 2),
(5, '2018_03_27_145322_create_failed_jobs_table', 2),
(6, '2016_05_17_221000_create_promocodes_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '$2y$10$Hig4bWDSh3NzYchxkAK5sOqNYs3dx2oYJMLZ5z6k.1bP91/kTYFyu', '2018-01-14 07:23:29'),
('lanhktc@gmail.com', '$2y$10$G/hr0KbnfvPzK4xRQ/9SiOzwVTxUACo3tPvd8vsgNsd2QKSkRJrCW', '2018-08-14 15:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `number_uses` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `used` int(11) NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode_user`
--

CREATE TABLE `promocode_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `promocode_id` int(10) UNSIGNED NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci,
  `used_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_attribute`
--

CREATE TABLE `shop_attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_attribute`
--

INSERT INTO `shop_attribute` (`id`, `name`, `value`) VALUES
(1, 'Màu sắc', 'Xanh,Đỏ,Vàng,Trắng'),
(2, 'Size', 'X,S,L');

-- --------------------------------------------------------

--
-- Table structure for table `shop_brand`
--

CREATE TABLE `shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_brand`
--

INSERT INTO `shop_brand` (`id`, `name`, `image`, `url`, `status`, `sort`) VALUES
(7, 'Tản Đà Food', 'brand/beef961916f0ae853614dc56d61de503.png', NULL, 1, 1),
(8, 'Đang cập nhật', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `image`, `keyword`, `uniquekey`, `description`, `parent`, `sort`, `status`) VALUES
(1, 'Rau sạch', NULL, NULL, NULL, NULL, 0, 1, 0),
(2, 'Thịt sạch', NULL, NULL, NULL, NULL, 0, 2, 0),
(3, 'Sữa tươi', NULL, NULL, NULL, NULL, 0, 3, 0),
(4, 'Đồ ăn nhanh', NULL, NULL, NULL, NULL, 0, 4, 0),
(5, 'Thủy sản', NULL, NULL, NULL, NULL, 0, 5, 0),
(6, 'Trái cây', NULL, NULL, NULL, NULL, 0, 6, 0),
(7, 'Đồ khô', NULL, NULL, NULL, NULL, 0, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_image`
--

CREATE TABLE `shop_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sort` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(2) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_image`
--

INSERT INTO `shop_image` (`id`, `image`, `product_id`, `sort`, `status`) VALUES
(82, 'product_slide/978d5992ff828e7a0391dbbc7cf02383.png', 38, 0, 0),
(83, 'product_slide/f4786d81509a8d8ffa461535b07c77bc.png', 38, 0, 0),
(84, 'product_slide/8d94e8b45b33e3f13dd5be5376ffd9f8.png', 39, 0, 0),
(87, 'product_slide/a2f94aa1837cdcad9e101618b3a8b131.png', 40, 0, 0),
(88, 'product_slide/81f37c10d867710075e3ab6153a31d03.png', 40, 0, 0),
(89, 'product_slide/1e758549544c3d02e618c44770944a1c.png', 42, 0, 0),
(90, 'product_slide/8718dfdb75f951010cdce669768c3e3a.png', 42, 0, 0),
(92, 'product_slide/555968c4c92f4ebed6b3cfbffa4d7b46.jpg', 43, 0, 0),
(93, 'product_slide/dbe75df3ad00c5e282e27e949542caf8.jpg', 43, 0, 0),
(94, 'product_slide/d8033da37b4864808ddc66f509d33591.jpg', 43, 0, 0),
(95, 'product_slide/bf698711a126af552a9b7ec26e5717d2.png', 44, 0, 0),
(96, 'product_slide/9621378ea3e33142ee2158fcd86c76a4.png', 45, 0, 0),
(102, 'product_slide/9d28a11ae7e4e6b16beffa765469d540.png', 48, 0, 0),
(103, 'product_slide/e1d55480c5aca361f54a4fc392073c52.png', 48, 0, 0),
(109, 'product_slide/bf4f360ac5c458c32f4597f0ff00493d.png', 49, 0, 0),
(112, 'product_slide/cdc0fcaeef1a846c9993a272c1518922.jpg', 54, 0, 0),
(113, 'product_slide/a213359e110b545e1940c9ae24118fde.png', 50, 0, 0),
(114, 'product_slide/319b14e1ec1a7714698fa76cedee5fb7.png', 51, 0, 0),
(115, 'product_slide/666555d95ea143b509f4e2368392ac0d.png', 53, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_option`
--

CREATE TABLE `shop_option` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1- radio, 2 -select, 3-text',
  `status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_option`
--

INSERT INTO `shop_option` (`id`, `name`, `type`, `status`, `sort`) VALUES
(1, 'Màu sắc', 1, 1, 0),
(2, 'Kích thước', 2, 1, 0),
(3, 'Chất liệu', 3, 1, 3),
(4, 'Cân nặng', 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_option_detail`
--

CREATE TABLE `shop_option_detail` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_option_detail`
--

INSERT INTO `shop_option_detail` (`id`, `name`, `add_price`, `option_id`, `product_id`) VALUES
(1, 'X', 0, 2, 0),
(2, 'XL', 10000, 2, 0),
(3, 'Đỏ', 0, 1, 0),
(4, 'Xanh', 10000, 1, 0),
(5, 'Vàng', 5000, 1, 0),
(24, 'Tím', 20000, 1, 15),
(47, 'Tìm', 0, 2, 16),
(48, 'Ok', 0, 2, 16),
(49, 'Xanh', 0, 1, 17),
(50, 'Do', 0, 1, 17),
(569, 'White/Đen', 0, 1, 9),
(570, 'Black/Đen', 0, 1, 9),
(571, 'Transparent/Trong suốt', 0, 1, 9),
(572, 'Red/Đỏ', 0, 1, 9),
(573, 'Yellow/Vàng', 0, 1, 9),
(574, 'Blue/Xanh Dương', 0, 1, 9),
(575, 'Green/Xanh Lá', 0, 1, 9),
(576, 'Orange/Cam', 0, 1, 9),
(577, 'Cyan/Lam', 0, 1, 9),
(578, 'Pink/Hồng', 0, 1, 9),
(579, 'Đường kính 1.75mm', 0, 2, 9),
(580, 'Đường kính 3mm', 0, 2, 9),
(581, 'S', 0, 2, 6),
(582, 'XL', 0, 2, 6),
(583, 'S', 0, 2, 5),
(584, 'XL', 0, 2, 5),
(585, 'XXX', 0, 2, 5),
(606, 'Màu xanh', 0, 1, 12),
(607, 'Màu đỏ', 0, 1, 12),
(608, 'Màu tím', 0, 1, 12),
(609, 'XL', 0, 2, 12),
(610, 'XXL', 0, 2, 12),
(621, 'Màu Trắng Đục', 0, 1, 34),
(622, 'Trong Suốt', 0, 1, 34),
(623, 'ID=2 mm, OD=4 mm', 0, 2, 34),
(624, 'ID=2 mm, OD=3 mm', 0, 2, 34),
(625, 'ID=3 mm, OD=4 mm', 0, 2, 34);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE `shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `subtotal` int(11) DEFAULT '0',
  `shipping` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `payment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-not send 1-pp send 2-sent',
  `shipping_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-notship 1-sending 2-pp send 3-shipped',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-new 1-processing 2-hold 3-cancel 4-Completed',
  `tax` tinyint(4) DEFAULT '0' COMMENT '%',
  `total` int(11) DEFAULT '0',
  `received` int(11) DEFAULT '0',
  `balance` int(11) DEFAULT '0',
  `toname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(3) DEFAULT NULL,
  `phone` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_detail`
--

CREATE TABLE `shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0' COMMENT 'Price: price of product or type',
  `qty` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `sku` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Attributes',
  `option` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_order_detail`
--

INSERT INTO `shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `total_price`, `sku`, `type`, `option`, `created_at`, `updated_at`) VALUES
(1, 1, 51, 'Thịt chân giò 1kg', 100000, 2, 200000, 'CG001', '[]', NULL, '2022-04-16 07:36:42', '2022-04-21 16:01:22'),
(7, 2, 1, 'Bắp cải', 12312, 1, 12312, '312312', NULL, NULL, NULL, NULL),
(8, 2, 1, 'Bắp cải', 12312, 1, 12312, '312312', NULL, NULL, NULL, NULL),
(9, 3, 1, 'Bắp cải', 12312, 1, 12312, '312312', NULL, NULL, NULL, NULL),
(10, 8, 1, 'Bắp cải', 12312, 1, 12312, '312312', NULL, NULL, NULL, NULL),
(11, 1, 1, 'Bắp cải', 12312, 1, 12312, '312312', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_history`
--

CREATE TABLE `shop_order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_order_history`
--

INSERT INTO `shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `user_id`, `add_date`) VALUES
(1, 1, 'New order', 0, 0, '2022-04-16 14:36:42'),
(2, 1, 'Chỉnh sửa sản phẩm #1', 1, 0, '2022-04-21 23:01:22'),
(3, 1, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-21 23:03:53'),
(4, 1, 'Thay đổi <b>address2</b> từ <span style="color:blue">''Bắc Từ Liêm''</span> thành <span style="color:red">''Bắc Từ Liêm 321312312312312312312312312312312312312''</span>', 1, 0, '2022-04-21 23:15:16'),
(5, 1, 'Thay đổi <b>address2</b> từ <span style="color:blue">''Bắc Từ Liêm 321312312312312312312312312312312312312''</span> thành <span style="color:red">''Bắc Từ Liêm''</span>', 1, 0, '2022-04-21 23:16:01'),
(6, 2, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-21 23:23:43'),
(7, 2, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-21 23:23:49'),
(8, 2, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-21 23:24:00'),
(9, 2, 'Xóa sản phẩm pID#6', 1, 0, '2022-04-21 23:24:08'),
(10, 2, 'Xóa sản phẩm pID#5', 1, 0, '2022-04-21 23:24:13'),
(11, 2, 'Xóa sản phẩm pID#4', 1, 0, '2022-04-21 23:24:28'),
(12, 1, 'Chỉnh sửa sản phẩm #2', 1, 0, '2022-04-21 23:24:50'),
(13, 1, 'Xóa sản phẩm pID#2', 1, 0, '2022-04-21 23:24:55'),
(14, 2, 'Xóa sản phẩm pID#3', 1, 0, '2022-04-21 23:25:05'),
(15, 2, 'Thay đổi <b>status</b> từ <span style="color:blue">''0''</span> thành <span style="color:red">''5''</span>', 1, 0, '2022-04-21 23:29:37'),
(16, 2, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-21 23:29:43'),
(17, 2, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-21 23:31:17'),
(18, 3, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-21 23:44:41'),
(19, 8, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-22 00:40:49'),
(20, 1, 'Thêm mới sản phẩm (Bắp cải)', 1, 0, '2022-04-22 00:41:21'),
(21, 8, 'Thay đổi <b>toname</b> từ <span style="color:blue">''â''</span> thành <span style="color:red">''â321312''</span>', 1, 0, '2022-04-24 22:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_status`
--

CREATE TABLE `shop_order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_order_status`
--

INSERT INTO `shop_order_status` (`id`, `name`) VALUES
(0, 'Mới'),
(5, 'Đang sử lý'),
(6, 'Đang giao'),
(7, 'Hủy bỏ'),
(8, 'Hoàn thành');

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_total`
--

CREATE TABLE `shop_order_total` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_order_total`
--

INSERT INTO `shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tổng tiền hàng', 'subtotal', 212312, 1, '2022-04-16 07:36:42', '2022-04-21 17:41:21'),
(2, 1, 'Phí giao hàng', 'shipping', 0, 10, '2022-04-16 07:36:42', NULL),
(3, 1, 'Giảm giá', 'discount', 0, 20, '2022-04-16 07:36:42', NULL),
(4, 1, 'Tổng tiền cần thanh toán', 'total', 212312, 100, '2022-04-16 07:36:42', '2022-04-21 17:41:21'),
(5, 1, 'Đã thanh toán', 'received', 0, 200, '2022-04-16 07:36:42', NULL),
(6, 3, 'Tổng tiền hàng', 'subtotal', 12312, 1, '2022-04-21 16:44:31', '2022-04-21 16:44:41'),
(7, 3, 'Phí giao hàng', 'shipping', 0, 10, '2022-04-21 16:44:31', NULL),
(8, 3, 'Giảm giá', 'discount', 0, 20, '2022-04-21 16:44:31', NULL),
(9, 3, 'Tổng tiền cần thanh toán', 'total', 12312, 100, '2022-04-21 16:44:31', '2022-04-21 16:44:41'),
(10, 3, 'Đã thanh toán', 'received', 0, 200, '2022-04-21 16:44:31', NULL),
(11, 4, 'Tổng tiền hàng', 'subtotal', 0, 1, '2022-04-21 16:51:55', NULL),
(12, 4, 'Phí giao hàng', 'shipping', 0, 10, '2022-04-21 16:51:55', NULL),
(13, 4, 'Giảm giá', 'discount', 0, 20, '2022-04-21 16:51:55', NULL),
(14, 4, 'Tổng tiền cần thanh toán', 'total', 0, 100, '2022-04-21 16:51:55', NULL),
(15, 4, 'Đã thanh toán', 'received', 0, 200, '2022-04-21 16:51:55', NULL),
(16, 5, 'Tổng tiền hàng', 'subtotal', 0, 1, '2022-04-21 16:53:17', NULL),
(17, 5, 'Phí giao hàng', 'shipping', 0, 10, '2022-04-21 16:53:17', NULL),
(18, 5, 'Giảm giá', 'discount', 0, 20, '2022-04-21 16:53:17', NULL),
(19, 5, 'Tổng tiền cần thanh toán', 'total', 0, 100, '2022-04-21 16:53:17', NULL),
(20, 5, 'Đã thanh toán', 'received', 0, 200, '2022-04-21 16:53:17', NULL),
(21, 6, 'Tổng tiền hàng', 'subtotal', 0, 1, '2022-04-21 16:53:37', NULL),
(22, 6, 'Phí giao hàng', 'shipping', 0, 10, '2022-04-21 16:53:37', NULL),
(23, 6, 'Giảm giá', 'discount', 0, 20, '2022-04-21 16:53:37', NULL),
(24, 6, 'Tổng tiền cần thanh toán', 'total', 0, 100, '2022-04-21 16:53:37', NULL),
(25, 6, 'Đã thanh toán', 'received', 0, 200, '2022-04-21 16:53:37', NULL),
(26, 7, 'Tổng tiền hàng', 'subtotal', 0, 1, '2022-04-21 16:54:33', NULL),
(27, 7, 'Phí giao hàng', 'shipping', 0, 10, '2022-04-21 16:54:33', NULL),
(28, 7, 'Giảm giá', 'discount', 0, 20, '2022-04-21 16:54:33', NULL),
(29, 7, 'Tổng tiền cần thanh toán', 'total', 0, 100, '2022-04-21 16:54:33', NULL),
(30, 7, 'Đã thanh toán', 'received', 0, 200, '2022-04-21 16:54:33', NULL),
(31, 8, 'Tổng tiền hàng', 'subtotal', 12312, 1, '2022-04-21 16:54:41', '2022-04-21 17:40:49'),
(32, 8, 'Phí giao hàng', 'shipping', 0, 10, '2022-04-21 16:54:41', NULL),
(33, 8, 'Giảm giá', 'discount', 0, 20, '2022-04-21 16:54:41', NULL),
(34, 8, 'Tổng tiền cần thanh toán', 'total', 12312, 100, '2022-04-21 16:54:41', '2022-04-21 17:40:49'),
(35, 8, 'Đã thanh toán', 'received', 0, 200, '2022-04-21 16:54:41', NULL),
(36, 8, 'Tổng tiền hàng', 'subtotal', 0, 1, '2022-04-23 10:38:50', NULL),
(37, 8, 'Phí giao hàng', 'shipping', 0, 10, '2022-04-23 10:38:50', NULL),
(38, 8, 'Giảm giá', 'discount', 0, 20, '2022-04-23 10:38:50', NULL),
(39, 8, 'Tổng tiền cần thanh toán', 'total', 0, 100, '2022-04-23 10:38:50', NULL),
(40, 8, 'Đã thanh toán', 'received', 0, 200, '2022-04-23 10:38:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_payment_status`
--

CREATE TABLE `shop_payment_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_payment_status`
--

INSERT INTO `shop_payment_status` (`id`, `name`) VALUES
(0, 'Chưa thanh toán'),
(1, 'Thanh toán một phần'),
(2, 'Thanh toán xong'),
(3, 'Khách hàng dư tiền');

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `brand_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `category_other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `cost` int(11) DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-Nomal 1-New 2-Hot',
  `option` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0- inactive 1-active ',
  `view` int(11) DEFAULT '0',
  `date_lastview` timestamp NULL DEFAULT NULL,
  `date_available` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_like`
--

CREATE TABLE `shop_product_like` (
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_recent_view`
--

CREATE TABLE `shop_product_recent_view` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_type`
--

CREATE TABLE `shop_product_type` (
  `id` int(11) NOT NULL,
  `opt_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_sku` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_price` int(11) DEFAULT NULL,
  `opt_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_shipping`
--

CREATE TABLE `shop_shipping` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_shipping`
--

INSERT INTO `shop_shipping` (`id`, `type`, `value`, `free`, `status`) VALUES
(1, 0, 20000, 10000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_shipping_address`
--

CREATE TABLE `shop_shipping_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(3) DEFAULT NULL,
  `phone` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_shipping_status`
--

CREATE TABLE `shop_shipping_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_shipping_status`
--

INSERT INTO `shop_shipping_status` (`id`, `name`) VALUES
(0, 'Chưa gửi'),
(1, 'Đang gửi'),
(2, 'Gửi xong');

-- --------------------------------------------------------

--
-- Table structure for table `shop_shoppingcart`
--

CREATE TABLE `shop_shoppingcart` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_special_price`
--

CREATE TABLE `shop_special_price` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `off` int(11) UNSIGNED NOT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_special_price`
--

INSERT INTO `shop_special_price` (`id`, `product_id`, `price`, `off`, `date_start`, `date_end`, `status`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 11080, 10, NULL, NULL, 1, NULL, '2022-04-24 07:56:02', '2022-04-24 07:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address1`, `address2`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'admin', 'tunghust99@gmail.com', '$2y$10$taPFHmYrKA10gZkl9qQA7ObDnOg9QUVS6Y8QK/zYCoIbmZMJFiniG', 'Hà Nội', 'Bắc Từ Liêm', '0984008996', 'ee7C14Ukg1qTHAbeFn3yKXhBdqErDj1KE7y5v82oBzwCU4sJzHxL35EJF6MV', '2022-04-19 14:04:48', '2022-04-21 15:29:43');

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
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

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
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_category`
--
ALTER TABLE `cms_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniquekey` (`uniquekey`);

--
-- Indexes for table `cms_conten`
--
ALTER TABLE `cms_conten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_image`
--
ALTER TABLE `cms_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_news`
--
ALTER TABLE `cms_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`uniquekey`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promocodes_code_unique` (`code`);

--
-- Indexes for table `promocode_user`
--
ALTER TABLE `promocode_user`
  ADD PRIMARY KEY (`user_id`,`promocode_id`),
  ADD KEY `promocode_user_promocode_id_foreign` (`promocode_id`);

--
-- Indexes for table `shop_attribute`
--
ALTER TABLE `shop_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_brand`
--
ALTER TABLE `shop_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_image`
--
ALTER TABLE `shop_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_option`
--
ALTER TABLE `shop_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_option_detail`
--
ALTER TABLE `shop_option_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order_detail`
--
ALTER TABLE `shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order_history`
--
ALTER TABLE `shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order_status`
--
ALTER TABLE `shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order_total`
--
ALTER TABLE `shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_payment_status`
--
ALTER TABLE `shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `shop_product_like`
--
ALTER TABLE `shop_product_like`
  ADD PRIMARY KEY (`product_id`,`users_id`);

--
-- Indexes for table `shop_product_recent_view`
--
ALTER TABLE `shop_product_recent_view`
  ADD UNIQUE KEY `customer_id_product_id` (`user_id`,`product_id`);

--
-- Indexes for table `shop_product_type`
--
ALTER TABLE `shop_product_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `opt_sku` (`opt_sku`);

--
-- Indexes for table `shop_shipping`
--
ALTER TABLE `shop_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_shipping_address`
--
ALTER TABLE `shop_shipping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_shipping_status`
--
ALTER TABLE `shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_shoppingcart`
--
ALTER TABLE `shop_shoppingcart`
  ADD KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`);

--
-- Indexes for table `shop_special_price`
--
ALTER TABLE `shop_special_price`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1505;
--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cms_category`
--
ALTER TABLE `cms_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cms_conten`
--
ALTER TABLE `cms_conten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cms_image`
--
ALTER TABLE `cms_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_news`
--
ALTER TABLE `cms_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_attribute`
--
ALTER TABLE `shop_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shop_brand`
--
ALTER TABLE `shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `shop_image`
--
ALTER TABLE `shop_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `shop_option`
--
ALTER TABLE `shop_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shop_option_detail`
--
ALTER TABLE `shop_option_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;
--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_order_detail`
--
ALTER TABLE `shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `shop_order_history`
--
ALTER TABLE `shop_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `shop_order_status`
--
ALTER TABLE `shop_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shop_order_total`
--
ALTER TABLE `shop_order_total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `shop_payment_status`
--
ALTER TABLE `shop_payment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_product_type`
--
ALTER TABLE `shop_product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_shipping`
--
ALTER TABLE `shop_shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_shipping_address`
--
ALTER TABLE `shop_shipping_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_shipping_status`
--
ALTER TABLE `shop_shipping_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shop_special_price`
--
ALTER TABLE `shop_special_price`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `promocode_user`
--
ALTER TABLE `promocode_user`
  ADD CONSTRAINT `promocode_user_promocode_id_foreign` FOREIGN KEY (`promocode_id`) REFERENCES `promocodes` (`id`),
  ADD CONSTRAINT `promocode_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
