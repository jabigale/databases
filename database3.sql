-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2023 at 08:43 PM
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
-- Database: `realetp3_cbate2`
--

-- --------------------------------------------------------

--
-- Table structure for table `1`
--

CREATE TABLE `p1` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2`
--

CREATE TABLE `p2` (
  `id` int(10) NOT NULL,
  `q` int(10) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3`
--

CREATE TABLE `p3` (
  `id` int(10) NOT NULL,
  `q` int(10) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `4`
--

CREATE TABLE `p4` (
  `id` int(10) NOT NULL,
  `q` int(10) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `5`
--

CREATE TABLE `p5` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `34`
--

CREATE TABLE `p34` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `35`
--

CREATE TABLE `p35` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `36`
--

CREATE TABLE `p36` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `37`
--

CREATE TABLE `p37` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `38`
--

CREATE TABLE `p38` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `39`
--

CREATE TABLE `p39` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `41`
--

CREATE TABLE `p41` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `42`
--

CREATE TABLE `p42` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `43`
--

CREATE TABLE `p43` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `44`
--

CREATE TABLE `p44` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `45`
--

CREATE TABLE `p45` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `46`
--

CREATE TABLE `p46` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `47`
--

CREATE TABLE `p47` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `48`
--

CREATE TABLE `p48` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `49`
--

CREATE TABLE `p49` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `50`
--

CREATE TABLE `p50` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `51`
--

CREATE TABLE `p51` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `52`
--

CREATE TABLE `p52` (
  `id` int(10) NOT NULL,
  `userid` int(4) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `53`
--

CREATE TABLE `p53` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `54`
--

CREATE TABLE `p54` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `55`
--

CREATE TABLE `p55` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `56`
--

CREATE TABLE `p56` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `57`
--

CREATE TABLE `p57` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `58`
--

CREATE TABLE `p58` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `59`
--

CREATE TABLE `p59` (
  `id` int(10) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(1) NOT NULL,
  `link` text NOT NULL,
  `sdate` int(4) NOT NULL,
  `edate` int(4) NOT NULL,
  `vendor` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adsv`
--

CREATE TABLE `adsv` (
  `id` int(1) NOT NULL,
  `link` text NOT NULL,
  `sdate` int(4) NOT NULL,
  `edate` int(4) NOT NULL,
  `vendor` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1`
--

CREATE TABLE `c1` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c2`
--

CREATE TABLE `c2` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c3`
--

CREATE TABLE `c3` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c4`
--

CREATE TABLE `c4` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c5`
--

CREATE TABLE `c5` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c34`
--

CREATE TABLE `c34` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c35`
--

CREATE TABLE `c35` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c36`
--

CREATE TABLE `c36` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c37`
--

CREATE TABLE `c37` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c38`
--

CREATE TABLE `c38` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c39`
--

CREATE TABLE `c39` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c41`
--

CREATE TABLE `c41` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c42`
--

CREATE TABLE `c42` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c43`
--

CREATE TABLE `c43` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c44`
--

CREATE TABLE `c44` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c45`
--

CREATE TABLE `c45` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c46`
--

CREATE TABLE `c46` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c47`
--

CREATE TABLE `c47` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c48`
--

CREATE TABLE `c48` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c49`
--

CREATE TABLE `c49` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c50`
--

CREATE TABLE `c50` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c51`
--

CREATE TABLE `c51` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c52`
--

CREATE TABLE `c52` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c53`
--

CREATE TABLE `c53` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c54`
--

CREATE TABLE `c54` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c55`
--

CREATE TABLE `c55` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c56`
--

CREATE TABLE `c56` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c57`
--

CREATE TABLE `c57` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c58`
--

CREATE TABLE `c58` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c59`
--

CREATE TABLE `c59` (
  `id` int(10) NOT NULL,
  `pid` int(1) NOT NULL,
  `userid` varchar(256) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `flag` tinyint(1) DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL,
  `flagger` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(2) NOT NULL,
  `category` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chatters`
--

CREATE TABLE `chatters` (
  `name` text NOT NULL,
  `seen` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `name` text NOT NULL,
  `msg` text NOT NULL,
  `posted` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paginate`
--

CREATE TABLE `paginate` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts50`
--

CREATE TABLE `posts50` (
  `id` int(4) NOT NULL,
  `fbid` int(10) NOT NULL,
  `posts` int(2) NOT NULL DEFAULT '1',
  `ncat` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `posts` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(10) NOT NULL,
  `cat1` tinyint(1) NOT NULL DEFAULT '0',
  `cat2` tinyint(1) NOT NULL DEFAULT '0',
  `cat3` tinyint(1) NOT NULL DEFAULT '0',
  `cat4` tinyint(1) NOT NULL,
  `cat5` tinyint(1) NOT NULL,
  `cat6` tinyint(1) NOT NULL,
  `cat7` tinyint(1) NOT NULL,
  `cat8` tinyint(1) NOT NULL,
  `cat9` tinyint(1) NOT NULL,
  `cat10` tinyint(1) NOT NULL,
  `cat11` tinyint(1) NOT NULL,
  `cat12` tinyint(1) NOT NULL,
  `cat13` tinyint(1) NOT NULL,
  `cat14` tinyint(1) NOT NULL,
  `cat15` tinyint(1) NOT NULL,
  `cat16` tinyint(1) NOT NULL,
  `cat17` tinyint(1) NOT NULL,
  `cat18` tinyint(1) NOT NULL,
  `cat19` tinyint(1) NOT NULL,
  `cat20` tinyint(1) NOT NULL,
  `fbid` int(11) NOT NULL,
  `lcdate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) NOT NULL,
  `email` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `fbid` bigint(10) NOT NULL,
  `username` varchar(256) NOT NULL,
  `avatar` int(3) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salt` varchar(256) NOT NULL,
  `validated` tinyint(1) NOT NULL DEFAULT '0',
  `vsalt` varchar(256) NOT NULL,
  `usalt` varchar(256) NOT NULL,
  `totalposts` int(10) NOT NULL,
  `thismonthposts` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `startedchabates` int(4) NOT NULL,
  `lastactive` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flagged` tinyint(2) NOT NULL,
  `flagothers` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1`
--
ALTER TABLE `1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2`
--
ALTER TABLE `2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `3`
--
ALTER TABLE `3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `4`
--
ALTER TABLE `4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `5`
--
ALTER TABLE `5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `34`
--
ALTER TABLE `34`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `35`
--
ALTER TABLE `35`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `36`
--
ALTER TABLE `36`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `37`
--
ALTER TABLE `37`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `38`
--
ALTER TABLE `38`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `39`
--
ALTER TABLE `39`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `41`
--
ALTER TABLE `41`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `42`
--
ALTER TABLE `42`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `43`
--
ALTER TABLE `43`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `44`
--
ALTER TABLE `44`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `45`
--
ALTER TABLE `45`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `46`
--
ALTER TABLE `46`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `47`
--
ALTER TABLE `47`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `48`
--
ALTER TABLE `48`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `49`
--
ALTER TABLE `49`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `50`
--
ALTER TABLE `50`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `51`
--
ALTER TABLE `51`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `52`
--
ALTER TABLE `52`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `53`
--
ALTER TABLE `53`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `54`
--
ALTER TABLE `54`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `55`
--
ALTER TABLE `55`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `56`
--
ALTER TABLE `56`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `57`
--
ALTER TABLE `57`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `58`
--
ALTER TABLE `58`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `59`
--
ALTER TABLE `59`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adsv`
--
ALTER TABLE `adsv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c1`
--
ALTER TABLE `c1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c2`
--
ALTER TABLE `c2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c3`
--
ALTER TABLE `c3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c4`
--
ALTER TABLE `c4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c5`
--
ALTER TABLE `c5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c34`
--
ALTER TABLE `c34`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c35`
--
ALTER TABLE `c35`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c36`
--
ALTER TABLE `c36`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c37`
--
ALTER TABLE `c37`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c38`
--
ALTER TABLE `c38`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c39`
--
ALTER TABLE `c39`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c41`
--
ALTER TABLE `c41`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c42`
--
ALTER TABLE `c42`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c43`
--
ALTER TABLE `c43`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c44`
--
ALTER TABLE `c44`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c45`
--
ALTER TABLE `c45`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c46`
--
ALTER TABLE `c46`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c47`
--
ALTER TABLE `c47`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c48`
--
ALTER TABLE `c48`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c49`
--
ALTER TABLE `c49`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c50`
--
ALTER TABLE `c50`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c51`
--
ALTER TABLE `c51`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c52`
--
ALTER TABLE `c52`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c53`
--
ALTER TABLE `c53`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c54`
--
ALTER TABLE `c54`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c55`
--
ALTER TABLE `c55`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c56`
--
ALTER TABLE `c56`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c57`
--
ALTER TABLE `c57`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c58`
--
ALTER TABLE `c58`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c59`
--
ALTER TABLE `c59`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paginate`
--
ALTER TABLE `paginate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts50`
--
ALTER TABLE `posts50`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1`
--
ALTER TABLE `1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `2`
--
ALTER TABLE `2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3`
--
ALTER TABLE `3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4`
--
ALTER TABLE `4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5`
--
ALTER TABLE `5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `34`
--
ALTER TABLE `34`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `35`
--
ALTER TABLE `35`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `36`
--
ALTER TABLE `36`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `37`
--
ALTER TABLE `37`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `38`
--
ALTER TABLE `38`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `39`
--
ALTER TABLE `39`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `41`
--
ALTER TABLE `41`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `42`
--
ALTER TABLE `42`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `43`
--
ALTER TABLE `43`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `44`
--
ALTER TABLE `44`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `45`
--
ALTER TABLE `45`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `46`
--
ALTER TABLE `46`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `47`
--
ALTER TABLE `47`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `48`
--
ALTER TABLE `48`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `49`
--
ALTER TABLE `49`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `50`
--
ALTER TABLE `50`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `51`
--
ALTER TABLE `51`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `52`
--
ALTER TABLE `52`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `53`
--
ALTER TABLE `53`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `54`
--
ALTER TABLE `54`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `55`
--
ALTER TABLE `55`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `56`
--
ALTER TABLE `56`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `57`
--
ALTER TABLE `57`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `58`
--
ALTER TABLE `58`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `59`
--
ALTER TABLE `59`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adsv`
--
ALTER TABLE `adsv`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `c1`
--
ALTER TABLE `c1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c2`
--
ALTER TABLE `c2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c3`
--
ALTER TABLE `c3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c4`
--
ALTER TABLE `c4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c5`
--
ALTER TABLE `c5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c34`
--
ALTER TABLE `c34`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c35`
--
ALTER TABLE `c35`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c36`
--
ALTER TABLE `c36`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c37`
--
ALTER TABLE `c37`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c38`
--
ALTER TABLE `c38`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c39`
--
ALTER TABLE `c39`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c41`
--
ALTER TABLE `c41`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c42`
--
ALTER TABLE `c42`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c43`
--
ALTER TABLE `c43`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c44`
--
ALTER TABLE `c44`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c45`
--
ALTER TABLE `c45`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c46`
--
ALTER TABLE `c46`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c47`
--
ALTER TABLE `c47`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c48`
--
ALTER TABLE `c48`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c49`
--
ALTER TABLE `c49`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c50`
--
ALTER TABLE `c50`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c51`
--
ALTER TABLE `c51`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c52`
--
ALTER TABLE `c52`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c53`
--
ALTER TABLE `c53`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c54`
--
ALTER TABLE `c54`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c55`
--
ALTER TABLE `c55`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c56`
--
ALTER TABLE `c56`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c57`
--
ALTER TABLE `c57`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c58`
--
ALTER TABLE `c58`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c59`
--
ALTER TABLE `c59`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `paginate`
--
ALTER TABLE `paginate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `posts50`
--
ALTER TABLE `posts50`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10016;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
