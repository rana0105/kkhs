-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 28, 2018 at 08:37 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelroyal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `f_name`, `l_name`, `email`, `phone`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ayaz', 'Nasim', 'ayaz.nasim@yahoo.com', '01784398527', '1517142640_amnspvGAEu.jpg', '$2y$10$cM0OStRU6blQFnudE9p3EOMsjxKTD9rMxpkjrqJ22p8.gK7hqW55O', '3cK8hInrHK5pXl8P1qfA2kxwCzN9pdSmsPu9imzM5ROehNJ838cNl0Jr8Xxh', '2017-12-13 11:58:42', '2018-02-13 12:49:00'),
(8, 'Shakib', 'Ahmmed', 'shakibahmmed1@gmail.com', '01791834545', '1515400319_5tiR8chlPt.JPG', '$2y$10$0CipezhzODcmoT.LXRGMOeZbR5LxBaUm9F5rjWQVZax2qw6A4FyF2', 'vEjIxVEOqYsSnzQNAzIasFBpaf3JVwBAwdNFLKH4Z12ICUz3rBjQKcF6ZG3S', '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(9, 'Md. Milton', 'Hosen', 'aponstudio66@gmil.com', '01738546301', '', '$2y$10$QA5Jp/oaUpwN1/RIY1ti9eHvt3Ors70TJmTOiqoDrvH7iFSjptnwW', 'erVxBB1K6ww7qtN1SSZhKO03FGYW0K7MLA2XMwXVDVSm74znTvf5AHS2M9wv', '2018-02-14 09:58:10', '2018-02-14 09:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_roles`
--

CREATE TABLE `admin_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_roles`
--

INSERT INTO `admin_user_roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Booking', NULL, NULL),
(2, 'Guests', NULL, NULL),
(3, 'Account', NULL, NULL),
(4, 'HRM', NULL, NULL),
(5, 'Inventory', NULL, NULL),
(6, 'Store', NULL, NULL),
(7, 'Room Category', NULL, NULL),
(8, 'Create user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_role_assigns`
--

CREATE TABLE `admin_user_role_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_role_assigns`
--

INSERT INTO `admin_user_role_assigns` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(31, 1, 1, '2017-12-13 12:00:13', '2017-12-13 12:00:13'),
(32, 1, 2, '2017-12-13 12:00:13', '2017-12-13 12:00:13'),
(33, 1, 3, '2017-12-13 12:00:13', '2017-12-13 12:00:13'),
(34, 1, 4, '2017-12-13 12:00:13', '2017-12-13 12:00:13'),
(35, 1, 5, '2017-12-13 12:00:13', '2017-12-13 12:00:13'),
(36, 1, 6, '2017-12-13 12:00:13', '2017-12-13 12:00:13'),
(37, 1, 7, '2017-12-13 12:00:13', '2017-12-13 12:00:13'),
(38, 1, 8, '2017-12-13 12:00:13', '2017-12-13 12:00:13'),
(65, 8, 1, '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(66, 8, 2, '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(67, 8, 3, '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(68, 8, 4, '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(69, 8, 5, '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(70, 8, 6, '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(71, 8, 7, '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(72, 8, 8, '2018-02-13 12:58:41', '2018-02-13 12:58:41'),
(73, 9, 1, '2018-02-14 09:58:10', '2018-02-14 09:58:10'),
(74, 9, 2, '2018-02-14 09:58:10', '2018-02-14 09:58:10'),
(75, 9, 3, '2018-02-14 09:58:10', '2018-02-14 09:58:10'),
(76, 9, 5, '2018-02-14 09:58:10', '2018-02-14 09:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` int(10) UNSIGNED NOT NULL,
  `payroll_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backup_allowances`
--

CREATE TABLE `backup_allowances` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_bookings`
--

CREATE TABLE `backup_bookings` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `advance` double NOT NULL,
  `check_id` varchar(191) NOT NULL,
  `check_out` varchar(191) NOT NULL,
  `payment` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_bookings`
--

INSERT INTO `backup_bookings` (`id`, `backup_id`, `user_id`, `name`, `phone`, `email`, `amount`, `advance`, `check_id`, `check_out`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(1, 35, 4, 'Hello', '456348+65789', 'fdg@dfg.com', 10000, 1000, '2017-12-18', '2017-12-19', 'Paid', 3, '2017-12-21 18:16:45', '2017-12-22 00:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `backup_daily_expenses`
--

CREATE TABLE `backup_daily_expenses` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `date` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_damage_products`
--

CREATE TABLE `backup_damage_products` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_category_id` int(11) NOT NULL,
  `note` varchar(191) NOT NULL,
  `quantity` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_deductions`
--

CREATE TABLE `backup_deductions` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_departments`
--

CREATE TABLE `backup_departments` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_designations`
--

CREATE TABLE `backup_designations` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_employees`
--

CREATE TABLE `backup_employees` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `f_name` varchar(191) NOT NULL,
  `l_name` varchar(191) NOT NULL,
  `pre_address` text NOT NULL,
  `per_address` text NOT NULL,
  `mobile` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `gender` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `em_id` int(11) NOT NULL,
  `basic_salary` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_employees`
--

INSERT INTO `backup_employees` (`id`, `backup_id`, `user_id`, `designation_id`, `department_id`, `f_name`, `l_name`, `pre_address`, `per_address`, `mobile`, `email`, `gender`, `image`, `em_id`, `basic_salary`, `status`, `created_at`, `updated_at`) VALUES
(2, 19, 3, 8, 10, 'Ayaz', 'Nasim', 'asdfasr', 'dghyuityui', '131235456', 'ayaz@gmail.com', 'Male', '1513536580_Nm9PhusH6I.gif', 1002, 20000, 3, '2017-12-21 18:14:55', '2017-12-22 00:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `backup_expenses`
--

CREATE TABLE `backup_expenses` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expense_cat_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `file` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_expense_categories`
--

CREATE TABLE `backup_expense_categories` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_incomes`
--

CREATE TABLE `backup_incomes` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `income_cat_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_income_categories`
--

CREATE TABLE `backup_income_categories` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_payrolls`
--

CREATE TABLE `backup_payrolls` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `month` varchar(191) NOT NULL,
  `year` varchar(191) NOT NULL,
  `basic_salary` double NOT NULL,
  `total_allowance` double NOT NULL,
  `total_deduction` double NOT NULL,
  `net_salary` double NOT NULL,
  `status` varchar(191) NOT NULL,
  `statuses` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_products`
--

CREATE TABLE `backup_products` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `notify_quantity` int(11) NOT NULL,
  `p_category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_products`
--

INSERT INTO `backup_products` (`id`, `backup_id`, `user_id`, `name`, `notify_quantity`, `p_category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 66, 8, 'Mum Water', 48, 28, 1, '2018-02-28 06:26:59', '2018-02-28 12:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `backup_product_categories`
--

CREATE TABLE `backup_product_categories` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_product_categories`
--

INSERT INTO `backup_product_categories` (`id`, `backup_id`, `user_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(5, 14, 2, 'Internal1', 3, '2017-12-20 06:29:59', '2017-12-20 12:29:59'),
(6, 14, 2, 'Internal', 3, '2017-12-20 06:31:22', '2017-12-20 12:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `backup_purchases`
--

CREATE TABLE `backup_purchases` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_category_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` double NOT NULL,
  `total_price` double NOT NULL,
  `status` varchar(191) NOT NULL,
  `statuses` int(11) NOT NULL DEFAULT '0',
  `purchase_by` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_purchases`
--

INSERT INTO `backup_purchases` (`id`, `backup_id`, `user_id`, `p_id`, `p_category_id`, `price`, `quantity`, `total_price`, `status`, `statuses`, `purchase_by`, `date`, `created_at`, `updated_at`) VALUES
(1, 37, 6, 17, 18, 2900, 23, 66700, 'Paid', 3, 'shakib ahmmed', '0000-00-00', '2018-01-28 12:35:32', '2018-01-28 18:35:32'),
(2, 37, 6, 24, 18, 2900, 24, 69600, 'Paid', 3, 'shakib ahmmed', '0000-00-00', '2018-01-28 12:35:02', '2018-01-28 18:35:02'),
(3, 134, 8, 116, 19, 115, 30, 3450, 'Paid', 3, 'shakib ahmmed', '2018-02-09', '2018-02-17 08:47:42', '2018-02-17 14:47:42'),
(4, 130, 8, 66, 23, 11.25, 48, 528, 'Paid', 3, 'shakib ahmmed', '2018-02-07', '2018-02-17 08:47:28', '2018-02-17 14:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `backup_rooms`
--

CREATE TABLE `backup_rooms` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` varchar(191) NOT NULL,
  `bed_type` varchar(191) NOT NULL,
  `room_number` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `facilities` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_rooms`
--

INSERT INTO `backup_rooms` (`id`, `backup_id`, `user_id`, `category`, `bed_type`, `room_number`, `amount`, `facilities`, `status`, `created_at`, `updated_at`) VALUES
(1, 31, 8, 'Non AC Single Bed', 'Single 1Bed', '309', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car Parking service,ATM Booth.', 1, '2018-02-27 07:40:43', '2018-02-27 13:40:43'),
(2, 32, 8, 'Non AC Single Bed', 'Single 1Bed', '310', 1700, ',A/C RoomCable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car parking service,ATM Booth.', 1, '2018-02-27 07:40:38', '2018-02-27 13:40:38'),
(3, 46, 8, 'Non AC Single Bed', 'Single 1Bed', '414', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', 1, '2018-02-27 07:40:33', '2018-02-27 13:40:33'),
(4, 42, 8, 'Non AC Single Bed', 'Single 1Bed', '410', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service, Free Car Parking,ATM Booth.', 1, '2018-02-27 07:40:28', '2018-02-27 13:40:28'),
(5, 47, 8, 'Non AC Single Bed', 'Single 1Bed', '415', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', 1, '2018-02-27 07:40:23', '2018-02-27 13:40:22'),
(6, 48, 8, 'Non AC Single Bed', 'Single 1 Bed', '407', 1200, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', 3, '2018-02-25 03:39:36', '2018-02-25 09:39:36'),
(7, 28, 8, 'Duplex Couple', 'Double 1 Bed', '306', 3500, 'A/C Room,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', 3, '2018-02-25 03:40:01', '2018-02-25 09:40:01'),
(8, 30, 8, 'Duplex Couple', 'Double 1 Bed', '308', 3500, 'A/C Room,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', 3, '2018-02-25 03:39:54', '2018-02-25 09:39:54'),
(9, 31, 8, 'Duplex Single', 'Single 1Bed', '309', 1200, 'Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', 3, '2018-02-25 03:39:49', '2018-02-25 09:39:49'),
(10, 38, 8, 'Duplex Single', 'Single 1Bed', '406', 2500, 'A/C Room,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service, Free Car Parking,ATM Booth.', 3, '2018-02-25 03:39:45', '2018-02-25 09:39:45'),
(11, 31, 8, 'Duplex Single', 'Single 1Bed', '309', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car Parking service,ATM Booth.', 1, '2018-02-27 10:26:57', '2018-02-27 16:26:57'),
(12, 32, 8, 'Duplex Single', 'Single 1Bed', '310', 1700, ',A/C RoomCable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car parking service,ATM Booth.', 1, '2018-02-27 10:26:51', '2018-02-27 16:26:51'),
(13, 32, 8, 'Duplex Single', 'Single 1Bed', '310', 1700, ',A/C RoomCable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car parking service,ATM Booth.', 1, '2018-02-27 10:26:46', '2018-02-27 16:26:46'),
(14, 46, 8, 'Duplex Single', 'Single 1Bed', '414', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', 1, '2018-02-27 10:26:41', '2018-02-27 16:26:41'),
(15, 47, 8, 'Duplex Single', 'Single 1Bed', '415', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', 1, '2018-02-27 10:26:36', '2018-02-27 16:26:36'),
(16, 48, 8, 'Duplex Single', 'Single 1 Bed', '407', 1200, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', 1, '2018-02-27 10:26:32', '2018-02-27 16:26:32'),
(17, 42, 8, 'Duplex Single', 'Single 1Bed', '410', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service, Free Car Parking,ATM Booth.', 3, '2018-02-28 05:52:58', '2018-02-28 11:52:58'),
(18, 32, 8, 'Duplex Single', 'Single 1Bed', '310', 1700, ',A/C RoomCable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car parking service,ATM Booth.', 3, '2018-02-27 10:27:50', '2018-02-27 16:27:50'),
(19, 33, 8, 'Modern King', 'Single 2 Bed', '401', 4000, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', 1, '2018-02-28 06:27:03', '2018-02-28 12:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_number` int(10) UNSIGNED NOT NULL,
  `book_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_out` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `advance` double NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `room_number`, `book_no`, `name`, `phone`, `email`, `room_category`, `check_id`, `check_out`, `payment`, `amount`, `advance`, `user_id`, `created_at`, `updated_at`) VALUES
(43, 31, '225807818', 'Ashraf Uddin', '01714829719', 'ashraf.uddin@gtrbd.com', '4', '2018-01-09 12:00 AM', '2018-01-10 11:10 AM', 'Paid', 2400, 0, 1, '2018-01-09 23:04:11', '2018-01-30 19:28:17'),
(45, 32, '599606695', 'Mafizul Islam', '01789552211', NULL, '4', '2018-01-10 12:00 AM', '2018-01-11 1:00 PM', 'Pending', 1200, 0, 1, '2018-01-10 08:53:09', '2018-01-30 19:27:58'),
(48, 30, '933180908', 'Sharower hosen', '01768555063', NULL, '2', '2018-01-11 5:30 PM', '2018-01-12 10:00 AM', 'Pending', 3500, 0, 1, '2018-01-11 17:57:58', '2018-01-11 18:32:48'),
(49, 31, '977655151', 'Shahed', '01817622301', NULL, '4', '2018-01-12 12:00 PM', '2018-01-13 10:15 PM', 'Paid', 1200, 1200, 1, '2018-01-12 19:13:54', '2018-01-30 19:27:32'),
(50, 32, '712661753', 'A S M Wali Ullah', '01772000477', NULL, '4', '2018-01-13 3:08 PM', '2018-01-14 10:00 AM', 'Pending', 1200, 0, 1, '2018-01-13 15:09:22', '2018-01-30 19:26:28'),
(51, 26, '952299423', 'md May Uddin', '01795444399', NULL, '3', '2018-01-13 10:00 PM', '2018-01-14 9:15 AM', 'Pending', 2500, 0, 1, '2018-01-13 22:07:43', '2018-01-30 19:26:14'),
(53, 30, '035098532', 'Joyanto Barick', '0175569126', NULL, '2', '2018-01-14 5:06 PM', '2018-01-15 10:45 AM', 'Paid', 3500, 0, 1, '2018-01-14 17:06:35', '2018-01-30 19:25:45'),
(55, 29, '549283540', 'Ripon Ali', '01784507408', NULL, '3', '2018-01-15 12:05 PM', '2018-01-16 10:50 AM', 'Paid', 2500, 2500, 1, '2018-01-15 12:06:05', '2018-01-30 19:25:10'),
(56, 25, '297073989', 'Mohi Uddin', '01795444399', NULL, '3', '2018-01-16 6:30 PM', '2018-01-17 8:00 AM', 'Pending', 2500, 0, 1, '2018-01-16 19:02:59', '2018-01-30 19:24:48'),
(57, 34, '419807851', 'Eng. Md. Delowar Hossan', '01713276010', NULL, '3', '2018-01-16 6:00 PM', '2018-01-17 10:05 AM', 'Pending', 2500, 500, 1, '2018-01-16 19:13:16', '2018-01-30 19:24:26'),
(58, 35, '141625157', 'Eng. Mohammad Jewel Mia', '01780206733', NULL, '3', '2018-01-16 6:00 PM', '2018-01-17 9:00 AM', 'Pending', 2500, 0, 1, '2018-01-16 19:15:04', '2018-01-30 19:24:02'),
(59, 36, '352535914', 'Tanvir Hassan', '01718529067', NULL, '3', '2018-01-16 11:10 AM', '2018-01-18 10:12 AM', 'Pending', 2500, 0, 1, '2018-01-17 10:40:54', '2018-01-30 19:23:20'),
(60, 29, '980940679', 'Md. Sabbir Kadiries', '01713240810', NULL, '3', '2018-01-16 9:50 AM', '2018-01-17 8:10 AM', 'Paid', 2500, 0, 1, '2018-01-17 10:44:22', '2018-01-17 10:44:22'),
(61, 42, '248415264', 'Md. Hasin', '01718529067', NULL, '4', '2018-01-16 9:50 PM', '2018-01-17 8:10 AM', 'Paid', 1200, 0, 1, '2018-01-17 10:46:43', '2018-01-17 10:46:43'),
(62, 24, '965865573', 'Eng. NAsim N. Ahmed', '01827122016', NULL, '3', '2018-01-17 8:20 AM', '2018-01-18 10:15 AM', 'Paid', 2500, 0, 1, '2018-01-17 10:50:01', '2018-01-30 19:22:42'),
(63, 48, '073663640', 'Qazi Abdullah Ibne Alauddin', '01970011283', NULL, '4', '2018-01-16 6:00 AM', '2018-01-17 9:45 AM', 'Paid', 1200, 0, 1, '2018-01-17 10:54:12', '2018-01-17 10:54:12'),
(64, 26, '774545905', 'Md.Zakir Hossain', '01709649007', NULL, '3', '2018-01-17 8:00 PM', '2018-01-18 9:00 AM', 'Pending', 2500, 0, 1, '2018-01-17 22:46:57', '2018-01-17 22:46:57'),
(65, 46, '868599259', 'Md. Imdad Hossan', '0197323482', NULL, '4', '2018-01-03 6:00 AM', '2018-01-18 1:16 PM', 'Paid', 18000, 0, 1, '2018-01-18 13:16:51', '2018-01-18 13:16:51'),
(66, 47, '583668268', 'Adito Rahman', '01973234882', NULL, '4', '2018-01-03 6:00 AM', '2018-01-18 1:19 PM', 'Paid', 18000, 0, 1, '2018-01-18 13:19:33', '2018-01-18 13:19:33'),
(71, 34, '146876727', 'Joyanto Barick', '01755691262', NULL, '3', '2018-01-21 4:31 PM', '2018-01-22 9:20 AM', 'Pending', 2500, 0, 1, '2018-01-21 16:32:43', '2018-01-30 19:21:56'),
(72, 24, '995331903', 'Wei Haoyan', 'PN-99956409', NULL, '3', '2018-01-21 4:36 PM', '2018-01-22 12:00 PM', 'Paid', 2500, 0, 1, '2018-01-21 16:37:24', '2018-01-30 19:21:19'),
(73, 42, '438240873', 'Md. Shikandar', '01735777486', NULL, '4', '2018-01-21 4:55 PM', '2018-01-22 10:00 AM', 'Pending', 1200, 0, 1, '2018-01-21 16:55:27', '2018-01-30 19:20:45'),
(74, 29, '021051791', 'Mir Yasir Arafat', '01717238333', NULL, '3', '2018-01-21 4:50 PM', '2018-01-22 2:10 PM', 'Pending', 2500, 0, 1, '2018-01-21 16:56:57', '2018-01-30 19:19:56'),
(75, 34, '968589719', 'Wei Haoyan', 'Pe-99956409', NULL, '3', '2018-01-23 2:40 PM', '2018-01-24 7:50 AM', 'Paid', 2500, 0, 1, '2018-01-23 14:40:45', '2018-01-30 19:19:16'),
(76, 32, '887439831', 'Md. Shikandar', '01735777486', NULL, '4', '2018-01-23 5:25 AM', '2018-01-24 9:00 AM', 'Pending', 1200, 0, 1, '2018-01-23 19:42:12', '2018-01-30 19:18:51'),
(77, 23, '749054893', 'Eng. Kabirul Islam', '01700896620', '71dynamic@gmail.com', '1', '2018-01-23 9:13 PM', '2018-01-24 9:10 AM', 'Paid', 4000, 0, 1, '2018-01-23 21:13:33', '2018-01-30 19:18:29'),
(78, 42, '980018831', 'Md Mamunar Rashid', '01816465961', NULL, '4', '2018-01-24 11:52 AM', '2018-01-24 11:53 AM', 'Pending', 1200, 0, 1, '2018-01-24 11:54:01', '2018-01-24 11:54:01'),
(79, 48, '517952772', 'Md Nasirul Hoqe', '01943334262', NULL, '4', '2018-01-24 11:45 AM', '2018-01-25 12:00 AM', 'Paid', 1200, 1000, 1, '2018-01-24 11:57:24', '2018-01-25 21:14:49'),
(81, 43, '497419522', 'Avijeet Biswas', '01774158591', NULL, '0', '2018-01-24 12:40 AM', '2018-01-25 12:00 AM', 'Paid', 4500, 2500, 1, '2018-01-24 13:13:46', '2018-01-25 21:14:37'),
(82, 32, '760420738', 'Qazi Abdullah Ibne Alauddin', '01970011283', 'rubel.abd@gmail.com', '4', '2018-01-29 6:00 PM', '2018-01-30 8:00 AM', 'Pending', 1200, 0, 1, '2018-01-29 19:02:34', '2018-01-30 19:17:32'),
(83, 38, '283536578', 'Konok Shaha', '01611007788', NULL, '3', '2018-01-29 11:18 AM', '2018-01-30 9:16 AM', 'Paid', 2500, 0, 1, '2018-01-29 19:04:16', '2018-01-30 19:15:58'),
(84, 48, '680560498', 'Ripon Shorkar', '01734341481', NULL, '4', '2018-01-29 12:00 PM', '2018-01-30 10:00 AM', 'Paid', 1200, 0, 1, '2018-01-29 19:06:47', '2018-01-29 19:06:47'),
(85, 40, '219427930', 'Md. Rasel Khan', '01700960225', NULL, '3', '2018-01-29 11:18 AM', '2018-01-30 12:00 PM', 'Paid', 2500, 0, 1, '2018-01-29 19:08:20', '2018-01-30 19:15:10'),
(86, 29, '638943709', 'Md. Mohiuddin', '01795444399', NULL, '3', '2018-01-30 1:22 PM', '2018-02-01 12:00 PM', 'Pending', 5000, 0, 1, '2018-01-30 13:24:51', '2018-01-30 19:14:34'),
(87, 46, '371742308', 'Md.Mahafujur Islam', '01712450203', NULL, '4', '2018-01-30 3:51 PM', '2018-02-01 10:00 AM', 'Pending', 2400, 0, 1, '2018-01-30 15:53:37', '2018-01-30 19:14:02'),
(88, 47, '748982510', 'Pangkaj  Kumar Roy', '01711084665', NULL, '4', '2018-01-30 3:53 PM', '2018-02-01 12:00 PM', 'Pending', 2400, 0, 1, '2018-01-30 15:54:52', '2018-01-30 19:13:13'),
(89, 30, '875545427', 'Md. Sakhawat Hosan', '01856945407', NULL, '2', '2018-01-30 7:42 PM', '2018-01-31 12:00 PM', 'Pending', 3500, 0, 1, '2018-01-30 19:44:43', '2018-01-30 19:44:43'),
(90, 34, '370797593', 'Mir Yeasir Arafat', '01717238333', NULL, '3', '2018-01-29 11:30 AM', '2018-01-31 12:00 PM', 'Pending', 5000, 0, 1, '2018-01-30 19:48:02', '2018-01-30 19:48:02'),
(91, 45, '661739678', 'Yu. Yingdong', 'E04835391', NULL, '3', '2018-01-29 11:30 AM', '2018-01-31 12:00 PM', 'Pending', 5000, 0, 1, '2018-01-30 19:49:54', '2018-01-30 19:49:54'),
(92, 24, '315840034', 'Joyanto Barick', '01755601262', NULL, '3', '2018-01-31 1:28 PM', '2018-02-01 10:00 AM', 'Pending', 2500, 0, 1, '2018-01-31 13:38:45', '2018-01-31 13:38:45'),
(94, 32, '827172723', 'Md. Shahidul Haq', '01712598288', NULL, '4', '2018-01-31 7:36 PM', '2018-02-01 8:00 AM', 'Pending', 1200, 0, 1, '2018-01-31 19:38:12', '2018-01-31 19:38:12'),
(95, 35, '079119190', 'Athoye Joy Sharif', '01681676520', NULL, '3', '2018-01-31 9:00 PM', '2018-02-01 11:00 AM', 'Pending', 2500, 0, 1, '2018-02-01 02:13:49', '2018-02-01 02:13:49'),
(96, 44, '889094385', 'Engr. Md. Mustafizur Rahman', '01711436894', NULL, '3', '2018-01-31 9:00 PM', '2018-02-01 11:40 AM', 'Pending', 2500, 0, 1, '2018-02-01 02:18:28', '2018-02-01 02:18:28'),
(97, 40, '655563054', 'Asraful Abedin', '01712621910', NULL, '3', '2018-01-31 9:00 PM', '2018-02-01 12:01 AM', 'Pending', 2500, 0, 1, '2018-02-01 02:23:12', '2018-02-01 02:23:12'),
(98, 41, '928910259', 'Md. Sha Alom', '01712291070', NULL, '3', '2018-01-31 9:00 PM', '2018-02-01 12:02 AM', 'Pending', 2500, 0, 1, '2018-02-01 02:25:01', '2018-02-01 02:25:01'),
(99, 26, '496141506', 'S. Aarudra Nath', '01713178002', NULL, '3', '2018-01-31 9:00 PM', '2018-02-01 11:00 AM', 'Pending', 2500, 0, 1, '2018-02-01 02:34:29', '2018-02-01 02:34:29'),
(100, 48, '934007041', 'Md. Fojlay Rabbi', '01711909747', NULL, '4', '2018-01-31 10:00 AM', '2018-01-31 10:24 AM', 'Pending', 1200, 0, 1, '2018-02-01 13:26:12', '2018-02-01 13:26:12'),
(101, 23, '875125968', 'Md. Fojlay Rabbi', '01711909747', NULL, '1', '2018-01-31 10:00 AM', '2018-02-01 1:25 PM', 'Pending', 4000, 0, 1, '2018-02-01 13:27:36', '2018-02-01 13:27:36'),
(102, 42, '725591474', 'Md. Maruf Ali', '01922588445', NULL, '4', '2018-01-30 1:00 PM', '2018-02-02 10:00 AM', 'Paid', 2400, 0, 1, '2018-02-01 13:33:47', '2018-02-02 17:18:31'),
(103, 27, '681294340', 'Kazi Ekhlasur Haq', '01713006084', NULL, '0', '2018-02-01 3:38 PM', '2018-02-02 10:00 AM', 'Pending', 5000, 0, 1, '2018-02-01 15:40:02', '2018-02-02 17:18:49'),
(104, 31, '685396573', 'Nur Alom', '01632612482', NULL, '4', '2018-02-01 4:59 PM', '2018-02-02 8:00 AM', 'Paid', 1200, 0, 1, '2018-02-01 17:01:31', '2018-02-01 17:01:31'),
(105, 26, '241002774', 'Pankoj Biswas', '01884335494', NULL, '3', '2018-02-03 10:30 AM', '2018-02-04 10:00 AM', 'Pending', 2500, 0, 1, '2018-02-03 10:32:35', '2018-02-03 10:32:35'),
(106, 29, '795095517', 'Md. Nosirul Haq', '0194333462', NULL, '3', '2018-02-03 1:30 PM', '2018-02-04 9:00 AM', 'Pending', 2500, 0, 1, '2018-02-03 14:48:07', '2018-02-03 14:48:07'),
(107, 46, '235116243', 'Faria Tasnim', '01793597692', NULL, '4', '2018-02-03 4:23 PM', '2018-02-04 10:00 AM', 'Pending', 1200, 0, 1, '2018-02-03 16:26:07', '2018-02-03 16:26:07'),
(108, 47, '117529117', 'Faria Tasnim', '01793597692', NULL, '4', '2018-02-03 4:25 PM', '2018-02-04 10:00 AM', 'Pending', 1200, 0, 1, '2018-02-03 16:26:59', '2018-02-03 16:26:59'),
(110, 31, '091616558', 'Masum Parvaze', '01834531254', NULL, '4', '2018-02-05 9:20 AM', '2018-02-06 10:00 AM', 'Paid', 1200, 0, 1, '2018-02-05 09:58:52', '2018-02-05 09:58:52'),
(111, 32, '740650857', 'Md. Mahfuzul Islam', '01789552211', NULL, '4', '2018-02-05 3:20 PM', '2018-02-06 10:00 AM', 'Pending', 1200, 0, 1, '2018-02-05 15:22:36', '2018-02-05 15:22:36'),
(112, 46, '266354553', 'Md. Mahmudul Hasan', '01912257011', NULL, '4', '2018-02-05 4:32 PM', '2018-02-07 10:00 AM', 'Pending', 2400, 0, 1, '2018-02-05 16:34:18', '2018-02-05 16:34:18'),
(113, 47, '056711055', 'Md. Moniruzzaman', '01924609307', NULL, '4', '2018-02-05 4:33 PM', '2018-02-05 10:33 AM', 'Paid', 2400, 0, 1, '2018-02-05 16:35:26', '2018-02-05 16:35:26'),
(114, 42, '573805484', 'Md. Nur Alom', '01632612482', NULL, '4', '2018-02-06 5:02 PM', '2018-02-07 10:00 AM', 'Paid', 1200, 0, 1, '2018-02-06 17:05:10', '2018-02-06 17:05:10'),
(115, 23, '914578394', 'Mohammad Jahangir Alam', '01711287165', NULL, '1', '2018-02-06 5:47 PM', '2018-02-07 10:00 AM', 'Pending', 4000, 0, 1, '2018-02-06 17:50:15', '2018-02-06 17:50:15'),
(116, 26, '074961882', 'Piktija Branko', '245809405', NULL, '3', '2018-02-07 5:33 PM', '2018-02-08 10:00 AM', 'Pending', 2500, 0, 1, '2018-02-07 17:35:29', '2018-02-07 17:35:29'),
(117, 24, '991006680', 'Abhishek Kumar', 'N0019536', NULL, '3', '2018-02-07 5:34 PM', '2018-02-08 10:00 AM', 'Pending', 2500, 0, 1, '2018-02-07 17:36:33', '2018-02-07 17:36:33'),
(119, 31, '759791686', 'Md. Ziaul Rahaman Milon', '01726432632', NULL, '4', '2018-02-10 9:28 PM', '2018-02-11 11:15 AM', 'Pending', 1200, 500, 1, '2018-02-10 22:25:42', '2018-02-10 22:25:42'),
(120, 47, '585037743', 'Md. Abul hasan', '01713366327', NULL, '4', '2018-02-10 5:00 PM', '2018-02-10 11:16 AM', 'Pending', 1200, 0, 1, '2018-02-10 22:46:33', '2018-02-10 22:46:33'),
(121, 30, '211372754', 'Shimul Hossain', '01758554492', NULL, '2', '2018-02-10 5:00 PM', '2018-02-11 10:00 AM', 'Pending', 3500, 0, 1, '2018-02-10 22:48:47', '2018-02-10 22:48:47'),
(122, 32, '339330327', 'Qazi Abdullah Ibne Alauddin', '01970011283', NULL, '4', '2018-02-10 8:30 PM', '2018-02-11 11:17 AM', 'Pending', 1200, 0, 1, '2018-02-10 22:51:36', '2018-02-10 22:51:36'),
(123, 34, '288890817', 'Gopal  Kumar Dash', '01989994332', NULL, '3', '2018-02-12 12:20 PM', '2018-02-12 10:00 AM', 'Paid', 2500, 0, 1, '2018-02-12 14:35:17', '2018-02-12 14:35:17'),
(124, 32, '536796686', 'Md. Mahfujur Islam', '01789552211', NULL, '4', '2018-02-12 12:40 PM', '2018-02-13 10:00 AM', 'Paid', 1200, 0, 1, '2018-02-12 14:37:46', '2018-02-12 14:37:46'),
(125, 31, '351255748', 'M. Mamunar Rashid', '01816465961', 'mamun|_rashid70@yahoo.com', '4', '2018-02-12 4:20 PM', '2018-02-13 10:00 AM', 'Paid', 1200, 0, 1, '2018-02-12 17:19:11', '2018-02-12 17:19:11'),
(126, 23, '701502563', 'Md. Khairul Bashar', '01716704278', NULL, '1', '2018-02-13 2:00 PM', '2018-02-14 12:00 PM', 'Paid', 4000, 0, 8, '2018-02-14 11:52:36', '2018-02-14 11:52:36'),
(127, 25, '790761419', 'Md.Shahariar Parvez', '01712501843', NULL, '3', '2018-02-14 12:20 AM', '2018-02-15 10:00 AM', 'Paid', 5000, 0, 8, '2018-02-14 11:58:29', '2018-02-14 11:58:29'),
(128, 33, '857533900', 'Md. Abdus Salam', '01712927385', NULL, '1', '2018-02-14 9:10 PM', '2018-02-15 10:00 AM', 'Paid', 4000, 0, 8, '2018-02-14 22:08:07', '2018-02-14 22:08:07'),
(129, 32, '066550638', 'Quazi Rabiul Hassan', '01713337347', NULL, '4', '2018-02-17 2:42 PM', '2018-02-21 10:00 AM', 'Pending', 8500, 0, 8, '2018-02-17 14:47:11', '2018-02-17 14:47:11'),
(130, 30, '904739568', 'Md. Roushen Alam', '0170883503', NULL, '2', '2018-02-17 2:46 PM', '2018-02-18 10:00 AM', 'Pending', 3500, 0, 8, '2018-02-17 14:49:08', '2018-02-17 14:49:08'),
(131, 26, '544289931', 'Abu Saleh Md Rejuan', '01819434649', 'asm.rejuan@swisscontact.org', '3', '2018-02-18 9:55 AM', '2018-02-20 12:00 PM', 'Pending', 5000, 0, 8, '2018-02-18 09:58:56', '2018-02-18 09:58:56'),
(132, 24, '896210681', 'Linda Robats', '01712621910', NULL, '3', '2018-02-18 3:50 PM', '2018-02-20 12:00 PM', 'Pending', 5000, 0, 8, '2018-02-18 15:53:45', '2018-02-18 15:53:45'),
(133, 25, '416112412', 'Asharful Abadin Khan', '01751655588', NULL, '3', '2018-02-18 3:52 PM', '2018-02-20 12:00 PM', 'Pending', 5000, 0, 8, '2018-02-18 15:55:36', '2018-02-18 15:55:36'),
(134, 28, '037249622', 'Md. Mustafizur Rahman', '01681676520', NULL, '2', '2018-02-18 5:08 PM', '2018-02-20 12:00 PM', 'Pending', 3500, 0, 8, '2018-02-18 17:11:42', '2018-02-18 17:11:42'),
(135, 29, '489421001', 'Athoye joy', '01711436894', NULL, '3', '2018-02-18 11:37 PM', '2018-02-19 12:17 AM', 'Pending', 2500, 0, 9, '2018-02-19 02:15:32', '2018-02-19 02:15:32'),
(136, 31, '172864251', 'Jointo Barick', '01755601262', NULL, '4', '2018-02-19 5:15 PM', '2018-02-20 11:00 AM', 'Pending', 1700, 0, 8, '2018-02-19 18:49:58', '2018-02-19 18:49:58'),
(137, 30, '660571094', 'Md. Azizur Hakim', '01708000380', NULL, '2', '2018-02-21 7:15 PM', '2018-02-22 11:00 AM', 'Pending', 3500, 3000, 8, '2018-02-21 19:21:00', '2018-02-21 19:21:00'),
(138, 25, '752319064', 'Aleh Bakhanovich', 'KB2199343', NULL, '3', '2018-02-21 8:15 PM', '2018-02-23 10:00 AM', 'Pending', 2500, 0, 8, '2018-02-21 20:20:11', '2018-02-21 20:20:11'),
(139, 26, '987572526', 'Kanstanti Markau', 'KB2140670', NULL, '3', '2018-02-21 8:19 PM', '2018-02-23 10:00 AM', 'Pending', 5000, 0, 8, '2018-02-21 20:22:31', '2018-02-21 20:22:31'),
(140, 28, '153193100', 'Md. Sanowar Hossan', '017359868320', NULL, '2', '2018-02-22 5:42 PM', '2018-02-23 10:00 AM', 'Paid', 2500, 2500, 8, '2018-02-22 17:46:07', '2018-02-22 17:46:07'),
(141, 24, '334978630', 'S. Areandea Nath', '01713178552', NULL, '3', '2018-02-23 10:48 PM', '2018-02-24 10:00 AM', 'Paid', 2500, 0, 8, '2018-02-23 22:51:18', '2018-02-23 22:51:18'),
(142, 30, '905644078', 'Shan  Paranaavitane', '01711563469', NULL, '2', '2018-02-23 10:00 AM', '2018-02-24 10:58 AM', 'Paid', 3500, 0, 8, '2018-02-24 11:01:21', '2018-02-24 11:01:21'),
(143, 28, '087355530', 'Sharwar Hossan', '01768555063', NULL, '2', '2018-02-23 12:00 PM', '2018-02-24 11:07 AM', 'Paid', 3500, 0, 8, '2018-02-24 11:10:51', '2018-02-24 11:10:51'),
(144, 31, '416891517', 'Pangkaj Kumar', '01711084665', NULL, '4', '2018-02-24 8:00 PM', '2018-02-25 10:10 AM', 'Paid', 3400, 0, 8, '2018-02-24 20:01:48', '2018-02-24 20:01:48'),
(145, 32, '337712670', 'Md. Mahafuzul Islam', '01729258320', NULL, '4', '2018-02-24 8:02 PM', '2018-02-25 10:00 AM', 'Paid', 1700, 0, 8, '2018-02-24 20:03:33', '2018-02-24 20:03:33'),
(146, 25, '174433626', 'Monir', '01930840054', NULL, '3', '2018-02-24 8:09 PM', '2018-02-26 10:00 AM', 'Paid', 5000, 0, 8, '2018-02-24 20:10:45', '2018-02-24 20:10:45'),
(147, 24, '861841853', 'Joyanto Barick', '01755601262', NULL, '3', '2018-02-25 1:22 PM', '2018-02-26 10:00 AM', 'Paid', 2500, 0, 8, '2018-02-25 13:25:26', '2018-02-25 13:28:39'),
(148, 28, '836613816', 'Quazi Md. Jafrullah', '01711432076', NULL, '2', '2018-02-26 4:51 PM', '2018-02-27 10:00 AM', 'Paid', 3500, 0, 8, '2018-02-26 16:54:41', '2018-02-26 16:54:41'),
(149, 32, '084930042', 'M. Rezaul Karim', '01857377064', NULL, '4', '2018-02-26 7:51 PM', '2018-02-27 12:00 PM', 'Paid', 1700, 0, 8, '2018-02-26 19:55:36', '2018-02-26 19:59:41'),
(150, 31, '565710762', 'Md. Jamil', '01730136108', NULL, '4', '2018-02-26 7:51 PM', '2018-02-27 9:20 AM', 'Paid', 1700, 0, 8, '2018-02-27 13:46:15', '2018-02-27 13:46:15'),
(151, 31, '846616995', 'Maksudul Rohaman Khan', '19712693625624889', NULL, '3', '2018-02-27 2:21 PM', '2018-02-28 10:00 AM', 'Paid', 1700, 0, 8, '2018-02-27 14:24:35', '2018-02-28 11:52:12'),
(152, 42, '439603392', 'Md. Nasimul Hasan', '01914333462', NULL, '3', '2018-02-27 2:21 PM', '2018-02-28 11:30 AM', 'Paid', 1700, 0, 8, '2018-02-28 11:33:33', '2018-02-28 11:33:33'),
(153, 32, '717531271', 'Md. Nasimul Hasan', '01914333462', NULL, '3', '2018-02-27 2:21 PM', '2018-02-28 12:00 PM', 'Paid', 1700, 0, 8, '2018-02-28 11:35:08', '2018-02-28 11:35:08'),
(154, 28, '947778142', 'Kazi Nahidul Alom', '01818209515', NULL, '2', '2018-02-27 8:15 PM', '2018-02-01 10:00 AM', 'Paid', 3500, 0, 8, '2018-02-28 11:37:30', '2018-02-28 11:37:30'),
(155, 30, '908661644', 'Samshud Doha', '01711035250', NULL, '2', '2018-02-27 8:15 PM', '2018-02-28 12:00 PM', 'Paid', 3500, 0, 8, '2018-02-28 11:38:49', '2018-02-28 11:51:23'),
(156, 29, '733347229', 'Siloj Kumar', '01712621910', NULL, '3', '2018-02-27 8:15 PM', '2018-02-28 12:00 PM', 'Paid', 2500, 0, 8, '2018-02-28 11:40:09', '2018-02-28 11:50:52'),
(157, 25, '864428695', 'Athoy Joy', '01711436894', NULL, '3', '2018-02-27 9:40 PM', '2018-02-28 12:00 PM', 'Paid', 2500, 0, 8, '2018-02-28 11:42:25', '2018-02-28 11:50:35'),
(158, 26, '851280449', 'Ashraful Abadin', '01751655588', NULL, '3', '2018-02-27 9:40 PM', '2018-02-28 12:00 PM', 'Paid', 2500, 0, 8, '2018-02-28 11:43:35', '2018-02-28 11:43:35'),
(159, 24, '828747487', 'Linda Robarts', '01712621910', NULL, '3', '2018-02-28 9:40 PM', '2018-02-28 12:00 PM', 'Paid', 2500, 0, 8, '2018-02-28 11:44:38', '2018-02-28 11:49:45'),
(160, 27, '192494789', 'Syed Nowshad Ali', '01817160000', NULL, '0', '2018-02-28 12:45 AM', '2018-02-28 12:00 PM', 'Paid', 5000, 0, 8, '2018-02-28 11:46:17', '2018-02-28 11:46:17'),
(161, 23, '786890589', 'Foysal Bin Alom', '01717051848', NULL, '1', '2018-02-28 12:45 AM', '2018-02-28 12:00 PM', 'Paid', 4000, 0, 8, '2018-02-28 11:47:44', '2018-02-28 11:49:01'),
(162, 34, '967861578', 'Red Carpet', '01716788220', NULL, '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:04:45', '2018-02-28 12:04:45'),
(163, 35, '635292344', 'Red Carpet', '01716788220', NULL, '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:05:23', '2018-02-28 12:05:23'),
(164, 36, '905992816', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:07:56', '2018-02-28 12:07:56'),
(165, 38, '525319287', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:08:46', '2018-02-28 12:08:46'),
(166, 40, '885467029', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:10:09', '2018-02-28 12:10:09'),
(167, 41, '296348554', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:10:47', '2018-02-28 12:10:47'),
(168, 44, '418251502', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:11:40', '2018-02-28 12:11:40'),
(169, 45, '073983115', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:12:36', '2018-02-28 12:12:36'),
(170, 46, '383731057', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:13:18', '2018-02-28 12:13:18'),
(171, 47, '843128252', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 AM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:14:14', '2018-02-28 12:14:14'),
(172, 48, '993925832', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '3', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:14:50', '2018-02-28 12:14:50'),
(173, 43, '850729119', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '0', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Pending', 23800, 0, 8, '2018-02-28 12:15:20', '2018-02-28 12:15:20'),
(174, 37, '654214046', 'Red Carpet', '01716788220', 'maruf.envisarc@gmail.com', '2', '2018-02-14 12:00 PM', '2018-02-28 12:00 PM', 'Paid', 23800, 0, 8, '2018-02-28 12:19:14', '2018-02-28 12:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `booking_extra_facilities`
--

CREATE TABLE `booking_extra_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_deposites`
--

CREATE TABLE `daily_deposites` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_deposites`
--

INSERT INTO `daily_deposites` (`id`, `amount`, `date`, `created_at`, `updated_at`) VALUES
(36, 1000, '2018-02-08', '2018-02-08 23:58:45', '2018-02-08 23:58:45'),
(37, 1000, '2018-02-14', '2018-02-15 02:58:00', '2018-02-15 02:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `daily_expenses`
--

CREATE TABLE `daily_expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_expenses`
--

INSERT INTO `daily_expenses` (`id`, `title`, `amount`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Breakfast', 450, '2018-02-08', '2018-02-08 23:56:21', '2018-02-08 23:56:21'),
(2, 'Phone Cost', 20, '2018-02-08', '2018-02-08 23:59:25', '2018-02-08 23:59:25'),
(3, 'Sugar  Pac', 340, '2018-02-14', '2018-02-15 02:59:38', '2018-02-15 02:59:38'),
(4, 'Thana expens', 20, '2018-02-14', '2018-02-15 03:02:05', '2018-02-15 03:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `damage_products`
--

CREATE TABLE `damage_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_category_id` int(10) UNSIGNED NOT NULL,
  `p_id` int(191) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `payroll_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(13, 'Supervising', '2018-01-07 19:11:06', '2018-01-07 19:11:06'),
(14, 'Management', '2018-01-07 19:11:51', '2018-01-07 19:11:51'),
(15, 'Service & Maintenance', '2018-01-07 19:12:47', '2018-01-07 19:12:47'),
(16, 'Cleaning', '2018-01-07 19:13:22', '2018-01-07 19:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(11, 'Superviser', '2018-01-07 19:11:20', '2018-01-07 19:11:20'),
(12, 'Manager', '2018-01-07 19:12:06', '2018-01-07 19:12:06'),
(13, 'Service Boy', '2018-01-07 19:13:47', '2018-01-07 19:13:47'),
(14, 'Cleaner', '2018-01-07 19:14:09', '2018-01-07 19:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `em_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `designation_id`, `department_id`, `em_id`, `f_name`, `l_name`, `pre_address`, `per_address`, `mobile`, `email`, `image`, `gender`, `basic_salary`, `created_at`, `updated_at`) VALUES
(21, 12, 14, '1000', 'Md. Rashidul', 'Islam', 'Baghiul Kolpara, Paksey,Ishurdi,Pabna.', 'Baghiul Kolpara, Paksey,Ishurdi,Pabna.', '01872989596', 'Rashidulislam@gmail.com', '', 'Male', 7500, '2018-01-07 19:19:20', '2018-01-10 13:31:24'),
(22, 11, 13, '1001', 'Shakib', 'Ahmmed', 'Fottamohammad pur,Ishurdi,Pabna', 'Fottamohammad pur,Ishurdi,Pabna', '01791834545', 'shakibahmmed1@gmail.com', '1515400319_5tiR8chlPt.JPG', 'Male', 0, '2018-01-07 19:21:15', '2018-01-08 14:31:59'),
(24, 12, 14, '1003', 'Md. Milton', 'Hosen', 'Balughata,Dhanughata,Farid Pur,Pabna', 'Balughata,Dhanughata,Farid Pur,Pabna', '01738546301', 'aponstudio66@gmil.com', '', 'Male', 9000, '2018-01-07 20:37:08', '2018-01-07 20:37:08'),
(25, 13, 15, '1004', 'Md. Abdul', 'Alim', 'Chowbaria Uttorpara,Bangoora,Pabna', 'Chowbaria Uttorpara,Bangoora,Pabna', '01750293060', 'abdulalim@gmail.com', '', 'Male', 7000, '2018-01-07 20:49:13', '2018-01-07 20:49:13'),
(26, 13, 15, '1005', 'Md. Enamul', 'Haque', 'Bhaboihat,Vhangura,Pabna', 'Bhaboihat,Vhangura,Pabna', '01743076697', 'anamul979797@gmail.com', '', 'Male', 7000, '2018-01-07 20:52:43', '2018-01-07 20:52:43'),
(27, 13, 15, '1006', 'Md. Mojhar', 'Ali', 'Babuikhola,Dhanughata,Ataikula,Pabna', 'Babuikhola,Dhanughata,Ataikula,Pabna', '01704457399', 'mojhar@hotmail.com', '', 'Male', 7000, '2018-01-07 20:55:14', '2018-01-07 20:55:14'),
(28, 13, 15, '1007', 'Md. Towkir', 'Ahmed', 'Babuikhola,Dhanughata,Ataikula,Pabna', 'Babuikhola,Dhanughata,Ataikula,Pabna', '01734285273', 'towkir@gmail.com', '', 'Male', 7000, '2018-01-07 20:58:34', '2018-01-07 20:58:34'),
(29, 13, 15, '1008', 'Imran', 'Hossain', 'Bhaloghata,Dhanuyaghata,Atghoria,Pabna', 'Bhaloghata,Dhanuyaghata,Atghoria,Pabna', '01771221920', 'anuragyemran@gmail.com', '', 'Male', 7000, '2018-01-07 21:03:26', '2018-01-07 21:03:26'),
(30, 13, 15, '1009', 'Md. Shimul', 'Mondol', 'Diarbaghoil, Diarshahapur, Ishurdi, Pabna', 'Diarbaghoil, Diarshahapur, Ishurdi, Pabna', '01728053940', 'mondol911@hotmail.com', '', 'Male', 7000, '2018-01-07 21:06:54', '2018-01-07 21:06:54'),
(32, 13, 15, '1011', 'Rony', 'Rahman', 'Baghiol Shordar para,Paksey,ishurdi,Pabna.', 'Baghiol Shordar para,Paksey,ishurdi,Pabna.', '01791271135', 'ahmed@gmail.com', '', 'Male', 7000, '2018-01-07 21:12:12', '2018-01-07 21:13:06'),
(33, 14, 16, '1010', 'SS Shopon Kumar', 'Kundu', 'Ralwaygate,ishurdi,Padna', 'Ralwaygate,ishurdi,Padna', '01908606519', 'kumar1@gmail.com', '', 'Male', 6000, '2018-01-10 13:53:43', '2018-01-10 13:53:43'),
(34, 11, 16, '1011', 'SS Shuvas', 'Das', 'Railway,Ishurdi,Pabna', 'Railway,Ishurdi,Pabna', '01718741433', 'Das@gmail.com', '', 'Male', 6000, '2018-01-10 14:12:41', '2018-01-10 14:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `expense_cat_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `amount` double NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_cat_id`, `amount`, `title`, `file`, `date`, `created_at`, `updated_at`) VALUES
(90, 2, 5, 'Purchase Product', 'default.jpg', '2018-01-18', '2018-01-10 10:39:55', '2018-01-18 22:52:46'),
(122, 4, 1000, 'Deposit Expense', 'default.jpg', '2018-01-16', '2018-01-15 22:38:41', '2018-01-17 03:40:50'),
(157, 2, 520, 'Purchase Product', 'default.jpg', '2018-01-25', '2018-01-25 16:44:29', '2018-01-25 16:44:29'),
(158, 2, 50, 'Purchase Product', 'default.jpg', '2018-01-25', '2018-01-25 16:45:17', '2018-01-25 16:45:17'),
(159, 2, 365, 'Purchase Product', 'default.jpg', '2018-01-25', '2018-01-25 16:45:40', '2018-01-25 16:45:40'),
(160, 2, 420, 'Purchase Product', 'default.jpg', '2018-01-25', '2018-01-25 16:46:53', '2018-01-25 16:46:53'),
(161, 2, 324, 'Purchase Product', 'default.jpg', '2018-01-25', '2018-01-25 16:47:26', '2018-01-25 16:47:26'),
(162, 2, 1248, 'Purchase Product', 'default.jpg', '2018-01-25', '2018-01-25 16:48:13', '2018-01-28 13:47:49'),
(163, 2, 90, 'Purchase Product', 'default.jpg', '2018-01-25', '2018-01-25 16:48:47', '2018-01-25 16:48:47'),
(164, 2, 705, 'Purchase Product', 'default.jpg', '2018-01-25', '2018-01-25 16:49:37', '2018-01-25 16:49:37'),
(165, 2, 576, 'Purchase Product', 'default.jpg', '2018-01-30', '2018-01-30 18:35:56', '2018-01-30 18:35:56'),
(167, 2, 90, 'Purchase Product', 'default.jpg', '2018-01-30', '2018-01-31 01:06:07', '2018-01-31 01:06:07'),
(168, 2, 500, 'Purchase Product', 'default.jpg', '2018-01-30', '2018-01-31 01:10:15', '2018-01-31 01:10:15'),
(169, 2, 270, 'Purchase Product', 'default.jpg', '2018-01-31', '2018-01-31 18:23:28', '2018-01-31 18:23:28'),
(170, 2, 798, 'Purchase Product', 'default.jpg', '2018-01-31', '2018-01-31 18:24:44', '2018-01-31 18:24:44'),
(171, 2, 69.72, 'Purchase Product', 'default.jpg', '2018-01-31', '2018-01-31 18:29:47', '2018-01-31 18:29:47'),
(172, 2, 455.28, 'Purchase Product', 'default.jpg', '2018-01-31', '2018-01-31 18:32:20', '2018-01-31 18:32:20'),
(173, 2, 462, 'Purchase Product', 'default.jpg', '2018-01-31', '2018-01-31 18:34:36', '2018-01-31 18:34:36'),
(174, 2, 810, 'Purchase Product', 'default.jpg', '2018-01-31', '2018-01-31 18:35:17', '2018-01-31 18:35:17'),
(175, 2, 240, 'Purchase Product', 'default.jpg', '2018-01-31', '2018-01-31 18:36:20', '2018-01-31 18:36:20'),
(178, 4, 1000, 'Deposit Expense', 'default.jpg', '2018-02-07', '2018-02-07 17:27:54', '2018-02-07 17:27:54'),
(179, 4, 1000, 'Deposit Expense', 'default.jpg', '2018-02-07', '2018-02-07 17:37:44', '2018-02-07 17:37:44'),
(180, 4, 1000, 'Deposit Expense', 'default.jpg', '2018-02-07', '2018-02-07 17:39:37', '2018-02-07 17:39:37'),
(181, 2, 528, 'Purchase Product', 'default.jpg', '2018-02-07', '2018-02-07 19:29:13', '2018-02-17 10:36:35'),
(182, 2, 270, 'Purchase Product', 'default.jpg', '2018-02-07', '2018-02-08 02:49:39', '2018-02-08 02:49:39'),
(184, 4, 2000, 'Deposit Expense', 'default.jpg', '2018-02-08', '2018-02-08 23:55:43', '2018-02-08 23:55:43'),
(185, 4, 2000, 'Deposit Expense', 'default.jpg', '2018-02-08', '2018-02-08 23:58:14', '2018-02-08 23:58:14'),
(186, 4, 1000, 'Deposit Expense', 'default.jpg', '2018-02-08', '2018-02-08 23:58:45', '2018-02-08 23:58:45'),
(187, 14, 2425, 'Laundry', '', '2018-02-08', '2018-02-09 00:00:25', '2018-02-09 00:00:25'),
(188, 2, 1200, 'Purchase Product', 'default.jpg', '2018-02-08', '2018-02-09 00:01:34', '2018-02-09 00:01:34'),
(189, 2, 160, 'Purchase Product', 'default.jpg', '2018-02-08', '2018-02-09 00:02:28', '2018-02-09 00:02:28'),
(190, 2, 3450, 'Purchase Product', 'default.jpg', '2018-02-09', '2018-02-11 15:30:42', '2018-02-11 09:31:12'),
(191, 2, 270, 'Purchase Product', 'default.jpg', '2018-02-08', '2018-02-11 15:54:41', '2018-02-11 09:57:57'),
(192, 2, 69.72, 'Purchase Product', 'default.jpg', '2018-02-08', '2018-02-11 15:56:53', '2018-02-11 09:58:31'),
(193, 2, 259.20000000000005, 'Purchase Product', 'default.jpg', '2018-02-08', '2018-02-11 15:57:41', '2018-02-11 09:58:07'),
(194, 4, 1000, 'Deposit Expense', 'default.jpg', '2018-02-14', '2018-02-15 02:58:00', '2018-02-15 02:58:00'),
(195, 2, 560, 'Purchase Product', 'default.jpg', '2018-02-14', '2018-02-15 03:25:23', '2018-02-15 03:25:23'),
(198, 2, 324.96000000000004, 'Purchase Product', 'default.jpg', '2018-02-17', '2018-02-17 17:14:29', '2018-02-17 17:14:29'),
(199, 2, 798, 'Purchase Product', 'default.jpg', '2018-02-17', '2018-02-17 17:15:22', '2018-02-17 17:15:22'),
(200, 2, 264, 'Purchase Product', 'default.jpg', '2018-02-17', '2018-02-17 17:16:55', '2018-02-17 17:16:55'),
(201, 2, 480, 'Purchase Product', 'default.jpg', '2018-02-17', '2018-02-17 17:17:26', '2018-02-17 17:17:26'),
(202, 2, 240, 'Purchase Product', 'default.jpg', '2018-02-17', '2018-02-17 17:18:10', '2018-02-17 17:18:10'),
(203, 2, 80, 'Purchase Product', 'default.jpg', '2018-02-17', '2018-02-17 17:19:49', '2018-02-17 17:19:49'),
(204, 2, 540, 'Purchase Product', 'default.jpg', '2018-02-19', '2018-02-19 21:10:23', '2018-02-19 21:10:23'),
(205, 2, 810, 'Purchase Product', 'default.jpg', '2018-02-20', '2018-02-20 19:43:23', '2018-02-20 19:43:23'),
(206, 2, 540, 'Purchase Product', 'default.jpg', '2018-02-27', '2018-02-27 17:24:59', '2018-02-27 17:24:59'),
(207, 2, 330, 'Purchase Product', 'default.jpg', '2018-02-27', '2018-02-27 23:34:53', '2018-02-27 23:34:53'),
(208, 2, 810, 'Purchase Product', 'default.jpg', '2018-02-28', '2018-02-28 15:37:26', '2018-02-28 15:37:26'),
(209, 2, 798, 'Purchase Product', 'default.jpg', '2018-02-28', '2018-02-28 17:54:14', '2018-02-28 17:54:14'),
(210, 2, 284, 'Purchase Product', 'default.jpg', '2018-02-28', '2018-02-28 17:54:59', '2018-02-28 17:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Salary', NULL, NULL),
(2, 'Purchase', NULL, NULL),
(4, 'Daily Deposit', '2017-12-04 20:02:24', '2017-12-04 20:02:24'),
(11, 'Toiletries Products', '2018-01-08 12:35:08', '2018-01-08 12:35:08'),
(12, 'Office Accessories', '2018-01-08 12:35:55', '2018-01-08 12:35:55'),
(13, 'Kitchen Product', '2018-01-08 12:37:08', '2018-01-08 12:37:08'),
(14, 'Laundry Services', '2018-01-08 12:38:16', '2018-01-08 12:38:16'),
(15, 'Furniture', '2018-01-08 12:40:31', '2018-01-08 12:40:31'),
(16, 'Electric Products', '2018-01-08 12:41:19', '2018-01-08 12:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `income_cat_id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `income_cat_id`, `amount`, `title`, `date`, `created_at`, `updated_at`) VALUES
(54, 5, 3585, 'Room Booking Income', '2018-01-16', '2018-01-08 13:10:49', '2018-01-16 21:25:00'),
(57, 5, 1200, 'Room Booking Income', '2018-01-15', '2018-01-15 11:52:04', '2018-01-15 11:52:04'),
(58, 5, 2500, 'Room Booking Income', '2018-01-15', '2018-01-15 12:06:24', '2018-01-15 12:06:24'),
(59, 5, 2490, 'Room Booking Income', '2018-01-17', '2018-01-17 17:39:22', '2018-01-17 17:39:22'),
(60, 5, 2500, 'Room Booking Income', '2018-01-17', '2018-01-17 20:39:39', '2018-01-17 20:39:39'),
(61, 5, 18000, 'Room Booking Income', '2018-01-18', '2018-01-18 19:19:51', '2018-01-18 19:19:51'),
(62, 5, 18000, 'Room Booking Income', '2018-01-18', '2018-01-18 19:20:22', '2018-01-18 19:20:22'),
(63, 5, 2500, 'Room Booking Income', '2018-01-23', '2018-01-23 20:41:23', '2018-01-23 20:41:23'),
(64, 5, 2400, 'Room Booking Income', '2018-01-23', '2018-01-23 20:49:45', '2018-01-23 20:49:45'),
(65, 5, 3990, 'Room Booking Income', '2018-01-24', '2018-01-24 14:04:37', '2018-01-24 14:04:37'),
(66, 5, 2400, 'Room Booking Income', '2018-02-01', '2018-02-01 19:38:27', '2018-02-01 19:38:27'),
(67, 5, 1200, 'Room Booking Income', '2018-02-01', '2018-02-01 23:01:47', '2018-02-01 23:01:47'),
(68, 5, 2500, 'Room Booking Income', '2018-02-25', '2018-02-25 19:29:02', '2018-02-25 19:29:02'),
(69, 5, 1700, 'Room Booking Income', '2018-02-26', '2018-02-27 01:59:41', '2018-02-27 01:59:41'),
(70, 5, 3500, 'Room Booking Income', '2018-02-26', '2018-02-27 02:00:36', '2018-02-27 02:00:36'),
(71, 5, 4000, 'Room Booking Income', '2018-02-28', '2018-02-28 17:49:01', '2018-02-28 17:49:01'),
(72, 5, 5000, 'Room Booking Income', '2018-02-28', '2018-02-28 17:49:29', '2018-02-28 17:49:29'),
(73, 5, 2500, 'Room Booking Income', '2018-02-28', '2018-02-28 17:49:45', '2018-02-28 17:49:45'),
(74, 5, 2500, 'Room Booking Income', '2018-02-28', '2018-02-28 17:50:13', '2018-02-28 17:50:13'),
(75, 5, 2500, 'Room Booking Income', '2018-02-28', '2018-02-28 17:50:35', '2018-02-28 17:50:35'),
(76, 5, 2500, 'Room Booking Income', '2018-02-28', '2018-02-28 17:50:52', '2018-02-28 17:50:52'),
(77, 5, 3500, 'Room Booking Income', '2018-02-28', '2018-02-28 17:51:23', '2018-02-28 17:51:23'),
(78, 5, 1700, 'Room Booking Income', '2018-02-28', '2018-02-28 17:51:49', '2018-02-28 17:51:49'),
(79, 5, 1700, 'Room Booking Income', '2018-02-28', '2018-02-28 17:52:12', '2018-02-28 17:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'Room Booking', '2017-12-04 22:36:05', '2017-12-04 22:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_amounts`
--

CREATE TABLE `invoice_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `subtotal` double NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advance` double NOT NULL,
  `total` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_amounts`
--

INSERT INTO `invoice_amounts` (`id`, `book_id`, `subtotal`, `discount`, `advance`, `total`, `status`, `created_at`, `updated_at`) VALUES
(37, 43, 2400, '', 0, 2400, 1, '2018-01-14 17:07:16', '2018-01-25 21:14:56'),
(38, 53, 3500, '', 0, 3500, 1, '2018-01-14 17:07:33', '2018-01-14 19:39:13'),
(40, 55, 2500, '', 2500, 0, 1, '2018-01-15 12:06:19', '2018-01-15 12:06:24'),
(41, 59, 2500, '10%', 0, 2250, 0, '2018-01-17 11:35:03', '2018-01-17 11:35:17'),
(42, 60, 2500, '10%', 0, 2250, 1, '2018-01-17 11:39:03', '2018-01-17 17:39:22'),
(43, 62, 2500, '', 0, 2500, 1, '2018-01-17 14:39:29', '2018-01-17 20:39:39'),
(44, 66, 18000, '', 0, 18000, 1, '2018-01-18 13:19:51', '2018-01-18 19:19:51'),
(45, 65, 18000, '', 0, 18000, 1, '2018-01-18 13:20:21', '2018-01-18 19:20:22'),
(46, 75, 2500, '', 0, 2500, 1, '2018-01-23 14:41:22', '2018-01-23 20:41:23'),
(47, 77, 4000, '10%', 0, 3600, 1, '2018-01-24 08:04:12', '2018-01-24 14:04:37'),
(48, 102, 2400, '', 0, 2400, 1, '2018-02-01 13:34:42', '2018-02-01 19:38:27'),
(49, 104, 1200, '', 0, 1200, 1, '2018-02-01 17:01:45', '2018-02-01 23:01:47'),
(50, 147, 2500, '', 0, 2500, 1, '2018-02-25 13:28:53', '2018-02-25 19:29:02'),
(51, 149, 1700, '', 0, 1700, 1, '2018-02-26 19:59:39', '2018-02-27 01:59:41'),
(52, 148, 3500, '', 0, 3500, 1, '2018-02-26 20:00:34', '2018-02-27 02:00:36'),
(53, 161, 4000, '', 0, 4000, 1, '2018-02-28 11:48:28', '2018-02-28 17:49:01'),
(54, 160, 5000, '', 0, 5000, 1, '2018-02-28 11:49:27', '2018-02-28 17:49:29'),
(55, 159, 2500, '', 0, 2500, 1, '2018-02-28 11:49:44', '2018-02-28 17:49:45'),
(56, 158, 2500, '', 0, 2500, 1, '2018-02-28 11:50:12', '2018-02-28 17:50:13'),
(57, 157, 2500, '', 0, 2500, 1, '2018-02-28 11:50:32', '2018-02-28 17:50:35'),
(58, 156, 2500, '', 0, 2500, 1, '2018-02-28 11:50:50', '2018-02-28 17:50:52'),
(59, 155, 3500, '', 0, 3500, 1, '2018-02-28 11:51:20', '2018-02-28 17:51:23'),
(60, 154, 3500, '', 0, 3500, 0, '2018-02-28 11:51:42', '2018-02-28 11:51:42'),
(61, 153, 1700, '', 0, 1700, 1, '2018-02-28 11:51:48', '2018-02-28 17:51:49'),
(62, 151, 1700, '', 0, 1700, 1, '2018-02-28 11:52:07', '2018-02-28 17:52:12');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_12_091655_create_AdminUsers_table', 1),
(4, '2017_09_28_074227_create_admin_user_roles_table', 1),
(5, '2017_09_28_074648_create_admin_user_role_assigns_table', 1),
(6, '2017_10_05_025237_create_departments_table', 1),
(7, '2017_10_05_035421_create_designations_table', 1),
(23, '2017_11_20_062744_create_product_categories_table', 2),
(24, '2017_11_20_062806_create_expense_categories_table', 2),
(25, '2017_11_20_062826_create_income_categories_table', 2),
(26, '2017_11_20_063126_create_rooms_table', 2),
(27, '2017_11_20_063139_create_room_numbers_table', 2),
(28, '2017_11_20_063208_create_products_table', 2),
(29, '2017_11_20_063902_create_sent_products_table', 2),
(30, '2017_11_20_063920_create_damage_products_table', 2),
(31, '2017_11_20_063951_create_employees_table', 2),
(32, '2017_11_20_064011_create_payrolls_table', 2),
(33, '2017_11_20_064028_create_allowances_table', 2),
(34, '2017_11_20_064046_create_deductions_table', 2),
(35, '2017_11_20_064104_create_incomes_table', 2),
(36, '2017_11_20_064113_create_expenses_table', 2),
(37, '2017_11_20_064127_create_bookings_table', 2),
(38, '2017_11_22_012842_create_purchases_table', 2),
(39, '2017_11_24_032019_create_booking_extra_facilities_table', 3),
(40, '2017_11_24_063228_create_invoice_amounts_table', 4);

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
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double NOT NULL,
  `total_allowance` double NOT NULL,
  `total_deduction` double NOT NULL,
  `net_salary` double NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `department_id`, `employee_id`, `month`, `year`, `basic_salary`, `total_allowance`, `total_deduction`, `net_salary`, `status`, `created_at`, `updated_at`) VALUES
(21, 16, 33, 'December', '2017', 6000, 0, 0, 6000, 'Paid', '2018-01-10 14:16:34', '2018-01-10 14:16:34'),
(22, 15, 26, 'January', '2017', 7000, 0, 0, 7000, 'Paid', '2018-01-10 14:19:54', '2018-01-10 14:19:54'),
(23, 14, 21, 'December', '2017', 7500, 0, 0, 7500, 'Paid', '2018-01-10 19:44:45', '2018-01-10 19:44:45'),
(24, 15, 32, 'December', '2017', 7000, 0, 0, 7000, 'Paid', '2018-01-10 19:47:22', '2018-01-10 19:47:22'),
(25, 15, 27, 'December', '2017', 7000, 0, 0, 7000, 'Paid', '2018-01-10 19:47:50', '2018-01-10 19:47:50'),
(26, 15, 25, 'December', '2017', 7000, 0, 0, 7000, 'Paid', '2018-01-10 19:50:15', '2018-01-10 19:50:15'),
(27, 15, 28, 'December', '2017', 7000, 0, 0, 7000, 'Paid', '2018-01-10 19:50:47', '2018-01-10 19:50:47'),
(28, 15, 30, 'December', '2017', 7000, 0, 0, 7000, 'Paid', '2018-01-10 19:51:25', '2018-01-10 19:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_category_id`, `name`, `notify_quantity`, `created_at`, `updated_at`) VALUES
(18, 18, 'General A/C 4.5ton', 0, '2018-01-07 22:56:11', '2018-02-10 23:41:59'),
(19, 18, 'Walton A/C 1.5ton', 0, '2018-01-07 22:56:39', '2018-02-10 23:42:12'),
(20, 18, 'Walton A/C 2 ton', 0, '2018-01-07 22:57:15', '2018-01-28 18:37:50'),
(21, 18, 'Walton TV 28"', 2, '2018-01-07 22:57:57', '2018-01-07 22:57:57'),
(22, 18, 'Walton TV 32"', 2, '2018-01-07 22:58:15', '2018-01-07 22:58:15'),
(23, 18, 'Walton TV 40"', 0, '2018-01-07 22:58:36', '2018-01-16 23:58:51'),
(24, 18, 'Electric Fan 56"', 2, '2018-01-07 23:22:19', '2018-01-07 23:22:19'),
(25, 18, 'Electric Fan 32"', 2, '2018-01-07 23:22:38', '2018-01-07 23:22:38'),
(26, 18, 'Electric Fan 24"', 2, '2018-01-07 23:22:47', '2018-01-07 23:22:47'),
(27, 18, 'Wall Mounted Fan', 2, '2018-01-07 23:38:46', '2018-01-07 23:38:46'),
(28, 18, 'Computer', 2, '2018-01-07 23:49:50', '2018-01-07 23:53:30'),
(29, 18, 'Printer', 2, '2018-01-07 23:54:38', '2018-01-07 23:54:38'),
(30, 18, 'Router&Switch', 2, '2018-01-07 23:55:03', '2018-01-07 23:59:40'),
(31, 18, 'Projector', 2, '2018-01-07 23:56:44', '2018-01-07 23:56:44'),
(33, 22, 'Single Bed', 2, '2018-01-08 00:05:11', '2018-01-08 00:05:11'),
(34, 22, 'Double Bed', 2, '2018-01-08 00:07:09', '2018-01-08 00:07:09'),
(35, 22, 'Black Sofa', 2, '2018-01-08 00:09:33', '2018-01-08 00:09:33'),
(40, 22, 'Double Door Almari', 2, '2018-01-08 00:19:09', '2018-01-08 00:19:09'),
(41, 22, 'Central Table', 2, '2018-01-08 00:20:39', '2018-01-08 00:20:39'),
(42, 22, 'Single Door Almari', 2, '2018-01-08 00:21:32', '2018-01-08 00:21:32'),
(43, 22, 'Royal Sofa', 2, '2018-01-08 00:22:05', '2018-01-08 00:22:05'),
(44, 22, 'Coffee Tables', 2, '2018-01-08 00:23:03', '2018-01-08 00:23:03'),
(45, 22, 'Coffee Chair', 2, '2018-01-08 00:24:48', '2018-01-08 00:24:48'),
(47, 22, 'Hatil Chair', 2, '2018-01-08 00:26:25', '2018-01-08 00:26:25'),
(48, 22, 'Hatil Table', 2, '2018-01-08 00:27:21', '2018-01-08 00:27:21'),
(49, 22, 'Side Box', 2, '2018-01-08 00:28:14', '2018-01-08 00:28:14'),
(50, 22, 'Flower Wooden Box', 2, '2018-01-08 00:30:02', '2018-01-08 00:30:02'),
(51, 23, 'Soap', 2, '2018-01-08 00:52:13', '2018-01-08 00:52:13'),
(52, 23, 'Shampoo', 2, '2018-01-08 00:52:30', '2018-01-08 00:52:30'),
(53, 23, 'Toothpaste', 2, '2018-01-08 00:53:43', '2018-01-08 00:53:43'),
(54, 23, 'Toothbrush', 39, '2018-01-08 00:55:32', '2018-01-11 13:09:04'),
(55, 23, 'Toilet Paper', 2, '2018-01-08 00:56:09', '2018-01-08 00:56:09'),
(56, 23, 'Facial Tissue (Box)', 24, '2018-01-08 00:57:12', '2018-01-11 13:03:53'),
(57, 23, 'Paper Napkin (tissue)', 2, '2018-01-08 00:59:15', '2018-01-08 00:59:15'),
(58, 23, 'Harpic Toilet Cleaner', 2, '2018-01-08 01:00:43', '2018-01-08 01:00:43'),
(59, 23, 'Floor Cleaner', 2, '2018-01-08 01:02:15', '2018-01-08 01:02:15'),
(60, 23, 'Varsol Tails Cleaner', 2, '2018-01-08 01:04:50', '2018-01-08 01:04:50'),
(61, 23, 'Glass Cleaner', 2, '2018-01-08 01:05:36', '2018-01-08 01:05:36'),
(63, 23, 'Vim Dish Washer', 2, '2018-01-08 01:07:41', '2018-01-08 01:07:41'),
(64, 23, 'Aerosol Spray', 2, '2018-01-08 01:08:37', '2018-01-08 01:08:37'),
(65, 23, 'Room Spray', 2, '2018-01-08 01:09:08', '2018-01-08 01:09:08'),
(66, 28, 'Mum Water', 48, '2018-01-08 01:10:21', '2018-02-28 12:26:59'),
(67, 23, 'Hand Wash', 2, '2018-01-08 01:11:28', '2018-01-08 01:11:28'),
(68, 18, 'Refrigerator', 2, '2018-01-08 01:13:19', '2018-01-08 01:13:19'),
(69, 19, 'Bed Sheet', 2, '2018-01-08 01:15:09', '2018-01-08 01:15:09'),
(70, 19, 'Towel', 2, '2018-01-08 01:15:53', '2018-01-08 01:15:53'),
(71, 19, 'Pillow Cover', 2, '2018-01-08 01:17:06', '2018-01-08 01:17:06'),
(72, 19, 'Pillow', 2, '2018-01-08 01:17:35', '2018-01-08 01:17:35'),
(74, 19, 'Blankets Cover', 2, '2018-01-08 01:19:34', '2018-01-08 01:19:34'),
(75, 19, 'Double Mattress', 2, '2018-01-08 01:21:47', '2018-01-08 01:21:47'),
(76, 19, 'Single Mattress', 2, '2018-01-08 01:22:21', '2018-01-08 01:22:21'),
(77, 19, 'Door Mats', 2, '2018-01-08 01:23:51', '2018-01-08 01:23:51'),
(78, 19, 'Prayer Mat (Jai Namaz)', 2, '2018-01-08 01:25:46', '2018-01-08 01:25:46'),
(79, 19, 'Window Curtain', 2, '2018-01-08 01:32:41', '2018-01-08 01:32:41'),
(80, 18, 'Intercom', 2, '2018-01-08 01:38:01', '2018-01-08 01:38:01'),
(81, 19, 'Hawaii Sandal', 2, '2018-01-08 01:39:13', '2018-01-08 01:39:13'),
(82, 19, 'Baskets & Bins', 2, '2018-01-08 01:41:05', '2018-01-08 01:41:05'),
(83, 19, 'Ashtray', 2, '2018-01-08 01:44:37', '2018-01-08 01:44:37'),
(84, 20, 'Vertical curtain', 2, '2018-01-08 01:46:17', '2018-01-08 01:46:17'),
(90, 21, 'Fan Clamp', 2, '2018-01-08 01:57:48', '2018-01-08 01:57:48'),
(92, 25, '9W LED Light', 2, '2018-01-08 02:04:25', '2018-01-08 02:04:25'),
(93, 25, 'Wall Mounted Light Holder', 2, '2018-01-08 02:05:12', '2018-01-08 02:05:12'),
(94, 25, 'Saling Rose', 2, '2018-01-08 02:08:55', '2018-01-08 02:08:55'),
(95, 25, 'Circuit breaker', 2, '2018-01-08 02:09:47', '2018-01-08 02:09:47'),
(96, 21, '1/2 clamp(L)', 2, '2018-01-08 02:12:11', '2018-01-08 02:12:11'),
(97, 21, 'Door Hinges', 2, '2018-01-08 02:14:39', '2018-01-08 02:14:39'),
(98, 21, 'Handle', 2, '2018-01-08 02:15:45', '2018-01-08 02:15:45'),
(99, 21, 'Door Magnetic Stopper', 2, '2018-01-08 02:17:23', '2018-01-08 02:17:23'),
(100, 25, '32W LED Rod Light', 2, '2018-01-08 02:27:47', '2018-01-08 02:27:47'),
(101, 18, '45A DP Switch', 2, '2018-01-08 02:28:43', '2018-01-08 02:28:43'),
(102, 25, '1 Gang Switch', 2, '2018-01-08 02:29:19', '2018-01-08 02:29:19'),
(103, 25, '2 Gang Switch', 2, '2018-01-08 02:29:37', '2018-01-08 02:29:37'),
(104, 25, '3 Gang Switch', 2, '2018-01-08 02:29:50', '2018-01-08 02:29:50'),
(105, 25, '4 Gang Switch', 2, '2018-01-08 02:30:05', '2018-01-08 02:30:05'),
(107, 25, 'Multi-Socket(eg)', 2, '2018-01-08 02:32:04', '2018-01-08 02:32:04'),
(108, 25, '2 Pin Socket (eg)', 2, '2018-01-08 02:32:51', '2018-01-08 02:32:51'),
(109, 25, 'A/C Socket (eg)', 2, '2018-01-08 02:33:24', '2018-01-08 02:33:24'),
(110, 25, 'Fan Regulator (eg)', 2, '2018-01-08 02:34:23', '2018-01-08 02:34:23'),
(111, 25, '3W LED Light', 2, '2018-01-08 12:13:08', '2018-01-08 12:13:08'),
(112, 19, 'Blankets', 33, '2018-01-25 09:43:27', '2018-01-25 09:43:27'),
(114, 18, 'General A/C 2 ton', 3, '2018-01-29 09:57:06', '2018-01-29 09:57:06'),
(115, 19, 'Mosquito Net', 1, '2018-01-30 19:09:32', '2018-01-30 19:09:32'),
(116, 19, 'Good Night Advanced Machine', 30, '2018-02-11 09:28:14', '2018-02-11 09:28:14'),
(117, 18, 'Good Night Advanced Liquid', 30, '2018-02-11 09:28:50', '2018-02-11 09:28:50'),
(118, 28, 'Coffee', 60, '2018-02-14 21:17:34', '2018-02-14 21:17:34'),
(119, 28, 'Tea  Bag', 4, '2018-02-14 21:26:18', '2018-02-14 21:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(18, 'Electronic  Devise & Products', '2018-01-07 19:26:59', '2018-01-08 01:59:39'),
(19, 'Room Accessories', '2018-01-07 19:27:25', '2018-01-07 19:27:25'),
(20, 'Office Accessories', '2018-01-07 19:27:49', '2018-01-07 19:27:49'),
(21, 'Hardware products', '2018-01-07 22:40:52', '2018-01-07 22:40:52'),
(22, 'Furniture', '2018-01-07 23:14:32', '2018-01-07 23:14:32'),
(23, 'Toiletries Products', '2018-01-07 23:18:19', '2018-01-07 23:18:19'),
(25, 'Electric Products', '2018-01-08 02:00:56', '2018-01-08 02:00:56'),
(28, 'Food & beverage', '2018-02-14 21:05:45', '2018-02-14 21:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_category_id` int(10) UNSIGNED NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `quantity` double NOT NULL,
  `total_price` double NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `p_category_id`, `p_id`, `price`, `quantity`, `total_price`, `status`, `purchase_by`, `date`, `created_at`, `updated_at`) VALUES
(109, 23, 51, 10, 52, 520, 'Paid', 'shakib ahmmed', '2018-01-25', '2018-01-25 16:44:29', '2018-01-25 16:44:29'),
(110, 23, 52, 1, 50, 50, 'Paid', 'shakib ahmmed', '2018-01-25', '2018-01-25 16:45:17', '2018-01-25 16:45:17'),
(111, 23, 53, 5, 73, 365, 'Paid', 'shakib ahmmed', '2018-01-25', '2018-01-25 16:45:40', '2018-01-25 16:45:40'),
(112, 23, 54, 10, 42, 420, 'Paid', 'shakib ahmmed', '2018-01-25', '2018-01-25 16:46:53', '2018-01-25 16:46:53'),
(113, 23, 55, 18, 18, 324, 'Paid', 'shakib ahmmed', '2018-01-25', '2018-01-25 16:47:26', '2018-01-25 16:47:26'),
(114, 23, 56, 48, 26, 1248, 'Paid', 'shakib ahmmed', '2018-01-25', '2018-01-25 16:48:13', '2018-01-28 13:47:49'),
(115, 23, 57, 45, 2, 90, 'Paid', 'shakib ahmmed', '2018-01-25', '2018-01-25 16:48:47', '2018-01-25 16:48:47'),
(116, 23, 66, 15, 47, 705, 'Paid', 'shakib ahmmed', '2018-01-25', '2018-01-25 16:49:37', '2018-01-25 16:49:37'),
(117, 23, 66, 12, 48, 576, 'Paid', 'shakib ahmmed', '2018-01-30', '2018-01-30 18:35:56', '2018-01-30 18:35:56'),
(119, 23, 57, 45, 2, 90, 'Paid', 'shakib ahmmed', '2018-01-30', '2018-01-31 01:06:07', '2018-01-31 01:06:07'),
(120, 19, 115, 500, 1, 500, 'Paid', 'shakib ahmmed', '2018-01-30', '2018-01-31 01:10:15', '2018-01-31 01:10:15'),
(121, 23, 66, 11.25, 24, 270, 'Paid', 'shakib ahmmed', '2018-01-31', '2018-01-31 18:23:28', '2018-01-31 18:23:28'),
(122, 23, 51, 9.5, 84, 798, 'Paid', 'shakib ahmmed', '2018-01-31', '2018-01-31 18:24:44', '2018-01-31 18:24:44'),
(123, 23, 52, 0.83, 84, 69.72, 'Paid', 'shakib ahmmed', '2018-01-31', '2018-01-31 18:29:47', '2018-01-31 18:29:47'),
(124, 23, 54, 5.42, 84, 455.28, 'Paid', 'shakib ahmmed', '2018-01-31', '2018-01-31 18:32:20', '2018-01-31 18:32:20'),
(125, 23, 53, 5.5, 84, 462, 'Paid', 'shakib ahmmed', '2018-01-31', '2018-01-31 18:34:36', '2018-01-31 18:34:36'),
(126, 23, 64, 270, 3, 810, 'Paid', 'shakib ahmmed', '2018-01-31', '2018-01-31 18:35:17', '2018-01-31 18:35:17'),
(127, 23, 55, 20, 12, 240, 'Paid', 'shakib ahmmed', '2018-01-31', '2018-01-31 18:36:20', '2018-01-31 18:36:20'),
(130, 23, 66, 11.25, 48, 528, 'Paid', 'shakib ahmmed', '2018-02-07', '2018-02-07 19:29:13', '2018-02-17 10:36:35'),
(131, 23, 66, 11.25, 24, 270, 'Paid', 'shakib ahmmed', '2018-02-07', '2018-02-08 02:49:39', '2018-02-08 02:49:39'),
(132, 23, 56, 48, 25, 1200, 'Paid', 'shakib ahmmed', '2018-02-08', '2018-02-09 00:01:34', '2018-02-09 00:01:34'),
(133, 23, 57, 40, 4, 160, 'Paid', 'shakib ahmmed', '2018-02-08', '2018-02-09 00:02:28', '2018-02-09 00:02:28'),
(134, 19, 116, 115, 30, 3450, 'Paid', 'shakib ahmmed', '2018-02-09', '2018-02-11 15:30:42', '2018-02-11 09:31:12'),
(135, 23, 64, 270, 1, 270, 'Paid', 'shakib ahmmed', '2018-02-08', '2018-02-11 15:54:41', '2018-02-11 09:57:57'),
(136, 23, 52, 0.83, 84, 69.72, 'Paid', 'shakib ahmmed', '2018-02-08', '2018-02-11 15:56:53', '2018-02-11 09:58:31'),
(137, 23, 54, 5.4, 48, 259.20000000000005, 'Paid', 'shakib ahmmed', '2018-02-08', '2018-02-11 15:57:41', '2018-02-11 09:58:07'),
(138, 28, 118, 9.333333333333334, 60, 560, 'Paid', 'shakib ahmmed', '2018-02-14', '2018-02-15 03:25:23', '2018-02-15 03:25:23'),
(139, 28, 119, 71, 4, 284, 'Paid', 'shakib ahmmed', '2018-02-14', '2018-02-15 03:27:09', '2018-02-15 03:27:09'),
(140, 23, 66, 11.25, 48, 540, 'Paid', 'shakib ahmmed', '2018-02-14', '2018-02-15 03:29:11', '2018-02-15 03:29:11'),
(141, 23, 54, 5.416, 60, 324.96000000000004, 'Paid', 'shakib ahmmed', '2018-02-17', '2018-02-17 17:14:29', '2018-02-17 17:14:29'),
(142, 23, 51, 9.5, 84, 798, 'Paid', 'shakib ahmmed', '2018-02-17', '2018-02-17 17:15:22', '2018-02-17 17:15:22'),
(143, 23, 53, 5.5, 48, 264, 'Paid', 'shakib ahmmed', '2018-02-17', '2018-02-17 17:16:55', '2018-02-17 17:16:55'),
(144, 23, 56, 48, 10, 480, 'Paid', 'shakib ahmmed', '2018-02-17', '2018-02-17 17:17:26', '2018-02-17 17:17:26'),
(145, 23, 55, 20, 12, 240, 'Paid', 'shakib ahmmed', '2018-02-17', '2018-02-17 17:18:10', '2018-02-17 17:18:10'),
(146, 23, 67, 40, 2, 80, 'Paid', 'shakib ahmmed', '2018-02-17', '2018-02-17 17:19:49', '2018-02-17 17:19:49'),
(147, 23, 66, 11.25, 48, 540, 'Paid', 'shakib ahmmed', '2018-02-19', '2018-02-19 21:10:22', '2018-02-19 21:10:22'),
(148, 23, 66, 11.25, 72, 810, 'Paid', 'shakib ahmmed', '2018-02-20', '2018-02-20 19:43:23', '2018-02-20 19:43:23'),
(149, 23, 66, 11.25, 48, 540, 'Paid', 'shakib ahmmed', '2018-02-27', '2018-02-27 17:24:59', '2018-02-27 17:24:59'),
(150, 19, 82, 55, 6, 330, 'Paid', 'shakib ahmmed', '2018-02-27', '2018-02-27 23:34:53', '2018-02-27 23:34:53'),
(151, 23, 66, 11.25, 72, 810, 'Paid', 'shakib ahmmed', '2018-02-28', '2018-02-28 15:37:26', '2018-02-28 15:37:26'),
(152, 28, 118, 9.5, 84, 798, 'Paid', 'shakib ahmmed', '2018-02-28', '2018-02-28 17:54:14', '2018-02-28 17:54:14'),
(153, 28, 119, 71, 4, 284, 'Paid', 'shakib ahmmed', '2018-02-28', '2018-02-28 17:54:59', '2018-02-28 17:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_expense`
--

CREATE TABLE `purchase_expense` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `expense_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_expense`
--

INSERT INTO `purchase_expense` (`id`, `purchase_id`, `expense_id`, `created_at`, `updated_at`) VALUES
(1, 51, 90, '2018-01-18 16:51:09', '0000-00-00 00:00:00'),
(2, 77, 125, '2018-01-21 16:31:15', '2018-01-21 16:31:15'),
(3, 78, 126, '2018-01-25 01:00:33', '2018-01-25 01:00:33'),
(4, 79, 127, '2018-01-25 01:01:37', '2018-01-25 01:01:37'),
(5, 80, 128, '2018-01-25 01:02:02', '2018-01-25 01:02:02'),
(6, 81, 129, '2018-01-25 01:02:40', '2018-01-25 01:02:40'),
(7, 82, 130, '2018-01-25 01:03:19', '2018-01-25 01:03:19'),
(8, 83, 131, '2018-01-25 01:03:53', '2018-01-25 01:03:53'),
(9, 84, 132, '2018-01-25 01:04:42', '2018-01-25 01:04:42'),
(10, 85, 133, '2018-01-25 01:06:14', '2018-01-25 01:06:14'),
(11, 86, 134, '2018-01-25 01:06:55', '2018-01-25 01:06:55'),
(12, 87, 135, '2018-01-25 01:08:45', '2018-01-25 01:08:45'),
(13, 88, 136, '2018-01-25 01:09:19', '2018-01-25 01:09:19'),
(14, 89, 137, '2018-01-25 01:12:50', '2018-01-25 01:12:50'),
(15, 90, 138, '2018-01-25 01:15:49', '2018-01-25 01:15:49'),
(16, 91, 139, '2018-01-25 01:16:50', '2018-01-25 01:16:50'),
(17, 92, 140, '2018-01-25 01:18:16', '2018-01-25 01:18:16'),
(18, 93, 141, '2018-01-25 15:44:26', '2018-01-25 15:44:26'),
(19, 94, 142, '2018-01-25 15:46:21', '2018-01-25 15:46:21'),
(20, 95, 143, '2018-01-25 15:47:22', '2018-01-25 15:47:22'),
(21, 96, 144, '2018-01-25 15:48:29', '2018-01-25 15:48:29'),
(22, 97, 145, '2018-01-25 15:49:22', '2018-01-25 15:49:22'),
(23, 98, 146, '2018-01-25 15:50:15', '2018-01-25 15:50:15'),
(24, 99, 147, '2018-01-25 15:55:20', '2018-01-25 15:55:20'),
(25, 100, 148, '2018-01-25 15:55:52', '2018-01-25 15:55:52'),
(26, 101, 149, '2018-01-25 15:56:14', '2018-01-25 15:56:14'),
(27, 102, 150, '2018-01-25 15:57:42', '2018-01-25 15:57:42'),
(28, 103, 151, '2018-01-25 15:58:24', '2018-01-25 15:58:24'),
(29, 104, 152, '2018-01-25 15:59:11', '2018-01-25 15:59:11'),
(30, 105, 153, '2018-01-25 15:59:52', '2018-01-25 15:59:52'),
(31, 106, 154, '2018-01-25 16:05:10', '2018-01-25 16:05:10'),
(32, 107, 155, '2018-01-25 16:17:11', '2018-01-25 16:17:11'),
(33, 108, 156, '2018-01-25 16:17:45', '2018-01-25 16:17:45'),
(34, 109, 157, '2018-01-25 16:44:29', '2018-01-25 16:44:29'),
(35, 110, 158, '2018-01-25 16:45:17', '2018-01-25 16:45:17'),
(36, 111, 159, '2018-01-25 16:45:40', '2018-01-25 16:45:40'),
(37, 112, 160, '2018-01-25 16:46:53', '2018-01-25 16:46:53'),
(38, 113, 161, '2018-01-25 16:47:26', '2018-01-25 16:47:26'),
(39, 114, 162, '2018-01-25 16:48:13', '2018-01-25 16:48:13'),
(40, 115, 163, '2018-01-25 16:48:47', '2018-01-25 16:48:47'),
(41, 116, 164, '2018-01-25 16:49:37', '2018-01-25 16:49:37'),
(42, 117, 165, '2018-01-30 18:35:56', '2018-01-30 18:35:56'),
(43, 118, 166, '2018-01-30 19:48:21', '2018-01-30 19:48:21'),
(44, 119, 167, '2018-01-31 01:06:07', '2018-01-31 01:06:07'),
(45, 120, 168, '2018-01-31 01:10:15', '2018-01-31 01:10:15'),
(46, 121, 169, '2018-01-31 18:23:28', '2018-01-31 18:23:28'),
(47, 122, 170, '2018-01-31 18:24:44', '2018-01-31 18:24:44'),
(48, 123, 171, '2018-01-31 18:29:47', '2018-01-31 18:29:47'),
(49, 124, 172, '2018-01-31 18:32:20', '2018-01-31 18:32:20'),
(50, 125, 173, '2018-01-31 18:34:36', '2018-01-31 18:34:36'),
(51, 126, 174, '2018-01-31 18:35:17', '2018-01-31 18:35:17'),
(52, 127, 175, '2018-01-31 18:36:20', '2018-01-31 18:36:20'),
(53, 128, 176, '2018-02-04 16:37:40', '2018-02-04 16:37:40'),
(54, 129, 177, '2018-02-04 16:38:28', '2018-02-04 16:38:28'),
(55, 130, 181, '2018-02-07 19:29:13', '2018-02-07 19:29:13'),
(56, 131, 182, '2018-02-08 02:49:39', '2018-02-08 02:49:39'),
(57, 132, 188, '2018-02-09 00:01:34', '2018-02-09 00:01:34'),
(58, 133, 189, '2018-02-09 00:02:28', '2018-02-09 00:02:28'),
(59, 134, 190, '2018-02-11 15:30:42', '2018-02-11 15:30:42'),
(60, 135, 191, '2018-02-11 15:54:41', '2018-02-11 15:54:41'),
(61, 136, 192, '2018-02-11 15:56:53', '2018-02-11 15:56:53'),
(62, 137, 193, '2018-02-11 15:57:41', '2018-02-11 15:57:41'),
(63, 138, 195, '2018-02-15 03:25:23', '2018-02-15 03:25:23'),
(64, 139, 196, '2018-02-15 03:27:09', '2018-02-15 03:27:09'),
(65, 140, 197, '2018-02-15 03:29:11', '2018-02-15 03:29:11'),
(66, 141, 198, '2018-02-17 17:14:29', '2018-02-17 17:14:29'),
(67, 142, 199, '2018-02-17 17:15:22', '2018-02-17 17:15:22'),
(68, 143, 200, '2018-02-17 17:16:55', '2018-02-17 17:16:55'),
(69, 144, 201, '2018-02-17 17:17:26', '2018-02-17 17:17:26'),
(70, 145, 202, '2018-02-17 17:18:10', '2018-02-17 17:18:10'),
(71, 146, 203, '2018-02-17 17:19:49', '2018-02-17 17:19:49'),
(72, 147, 204, '2018-02-19 21:10:23', '2018-02-19 21:10:23'),
(73, 148, 205, '2018-02-20 19:43:23', '2018-02-20 19:43:23'),
(74, 149, 206, '2018-02-27 17:24:59', '2018-02-27 17:24:59'),
(75, 150, 207, '2018-02-27 23:34:53', '2018-02-27 23:34:53'),
(76, 151, 208, '2018-02-28 15:37:26', '2018-02-28 15:37:26'),
(77, 152, 209, '2018-02-28 17:54:14', '2018-02-28 17:54:14'),
(78, 153, 210, '2018-02-28 17:54:59', '2018-02-28 17:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `facilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `category`, `bed_type`, `room_number`, `amount`, `facilities`, `created_at`, `updated_at`) VALUES
(23, '1', 'Single 2 Bed', '301', 4000, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:40:19', '2018-01-07 19:48:03'),
(24, '3', 'Single 1Bed', '302', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:42:44', '2018-01-07 19:48:13'),
(25, '3', 'Single 1Bed', '303', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:43:26', '2018-01-07 19:54:40'),
(26, '3', 'Single 1Bed', '304', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:43:49', '2018-01-07 19:48:36'),
(27, '0', 'Double 2 Bed', '305', 5000, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:45:04', '2018-01-07 19:48:46'),
(28, '2', 'Double 1 Bed', '306', 3500, 'A/C Room,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:45:38', '2018-02-24 22:36:22'),
(29, '3', 'Single 1Bed', '307', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:46:13', '2018-01-07 19:49:06'),
(30, '2', 'Double 1 Bed', '308', 3500, 'A/C Room,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:46:40', '2018-02-24 22:36:15'),
(31, '3', 'Single 1Bed', '309', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car Parking service,ATM Booth.', '2018-01-07 19:47:37', '2018-02-27 16:26:57'),
(32, '3', 'Single 1Bed', '310', 1700, ',A/C RoomCable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Car parking service,ATM Booth.', '2018-01-07 19:50:13', '2018-02-27 16:26:18'),
(33, '1', 'Single 2 Bed', '401', 4000, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:50:52', '2018-01-07 19:50:52'),
(34, '3', 'Single 1Bed', '402', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:51:15', '2018-01-07 19:51:15'),
(35, '3', 'Single 1Bed', '403', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:52:10', '2018-01-07 19:52:10'),
(36, '3', 'Single 1Bed', '404', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:52:43', '2018-01-07 19:52:43'),
(37, '2', 'Double 1 Bed', '405', 4500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service.Double Bathroom,Drawing Room.,ATM Booth', '2018-01-07 19:55:25', '2018-01-07 21:15:48'),
(38, '3', 'Single 1Bed', '406', 2500, 'A/C Room,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service, Free Car Parking,ATM Booth.', '2018-01-07 19:58:38', '2018-02-24 22:35:59'),
(40, '3', 'Single 1Bed', '408', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 19:59:43', '2018-01-07 20:06:38'),
(41, '3', 'Single 1Bed', '409', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 20:04:21', '2018-01-07 20:04:21'),
(42, '3', 'Single 1Bed', '410', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service, Free Car Parking,ATM Booth.', '2018-01-07 20:07:17', '2018-02-27 16:26:25'),
(43, '0', 'Double 2 Bed', '411', 4500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 20:07:45', '2018-01-07 20:07:45'),
(44, '3', 'Single 1Bed', '412', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 20:08:27', '2018-01-07 20:08:27'),
(45, '3', 'Single 1Bed', '413', 2500, 'A/C,Cable TV, Wi-Fi,Breakfast Complimentary,Laundry,Intercom,Hot Water,24/7 Room Service,Car service,ATM Booth.', '2018-01-07 20:09:13', '2018-01-07 20:09:13'),
(46, '3', 'Single 1Bed', '414', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', '2018-01-07 20:09:47', '2018-02-27 16:26:41'),
(47, '3', 'Single 1Bed', '415', 1700, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', '2018-01-07 20:10:26', '2018-02-27 16:26:36'),
(48, '3', 'Single 1 Bed', '407', 1200, 'A/C Room,Cable TV, Wi-Fi,Laundry,Intercom,Hot Water,24/7 Room Service,Free Car Parking,ATM Booth.', '2018-01-16 19:16:57', '2018-02-27 16:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `room_numbers`
--

CREATE TABLE `room_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `room_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sent_products`
--

CREATE TABLE `sent_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL,
  `outside_quantity` double NOT NULL,
  `receive_quantity` double NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sent_products`
--

INSERT INTO `sent_products` (`id`, `p_id`, `outside_quantity`, `receive_quantity`, `status`, `created_at`, `updated_at`) VALUES
(13, 70, 9, 35, 'Received', '2018-01-15 17:19:21', '2018-01-31 16:02:43'),
(14, 69, 48, 114, 'Received', '2018-01-15 17:22:18', '2018-02-01 19:18:46'),
(15, 71, 68, 134, 'Received', '2018-01-15 17:23:44', '2018-02-01 19:17:53'),
(16, 74, 6, 16, 'Received', '2018-01-15 17:24:17', '2018-02-22 20:15:31'),
(17, 71, 56, 56, 'Received', '2018-01-24 19:14:21', '2018-02-22 20:01:35'),
(18, 70, 26, 26, 'Received', '2018-01-24 19:18:54', '2018-02-22 20:01:57'),
(19, 69, 43, 43, 'Received', '2018-01-24 19:19:32', '2018-02-22 20:02:15'),
(20, 74, 4, 4, 'Received', '2018-01-24 19:20:59', '2018-02-22 20:02:38'),
(21, 69, 44, 44, 'Received', '2018-02-03 19:09:02', '2018-02-22 20:02:55'),
(22, 71, 70, 70, 'Received', '2018-02-03 19:09:19', '2018-02-22 20:01:04'),
(23, 74, 5, 0, 'sent', '2018-02-03 19:09:41', '2018-02-03 19:09:41'),
(24, 69, 34, 0, 'sent', '2018-02-22 20:03:55', '2018-02-22 20:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `use_products`
--

CREATE TABLE `use_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `use_products`
--

INSERT INTO `use_products` (`id`, `p_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 51, 5, '2018-01-25 11:15:25', '2018-01-25 11:15:25'),
(2, 56, 5, '2018-01-25 11:15:45', '2018-01-25 11:15:45'),
(3, 52, 5, '2018-01-25 11:16:39', '2018-01-25 11:16:39'),
(4, 53, 5, '2018-01-25 11:17:11', '2018-01-25 11:17:11'),
(5, 54, 5, '2018-01-25 11:17:24', '2018-01-25 11:17:24'),
(6, 66, 10, '2018-01-25 11:17:51', '2018-01-25 11:17:51'),
(7, 55, 5, '2018-01-25 11:19:56', '2018-01-25 11:19:56'),
(8, 57, 1, '2018-01-25 11:21:09', '2018-01-25 11:21:09'),
(9, 52, 5, '2018-01-28 13:44:29', '2018-01-28 13:44:29'),
(10, 51, 5, '2018-01-28 13:44:45', '2018-01-28 13:44:45'),
(11, 66, 7, '2018-01-28 13:44:59', '2018-01-28 13:44:59'),
(12, 56, 1, '2018-01-28 13:45:25', '2018-01-28 13:45:25'),
(13, 57, 1, '2018-01-28 13:46:55', '2018-01-28 13:46:55'),
(14, 66, 9, '2018-01-29 09:54:51', '2018-01-29 09:54:51'),
(15, 66, 4, '2018-01-30 12:29:49', '2018-01-30 12:29:49'),
(16, 51, 2, '2018-01-30 12:30:07', '2018-01-30 12:30:07'),
(17, 52, 10, '2018-01-30 12:30:30', '2018-01-30 12:30:30'),
(18, 54, 7, '2018-01-30 12:30:51', '2018-01-30 12:30:51'),
(19, 55, 2, '2018-01-30 12:31:06', '2018-01-30 12:31:06'),
(20, 56, 2, '2018-01-30 12:31:19', '2018-01-30 12:31:19'),
(21, 52, 12, '2018-01-31 12:37:23', '2018-01-31 12:37:23'),
(22, 51, 12, '2018-01-31 12:38:06', '2018-01-31 12:38:06'),
(23, 54, 12, '2018-01-31 12:38:24', '2018-01-31 12:38:24'),
(24, 53, 12, '2018-01-31 12:39:18', '2018-01-31 12:39:18'),
(25, 66, 46, '2018-01-31 12:39:52', '2018-01-31 12:39:52'),
(26, 55, 9, '2018-01-31 12:40:11', '2018-01-31 12:40:11'),
(27, 56, 5, '2018-01-31 12:40:32', '2018-01-31 12:40:32'),
(28, 64, 1, '2018-01-31 12:40:49', '2018-01-31 12:40:49'),
(29, 52, 10, '2018-02-01 17:17:23', '2018-02-01 17:17:23'),
(30, 51, 10, '2018-02-01 17:17:40', '2018-02-01 17:17:40'),
(31, 54, 12, '2018-02-01 17:18:00', '2018-02-01 17:18:00'),
(32, 66, 9, '2018-02-01 17:18:10', '2018-02-01 17:18:10'),
(33, 53, 10, '2018-02-01 17:18:23', '2018-02-01 17:18:23'),
(34, 55, 2, '2018-02-01 17:18:40', '2018-02-01 17:18:40'),
(35, 57, 1, '2018-02-01 17:18:56', '2018-02-01 17:18:56'),
(36, 52, 12, '2018-02-02 17:24:23', '2018-02-02 17:24:23'),
(37, 51, 11, '2018-02-02 17:24:36', '2018-02-02 17:24:36'),
(38, 54, 12, '2018-02-02 17:24:59', '2018-02-02 17:24:59'),
(39, 53, 12, '2018-02-02 17:25:15', '2018-02-02 17:25:15'),
(40, 56, 1, '2018-02-02 17:25:32', '2018-02-02 17:25:32'),
(41, 66, 24, '2018-02-05 15:48:28', '2018-02-05 15:48:28'),
(42, 51, 13, '2018-02-07 10:55:10', '2018-02-07 10:55:10'),
(43, 52, 13, '2018-02-07 10:55:30', '2018-02-07 10:55:30'),
(44, 54, 5, '2018-02-07 10:55:59', '2018-02-07 10:55:59'),
(45, 53, 14, '2018-02-07 10:56:25', '2018-02-07 10:56:25'),
(46, 56, 4, '2018-02-07 10:56:50', '2018-02-07 10:56:50'),
(47, 64, 1, '2018-02-07 10:57:52', '2018-02-07 10:57:52'),
(48, 52, 21, '2018-02-08 15:57:47', '2018-02-08 15:57:47'),
(49, 51, 21, '2018-02-08 15:58:02', '2018-02-08 15:58:02'),
(50, 54, 21, '2018-02-08 15:58:17', '2018-02-08 15:58:17'),
(51, 66, 24, '2018-02-08 15:58:29', '2018-02-08 15:58:29'),
(52, 53, 21, '2018-02-08 15:58:42', '2018-02-08 15:58:42'),
(53, 55, 2, '2018-02-08 15:59:14', '2018-02-08 15:59:14'),
(54, 56, 3, '2018-02-08 15:59:33', '2018-02-08 15:59:33'),
(55, 57, 1, '2018-02-08 15:59:49', '2018-02-08 15:59:49'),
(56, 64, 1, '2018-02-08 16:00:05', '2018-02-08 16:00:05'),
(57, 56, 9, '2018-02-11 09:18:32', '2018-02-11 09:18:32'),
(58, 52, 4, '2018-02-11 10:02:25', '2018-02-11 10:02:25'),
(59, 52, 27, '2018-02-11 10:03:05', '2018-02-11 10:03:05'),
(60, 51, 18, '2018-02-11 10:04:08', '2018-02-11 10:04:08'),
(61, 54, 28, '2018-02-11 10:04:51', '2018-02-11 10:04:51'),
(62, 53, 21, '2018-02-11 10:05:19', '2018-02-11 10:05:19'),
(63, 116, 9, '2018-02-11 10:09:58', '2018-02-11 10:09:58'),
(64, 52, 36, '2018-02-14 10:52:10', '2018-02-14 10:52:10'),
(65, 51, 22, '2018-02-14 10:52:28', '2018-02-14 10:52:28'),
(66, 54, 24, '2018-02-14 10:52:52', '2018-02-14 10:52:52'),
(67, 53, 24, '2018-02-14 10:53:08', '2018-02-14 10:53:08'),
(68, 56, 4, '2018-02-14 11:09:13', '2018-02-14 11:09:13'),
(69, 116, 13, '2018-02-16 12:25:38', '2018-02-16 12:25:38'),
(70, 118, 2, '2018-02-19 12:14:56', '2018-02-19 12:14:56'),
(71, 51, 53, '2018-02-24 11:44:32', '2018-02-24 11:44:32'),
(72, 53, 41, '2018-02-24 11:45:21', '2018-02-24 11:45:21'),
(73, 52, 7, '2018-02-24 11:46:04', '2018-02-24 11:46:04'),
(74, 57, 3, '2018-02-24 11:46:27', '2018-02-24 11:46:27'),
(75, 55, 8, '2018-02-24 11:47:57', '2018-02-24 11:47:57'),
(76, 56, 12, '2018-02-24 11:48:50', '2018-02-24 11:48:50'),
(77, 54, 36, '2018-02-24 11:49:55', '2018-02-24 11:49:55'),
(78, 66, 154, '2018-02-24 11:50:58', '2018-02-24 11:50:58'),
(79, 119, 4, '2018-02-24 13:33:29', '2018-02-24 13:33:29'),
(80, 118, 49, '2018-02-24 13:33:56', '2018-02-24 13:33:56'),
(81, 66, 48, '2018-02-25 09:45:58', '2018-02-25 09:45:58'),
(82, 118, 3, '2018-02-27 11:23:52', '2018-02-27 11:23:52'),
(83, 66, 24, '2018-02-27 11:24:07', '2018-02-27 11:24:07'),
(84, 55, 5, '2018-02-27 11:25:26', '2018-02-27 11:25:26'),
(85, 54, 12, '2018-02-27 11:25:42', '2018-02-27 11:25:42'),
(86, 66, 24, '2018-02-27 11:25:58', '2018-02-27 11:25:58'),
(87, 118, 2, '2018-02-28 09:37:47', '2018-02-28 09:37:47'),
(88, 51, 12, '2018-02-28 09:38:03', '2018-02-28 09:38:03'),
(89, 66, 24, '2018-02-28 09:38:18', '2018-02-28 09:38:18'),
(90, 66, 24, '2018-02-28 09:38:30', '2018-02-28 09:38:30'),
(91, 53, 1, '2018-02-28 09:38:55', '2018-02-28 09:38:55'),
(92, 56, 3, '2018-02-28 09:39:11', '2018-02-28 09:39:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `admin_user_roles`
--
ALTER TABLE `admin_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_role_assigns`
--
ALTER TABLE `admin_user_role_assigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allowances_employee_id_foreign` (`payroll_id`);

--
-- Indexes for table `backup_allowances`
--
ALTER TABLE `backup_allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_bookings`
--
ALTER TABLE `backup_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_daily_expenses`
--
ALTER TABLE `backup_daily_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_damage_products`
--
ALTER TABLE `backup_damage_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_deductions`
--
ALTER TABLE `backup_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_departments`
--
ALTER TABLE `backup_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_designations`
--
ALTER TABLE `backup_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_employees`
--
ALTER TABLE `backup_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_expenses`
--
ALTER TABLE `backup_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_expense_categories`
--
ALTER TABLE `backup_expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_incomes`
--
ALTER TABLE `backup_incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_income_categories`
--
ALTER TABLE `backup_income_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_payrolls`
--
ALTER TABLE `backup_payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_products`
--
ALTER TABLE `backup_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_product_categories`
--
ALTER TABLE `backup_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_purchases`
--
ALTER TABLE `backup_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_rooms`
--
ALTER TABLE `backup_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_room_number_foreign` (`room_number`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `booking_extra_facilities`
--
ALTER TABLE `booking_extra_facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_extra_facilities_book_id_foreign` (`book_id`);

--
-- Indexes for table `daily_deposites`
--
ALTER TABLE `daily_deposites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_expenses`
--
ALTER TABLE `daily_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damage_products`
--
ALTER TABLE `damage_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `damage_products_p_category_id_foreign` (`p_category_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deductions_employee_id_foreign` (`payroll_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_designation_id_foreign` (`designation_id`),
  ADD KEY `employees_department_id_foreign` (`department_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_cat_id_foreign` (`expense_cat_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incomes_income_cat_id_foreign` (`income_cat_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_amounts`
--
ALTER TABLE `invoice_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_amounts_book_id_foreign` (`book_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payrolls_department_id_foreign` (`department_id`),
  ADD KEY `payrolls_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_p_category_id_foreign` (`p_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_p_category_id_foreign` (`p_category_id`),
  ADD KEY `purchases_p_id_foreign` (`p_id`);

--
-- Indexes for table `purchase_expense`
--
ALTER TABLE `purchase_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_numbers`
--
ALTER TABLE `room_numbers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_numbers_room_id_foreign` (`room_id`);

--
-- Indexes for table `sent_products`
--
ALTER TABLE `sent_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sent_products_p_id_foreign` (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `use_products`
--
ALTER TABLE `use_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `admin_user_roles`
--
ALTER TABLE `admin_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `admin_user_role_assigns`
--
ALTER TABLE `admin_user_role_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_allowances`
--
ALTER TABLE `backup_allowances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_bookings`
--
ALTER TABLE `backup_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backup_daily_expenses`
--
ALTER TABLE `backup_daily_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_damage_products`
--
ALTER TABLE `backup_damage_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_deductions`
--
ALTER TABLE `backup_deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_departments`
--
ALTER TABLE `backup_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_designations`
--
ALTER TABLE `backup_designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_employees`
--
ALTER TABLE `backup_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `backup_expenses`
--
ALTER TABLE `backup_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_expense_categories`
--
ALTER TABLE `backup_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_incomes`
--
ALTER TABLE `backup_incomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_income_categories`
--
ALTER TABLE `backup_income_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_payrolls`
--
ALTER TABLE `backup_payrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backup_products`
--
ALTER TABLE `backup_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backup_product_categories`
--
ALTER TABLE `backup_product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `backup_purchases`
--
ALTER TABLE `backup_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `backup_rooms`
--
ALTER TABLE `backup_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `booking_extra_facilities`
--
ALTER TABLE `booking_extra_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `daily_deposites`
--
ALTER TABLE `daily_deposites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `daily_expenses`
--
ALTER TABLE `daily_expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `damage_products`
--
ALTER TABLE `damage_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invoice_amounts`
--
ALTER TABLE `invoice_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `purchase_expense`
--
ALTER TABLE `purchase_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `room_numbers`
--
ALTER TABLE `room_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sent_products`
--
ALTER TABLE `sent_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `use_products`
--
ALTER TABLE `use_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `allowances`
--
ALTER TABLE `allowances`
  ADD CONSTRAINT `allowances_employee_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `bookings_room_number_foreign` FOREIGN KEY (`room_number`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `booking_extra_facilities`
--
ALTER TABLE `booking_extra_facilities`
  ADD CONSTRAINT `booking_extra_facilities_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `bookings` (`id`);

--
-- Constraints for table `damage_products`
--
ALTER TABLE `damage_products`
  ADD CONSTRAINT `damage_products_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `damage_products_p_category_id_foreign` FOREIGN KEY (`p_category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_employee_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `employees_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_cat_id_foreign` FOREIGN KEY (`expense_cat_id`) REFERENCES `expense_categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
