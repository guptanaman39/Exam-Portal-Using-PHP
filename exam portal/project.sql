-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2017 at 11:53 AM
-- Server version: 5.7.18-log
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('guptanaman39@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5969ea1b57f6e', '5969ea1b76e31'),
('5969ea1bcb9cd', '5969ea1bd85ad'),
('5969ea1c23786', '5969ea1c3ae14'),
('5969ea1c82504', '5969ea1c897f3'),
('5969ea1cbb348', '5969ea1cc2622'),
('596cdc9c2183f', '596cdc9c355a0'),
('596cdca4449bb', '596cdca444a80'),
('596cdcb75e640', '596cdcb75e6f6'),
('596cdced70214', '596cdced7035c'),
('596cdd0d0d883', '596cdd0d0d91d'),
('596cde2db6426', '596cde2dc5b35'),
('596cde2e11952', '596cde2e1c5b6'),
('596cdf46035cf', '596cdf4618469'),
('596cdf46531a8', '596cdf465332e'),
('596cdf46746bd', '596cdf467bbc5'),
('596cdf46bf756', '596cdf46d348f'),
('596ce10a5a304', '596ce10a6c541'),
('596ce10ac9b81', '596ce10ae63f4'),
('596ce10b1d7d0', '596ce10b24157'),
('596ce10b76cf4', '596ce10b80285'),
('596ce10bae345', '596ce10bbbd76');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('596ce285537be', 'Renu', 'renugupta1170@gmail.com', 'Good Work', 'One of the best online quiz', '2017-07-17', '06:15:01pm'),
('596ce2b8b50ee', 'Sanjeev Gupta', 'sanjeevguptaai@gmail.com', 'Great', 'Hello', '2017-07-17', '06:15:52pm'),
('596ce2d98e4c8', 'Milind ', 'milindw97@gmail.com', 'Best', 'Keep it up!!', '2017-07-17', '06:16:25pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('guptanaman39@gmail.com', '5969e854d2d64', 25, 5, 5, 0, '2017-07-15 10:11:05'),
('renugupta1170@gmail.com', '596cdfbe34c55', 18, 5, 4, 1, '2017-07-17 16:18:17'),
('renugupta1170@gmail.com', '596cddcf35d22', 5, 2, 1, 1, '2017-07-17 16:18:38'),
('renugupta1170@gmail.com', '596cde7a4dc2f', 8, 4, 2, 2, '2017-07-21 06:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5969ea1b57f6e', 'Small swimming pool', '5969ea1b76e26'),
('5969ea1b57f6e', ' Parachutes for all passengers and crew', '5969ea1b76e31'),
('5969ea1b57f6e', ' Diner type restaurant', '5969ea1b76e34'),
('5969ea1b57f6e', ' Spiral staircase', '5969ea1b76e37'),
('5969ea1bcb9cd', 'Canadian Bombardier and Brazilian Embraer', '5969ea1bd85ad'),
('5969ea1bcb9cd', 'Canadian Bombardier and Scottish Fowles Air', '5969ea1bd85b7'),
('5969ea1bcb9cd', 'Russian Sukoi and Canadian Bombardier', '5969ea1bd85ba'),
('5969ea1bcb9cd', 'Russian Sukoi and Brazilian Embraer', '5969ea1bd85bd'),
('5969ea1c23786', 'Airplane ', '5969ea1c3ae09'),
('5969ea1c23786', 'Bicycle ', '5969ea1c3ae10'),
('5969ea1c23786', 'Car ', '5969ea1c3ae12'),
('5969ea1c23786', 'Motorcycle', '5969ea1c3ae14'),
('5969ea1c82504', 'Maxwell', '5969ea1c897e8'),
('5969ea1c82504', ' Bernoulli ', '5969ea1c897f3'),
('5969ea1c82504', 'Newton ', '5969ea1c897f6'),
('5969ea1c82504', 'Shannon', '5969ea1c897f9'),
('5969ea1cbb348', 'Atlas ', '5969ea1cc2618'),
('5969ea1cbb348', 'Hercules ', '5969ea1cc2622'),
('5969ea1cbb348', 'Spartacus ', '5969ea1cc2626'),
('5969ea1cbb348', 'Zeus', '5969ea1cc2629'),
('596cdc9c2183f', 'Kitty Hawk, N. C.  ', '596cdc9c35596'),
('596cdc9c2183f', 'The English Channel ', '596cdc9c355a0'),
('596cdc9c2183f', ' The Golden Gate Bridge ', '596cdc9c355a3'),
('596cdc9c2183f', 'Fargo, N. D', '596cdc9c355a6'),
('596cdca4449bb', 'Kitty Hawk, N. C.  ', '596cdca444a7c'),
('596cdca4449bb', 'The English Channel ', '596cdca444a80'),
('596cdca4449bb', ' The Golden Gate Bridge ', '596cdca444a81'),
('596cdca4449bb', 'Fargo, N. D', '596cdca444a83'),
('596cdcb75e640', 'Kitty Hawk, N. C.  ', '596cdcb75e6f4'),
('596cdcb75e640', 'The English Channel ', '596cdcb75e6f6'),
('596cdcb75e640', ' The Golden Gate Bridge ', '596cdcb75e6f7'),
('596cdcb75e640', 'Fargo, N. D', '596cdcb75e6f8'),
('596cdced70214', 'Kitty Hawk, N. C.  ', '596cdced70358'),
('596cdced70214', 'The English Channel ', '596cdced7035c'),
('596cdced70214', ' The Golden Gate Bridge ', '596cdced7035e'),
('596cdced70214', 'Fargo, N. D', '596cdced7035f'),
('596cdd0d0d883', 'Kitty Hawk, N. C.  ', '596cdd0d0d91b'),
('596cdd0d0d883', 'The English Channel ', '596cdd0d0d91d'),
('596cdd0d0d883', ' The Golden Gate Bridge ', '596cdd0d0d91e'),
('596cdd0d0d883', 'Fargo, N. D', '596cdd0d0d91f'),
('596cde2db6426', 'Chuck Yeager', '596cde2dc5b25'),
('596cde2db6426', 'Charles Lindbergh ', '596cde2dc5b35'),
('596cde2db6426', 'Orville Wright', '596cde2dc5b39'),
('596cde2db6426', 'Louis Bleriot', '596cde2dc5b3e'),
('596cde2e11952', 'Wilbur Wright ', '596cde2e1c5b6'),
('596cde2e11952', 'Louis Bleriot  ', '596cde2e1c5bf'),
('596cde2e11952', 'Amelia Earhart ', '596cde2e1c5c1'),
('596cde2e11952', 'Charles Lindbergh', '596cde2e1c5c4'),
('596cdf46035cf', 'Wilbur Wright', '596cdf461845c'),
('596cdf46035cf', 'Louis Bleriot', '596cdf4618469'),
('596cdf46035cf', 'Amelia Earhart', '596cdf461846c'),
('596cdf46035cf', 'Charles Lindbergh', '596cdf4618470'),
('596cdf46531a8', 'Throttle', '596cdf4653320'),
('596cdf46531a8', 'Ailerons', '596cdf4653328'),
('596cdf46531a8', 'Spoilers ', '596cdf465332b'),
('596cdf46531a8', 'Flaps', '596cdf465332e'),
('596cdf46746bd', 'Apollo', '596cdf467bbc5'),
('596cdf46746bd', 'Daedalus ', '596cdf467bbd3'),
('596cdf46746bd', 'Jupiter', '596cdf467bbd8'),
('596cdf46746bd', 'Icarus ', '596cdf467bbdc'),
('596cdf46bf756', 'Variometer', '596cdf46d3487'),
('596cdf46bf756', 'Altimeter', '596cdf46d348d'),
('596cdf46bf756', 'Airspeed indicator', '596cdf46d348f'),
('596cdf46bf756', 'Pitot tube', '596cdf46d3490'),
('596ce10a5a304', 'Foreign Finance Corporation', '596ce10a6c53b'),
('596ce10a5a304', 'Film Finance Corporation', '596ce10a6c541'),
('596ce10a5a304', 'Federation of Football Council ', '596ce10a6c543'),
('596ce10a5a304', 'None of the above', '596ce10a6c544'),
('596ce10ac9b81', '1957', '596ce10ae63ee'),
('596ce10ac9b81', '1964', '596ce10ae63f2'),
('596ce10ac9b81', '1984', '596ce10ae63f3'),
('596ce10ac9b81', '1967', '596ce10ae63f4'),
('596ce10b1d7d0', 'developed the telescope', '596ce10b2413e'),
('596ce10b1d7d0', 'discovered four satellites of Jupiter', '596ce10b2414d'),
('596ce10b1d7d0', 'discovered that the movement of pendulum produces a regular time measurement', '596ce10b24152'),
('596ce10b1d7d0', 'All of the above', '596ce10b24157'),
('596ce10b76cf4', '1839', '596ce10b80285'),
('596ce10b76cf4', '1845', '596ce10b8028b'),
('596ce10b76cf4', '1865', '596ce10b8028c'),
('596ce10b76cf4', '1832', '596ce10b8028e'),
('596ce10bae345', 'May 8 ', '596ce10bbbd76'),
('596ce10bae345', 'May 18', '596ce10bbbd84'),
('596ce10bae345', 'June 8 ', '596ce10bbbd89'),
('596ce10bae345', 'June 18', '596ce10bbbd8c');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5969e854d2d64', '5969ea1b57f6e', 'The early model Boeing 747 aircrafts featured a design that is no longer found in other commercial aircraft. What is it?', 4, 1),
('5969e854d2d64', '5969ea1bcb9cd', 'Behind Boeing and Airbus the third and forth biggest airplane manufacturers are ... ?', 4, 2),
('5969e854d2d64', '5969ea1c23786', 'According to a year 2000 worldwide transport study the mode of transport with the most deaths per billion journeys is ... ?', 4, 3),
('5969e854d2d64', '5969ea1c82504', 'The equations that relate velocity and air pressure and underpin wing design were developed by ... ?', 4, 4),
('5969e854d2d64', '5969ea1cbb348', 'The Lockheed C-130 transport plane is also known as ... ?', 4, 5),
('596cddcf35d22', '596cde2db6426', 'Who was the first person to fly in level flight faster than the speed of sound?\r\n', 4, 1),
('596cddcf35d22', '596cde2e11952', 'Who first crossed the English Channel in an airplane?', 4, 2),
('596cde7a4dc2f', '596cdf46035cf', 'Who first crossed the English Channel in an airplane?', 4, 1),
('596cde7a4dc2f', '596cdf46746bd', 'Which Greek figure flew too close to the sun and fell from the sky?', 4, 3),
('596cde7a4dc2f', '596cdf46bf756', 'What instrument do hang-glider pilots use to find a thermal?', 4, 4),
('596cdfbe34c55', '596ce10a5a304', 'FFC stands for', 4, 1),
('596cdfbe34c55', '596ce10ac9b81', 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in', 4, 2),
('596cdfbe34c55', '596ce10b1d7d0', 'Galileo was an Italian astronomer who', 4, 3),
('596cdfbe34c55', '596ce10b76cf4', 'First Afghan War took place in', 4, 4),
('596cdfbe34c55', '596ce10bae345', 'Each year World Red Cross and Red Crescent Day is celebrated on', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5969e854d2d64', 'Entrance Exam', 5, 0, 5, 10, '', '#exam', '2017-07-15 10:03:00'),
('596cddcf35d22', 'Inter Department', 5, 0, 2, 5, '', '#exam', '2017-07-17 15:54:55'),
('596cde7a4dc2f', 'Aviation ', 5, 1, 4, 10, '', '#exam', '2017-07-17 15:57:46'),
('596cdfbe34c55', 'General  Knowledge', 5, 2, 5, 5, '', '#exam', '2017-07-17 16:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sunnygkp10@gmail.com', 9, '2015-06-24 03:22:38'),
('avantika420@gmail.com', 8, '2015-06-23 14:49:39'),
('mi5@hollywood.com', 4, '2015-06-23 15:12:56'),
('nik1@gmail.com', 1, '2015-06-23 16:11:50'),
('renugupta1170@gmail.com', 35, '2017-07-21 06:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Avantika', 'F', 'Northcap University', 'avantika420@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Komal Sharma', 'F', 'NCU', 'komalpd2011@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Mohit', 'M', 'NSIT', 'mi5@google.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Mohak Dua', 'M', 'IIT ', 'mohak06@gmail.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('Nikunj', 'M', 'DU', 'nik1@gmail.com', 987, '202cb962ac59075b964b07152d234b70'),
('Rahul', 'M', 'Amity Unviersity', 'rahul123@gmail.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('Renu', 'F', 'NCU', 'renugupta1170@gmail.com', 9871597022, 'f1d5802e1cb64962d165f9252aafac27'),
('Nikita Taneja', 'F', 'Northcap Unviersity', 'taneja12@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Vikas', 'M', 'IIT', 'vikas@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
