-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2022 at 12:40 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `pharmacyapp_createitem`
--

CREATE TABLE `pharmacyapp_createitem` (
  `id` bigint(20) NOT NULL,
  `reference_no` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `medicine_name` varchar(50) NOT NULL,
  `issue_date` int(11) NOT NULL,
  `Expiry_date` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `uses` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacyapp_createitem`
--

INSERT INTO `pharmacyapp_createitem` (`id`, `reference_no`, `company_name`, `medicine_name`, `issue_date`, `Expiry_date`, `amount`, `uses`) VALUES
(3, 9090, 'iadoad', 'afasf', 12312, 4324, 213124, 'sdasda'),
(4, 7981749, 'asdsafasf', 'dfasfasf', 5346547, 897897, 67788, 'dsfdsfsdgf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pharmacyapp_createitem`
--
ALTER TABLE `pharmacyapp_createitem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pharmacyapp_createitem`
--
ALTER TABLE `pharmacyapp_createitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
