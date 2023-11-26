-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: beazwcqu5fcuba2u4cbo-mysql.services.clever-cloud.com:3306
-- Generation Time: Nov 26, 2023 at 12:04 PM
-- Server version: 8.0.22-13
-- PHP Version: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beazwcqu5fcuba2u4cbo`
--
CREATE DATABASE IF NOT EXISTS `beazwcqu5fcuba2u4cbo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `beazwcqu5fcuba2u4cbo`;

-- --------------------------------------------------------

--
-- Table structure for table `backendlog`
--

CREATE TABLE `backendlog` (
  `id` int NOT NULL,
  `errormsg` varchar(255) NOT NULL,
  `portal` varchar(50) NOT NULL,
  `route` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backendlog`
--

INSERT INTO `backendlog` (`id`, `errormsg`, `portal`, `route`) VALUES
(1, 'Error: ER_NO_DEFAULT_FOR_FIELD: Field \'price\' doesn\'t have a default value', 'Admin', '/addCourse');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `instructorId` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `price`, `description`, `image`, `instructorId`, `createdAt`, `updatedAt`, `active`) VALUES
(2, 'Programming Fundamental', 20000.00, 'Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.', '1700511701599download (1).jpeg', 1, '2023-11-20 23:40:08', '2023-11-21 10:48:17', 1),
(3, 'Object Oriented Programming', 10000.00, 'Object-oriented programming (OOP) in web development enables code organization through encapsulation, inheritance, and polymorphism, fostering modular design for scalable, maintainable, and efficient website development.', '1700748469408download.png', 3, '2023-11-23 19:07:49', '2023-11-24 06:34:48', 1),
(5, 'Data Structures', 30000.00, 'Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.', '1700926806190download.png', 1, '2023-11-25 20:40:06', '2023-11-25 20:40:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_audit`
--

CREATE TABLE `course_audit` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `oldValue` text,
  `newValue` text,
  `dated` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_audit`
--

INSERT INTO `course_audit` (`id`, `userId`, `action`, `oldValue`, `newValue`, `dated`) VALUES
(2, 2, 'INSERT', 'N/A', '{\"name\":\"Programming Fundamental\",\"price\":\"20000\",\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"image\":\"1700505608888download.jpeg\",\"instructorId\":1,\"createdAt\":\"2023-11-20 23:40:08\",\"updatedAt\":\"2023-11-20 23:40:08\",\"active\":true}', '2023-11-20 23:40:08'),
(3, 2, 'DELETE', '{\"product\":{\"id\":2,\"name\":\"Programming Fundamental\",\"price\":20000,\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"image\":\"1700505608888download.jpeg\",\"instructorId\":1,\"createdAt\":\"2023-11-20T18:40:08.000Z\",\"updatedAt\":\"2023-11-20T13:52:43.000Z\",\"active\":1}}', 'N/A', '2023-11-20 23:56:47'),
(4, 2, 'UPDATE', '{\"id\":2,\"name\":\"Programming Fundamental\",\"price\":20000,\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"image\":\"1700505608888download.jpeg\",\"instructorId\":1,\"createdAt\":\"2023-11-20T18:40:08.000Z\",\"updatedAt\":\"2023-11-20T13:57:03.000Z\",\"active\":1}', '{\"name\":\"Programming Fundamentals\",\"price\":\"20000\",\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"brand\":\"Muhammad Subhan Anjum\"}', '2023-11-21 01:18:00'),
(5, 2, 'UPDATE', '{\"id\":2,\"name\":\"Programming Fundamentals\",\"price\":20000,\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"image\":\"1700505608888download.jpeg\",\"instructorId\":1,\"createdAt\":\"2023-11-20T18:40:08.000Z\",\"updatedAt\":\"2023-11-20T20:18:00.000Z\",\"active\":1}', '{\"name\":\"Programming Fundamentals\",\"price\":\"2000\",\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"brand\":\"Muhammad Subhan Anjum\"}', '2023-11-21 01:18:19'),
(6, 2, 'UPDATE', '{\"id\":2,\"name\":\"Programming Fundamentals\",\"price\":2000,\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"image\":\"1700505608888download.jpeg\",\"instructorId\":1,\"createdAt\":\"2023-11-20T18:40:08.000Z\",\"updatedAt\":\"2023-11-20T20:18:19.000Z\",\"active\":1}', '{\"name\":\"Programming Fundamentals\",\"price\":\"2000\",\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"brand\":\"Muhammad Subhan Anjum\"}', '2023-11-21 01:21:41'),
(7, 2, 'DELETE', '{\"product\":{\"id\":2,\"name\":\"Programming Fundamentals\",\"price\":2000,\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"image\":\"1700511701599download (1).jpeg\",\"instructorId\":1,\"createdAt\":\"2023-11-20T18:40:08.000Z\",\"updatedAt\":\"2023-11-20T15:24:48.000Z\",\"active\":1}}', 'N/A', '2023-11-21 01:24:51'),
(8, 2, 'UPDATE', '{\"id\":2,\"name\":\"Programming Fundamentals\",\"price\":2000,\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"image\":\"1700511701599download (1).jpeg\",\"instructorId\":1,\"createdAt\":\"2023-11-20T18:40:08.000Z\",\"updatedAt\":\"2023-11-20T15:24:53.000Z\",\"active\":1}', '{\"name\":\"Programming Fundamental\",\"price\":\"20000\",\"description\":\"Unlock the world of coding in our Programming Fundamentals course. Learn key concepts for a solid programming foundation.\",\"brand\":\"Muhammad Subhan Anjum\"}', '2023-11-21 01:25:02'),
(9, 2, 'INSERT', 'N/A', '{\"name\":\"Object Oriented Programming\",\"price\":\"10000\",\"description\":\"Object-oriented programming (OOP) in web development enables code organization through encapsulation, inheritance, and polymorphism, fostering modular design for scalable, maintainable, and efficient website development.\",\"image\":\"1700748469408download.png\",\"instructorId\":3,\"createdAt\":\"2023-11-23 19:07:49\",\"updatedAt\":\"2023-11-23 19:07:49\",\"active\":true}', '2023-11-23 19:07:49'),
(10, 2, 'INSERT', 'N/A', '{\"name\":\"Data Structures\",\"price\":\"30000\",\"description\":\"Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.\",\"image\":\"1700926713508download.png\",\"instructorId\":4,\"createdAt\":\"2023-11-25 20:38:33\",\"updatedAt\":\"2023-11-25 20:38:33\",\"active\":true}', '2023-11-25 20:38:33'),
(11, 2, 'UPDATE', '{\"id\":4,\"name\":\"Data Structures\",\"price\":30000,\"description\":\"Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.\",\"image\":\"1700926713508download.png\",\"instructorId\":4,\"createdAt\":\"2023-11-25T15:38:33.000Z\",\"updatedAt\":\"2023-11-25T15:38:33.000Z\",\"active\":1}', '{\"name\":\"Data Structure\",\"price\":\"30000\",\"description\":\"Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.\",\"brand\":\"Shahbaz Rafique\"}', '2023-11-25 20:39:28'),
(12, 2, 'DELETE', '{\"product\":{\"id\":4,\"name\":\"Data Structure\",\"price\":30000,\"description\":\"Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.\",\"image\":\"1700926713508download.png\",\"instructorId\":4,\"createdAt\":\"2023-11-25T15:38:33.000Z\",\"updatedAt\":\"2023-11-25T15:39:28.000Z\",\"active\":1}}', 'N/A', '2023-11-25 20:39:33'),
(13, 2, 'INSERT', 'N/A', '{\"name\":\"Data Structures\",\"price\":\"30000\",\"description\":\"Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.\",\"image\":\"1700926806190download.png\",\"instructorId\":4,\"createdAt\":\"2023-11-25 20:40:06\",\"updatedAt\":\"2023-11-25 20:40:06\",\"active\":true}', '2023-11-25 20:40:06'),
(14, 2, 'UPDATE', '{\"id\":5,\"name\":\"Data Structures\",\"price\":30000,\"description\":\"Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.\",\"image\":\"1700926806190download.png\",\"instructorId\":4,\"createdAt\":\"2023-11-25T15:40:06.000Z\",\"updatedAt\":\"2023-11-25T15:40:06.000Z\",\"active\":1}', '{\"name\":\"Data Structures\",\"price\":\"30000\",\"description\":\"Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.\",\"brand\":\"Muhammad Subhan Anjum\"}', '2023-11-25 20:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `dated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enroll_id`, `course_id`, `user_id`, `price`, `dated`) VALUES
(1, 2, 6, 20000.00, '2023-11-24'),
(2, 3, 5, 10000.00, '2023-11-23'),
(4, 3, 6, 20000.00, '2023-11-23'),
(5, 2, 4, 10000.00, '2023-11-21'),
(6, 5, 8, 30000.00, '2023-11-22'),
(8, 5, 6, 30000.00, '2023-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int NOT NULL,
  `instructorName` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `instructorName`, `createdAt`, `updatedAt`, `active`) VALUES
(1, 'Muhammad Subhan Anjum', '2023-11-20 22:32:31', '2023-11-20 23:16:03', 1),
(3, 'Nazir Ali Ashraf', '2023-11-23 19:06:37', '2023-11-23 19:06:37', 1),
(4, 'Shahbaz Rafique', '2023-11-23 19:13:54', '2023-11-23 19:13:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `instructor_audit`
--

CREATE TABLE `instructor_audit` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `oldValue` text,
  `newValue` text,
  `dated` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instructor_audit`
--

INSERT INTO `instructor_audit` (`id`, `userId`, `action`, `oldValue`, `newValue`, `dated`) VALUES
(1, 2, 'INSERT', 'N/A', '{\"instructorName\":\"Subhan Anjum\",\"createdAt\":\"2023-11-20 22:32:31\",\"updatedAt\":\"2023-11-20 22:32:31\",\"active\":true}', '2023-11-20 22:32:31'),
(2, 2, 'UPDATE', '{\"id\":1,\"instructorName\":\"Subhan Anjum\",\"createdAt\":\"2023-11-20T17:32:31.000Z\",\"updatedAt\":\"2023-11-20T17:32:31.000Z\",\"active\":1}', '{\"brandName\":\"Muhammad Subhan Anjum\"}', '2023-11-20 23:11:48'),
(3, 2, 'UPDATE', '{\"id\":1,\"instructorName\":\"Subhan Anjum\",\"createdAt\":\"2023-11-20T17:32:31.000Z\",\"updatedAt\":\"2023-11-20T17:32:31.000Z\",\"active\":1}', '{\"brandName\":\"Muhammad Subhan Anjum\"}', '2023-11-20 23:13:23'),
(5, 2, 'DELETE', '{\"brand\":{\"id\":1,\"instructorName\":\"Muhammad Subhan Anjum\",\"createdAt\":\"2023-11-20T17:32:31.000Z\",\"updatedAt\":\"2023-11-20T18:13:23.000Z\",\"active\":1}}', 'N/A', '2023-11-20 23:15:49'),
(7, 2, 'DELETE', '{\"brand\":{\"id\":2,\"instructorName\":\"Nazir Ali Ashraf\",\"createdAt\":\"2023-11-23T13:57:44.000Z\",\"updatedAt\":\"2023-11-23T13:57:44.000Z\",\"active\":1}}', 'N/A', '2023-11-23 19:06:30'),
(8, 3, 'INSERT', 'N/A', '{\"instructorName\":\"Nazir Ali Ashraf\",\"createdAt\":\"2023-11-23 19:06:37\",\"updatedAt\":\"2023-11-23 19:06:37\",\"active\":true}', '2023-11-23 19:06:37'),
(9, 4, 'INSERT', 'N/A', '{\"instructorName\":\"Shahbaz Rafique\",\"createdAt\":\"2023-11-23 19:13:54\",\"updatedAt\":\"2023-11-23 19:13:54\",\"active\":true}', '2023-11-23 19:13:54'),
(10, 5, 'INSERT', 'N/A', '{\"instructorName\":\"Hamad Ali\",\"createdAt\":\"2023-11-25 20:35:58\",\"updatedAt\":\"2023-11-25 20:35:58\",\"active\":true}', '2023-11-25 20:35:58'),
(11, 2, 'UPDATE', '{\"id\":5,\"instructorName\":\"Hamad Ali\",\"createdAt\":\"2023-11-25T15:35:58.000Z\",\"updatedAt\":\"2023-11-25T15:35:58.000Z\",\"active\":1}', '{\"brandName\":\"Hammad Ali\"}', '2023-11-25 20:36:10'),
(12, 2, 'DELETE', '{\"brand\":{\"id\":5,\"instructorName\":\"Hammad Ali\",\"createdAt\":\"2023-11-25T15:35:58.000Z\",\"updatedAt\":\"2023-11-25T15:36:10.000Z\",\"active\":1}}', 'N/A', '2023-11-25 20:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `dated` date DEFAULT NULL,
  `replied` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `email`, `subject`, `body`, `dated`, `replied`) VALUES
(1, 'hananhanif309@gmail.com', 'Your Subject', 'Thank you for being a valued customer of Your Company Name. We appreciate your business!\n\nIn this email, you can provide information, updates, or any other relevant content tailored to your specific communication.\n\nFeel free to customize and add any specific details according to your needs.\n\nIf you have any questions or need assistance, please reply to this email or contact our support team at support@yourcompany.com.\n\nBest regards,', '2023-11-22', 1),
(2, 'hananhanif309@gmail.com', 'Enrollment', 'Explore the fundamental concepts of data structures in this course, covering arrays, linked lists, trees, and algorithms. Enhance problem-solving skills crucial for software development and algorithmic thinking.', '2023-11-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) DEFAULT '1',
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `createdAt`, `updatedAt`, `active`, `username`) VALUES
(2, 'muhammadumaraleem@gmail.com', 'c34d39bd4366113852cb438dae55ea8ec1b5d323e809f62604015cc7b13f62cd', 'admin', '2023-11-20 12:34:56', '2023-11-20 12:34:56', 1, 'Muhammad Umar'),
(4, 'shahbazrafique101@gmail.com', 'de15461c51b0f7757c5177fb20f8d302e0dd8297fdbab81240ac5f69bb347577', 'User', '2023-11-20 21:30:45', '2023-11-20 21:36:12', 1, 'Shahbaz Rafique'),
(5, 'naziraliashraf@gmail.com', 'c5d74fe5b526dd3f9b9bc34ea95fb6ca28cc7fdc4b58b0ccd20dac734d16a3ec', 'User', '2023-11-20 21:48:13', '2023-11-20 21:50:06', 1, 'Muhammad Nazir Ali'),
(6, 'hananhanif309@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'User', '2023-11-21 20:57:51', '2023-11-25 21:06:18', 1, 'Hanan Hanif Qureshi'),
(8, 'umaraleem1016@gmail.com', '9dd8a8efc6d5968dc7a0d32edf45480fa398bcfac68b683fed46a3ece475b723', 'User', '2023-11-23 17:10:09', '2023-11-23 17:10:09', 0, 'Muhammad Umar');

-- --------------------------------------------------------

--
-- Table structure for table `user_audit`
--

CREATE TABLE `user_audit` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `oldValue` text,
  `newValue` varchar(255) DEFAULT NULL,
  `dated` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_audit`
--

INSERT INTO `user_audit` (`id`, `userId`, `action`, `oldValue`, `newValue`, `dated`) VALUES
(1, 1, 'INSERT', 'N/A', 'User Added: shahbazrafique101@gmail.com', '2023-11-20 21:11:29'),
(2, 1, 'DELETE', '{\"user\":{\"id\":3,\"email\":\"shahbazrafique101@gmail.com\",\"password\":\"a2493db4c0a1c8ce097b6a39905daffb1da0f474fa7ecd38a715e8aa86158b47\",\"role\":\"User\",\"createdAt\":\"2023-11-20T16:11:29.000Z\",\"updatedAt\":\"2023-11-20T16:11:29.000Z\",\"active\":1,\"username\":\"Shahbaz Rafique\"}}', 'N/A', '2023-11-20 21:28:48'),
(3, 4, 'INSERT', 'N/A', 'User Added: shahbazrafique101@gmail.com', '2023-11-20 21:30:45'),
(4, 4, 'UPDATE', '{\"username\":\"Shahbaz Rafique\",\"email\":\"shahbazrafique101@gmail.com\"}', '{\"username\":\"Shahbaz Rafique\",\"email\":\"shahbazrafique101@gmail.com\"}', '2023-11-20 21:35:40'),
(5, 4, 'UPDATE', '{\"username\":\"Shahbaz Rafique\",\"email\":\"shahbazrafique101@gmail.com\"}', '{\"username\":\"Shahbaz janjua\",\"email\":\"shahbazrafique101@gmail.com\"}', '2023-11-20 21:35:51'),
(6, 4, 'UPDATE', '{\"username\":\"Shahbaz janjua\",\"email\":\"shahbazrafique101@gmail.com\"}', '{\"username\":\"Shahbaz janjua\",\"email\":\"shahbazrafique102@gmail.com\"}', '2023-11-20 21:35:56'),
(7, 4, 'UPDATE', '{\"username\":\"Shahbaz janjua\",\"email\":\"shahbazrafique102@gmail.com\"}', '{\"username\":\"Shahbaz Rafique\",\"email\":\"shahbazrafique101@gmail.com\"}', '2023-11-20 21:36:12'),
(8, 5, 'INSERT', 'N/A', 'User Added: naziraliashraf@gmail.com', '2023-11-20 21:48:13'),
(9, 5, 'DELETE', '{\"user\":{\"id\":5,\"email\":\"naziraliashraf@gmail.com\",\"password\":\"c5d74fe5b526dd3f9b9bc34ea95fb6ca28cc7fdc4b58b0ccd20dac734d16a3ec\",\"role\":\"User\",\"createdAt\":\"2023-11-20T16:48:13.000Z\",\"updatedAt\":\"2023-11-20T16:48:13.000Z\",\"active\":1,\"username\":\"Muhammad Nazir\"}}', 'N/A', '2023-11-20 21:49:31'),
(10, 5, 'UPDATE', '{\"username\":\"Muhammad Nazir\",\"email\":\"naziraliashraf@gmail.com\"}', '{\"username\":\"Muhammad Nazir Ali\",\"email\":\"naziraliashraf@gmail.com\"}', '2023-11-20 21:50:06'),
(11, 6, 'UPDATE', '{\"id\":6,\"email\":\"hananhanif309@gmail.com\",\"password\":\"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92\",\"role\":\"User\",\"createdAt\":\"2023-11-21T15:57:51.000Z\",\"updatedAt\":\"2023-11-21T15:57:51.000Z\",\"active\":1,\"username\":\"Hanan Hanif Qureshi\"}', '{\"username\":\"Muhammad Hanan Hanif Qureshi\",\"email\":\"hananhanif309@gmail.com\"}', '2023-11-22 20:37:24'),
(12, 6, 'UPDATE', '{\"id\":6,\"email\":\"hananhanif309@gmail.com\",\"password\":\"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92\",\"role\":\"User\",\"createdAt\":\"2023-11-21T15:57:51.000Z\",\"updatedAt\":\"2023-11-22T15:37:24.000Z\",\"active\":1,\"username\":\"Muhammad Hanan Hanif Qureshi\"}', '{\"username\":\"Muhammad Hanan Hanif Qureshi\",\"email\":\"hananhanif309@gmail.com\"}', '2023-11-22 20:38:06'),
(13, 7, 'INSERT', 'N/A', 'User Added: umaraleem1016@gmail.com', '2023-11-23 17:07:08'),
(14, 8, 'INSERT', 'N/A', 'User Added: umaraleem1016@gmail.com', '2023-11-23 17:10:09'),
(15, 9, 'INSERT', 'N/A', 'User Added: hammadnafees339@gmail.com', '2023-11-25 20:33:29'),
(16, 9, 'UPDATE', '{\"username\":\"Hammad Nafees\",\"email\":\"hammadnafees339@gmail.com\"}', '{\"username\":\"Hamad Nafees\",\"email\":\"hammadnafees339@gmail.com\"}', '2023-11-25 20:34:04'),
(17, 9, 'DELETE', '{\"user\":{\"id\":9,\"email\":\"hammadnafees339@gmail.com\",\"password\":\"7983c4ba77606c8f2b23885851625af16799b4469148f55aa4b968e7df8ee69f\",\"role\":\"User\",\"createdAt\":\"2023-11-25T15:33:29.000Z\",\"updatedAt\":\"2023-11-25T15:34:04.000Z\",\"active\":1,\"username\":\"Hamad Nafees\"}}', 'N/A', '2023-11-25 20:34:12'),
(18, 6, 'UPDATE', '{\"id\":6,\"email\":\"hananhanif309@gmail.com\",\"password\":\"ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f\",\"role\":\"User\",\"createdAt\":\"2023-11-21T15:57:51.000Z\",\"updatedAt\":\"2023-11-22T15:38:06.000Z\",\"active\":1,\"username\":\"Muhammad Hanan Hanif Qureshi\"}', '{\"username\":\"Hanan Hanif Qureshi\",\"email\":\"hananhanif309@gmail.com\"}', '2023-11-25 21:06:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backendlog`
--
ALTER TABLE `backendlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_audit`
--
ALTER TABLE `course_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_audit`
--
ALTER TABLE `instructor_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_audit`
--
ALTER TABLE `user_audit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backendlog`
--
ALTER TABLE `backendlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_audit`
--
ALTER TABLE `course_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `instructor_audit`
--
ALTER TABLE `instructor_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_audit`
--
ALTER TABLE `user_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
