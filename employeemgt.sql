-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 08:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeemgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendancy`
--

CREATE TABLE `attendancy` (
  `attendancyno` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `arrival_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendancy`
--

INSERT INTO `attendancy` (`attendancyno`, `ID`, `Fname`, `Lname`, `arrival_time`) VALUES
(2, 1, 'SAM', 'NSHUTI', 'Sat Jan 28 11:33:08 EET 2023'),
(3, 2, 'JEANNETTE', 'NYR', 'Thu Jan 12 11:45:13 EET 2023');

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `ID` int(11) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `department` varchar(30) NOT NULL,
  `post` varchar(30) NOT NULL,
  `annual_salary` int(11) DEFAULT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`ID`, `Fname`, `Lname`, `phone`, `department`, `post`, `annual_salary`, `gender`) VALUES
(1, 'SAM', 'NSHUTI', '0788888871', 'ICT', 'IT MANAGER', 250000, 'null'),
(2, 'JEANNETTE', 'NYR', '0789999922', 'FINANCE', 'CFO', 500000, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `leave_tbl`
--

CREATE TABLE `leave_tbl` (
  `leaveid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `L_type` varchar(40) NOT NULL,
  `l_time` date NOT NULL,
  `returning_time` date NOT NULL,
  `L_discription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `usertype`) VALUES
(1, 'admin', '12345', 'admin'),
(2, 'emp', '1234', 'employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendancy`
--
ALTER TABLE `attendancy`
  ADD PRIMARY KEY (`attendancyno`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  ADD PRIMARY KEY (`leaveid`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendancy`
--
ALTER TABLE `attendancy`
  MODIFY `attendancyno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  MODIFY `leaveid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendancy`
--
ALTER TABLE `attendancy`
  ADD CONSTRAINT `attendancy_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `employee_info` (`ID`);

--
-- Constraints for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  ADD CONSTRAINT `leave_tbl_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `employee_info` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
