-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 03, 2023 at 07:23 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
CREATE TABLE IF NOT EXISTS `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `description` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `description`, `time`) VALUES
(12, 'Concept Note Submission', 'Submit your concept notes before the 13th week of the second sememster', '2017-03-03 14:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `conceptnote`
--

DROP TABLE IF EXISTS `conceptnote`;
CREATE TABLE IF NOT EXISTS `conceptnote` (
  `conceptid` int(15) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(13) NOT NULL,
  `proposedtitle` varchar(100) NOT NULL,
  `expectedoutput` varchar(50) NOT NULL,
  `conceptfile` varchar(100) NOT NULL,
  `supervisor` varchar(20) NOT NULL,
  `reccomended` varchar(16) NOT NULL,
  `approval` varchar(20) DEFAULT NULL,
  `time` timestamp NOT NULL,
  PRIMARY KEY (`conceptid`),
  KEY `supervisor` (`supervisor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conceptnote`
--

INSERT INTO `conceptnote` (`conceptid`, `studentid`, `proposedtitle`, `expectedoutput`, `conceptfile`, `supervisor`, `reccomended`, `approval`, `time`) VALUES
(1, '2014-04-02775', 'Makulaji', 'Mobile App', '', 'cvictor', 'waiting', 'waiting', '2017-04-19 09:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `grp`
--

DROP TABLE IF EXISTS `grp`;
CREATE TABLE IF NOT EXISTS `grp` (
  `grpId` int(7) NOT NULL,
  `grpNo` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(11) NOT NULL,
  `empId` varchar(20) NOT NULL,
  PRIMARY KEY (`grpId`),
  KEY `empId` (`empId`),
  KEY `grpNo` (`grpNo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grp`
--

INSERT INTO `grp` (`grpId`, `grpNo`, `approval`, `empId`) VALUES
(6482, 10, 1, 'mtunga'),
(9721, 15, 1, 'mtunga'),
(10657, 21, 1, 'hkimaro'),
(13199, 27, 1, 'hkalisti'),
(14887, 18, 1, 'hkimaro'),
(16872, 31, 1, 'cmushi'),
(20087, 22, 1, 'hkimaro'),
(24083, 17, 1, 'hkimaro'),
(28728, 25, 1, 'hkalisti'),
(32413, 28, 1, 'cmushi'),
(32761, 35, 1, 'cmushi'),
(35328, 23, 1, 'hkimaro'),
(38879, 20, 1, 'hkimaro'),
(46281, 29, 1, 'cmushi'),
(53347, 33, 1, 'cmushi'),
(61580, 34, 1, 'cmushi'),
(70876, 14, 1, 'mtunga'),
(72576, 16, 1, 'hkimaro'),
(79481, 30, 1, 'cmushi'),
(87859, 24, 1, 'hkimaro'),
(88508, 12, 1, 'mtunga'),
(89959, 11, 1, 'mtunga'),
(90207, 26, 1, 'hkalisti'),
(91401, 32, 1, 'cmushi'),
(96052, 13, 1, 'mtunga'),
(99337, 19, 1, 'hkimaro'),
(2017003, 3, 1, 'cvictor'),
(2017005, 5, 1, 'cmushi'),
(2017042, 1, 1, 'hkalisti');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `user` varchar(13) NOT NULL,
  `passwrd` varchar(45) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`user`),
  KEY `empId` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `passwrd`, `role`) VALUES
('coordinator', 'coordinator', 0),
('hkimaro', '2f4ce07dc44d40051a58acfd5a4839c6', 0),
('mtunga', '6f0ae3c152b033b7237808cd1a74814f', 1),
('student', 'student', 2),
('student1', 'student1', 2),
('supervisor', 'supervisor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `idlogs` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp(6) NULL DEFAULT NULL,
  `progressreport_reportId` int(5) NOT NULL,
  PRIMARY KEY (`idlogs`),
  KEY `fk_logs_progressreport1_idx` (`progressreport_reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `grpNo` int(3) NOT NULL,
  `regNo` varchar(13) NOT NULL,
  PRIMARY KEY (`grpNo`,`regNo`),
  KEY `grpNo` (`grpNo`,`regNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`grpNo`, `regNo`) VALUES
(1, '2014-04-02750'),
(1, '2014-04-02758'),
(3, '2014-04-02775'),
(3, '2014-04-02801'),
(5, '2014-04-02753'),
(5, '2014-04-02765'),
(5, '2014-04-02862'),
(10, ''),
(10, '2014-04-02753'),
(10, '2014-04-02765'),
(10, '2014-04-02776'),
(10, '2014-04-02854'),
(10, '2014-04-02941'),
(11, '2014-04-02915'),
(11, '2014-04-02926'),
(11, '2014-04-02928'),
(17, ''),
(17, '2014-04-02753'),
(17, '2014-04-02941'),
(18, '2014-04-02765'),
(18, '2014-04-02776'),
(18, '2014-04-02854'),
(19, '2014-04-02765'),
(19, '2014-04-02776'),
(19, '2014-04-02854'),
(20, '2014-04-02765'),
(20, '2014-04-02776'),
(20, '2014-04-02854'),
(21, '2014-04-02765'),
(21, '2014-04-02776'),
(21, '2014-04-02854'),
(22, '2014-04-02765'),
(22, '2014-04-02776'),
(22, '2014-04-02854'),
(23, '2014-04-02765'),
(23, '2014-04-02776'),
(23, '2014-04-02854'),
(24, '2014-04-02765'),
(24, '2014-04-02776'),
(24, '2014-04-02854'),
(25, '2014-04-02765'),
(25, '2014-04-02776'),
(25, '2014-04-02854'),
(29, '2014-04-02765'),
(29, '2014-04-02776'),
(29, '2014-04-02854'),
(30, '2014-04-02765'),
(30, '2014-04-02776'),
(30, '2014-04-02854'),
(31, '2014-04-02765'),
(31, '2014-04-02776'),
(31, '2014-04-02854'),
(32, '2014-04-02765'),
(32, '2014-04-02776'),
(32, '2014-04-02854'),
(33, '2014-04-02765'),
(33, '2014-04-02776'),
(33, '2014-04-02854'),
(34, '2014-04-02765'),
(34, '2014-04-02776'),
(34, '2014-04-02854'),
(35, ''),
(35, '2014-04-02753'),
(35, '2014-04-02941');

-- --------------------------------------------------------

--
-- Table structure for table `pastproject`
--

DROP TABLE IF EXISTS `pastproject`;
CREATE TABLE IF NOT EXISTS `pastproject` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `year` year(4) NOT NULL,
  `description` text NOT NULL,
  `output` text NOT NULL,
  `pastprojectfile` varchar(60) NOT NULL,
  `supervisorId` varchar(20) NOT NULL,
  `students` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supervisorId` (`supervisorId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pastproject`
--

INSERT INTO `pastproject` (`id`, `title`, `year`, `description`, `output`, `pastprojectfile`, `supervisorId`, `students`) VALUES
(1, 'Book Swappers', 2015, 'A site for book lovers to showcase their book libraries and swap books with other readers', 'Web App', '..\\past-projects\\BookSwappers.pdf', 'cvictor', '2015004');

-- --------------------------------------------------------

--
-- Table structure for table `progressreport`
--

DROP TABLE IF EXISTS `progressreport`;
CREATE TABLE IF NOT EXISTS `progressreport` (
  `reportId` int(5) NOT NULL AUTO_INCREMENT,
  `projectId` int(5) NOT NULL,
  `review` varchar(100) NOT NULL,
  `sem1_progress` varchar(100) DEFAULT NULL,
  `sem1_final` varchar(100) DEFAULT NULL,
  `sem2_progress` varchar(100) DEFAULT NULL,
  `sem2_final` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reportId`),
  KEY `projectId` (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progressreport`
--

INSERT INTO `progressreport` (`reportId`, `projectId`, `review`, `sem1_progress`, `sem1_final`, `sem2_progress`, `sem2_final`) VALUES
(2, 2, '../review-reports/Qn 2.docx', '../finalsub-reports/Bunnies-From-the-Future-FKB-MG-Books.pdf', '', '../finalsub-reports/multi-screen-consumer-whitepaper_research-studies.pdf', '../finalsub-reports/how to win friends and influence people.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `projectId` int(5) NOT NULL AUTO_INCREMENT,
  `projectTitle` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `output` text NOT NULL,
  `grpNo` int(3) NOT NULL,
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`projectId`, `projectTitle`, `description`, `output`, `grpNo`) VALUES
(1, 'LGA\'s Land Valuation and Taxation Management System\r\n\r\n', 'An application that assists local governments in maintaining land and their respective tax collection data.', 'A web app', 1),
(2, 'Final Year Project Management System', 'A system that manages content for final year projects carried out by finalist students at CoICT', 'Web app system', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `regNo` varchar(13) NOT NULL,
  `fName` varchar(25) NOT NULL,
  `mName` varchar(25) DEFAULT NULL,
  `lName` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `course` varchar(50) NOT NULL,
  PRIMARY KEY (`regNo`),
  UNIQUE KEY `regNo` (`regNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggestedgroup`
--

DROP TABLE IF EXISTS `suggestedgroup`;
CREATE TABLE IF NOT EXISTS `suggestedgroup` (
  `sugId` int(11) NOT NULL AUTO_INCREMENT,
  `fMember` varchar(13) NOT NULL,
  `sMember` varchar(13) NOT NULL,
  `tMember` varchar(13) NOT NULL,
  `approval` varchar(13) NOT NULL,
  UNIQUE KEY `suggestedGroup` (`sugId`)
) ENGINE=InnoDB AUTO_INCREMENT=32438 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestedgroup`
--

INSERT INTO `suggestedgroup` (`sugId`, `fMember`, `sMember`, `tMember`, `approval`) VALUES
(32431, '2014-04-02801', '2014-04-02763', '', 'approved'),
(32433, '2014-04-02750', '2014-04-02812', '2014-04-02758', 'disapproved'),
(32434, '2014-04-02941', '2014-04-02753', '', 'assigned'),
(32435, '2014-04-02941', '2014-04-02854', '2014-04-02776', 'approved'),
(32437, '2014-04-02854', '2014-04-02765', '2014-04-02776', 'assigned');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
CREATE TABLE IF NOT EXISTS `supervisor` (
  `empId` varchar(20) NOT NULL,
  `fName` varchar(25) NOT NULL,
  `lName` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phoneNo` varchar(15) NOT NULL,
  `expertise` varchar(50) NOT NULL,
  `office` varchar(5) NOT NULL,
  PRIMARY KEY (`empId`),
  KEY `empId` (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`empId`, `fName`, `lName`, `email`, `phoneNo`, `expertise`, `office`) VALUES
('cvictor', 'Collins', 'Victor', 'c.victor@udsm.ac.tz', '0754545454', 'Internet Security', 'A20'),
('hkalisti', 'Mr. Henry', 'Kalisti', 'kanry2@gmail.com', '0758010101', 'Database', 'B108'),
('hkimaro', 'Dr. Honest', 'Kimaro', '', '', 'IOT', ''),
('kfrank', 'Mr. Kennedy', 'Frank', 'kenfactz@gmail.com', '', 'Data Science', ''),
('kkapis', 'Dr. Kosmas', 'Kapis', '', '', 'IT Security', 'A23'),
('mtunga', 'Ms. Mahadia', 'Tunga', 'mahadiatunga@gmail.com', '', 'Software Development', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conceptnote`
--
ALTER TABLE `conceptnote`
  ADD CONSTRAINT `conceptnote_ibfk_1` FOREIGN KEY (`supervisor`) REFERENCES `supervisor` (`empId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_logs_progressreport1` FOREIGN KEY (`progressreport_reportId`) REFERENCES `progressreport` (`reportId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`grpNo`) REFERENCES `grp` (`grpNo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `pastproject`
--
ALTER TABLE `pastproject`
  ADD CONSTRAINT `pastproject_ibfk_1` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`empId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `progressreport`
--
ALTER TABLE `progressreport`
  ADD CONSTRAINT `progressreport_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `project` (`projectId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
