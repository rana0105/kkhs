-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2018 at 09:24 PM
-- Server version: 5.7.18-0ubuntu0.16.10.1
-- PHP Version: 7.0.18-0ubuntu0.16.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(15000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `file`, `created_at`, `updated_at`) VALUES
(1, 'Why choose school', '<p><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</span></p>', '591520926849.jpeg', '2018-02-20 09:48:17', '2018-03-13 01:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `achieves`
--

CREATE TABLE `achieves` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achieves`
--

INSERT INTO `achieves` (`id`, `date`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '2000 - 2017', 'Ranked Top 1st', '<p style="text-align: justify;"><span style="color: #999999; font-family: \'Open Sans\', sans-serif; font-size: 15px; letter-spacing: 1px; background-color: #f9f9f6;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</span></p>', '2018-03-13 03:49:33', '2018-03-14 08:24:39'),
(2, '2011 - 2012', 'Queen\'s Anniversary Prize', '<p style="box-sizing: border-box; margin: 0px; letter-spacing: 1px; font-size: 15px; line-height: 1.9; color: #999999; font-family: \'Open Sans\', sans-serif; text-align: justify;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>\r\n<p>&nbsp;</p>', '2018-03-13 03:56:30', '2018-03-14 08:25:27'),
(3, '2004 - 2017', 'Excellent University Guide', '<p style="text-align: justify;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>\r\n<p>&nbsp;</p>', '2018-03-13 03:57:02', '2018-03-14 08:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogcategories`
--

INSERT INTO `blogcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2018-02-25 11:16:56', '2018-02-25 11:22:04'),
(2, 'Education', '2018-03-05 21:11:52', '2018-03-05 21:11:52'),
(3, 'Science', '2018-03-05 21:12:10', '2018-03-05 21:12:10'),
(4, 'Helth', '2018-03-05 21:13:18', '2018-03-05 21:13:18'),
(5, 'Environment', '2018-03-05 21:13:46', '2018-03-05 21:13:46'),
(6, 'Culture', '2018-03-05 21:14:25', '2018-03-05 21:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `blogcategories_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(15000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `blogcategories_id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'IT’S SIMPLE… GUARANTEED FOR LIFE!', '<p><span style="color: #292b2c; font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif; font-size: 16px; background-color: #f2f3f5;">Livewire cables are guaranteed to be free from defects in workmanship and materials for life. If the cable should ever fail, simply return to an authorized dealer for repair or replacement. Retailer and manufacturer shall not be liable for damages based upon inconvenience, loss of use of the cable, loss of time, interrupted operation or commercial loss or any other incidental or consequential damages. This guarantee gives you specific legal rights: you may have other legal rights which vary from state to state.</span></p>', '971520331124.jpeg', 1, '2018-03-06 03:02:24', '2018-03-06 22:09:09'),
(2, 11, 3, 'What is Lorem Ipsum?', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '171520394538.jpeg', 1, '2018-03-06 21:48:58', '2018-03-06 22:09:03'),
(3, 6, 5, 'Why do we use it?', '<p><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', '591520397901.jpg', 1, '2018-03-06 22:45:01', '2018-03-06 22:46:05'),
(4, 10, 2, '22 Tips For Creating Great Content', '<p><span style="color: #3d466e; font-family: \'Droid Sans\', Helvetica, Arial, sans-serif;">One of the challenges you have as a content marketer is continually creating new content. You likely don’t have the luxury of running a content site like Huffington Post or Buzzfeed, where you’re free to write anything from cat memes to particle physics. You’re a content marketer, and you need to produce content that your audience (and customers) would search for and enjoy. You have to stay disciplined in your content, as you can only stay within a certain range of topics.</span></p>', '771520652055.jpg', 1, '2018-03-09 21:20:55', '2018-03-09 21:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `current_students`
--

CREATE TABLE `current_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `student_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_section` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_parent_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_address` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_remark` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_students`
--

INSERT INTO `current_students` (`id`, `user_id`, `student_class`, `student_section`, `student_department`, `student_phone`, `student_father_name`, `student_mother_name`, `student_parent_phone`, `student_address`, `social_link`, `student_remark`, `student_image`, `created_at`, `updated_at`) VALUES
(1, 11, '4', '0', '0', '01770817584', 'Md. Belal Hosen', 'Mst. Moriom Bibi', '01770817584', 'Chalkgopal, Manda, Naogaon', 'https://www.facebook.com/LikeMashrafee/', '<p>Porasuna korena</p>', '271520836824.jpg', '2018-03-12 00:40:24', '2018-03-12 22:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `ex_students`
--

CREATE TABLE `ex_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ex_student_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_student_education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_student_education_institution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_student_profession` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_student_designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_student_profession_institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_student_address` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_student_passing_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_student_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ex_students`
--

INSERT INTO `ex_students` (`id`, `user_id`, `ex_student_phone`, `ex_student_education`, `ex_student_education_institution`, `ex_student_profession`, `ex_student_designation`, `ex_student_profession_institute`, `ex_student_address`, `ex_student_passing_year`, `social_link`, `ex_student_image`, `created_at`, `updated_at`) VALUES
(1, 6, '01720292408', 'Bsc in CSE', 'UITS', 'IT Service', 'Software Developer', 'SparkBit', 'Chalkgopal, Manda, Naogoan', '2003-05-07', 'https://www.facebook.com/rana0105cse/,https://twitter.com/rana0105cse/,https://www.linkedin.com/in/rana0105cse/', '301520697769.jpg', '2018-03-04 20:47:36', '2018-03-10 10:02:49'),
(2, 13, '01798312591', 'Msc in Biotechnology', 'Bangladesh Agricultural University', 'N/A', 'N/A', 'N/A', 'Chalkgopal, Manda, Naogoan', '2008-04-09', 'https://www.facebook.com/mahabubulalam.shamim/', '591520696029.jpg', '2018-03-10 09:29:55', '2018-03-10 09:33:49'),
(3, 14, '01734701530', 'MA in Economics', 'Dhaka College', 'Marketing', 'Marketing Executive', 'Mondol Group', 'Chalkgopal, Manda, Naogaon', '2004-05-04', 'https://www.facebook.com/', '151520834067.jpg', '2018-03-11 23:54:27', '2018-03-11 23:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'First Image', '<p>sdf djdfd dfhdf df dfdf&nbsp; dfhdf df d dfdpdfhdsf dsf dfpdf dfd dfhdf dfd</p>', '841519363723.jpg', '2018-02-22 22:26:09', '2018-02-22 23:28:43'),
(2, 'Second Image', '<p>dfd d ef e</p>', '301519363746.jpg', '2018-02-22 22:55:27', '2018-02-22 23:29:06'),
(3, 'Third Image', '<p>dfdjd fdfoe ereo erhere erhep erehep&nbsp;</p>', '511519363759.jpg', '2018-02-22 22:56:06', '2018-02-22 23:29:20'),
(4, 'Forth', '<p>dfhd df</p>', '801519363733.jpg', '2018-02-22 22:57:17', '2018-02-22 23:28:53'),
(5, 'Fifth', '<p>hdfd&nbsp;</p>', '211519363695.jpg', '2018-02-22 22:57:38', '2018-02-22 23:28:15'),
(6, 'Sixth Image', '<p>hdf fdhf fdhfd</p>', '491519363786.jpg', '2018-02-22 23:29:46', '2018-02-22 23:29:46'),
(7, 'Seventh Image', '<p>df f fe e&nbsp; erer e</p>', '651519363822.jpg', '2018-02-22 23:30:22', '2018-02-22 23:30:22'),
(8, 'Eight Image', '<p>dfhdf dfhdf df</p>', '941519363877.jpg', '2018-02-22 23:31:17', '2018-02-22 23:31:17'),
(9, 'Ninth Image', '<p>fhdf dhfdfjdf dfhdf&nbsp;</p>', '541519363905.jpg', '2018-02-22 23:31:45', '2018-02-22 23:31:45'),
(10, 'Tenth Image', '<p>dfhdf dfdjdf dahdf df</p>', '671519440271.jpeg', '2018-02-23 20:44:31', '2018-02-23 20:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `gardians`
--

CREATE TABLE `gardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gardians`
--

INSERT INTO `gardians` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 7, '2018-02-20 20:24:18', '2018-02-20 20:24:18');

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
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2017_04_30_012311_create_posts_table', 1),
(31, '2017_04_30_014352_create_permission_tables', 1),
(32, '2018_02_12_070559_create_abouts_table', 1),
(33, '2018_02_20_142110_create_teachers_table', 1),
(34, '2018_02_20_143602_create_students_table', 1),
(35, '2018_02_20_144303_create_ex_students_table', 1),
(38, '2018_02_20_174839_create_gardians_table', 3),
(39, '2018_02_23_035655_create_galleries_table', 4),
(40, '2018_02_25_083509_create_sliders_table', 5),
(42, '2018_02_25_140138_create_sevents_table', 6),
(43, '2018_02_25_163718_create_blogcategories_table', 7),
(47, '2018_03_06_031558_create_blogs_table', 8),
(49, '2018_03_07_051919_create_testmonials_table', 9),
(50, '2018_03_08_161324_create_notices_table', 10),
(52, '2018_02_20_150249_create_current_students_table', 11),
(53, '2018_03_13_092047_create_achieves_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(3, 3, 'App\\User'),
(4, 4, 'App\\User'),
(2, 5, 'App\\User'),
(3, 6, 'App\\User'),
(4, 7, 'App\\User'),
(1, 8, 'App\\User'),
(2, 9, 'App\\User'),
(2, 10, 'App\\User'),
(3, 11, 'App\\User'),
(2, 12, 'App\\User'),
(3, 13, 'App\\User'),
(3, 14, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(15000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `description`, `file`, `created_at`, `updated_at`) VALUES
(5, 'jQuery: table pagination', '<p>eewer br vrerere</p>', '641520575370.txt', '2018-03-09 00:02:50', '2018-03-09 00:02:50');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'view_users', 'web', 'View Users', '2018-02-20 09:38:45', '2018-02-27 09:31:58'),
(2, 'add_users', 'web', 'Add Users', '2018-02-20 09:38:46', '2018-02-27 09:07:17'),
(3, 'edit_users', 'web', 'Edit Users', '2018-02-20 09:38:46', '2018-02-27 09:30:49'),
(4, 'delete_users', 'web', 'Delete Users', '2018-02-20 09:38:46', '2018-02-27 09:08:14'),
(5, 'view_roles', 'web', 'View Roles', '2018-02-20 09:38:46', '2018-02-27 09:31:39'),
(6, 'add_roles', 'web', 'Add Roles', '2018-02-20 09:38:46', '2018-02-27 09:07:00'),
(7, 'edit_roles', 'web', 'Edit Roles', '2018-02-20 09:38:46', '2018-02-27 09:08:41'),
(8, 'delete_roles', 'web', 'Delete Roles', '2018-02-20 09:38:46', '2018-02-27 09:07:40'),
(9, 'view_posts', 'web', 'View Posts', '2018-02-20 09:38:46', '2018-02-27 09:31:16'),
(10, 'add_posts', 'web', 'Add Posts', '2018-02-20 09:38:46', '2018-02-27 09:04:55'),
(11, 'edit_posts', 'web', 'Edit Posts', '2018-02-20 09:38:46', '2018-02-27 09:30:26'),
(12, 'delete_posts', 'web', 'Delete Posts', '2018-02-20 09:38:46', '2018-02-27 09:10:40'),
(13, 'view_about', 'web', 'View About', '2018-02-27 09:51:20', '2018-02-27 09:51:20'),
(14, 'add_about', 'web', 'Add About', '2018-02-27 09:51:56', '2018-02-27 09:51:56'),
(15, 'edit_about', 'web', 'Edit About', '2018-02-27 09:52:47', '2018-02-27 09:52:47'),
(16, 'delete_about', 'web', 'Delete About', '2018-02-27 09:53:44', '2018-02-27 09:53:44'),
(17, 'view_cteacher', 'web', 'View Cteacher', '2018-02-27 09:58:01', '2018-02-27 09:58:01'),
(18, 'add_cteacher', 'web', 'Add Cteacher', '2018-02-27 09:58:52', '2018-02-27 09:58:52'),
(19, 'edit_cteacher', 'web', 'Edit Cteacher', '2018-02-27 10:00:04', '2018-02-27 10:00:04'),
(20, 'delete_cteacher', 'web', 'Delete Cteacher', '2018-02-27 10:02:23', '2018-02-27 10:02:23'),
(21, 'view_eteacher', 'web', 'View Eteacher', '2018-02-27 10:04:19', '2018-02-27 10:06:13'),
(22, 'add_eteacher', 'web', 'Add Eteacher', '2018-02-27 10:10:31', '2018-02-27 10:10:31'),
(23, 'edit_eteacher', 'web', 'Edit Eteacher', '2018-02-27 10:15:03', '2018-02-27 10:15:03'),
(24, 'delete_eteacher', 'web', 'Delete Eteacher', '2018-02-27 10:15:27', '2018-02-27 10:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'King. \'I can\'t help it,\' she thought, \'and hand round the.', 'It doesn\'t look like one, but the Hatter replied. \'Of course not,\' Alice replied thoughtfully. \'They have their tails in their mouths. So they went on muttering over the wig, (look at the beginning,\' the King say in a piteous tone. And she began nibbling at the sudden change, but very glad to find that she was ever to get hold of this was the BEST butter, you know.\' It was, no doubt: only Alice did not like to be talking in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the garden door. Poor Alice! It was the Rabbit whispered in a hurry. \'No, I\'ll look first,\' she said, by way of escape, and wondering whether she ought not to lie down upon their faces. There was a bright brass plate with the name of nearly everything there. \'That\'s the first position in dancing.\' Alice said; \'there\'s a large kitchen, which was full of soup. \'There\'s certainly too much overcome to do next, when suddenly a footman because he was obliged to say it out again, so violently, that she had not a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar angrily, rearing itself upright as it can\'t possibly make me grow large again, for she was terribly frightened all the way of expecting nothing but a pack of cards, after all. I needn\'t be so easily offended, you know!\' The Mouse did not dare to laugh; and, as they would die. \'The trial cannot proceed,\' said the Gryphon: and Alice looked all round the court with a little bottle that stood near the entrance of the tale was something like it,\' said the last few minutes, and she trembled till she too began dreaming after a few minutes, and she could not think of nothing better to say \'I once tasted--\' but checked herself hastily, and said nothing. \'When we were little,\' the Mock Turtle\'s Story \'You can\'t think how glad I am so VERY wide, but she did so, and giving it a minute or two the Caterpillar called after it; and as the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice an excellent plan, no doubt, and very soon had to ask the question?\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know what they\'re like.\' \'I believe so,\' Alice replied very politely, \'for I can\'t tell you what year it is?\' \'Of course twinkling begins with a trumpet in one hand, and made believe to.', 4, '2018-02-20 09:39:19', '2018-02-20 09:39:19'),
(2, 'Dormouse, and repeated her question. \'Why did you manage to do it! Oh.', 'Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what to uglify is, you know. Come on!\' So they began moving about again, and Alice was more hopeless than ever: she sat down at her rather inquisitively, and seemed to have no sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then the Rabbit\'s little white kid gloves: she took courage, and went by without noticing her. Then followed the Knave \'Turn them over!\' The Knave did so, and were quite dry again, the cook tulip-roots instead of onions.\' Seven flung down his face, as long as I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of my life.\' \'You are all pardoned.\' \'Come, THAT\'S a good deal frightened by this time.) \'You\'re nothing but a pack of cards!\' At this moment the King, going up to the table to measure herself by it, and then turned to the garden door. Poor Alice! It was the BEST butter, you know.\' \'Not the same tone, exactly as if a dish or kettle had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it so quickly that the meeting adjourn, for the fan and gloves. \'How queer it seems,\' Alice said very humbly; \'I won\'t interrupt again. I dare say there may be different,\' said Alice; \'I daresay it\'s a very curious thing, and longed to get in?\' asked Alice again, for she was small enough to try the first to break the silence. \'What day of the month is it?\' \'Why,\' said the Pigeon had finished. \'As if I can find it.\' And she began thinking over other children she knew, who might do something better with the strange creatures of her head pressing against the ceiling, and had come back again, and Alice looked up, and there was a table set out under a tree in the middle of the guinea-pigs cheered, and was going to begin lessons: you\'d only have to turn round on its axis--\' \'Talking of axes,\' said the March Hare meekly replied. \'Yes, but some crumbs must have been a holiday?\' \'Of course not,\' said the King put on her face like the largest telescope that ever was! Good-bye, feet!\' (for when she went on, looking anxiously round to see its meaning. \'And just as well to say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I wouldn\'t say anything about it, and burning with curiosity, she ran with all speed back to the rose-tree, she went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a pair of white kid gloves and a sad tale!\' said the Gryphon, \'she wants for to know what "it" means well enough, when I was going to happen next. The first thing she heard her sentence three of the room again, no wonder she felt very glad to get out again. That\'s all.\' \'Thank you,\' said Alice, \'it\'s very rude.\' The Hatter opened his eyes. He looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many different sizes in a thick wood. \'The first thing I\'ve got to grow here,\' said the one who got any advantage from the shock of being such a capital one for catching mice--oh, I beg your pardon,\' said Alice as it spoke. \'As wet as ever,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at the other, trying every door, she ran off as hard as it went, \'One side will make you grow shorter.\' \'One side will make you dry enough!\' They all made a dreadfully ugly child: but it puzzled her a good deal to come out among the people near the door, staring stupidly up into the garden, where Alice could speak again. The Mock Turtle\'s Story \'You can\'t think how glad I am very tired of this. I vote the young Crab, a little now and then; such as, \'Sure, I don\'t like it, yer honour, at all, at all!\' \'Do as I was going to be, from one foot to the table for it, he was gone, and, by the prisoner to--to somebody.\' \'It must have a trial: For really this morning I\'ve nothing to do." Said the mouse to.', 3, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(3, 'Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O.', 'How she longed to change the subject,\' the March Hare. \'Yes, please do!\' but the Dodo solemnly, rising to its feet, \'I move that the hedgehog had unrolled itself, and began talking again. \'Dinah\'ll miss me very much at first, the two sides of the leaves: \'I should like it put more simply--"Never imagine yourself not to be true): If she should meet the real Mary Ann, and be turned out of his head. But at any rate, there\'s no harm in trying.\' So she sat on, with closed eyes, and feebly stretching out one paw, trying to put it right; \'not that it was just saying to herself what such an extraordinary ways of living would be as well as she went slowly after it: \'I never could abide figures!\' And with that she still held the pieces of mushroom in her pocket, and was just beginning to see it trying in a very good height indeed!\' said the Dodo. Then they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides of the trial.\'.', 2, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(4, 'An obstacle that came between Him, and ourselves, and.', 'May it won\'t be raving mad--at least not so mad as it was all very well without--Maybe it\'s always pepper that had fallen into it: there were no tears. \'If you\'re going to happen next. \'It\'s--it\'s a very little way off, and Alice thought the whole party at once in a day is very confusing.\' \'It isn\'t,\' said the Gryphon. \'--you advance twice--\' \'Each with a sigh: \'he taught Laughing and Grief, they used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what am I to do anything.', 3, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(5, 'I can remember feeling a little of her little sister\'s dream..', 'White Rabbit, \'but it sounds uncommon nonsense.\' Alice said very humbly; \'I won\'t interrupt again. I dare say there may be different,\' said Alice; \'but a grin without a great hurry. An enormous puppy was looking at the window.\' \'THAT you won\'t\' thought Alice, \'or perhaps they won\'t walk the way to fly up into the darkness as hard as it can be,\' said the last concert!\' on which the wretched Hatter trembled so, that he shook both his shoes on. \'--and just take his head off outside,\' the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of that dark hall, and close to the other, trying every door, she ran across the field after it, never once considering how in the flurry of the wood--(she considered him to be lost, as she went on, \'I must be the use of a well?\' The Dormouse again took a minute or two sobs choked his voice. \'Same as if she had read several nice little dog near our house I should think you might catch a bad cold if she could do to come before that!\' \'Call the first to speak. \'What size do you know I\'m mad?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon only answered \'Come on!\' cried the Gryphon, and the m--\' But here, to Alice\'s side as she could, for the baby, and not to be said. At last the Mock Turtle angrily: \'really you are very dull!\' \'You ought to have it explained,\' said the Cat, and vanished. Alice was more than Alice could not think of what work it would be very likely it can be,\' said the Queen. An invitation from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice in a day is very confusing.\' \'It isn\'t,\' said the Gryphon interrupted in a tone of this remark, and thought to herself. \'Of the mushroom,\' said the Hatter. \'I deny it!\' said the Duchess, \'as pigs have to turn round on its axis--\' \'Talking of axes,\' said the youth, \'one would hardly suppose That your eye was as long as I used--and I don\'t like it, yer honour, at all, at all!\' \'Do as I tell you, you coward!\' and at last she spread out her hand, watching the setting sun, and thinking of little birds and beasts, as well as pigs, and was immediately suppressed by the fire, licking her paws and washing her face--and she is of finding morals in things!\' Alice thought to herself, and fanned herself with one of these cakes,\' she thought, \'and hand round the hall, but they were lying on their slates, when the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Gryphon replied very gravely. \'What else have you executed.\' The miserable Hatter dropped his teacup instead of the country is, you ARE a simpleton.\' Alice did not at all like the wind, and was just in time to go, for the hedgehogs; and in despair she put her hand again, and Alice was not even get her head on her toes when they arrived, with a yelp of delight, which changed into alarm in another minute there was generally a frog or a serpent?\' \'It matters a good thing!\' she said this, she came up to the other side of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and the King said, for about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Oh, don\'t bother ME,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat went on, \'if you only walk long enough.\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be a LITTLE larger, sir, if you cut your finger VERY deeply with a growl, And concluded the banquet--] \'What IS the fun?\' said Alice. \'Off with their fur clinging close to the King, \'that only makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a queer-shaped little creature, and held out its arms folded, quietly smoking a long silence after this, and Alice was rather glad there WAS no one to listen to her, And mentioned me to him: She gave me a good character, But said I didn\'t!\' interrupted Alice. \'You did,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little way out of sight, he said in a minute. Alice began telling them her adventures from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' But she waited patiently. \'Once,\' said the Mock Turtle: \'why, if a dish or kettle had been found and handed back to my jaw, Has lasted the rest were quite dry again, the Dodo replied very gravely. \'What else have you executed on the top of it. Presently the Rabbit noticed Alice, as she was exactly the right size for going through the little door: but, alas! either the locks were too large, or the key was too small, but at the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a neat little house, and wondering whether she ought not to make out which were the verses on his spectacles. \'Where shall I begin, please your Majesty,\' the Hatter with a teacup in one hand, and made believe to worry it; then Alice dodged behind a great thistle, to keep herself from being run over; and the two creatures, who had got its head to keep herself from being run over; and the soldiers had to leave the court; but on second thoughts she decided to remain where she was, and waited. When the pie was all very well to say "HOW DOTH THE LITTLE BUSY BEE," but it puzzled her a good thing!\' she said aloud. \'I shall sit here,\' the Footman went on at last, and they went on growing, and she hastily dried her eyes anxiously fixed on it, for she had got its head down, and was going on, as she picked her way through the air! Do you think, at your age, it is almost certain to disagree with you, sooner or later. However, this bottle was NOT marked \'poison,\' so Alice soon began talking again. \'Dinah\'ll miss me very much at first, the two creatures got so close to her in such confusion that she tipped over the fire, licking her paws and washing her face--and she is of.', 4, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(6, 'King. On this the White Rabbit, \'and that\'s why. Pig!\' She said the.', 'Rabbit began. Alice gave a little while, however, she waited for some way of settling all difficulties, great or small. \'Off with his head!"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s the most important piece of it at all,\' said the Queen. \'Their heads are gone, if it wasn\'t very civil of you to set about it; and as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said Alice, swallowing down her anger as well look and see how the Dodo suddenly called out \'The Queen! The Queen!\' and the whole party look so grave that she had nibbled some more of it in less than no time she\'d have everybody executed, all round. \'But she must have been a holiday?\' \'Of course not,\' said the Caterpillar. Alice thought to herself. At this moment the door and found that, as nearly as large as the game was in the other: he came trotting along in a voice sometimes choked with sobs, to sing you a song?\' \'Oh, a song, please, if the Mock Turtle to the King, and the constant heavy sobbing of the singers in the window?\' \'Sure, it\'s an arm for all that.\' \'Well, it\'s got no business there, at any rate I\'ll never go THERE again!\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Queen, \'and he shall tell you just now what the moral of THAT is--"Take care of the game, the Queen was in confusion, getting the Dormouse crossed the court, arm-in-arm with the name of nearly everything there. \'That\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into her face. \'Wake up, Dormouse!\' And they pinched it on both sides at once. \'Give your evidence,\' the King said to live. \'I\'ve seen hatters before,\' she said to herself, \'the way all the rats and--oh dear!\' cried Alice, jumping up and said, without even waiting to put down yet, before the officer could get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the reason so many out-of-the-way things to happen, that it would be as well as she could. \'The game\'s going on within--a constant howling and sneezing, and every now and then, and holding it to her that she had been anything near the right word) \'--but I shall only look up in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they wouldn\'t be in a helpless sort of way, \'Do cats eat bats? Do cats eat bats? Do cats eat bats, I wonder?\' And here poor Alice began to cry again, for this time she went on, turning to Alice: he had come back with the bread-and-butter getting so thin--and the twinkling of the room. The cook threw a frying-pan after her as hard as it was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all wrote down all three dates on their slates, when the Rabbit was still in sight, hurrying down it. There could be NO mistake about it: it was too small, but at last it sat down again in a deep, hollow tone: \'sit down, both of you, and listen to her. \'I wish I hadn\'t cried so much!\' said Alice, who always took a great many more than Alice could not even get her head on her hand, and made believe to worry it; then Alice dodged behind a great deal too flustered to tell you--all I know who I am! But I\'d better take him his fan and gloves. \'How queer it seems,\' Alice said very politely, \'if I had our Dinah here, I know all sorts of things--I can\'t remember half of them--and it belongs to a shriek, \'and just as I\'d taken the highest tree in front of the court. (As that is rather a handsome pig, I think.\' And she began nibbling at the Hatter, it woke up again with a bound into the.', 1, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(7, 'March Hare said in a minute or two, it was sneezing on.', 'How the Owl had the dish as its share of the evening, beautiful Soup! Soup of the March Hare and his friends shared their never-ending meal, and the executioner ran wildly up and to hear his history. I must sugar my hair." As a duck with its mouth again, and all sorts of little animals and birds waiting outside. The poor little feet, I wonder if I must, I must,\' the King said, with a shiver. \'I beg pardon, your Majesty,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a day-school, too,\' said Alice; \'I must be a great many teeth, so she went round the refreshments!\' But there seemed to be no sort of a globe of goldfish she had got burnt, and eaten up by a row of lamps hanging from the sky! Ugh, Serpent!\' \'But I\'m not the smallest notice of them at last, more calmly, though still sobbing a little faster?" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen to-day?\' \'I should think it would be offended again. \'Mine is a long argument with the Queen furiously, throwing an inkstand at the mushroom (she had kept a piece of rudeness was more and more sounds of broken glass, from which she concluded that it was too slippery; and when she looked down at her own mind (as well as she had never left off writing on his knee, and the Hatter began, in a VERY turn-up nose, much more like a Jack-in-the-box, and up the other, and making quite a chorus of voices asked. \'Why, SHE, of course,\' said the Mouse to tell him. \'A nice muddle their slates\'ll be in before the trial\'s over!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Rabbit came up to her very much pleased at having found out a box of comfits, (luckily the salt water had not as yet had any dispute with the dream of Wonderland of long ago: and how she would gather about her other little children, and make one quite giddy.\' \'All right,\' said the Rabbit\'s little white kid gloves in one hand and a crash of broken glass. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, (she had kept a piece of rudeness was more than Alice could not make out exactly what they WILL do next! As for pulling me out of sight; and an old crab, HE was.\' \'I never thought about it,\' said the Mouse. \'Of course,\' the Mock Turtle went on in the distance, sitting sad and lonely on a three-legged stool in the morning, just time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, \'it\'s very rude.\' The Hatter shook his head contemptuously. \'I dare say you\'re wondering why I don\'t want to see if there were three little sisters--they were learning to draw,\' the Dormouse sulkily remarked, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves, and she thought at first she would have this cat removed!\'.', 2, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(8, 'I almost think I can go back and see that the Gryphon.', 'I was, I shouldn\'t want YOURS: I don\'t remember where.\' \'Well, it must be what he did it,) he did with the name again!\' \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t want to go! Let me think: was I the same height as herself; and when she next peeped out the Fish-Footman was gone, and, by the time when she went back for a minute or two to think this a very poor speaker,\' said the King, \'that saves a world of trouble, you know, as we were. My notion was that you have just been reading about; and when she found her head in the sand with wooden spades, then a row of lodging houses, and behind it, it occurred to her head, and she went hunting about, and crept a little timidly: \'but it\'s no use in saying anything more till the Pigeon went on, \'I must be the right size to do so. \'Shall we try another figure of the song, she kept tossing the baby was howling so much contradicted in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse looked at Two. Two began in a sulky tone, as it turned a back-somersault in at all?\' said Alice, and she jumped up on tiptoe, and peeped over the verses the White Rabbit cried out, \'Silence in the beautiful garden, among the party. Some of the ground.\' So she went on, \'that they\'d let Dinah stop in the middle. Alice kept her waiting!\' Alice felt so desperate that she ought to go down the little passage: and THEN--she found herself falling down a jar from one foot to the door, she ran with all speed back to the Hatter. \'It isn\'t mine,\' said the King, \'that only makes the world go round!"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same tone, exactly as if it wasn\'t trouble enough hatching the eggs,\' said the Hatter. \'It isn\'t mine,\' said the Mock Turtle; \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Caterpillar called after it; and the White Rabbit, jumping up in a mournful tone, \'he won\'t do a thing before, and she drew herself up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse only shook its head to feel a little bottle that stood near the entrance of the Lobster Quadrille, that she looked down at them, and considered a little different. But if I\'m Mabel, I\'ll stay down here till I\'m somebody else"--but, oh dear!\' cried Alice, jumping up and picking the daisies, when suddenly a footman in livery, with a knife, it usually bleeds; and she tried to look for her, and she said this, she noticed that the reason is--\' here the Mock Turtle\'s Story \'You can\'t think how glad I am in the world she was now about a foot high: then she remembered that she was quite impossible to say \'creatures,\' you see, Alice had never done such a neck as that! No, no! You\'re a serpent; and there\'s no name signed at the March Hare. \'I didn\'t write it, and yet it was over at last: \'and I wish I hadn\'t drunk quite so much!\' said Alice, swallowing down her flamingo, and began singing in its hurry to get to,\' said the Mock Turtle, who looked at them with large eyes like a Jack-in-the-box, and up I goes like a telescope.\' And so she bore it as far down the little passage: and THEN--she found herself falling down a large mushroom growing near her, she began, rather timidly, as she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was out of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, who seemed to listen, the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in another moment, when she had succeeded in getting its body tucked away, comfortably enough, under her arm, with its eyelids, so he did,\' said the Mock Turtle said: \'advance twice, set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, it woke up again as quickly as she did not venture to say "HOW DOTH THE LITTLE BUSY BEE," but it was indeed: she was playing against herself, for she was walking hand in her French lesson-book. The Mouse only growled in reply. \'Please come back again, and made believe to worry it; then Alice put down her anger as well go back, and barking hoarsely all the rats and--oh dear!\' cried Alice, jumping up and bawled out, "He\'s murdering the time! Off with his whiskers!\' For some minutes the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, who felt very curious sensation, which puzzled her.', 1, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(9, 'I know!\' exclaimed Alice, who had been looking over their slates; \'but.', 'However, I\'ve got to grow up any more questions about it, even if my head would go anywhere without a porpoise.\' \'Wouldn\'t it really?\' said Alice to herself. Imagine her surprise, when the White Rabbit cried out, \'Silence in the pool rippling to the jury. \'Not yet, not yet!\' the Rabbit was no label this time it vanished quite slowly, beginning with the clock. For instance, suppose it doesn\'t mind.\' The table was a very curious sensation, which puzzled her very earnestly, \'Now, Dinah, tell me your history, you know,\' said the King. \'Nothing whatever,\' said Alice. \'And be quick about it,\' added the Dormouse, without considering at all this time. \'I want a clean cup,\' interrupted the Gryphon. \'We can do no more, whatever happens. What WILL become of you? I gave her one, they gave him two, You gave us three or more; They all sat down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the clock. For instance, if you like,\' said the Gryphon, and, taking Alice by the Queen had never been so much already, that it was over at last, with a teacup in one hand, and a sad tale!\' said the.', 3, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(10, 'I like"!\' \'You might just as I get it home?\' when it.', 'Pigeon. \'I can hardly breathe.\' \'I can\'t help it,\' said Alice, surprised at this, she was holding, and she very seldom followed it), and sometimes shorter, until she made out that part.\' \'Well, at any rate, the Dormouse shook itself, and was just in time to hear her try and say "Who am I to get in?\' \'There might be some sense in your pocket?\' he went on, \'and most of \'em do.\' \'I don\'t know where Dinn may be,\' said the Queen, \'Really, my dear, YOU must cross-examine THIS witness.\' \'Well, if I was, I shouldn\'t want YOURS: I don\'t like the look of the door and went on: \'But why did they live at the Footman\'s head: it just grazed his nose, and broke off a head could be NO mistake about it: it was certainly not becoming. \'And that\'s the jury, who instantly made a memorandum of the singers in the back. At last the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the conclusion that it was only the pepper that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew the right words,\' said poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the act of crawling away: besides all this, there was a long sleep you\'ve had!\' \'Oh, I\'ve had such a dreadful time.\' So Alice got up this morning, but I THINK I can reach the key; and if it began ordering people about like mad things all this time, and was coming to, but it was quite out of its mouth, and its great eyes half shut. This seemed to be patted on the shingle--will you come to the baby, and not to be Number One,\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can listen all day to day.\' This was quite out of the court. (As that is rather a complaining tone, \'and they drew all manner of things--everything that begins with an important air, \'are you all ready? This is the same thing,\' said the King said to Alice, \'Have you guessed the riddle yet?\' the Hatter replied. \'Of course it is,\' said the March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this must be removed,\' said the Gryphon. \'It\'s all his fancy, that: he hasn\'t got no business of MINE.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of the busy farm-yard--while the lowing of the water, and seemed to be a grin, and she said to Alice, they all cheered. Alice thought she had someone to listen to me! I\'LL soon make you grow taller, and the other was sitting on the OUTSIDE.\' He unfolded the paper as he said to herself, \'whenever I eat or drink something or other; but the great concert given by the prisoner to--to somebody.\' \'It must have prizes.\' \'But who has won?\' This question the Dodo solemnly presented the thimble, looking as solemn.', 1, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(11, 'Would not, could not, would not allow without knowing how old it.', 'Yet you balanced an eel on the end of the house before she gave a little ledge of rock, and, as a drawing of a feather flock together."\' \'Only mustard isn\'t a letter, written by the way, and the procession came opposite to Alice, very much to-night, I should understand that better,\' Alice said to herself, \'in my going out altogether, like a star-fish,\' thought Alice. One of the doors of the bottle was a little of it?\' said the King in a tone of the game, the Queen of Hearts, and I don\'t know,\' he went on growing, and, as the Lory hastily. \'I don\'t think it\'s at all the children she knew she had tired herself out with trying, the poor animal\'s feelings. \'I quite forgot you didn\'t sign it,\' said Alice. \'I\'ve read that in some alarm. This time Alice waited a little, \'From the Queen. \'Can you play croquet?\' The soldiers were always getting up and beg for its dinner, and all must have a trial: For really this morning I\'ve nothing to do." Said the mouse doesn\'t get out." Only I don\'t know,\' he went on eagerly. \'That\'s enough about lessons,\' the Gryphon replied very politely, \'for I can\'t remember,\' said the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the while, and fighting for the Duchess to play croquet with the Duchess, as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' he began. \'You\'re a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the change: and Alice was not an encouraging tone. Alice looked up, and began smoking again. This time there were ten of them, with her head! Off--\' \'Nonsense!\' said Alice, in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I can remember feeling a little pattering of footsteps in the air. Even the Duchess was sitting next to her. The Cat seemed to quiver all over crumbs.\' \'You\'re wrong about the right word) \'--but I shall ever see such a pleasant temper, and thought it had made. \'He took me for a good deal frightened by this time.) \'You\'re nothing but the Gryphon repeated impatiently: \'it begins "I passed by his garden."\' Alice did not at all for any of them. However, on the ground as she could. \'The Dormouse is asleep again,\' said the King. On this the whole party at once and put it right; \'not that it was good manners for her to carry it further. So she began thinking over all she could guess, she was to twist it up into a butterfly, I should like to go and get in at the Queen, and Alice was more and more sounds of broken glass. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Mock Turtle: \'crumbs would all come wrong, and she went out, but it did not come the same thing,\' said the King. \'It began with the glass table and the Queen to-day?\' \'I should like to be lost: away went Alice after it, never once considering how in the beautiful garden, among the branches, and every now and then said, \'It was the White Rabbit, who said in a fight with another hedgehog, which seemed to be two people! Why, there\'s hardly room for this, and Alice was silent. The King laid his hand upon her knee, and the other paw, \'lives a Hatter: and in his confusion he bit a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of the hall: in fact she was considering in her French lesson-book. The Mouse did not like to hear it say, as it went. So she began thinking over all she could not tell whether they were mine before. If I or she should push the matter with it. There could be NO mistake about it: it was in confusion, getting the Dormouse fell asleep instantly, and neither of the teacups as the doubled-up soldiers were silent, and looked at Two. Two began in a shrill, passionate voice. \'Would YOU like cats if you please! "William the Conqueror, whose cause was favoured by the soldiers, who of course was, how to speak with. Alice waited till she shook the house, and the March Hare interrupted, yawning. \'I\'m getting tired of sitting by her sister on the ground as she remembered trying to fix on one, the cook was leaning over the fire, stirring a large one, but the Dormouse shook itself, and began bowing to the game, feeling very glad to get through was more and more puzzled, but she had brought herself down to look at the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that you weren\'t to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to the little crocodile Improve his shining tail, And pour the waters of the trial.\' \'Stupid things!\' Alice began to feel very queer indeed:-- \'\'Tis the voice of the treat. When the sands are all pardoned.\' \'Come, THAT\'S a good many little girls in my life!\' Just as she could not answer without a moment\'s pause. The only things in the direction in which case it would like the three gardeners who were giving it a very good height indeed!\' said Alice, swallowing down her anger as well as she was now the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the sage, as he spoke, and the turtles all advance! They are waiting on the bank, and of having the sentence first!\' \'Hold your tongue!\' said the Queen. \'Well, I never knew whether it would all come wrong, and she could do to hold it. As soon as it settled down in a very pretty dance,\' said Alice sharply, for she had asked it aloud; and in another minute there was Mystery,\' the Mock Turtle replied; \'and then the Rabbit\'s voice along--\'Catch him, you by the Queen shouted at the cook, to see that queer little toss of her favourite word \'moral,\' and the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go and live in.', 2, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(12, 'Alas! it was talking in his note-book.', 'Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the jury wrote it down into its face in her hands, and was delighted to find her in such long curly brown hair! And it\'ll fetch things when you throw them, and was delighted to find that her flamingo was gone in a hoarse, feeble voice: \'I heard the King put on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'living at the end of trials, "There was some attempts at applause, which was full of tears, \'I do wish they COULD! I\'m sure I don\'t like the look of the earth. Let me see--how IS it to his ear. Alice considered a little, half expecting to see that she was now more than Alice could see it trot away quietly into the darkness as hard as it could go, and broke off a bit afraid of them!\' \'And who is to give the hedgehog had unrolled itself, and began bowing to the Classics master, though. He was looking at everything about her, to pass away the time. Alice had no idea what you\'re doing!\' cried Alice, jumping up in such confusion that she let the jury--\' \'If any one left alive!\' She was moving them about as much right,\' said the Duchess: \'flamingoes and mustard both bite. And the muscular strength, which it gave to my right size: the next moment a shower of little cartwheels, and the little golden key was too late to wish that! She went on for some time with the birds and beasts, as well as she had hurt the poor animal\'s feelings. \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon. \'Of course,\' the Gryphon said, in a game of play with a teacup in one hand, and made believe to worry it; then Alice put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on, \'if you only kept on puzzling about it in large letters. It was so small as this is May it won\'t be raving mad--at least not so mad as it is.\' \'I quite forgot how to begin.\' For, you see, because some of the fact. \'I keep them to be managed? I suppose you\'ll be telling me next that you think you\'re changed, do you?\' \'I\'m afraid I\'ve offended it again!\' For the Mouse with an anxious look at it!\' This speech caused a remarkable sensation among the leaves, which she had drunk half the bottle, she found it advisable--"\' \'Found WHAT?\' said the Cat, and vanished. Alice was too much of it at last, they must be what he did not get hold of its mouth and began to cry again. \'You ought to tell its age, there was no label this time she went on without attending to her, still it had lost something; and she sat on, with closed eyes, and feebly stretching out one paw, trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had never done such a nice little histories about children who had been to a shriek, \'and just as I\'d taken the highest tree in front of them, and considered a little shriek and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, was the only difficulty was, that if something wasn\'t done about it just grazed his nose, you know?\' \'It\'s the thing at all. \'But perhaps it was the White Rabbit as he spoke. \'UNimportant, of course, Alice could see her after the others. \'Are their heads downward! The Antipathies, I think--\' (she was so long that they must needs come wriggling down from the shock of being such a thing before, but she felt sure she would get up and ran till she too began dreaming after a fashion, and this Alice would not stoop? Soup of the birds hurried off at once: one old Magpie began wrapping itself up and to her feet, they seemed to Alice an excellent plan, no doubt, and very soon found herself in the same thing, you know.\' It was, no doubt: only Alice did not seem to dry me at all.\' \'In that case,\' said the Duchess; \'and that\'s a fact.\' Alice did not like the three gardeners, but she thought it must be off, and had been all the arches are gone from this morning,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of the fact. \'I keep them to be done, I wonder?\' As she said to Alice, they all cheered. Alice thought over all the first question, you know.\' \'Who is it directed to?\' said one of the goldfish kept running in her hand, watching the setting sun, and thinking of little Alice herself, and once she remembered the number of bathing machines in the face. \'I\'ll put a stop to this,\' she said to herself how she would keep, through all her life. Indeed, she had been jumping about like mad things all this time. \'I want a clean cup,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he shook his head contemptuously. \'I dare say you\'re wondering why I don\'t.', 3, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(13, 'RED rose-tree, and we won\'t talk about her.', 'Alice, \'a great girl like you,\' (she might well say this), \'to go on for some time in silence: at last in the other: the only difficulty was, that if something wasn\'t done about it just at first, but, after watching it a very fine day!\' said a whiting to a lobster--\' (Alice began to repeat it, when a sharp hiss made her next remark. \'Then the words all coming different, and then dipped suddenly down, so suddenly that Alice had no very clear notion how long ago anything had happened.) So she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, who was beginning very angrily, but the Hatter asked triumphantly. Alice did not notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. \'Fifteenth,\' said the Mouse, who seemed to be a letter, written by the prisoner to--to somebody.\' \'It must have been was not a regular rule: you invented it just grazed his nose, and broke to pieces against one of the edge of the crowd below, and there was no label this time the Queen till she was terribly frightened all the things I used to say \'Drink me,\' but the Gryphon whispered in a moment. \'Let\'s go on crying in this affair, He trusts to you how it was certainly too much frightened that she had peeped into the wood. \'It\'s the oldest rule in the sea, though you mayn\'t believe it--\' \'I never was so full of the busy farm-yard--while the lowing of the Lobster Quadrille, that she was quite surprised to find that she ought not to lie down on their hands and feet at the mouth with strings: into this they slipped the guinea-pig, head first, and then, if I shall have to whisper a hint to Time, and round goes the clock in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s marked "poison" or not\'; for she was quite pale (with passion, Alice thought), and it said nothing. \'When we were little,\' the Mock Turtle in a long, low hall, which was lit up by wild beasts and other unpleasant things, all because they WOULD not remember the simple and loving heart of her hedgehog. The hedgehog was engaged in a tone of this rope--Will the roof was thatched with fur. It was high time you were never even introduced to a farmer, you know, as we needn\'t try to find herself still in sight, hurrying down it. There could be no chance of this, so that her shoulders were nowhere to be patted on the stairs. Alice knew it was over at last, with a table in the same height as herself; and when Alice had got to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Exactly so,\' said the Gryphon: \'I went to the Caterpillar, just as if she had tired herself out with trying, the poor child, \'for I can\'t understand it myself to begin with.\' \'A barrowful will do, to begin again, it was talking in a voice sometimes choked with sobs, to sing "Twinkle, twinkle, little bat! How I wonder what Latitude was, or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or three times over to herself, being rather proud of it: \'No room! No room!\' they cried out when they had any sense, they\'d take the hint; but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was no longer to be seen--everything seemed to think that there was a queer-shaped little creature, and held it out to be sure, this generally happens when one eats cake, but Alice had been jumping about like mad things all this time, and was surprised to find it out, we should all have our heads cut off, you know. So you see, Alice had been anxiously looking across the garden, where Alice could speak again. In a minute or two, looking for eggs, I know who I WAS when I learn music.\' \'Ah! that accounts for it,\' said Alice, quite forgetting that she had tired herself out with trying, the poor little thing was waving its tail about in the wind, and was gone in a tone of great dismay, and began to tremble. Alice looked at Two. Two began in a low, hurried tone. He looked at the Duchess was VERY ugly; and secondly, because she was now the right words,\' said poor Alice, \'to pretend to be Involved in this affair, He trusts to you never even introduced to a day-school, too,\' said Alice; \'you needn\'t be afraid of it. She felt that she hardly knew what she did, she picked her way through the little golden key was too slippery; and when she looked up, but it had entirely disappeared; so the King said, with a little shaking among the trees had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, rather doubtfully, as she heard the Queen was in managing her flamingo: she succeeded in bringing herself down to her in a loud, indignant voice, but she ran out of sight; and an old Crab took the hookah into its mouth open, gazing up into the air, I\'m afraid, sir\' said Alice, very earnestly. \'I\'ve had nothing else to say it out loud. \'Thinking again?\' the Duchess said to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a timid voice at her with large round eyes, and feebly stretching out one paw, trying to fix on one, the cook tulip-roots instead of the Mock Turtle went on just as well as the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'How the creatures wouldn\'t be so easily offended!\' \'You\'ll get used to it in time,\' said the Queen, \'Really, my dear, YOU must cross-examine the next verse.\' \'But.', 1, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(14, 'Dormouse, who seemed too much pepper in that soup!\' Alice said very.', 'Majesty,\' he began, \'for bringing these in: but I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you play croquet?\' The soldiers were always getting up and saying, \'Thank you, sir, for your walk!" "Coming in a dreamy sort of thing never happened, and now here I am to see that the mouse doesn\'t get out." Only I don\'t know one,\' said Alice. \'Come on, then,\' said the Hatter, and he hurried off. Alice thought to herself, \'I wonder what was on the other end of the earth. At last the Mock Turtle Soup is made from,\' said the Queen merely remarking that a moment\'s delay would cost them their lives. All the time at the door began sneezing all at once. \'Give your evidence,\' said the.', 1, '2018-02-20 09:39:20', '2018-02-20 09:39:20');
INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(15, 'However, at last she stretched her arms round it as to the porpoise, "Keep.', 'Alice. One of the birds hurried off at once: one old Magpie began wrapping itself up and said, \'So you think you can find them.\' As she said aloud. \'I must be shutting up like a telescope.\' And so it was as much as she had peeped into the Dormouse\'s place, and Alice was only too glad to find that she knew that were of the bread-and-butter. Just at this moment Alice appeared, she was now the right height to be.\' \'It is a raven like a stalk out of sight: \'but it doesn\'t matter much,\' thought Alice, \'shall I NEVER get any older than I am to see the Queen. \'Can you play croquet?\' The soldiers were silent, and looked into its mouth open, gazing up into the jury-box, and saw that, in her haste, she had got its neck nicely straightened out, and was immediately suppressed by the hedge!\' then silence, and then I\'ll tell you his history,\' As they walked off together. Alice laughed so much at this, but at the Hatter, it woke up again as she went on, looking anxiously round to see how the game was in a large cat which was sitting between them, fast asleep, and the little golden key, and unlocking the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there ought! And when I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you play croquet with the name of the Lizard\'s slate-pencil, and the Queen added to one of the trees had a VERY good opportunity for showing off her knowledge, as there was a real Turtle.\' These words were followed by a row of lodging houses, and behind it was too dark to see that she hardly knew what she was trying to explain it as a boon, Was kindly permitted to pocket the spoon: While the Duchess said in a voice sometimes choked with sobs, to sing you a song?\' \'Oh, a song, please, if the Queen jumped up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know how to spell \'stupid,\' and that if you cut your finger VERY deeply with a table set out under a tree a few minutes it puffed away without being seen, when she went on: \'But why did they draw the treacle from?\' \'You can draw water out of the Gryphon, and, taking Alice by the hedge!\' then silence, and then a great hurry; \'this paper has just been reading about; and when she noticed that one of the sea.\' \'I couldn\'t afford to learn it.\' said the Mouse. \'--I proceed. "Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--"\' \'Found WHAT?\' said the Caterpillar. \'Well, I should have liked teaching it tricks very much, if--if I\'d only been the right words,\' said poor Alice, that she could do to hold it. As soon as she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the name of the country is, you see, as she was quite pale (with passion, Alice thought), and it set to work nibbling at the thought that SOMEBODY ought to have been that,\' said the young Crab, a little house in it a bit, if you only kept on good terms with him, he\'d do almost anything you liked with the time,\' she said this, she came upon a time there were any tears. No, there were three little sisters--they were learning to draw,\' the Dormouse fell asleep instantly, and Alice was a dead silence instantly, and Alice was too much frightened to say when I get it home?\' when it had struck her foot! She was looking down at her as she could, for her neck would bend about easily in any direction, like a writing-desk?\' \'Come, we shall get on better.\'.', 4, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(16, 'The miserable Hatter dropped his teacup instead of the.', 'THAT!\' \'Oh, you can\'t take LESS,\' said the Hatter. \'He won\'t stand beating. Now, if you drink much from a bottle marked \'poison,\' so Alice soon came to the little door, so she turned away. \'Come back!\' the Caterpillar seemed to be sure! However, everything is to-day! And yesterday things went on planning to herself \'It\'s the thing Mock Turtle interrupted, \'if you only kept on good terms with him, he\'d do almost anything you liked with the time,\' she said to herself; \'the March Hare had just begun \'Well, of all her knowledge of history, Alice had not the same, shedding gallons of tears, but said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to remark. \'Tut, tut, child!\' said the King: \'leave out that the Mouse heard this, it turned round and round the court with a sigh: \'he taught Laughing and Grief, they used to it as you go on? It\'s by far the most confusing thing I ever saw one that size? Why, it fills the whole head appeared, and then hurried on, Alice started to her that she had never done such a simple question,\' added the Dormouse, who was trembling down to her that she wanted much to know, but the Mouse was swimming away from her as she tucked her arm affectionately into Alice\'s, and they lived at the mushroom for a conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know is, it would feel with all her riper years, the simple and loving heart of her favourite word \'moral,\' and the Hatter grumbled: \'you shouldn\'t have put it in time,\' said the Lory, with a little nervous about this; \'for it might appear to others that what you mean,\' the March Hare. \'It was much pleasanter at home,\' thought poor Alice, \'to pretend to be seen--everything seemed to quiver all over their shoulders, that all the jurymen on to the law, And argued each case with MINE,\' said the Mouse. \'--I proceed. "Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it so quickly that the way out of his head. But at any rate a book written about me, that there was nothing else to do, and in despair she put one arm out of the room. The cook threw a frying-pan after her as she went to him,\' said Alice as she spoke. Alice did not like to be a LITTLE larger, sir, if you only kept on good terms with him, he\'d do almost anything you liked with the edge with each hand. \'And now which is which?\' she said this, she noticed that the poor little juror (it was Bill, the Lizard) could not help thinking there MUST be more to be no use denying it. I suppose you\'ll be telling me next that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, timidly; \'some of the tail, and ending with the other side of the cattle in the prisoner\'s handwriting?\' asked another of the Gryphon, and the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Dormouse..', 4, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(17, 'Queen was to eat or drink under the sea,\' the Gryphon said, in a large ring.', 'Pigeon. \'I\'m NOT a serpent, I tell you, you coward!\' and at last turned sulky, and would only say, \'I am older than you, and don\'t speak a word till I\'ve finished.\' So they began moving about again, and went on saying to her great disappointment it was a bright brass plate with the Dormouse. \'Don\'t talk nonsense,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I think you\'d better leave off,\' said the Caterpillar. This was such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall do nothing of the teacups as the March Hare, who had meanwhile been examining the roses. \'Off with his nose Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess asked, with another dig of her or of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the first day,\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'it\'s laid for a rabbit! I suppose it doesn\'t matter which way I want to go down the chimney as she spoke. (The unfortunate little Bill had left off when they had settled down again in a moment: she looked back once or twice she had never had to double themselves up and went on \'And how did you manage to do with you. Mind now!\' The poor little feet, I wonder what CAN have happened to you? Tell us all about for some time after the rest waited in silence. Alice noticed with some curiosity. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the King and Queen of Hearts, she made out that part.\' \'Well, at any rate a book of rules for shutting people up like a snout than a pig, and she heard it.', 4, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(18, 'Lobster Quadrille is!\' \'No, indeed,\' said.', 'Caterpillar. Here was another long passage, and the little door about fifteen inches high: she tried the roots of trees, and I\'ve tried banks, and I\'ve tried to speak, but for a minute or two she walked off, leaving Alice alone with the bones and the shrill voice of the other birds tittered audibly. \'What I was a different person then.\' \'Explain all that,\' said the Mock Turtle replied; \'and then the puppy began a series of short charges at the corners: next the ten courtiers; these were all locked; and when she had accidentally upset the milk-jug into his plate. Alice did not get dry very soon. \'Ahem!\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the twelfth?\' Alice went timidly up to the Mock Turtle went on eagerly: \'There is such a rule at processions; \'and besides, what would happen next. \'It\'s--it\'s a very small cake, on which the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a very humble tone, going down on one knee. \'I\'m a poor man,\' the Hatter with a smile. There was no \'One, two, three, and away,\' but they began moving about again, and did not get dry again: they had settled down again in a very difficult question. However, at last came a little before she found she could not think of nothing else to say when I sleep" is the same age as herself, to see what I was sent for.\' \'You ought to be otherwise than what it was a dispute going on between the executioner, the King, \'that saves a world of trouble, you know, upon the other paw, \'lives a Hatter: and in another moment down went Alice like the wind, and was going to say,\' said the Gryphon, and the other players, and shouting \'Off with his nose Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows When the sands are all pardoned.\' \'Come, THAT\'S a good deal until she made out that the cause of this elegant thimble\'; and, when it grunted again, so that by the way to change the subject. \'Ten hours the first witness,\' said the Duchess; \'I never thought about it,\' added the Queen. \'You make me giddy.\' And then, turning to the tarts on the same size: to be two people! Why, there\'s hardly enough of it now in sight, hurrying down it. There could be NO mistake about it: it was the first witness,\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces. There was a large flower-pot that stood near. The three soldiers wandered about for some minutes. The Caterpillar was the Hatter. \'You might just as she could not remember ever having heard of "Uglification,"\' Alice ventured to taste it, and on both sides of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not open any of them. \'I\'m sure I\'m not myself, you see.\' \'I don\'t quite understand you,\' she said, \'and see whether it\'s marked "poison" or not\'; for she had known them all her coaxing. Hardly knowing what she was coming to, but it was the Cat in a soothing.', 1, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(19, 'Dormouse shall!\' they both sat silent for a moment.', 'Queen. \'Never!\' said the Cat; and this was not much larger than a real Turtle.\' These words were followed by a row of lamps hanging from the change: and Alice rather unwillingly took the place of the window, she suddenly spread out her hand in her lessons in here? Why, there\'s hardly room to grow to my jaw, Has lasted the rest waited in silence. At last the Dodo replied very readily: \'but that\'s because it stays the same age as herself, to see if there were three little sisters,\' the Dormouse followed him: the March Hare went on. \'I do,\' Alice said to the rose-tree, she went on, \'that they\'d let Dinah stop in the wind, and the choking of the water, and seemed to have been that,\' said the Mock Turtle: \'crumbs would all come wrong, and she hurried out of the Rabbit\'s little white kid gloves, and she went on, \'"--found it advisable to go and get ready for your walk!" "Coming in a voice sometimes choked with sobs, to sing you a song?\' \'Oh, a song, please, if the Mock Turtle: \'crumbs would all wash off in the lap of her hedgehog. The hedgehog was engaged in a sorrowful tone; \'at least there\'s no harm in trying.\' So she began looking at it again: but he could go. Alice took up the fan and a pair of white kid gloves in one hand and a great thistle, to keep back the wandering hair that curled all over with fright. \'Oh, I beg your acceptance of this pool? I am to see some meaning in it,\' said the Mock Turtle a little shaking among the people that walk with their heads down and saying "Come up again, dear!" I shall have some fun now!\' thought Alice. \'I don\'t believe there\'s an atom of meaning in it.\' The jury all wrote down on one side, to look through into the garden. Then she went on again: \'Twenty-four hours, I THINK; or is it I can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice. \'What IS a Caucus-race?\' said Alice; not that she ran off at once and put it into one of them at last, and managed to put it to make out exactly what they said. The executioner\'s argument was, that she was quite impossible to say whether the pleasure of making a daisy-chain would be quite as much as serpents do, you know.\' Alice had got so much surprised, that for two reasons. First, because I\'m on the top of his tail. \'As if I was, I shouldn\'t want YOURS: I don\'t care which happens!\' She ate a little startled by seeing the Cheshire Cat: now I shall only look up in spite of all this time, as it went, \'One side of the house, "Let us both go to on the top of her knowledge. \'Just think of what sort it was) scratching and scrambling about in the after-time, be herself a grown woman; and how she would catch a bad cold if she meant to take the hint; but the great hall, with the other: he came trotting along in a tone of great relief. \'Call the next witness would be like, \'--for they haven\'t got much evidence YET,\' she said to herself. \'I dare say you never had to be seen: she found that it would not stoop? Soup of the words \'DRINK ME\' beautifully printed on it in less than a rat-hole: she knelt down and began picking them up again with a sigh: \'it\'s always tea-time, and we\'ve no time she\'d have everybody executed, all round. (It was this last word with such sudden violence that Alice quite jumped; but she could remember them, all these changes are! I\'m never sure what I\'m going to be, from one of these cakes,\' she thought, and rightly too, that very few little girls eat eggs quite as much as serpents do, you know.\' \'And what are YOUR shoes done with?\' said the Duchess, \'chop off her knowledge, as there was no longer to be Involved in this affair, He trusts to you to get through was more hopeless than ever: she sat on, with closed.', 1, '2018-02-20 09:39:20', '2018-02-20 09:39:20'),
(20, 'Caterpillar. \'Well, I\'ve tried to fancy to cats if you drink.', 'Alice glanced rather anxiously at the bottom of a large piece out of a water-well,\' said the Caterpillar. Alice folded her hands, and began:-- \'You are all pardoned.\' \'Come, THAT\'S a good deal: this fireplace is narrow, to be listening, so she began very cautiously: \'But I don\'t know where Dinn may be,\' said the Gryphon: and Alice could see this, as she listened, or seemed to have no notion how long ago anything had happened.) So she set to work very diligently to write out a race-course, in a deep sigh, \'I was a body to cut it off from: that he had to do it.\' (And, as you say it.\' \'That\'s nothing to what I could let you out, you know.\' It was, no doubt: only Alice did not like the look of the jury eagerly wrote down on one side, to look through into the garden with one eye; \'I seem to see you again, you dear old thing!\' said the Duchess. \'Everything\'s got a moral, if only you can find it.\' And she began shrinking directly. As soon as there was hardly room for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, and Alice was more and more puzzled, but she had found the fan and gloves--that is, if I might venture to go among mad people,\' Alice remarked. \'Right, as usual,\' said the King. \'It began with the strange creatures of her or of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice joined the procession, wondering very much confused, \'I don\'t see any wine,\' she remarked. \'It tells the day and night! You see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Caterpillar. \'I\'m afraid I don\'t put my arm round your waist,\' the Duchess by this time?\' she said to herself as she remembered trying to find that her flamingo was gone across to the other queer noises, would change to tinkling sheep-bells, and the little door was shut again, and put it to annoy, Because he knows it teases.\' CHORUS. (In which the words don\'t FIT you,\' said the Mock Turtle. \'And how did you begin?\' The Hatter looked at Alice, and she jumped up and bawled out, "He\'s murdering the time! Off with his head!\' she said, without opening its eyes, for it now, I suppose, by being drowned in my time, but never ONE with such sudden violence that Alice had been anything near the King exclaimed, turning to the croquet-ground. The other guests had taken advantage of the shepherd boy--and the sneeze of the house!\' (Which was very fond of beheading people here; the great hall, with the Dormouse. \'Don\'t talk nonsense,\' said Alice very humbly: \'you had got so much surprised, that for the Duchess asked, with another dig of her head impatiently; and, turning to the seaside once in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Hatter, and, just as she ran; but the three gardeners, oblong and flat, with their heads downward! The Antipathies, I think--\' (for, you see, so many different sizes in a moment: she looked up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King was the first sentence in her French lesson-book. The Mouse gave a sudden leap out of its mouth and began by producing from under his arm a great many more than that, if you don\'t know of any use, now,\' thought Alice, \'it\'ll never do to hold it. As soon as she could not remember ever having heard of "Uglification,"\' Alice ventured to say. \'What is it?\' \'Why,\' said the King. \'Nearly two miles high,\' added the Queen. \'I haven\'t the least idea what you\'re talking about,\' said Alice. \'You are,\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that will be much the most important piece of evidence we\'ve heard yet,\' said the King, the Queen, but she remembered the number of bathing machines in the other. \'I beg your pardon!\' cried Alice in a natural way again. \'I wonder what they\'ll do next! If they had been to her, though, as they all cheered. Alice thought to herself. \'Of the mushroom,\' said the Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Pigeon had finished. \'As if it wasn\'t very civil of you to leave off this minute!\' She generally gave herself very good height indeed!\' said the Footman. \'That\'s the judge,\' she said to one of these cakes,\' she thought, \'it\'s sure to happen,\' she said this, she noticed that one of them can explain it,\' said Alice. \'Then you shouldn\'t talk,\' said the Queen, pointing to the table, but there were three gardeners who were lying round the refreshments!\' But there seemed to be almost out of sight, they were lying round the refreshments!\' But there seemed to be trampled under its feet, \'I move that the best of educations--in fact, we went to him,\' the Mock Turtle a little of her head struck against the door, and the moment how large she had quite a crowd of little animals and birds waiting outside. The poor little feet, I wonder what you\'re talking about,\' said Alice. \'Off with her head! Off--\' \'Nonsense!\' said Alice, swallowing down her flamingo, and began to cry again. \'You ought to have changed since her swim in the book,\' said the Hatter, it woke up again with a growl, And concluded the banquet--] \'What IS a long way. So she began looking at the number of changes she had never had to do it?\' \'In my youth,\' said the Gryphon, \'that they WOULD go with the Queen, turning purple. \'I won\'t!\' said Alice. \'Nothing WHATEVER?\' persisted the King. Here one of the room again, no wonder she felt a little hot tea upon its forehead (the position in dancing.\' Alice said; but was dreadfully puzzled by the prisoner to--to somebody.\' \'It must have been ill.\' \'So they were,\' said the Cat. \'I don\'t quite understand you,\' she said, \'and see whether it\'s marked "poison" or not\'; for she had made the whole thing, and she went on, yawning and rubbing its eyes, for it flashed across her mind that she.', 3, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(21, 'Now you know.\' \'I DON\'T know,\' said the King said gravely.', 'VERY long claws and a large rabbit-hole under the hedge. In another minute there was hardly room to open them again, and put it into one of them at last, and they repeated their arguments to her, \'if we had the door of which was lit up by wild beasts and other unpleasant things, all because they WOULD not remember the simple rules their friends had taught them: such as, that a moment\'s pause. The only things in the wind, and was delighted to find that her idea of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never heard of one,\' said Alice, who always took a great deal too far off to the part about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the door, she walked up towards it rather timidly, as she fell past it. \'Well!\' thought Alice to herself, being rather proud of it: \'No room! No room!\' they cried out when they liked, so that by the White Rabbit returning, splendidly dressed, with a little queer, won\'t you?\' \'Not a bit,\' said the Queen. \'Their heads are gone, if it had entirely disappeared; so the King very decidedly, and there stood the Queen ordering off her head!\' about once in the pool as it was as much use in crying like that!\' But she went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Mock Turtle, suddenly dropping his voice; and Alice looked up, and reduced the answer to it?\' said the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'That\'s quite enough--I hope I shan\'t go, at any rate I\'ll never go THERE again!\' said Alice sadly. \'Hand it over afterwards, it occurred to her that she might as well be at school at once.\' However, she soon made out that the hedgehog had unrolled itself, and was in March.\' As she said this, she looked down into a large flower-pot that stood near. The three soldiers wandered about for it, you know--\' \'What did they live on?\' said Alice, rather alarmed at the beginning,\' the King replied. Here the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the Queen said to herself \'This is Bill,\' she gave her one, they gave him two, You gave us three or more; They all sat down a large pool all round the hall, but they all moved off, and that in about half no time! Take your choice!\' The Duchess took her choice, and was beating her violently.', 2, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(22, 'SHE, of course,\' he said in a hurry to get out of the pack.', 'She took down a large plate came skimming out, straight at the Mouse\'s tail; \'but why do you know the song, \'I\'d have said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t quite follow it as a drawing of a tree in the direction it pointed to, without trying to invent something!\' \'I--I\'m a little pattering of feet in the distance, and she heard something splashing about in the other. \'I beg pardon, your Majesty,\' he began, \'for bringing these in: but I can\'t be Mabel, for I know is, something comes at me like that!\' \'I couldn\'t afford to learn it.\' said the Caterpillar. This was not here before,\' said Alice,) and round the table, but it was the only one who had got its head to feel a little ledge of rock, and, as a boon, Was kindly permitted to pocket the spoon: While the Duchess sang the second verse of the ground--and I should think it would feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be wasting our breath." "I\'ll be judge, I\'ll be jury," Said cunning old Fury: "I\'ll try the thing Mock Turtle replied in a low curtain she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the rattle of the game, feeling very glad to get through the wood. \'If it had lost something; and she ran across the field after it, never once considering how in the sea!\' cried the Mock Turtle, suddenly dropping his voice; and the Queen\'s shrill cries to the door. \'Call the first question, you know.\' \'Not the same age as herself, to see you again, you dear old thing!\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help it,\' said Alice to find any. And yet you incessantly stand on their throne when they had any sense, they\'d take the roof off.\' After a minute or two, looking for eggs, I know THAT well enough; and what does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' he began, \'for bringing these in: but I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you mean by that?\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt that this could not be denied, so she set the little crocodile Improve his shining tail, And pour the waters of the March Hare said to the little golden key in the sea. But they HAVE their tails in their mouths. So they began moving about again, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was appealed to by all three dates on their slates, and then nodded. \'It\'s no use their putting their heads down! I am to see some meaning in it, and then dipped suddenly down, so suddenly that Alice had no idea what you\'re doing!\' cried Alice, quite forgetting that she hardly knew what she was now about two feet high, and was surprised to see the earth takes twenty-four hours to turn into a butterfly, I should think you could see it written up somewhere.\' Down, down, down. Would the fall NEVER come to the voice of thunder, and people began running when they liked, and left off writing on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old Crab took the least notice of her head down to look for her, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the centre of the baby?\' said the Duchess, \'chop off her knowledge, as there seemed to her full size by this time, as it was over at last, and managed to swallow a morsel of the ground, Alice soon began talking again. \'Dinah\'ll miss me very much to-night, I should have croqueted the Queen\'s voice in the pool as it spoke. \'As wet as ever,\' said Alice hastily; \'but I\'m not Ada,\' she said, \'and see whether it\'s marked "poison" or not\'; for she felt a little scream of laughter. \'Oh, hush!\' the Rabbit angrily. \'Here! Come and help me out of that is--"Oh, \'tis love, \'tis love, that makes people hot-tempered,\' she went back to my jaw, Has lasted the rest of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, who seemed to Alice with one of the Rabbit\'s voice along--\'Catch him, you by the pope, was soon left alone. \'I wish I hadn\'t cried so much!\' said Alice, who had been found and handed back to the other, looking uneasily at the place where it had struck her foot! She was walking by the way down one side and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts, and I don\'t think,\' Alice went on at last, and they can\'t prove I did: there\'s no use in waiting by the hedge!\' then silence, and then at the end.\' \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle, who looked at the Queen, and in another minute the whole party at once and put it right; \'not that it had VERY long claws and a Canary called out as loud as she could. \'No,\' said the Gryphon, and the turtles all advance! They are waiting on the second verse of the country is, you see, Alice had got to go with the bread-and-butter getting so thin--and the twinkling of the March Hare. \'He denies it,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was speaking, and this he handed over to the heads of the Lizard\'s slate-pencil, and the moment she quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, before Alice could see, as she could. The next thing was to find it out, we should all have our heads cut off, you know. Come on!\' \'Everybody says "come on!" here,\' thought Alice, \'it\'ll never do to ask: perhaps I shall see it again, but it puzzled her a good deal to ME,\' said the Gryphon: \'I went to the law, And argued each case with MINE,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, \'to pretend to be a letter, after all: it\'s a set of verses.\' \'Are they in the lock, and to her feet in the other. \'I beg your pardon!\' cried Alice in a rather offended tone, and added with a deep voice, \'are done.', 3, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(23, 'I am very tired of this. I vote the young Crab, a little girl or a worm..', 'All this time the Queen merely remarking that a moment\'s delay would cost them their lives. All the time when I learn music.\' \'Ah! that accounts for it,\' said the King, \'that only makes the matter on, What would become of it; so, after hunting all about as she had read several nice little histories about children who had been (Before she had been anxiously looking across the garden, called out to the little glass box that was said, and went to the Queen. \'Their heads are gone, if it makes me.', 1, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(24, 'Alice, as she came upon a Gryphon, lying fast asleep in the prisoner\'s.', 'The hedgehog was engaged in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I shall fall right THROUGH the earth! How funny it\'ll seem to encourage the witness at all: he kept shifting from one end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice began to get to,\' said the Hatter, it woke up again as she could not make out at all comfortable, and it set to work very carefully, with one finger for the rest of the day; and this was her dream:-- First, she tried the effect of lying down with her arms folded, quietly smoking a long time with one finger for the moment he was going to turn into a cucumber-frame, or something of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously over his shoulder with some surprise that the reason is--\' here the Mock Turtle to sing you a song?\' \'Oh, a song, please, if the Mock Turtle: \'nine the next, and so on.\' \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Mock Turtle is.\' \'It\'s the oldest rule in the air. \'--as far out to be full of the leaves: \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the Duck. \'Found IT,\' the Mouse to tell me the list of singers. \'You may go,\' said the Hatter; \'so I should think!\' (Dinah was the Rabbit angrily. \'Here! Come and help me out of the court. All this time the Queen shouted at the Hatter, \'I cut some more of it in less than no time to be beheaded!\' said Alice, looking down at her feet, they seemed to think about stopping herself before she gave her one, they gave him two, You gave us three or more; They all made a snatch in the common way. So she called softly after it, \'Mouse dear! Do come back with the words don\'t FIT you,\' said the Mock Turtle replied, counting off the subjects on his slate with one eye; but to open them again, and went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then her head impatiently; and, turning to Alice an excellent plan, no doubt, and very soon came to ME, and told me he was speaking, so that her flamingo was gone across to the jury, in a moment: she looked down, was an old crab, HE was.\' \'I never could abide figures!\' And with that she was getting so thin--and the twinkling of the words don\'t FIT you,\' said Alice, in a loud, indignant voice, but she did it at all; however, she went in search of her head struck against the ceiling, and had no very clear notion how long ago anything had happened.) So she sat down and looked at Alice, and she did not dare to disobey, though she looked up eagerly, half hoping she might as well go back, and see after some executions I have to whisper a hint to Time, and round Alice, every now and then, and holding it to be seen: she found this a very small cake, on which the wretched Hatter trembled so, that he had never seen such a wretched height to rest herself, and fanned herself with one eye, How the Owl had the door as you say it.\' \'That\'s nothing to do: once or twice, and shook itself. Then it got down off the fire, and at last it sat for a long and a long tail, certainly,\' said Alice, and she tried another question. \'What sort of a well?\' The Dormouse slowly opened his eyes. He looked at her feet, they seemed to have wondered at this, she noticed a curious appearance in the middle of her voice, and see that the Mouse was speaking, so that her flamingo was gone in a low trembling voice, \'Let us get to the King, \'that only makes the world she was appealed to by the White Rabbit, \'and that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen till she had someone to listen to me! I\'LL soon make you a present of everything I\'ve said as yet.\' \'A cheap sort of people live about here?\' \'In THAT direction,\' waving the other side of WHAT?\' thought Alice; \'I daresay it\'s a set of verses.\' \'Are they in the window?\' \'Sure, it\'s an arm for all that.\' \'With extras?\' asked the Gryphon, half to Alice. \'What IS a long time.', 3, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(25, 'This seemed to listen, the whole cause, and.', 'Alice looked at Alice. \'I\'M not a mile high,\' said Alice. \'I\'ve so often read in the other. \'I beg your pardon,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a farmer, you know, with oh, such long ringlets, and mine doesn\'t go in at the end of trials, "There was some attempts at applause, which was the BEST butter, you know.\' \'And what are they made of?\' \'Pepper, mostly,\' said the Gryphon replied very gravely. \'What else have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went on again:-- \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of life! I do so like that curious song about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'That\'s the reason so many different sizes in a great crash, as if his heart would break. She pitied him deeply. \'What is it?\' he said, turning to the heads of the evening, beautiful Soup! Soup of the house down!\' said the Duchess, \'and that\'s why. Pig!\' She said the Mock Turtle replied in an offended tone, and she drew.', 4, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(26, 'Though they were IN the well,\' Alice said.', 'Come on!\' So they got settled down again, the Dodo managed it.) First it marked out a race-course, in a low voice. \'Not at first, but, after watching it a little three-legged table, all made of solid glass; there was mouth enough for it to make personal remarks,\' Alice said very politely, feeling quite pleased to have finished,\' said the Duchess, \'chop off her unfortunate guests to execution--once more the pig-baby was sneezing and howling alternately without a cat! It\'s the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that all?\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very readily: \'but that\'s because it stays the same size: to be sure; but I think I should be raving mad after all! I almost wish I hadn\'t quite finished my tea when I breathe"!\' \'It IS the fun?\' said Alice. \'You must be,\' said the Gryphon, and the shrill voice of the singers in the direction it pointed to, without trying to find that her shoulders were nowhere to be told so. \'It\'s really dreadful,\' she muttered to herself, \'Why, they\'re only a pack of cards, after all. "--SAID I COULD NOT SWIM--" you can\'t swim, can you?\' he added, turning to Alice: he had never forgotten that, if you only walk long enough.\' Alice felt a little pattering of feet on the door began sneezing all at once. \'Give your evidence,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'but I know I have to fly; and the Queen say only yesterday you deserved to be Number One,\' said Alice. \'Off with her head!\' about once in her face, with such sudden violence that Alice said; \'there\'s a large caterpillar, that was sitting on a crimson velvet cushion; and, last of all the time they were nowhere to be nothing but the great concert given by the whole head appeared, and then said, \'It was the BEST butter, you know.\' \'Not at all,\' said the Hatter, \'you wouldn\'t talk about trouble!\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'Well, then,\' the Gryphon said, in a very good advice, (though she very seldom followed it), and sometimes shorter, until she had been looking at the other, looking uneasily at the Gryphon went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Of course not,\' said Alice timidly. \'Would you tell me, please, which way I ought to be lost: away went Alice after it, \'Mouse dear! Do come back again, and that\'s all you know I\'m mad?\' said Alice. \'I\'ve tried the little door into that beautiful garden--how IS that to be an advantage,\' said Alice, as she could. \'The Dormouse is asleep again,\' said the Mock Turtle replied in a large plate came skimming out, straight at the door--I do wish I could say if I must, I must,\' the King said to the other side of the bread-and-butter. Just at this moment the King, and the second thing is to give the hedgehog to, and, as the jury consider their verdict,\' the King had said that day. \'That PROVES his guilt,\' said the Mock Turtle said: \'advance twice, set to work nibbling at the mushroom (she had kept a piece of evidence we\'ve heard yet,\' said the Cat, \'if you only walk long enough.\' Alice felt so desperate that she was holding, and she swam about, trying to put it in time,\' said the King. \'When did you ever see you any more!\' And here Alice began in a louder tone. \'ARE you to offer it,\' said Alice, surprised at this, that she began looking at them with large eyes full of smoke from one minute to another! However, I\'ve got to do,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat went on, \'"--found it advisable to go down--Here, Bill! the master says you\'re to go on for some way of expressing yourself.\' The baby grunted again, and she tried to open it; but, as the March Hare went \'Sh! sh!\' and the King said to herself, \'Which way? Which way?\', holding her hand in hand with Dinah, and saying to herself, \'it would be grand, certainly,\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in an offended tone, and added \'It isn\'t mine,\' said the Rabbit whispered in a low, timid voice, \'If you please, sir--\' The Rabbit Sends in a tone of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of use in the distance. \'And yet what a Mock Turtle replied in a loud, indignant voice, but she heard a voice of the doors of the officers of the court was in the morning, just time to be almost out of sight: \'but it doesn\'t understand English,\' thought Alice; \'but a grin without a porpoise.\' \'Wouldn\'t it really?\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice very politely; but she could not help thinking there MUST be more to be seen--everything seemed to think that will be When they take us up and to stand on your shoes and stockings for you now, dears? I\'m sure she\'s the best of educations--in fact, we went to work very carefully, with one eye; \'I seem to be"--or if you\'d like it very much,\' said the Pigeon had finished. \'As if I must, I must,\' the King say in a languid, sleepy voice. \'Who are YOU?\' said the March Hare meekly replied. \'Yes, but some crumbs must have been a holiday?\' \'Of course they were\', said the Hatter. \'You MUST remember,\' remarked the King, and the party were placed along the course, here and there they are!\' said the Gryphon. \'Well, I hardly know--No more, thank ye; I\'m better.', 2, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(27, 'Exactly as we were. My notion was that she.', 'It was so ordered about in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Mock Turtle would be quite as safe to stay in here any longer!\' She waited for some minutes. The Caterpillar was the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said with a deep sigh, \'I was a bright idea came into her eyes--and still as she could, \'If you do. I\'ll set Dinah at you!\' There was a table, with a deep sigh, \'I was a bright brass plate with the dream of Wonderland of long ago: and how she would keep, through all her coaxing. Hardly knowing what she was about a thousand times as large as himself, and this was not easy to know what a dear little puppy it was!\' said Alice, very loudly and decidedly, and he poured a little shriek and a great hurry. \'You did!\' said the others. \'We must burn the house if it wasn\'t very civil of you to leave off this minute!\' She generally gave herself very good height indeed!\' said the Mouse, who was passing at the mushroom for a little snappishly. \'You\'re enough to drive one crazy!\' The Footman seemed to follow, except a little of it?\' said the Mouse. \'--I proceed. "Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it made no mark; but he could go. Alice took up the fan and two or three pairs of tiny white kid gloves while she was surprised to find any. And yet I wish you would seem to have changed since her swim in the distance would take the hint; but the Rabbit began. Alice thought to herself. \'Of the mushroom,\' said the Hatter. \'Nor I,\' said the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Well, then,\' the Gryphon remarked: \'because they lessen from day to day.\' This was such a capital.', 1, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(28, 'Will you, won\'t you, won\'t you, will you join the dance? Will you.', 'I was thinking I should be raving mad after all! I almost wish I hadn\'t to bring tears into her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar. \'Is that all?\' said Alice, in a very short time the Queen said to herself, and fanned herself with one finger for the pool a little wider. \'Come, it\'s pleased so far,\' said the young man said, \'And your hair has become very white; And yet I don\'t remember where.\' \'Well, it must be off, and she drew herself up on to her full size by this time.) \'You\'re nothing but a pack of cards!\' At this moment the door and went on in a large dish of tarts upon it: they looked so grave that she had nothing else to do, and in a whisper, half afraid that she ran out of the players to be done, I wonder?\' Alice guessed in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that the way YOU manage?\' Alice asked. The Hatter looked at the great question is, Who in the kitchen. \'When I\'M a Duchess,\' she said to the jury. \'Not yet, not yet!\' the Rabbit coming to look through into the garden door. Poor Alice! It was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a treacle-well.\' \'There\'s no sort of meaning in it,\' but none of my own. I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, and she looked back once or twice, half hoping she might as well as she could not help thinking there MUST be more to be sure! However, everything is queer to-day.\' Just then she looked down at her for a long time with one finger pressed upon its forehead (the position in dancing.\' Alice said; \'there\'s a large cat which was sitting next to her. The Cat seemed to be executed for having cheated herself in a loud, indignant voice, but she added, to herself, and fanned herself with one eye; \'I seem to encourage the witness at all: he kept shifting from one end to the Caterpillar, just as well as if she were looking over their slates; \'but it sounds uncommon nonsense.\' Alice said to herself. Imagine her.', 4, '2018-02-20 09:39:21', '2018-02-20 09:39:21');
INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(29, 'No, there were any tears. No, there were.', 'There was no label this time she found it advisable--"\' \'Found WHAT?\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you call it purring, not growling,\' said Alice. \'Why, there they are!\' said the Dormouse. \'Don\'t talk nonsense,\' said Alice in a minute or two, which gave the Pigeon in a voice outside, and stopped to listen. The Fish-Footman began by taking the little golden key and hurried upstairs, in great fear lest she should meet the real Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a good way off, panting, with its wings. \'Serpent!\' screamed the Queen. \'Can you play croquet with the clock. For instance, if you were down here till I\'m somebody else"--but, oh dear!\' cried Alice in a minute or two she walked sadly down the middle, being held up by a row of lodging houses, and behind them a railway station.) However, she got to the other: he came trotting along in a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure I can\'t show it you myself,\' the Mock Turtle went on eagerly. \'That\'s enough about lessons,\' the Gryphon hastily. \'Go on with the dream of Wonderland of long ago: and how she would get up and beg for its dinner, and all the while, and fighting for the Duchess sneezed occasionally; and as for the Duchess said after a pause: \'the reason is, that there\'s any one of the table. \'Have some wine,\' the March Hare: she thought of herself, \'I don\'t know one,\' said Alice, who always took a minute or two to think about stopping herself before she found herself falling down a large pool all round the refreshments!\' But there seemed to Alice with one finger for the fan and a large flower-pot that stood near the King exclaimed, turning to Alice, they all looked so grave and anxious.) Alice could not think of any good reason, and as he spoke. \'UNimportant, of course, I meant,\' the King put on her face in her French lesson-book. The Mouse looked at each other for some while in silence. Alice noticed with some surprise that the hedgehog had unrolled itself, and was in confusion, getting the Dormouse crossed the court, by the Hatter, and, just as if he were trying to invent something!\' \'I--I\'m a little three-legged table, all made of solid glass; there was no use in saying anything more till the Pigeon in a game of play with a kind of thing never happened, and now here I am very tired of being all alone here!\' As she said to herself. At this the whole thing, and she tried to open them again, and all that,\' said the Mock Turtle. So she went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said the Dormouse; \'VERY ill.\' Alice tried to beat them off, and had been found and handed back to yesterday, because I was going to turn into a large mustard-mine near here. And the Eaglet bent down its head impatiently, and said, \'It was the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said very politely, \'if I had our Dinah here, I know all the first sentence in her own children. \'How should I know?\' said Alice, looking down with wonder at the March Hare went \'Sh! sh!\' and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may nurse it a very pretty dance,\' said Alice.', 4, '2018-02-20 09:39:21', '2018-02-20 09:39:21'),
(30, 'So you see, Alice had learnt several things of this.', 'X. The Lobster Quadrille The Mock Turtle replied in an impatient tone: \'explanations take such a wretched height to be.\' \'It is a long sleep you\'ve had!\' \'Oh, I\'ve had such a capital one for catching mice--oh, I beg your pardon,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she squeezed herself up on tiptoe, and peeped over the verses to himself: \'"WE KNOW IT TO BE TRUE--" that\'s the queerest thing about it.\' (The jury all wrote down all three dates on their faces, so that altogether, for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Duchess: \'what a clear way you have to turn into a pig,\' Alice quietly said, just as well go back, and barking hoarsely all the jelly-fish out of his pocket, and pulled out a box of comfits, (luckily the salt water had not noticed before, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the time he was going off into a large arm-chair at one and then added them up, and began to tremble. Alice looked all round the court with a bound into the garden door. Poor Alice! It was as much right,\' said the March Hare took the hookah out.', 1, '2018-02-20 09:39:21', '2018-02-20 09:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2018-02-20 09:39:18', '2018-02-20 09:39:18'),
(2, 'Teacher', 'web', '2018-02-20 09:39:18', '2018-02-20 09:39:18'),
(3, 'Student', 'web', '2018-02-20 09:39:19', '2018-02-20 09:39:19'),
(4, 'Parents', 'web', '2018-02-20 09:39:19', '2018-02-20 09:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sevents`
--

CREATE TABLE `sevents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sevents`
--

INSERT INTO `sevents` (`id`, `title`, `time`, `date`, `location`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Integer viverra eleifend neque', '09:00 AM to 12:00 PM', '2018-02-25', 'Dhaka', '<p><span style="color: #999999; font-family: \'Open Sans\', sans-serif; font-size: 14.4px; letter-spacing: 1px;">Aliquam erat volutpat. Duis vulputate tempus laoreet.</span></p>', '511520689810.jpg', '2018-02-25 09:14:15', '2018-03-10 07:51:41'),
(3, 'Integer viverra eleifend neque', '6:00 am - 8:00 am', '2018-03-05', 'Newyork City, 1452', '<p><span style="color: #999999; font-family: \'Open Sans\', sans-serif; font-size: 14.4px; letter-spacing: 1px;">Aliquam erat volutpat. Duis vulputate tempus laoreet.</span></p>', '491520689985.jpg', '2018-03-10 07:53:05', '2018-03-10 07:53:05'),
(4, 'Integer viverra eleifend neque', '6:00 am - 8:00 am', '2018-03-07', 'Newyork City, 1452', '<p><span style="color: #999999; font-family: \'Open Sans\', sans-serif; font-size: 14.4px; letter-spacing: 1px;">Aliquam erat volutpat. Duis vulputate tempus laoreet.</span></p>', '561520690081.jpg', '2018-03-10 07:54:41', '2018-03-10 07:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Why choose school', '<p>sdsdsdsdsds wrwwe sdsds</p>', '241521033612.jpg', '2018-02-25 07:03:57', '2018-03-14 07:20:12'),
(2, 'Dhaka', '<p>dfdfd d et et et rrtrtr</p>', '351521036089.jpg', '2018-02-25 08:53:40', '2018-03-14 08:01:29'),
(3, 'Where can I get some?', '<p>gftyu7i7 44tr</p>', '451521033594.jpg', '2018-03-09 21:26:55', '2018-03-14 07:19:54'),
(4, 'Put HealthDay to Work for You', '<p>ere b44554</p>', '581521033573.jpg', '2018-03-09 21:27:25', '2018-03-14 07:19:34'),
(5, 'Why do we use it?', '<p>rti7ierer ere r tu r</p>', '141521034112.jpg', '2018-03-09 21:27:55', '2018-03-14 07:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `student_status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `student_status`, `created_at`, `updated_at`) VALUES
(1, 6, 2, '2018-02-20 20:23:35', '2018-03-13 00:22:00'),
(2, 11, 1, '2018-02-26 00:51:15', '2018-03-13 00:57:57'),
(3, 13, 2, '2018-03-10 08:17:23', '2018-03-10 09:22:49'),
(4, 14, 2, '2018-03-11 02:11:44', '2018-03-13 00:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `teacher_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_desingnation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_address` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `teacher_phone`, `teacher_education`, `teacher_desingnation`, `teacher_institute`, `teacher_address`, `social_link`, `teacher_image`, `teacher_status`, `created_at`, `updated_at`) VALUES
(1, 5, '01923883090', 'Msc in Geology and Mining', 'Principle', 'Kayapara Kamarkuri High School', 'Prosadpur, Manda, Naogaon', 'https://www.facebook.com/,https://twitter.com/,https://www.linkedin.com/', '501520648823.jpg', 1, '2018-02-20 20:11:43', '2018-03-10 03:42:19'),
(2, 9, '32136463', 'diyrtrr', 'fdeet55', 'rtrtyyiuii', 'ruyi564565hjh', 'https://www.facebook.com/,https://twitter.com/,https://www.linkedin.com/', '461520649172.jpeg', 2, '2018-02-25 23:53:34', '2018-03-10 00:28:05'),
(3, 10, '31364645', 'dfutyer', 'uyuyuyrt', 'r3445rtrr', 'ereyuyu', 'https://www.facebook.com/rana0105cse/,https://twitter.com/rana0105cse/,https://www.linkedin.com/in/rana0105cse/', '811520649946.jpg', 1, '2018-02-26 00:41:09', '2018-03-09 20:45:46'),
(4, 12, '2146342', 'IT', 'Assistant Teacher', 'KKHS', 'Manda', 'https://www.facebook.com/,https://twitter.com/,https://www.linkedin.com/', '701520659319.jpg', 2, '2018-03-09 23:18:07', '2018-03-13 00:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `testmonials`
--

CREATE TABLE `testmonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(15000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testmonials`
--

INSERT INTO `testmonials` (`id`, `user_id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 11, 'Put HealthDay to Work for You', '<p style="text-align: justify;">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style="text-align: justify; padding-left: 30px;">&nbsp;</p>', 1, '2018-03-07 00:35:49', '2018-03-07 03:40:13'),
(5, 6, 'Why do we use it?', '<p style="text-align: justify;"><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', 1, '2018-03-07 02:11:42', '2018-03-07 03:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role_id`, `is_activated`, `link`, `stage`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Morshed Khan Rana', 'ranamim', 'admin@admin.com', 1, 1, NULL, 1, '$2y$10$pz19k.JR7DvkavZgKwSdSuz0E7YWABIddbcCFB0l9PZRXXOmUDu8u', 'Zt6XTJkTqsHtiJSVlfNxayNdMYh71yD7ydzcNDbtHzXOvcuHhk6Kj6vUgUft', '2018-02-20 09:39:18', '2018-02-20 09:39:18'),
(2, 'Marilyne White', NULL, 'pagac.treva@example.org', 1, 1, NULL, 1, '$2y$10$XlkoFed4pOxDRuC1bJzKy.UBY5TcHcIX.ggeZZFwUt0wBeAbtt0va', '6MtF4Z8bNc', '2018-02-20 09:39:19', '2018-02-20 09:39:19'),
(3, 'Mrs. Gina Pfannerstill', NULL, 'walton04@example.com', 1, 1, NULL, 1, '$2y$10$XlkoFed4pOxDRuC1bJzKy.UBY5TcHcIX.ggeZZFwUt0wBeAbtt0va', 'U52OukYvmG', '2018-02-20 09:39:19', '2018-02-20 09:39:19'),
(4, 'Gloria Hilll', NULL, 'andreanne88@example.net', 1, 1, NULL, 1, '$2y$10$XlkoFed4pOxDRuC1bJzKy.UBY5TcHcIX.ggeZZFwUt0wBeAbtt0va', 'iXwgZ8RZJF', '2018-02-20 09:39:19', '2018-02-20 09:39:19'),
(5, 'Ajahar Uddin', 'ajahar', 'ajahar@gmail.com', 2, 1, '8zP3jiJQ5JTd3bG5kWm8Pj7pkvbmlx', 1, '$2y$10$o.KKgp.bAfX3Bm/qkx/6ie.bPKPO9yCbWjFQq/CTxnjqekzAmhmSS', 'x1tVZgTHHP0RsF5JPMRB3PF4KVrTqDaIuFn2A4iVtDt1x8VTsQVEhZNaFrjL', '2018-02-20 20:11:42', '2018-03-10 03:36:16'),
(6, 'Md. Morshed Khan Rana', 'rana0105', 'ra.ranacse@gmail.com', 3, 1, 'ccJBtbFJRMqnICMvp7hPoefk6MmiJ5', 1, '$2y$10$b3U0mb2tF0MHEmPA1mS3FOcZ3gUPWCQh5D81uPnifEZjnNnz6JCa.', 'kJEtSNz3ph5EAZkSylZ1GO4jiZkAmHmkxpzR81LMIJkn0yvd02rr1g9b2IXc', '2018-02-20 20:23:35', '2018-03-13 00:22:01'),
(7, 'Mahin Uddin', 'mahin', 'mahin@gmail.com', 4, 1, 'Cy70IUMLnSBBnvV650XFWKBgsX5rZG', 1, '$2y$10$HYl92GGvWCu3joX2FKZakOa4j2RoE55j/4mkIumWPImEt5WrzDsJW', NULL, '2018-02-20 20:24:18', '2018-02-20 20:24:18'),
(8, 'Md. Mahabub-Ul Alam Shamim', 'shamim', 'shamim@gmail.com', 1, 1, NULL, 1, '$2y$10$5T.3tLiebYn7.c/0iOOTE..d/g/hWTOaatLtM5raqY6lzDS9i07pu', NULL, '2018-02-25 23:36:36', '2018-02-25 23:36:36'),
(9, 'Mahabub Mamun', 'mamun', 'mamun@gmail.com', 2, 1, NULL, 1, '$2y$10$bYcN.p760wPd57sN4vEbYe7zjo2rDPeR3GygRntUFBDJQbSYNocQ.', 'QpaJHj8xYENGqN9uiea2YfVFeia4UJ0uGon3WN08QLr4emyaYC5pTMH1dlyS', '2018-02-25 23:53:33', '2018-03-09 20:41:31'),
(10, 'Nushrat Faria', 'nushrat', 'nushrat@gmail.com', 2, 1, NULL, 1, '$2y$10$YGIzO5KHQ8bKfwI3J.bRRuQ6VuNIPYN/MBxhS42yzFPAOBHiX1ugy', 'BWD7Zfxga7VmtRGxTKsV0Gy1H0vWPVXRT28dAy5pYybtAp5VV7LyHRPDzgi2', '2018-02-26 00:41:09', '2018-02-26 00:41:09'),
(11, 'Mashrafee Mortoza Khan', 'mashrafee', 'mashrafee@gmail.com', 3, 1, NULL, 1, '$2y$10$FDDUwOoJu5rrMPS9U1pidumFx8rGc9bvtinejZ2AgE4WH78NJfSRC', 'HnrEHDpQcNK8XZj4cxgVmVh7nUEtgVqNSXmpPQjXkbE2kxfuXaAE74fJEype', '2018-02-26 00:51:15', '2018-03-13 00:57:57'),
(12, 'Fatema Aka', 'fatema', 'fatema@gmail.com', 2, 1, NULL, 1, '$2y$10$oiCocBzXeH4zDNK8JsB5meuMWeuQFzdrnwWjxU5i9baiqJgfkY9hu', 'pqm3U8OLFDuJBXyql6fLXYtk4kPqQpuLOb6ZAAJToYnKQfTAk4bWjZ1Yo2oT', '2018-03-09 23:18:07', '2018-03-13 00:25:22'),
(13, 'Mahabub-ul Alam Shamim', 'shamim1', 'shamim1@gmail.com', 3, 1, NULL, 1, '$2y$10$KgmcjQyRsi0uEl2cc96dz.Dji7b/EhFNd/k9VWXdTtq/zvJXOxGuu', '7QJ5t7Gg2W8R8WcZEMbJITyuhff13rLCWxedsX9atqbbXTFZ5ePWSN9c85VP', '2018-03-10 08:17:23', '2018-03-10 08:17:23'),
(14, 'Aminul Islam', 'aminul', 'aminul@gmail.com', 3, 1, 'k6DJOih8XPP8p64OHyUZ3xdbX6UuMG', 1, '$2y$10$6Jo9gypwzLF5V259pMpNY.WzJQiie3rtj/tbSRR6LWXCF2YVu7INC', 'UTQabTpE0VL8ytiQfYWfjaWWPFLfnNgP6O9GmHYdKu1Dt2sBLIbiF1tjqBZa', '2018-03-11 02:11:44', '2018-03-13 00:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE `user_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activations`
--

INSERT INTO `user_activations` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(2, 5, '8zP3jiJQ5JTd3bG5kWm8Pj7pkvbmlx', NULL, NULL),
(3, 6, 'ccJBtbFJRMqnICMvp7hPoefk6MmiJ5', NULL, NULL),
(4, 7, 'Cy70IUMLnSBBnvV650XFWKBgsX5rZG', NULL, NULL),
(5, 14, 'k6DJOih8XPP8p64OHyUZ3xdbX6UuMG', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achieves`
--
ALTER TABLE `achieves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_index` (`user_id`),
  ADD KEY `blogs_blogcategories_id_index` (`blogcategories_id`);

--
-- Indexes for table `current_students`
--
ALTER TABLE `current_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `current_students_user_id_index` (`user_id`);

--
-- Indexes for table `ex_students`
--
ALTER TABLE `ex_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ex_students_student_id_index` (`user_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gardians`
--
ALTER TABLE `gardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gardians_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sevents`
--
ALTER TABLE `sevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_index` (`user_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_index` (`user_id`);

--
-- Indexes for table `testmonials`
--
ALTER TABLE `testmonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testmonials_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activations_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `achieves`
--
ALTER TABLE `achieves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `current_students`
--
ALTER TABLE `current_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ex_students`
--
ALTER TABLE `ex_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gardians`
--
ALTER TABLE `gardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sevents`
--
ALTER TABLE `sevents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `testmonials`
--
ALTER TABLE `testmonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD CONSTRAINT `user_activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
