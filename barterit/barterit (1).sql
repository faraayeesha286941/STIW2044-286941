-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 06:37 PM
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
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `cart_id` int(12) NOT NULL,
  `item_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_status` varchar(40) NOT NULL,
  `item_type` varchar(30) NOT NULL,
  `item_desc` varchar(300) NOT NULL,
  `cart_qty` int(100) NOT NULL,
  `cart_price` decimal(10,2) NOT NULL,
  `user_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `cart_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`cart_id`, `item_id`, `item_name`, `item_status`, `item_type`, `item_desc`, `cart_qty`, `cart_price`, `user_id`, `seller_id`, `cart_date`) VALUES
(1, 1, '', '', '', '', 1, 18.30, 4, 1, '2023-07-20 15:02:31.870814'),
(2, 2, '', '', '', '', 1, 40.30, 4, 1, '2023-07-20 15:13:14.055091'),
(3, 5, '', '', '', '', 1, 450.60, 4, 1, '2023-07-20 16:14:19.736299');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `item_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_type` varchar(30) NOT NULL,
  `item_desc` varchar(300) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `item_qty` int(100) NOT NULL,
  `item_lat` varchar(30) NOT NULL,
  `item_long` varchar(30) NOT NULL,
  `item_state` varchar(30) NOT NULL,
  `item_locality` varchar(30) NOT NULL,
  `item_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`item_id`, `user_id`, `item_name`, `item_type`, `item_desc`, `item_price`, `item_qty`, `item_lat`, `item_long`, `item_state`, `item_locality`, `item_date`) VALUES
(1, 1, 'White Sneakers', 'Women Fashion', 'Size 38, Worn twice', 18.30, 1, '37.4219983', '-122.084', 'California', 'Mountain View', '2023-07-02 15:38:48.566303'),
(2, 1, 'Red Sneakers', 'Women Fashion', 'From My Hero Academia', 40.30, 1, '37.4219983', '-122.084', 'California', 'Mountain View', '2023-07-03 04:26:43.505664'),
(3, 1, 'UT Graphic', 'Women Fashion', 'Size L', 15.30, 1, '37.4219983', '-122.084', 'California', 'Mountain View', '2023-07-06 10:41:38.539649'),
(4, 1, 'iPhone X', 'Computer & Mobile', 'Used for a year.', 800.40, 1, '37.4219983', '-122.084', 'California', 'Mountain View', '2023-07-06 10:48:35.879212'),
(5, 1, 'Pandora Ring', 'Women Fashion', 'Size 16', 450.60, 1, '37.4219983', '-122.084', 'California', 'Mountain View', '2023-07-06 10:52:52.146187'),
(6, 1, 'Gaming Headphones', 'Women Fashion', 'Reason To Sell: Buying a new one', 90.60, 1, '37.4219983', '-122.084', 'California', 'Mountain View', '2023-07-06 10:59:15.156067'),
(7, 1, 'Tamagotchi', 'Women Fashion', 'Custom design available, PM for more info', 23.20, 99, '37.4219983', '-122.084', 'California', 'Mountain View', '2023-07-06 11:03:00.263410');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(5) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_phone` int(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_otp` int(6) NOT NULL,
  `user_datereg` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_email`, `user_name`, `user_phone`, `password`, `user_otp`, `user_datereg`) VALUES
(1, 'faraayeesha09@gmail.com', 'Fara Ayeesha', 142762634, '7c4a8d09ca3762af61e59520943dc26494f8941b', 93698, '2023-07-02 15:34:42.926131'),
(2, 'sample@gmail.com', 'sample', 1234567890, '7c4a8d09ca3762af61e59520943dc26494f8941b', 58768, '2023-07-19 14:49:56.197172'),
(3, '12345@gmail.com', '12345', 1856321452, '7c4a8d09ca3762af61e59520943dc26494f8941b', 48175, '2023-07-19 14:54:17.162779'),
(4, 'eeeden@gmail.com', 'Eeden Reine', 2147483647, '7c4a8d09ca3762af61e59520943dc26494f8941b', 59878, '2023-07-20 14:56:23.620112');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `cart_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
