-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2018 at 02:03 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_project`
--

DROP TABLE IF EXISTS `assign_project`;
CREATE TABLE IF NOT EXISTS `assign_project` (
  `assignment` longblob NOT NULL,
  `sub_id` varchar(200) NOT NULL,
  `enrollment` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_project`
--

INSERT INTO `assign_project` (`assignment`, `sub_id`, `enrollment`) VALUES
(0x616e6b6974612e747874, '123', 'arun'),
(0x616e6b6974612e747874, '123', 'arun'),
(0x616e6b6974612e747874, '123', 'arun'),
(0x616e6b6974612e747874, '123', 'arun'),
(0x616e6b6974612e747874, '123', 'arun'),
(0x616e6b6974612e747874, '123', 'arun'),
(0x616e6b6974612e747874, '123', 'arun'),
(0x616e6b6974612e747874, '1111', 'arun'),
(0x616e6b6974612e747874, '12121212', 'arun'),
(0x616e6b6974612e747874, '12121212', 'arun'),
(0x616e6b6974612e747874, '12121212', 'arun'),
(0x616e6b6974612e747874, '12121212', 'arun'),
(0x616e6b6974612e747874, '12121212', 'arun'),
(0x616e6b6974612e747874, '12121212', 'arun'),
(0x616e6b6974612e747874, '12121212', 'arun'),
(0x616e6b6974612e747874, '1203', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `enroll` varchar(20) NOT NULL,
  `sub_id` varchar(20) NOT NULL,
  `blog` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`enroll`, `sub_id`, `blog`) VALUES
('arun', '12123', 0x616e6b6974612e747874),
('arun', '12123', 0x616e6b6974612e747874),
('arun', '1112', 0x616e6b6974612e747874),
('arun', '1112', 0x616e6b6974612e747874);

-- --------------------------------------------------------

--
-- Table structure for table `f_assignment`
--

DROP TABLE IF EXISTS `f_assignment`;
CREATE TABLE IF NOT EXISTS `f_assignment` (
  `faculty_id` varchar(20) NOT NULL,
  `sub_id` varchar(20) NOT NULL,
  `set_assignment` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_assignment`
--

INSERT INTO `f_assignment` (`faculty_id`, `sub_id`, `set_assignment`) VALUES
('abc', '1212', 0x616e6b6974612e747874),
('abc', '1212', 0x616e6b6974612e747874),
('abc', '1212', 0x616e6b6974612e747874),
('abc', '1212', 0x616e6b6974612e747874),
('abc', '2105', 0x616e6b6974612e747874),
('abc', '1234', 0x616e6b6974612e747874),
('abc', '123', 0x616e6b6974612e747874),
('abc', '2345', 0x616e6b6974612e747874);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `username` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `enrollment` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`enrollment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`enrollment`, `name`, `password`) VALUES
('12345', '12345', '12345'),
('abc', 'abc', 'ab'),
('abcd', 'abcd', 'abcd'),
('abcde', 'abcde', 'abcde'),
('ankita', 'ankita', 'abc'),
('ankitanath', 'ankitanath', 'abcd'),
('arun', 'arun', 'arun'),
('arunn', 'arunn', 'arunn'),
('ass', 'assa', 'a'),
('dead', 'dead', 'dead'),
('ded', 'ded', 'ded');

-- --------------------------------------------------------

--
-- Table structure for table `login_parents`
--

DROP TABLE IF EXISTS `login_parents`;
CREATE TABLE IF NOT EXISTS `login_parents` (
  `parents_id` varchar(20) NOT NULL,
  `parents_name` varchar(20) NOT NULL,
  `parents_password` varchar(200) NOT NULL,
  `enrollment` varchar(20) NOT NULL,
  PRIMARY KEY (`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_parents`
--

INSERT INTO `login_parents` (`parents_id`, `parents_name`, `parents_password`, `enrollment`) VALUES
('500', 'aman', 'aman', 'arun'),
('501', 'aman', 'aman', 'arun'),
('502', 'kantabai', 'kantabai', 'arunn'),
('503', 'kantabai', 'kantabai', 'arunn'),
('as', 'as', 'as', 'arun'),
('ankita', 'ankita', 'ankita', 'arun'),
('1', 'a', '1', '1'),
('an', 'an', 'as', 'arun'),
('ass', 'ass', 'ass', 'arun');

-- --------------------------------------------------------

--
-- Table structure for table `login_teacher`
--

DROP TABLE IF EXISTS `login_teacher`;
CREATE TABLE IF NOT EXISTS `login_teacher` (
  `faculty_name` varchar(20) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `enrollment` varchar(20) NOT NULL,
  `sub_id` varchar(20) NOT NULL,
  `faculty_password` varchar(20) NOT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_teacher`
--

INSERT INTO `login_teacher` (`faculty_name`, `faculty_id`, `enrollment`, `sub_id`, `faculty_password`) VALUES
('shrinivas', '231', 'arun', '123', 'srinivas'),
('shrinivas', '111', 'arun', '123', 'shrinivas'),
('sreesanth', '112', 'arunn', '123', 'sreesanth'),
('sreesanth', '114', 'arunn', '123', 'sreesanth'),
('abc', 'abc', 'abc', 'abc', 'abc'),
('1234', '1234', 'arun', '1234', '1234'),
('a', '1', '1', '1', '1'),
('a', '3', '3', '3', '3'),
('awa', 'awa', 'arun', '1203', 'awa');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `enrollment` varchar(200) NOT NULL,
  `sub_id` varchar(200) NOT NULL,
  `assignment` tinyint(1) NOT NULL,
  `test` int(2) NOT NULL,
  `assign_marks` int(11) NOT NULL,
  `blog_points` int(2) NOT NULL,
  `comments` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`enrollment`, `sub_id`, `assignment`, `test`, `assign_marks`, `blog_points`, `comments`) VALUES
('arun', '1203', 1, 56, 56, 23, 'doing good'),
('arunn', '123', 1, 63, 53, 35, 'can still do better');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
