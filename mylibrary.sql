-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 07:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` int(11) NOT NULL,
  `name` text NOT NULL,
  `shabak` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `subject` text NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `name`, `shabak`, `price`, `subject`, `count`) VALUES
(100, 'php', 100100100, 40000, 'training', 5),
(101, 'wordpress', 101101101, 58000, 'site training', 4),
(102, 'ashpazi novin', 102102102, 46000, 'training fun', 10),
(103, 'harypotter', 103103103, 140000, 'fun roman', 3),
(104, 'windows installation', 104104104, 68000, 'training computer', 7);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrowid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `startdate` date NOT NULL DEFAULT current_timestamp(),
  `finaldate` date NOT NULL DEFAULT current_timestamp(),
  `sit` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrowid`, `memberid`, `bookid`, `startdate`, `finaldate`, `sit`) VALUES
(300, 200, 100, '2021-12-08', '2021-12-10', 1),
(301, 203, 100, '2021-12-08', '2021-12-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberid` int(11) NOT NULL,
  `name` text NOT NULL,
  `lastname` text NOT NULL,
  `codemeli` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberid`, `name`, `lastname`, `codemeli`, `phone`) VALUES
(200, 'ali', 'rezai', 200200200, 912),
(201, 'reza', 'babai', 201201201, 913),
(202, 'amir', 'yazdani', 202202202, 914),
(203, 'mina', 'torabi', 203203203, 915);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
