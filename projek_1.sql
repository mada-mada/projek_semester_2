-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 05:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `username`, `password`, `created_at`, `category_id`) VALUES
(1, 'POLINDRA', 'polindra123', '2025-05-01 14:47:00', 1),
(2, 'MPM', 'mpm123', '2025-05-01 14:49:00', 2),
(3, 'BEM', 'bem123', '2025-05-01 14:49:42', 2),
(4, 'HIMATIF', 'himatif123', '2025-05-01 14:51:33', 2),
(5, 'HMM', 'hmm123', '2025-05-01 14:54:57', 2),
(6, 'HIMAKES', 'himakes123', '2025-05-01 14:55:04', 2),
(7, 'HIMARPL', 'himarpl123', '2025-05-01 14:55:14', 2),
(8, 'HIMRA', 'himra123', '2025-05-01 14:55:14', 2),
(9, 'HIMATRIK', 'himatrik123', '2025-05-01 14:59:25', 2),
(10, 'HIMASIKC', 'himasikc123', '2025-05-01 14:59:25', 2),
(11, 'DUTAPOLINDRA', 'dutapolindra123', '2025-05-01 15:02:44', 3),
(12, 'FORMADIKSI', 'formadiksi123', '2025-05-01 15:02:44', 3),
(13, 'ROBOTIKA', 'robotika123', '2025-05-01 15:04:25', 4),
(14, 'KOMPA', 'kompa123', '2025-05-01 15:04:25', 4),
(15, 'POPI', 'popi123', '2025-05-01 15:05:44', 4),
(16, 'KOTAKPENA', 'kotakpena123', '2025-05-01 15:05:44', 4),
(17, 'KSRPMI', 'ksrpmi123', '2025-05-01 15:07:56', 4),
(18, 'FOLAFO', 'folafo123', '2025-05-01 15:07:56', 4),
(19, 'SEBURA', 'sebura123', '2025-05-01 15:09:48', 4),
(20, 'IMMAS', 'immas123', '2025-05-01 15:12:09', 4),
(21, 'MAJAP', 'majap123', '2025-05-01 15:12:09', 5),
(22, 'GAMACI', 'gamaci123', '2025-05-01 15:13:23', 5),
(23, 'HIMAKAINDRAMAYU', 'himaka123', '2025-05-01 15:13:23', 5),
(24, 'KEMUNING', 'kemuning123', '2025-05-01 15:15:49', 5),
(25, 'PMPTINDRAMAYU', 'Pmtindramayu123', '2025-05-01 15:18:33', 5);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `title`, `content`, `image`, `organization_id`, `admin_id`, `created_at`) VALUES
(9, 'p', '<div>&nbsp;</div><div>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<br><br></div><div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;<br><br></div>', '6820a30491eb3_Screenshot 2025-01-15 203854.png', 1, 1, NULL),
(31, 'omori', '<div>3</div>', '681b958b0045c_Screenshot 2025-01-13 231117.png', 21, 21, '0000-00-00 00:00:00'),
(32, 'tes4', '<div>tes4</div>', '681b95f3b7945_Screenshot 2024-11-11 070846.png', 21, 21, '0000-00-00 00:00:00'),
(33, 'tes5', '<div>tes5</div>', '6820d7eb5733e_Screenshot 2025-01-13 224528.png', 21, 21, '0000-00-00 00:00:00'),
(34, 'tes6', '<div>tes6</div>', '681b96fac1869_Screenshot 2025-01-13 224641.png', 21, 21, '2025-05-07 19:23:06'),
(36, 'test8', '<div>test8</div>', '681c123ca7f5d_Screenshot 2025-01-08 214515.png', 21, 21, '2025-05-08 04:09:00'),
(39, 'mpm1 edit', '<div>mpm1</div>', '681ce909164af_Screenshot 2025-01-01 224733.png', 2, 2, '2025-05-08 16:19:16'),
(44, 'mpm2', '<div>mpm2</div>', '681cd9d68b193_Screenshot 2025-01-08 214515.png', 2, 2, '2025-05-08 18:20:38'),
(54, 'user 4', '<div>&nbsp;\'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\'</div>', '6820de070406a_Screenshot 2025-01-01 224746.png', 1, 1, '2025-05-11 19:27:35'),
(55, 'user 5', '<div>user 5</div>', '6820de92efdad_Screenshot 2025-01-13 223924.png', 1, 1, '2025-05-11 19:29:54'),
(56, 'test robotika_1', '<div>test robotika 1</div>', '6823645e0ca2c_Screenshot 2025-01-13 224641.png', 13, 13, '2025-05-13 17:25:18'),
(57, 'user6', '<div>&nbsp;\'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\'</div>', '682742848bf49_Screenshot 2025-01-20 201504.png', 1, 1, '2025-05-16 15:49:19'),
(58, 'gambar potrait', '<div>gambar potrait</div>', '68274e15770b7_WhatsApp Image 2025-02-13 at 22.40.46_3e2cf815.jpg', 1, 1, '2025-05-16 16:39:17');

--
-- Triggers `articles`
--
DELIMITER $$
CREATE TRIGGER `before_delete_article` BEFORE DELETE ON `articles` FOR EACH ROW BEGIN
    INSERT INTO article_logs (
        article_id, admin_id, old_title, old_content, action, created_at
    )
    VALUES (
        OLD.article_id, OLD.admin_id, OLD.title, OLD.content, 'DELETE', NOW()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `article_logs`
--

CREATE TABLE `article_logs` (
  `log_id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `old_title` varchar(200) DEFAULT NULL,
  `old_content` text DEFAULT NULL,
  `action` enum('UPDATE','DELETE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_logs`
--

INSERT INTO `article_logs` (`log_id`, `article_id`, `admin_id`, `old_title`, `old_content`, `action`, `created_at`) VALUES
(17, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:05:37'),
(18, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:05:45'),
(19, NULL, 21, 'adadsd', '<div>adadadd</div>', 'DELETE', '2025-05-07 22:05:49'),
(20, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:05:53'),
(21, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:05:56'),
(22, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:05:58'),
(23, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:01'),
(24, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:03'),
(25, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:06'),
(26, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:09'),
(27, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:12'),
(28, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:14'),
(29, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:17'),
(30, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:20'),
(31, NULL, 21, 'tes gmbr', '<div>test gmbr</div>', 'DELETE', '2025-05-07 22:06:23'),
(32, NULL, 21, 'p', '<div>p</div>', 'DELETE', '2025-05-08 00:16:07'),
(33, NULL, 1, '', '', 'DELETE', '2025-05-08 21:13:57'),
(34, NULL, 1, 'test', '<div>tes6</div>', 'DELETE', '2025-05-08 21:17:15'),
(35, NULL, 2, '', '', 'DELETE', '2025-05-08 23:02:33'),
(36, NULL, 2, '', '', 'DELETE', '2025-05-08 23:02:39'),
(37, NULL, 2, 'mpm2', '<div>mpm2</div>', 'DELETE', '2025-05-08 23:03:23'),
(38, NULL, 2, 'mpm2', '<div>mpm2</div>', 'DELETE', '2025-05-08 23:04:55'),
(39, NULL, 2, 'kontol', '<div>mpm1</div>', 'DELETE', '2025-05-08 23:37:54'),
(40, NULL, 2, 'mpm2', '<div>mpm2</div>', 'DELETE', '2025-05-08 23:38:20'),
(41, NULL, 2, 'mpm123', '<div>mpm1</div>', 'DELETE', '2025-05-08 23:46:11'),
(42, NULL, 2, 'asd', '<div>asd</div>', 'DELETE', '2025-05-09 00:06:10'),
(43, NULL, 2, 'mpm2', '<div>mpm2</div>', 'DELETE', '2025-05-09 00:06:14'),
(44, NULL, 1, 'ngeteh anget', '<div>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.&nbsp;</div>', 'DELETE', '2025-05-11 20:12:36'),
(45, NULL, 21, 'tes gmbr', '<div>tes2</div>', 'DELETE', '2025-05-12 00:10:51'),
(46, NULL, 21, 'tes3', '<div>tes3</div>', 'DELETE', '2025-05-12 00:10:55'),
(47, NULL, 21, 'test row', '<div>ija</div>', 'DELETE', '2025-05-12 00:11:00'),
(48, NULL, 21, 'p', '<div>p</div>', 'DELETE', '2025-05-12 00:11:04'),
(49, NULL, 21, 'p', '<div>p</div>', 'DELETE', '2025-05-12 00:11:08'),
(50, NULL, 1, 'user test', '<div>user test</div>', 'DELETE', '2025-05-12 00:12:36'),
(51, NULL, 1, 'test user', '<div>test user</div>', 'DELETE', '2025-05-12 00:17:23'),
(52, NULL, 1, 'test user 2', '<div>test user 2</div>', 'DELETE', '2025-05-12 00:23:47'),
(53, NULL, 1, 'user 3', '<div>user 3</div>', 'DELETE', '2025-05-12 00:27:16'),
(54, NULL, 21, '', '', 'DELETE', '2025-05-12 00:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` enum('KAMPUS','ORMAWA','UKK','UKM','ORDA') DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `admin_id`, `created_at`) VALUES
(1, 'KAMPUS', NULL, '2025-05-01 21:41:25'),
(2, 'ORMAWA', NULL, '2025-05-01 21:47:30'),
(3, 'UKK', NULL, '2025-05-01 21:47:30'),
(4, 'UKM', NULL, '2025-05-01 21:47:51'),
(5, 'ORDA', NULL, '2025-05-01 21:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `organization_id` int(11) NOT NULL,
  `org_name` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`organization_id`, `org_name`, `category_id`, `admin_id`, `created_at`) VALUES
(1, 'POLINDRA', 1, 1, '2025-05-01 21:56:41'),
(2, 'MPM', 2, 2, '2025-05-01 21:57:27'),
(3, 'BEM', 2, 3, '2025-05-01 21:57:27'),
(4, 'DUTA_POLINDRA', 3, 11, '2025-05-01 21:59:10'),
(5, 'HIMATIF', 2, 4, '2025-05-01 21:59:10'),
(6, 'FORMADIKSI', 3, 12, '2025-05-01 22:01:56'),
(7, 'HMM', 2, 5, '2025-05-01 22:01:56'),
(8, 'HIMAKES', 2, 6, '2025-05-01 22:02:43'),
(9, 'HIMARPL', 2, 7, '2025-05-01 22:04:14'),
(10, 'HIMRA', 2, 8, '2025-05-01 22:04:14'),
(11, 'HIMASIKC', 2, 10, '2025-05-01 22:04:54'),
(12, 'HIMATRIK', 2, 9, '2025-05-01 22:04:54'),
(13, 'ROBOTIKA', 4, 13, '2025-05-01 22:04:54'),
(14, 'KOMPA', 4, 14, '2025-05-01 22:12:04'),
(15, 'POPI', 4, 15, '2025-05-01 22:12:04'),
(16, 'KOPEN', 4, 16, '2025-05-01 22:12:04'),
(17, 'KSRPMI', 4, 17, '2025-05-01 22:12:04'),
(18, 'FOLAFO', 4, 18, '2025-05-01 22:12:04'),
(19, 'SEBURA', 4, 19, '2025-05-01 23:22:41'),
(20, 'IMMAS', 4, 20, '2025-05-01 23:22:41'),
(21, 'MAJAP', 5, 21, '2025-05-01 23:23:50'),
(22, 'GAMACI', 5, 22, '2025-05-01 23:24:12'),
(23, 'HIMAKA_INDRAMAYU', 5, 23, '2025-05-01 23:24:12'),
(24, 'KEMUNING', 5, 24, '2025-05-01 23:24:12'),
(25, 'PMPT_INDRAMAYU', 5, 25, '2025-05-01 23:24:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `fk_admins_category` (`category_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `organization_id` (`organization_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `article_logs`
--
ALTER TABLE `article_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `article_logs_ibfk_1` (`article_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`organization_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `article_logs`
--
ALTER TABLE `article_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `fk_admins_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`organization_id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`);

--
-- Constraints for table `article_logs`
--
ALTER TABLE `article_logs`
  ADD CONSTRAINT `article_logs_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `article_logs_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`);

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `organizations_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
