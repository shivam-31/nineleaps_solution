-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 03, 2017 at 05:34 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `employeeDetails`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeeDetails`
--

CREATE TABLE IF NOT EXISTS `employeeDetails` (
  `employeeID` int(11) NOT NULL AUTO_INCREMENT,
  `employeeName` varchar(50) NOT NULL,
  `employeeDesignation` varchar(50) NOT NULL,
  `reportingManager` varchar(50) NOT NULL,
  `orderNo` int(11) NOT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `employeeDetails`
--

INSERT INTO `employeeDetails` (`employeeID`, `employeeName`, `employeeDesignation`, `reportingManager`, `orderNo`) VALUES
(1, 'Deepa', 'CEO', '', 1),
(10, 'Shivam Singh', 'CTO', 'Deepa', 2),
(11, 'Ashish Kumar', 'Technical Lead', 'Shivam Singh', 3),
(12, 'Sudanshu Gupta', 'Intern', 'Ashish Kumar', 16),
(13, 'Akhil Sharma', 'Intern', 'Ashish Kumar', 16),
(14, 'Deeptee', 'Database Architect', 'Shivam Singh', 4),
(15, 'Shifali Mahajan', 'Web Designer', 'Shivam Singh', 4),
(16, 'Shivani Singh', 'Cloud Architect', 'Shivam Singh', 4),
(17, 'Henry Gupta', 'Human Resources Manager', 'Deepa', 2),
(18, 'Johit Sharma', 'Intern', 'Ashish Kumar', 16),
(19, 'Genny Gupta', 'Technical Content Writer', 'Ashish Kumar', 4),
(20, 'Mayank Gupta', 'Intern', 'Ashish Kumar', 16),
(21, 'Shiv Singh', 'Android Developer', 'Ashish Kumar', 4),
(22, 'Sham Sundar', 'Penetration Tester', 'Ashish Kumar', 4),
(23, 'Madhu', 'Development (Head)', 'Ashish Kumar', 4),
(24, 'Raghav Khajuria', 'Developer', 'Madhu', 4),
(25, 'Himanshu Pandotra', 'Developer', 'Madhu', 4),
(26, 'Anish Chowdhary', 'Developer', 'Madhu', 4),
(27, 'Ayush Mahajan', 'Developer', 'Madhu', 4),
(28, 'Naomi Wang', 'Graphic Designer', 'Shifali Mahajan', 5),
(29, 'Arun Jately', 'CFO', 'Deepa', 2),
(30, 'Hardik Pandya', 'Hardware Engineer', 'Ashish Kumar', 4),
(31, 'Kumud Solanki', 'Intern', 'Ashish Kumar', 16),
(32, 'Raghu', 'Finance Officer', 'Arun Jately', 4),
(33, 'Ram', 'Finance Officer', 'Arun Jately', 4),
(34, 'Naina', 'Finance Officer', 'Arun Jately', 4),
(35, 'Heena', 'Recruitment Officer', 'Henry Gupta', 4),
(36, 'Meena', 'Recruitment Officer', 'Henry Gupta', 4),
(37, 'Taniya', 'Recruitment Officer', 'Henry Gupta', 4);

-- --------------------------------------------------------

--
-- Table structure for table `employeeOrder`
--

CREATE TABLE IF NOT EXISTS `employeeOrder` (
  `designation` varchar(50) NOT NULL,
  `orderNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeOrder`
--

INSERT INTO `employeeOrder` (`designation`, `orderNo`) VALUES
('CEO', 1),
('CTO', 2),
('CFO', 2),
('Technical Lead', 3),
('Web Designer', 4),
('Human Resources Manager', 2),
('Intern', 16),
('Android Developer', 4),
(' Technical Content Writer', 4),
('Penetration Tester', 4),
(' Development (Head)', 4),
('Hardware Engineer', 4),
('Graphic Designer', 5),
('Developer', 4),
('Database Architect', 4),
('Cloud Architect', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
