-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 10:53 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

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
  `svname` varchar(22) NOT NULL,
  `branch` varchar(22) NOT NULL,
  `date_assign` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignsv`
--

INSERT INTO `assignsv` (`id`, `svname`, `branch`, `date_assign`) VALUES
(1, 'balase', 'IMUS, CAVITE', '02/18/2018'),
(2, '', '', '02/18/2018'),
(3, '', '', '02/18/2018'),
(4, '', '', '02/18/2018'),
(5, '', '', '02/18/2018'),
(6, '', '', '02/18/2018'),
(7, '', '', '02/18/2018'),
(8, '', '', '02/18/2018'),
(9, '', '', '02/18/2018'),
(10, '', '', '02/18/2018'),
(11, '', 'ZABARTE, QC', '02/18/2018'),
(12, '', 'ZABARTE, QC', '02/18/2018'),
(13, '', '', '02/18/2018'),
(14, '', '', '02/18/2018'),
(15, '', '', '02/18/2018'),
(16, '</select>', '</select>', '02/18/2018'),
(17, '</select>', '</select>', '02/18/2018'),
(18, '', '', '02/18/2018'),
(19, '', '', '02/18/2018'),
(20, '', '', '02/18/2018'),
(21, '', '', '02/18/2018'),
(22, '', '', '02/18/2018'),
(23, '', '', '02/18/2018'),
(24, '', '', '02/18/2018'),
(25, '', '', '02/18/2018'),
(26, '', '', '02/18/2018'),
(27, '', '', '02/18/2018'),
(28, 'Balane john mark', 'ZABARTE, QC', '02/18/2018'),
(29, 'balase', 'NOVALICHES, QC', '02/18/2018'),
(30, 'Balane john mark', 'ZABARTE, QC', '02/18/2018'),
(31, 'Balane john mark', 'ZABARTE, QC', '02/18/2018'),
(32, 'Balane john mark', 'ZABARTE, QC', '02/18/2018'),
(33, 'Balane john mark', 'ZABARTE, QC', '02/18/2018'),
(34, 'Balane john mark', 'NOVALICHES, QC', '02/18/2018'),
(35, 'balase', 'NOVALICHES, QC', '02/24/2018'),
(36, 'Balane john mark', 'ZABARTE, QC', '02/24/2018');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`) VALUES
(1, 'NOVALICHES, QC'),
(2, 'ZABARTE, QC'),
(3, 'IMUS, CAVITE');

-- --------------------------------------------------------

--
-- Table structure for table `inserttask`
--

CREATE TABLE `inserttask` (
  `id` int(22) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Task` varchar(22) NOT NULL,
  `TimeIn` varchar(22) NOT NULL,
  `TimeOut` varchar(22) NOT NULL,
  `Day` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inserttask`
--

INSERT INTO `inserttask` (`id`, `Name`, `Task`, `TimeIn`, `TimeOut`, `Day`, `branch`) VALUES
(180010, 'weqwe', 'wqewqewq', '10:00am', '7:00pm', '02/11/2018', ''),
(180011, 'balase balase', 'taga laba ka', '6:00am', '4:00pm', 'sample', ''),
(180012, 'xander ford', 'taga punas ng pwet ko', '6:00am', '5:00pm', '02/11/2018', ''),
(180013, 'xander ford', 'taga punas ng pwet ko', '6:00am', '5:00pm', '02/11/2018', ''),
(180014, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180015, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180016, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180017, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180018, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180025, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180026, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180027, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180028, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180029, 'christoper john', 'cute to', '6:00am', '12:00am', '02/11/2018', ''),
(180030, 'balasebalase', 'laba', '6:00am', '3:00pm', '02/16/2018', ''),
(180031, 'xander ford', 'taga punas ng pwet ko', '7:00am', '1:00pm', '02/16/2018', ''),
(180032, 'qwe', 'wwqeeq', '6:00am', '12:00am', '02/16/2018', ''),
(180033, 'qwe', 'wwqeeq', '6:00am', '12:00am', '02/16/2018', ''),
(180034, 'qwe', 'wwqeeq', '6:00am', '12:00am', '02/16/2018', ''),
(180035, 'qwe', 'wwqeeq', '6:00am', '12:00am', '02/16/2018', ''),
(180036, 'qwe', 'wwqeeq', '6:00am', '12:00am', '02/16/2018', ''),
(180037, 'qwe', 'wwqeeq', '6:00am', '12:00am', '02/16/2018', ''),
(180038, 'qwe', 'wwqeeq', '6:00am', '12:00am', '02/16/2018', ''),
(180039, 'qwe', 'wwqeeq', '6:00am', '12:00am', '02/16/2018', ''),
(180040, 'balase', 'balase', '12:00am', '8:00pm', '02/16/2018', ''),
(180041, 'balase', 'balase', '12:00am', '8:00pm', '02/16/2018', ''),
(180042, 'balase', 'balase', '12:00am', '8:00pm', '02/16/2018', ''),
(180043, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180044, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180045, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180046, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180047, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180048, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180049, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180050, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180051, 'qweqwe', 'qweqwe', '7:00am', '1:00pm', '02/16/2018', ''),
(180053, 'qweqwe', 'qweqwe', '6:00am', '2:00pm', '02/17/2018', 'NOVALICHES, QC'),
(180054, 'qwqewqewqewqe', 'wqewqewq', '7:00am', '3:00pm', '02/17/2018', 'IMUS, CAVITE'),
(180055, 'qwqewqewqewqe', 'wqewqewq', '7:00am', '3:00pm', '02/17/2018', 'IMUS, CAVITE'),
(180056, 'qwqewqewqewqe', 'wqewqewq', '7:00am', '3:00pm', '02/17/2018', 'IMUS, CAVITE'),
(180057, '23213', '213213', '6:00am', '1:00pm', '02/17/2018', 'NOVALICHES, QC'),
(180058, '2213', 'qewqe', '6:00am', '6:00pm', '02/17/2018', 'IMUS, CAVITE'),
(180059, '2213', 'qewqe', '6:00am', '6:00pm', '02/17/2018', 'IMUS, CAVITE'),
(180060, '2213', 'qewqe', '6:00am', '6:00pm', '02/17/2018', 'IMUS, CAVITE'),
(180061, 'asdqe2', 'qweqwe21321', '11:00am', '6:00pm', '02/17/2018', 'IMUS, CAVITE'),
(180062, 'sisviv', 'inventory', '6:00am', '6:00pm', '02/24/2018', 'IMUS, CAVITE');

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
  `id` int(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageraccount`
--

INSERT INTO `manageraccount` (`id`, `email`, `firstname`, `lastname`, `contact_no`, `password`) VALUES
(1, 'balase', 'balase', 'balase', 'balase', 'balase');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`Username`, `Password`) VALUES
('kenwei', 'kenwei'),
('IMUS, CAVITE', 'KENWEI'),
('NOVALICHES, QC', 'KENWEI'),
('ZABARTE, QC', 'KENWEI');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisorid` int(10) NOT NULL,
  `supervisor_name` varchar(50) NOT NULL,
  `susername` varchar(30) NOT NULL,
  `spassword` varchar(30) NOT NULL,
  `scontact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`supervisorid`, `supervisor_name`, `susername`, `spassword`, `scontact`) VALUES
(1001, 'balase', 'balase', 'balase', '09090909099'),
(1002, 'Balane john mark', 'mark123', '123', '12321411'),
(1003, 'Balane john mark', 'mark123', '123', '123123213');

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
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `manageraccount`
--
ALTER TABLE `manageraccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisorid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignsv`
--
ALTER TABLE `assignsv`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inserttask`
--
ALTER TABLE `inserttask`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180063;
--
-- AUTO_INCREMENT for table `manageraccount`
--
ALTER TABLE `manageraccount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `supervisorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
