-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2018 at 03:27 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE `attend` (
  `pid` int(11) DEFAULT NULL,
  `dday` date DEFAULT NULL,
  `attendance` varchar(10) DEFAULT 'xxxxxxxxxx'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`pid`, `dday`, `attendance`) VALUES
(152015, '2017-03-05', '1x11111xx'),
(152015, '2017-03-05', '1x11111xx'),
(152025, '2017-03-05', '1x11111xx'),
(152026, '2017-03-05', '1x11111xx'),
(152027, '2017-03-05', '1x11011xx'),
(152028, '2017-03-05', '1x11111xx'),
(152029, '2017-03-05', '1x11111xx'),
(152030, '2017-03-05', '1x11111xx'),
(152031, '2017-03-05', '1x11111xx'),
(152046, '2017-03-05', '1x11111xx'),
(152047, '2017-03-05', '1x11111xx'),
(152048, '2017-03-05', '1x11111xx'),
(152050, '2017-03-05', '1x11111xx'),
(152070, '2017-03-05', '1x11000xx'),
(152015, '2017-03-05', '111x11xxx'),
(152025, '2017-03-05', '111x10xxx'),
(152026, '2017-03-05', '111x01xxx'),
(152027, '2017-03-05', '111x11xxx'),
(152028, '2017-03-05', '111x11xxx'),
(152029, '2017-03-05', '111x00xxx');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `pid` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`pid`, `roll`, `year`, `department`, `class`, `batch`) VALUES
(152015, 14, 3, 1, 1, 1),
(152025, 23, 3, 1, 1, 2),
(152026, 24, 3, 1, 1, 2),
(152027, 25, 3, 1, 1, 2),
(152028, 26, 3, 1, 1, 2),
(152029, 27, 3, 1, 1, 2),
(152030, 28, 3, 1, 1, 2),
(152031, 29, 3, 1, 1, 2),
(152046, 42, 3, 1, 1, 3),
(152047, 43, 3, 1, 1, 3),
(152048, 44, 3, 1, 1, 3),
(152050, 45, 3, 1, 1, 3),
(152070, 65, 3, 1, 1, 4),
(152071, 66, 3, 1, 1, 4),
(152072, 67, 3, 1, 1, 4),
(152080, 68, 3, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `year` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `subject` varchar(15) DEFAULT NULL,
  `teacher` varchar(25) DEFAULT NULL,
  `dday` varchar(10) NOT NULL,
  `hour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`year`, `department`, `class`, `batch`, `type`, `subject`, `teacher`, `dday`, `hour`) VALUES
(3, 1, 1, 1, 1, 'MCC', '752030', 'mon', 1),
(3, 1, 1, 2, 1, 'SPCC', '752033', 'mon', 1),
(3, 1, 1, 3, 1, 'NPL', '752034', 'mon', 1),
(3, 1, 1, 4, 1, 'DDB', '752032', 'mon', 1),
(3, 1, 1, 0, 0, 'FRENCH', '752036', 'mon', 3),
(3, 1, 1, 0, 0, 'FRENCH', '752036', 'mon', 4),
(3, 1, 1, 0, 0, 'SPCC', '752033', 'mon', 5),
(3, 1, 1, 0, 0, 'SE', '752031', 'mon', 6),
(3, 1, 1, 0, 0, 'DDB', '752032', 'mon', 7),
(3, 1, 1, 0, 0, 'SE', '752031', 'tue', 1),
(3, 1, 1, 0, 0, 'DDB', '752032', 'tue', 2),
(3, 1, 1, 1, 1, 'NPL', '752034', 'tue', 3),
(3, 1, 1, 2, 1, 'DDB', '752032', 'tue', 3),
(3, 1, 1, 3, 1, 'SE', '752031', 'tue', 3),
(3, 1, 1, 4, 1, 'NPL', '752035', 'tue', 3),
(3, 1, 1, 0, 0, 'SPCC', '752033', 'tue', 5),
(3, 1, 1, 0, 0, 'SE', '752031', 'tue', 6),
(3, 1, 1, 0, 0, 'SE', '752031', 'wed', 2),
(3, 1, 1, 0, 0, 'DDB', '752032', 'wed', 3),
(3, 1, 1, 0, 0, 'SPCC', '752033', 'wed', 4),
(3, 1, 1, 0, 0, 'NPL', '752034', 'wed', 5),
(3, 1, 1, 0, 0, 'DDB', '752031', 'wed', 5),
(3, 1, 1, 0, 0, 'SE', '752031', 'wed', 5),
(3, 1, 1, 0, 0, 'NPL', '752031', 'wed', 5),
(3, 1, 1, 0, 0, 'FRENCH', '752036', 'thu', 1),
(3, 1, 1, 0, 0, 'FRENCH', '752036', 'thu', 2),
(3, 1, 1, 1, 1, 'SE', '752031', 'thu', 3),
(3, 1, 1, 2, 1, 'NPL', '752034', 'thu', 3),
(3, 1, 1, 3, 1, 'SPCC', '752033', 'thu', 3),
(3, 1, 1, 4, 1, 'MCC', '752030', 'thu', 3),
(3, 1, 1, 0, 0, 'MCC', '752030', 'thu', 5),
(3, 1, 1, 0, 0, 'SE', '752031', 'thu', 5),
(3, 1, 1, 1, 1, 'SPCC', '752033', 'thu', 7),
(3, 1, 1, 2, 1, 'NPL', '752034', 'thu', 7),
(3, 1, 1, 3, 1, 'MCC', '752030', 'thu', 7),
(3, 1, 1, 4, 1, 'NPL', '752035', 'thu', 7),
(3, 1, 1, 0, 0, 'DDB', '752032', 'fri', 1),
(3, 1, 1, 0, 0, 'SPCC', '752033', 'fri', 2),
(3, 1, 1, 1, 1, 'DDB', '752032', 'fri', 3),
(3, 1, 1, 2, 1, 'MCC', '752030', 'fri', 3),
(3, 1, 1, 3, 1, 'NPL', '752034', 'fri', 3),
(3, 1, 1, 4, 1, 'SE', '752031', 'fri', 3),
(3, 1, 1, 0, 0, 'MCC', '752030', 'fri', 4),
(3, 1, 1, 0, 0, 'MCC', '752030', 'fri', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attend`
--
ALTER TABLE `attend`
  ADD CONSTRAINT `attend_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `student` (`pid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
