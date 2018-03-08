-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2018 at 06:57 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projsad`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignsv`
--

CREATE TABLE `assignsv` (
  `id` int(10) NOT NULL,
  `svname` varchar(50) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `date_assign` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignsv`
--

INSERT INTO `assignsv` (`id`, `svname`, `branch`, `date_assign`) VALUES
(1, 'balase christoper', 'IMUS, CAVITE', '02/23/2018'),
(2, 'balase christoper', 'NOVALICHES, QC', '02/23/2018'),
(3, 'balase christoper', 'ZABARTE, QC', '02/23/2018'),
(4, 'balase christoper', 'IMUS, CAVITE', '02/23/2018'),
(5, 'balase christoper', 'IMUS, CAVITE', '02/23/2018'),
(6, 'Buenavista', 'ZABARTE, QC', '03/04/2018'),
(7, 'Buenavista', 'ZABARTE, QC', '03/04/2018');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) NOT NULL,
  `branch_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`) VALUES
(1, 'NOVALICHES, QC'),
(2, 'IMUS, CAVITE'),
(3, 'ZABARTE, QC');

-- --------------------------------------------------------

--
-- Table structure for table `inserttask`
--

CREATE TABLE `inserttask` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `task` varchar(20) NOT NULL,
  `timeIn` varchar(20) NOT NULL,
  `timeOut` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `branch` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inserttask`
--

INSERT INTO `inserttask` (`id`, `name`, `task`, `timeIn`, `timeOut`, `day`, `branch`) VALUES
(9, 'Maligdong', 'Deliver Item', '7:00 am', '8:00 pm', '02/22/2018', 'NOVALICHES, QC'),
(14, '1', '1', '1', '1', '1', ''),
(19, 'Ren', 'Stock Monitoring', '9:00am', '7:00pm', '02/23/2018', 'NOVALICHES, QC'),
(20, 'Ren', 'Stock Monitoring', '9:00am', '7:00pm', '02/23/2018', 'NOVALICHES, QC'),
(21, 'Buenavista Jayson', 'THERAPIST', '6:00am', '8:00pm', '02/23/2018', 'ZABARTE, QC'),
(22, 'Buenavista Jayson', 'THERAPIST', '6:00am', '8:00pm', '02/23/2018', 'ZABARTE, QC'),
(23, 'Buenavista Jayson', 'THERAPIST', '6:00am', '8:00pm', '02/23/2018', 'ZABARTE, QC'),
(24, 'qwe', 'qwe', '10:00am', '4:00pm', '02/23/2018', 'IMUS, CAVITE'),
(25, '1', '1', '10:00am', '12:00am', '02/23/2018', 'IMUS, CAVITE'),
(27, 'CC', 'XC', '12:00am', '8:00pm', '02/23/2018', 'ZABARTE, QC'),
(28, 'Harold Japlit', 'Docu mo asan na', '7:00am', '7:00pm', '02/23/2018', 'IMUS, CAVITE'),
(29, 'Keme', 'Kemerut', '1:00pm', '8:00pm', '02/23/2018', 'ZABARTE, QC'),
(30, 'balase christoper', 'inventory', '6:00am', '12:00am', '02/23/2018', 'NOVALICHES, QC'),
(31, 'balase christoper', 'inventory', '6:00am', '12:00am', '02/23/2018', 'NOVALICHES, QC'),
(32, 'BALASE', 'wawa', '6:00am', '1:00pm', '03/04/2018', 'IMUS, CAVITE'),
(33, 'asd', 'asd', '7:00am', '2:00pm', '03/04/2018', 'NOVALICHES, QC'),
(34, 'dasd', 'sdsad', '12:00am', '7:00pm', '03/04/2018', 'ZABARTE, QC'),
(35, 'csasd', 'sadsad', '8:00am', '3:00pm', '03/04/2018', 'NOVALICHES, QC'),
(36, 'shaey', 'LABADA', '7:00am', '2:00pm', '03/05/2018', 'IMUS, CAVITE');

-- --------------------------------------------------------

--
-- Table structure for table `login_form`
--

CREATE TABLE `login_form` (
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_form`
--

INSERT INTO `login_form` (`username`, `password`) VALUES
('Admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `manageraccount`
--

CREATE TABLE `manageraccount` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageraccount`
--

INSERT INTO `manageraccount` (`id`, `firstname`, `lastname`, `contact_no`, `password`) VALUES
(18001, 'christoper', 'balase', '00000000000', 'balase');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `id` int(10) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `Username`, `Password`) VALUES
(8, 'NOVALICHES, QC', 'kenwei'),
(9, 'ZABARTE, QC', 'kenwei'),
(10, 'IMUS, CAVITE', 'kenwei');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `id` int(10) NOT NULL,
  `supervisor_name` varchar(50) NOT NULL,
  `susername` varchar(30) NOT NULL,
  `spassword` varchar(30) NOT NULL,
  `scontact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`id`, `supervisor_name`, `susername`, `spassword`, `scontact`) VALUES
(1, 'balase christoper', 'balase', 'balase', '00000000000'),
(2, 'BUENAVISTA', 'JAYSON', 'SHAEY', '09354969542'),
(3, 'BUENAVISTA', 'JAYSON', 'SHAEY', '09354969542'),
(4, 'BUENAVISTA', 'JAYSON', 'SHAEY', '09354969542'),
(5, 'BUENAVISTA', 'JAYSON', 'SHAEY', '09354969542'),
(6, 'BUENAVISTA', 'JAYSON', 'SHAEY', '09354969542'),
(7, 'Buenavista', 'Jayson', '123', '09354969542');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignsv`
--
ALTER TABLE `assignsv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inserttask`
--
ALTER TABLE `inserttask`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manageraccount`
--
ALTER TABLE `manageraccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignsv`
--
ALTER TABLE `assignsv`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inserttask`
--
ALTER TABLE `inserttask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `manageraccount`
--
ALTER TABLE `manageraccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18002;
--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
