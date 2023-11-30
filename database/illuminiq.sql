-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 03:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `illuminiq`
--

-- --------------------------------------------------------

--
-- Table structure for table `senzor`
--

CREATE TABLE `senzor` (
  `id` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `vrijeme` datetime NOT NULL,
  `stanje` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `senzor`
--

INSERT INTO `senzor` (`id`, `naziv`, `vrijeme`, `stanje`) VALUES
(1, 'ASC1', '2023-11-29 14:32:47', '507'),
(2, 'PIR3', '2023-11-29 14:32:47', 'Activated'),
(3, 'PIR3', '2023-11-29 14:32:47', 'Deactivated'),
(4, 'PIR2', '2023-11-29 14:33:21', 'Activated'),
(5, 'ASC1', '2023-11-29 14:33:21', '508'),
(6, 'PIR3', '2023-11-29 14:33:21', 'Activated'),
(7, 'PIR4', '2023-11-29 14:33:22', 'Activated'),
(8, 'PIR3', '2023-11-29 14:33:27', 'Deactivated'),
(9, 'PIR4', '2023-11-29 14:33:27', 'Deactivated'),
(10, 'PIR2', '2023-11-29 14:33:31', 'Deactivated'),
(11, 'ASC1', '2023-11-29 14:33:55', '506'),
(12, 'PIR3', '2023-11-29 14:33:55', 'Activated'),
(13, 'PIR2', '2023-11-29 14:33:56', 'Activated'),
(14, 'PIR3', '2023-11-29 14:34:05', 'Deactivated'),
(15, 'PIR2', '2023-11-29 14:34:06', 'Deactivated'),
(16, 'ASC1', '2023-11-29 14:34:25', '508'),
(17, 'PIR3', '2023-11-29 14:34:25', 'Activated'),
(18, 'PIR2', '2023-11-29 14:34:26', 'Activated'),
(19, 'PIR2', '2023-11-29 14:34:34', 'Deactivated'),
(20, 'PIR3', '2023-11-29 14:34:35', 'Deactivated'),
(21, 'PIR4', '2023-11-29 14:34:36', 'Activated'),
(22, 'ASC1', '2023-11-29 14:34:39', '509'),
(23, 'PIR3', '2023-11-29 14:34:39', 'Activated'),
(24, 'PIR1', '2023-11-29 14:34:41', 'Activated'),
(25, 'PIR4', '2023-11-29 14:34:41', 'Deactivated'),
(26, 'PIR1', '2023-11-29 14:34:47', 'Deactivated'),
(27, 'PIR3', '2023-11-29 14:34:49', 'Deactivated'),
(28, 'ASC1', '2023-11-29 14:34:49', '508'),
(29, 'ASC1', '2023-11-29 14:36:33', '509'),
(30, 'PIR3', '2023-11-29 14:36:33', 'Activated'),
(31, 'PIR4', '2023-11-29 14:36:33', 'Activated'),
(32, 'PIR3', '2023-11-29 14:36:38', 'Deactivated'),
(33, 'PIR4', '2023-11-29 14:36:38', 'Deactivated'),
(34, 'ASC1', '2023-11-29 14:40:00', '509'),
(35, 'PIR3', '2023-11-29 14:40:00', 'Activated'),
(36, 'PIR3', '2023-11-29 14:40:05', 'Deactivated'),
(37, 'ASC1', '2023-11-29 14:40:07', '508'),
(38, 'PIR4', '2023-11-29 14:40:09', 'Activated'),
(39, 'PIR2', '2023-11-29 14:40:10', 'Activated'),
(40, 'PIR4', '2023-11-29 14:40:18', 'Deactivated'),
(41, 'PIR2', '2023-11-29 14:40:20', 'Deactivated'),
(42, 'ASC1', '2023-11-29 14:40:27', '508'),
(43, 'PIR3', '2023-11-29 14:40:27', 'Activated'),
(44, 'PIR3', '2023-11-29 14:40:33', 'Deactivated'),
(45, 'PIR4', '2023-11-29 14:41:22', 'Activated'),
(46, 'ASC1', '2023-11-29 14:41:22', '510'),
(47, 'PIR3', '2023-11-29 14:41:23', 'Activated'),
(48, 'PIR2', '2023-11-29 14:41:23', 'Activated'),
(49, 'PIR4', '2023-11-29 14:41:27', 'Deactivated'),
(50, 'PIR3', '2023-11-29 14:41:31', 'Deactivated'),
(51, 'PIR2', '2023-11-29 14:41:31', 'Deactivated'),
(52, 'PIR2', '2023-11-29 14:41:44', 'Activated'),
(53, 'ASC1', '2023-11-29 14:41:45', '508'),
(54, 'PIR3', '2023-11-29 14:41:45', 'Activated'),
(55, 'PIR4', '2023-11-29 14:41:51', 'Activated'),
(56, 'PIR5', '2023-11-29 14:41:51', 'Activated'),
(57, 'PIR4', '2023-11-29 14:41:56', 'Deactivated'),
(58, 'PIR5', '2023-11-29 14:41:56', 'Deactivated'),
(59, 'PIR2', '2023-11-29 14:42:02', 'Deactivated'),
(60, 'PIR3', '2023-11-29 14:42:02', 'Deactivated');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `senzor`
--
ALTER TABLE `senzor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `senzor`
--
ALTER TABLE `senzor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
