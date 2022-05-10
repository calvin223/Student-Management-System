-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 07:57 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_att`
--

CREATE TABLE `tbl_att` (
  `email` varchar(40) NOT NULL,
  `dpid` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `temail` varchar(40) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_att`
--

INSERT INTO `tbl_att` (`email`, `dpid`, `sem`, `total`, `present`, `temail`, `status`) VALUES
('anil@gmail.com', 1, 4, 50, 45, 'sree@gmail.com', 1),
('nayif@gmail.com', 1, 4, 50, 44, 'sree@gmail.com', 1),
('anil@gmail.com', 1, 4, 30, 22, 'sujitha@gmail.com', 1),
('nayif@gmail.com', 1, 4, 30, 20, 'sujitha@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_depart`
--

CREATE TABLE `tbl_depart` (
  `dpid` int(11) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_depart`
--

INSERT INTO `tbl_depart` (`dpid`, `department`) VALUES
(1, 'BCA'),
(2, 'Bsc Mathematics'),
(3, 'Bsc Physics'),
(5, 'Ba Malayalam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_internal`
--

CREATE TABLE `tbl_internal` (
  `email` varchar(40) NOT NULL,
  `subid` int(11) NOT NULL,
  `temail` varchar(40) NOT NULL,
  `mark` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_internal`
--

INSERT INTO `tbl_internal` (`email`, `subid`, `temail`, `mark`, `total`, `status`) VALUES
('anil@gmail.com', 16, 'sree@gmail.com', 16, 20, 1),
('nayif@gmail.com', 16, 'sree@gmail.com', 18, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`email`, `password`, `status`) VALUES
('admin@gmail.com', 'admin', 0),
('sree@gmail.com', 'sree', 2),
('sujitha@gmail.com', 'sujitha', 1),
('revathy@gmail.com', 'revathy', 2),
('lekshmi@gmail.com', 'lekshmi', 1),
('anil@gmail.com', 'anil', 3),
('nayif@gmail.com', 'nayif', 3),
('aswathy@gmail.com', 'aswathy', 3),
('gopi@gmail.com', 'gopi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sregister`
--

CREATE TABLE `tbl_sregister` (
  `email` varchar(40) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `mob` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `hname` varchar(40) NOT NULL,
  `street` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dpid` int(11) NOT NULL,
  `yad` int(11) NOT NULL,
  `csem` int(11) NOT NULL,
  `image` varchar(40) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sregister`
--

INSERT INTO `tbl_sregister` (`email`, `fullname`, `mob`, `dob`, `hname`, `street`, `gender`, `dpid`, `yad`, `csem`, `image`, `status`) VALUES
('anil@gmail.com', 'Anil', 9432344565, '2001-02-07', 'Anil bhavan', 'karunagappally', 'male', 1, 2018, 4, 'uploads1/th.jfif', 1),
('nayif@gmail.com', 'Nayif', 7567233456, '2002-03-01', 'Mansil', 'karunagapally', 'male', 1, 2018, 4, 'uploads1/th (3).jfif', 1),
('aswathy@gmail.com', 'Aswathy', 8975643245, '2004-05-02', 'Asawthy Bhavan', 'Chavara', 'female', 1, 2017, 6, 'uploads1/th (2).jfif', 1),
('gopi@gmail.com', 'Gopi', 7654322334, '2001-02-01', 'Gopu Bhavan', 'Chavara', 'male', 1, 2017, 6, 'uploads1/kopfdummy.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `subid` int(11) NOT NULL,
  `dpid` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `subname` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`subid`, `dpid`, `semester`, `subname`) VALUES
(2, 1, 1, 'Mathematics1'),
(3, 1, 1, 'Computer Fundamentals and Orginization'),
(4, 1, 1, 'Digital Electronics'),
(5, 1, 1, 'Introduction to Programming'),
(6, 1, 1, 'C programming Lab'),
(7, 1, 1, 'Open Office Lab'),
(8, 1, 2, 'English2'),
(9, 1, 2, 'Mathematics2'),
(10, 2, 1, 'Statistics'),
(11, 2, 1, 'mathematics'),
(15, 1, 1, 'English1'),
(16, 1, 4, 'Python'),
(17, 1, 4, 'Php');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teaching`
--

CREATE TABLE `tbl_teaching` (
  `email` varchar(40) NOT NULL,
  `dpid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tregister`
--

CREATE TABLE `tbl_tregister` (
  `email` varchar(40) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `mob` bigint(10) NOT NULL,
  `status` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `dpid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tregister`
--

INSERT INTO `tbl_tregister` (`email`, `fullname`, `mob`, `status`, `gender`, `image`, `dpid`) VALUES
('sree@gmail.com', 'Sreelekshmi', 8907320333, 1, '', 'uploads/th (3).jfif', 1),
('sujitha@gmail.com', 'Sujitha', 8907320222, 2, 'on', 'uploads/th (1).jfif', 1),
('revathy@gmail.com', 'Revathy', 8907320111, 1, 'female', 'uploads/person-dummy_0.png', 1),
('lekshmi@gmail.com', 'Lekshmi', 8907120333, 2, 'female', 'uploads/th.jfif', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_depart`
--
ALTER TABLE `tbl_depart`
  ADD PRIMARY KEY (`dpid`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`subid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_depart`
--
ALTER TABLE `tbl_depart`
  MODIFY `dpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
