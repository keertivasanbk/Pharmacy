-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2022 at 12:42 PM
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
-- Table structure for table `pharmacyapp_createpatients`
--

CREATE TABLE `pharmacyapp_createpatients` (
  `id` bigint(20) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `place` varchar(40) NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `medicine_puruchased` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacyapp_createpatients`
--

INSERT INTO `pharmacyapp_createpatients` (`id`, `patient_name`, `age`, `place`, `phonenumber`, `weight`, `medicine_puruchased`) VALUES
(1, 'raju', 12, 'chennai', 123124134, 45, 'adasd'),
(2, 'qeqw', 12, 'dfdsf', 213123, 12312, 'adasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pharmacyapp_createpatients`
--
ALTER TABLE `pharmacyapp_createpatients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pharmacyapp_createpatients`
--
ALTER TABLE `pharmacyapp_createpatients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
