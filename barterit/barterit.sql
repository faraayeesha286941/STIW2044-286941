-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 11:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barterit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_phone` int(15) NOT NULL,
  `password` varchar(150) NOT NULL,
  `user_otp` int(6) NOT NULL,
  `user_datereg` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_email`, `user_name`, `user_phone`, `password`, `user_otp`, `user_datereg`) VALUES
(8, 'faraayeesha09@gmail.com', 'faraayeesha', 142762634, '7c4a8d09ca3762af61e59520943dc26494f894', 64076, '2023-05-21 00:34:49.606164'),
(9, 'sample@gmail.com', 'sample', 123456789, '7c4a8d09ca3762af61e59520943dc26494f8941b', 71843, '2023-05-21 01:17:52.385883'),
(10, 'hbgcbeyi@gmail.com', 'hjhjjhfds', 123654789, '7c4a8d09ca3762af61e59520943dc26494f8941b', 96537, '2023-05-21 02:03:59.480951'),
(12, 'sajcnsuia@gmail.com', 'dsfdsvds', 2136548821, '7c4a8d09ca3762af61e59520943dc26494f8941b', 57606, '2023-05-21 02:07:16.908992'),
(13, 'whbdkheh@gmail.com', 'ekjbnrnkerv', 518602346, '7c4a8d09ca3762af61e59520943dc26494f8941b', 55934, '2023-05-21 02:10:54.206689');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_phone` (`user_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
