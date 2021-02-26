-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 05:20 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample1`
--

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `bid` int(11) NOT NULL,
  `bname` text DEFAULT NULL,
  `color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`bid`, `bname`, `color`) VALUES
(101, 'Interlake', 'blue'),
(102, 'Interlake', 'red'),
(103, 'Clipper', 'green'),
(104, 'Marine', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `reserves`
--

CREATE TABLE `reserves` (
  `sid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `day` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reserves`
--

INSERT INTO `reserves` (`sid`, `bid`, `day`) VALUES
(22, 101, '0000-00-00'),
(22, 102, '0000-00-00'),
(22, 103, '0000-00-00'),
(22, 104, '0000-00-00'),
(31, 102, '0000-00-00'),
(31, 103, '0000-00-00'),
(31, 104, '0000-00-00'),
(64, 101, '0000-00-00'),
(64, 102, '0000-00-00'),
(22, 101, '0000-00-00'),
(22, 102, '0000-00-00'),
(22, 103, '0000-00-00'),
(22, 104, '0000-00-00'),
(31, 102, '0000-00-00'),
(31, 103, '0000-00-00'),
(31, 104, '0000-00-00'),
(64, 101, '0000-00-00'),
(64, 102, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sailors`
--

CREATE TABLE `sailors` (
  `sid` int(11) NOT NULL,
  `sname` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `age` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sailors`
--

INSERT INTO `sailors` (`sid`, `sname`, `rating`, `age`) VALUES
(22, 'Dustin', 7, 45),
(29, 'Brutus', 1, 33),
(31, 'Lubber', 8, 55),
(32, 'Andy', 8, 25),
(58, 'Rusty', 10, 35),
(64, 'Horation', 9, 35);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SName` text NOT NULL,
  `Spwd` varchar(15) DEFAULT NULL,
  `Gender` text NOT NULL,
  `Course` text NOT NULL,
  `FLocation` varchar(100) NOT NULL,
  `SAddress` varchar(100) NOT NULL,
  `Qualification` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student1`
--

CREATE TABLE `student1` (
  `Sname` text NOT NULL,
  `Spwd` varchar(15) NOT NULL,
  `Gender` text NOT NULL,
  `Course` text NOT NULL,
  `SAddress` varchar(100) NOT NULL,
  `Qualification` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student1`
--

INSERT INTO `student1` (`Sname`, `Spwd`, `Gender`, `Course`, `SAddress`, `Qualification`) VALUES
('fdf', 'dfsadf', 'male', 'CSE', 'dfsdf', 'BTech,'),
('fdf', 'dfsadf', 'male', 'CSE', 'dfsdf', 'BTech,'),
('fdsfsda', 'ddfsdf', 'female', 'CSE', 'fsdfsafsddf', 'BTech,MTec'),
('dfsdf', 'dfsdf', 'male', 'CSE', 'dfdsfdsf', 'BTech,MTec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `reserves`
--
ALTER TABLE `reserves`
  ADD KEY `sid` (`sid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `sailors`
--
ALTER TABLE `sailors`
  ADD PRIMARY KEY (`sid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reserves`
--
ALTER TABLE `reserves`
  ADD CONSTRAINT `reserves_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `sailors` (`sid`),
  ADD CONSTRAINT `reserves_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `boats` (`bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
