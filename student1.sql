-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2021 at 05:59 PM
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
