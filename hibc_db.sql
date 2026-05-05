-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2026 at 05:16 AM
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
-- Database: `hibc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `email`, `phone`, `course`, `applied_at`, `status`) VALUES
(1, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '444', 'it', '2026-01-28 15:15:34', 'Pending'),
(2, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '444', 'it', '2026-01-28 15:36:35', 'Pending'),
(3, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '22', 'it', '2026-01-28 15:36:52', 'Pending'),
(4, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '22', 'it', '2026-01-28 15:40:01', 'Pending'),
(5, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '555', 'HND in IT', '2026-01-28 15:58:08', 'Pending'),
(6, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '22', 'HND in Business', '2026-01-28 15:59:39', 'Pending'),
(7, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '111', 'HND in Business', '2026-01-28 16:06:56', 'Rejected'),
(8, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', 'rrr', 'HND in Business', '2026-01-28 16:28:23', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `course`, `created_at`) VALUES
(1, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '6666', 'it', '2026-01-28 12:39:27'),
(2, 'Thanuja Yokenthiran', 'yokenthiranthanuja810@gmail.com', '222', 'it', '2026-01-28 12:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(1, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(2, 'thanuja@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(3, 'hello@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(4, 'hi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(5, 'thanuja@gmail.com', '47bce5c74f589f4867dbd57e9ca9f808', 'user'),
(6, 'hello@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(7, 'sornam@gmail.com', '80c9ef0fb86369cd25f90af27ef53a9e', 'user'),
(8, 'kapa@gmail.com', '84d2004bf28a2095230e8e14993d398d', 'user'),
(9, 'sathvika@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
