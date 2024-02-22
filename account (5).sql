-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 02:59 AM
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
-- Database: `account`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `mobile`, `message`) VALUES
(5, 'isuru', 'kaveesha', 'isurukaveesha1116@gmail.com', 763819762, 'all are quality');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `user_id`, `item_name`, `item_price`, `item_category`, `item_image`) VALUES
(11, 12, 'Birthday Card', 100.00, 'birthday', 'uploads/hbdf2.jpg'),
(12, 12, 'Gift box', 500.00, 'gift_box', 'uploads/gb3.jpg'),
(13, 12, 'Cocunut shell product', 200.00, 'coconut_shell_products', 'uploads/cc10.jpg'),
(14, 12, 'Birthday Card', 120.00, 'birthday', 'uploads/hbd5.jpg'),
(19, 12, 'Cocunut shell product', 200.00, 'coconut_shell_products', 'uploads/cc5.jpg'),
(22, 12, 'Cocunut shell product', 300.00, 'coconut_shell_products', 'uploads/pic2.jpg'),
(23, 12, 'Graduation Toy', 1000.00, 'graduation_toys', 'uploads/grad2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `total_amount`, `user_id`) VALUES
(1, 'jayathi', 0.00, NULL),
(2, 'jayathi', 0.00, NULL),
(3, '', 0.00, 1),
(4, '', 0.00, 3),
(5, '', 0.00, 6),
(6, '', 0.00, 6),
(7, '', 0.00, 6),
(8, '', 0.00, 1),
(9, '', 0.00, 3),
(10, '', 0.00, 3),
(11, '', 0.00, 1),
(12, 'jayathi', 0.00, 1),
(13, 'jayathi', 0.00, 1),
(14, 'isuru', 0.00, 3),
(15, 'isuru', 0.00, 3),
(16, 'isuru', 0.00, 3),
(17, 'isuru', 500.00, 3),
(18, 'isuru', 100.00, 3),
(19, 'isuru', 700.00, 3),
(20, 'isuru', 100.00, 3),
(21, 'jayathi', 150.00, 1),
(22, 'jayathi', 1000.00, 1),
(23, 'jayathi', 500.00, 1),
(24, 'jayathi', 150.00, 1),
(25, 'jayathi', 1000.00, 1),
(26, 'jayathi', 500.00, 1),
(27, 'jayathi', 1000.00, 1),
(28, 'jayathi', 500.00, 1),
(29, 'jayathi', 1000.00, 1),
(30, 'jayathi', 500.00, 1),
(31, 'isuru', 0.00, 3),
(32, 'jayathi', 1000.00, 1),
(33, 'jayathi', 500.00, 1),
(34, 'jayathi', 150.00, 1),
(35, 'jayathi', 1000.00, 1),
(36, 'jayathi', 700.00, 1),
(37, 'jayathi', 500.00, 1),
(38, 'jayathi', 0.00, 1),
(39, 'isuru123', 600.00, 39),
(40, 'jayathi', 200.00, 1),
(41, 'jayathi', 1000.00, 1),
(42, 'jayathi123', 500.00, 42);

-- --------------------------------------------------------

--
-- Table structure for table `submit`
--

CREATE TABLE `submit` (
  `submit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submit`
--

INSERT INTO `submit` (`submit_id`, `name`, `email`, `mobile`, `address`) VALUES
(5, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'Wayamba University of Sri lanka'),
(16, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'wayamba university, sri lanka'),
(17, 'dewmindi', 'dewmndi@gmail.com', '0714435547', 'wayamba university sri lanka'),
(18, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,sri lamka'),
(19, 'isuru', 'isurukaveesha1116@gmail.com', '0763819262', 'ambalangoda,srilanka'),
(20, '202023', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda , sri lanka'),
(21, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(22, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(23, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(24, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(25, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(26, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(27, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(28, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(29, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(30, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(31, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(32, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(33, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,Sri Lanka'),
(34, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda, sri lanka'),
(35, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'wayamba university sri lanka'),
(36, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'sri lanka'),
(37, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'sri lanka'),
(38, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'sri lanka'),
(39, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'sri lanka'),
(40, 'jayathi', 'jayathicolombage123@gmail.com', '070 583 4289', 'sri lanka'),
(41, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'ambalangoda,Sri lanka'),
(42, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'ambalangoda,Sri lanka'),
(43, 'isuru', 'isurukaveesha1116@gmail.com', '0763819261', 'ambalangoda, Sri lanka'),
(44, 'hashini', 'hashini1999@gmail.com', '0714435547', 'homagama,sri lanka'),
(45, 'hashini', 'hashini1999@gmail.com', '0714435547', 'homagama,Nugegoda'),
(46, 'hashini', 'hashini1999@gmail.com', '0714435547', 'homagama,Nugegoda'),
(47, 'hashini', 'hashini1999@gmail.com', '0714435547', 'homagama,sri lanka'),
(48, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'Nugegoda , Sri Lanka'),
(49, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'ambalangoda , sri lanka'),
(50, 'isuru', 'isurukaveesha1116@gmail.com', '0763819261', 'ambalangoda,sri lanka'),
(51, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'sri lanka'),
(52, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'Nugegoda,Sri Lanka'),
(53, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda,sri lanka'),
(54, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'sri lanka'),
(55, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'ari lanka'),
(56, 'isuru', 'isurukaveesha1116@gmail.com', '0705834289', 'ambalangoda'),
(57, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'ambalangoda'),
(58, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'sri lanka'),
(59, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'ambalangoda'),
(60, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'ambalangoda'),
(61, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda, sri lanka'),
(62, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(63, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(64, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'kuliyapitiya'),
(65, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(66, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'kuliyapitiya'),
(67, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'kuliyapitiya'),
(68, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(69, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'kuliyapitiya'),
(70, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(71, 'isuru', 'isurukaveesha1116@gmail.com', '0763819762', 'ambalangoda'),
(72, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(73, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(74, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(75, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda'),
(76, 'jayathi', 'fafaf@gail.com', '0705834289', 'nugegoda,srilanka'),
(77, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoa, sri lanka'),
(78, 'jayathi', 'jayathicolombage123@gmail.com', '0791425785', 'sri lanka'),
(79, 'isuruksveesha', 'rikfilms1@gmail.com', '0768316762', 'ambalangoda'),
(83, 'jayathi', 'jayathicolombage123@gmail.com', '0705834289', 'nugegoda , sri lanka'),
(84, 'isuru123', 'rikfilms1@gmail.com', '0763829762', 'kuliyapitoya'),
(85, 'jayathi123', 'jayathichamodya99@gmail.com', '0705834289', 'nugegoda,sri lanka');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `role`) VALUES
(1, 'jayathi', 'jayathicolombage123@gmail.com', 'jayathi99', 'user'),
(2, 'dewmindi', 'dewmndi@gmail.com', '78945', 'user'),
(3, 'isuru', 'isurukaveesha1116@gmail.com', 'isuru99', 'user'),
(6, 'hashini', 'hashini1999@gmail.com', 'Hashi@99', 'user'),
(12, 'admin', 'unicraftwaya@gmail.com', 'adminwaya', 'admin'),
(17, 'thilini', 'thilini@gail.com', '12345', 'user'),
(19, 'kasuni', 'kasuni@gmail.com', '23456', 'user'),
(31, 'imasha', 'ima@gail.com', '5678', 'user'),
(37, 'nisandu', 'nisanduni@gmail.com', '55667', 'user'),
(39, 'isuru123', 'rikfilms1@gmail.com', '12345678', 'user'),
(41, 'as@1$', 'queens@gmail.com', '123456', 'user'),
(42, 'jayathi123', 'jayathichamodya99@gmail.com', 'jay99', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_orders_users` (`user_id`);

--
-- Indexes for table `submit`
--
ALTER TABLE `submit`
  ADD PRIMARY KEY (`submit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_unique` (`username`),
  ADD UNIQUE KEY `email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `submit`
--
ALTER TABLE `submit`
  MODIFY `submit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
