-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 03:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctp`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `our_mission` text NOT NULL,
  `our_vission` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about`, `our_mission`, `our_vission`, `created_at`, `updated_at`) VALUES
(1, '<p>Hi! I\'m Nizar Damiriyye. I\'m a Computer Engineer & developer with a serious love for teaching I am a founder of Cearive Team Programming (C.T.P) and a Programmer & Instructor.</p>\r\n<p>\r\nI am working online for the last 5 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. Cearive Team Programming exists to help you succeed in life. </p>\r\n\r\nEach course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '<p>This team was established in 2017 to train and teach programming for desktop applications - and website programming - mobile applications managed and supervised by engineer and trainer</p>\r\n\r\n\r\n<p>\r\nThis team is interested in teaching programming in simple ways and modern techniques and has many programmed applications in several fields.\r\n</p>\r\n- Dentist Clinic is an application for managing the dental clinic.\r\n\r\n-Smart school is an application for managing schools and educational institutes .\r\n\r\n- Betra Application .\r\n\r\n-AlHOMSI warehouse management application -\r\n\r\nWe have also trained programming for dozens of people and prepared a lot of professional programmers in several fields.\r\n\r\n\r\n\r\n', 'Learn Programing skills, from absolute beginner to advanced mastery.We try to create project base course which help your to learn professionally and make you fell as a complete developer.\r\n\r\nLearn Professionally ,You will learn every course by creating one or more complete Professional Project.\r\n\r\n', NULL, NULL),
(2, 'an ara foxy cute  girl', '<p>our mission is to clear dungeons</p>', '<p>our vision is to enjoy the game</p>', NULL, '2023-01-18 09:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

CREATE TABLE `charts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `x_data` varchar(255) NOT NULL,
  `y_data` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `x_data`, `y_data`, `created_at`, `updated_at`) VALUES
(1, 'php', '80', NULL, NULL),
(3, 'c++', '95', NULL, NULL),
(4, 'C#', '95', NULL, NULL),
(5, 'Laravel', '70', NULL, NULL),
(6, 'Ara', '82', NULL, '2023-01-18 10:15:12'),
(7, 'Aisha', '77', NULL, '2023-01-18 10:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed', 'ahmed@gmail.com', 'hello , i am ahmed', NULL, NULL),
(3, 'test', 'test@gmail.com', 'test message', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `small_img` varchar(255) NOT NULL,
  `long_title` varchar(255) NOT NULL,
  `long_description` text NOT NULL,
  `total_duration` varchar(255) NOT NULL,
  `total_lecture` varchar(255) NOT NULL,
  `total_student` varchar(255) NOT NULL,
  `Categories` varchar(255) NOT NULL,
  `Tags` varchar(255) NOT NULL,
  `Instructor` varchar(255) NOT NULL,
  `skill_all` text NOT NULL,
  `video_student` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `short_title`, `short_description`, `small_img`, `long_title`, `long_description`, `total_duration`, `total_lecture`, `total_student`, `Categories`, `Tags`, `Instructor`, `skill_all`, `video_student`, `created_at`, `updated_at`) VALUES
(1, 'Test 1', 'C sharp & Sql Server Full Professional Course.', 'https://userscontent2.emaze.com/images/eca51f3d-1f59-4f0c-8768-bd3a8602f7a5/433f195790cf80f82aaab3f165ee17e8.png', 'C sharp & Sql Server Full Professional Course', 'In this course you will Learn\r\n\r\n - Install the software and libraries required for programming\r\n\r\n- Project analysis\r\n\r\n - Create a new project\r\n\r\n - Create the database and create the tables\r\n\r\n - Create and link the database with the project\r\n\r\n - Designing, creating and programming interfaces .\r\n\r\n- Net framework mastery of handling techniques\r\n\r\n - Proficiency in dealing with data stored in the database (add - delete - modify - view data)\r\n\r\n - LINQ Professional Technology\r\n\r\n - DevExpress Handling Tools\r\n\r\n - Stored Procdure Mastering Stored Procedures 12 -Bunifu Lib Dealing with library tools', '36', '30', '1900', 'C# ', 'c# sql server', 'Nizar ', 'C sharp \r\n\r\nSql Server \r\n\r\nDevExpress\r\n\r\nBunifu Lib\r\n\r\nCrystal Reports', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4', NULL, NULL),
(2, 'school managment', 'Laravel 8 php & api ', 'https://thumbs.dreamstime.com/b/icon-hands-holding-digital-tablet-online-invoice-online-payment-online-shopping-e-banking-taxation-concept-can-be-used-103170436.jpg', 'C sharp & Sql Server Full Professional Course', 'In this course you will Learn\r\n\r\n - Install the software and libraries required for programming\r\n\r\n- Project analysis\r\n\r\n - Create a new project\r\n\r\n - Create the database and create the tables\r\n\r\n - Create and link the database with the project\r\n\r\n - Designing, creating and programming interfaces .\r\n\r\n- Net framework mastery of handling techniques\r\n\r\n - Proficiency in dealing with data stored in the database (add - delete - modify - view data)\r\n\r\n - LINQ Professional Technology\r\n\r\n - DevExpress Handling Tools\r\n\r\n - Stored Procdure Mastering Stored Procedures 12 -Bunifu Lib Dealing with library tools', '36', '19', '1900', 'C# ', 'c# sql server', 'Nizar ', 'C sharp \r\n\r\nSql Server \r\n\r\nDevExpress\r\n\r\nBunifu Lib\r\n\r\nCrystal Reports', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4', NULL, NULL),
(3, 'club managment', 'React js & bootstrap', 'http://matics.co.in/images/services/education/digital%20education.jpg', 'C sharp & Sql Server Full Professional Course', 'In this course you will Learn\r\n\r\n - Install the software and libraries required for programming\r\n\r\n- Project analysis\r\n\r\n - Create a new project\r\n\r\n - Create the database and create the tables\r\n\r\n - Create and link the database with the project\r\n\r\n - Designing, creating and programming interfaces .\r\n\r\n- Net framework mastery of handling techniques\r\n\r\n - Proficiency in dealing with data stored in the database (add - delete - modify - view data)\r\n\r\n - LINQ Professional Technology\r\n\r\n - DevExpress Handling Tools\r\n\r\n - Stored Procdure Mastering Stored Procedures 12 -Bunifu Lib Dealing with library tools', '36', '19', '1900', 'C# ', 'c# sql server', 'Nizar ', 'C sharp \r\n\r\nSql Server \r\n\r\nDevExpress\r\n\r\nBunifu Lib\r\n\r\nCrystal Reports', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4', NULL, NULL),
(4, 'Medical Clinic Management', 'C sharp & Sql Server Full Professional Course.', 'https://userscontent2.emaze.com/images/eca51f3d-1f59-4f0c-8768-bd3a8602f7a5/433f195790cf80f82aaab3f165ee17e8.png', 'C sharp & Sql Server Full Professional Course', 'In this course you will Learn\r\n\r\n - Install the software and libraries required for programming\r\n\r\n- Project analysis\r\n\r\n - Create a new project\r\n\r\n - Create the database and create the tables\r\n\r\n - Create and link the database with the project\r\n\r\n - Designing, creating and programming interfaces .\r\n\r\n- Net framework mastery of handling techniques\r\n\r\n - Proficiency in dealing with data stored in the database (add - delete - modify - view data)\r\n\r\n - LINQ Professional Technology\r\n\r\n - DevExpress Handling Tools\r\n\r\n - Stored Procdure Mastering Stored Procedures 12 -Bunifu Lib Dealing with library tools', '36', '19', '1900', 'C# ', 'c# sql server', 'Nizar ', 'C sharp \r\n\r\nSql Server \r\n\r\nDevExpress\r\n\r\nBunifu Lib\r\n\r\nCrystal Reports', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4', NULL, NULL),
(5, 'Medical Clinic Management', 'C sharp & Sql Server Full Professional Course.', 'https://userscontent2.emaze.com/images/eca51f3d-1f59-4f0c-8768-bd3a8602f7a5/433f195790cf80f82aaab3f165ee17e8.png', 'C sharp & Sql Server Full Professional Course', 'In this course you will Learn\r\n\r\n - Install the software and libraries required for programming\r\n\r\n- Project analysis\r\n\r\n - Create a new project\r\n\r\n - Create the database and create the tables\r\n\r\n - Create and link the database with the project\r\n\r\n - Designing, creating and programming interfaces .\r\n\r\n- Net framework mastery of handling techniques\r\n\r\n - Proficiency in dealing with data stored in the database (add - delete - modify - view data)\r\n\r\n - LINQ Professional Technology\r\n\r\n - DevExpress Handling Tools\r\n\r\n - Stored Procdure Mastering Stored Procedures 12 -Bunifu Lib Dealing with library tools', '36', '19', '1900', 'C# ', 'c# sql server', 'Nizar ', 'C sharp \r\n\r\nSql Server \r\n\r\nDevExpress\r\n\r\nBunifu Lib\r\n\r\nCrystal Reports', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4', NULL, NULL),
(6, 'Medical Clinic Management', 'C sharp & Sql Server Full Professional Course.', 'https://userscontent2.emaze.com/images/eca51f3d-1f59-4f0c-8768-bd3a8602f7a5/433f195790cf80f82aaab3f165ee17e8.png', 'C sharp & Sql Server Full Professional Course', 'In this course you will Learn\r\n\r\n - Install the software and libraries required for programming\r\n\r\n- Project analysis\r\n\r\n - Create a new project\r\n\r\n - Create the database and create the tables\r\n\r\n - Create and link the database with the project\r\n\r\n - Designing, creating and programming interfaces .\r\n\r\n- Net framework mastery of handling techniques\r\n\r\n - Proficiency in dealing with data stored in the database (add - delete - modify - view data)\r\n\r\n - LINQ Professional Technology\r\n\r\n - DevExpress Handling Tools\r\n\r\n - Stored Procdure Mastering Stored Procedures 12 -Bunifu Lib Dealing with library tools', '36', '19', '1900', 'C# ', 'c# sql server', 'Nizar ', 'C sharp \r\n\r\nSql Server \r\n\r\nDevExpress\r\n\r\nBunifu Lib\r\n\r\nCrystal Reports', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4', NULL, NULL),
(9, 'ara course', 'ara course', 'upload/courses/202301171232.png', 'a foxy ara course', 'a foxy ara course', '5 hourse', '10 lects', '100 students', 'gaming', 'gaming', 'ara foxy', '<p>ara foxy course</p>', 'https://www.youtube.com/watch?v=whrKjm8LKdE', NULL, '2023-01-17 10:32:13'),
(10, 'ara course2', 'foxy ara course 2', 'upload/courses/202301171257.jpg', 'a foxy ara course', 'a cute ara course 2', '5 hourse', '10 lects', '100 students', 'gaming', 'gaming', 'ara foxy', '<p>cute course</p>', 'https://www.youtube.com/watch?v=fC8xh1jDqB4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instegram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `address`, `email`, `phone`, `facebook`, `youtube`, `twitter`, `instegram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'KONYA, SELÇUKLU,FERİTPAŞA MAH,MÜFTÜ LOKMAN HEKİM SK.', 'CTP1@gmail.com', '+1 658434332', 'www.facebook.com', 'www.youtub.com', 'www.twitter.com', 'www.instegram.com', 'www.Linkedin.com', NULL, NULL),
(2, 'KONYA, SELÇUKLU,FERİTPAŞA MAH,MÜFTÜ LOKMAN HEKİM SK.', 'CTP1@gmail.com', '+90 555 016 7003', 'www.facebook.com', 'www.youtub.com', 'www.twitter.com', 'www.instegram.com', 'www.Linkedin.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_title` varchar(255) NOT NULL,
  `home_subtitle` varchar(255) NOT NULL,
  `tech_description` text NOT NULL,
  `total_student` varchar(255) NOT NULL,
  `total_course` varchar(255) NOT NULL,
  `total_review` varchar(255) NOT NULL,
  `video_description` text NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `home_title`, `home_subtitle`, `tech_description`, `total_student`, `total_course`, `total_review`, `video_description`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Creative Team Programming', 'test2', '<p>Hi! I\'m Nizar Damiriyye. I\'m a Computer Engineer & developer with a serious love for teaching I am a founder of Cearive Team Programming (C.T.P) and a Programmer & Instructor.</p><p>I am working online for the last 5 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. Cearive Team Programming exists to help you succeed in life. </p><p>Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.</p><p>I am working online for the last 5 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. Cearive Team Programming exists to help you succeed in life. </p><p>Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.</p>', '3029', '3', '1000', '<p>Hi! I\'m Nizar Damiriyye. I\'m a Computer Engineer & developer with a serious love for teaching I am a founder of Cearive Team Programming (C.T.P) and a Programmer & Instructor.</p><p>I am working online for the last 5 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. Cearive Team Programming exists to help you succeed in life. </p>Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4', NULL, '2023-01-19 07:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_11_06_121005_create_sessions_table', 1),
(7, '2021_11_07_082136_create_services_table', 2),
(8, '2021_11_07_133457_create_projects_table', 3),
(9, '2021_11_09_081449_create_courses_table', 4),
(10, '2021_11_09_134057_create_footers_table', 5),
(11, '2021_11_10_080244_create_charts_table', 6),
(12, '2021_11_10_095829_create_teams_table', 7),
(13, '2021_11_10_111135_create_abouts_table', 8),
(14, '2021_11_11_073015_create_homes_table', 9),
(15, '2021_11_11_101258_create_contacts_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_one` varchar(255) NOT NULL,
  `img_two` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `project_features` text NOT NULL,
  `live_preview` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `img_one`, `img_two`, `project_name`, `project_description`, `project_features`, `live_preview`, `created_at`, `updated_at`) VALUES
(1, 'https://avatars.mds.yandex.net/i?id=2a00000179f1203bf1ddcf27a8b601d37073-3986346-images-thumbs&n=13', 'http://127.0.0.1:8000/upload/project/1714164402116454.jpg', 'project one', 'C# & SQL SERVER 2021 - Dental Clinic Management System', 'C# and SQL server This course is designed to make you a professional programmer in programming desktop applications in a language DevExpress - Bunifu and dealing with modern programming techniques and libraries SQL server, designing tables in c#, and designing and programming interfaces in c# . DevExpress Reports, dealing with images and files, adding, deleting, modifying, dealing with data stored in the database, and creating reports This comprehensive course guarantees you the professionalism and mastery of the following: 1 - Install the software and libraries required for programming 2- Project analysis 3 - Create a new project 4 - Create the database and create the tables 5 - Create and link the database with the', 'https://www.udemy.com/course/dentist_clinic/learn/?referralCode=2099E0E31087E6EF912F', NULL, NULL),
(2, 'https://resmisertifikalar.org/wp-content/uploads/2017/07/toplam-kalite-yonetimi-ve-kalite-yoneticiligi-uzmanlik-egitimi.jpg', 'http://127.0.0.1:8000/upload/project/1714164402116454.jpg', 'project two', 'C# & SQL SERVER 2021 - Dental Clinic Management System', 'C# and SQL server This course is designed to make you a professional programmer in programming desktop applications in a language DevExpress - Bunifu and dealing with modern programming techniques and libraries SQL server, designing tables in c#, and designing and programming interfaces in c# . DevExpress Reports, dealing with images and files, adding, deleting, modifying, dealing with data stored in the database, and creating reports This comprehensive course guarantees you the professionalism and mastery of the following: 1 - Install the software and libraries required for programming 2- Project analysis 3 - Create a new project 4 - Create the database and create the tables 5 - Create and link the database with the', 'https://www.udemy.com/course/dentist_clinic/learn/?referralCode=2099E0E31087E6EF912F', NULL, NULL),
(3, 'https://i.pinimg.com/736x/8c/fe/96/8cfe9640a1fb47f1a5e0359421f82d94--business-management-cash-advance.jpg', 'http://127.0.0.1:8000/upload/project/1714164402116454.jpg', 'Dentist Clinic', 'C# & SQL SERVER 2021 - Dental Clinic Management System', 'C# and SQL server This course is designed to make you a professional programmer in programming desktop applications in a language DevExpress - Bunifu and dealing with modern programming techniques and libraries SQL server, designing tables in c#, and designing and programming interfaces in c# . DevExpress Reports, dealing with images and files, adding, deleting, modifying, dealing with data stored in the database, and creating reports This comprehensive course guarantees you the professionalism and mastery of the following: 1 - Install the software and libraries required for programming 2- Project analysis 3 - Create a new project 4 - Create the database and create the tables 5 - Create and link the database with the', 'https://www.udemy.com/course/dentist_clinic/learn/?referralCode=2099E0E31087E6EF912F', NULL, NULL),
(4, 'upload/project/img1/202301181334.jpg', 'upload/project/img2/202301181334.png', 'Dentist Clinic', 'C# & SQL SERVER 2021 - Dental Clinic Management System', 'C# and SQL server This course is designed to make you a professional programmer in programming desktop applications in a language DevExpress - Bunifu and dealing with modern programming techniques and libraries SQL server, designing tables in c#, and designing and programming interfaces in c# . DevExpress Reports, dealing with images and files, adding, deleting, modifying, dealing with data stored in the database, and creating reports This comprehensive course guarantees you the professionalism and mastery of the following: 1 - Install the software and libraries required for programming 2- Project analysis 3 - Create a new project 4 - Create the database and create the tables 5 - Create and link the database with the', 'https://www.udemy.com/course/dentist_clinic/learn/?referralCode=2099E0E31087E6EF912F', NULL, '2023-01-18 11:34:40'),
(5, 'https://i.pinimg.com/736x/8c/fe/96/8cfe9640a1fb47f1a5e0359421f82d94--business-management-cash-advance.jpg', 'http://127.0.0.1:8000/upload/project/1714164402116454.jpg', 'Dentist Clinic', 'C# & SQL SERVER 2021 - Dental Clinic Management System', 'C# and SQL server This course is designed to make you a professional programmer in programming desktop applications in a language DevExpress - Bunifu and dealing with modern programming techniques and libraries SQL server, designing tables in c#, and designing and programming interfaces in c# . DevExpress Reports, dealing with images and files, adding, deleting, modifying, dealing with data stored in the database, and creating reports This comprehensive course guarantees you the professionalism and mastery of the following: 1 - Install the software and libraries required for programming 2- Project analysis 3 - Create a new project 4 - Create the database and create the tables 5 - Create and link the database with the', 'https://www.udemy.com/course/dentist_clinic/learn/?referralCode=2099E0E31087E6EF912F', NULL, NULL),
(6, 'https://resmisertifikalar.org/wp-content/uploads/2017/07/toplam-kalite-yonetimi-ve-kalite-yoneticiligi-uzmanlik-egitimi.jpg', 'http://127.0.0.1:8000/upload/project/1714164402116454.jpg', 'Dentist Clinic', 'C# & SQL SERVER 2021 - Dental Clinic Management System', 'C# and SQL server This course is designed to make you a professional programmer in programming desktop applications in a language DevExpress - Bunifu and dealing with modern programming techniques and libraries SQL server, designing tables in c#, and designing and programming interfaces in c# . DevExpress Reports, dealing with images and files, adding, deleting, modifying, dealing with data stored in the database, and creating reports This comprehensive course guarantees you the professionalism and mastery of the following: 1 - Install the software and libraries required for programming 2- Project analysis 3 - Create a new project 4 - Create the database and create the tables 5 - Create and link the database with the', 'https://www.udemy.com/course/dentist_clinic/learn/?referralCode=2099E0E31087E6EF912F', NULL, NULL),
(7, 'upload/project/img1/202301181337.png', 'upload/project/img2/202301181337.png', 'Ara Project', 'this project is about a cute foxy ara', 'cute and strong foxy ara', 'https://www.youtube.com', NULL, NULL),
(8, 'upload/project/img1/202301190956.jpg', 'upload/project/img2/202301190956.jpg', 'aisha project', 'a cute aisha project', 'a cute aisha project', 'https://www.youtube.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_discription` text NOT NULL,
  `service_logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_discription`, `service_logo`, `created_at`, `updated_at`) VALUES
(1, 'OFFICE APPLICATIONS  11', 'If you want to set up a software internal system for your company, we design and program it to suit your business development..', 'https://lh6.googleusercontent.com/KBHWKgoeb9m2Fa9Y-qt_n7IsiDCSS5YucmnHjyR_E4BajbfJdmkccBTR3nk6ACsWyFY7NxoDYwXcic55xHMJ4x8B0MY-Va68_Gi4zFQtIegAvOjhxn-HF455IPqPZNu_zk17nacA', NULL, NULL),
(2, 'Mobile Applications', 'Since mobile phone applications are vastly used nowadays, we have created a team that can design and develop software on Android and IOS systems..', 'https://defulo.ru/assets/template/images/about_image.jpg', NULL, NULL),
(3, 'WEB DESIGN\r\n', 'We design and develop web sites where you can display your products and work in commercial and industrial markets ..', 'https://piyushgoel.co.in/img/blog/Boss-with-Freelancing-min.png', NULL, NULL),
(16, 'aisha service', 'a cute bunny aisha', 'upload/service/202301190959.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Nm7Q7niPJlLwuQaskbYS2nrkzhMUhEtisOvak3fS', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoic2dOUmpkanpuZ0FyVU43MEp5NVB6WkQ0UzBiQUtwY1VRcFRvU2RqcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkWUUvV1o1WkY3WXhVMmVYY1pJdWRWTzF1QWpNYUMwcUlybnBPdFVQVEw0YmRZWkhkME1ZUkciO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFlFL1daNVpGN1l4VTJlWGNaSXVkVk8xdUFqTWFDMHFJcm5wT3RVUFRMNGJkWVpIZDBNWVJHIjt9', 1674122366);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_img` varchar(255) NOT NULL,
  `team_title` varchar(255) NOT NULL,
  `team_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_img`, `team_title`, `team_description`, `created_at`, `updated_at`) VALUES
(1, 'https://image.freepik.com/free-photo/portrait-smiling-young-man-eyewear_171337-4842.jpg', 'Mohammed Ahmed', 'Hi! I\'m Nizar Damiriyye. I\'m a Computer Engineer & developer with a serious love for teaching I am a founder of Cearive Team Programming (C.T.P) and a Programmer & Instructor.', NULL, NULL),
(2, 'upload/team/202301181107.jpg', 'Nizar', 'Hi! I\'m Nizar Damiriyye. I\'m a Computer Engineer & developer with a serious love for teaching I am a founder of Cearive Team Programming (C.T.P) and a Programmer & Instructor.', NULL, '2023-01-18 09:07:29'),
(4, 'upload/team/202301181108.jpg', 'Ahmed', 'this is about a team member Ahmed', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'udemy', 'udemy@gmail.com', NULL, '$2y$10$YE/WZ5ZF7YxU2eXcZIudVO1uAjMaC0qIrnpOtUPTL4bdYZHd0MYRG', NULL, NULL, NULL, NULL, 'upload/user/2023011513372cf07298283523d1e810bc5cde1e89ad.jpg', '2021-11-06 09:21:12', '2023-01-15 11:37:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charts`
--
ALTER TABLE `charts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
