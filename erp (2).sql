-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2018 at 07:00 PM
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
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `iatno` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `marks` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`iatno`, `subject`, `pid`, `marks`) VALUES
(1, 'MCC', 152025, 15),
(1, 'SE', 152025, 14),
(1, 'DDB', 152025, 12),
(1, 'SPCC', 152025, 11),
(1, 'NPL', 152025, 13),
(1, 'FRENCH', 152025, 12),
(1, 'MCC', 152026, 15),
(1, 'SE', 152026, 14),
(1, 'DDB', 152026, 12),
(1, 'SPCC', 152026, 11),
(1, 'NPL', 152026, 13),
(1, 'FRENCH', 152026, 12),
(1, 'MCC', 152027, 15),
(1, 'SE', 152027, 14),
(1, 'DDB', 152027, 12),
(1, 'SPCC', 152027, 11),
(1, 'NPL', 152027, 12),
(1, 'FRENCH', 152027, 13),
(1, 'MCC', 152028, 15),
(1, 'SE', 152028, 14),
(1, 'DDB', 152028, 12),
(1, 'SPCC', 152028, 11),
(1, 'NPL', 152028, 13),
(1, 'FRENCH', 152028, 12),
(1, 'MCC', 152029, 15),
(1, 'SE', 152029, 14),
(1, 'DDB', 152029, 12),
(1, 'SPCC', 152029, 11),
(1, 'NPL', 152029, 13),
(1, 'FRENCH', 152029, 12),
(1, 'MCC', 152030, 15),
(1, 'SE', 152030, 14),
(1, 'DDB', 152030, 12),
(1, 'SPCC', 152030, 11),
(1, 'NPL', 152030, 13),
(1, 'FRENCH', 152030, 12),
(1, 'MCC', 152031, 15),
(1, 'SE', 152031, 14),
(1, 'DDB', 152031, 12),
(1, 'SPCC', 152031, 11),
(1, 'NPL', 152031, 13),
(1, 'FRENCH', 152031, 12),
(1, 'MCC', 152032, 15),
(1, 'SE', 152032, 14),
(1, 'DDB', 152032, 12),
(1, 'SPCC', 152032, 11),
(1, 'NPL', 152032, 13),
(1, 'FRENCH', 152032, 12),
(1, 'MCC', 152033, 15),
(1, 'SE', 152033, 14),
(1, 'DDB', 152033, 12),
(1, 'SPCC', 152033, 11),
(1, 'NPL', 152033, 13),
(1, 'FRENCH', 152033, 12),
(1, 'MCC', 152034, 15),
(1, 'SE', 152034, 14),
(1, 'DDB', 152034, 12),
(1, 'SPCC', 152034, 11),
(1, 'NPL', 152034, 13),
(1, 'FRENCH', 152034, 12),
(1, 'MCC', 152035, 15),
(1, 'SE', 152035, 14),
(1, 'DDB', 152035, 12),
(1, 'SPCC', 152035, 11),
(1, 'NPL', 152035, 13),
(1, 'FRENCH', 152035, 12),
(1, 'MCC', 152036, 15),
(1, 'SE', 152036, 14),
(1, 'DDB', 152036, 12),
(1, 'SPCC', 152036, 11),
(1, 'NPL', 152036, 13),
(1, 'FRENCH', 152036, 12),
(1, 'MCC', 152037, 15),
(1, 'SE', 152037, 14),
(1, 'DDB', 152037, 12),
(1, 'SPCC', 152037, 11),
(1, 'NPL', 152037, 13),
(1, 'FRENCH', 152037, 12),
(1, 'MCC', 152038, 15),
(1, 'SE', 152038, 14),
(1, 'DDB', 152038, 12),
(1, 'SPCC', 152038, 11),
(1, 'NPL', 152038, 13),
(1, 'FRENCH', 152038, 12),
(1, 'MCC', 152039, 15),
(1, 'SE', 152039, 14),
(1, 'DDB', 152039, 12),
(1, 'SPCC', 152039, 11),
(1, 'NPL', 152039, 13),
(1, 'FRENCH', 152039, 12),
(1, 'MCC', 152040, 15),
(1, 'SE', 152040, 14),
(1, 'DDB', 152040, 12),
(1, 'SPCC', 152040, 11),
(1, 'NPL', 152040, 13),
(1, 'FRENCH', 152040, 12),
(1, 'MCC', 152041, 15),
(1, 'SE', 152041, 14),
(1, 'DDB', 152041, 12),
(1, 'SPCC', 152041, 11),
(1, 'NPL', 152041, 13),
(1, 'FRENCH', 152041, 12),
(1, 'MCC', 152042, 15),
(1, 'SE', 152042, 14),
(1, 'DDB', 152042, 12),
(1, 'SPCC', 152042, 11),
(1, 'NPL', 152042, 13),
(1, 'FRENCH', 152042, 12),
(1, 'MCC', 152043, 15),
(1, 'SE', 152043, 14),
(1, 'DDB', 152043, 12),
(1, 'SPCC', 152043, 11),
(1, 'NPL', 152043, 13),
(1, 'FRENCH', 152043, 12),
(1, 'MCC', 152044, 15),
(1, 'SE', 152044, 14),
(1, 'DDB', 152044, 12),
(1, 'SPCC', 152044, 11),
(1, 'NPL', 152044, 13),
(1, 'FRENCH', 152044, 12),
(1, 'MCC', 152045, 15),
(1, 'SE', 152045, 14),
(1, 'DDB', 152045, 12),
(1, 'SPCC', 152045, 11),
(1, 'NPL', 152045, 13),
(1, 'FRENCH', 152045, 12),
(1, 'MCC', 152046, 15),
(1, 'SE', 152046, 14),
(1, 'DDB', 152046, 12),
(1, 'SPCC', 152046, 11),
(1, 'NPL', 152046, 13),
(1, 'FRENCH', 152046, 12),
(1, 'MCC', 152047, 15),
(1, 'SE', 152047, 14),
(1, 'DDB', 152047, 12),
(1, 'SPCC', 152047, 11),
(1, 'NPL', 152047, 13),
(1, 'FRENCH', 152047, 12),
(1, 'MCC', 152048, 15),
(1, 'SE', 152048, 14),
(1, 'DDB', 152048, 12),
(1, 'SPCC', 152048, 11),
(1, 'NPL', 152048, 13),
(1, 'FRENCH', 152048, 12),
(1, 'MCC', 152049, 15),
(1, 'SE', 152049, 14),
(1, 'DDB', 152049, 12),
(1, 'SPCC', 152049, 11),
(1, 'NPL', 152049, 13),
(1, 'FRENCH', 152049, 12),
(1, 'MCC', 152050, 15),
(1, 'SE', 152050, 14),
(1, 'DDB', 152050, 12),
(1, 'SPCC', 152050, 11),
(1, 'NPL', 152050, 13),
(1, 'FRENCH', 152050, 12);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `timestamp` date NOT NULL,
  `priority` varchar(20) NOT NULL,
  `header` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`timestamp`, `priority`, `header`, `description`) VALUES
('2018-03-24', 'High', 'High Value Notice', 'really high value notice'),
('2018-03-24', 'Moderate', 'Moderate Value Notic', 'really mid value notice'),
('2018-03-24', 'Low', 'Low Value Notice', 'low value notice');

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `pid` int(20) NOT NULL,
  `user_pass` varchar(20) NOT NULL,
  `parent_pass` varchar(20) DEFAULT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`pid`, `user_pass`, `parent_pass`, `f_name`, `l_name`, `type`) VALUES
(1, '123', NULL, 'Harvey', 'Person', 'Administrator'),
(152025, '123', '321', 'Gavin', 'D\'souza', 'Student'),
(152026, '123', '321', 'Sanford', 'Mascarenhas', 'Student'),
(152027, '123', '321', 'Odion', 'Ferrao', 'Student'),
(152028, '123', '321', 'Karthik', 'Sunil', 'Student'),
(752025, '123', NULL, 'Shridhari', 'Iyer', 'Faculty'),
(752026, '123', NULL, 'Safa', 'Hamdare', 'Faculty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`subject`,`pid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
