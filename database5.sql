-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2023 at 09:34 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realetp3_timeclock`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `modified_by_ip` varchar(39) NOT NULL DEFAULT '',
  `modified_by_user` varchar(50) NOT NULL DEFAULT '',
  `modified_when` bigint(14) NOT NULL,
  `modified_from` bigint(14) NOT NULL,
  `modified_to` bigint(14) NOT NULL,
  `modified_why` varchar(250) NOT NULL DEFAULT '',
  `user_modified` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbversion`
--

CREATE TABLE `dbversion` (
  `dbversion` decimal(5,1) NOT NULL DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` smallint(3) NOT NULL,
  `empfullname` varchar(50) NOT NULL DEFAULT '',
  `tstamp` bigint(14) DEFAULT NULL,
  `employee_passwd` varchar(25) NOT NULL DEFAULT '',
  `displayname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(75) NOT NULL DEFAULT '',
  `groups` varchar(50) NOT NULL DEFAULT '',
  `office` varchar(50) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `reports` tinyint(1) NOT NULL DEFAULT '0',
  `time_admin` tinyint(1) NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `groupid` int(10) NOT NULL,
  `officeid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(1) NOT NULL,
  `employee_id` smallint(3) NOT NULL,
  `fullname` varchar(50) NOT NULL DEFAULT '',
  `inout` varchar(50) NOT NULL DEFAULT '',
  `timestamp` bigint(14) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `ipaddress` varchar(39) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `info-old`
--

CREATE TABLE `info-old` (
  `id` int(1) NOT NULL,
  `employee_id` smallint(3) NOT NULL,
  `fullname` varchar(50) NOT NULL DEFAULT '',
  `inout` varchar(50) NOT NULL DEFAULT '',
  `timestamp` bigint(14) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `ipaddress` varchar(39) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `metars`
--

CREATE TABLE `metars` (
  `metar` varchar(255) NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `station` varchar(4) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officename` varchar(50) NOT NULL DEFAULT '',
  `officeid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `punchlist`
--

CREATE TABLE `punchlist` (
  `punchitems` varchar(50) NOT NULL DEFAULT '',
  `color` varchar(7) NOT NULL DEFAULT '',
  `in_or_out` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`modified_when`),
  ADD UNIQUE KEY `modified_when` (`modified_when`);

--
-- Indexes for table `dbversion`
--
ALTER TABLE `dbversion`
  ADD PRIMARY KEY (`dbversion`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullname` (`fullname`);

--
-- Indexes for table `info-old`
--
ALTER TABLE `info-old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullname` (`fullname`);

--
-- Indexes for table `metars`
--
ALTER TABLE `metars`
  ADD PRIMARY KEY (`station`),
  ADD UNIQUE KEY `station` (`station`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`officeid`);

--
-- Indexes for table `punchlist`
--
ALTER TABLE `punchlist`
  ADD PRIMARY KEY (`punchitems`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` smallint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `groupid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info-old`
--
ALTER TABLE `info-old`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `officeid` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
