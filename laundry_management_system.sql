-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2021 at 08:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `item_code` int(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity` int(10) NOT NULL,
  `unit_price` double NOT NULL,
  `supplier` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`item_code`, `item_name`, `quantity`, `unit_price`, `supplier`) VALUES
(2563503, 'Detergent', 3, 400, 'Joshua Amarasinghe'),
(2563504, 'Surf Excel', 8, 400, 'Uniliver'),
(2563506, 'Bleaching Powder', 5, 600, 'Uniliver'),
(2563507, 'Blue Dye', 8, 30, 'Amarabandu Rupasinghe'),
(2563508, 'Red dye', 6, 30, 'Niketh Shanuka'),
(2563509, 'Black dye', 10, 30, 'Elon Musk'),
(2563510, 'Fabric Conditioner', 3, 300, 'Uniliver');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`item_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `item_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2563511;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
