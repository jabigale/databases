-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2023 at 08:48 PM
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


-- --------------------------------------------------------

--
-- Table structure for table `1`
--

CREATE TABLE `c1` (
  `id` tinyint(3) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2`
--

CREATE TABLE `c2` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3`
--

CREATE TABLE `c3` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `4`
--

CREATE TABLE `c4` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `5`
--

CREATE TABLE `c5` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `19`
--

CREATE TABLE `c19` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `20`
--

CREATE TABLE `c20` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `21`
--

CREATE TABLE `c21` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `22`
--

CREATE TABLE `c22` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `23`
--

CREATE TABLE `c23` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `24`
--

CREATE TABLE `c24` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `25`
--

CREATE TABLE `c25` (
  `id` tinyint(2) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` tinyint(1) NOT NULL,
  `win7` int(1) NOT NULL,
  `programming` int(1) NOT NULL,
  `windowsinstall` int(1) NOT NULL,
  `hosting` int(1) NOT NULL,
  `viruses` int(1) NOT NULL,
  `data` int(1) NOT NULL,
  `title` varchar(256) NOT NULL,
  `post` text NOT NULL,
  `author` varchar(256) NOT NULL,
  `date` varchar(256) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogaffiliate`
--

CREATE TABLE `blogaffiliate` (
  `id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `text` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `affiliate` varchar(256) NOT NULL,
  `company` varchar(256) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int(2) NOT NULL,
  `captcha` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` tinyint(1) NOT NULL,
  `imageid` varchar(128) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `1` tinyint(1) NOT NULL,
  `fontcolor` varchar(6) NOT NULL,
  `gamming` tinyint(1) NOT NULL,
  `graphics` tinyint(1) NOT NULL,
  `engineering` tinyint(1) NOT NULL,
  `record` tinyint(1) NOT NULL,
  `playdvd` tinyint(1) NOT NULL,
  `playbluray` tinyint(1) NOT NULL,
  `picture-store` tinyint(1) NOT NULL,
  `music-store` tinyint(1) NOT NULL,
  `video-store` tinyint(1) NOT NULL,
  `office-store` tinyint(1) NOT NULL,
  `graphic-store` tinyint(1) NOT NULL,
  `extra-store` tinyint(1) NOT NULL,
  `screensize` varchar(256) NOT NULL,
  `screenid` tinyint(1) NOT NULL,
  `webcam` tinyint(1) NOT NULL,
  `bluetooth` tinyint(1) NOT NULL,
  `mediacard` tinyint(1) NOT NULL,
  `vga` tinyint(1) NOT NULL,
  `dvi` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `price` tinyint(1) NOT NULL,
  `actualprice` float NOT NULL,
  `model` varchar(256) NOT NULL,
  `make` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `vendor` varchar(256) NOT NULL,
  `cpuspeed` varchar(127) NOT NULL,
  `cputype` varchar(256) NOT NULL,
  `cpucore` tinyint(1) NOT NULL,
  `ram` varchar(256) NOT NULL,
  `hdd` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `condition` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collegeinfo`
--

CREATE TABLE `collegeinfo` (
  `id` smallint(2) NOT NULL,
  `college` varchar(128) NOT NULL,
  `collegename` varchar(100) NOT NULL,
  `color1` varchar(6) NOT NULL,
  `color2` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collegemacs`
--

CREATE TABLE `collegemacs` (
  `id` int(1) NOT NULL,
  `price` int(4) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `desktopresult`
--

CREATE TABLE `desktopresult` (
  `id` varchar(256) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internet` tinyint(1) NOT NULL,
  `office_programs` tinyint(1) NOT NULL,
  `gamming` tinyint(1) NOT NULL,
  `graphics` tinyint(1) NOT NULL,
  `engineering` tinyint(1) NOT NULL,
  `record` tinyint(1) NOT NULL,
  `playdvd` tinyint(1) NOT NULL,
  `playbluray` tinyint(1) NOT NULL,
  `media_server` tinyint(1) NOT NULL,
  `picture-store` tinyint(1) NOT NULL,
  `music-store` tinyint(1) NOT NULL,
  `video-store` tinyint(1) NOT NULL,
  `office-store` tinyint(1) NOT NULL,
  `graphic-store` tinyint(1) NOT NULL,
  `extra-store` tinyint(1) NOT NULL,
  `screenid` tinyint(1) NOT NULL,
  `bluetooth` tinyint(1) NOT NULL,
  `mediacard` tinyint(1) NOT NULL,
  `dvi` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `price` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `desktops`
--

CREATE TABLE `desktops` (
  `id` tinyint(1) NOT NULL,
  `imageid` varchar(128) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` tinyint(1) NOT NULL,
  `personal` tinyint(1) NOT NULL,
  `internet` tinyint(1) NOT NULL,
  `office_programs` tinyint(1) NOT NULL,
  `gamming` tinyint(1) NOT NULL,
  `graphics` tinyint(1) NOT NULL,
  `engineering` tinyint(1) NOT NULL,
  `record` tinyint(1) NOT NULL,
  `playdvd` tinyint(1) NOT NULL,
  `playbluray` tinyint(1) NOT NULL,
  `mediaserver` tinyint(1) NOT NULL,
  `picture-store` tinyint(1) NOT NULL,
  `music-store` tinyint(1) NOT NULL,
  `video-store` tinyint(1) NOT NULL,
  `office-store` tinyint(1) NOT NULL,
  `graphic-store` tinyint(1) NOT NULL,
  `extra-store` tinyint(1) NOT NULL,
  `bluetooth` tinyint(1) NOT NULL,
  `mediacard` tinyint(1) NOT NULL,
  `dvi` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `wireless` tinyint(1) NOT NULL,
  `webcam` tinyint(1) NOT NULL,
  `touchscreen` tinyint(1) NOT NULL,
  `price` tinyint(1) NOT NULL,
  `actualprice` float NOT NULL,
  `model` varchar(256) NOT NULL,
  `make` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `vendor` varchar(256) NOT NULL,
  `cpuspeed` varchar(127) NOT NULL,
  `cputype` varchar(256) NOT NULL,
  `cpucore` tinyint(1) NOT NULL,
  `ram` varchar(256) NOT NULL,
  `hdd` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `condition` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drawing`
--

CREATE TABLE `drawing` (
  `id` int(6) NOT NULL,
  `email` varchar(256) NOT NULL,
  `computer` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `id` tinyint(2) NOT NULL,
  `fact` text NOT NULL,
  `source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptopdisplay`
--

CREATE TABLE `laptopdisplay` (
  `id` int(1) NOT NULL,
  `name` varchar(256) NOT NULL,
  `price` int(3) NOT NULL,
  `ratings` int(4) NOT NULL,
  `screen` int(2) NOT NULL,
  `brand` int(1) NOT NULL,
  `asins` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptopresult`
--

CREATE TABLE `laptopresult` (
  `id` varchar(256) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `personal` tinyint(1) NOT NULL,
  `internet` tinyint(1) NOT NULL,
  `office_programs` tinyint(1) NOT NULL,
  `gamming` tinyint(1) NOT NULL,
  `graphics` tinyint(1) NOT NULL,
  `engineering` tinyint(1) NOT NULL,
  `record` tinyint(1) NOT NULL,
  `playdvd` tinyint(1) NOT NULL,
  `playbluray` tinyint(1) NOT NULL,
  `media_server` tinyint(1) NOT NULL,
  `picture-store` tinyint(1) NOT NULL,
  `music-store` tinyint(1) NOT NULL,
  `video-store` tinyint(1) NOT NULL,
  `office-store` tinyint(1) NOT NULL,
  `graphic-store` tinyint(1) NOT NULL,
  `extra-store` tinyint(1) NOT NULL,
  `screenid` tinyint(1) NOT NULL,
  `webcam` tinyint(1) NOT NULL,
  `bluetooth` tinyint(1) NOT NULL,
  `mediacard` tinyint(1) NOT NULL,
  `vga` tinyint(1) NOT NULL,
  `dvi` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `blkeyboard` tinyint(4) DEFAULT '0',
  `touch` tinyint(4) NOT NULL DEFAULT '0',
  `price` tinyint(1) NOT NULL,
  `min` int(3) NOT NULL DEFAULT '0',
  `max` int(3) NOT NULL DEFAULT '2000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptopreview`
--

CREATE TABLE `laptopreview` (
  `id` tinyint(1) NOT NULL,
  `imageid` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(256) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptopreviews`
--

CREATE TABLE `laptopreviews` (
  `id` int(11) NOT NULL,
  `review` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `id` int(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `imageid` varchar(128) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internet` tinyint(1) NOT NULL,
  `office_programs` tinyint(1) NOT NULL,
  `gamming` tinyint(1) NOT NULL,
  `graphics` tinyint(1) NOT NULL,
  `engineering` tinyint(1) NOT NULL,
  `record` tinyint(1) NOT NULL,
  `playdvd` tinyint(1) NOT NULL,
  `playbluray` tinyint(1) NOT NULL,
  `picture-store` tinyint(1) NOT NULL,
  `music-store` tinyint(1) NOT NULL,
  `video-store` tinyint(1) NOT NULL,
  `office-store` tinyint(1) NOT NULL,
  `graphic-store` tinyint(1) NOT NULL,
  `extra-store` tinyint(1) NOT NULL,
  `screensize` varchar(256) NOT NULL,
  `screenid` tinyint(1) NOT NULL,
  `webcam` tinyint(1) NOT NULL,
  `bluetooth` tinyint(1) NOT NULL,
  `mediacard` tinyint(1) NOT NULL,
  `vga` tinyint(1) NOT NULL,
  `dvi` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `price` tinyint(1) NOT NULL,
  `actualprice` float NOT NULL,
  `model` varchar(256) NOT NULL,
  `make` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `cpuspeed` varchar(127) NOT NULL,
  `cputype` varchar(256) NOT NULL,
  `cpucore` tinyint(1) NOT NULL,
  `link` text NOT NULL,
  `imglink` text NOT NULL,
  `hddsdd` tinyint(1) NOT NULL,
  `hdmin` varchar(128) NOT NULL,
  `hdmax` varchar(128) NOT NULL,
  `memmin` tinyint(4) NOT NULL,
  `memmax` tinyint(4) NOT NULL,
  `cpumodel` varchar(256) NOT NULL,
  `cpufamily` varchar(256) NOT NULL,
  `batterylife` tinyint(2) NOT NULL,
  `reviews` mediumint(1) NOT NULL,
  `laptopmodel` varchar(128) NOT NULL,
  `touch` tinyint(1) NOT NULL,
  `blkeyboard` tinyint(1) NOT NULL,
  `os` tinyint(1) NOT NULL DEFAULT '1',
  `fulllink` text,
  `shortlink` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptoptableresult`
--

CREATE TABLE `laptoptableresult` (
  `id` int(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internet` tinyint(1) NOT NULL,
  `office_programs` tinyint(1) NOT NULL,
  `gamming` tinyint(1) NOT NULL,
  `graphics` tinyint(1) NOT NULL,
  `engineering` tinyint(1) NOT NULL,
  `record` tinyint(1) NOT NULL,
  `playdvd` tinyint(1) NOT NULL,
  `playbluray` tinyint(1) NOT NULL,
  `picture-store` tinyint(1) NOT NULL,
  `music-store` tinyint(1) NOT NULL,
  `video-store` tinyint(1) NOT NULL,
  `office-store` tinyint(1) NOT NULL,
  `graphic-store` tinyint(1) NOT NULL,
  `extra-store` tinyint(1) NOT NULL,
  `screensize` varchar(256) NOT NULL,
  `screenid` tinyint(1) NOT NULL,
  `webcam` tinyint(1) NOT NULL,
  `bluetooth` tinyint(1) NOT NULL,
  `mediacard` tinyint(1) NOT NULL,
  `vga` tinyint(1) NOT NULL,
  `dvi` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `price` tinyint(1) NOT NULL,
  `actualprice` float NOT NULL,
  `model` varchar(256) NOT NULL,
  `make` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `cpuspeed` varchar(127) NOT NULL,
  `cputype` varchar(256) NOT NULL,
  `cpucore` tinyint(1) NOT NULL,
  `link` text NOT NULL,
  `imglink` text NOT NULL,
  `hddsdd` tinyint(1) NOT NULL,
  `hdmin` varchar(128) NOT NULL,
  `hdmax` varchar(128) NOT NULL,
  `memmin` tinyint(4) NOT NULL,
  `memmax` tinyint(4) NOT NULL,
  `cpumodel` varchar(256) NOT NULL,
  `cpufamily` varchar(256) NOT NULL,
  `batterylife` tinyint(2) NOT NULL,
  `reviews` smallint(1) NOT NULL,
  `laptopmodel` varchar(128) NOT NULL,
  `touch` tinyint(1) NOT NULL,
  `blkeyboard` tinyint(1) NOT NULL,
  `os` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newcomments`
--

CREATE TABLE `newcomments` (
  `id` tinyint(1) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `postid` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personalshopper`
--

CREATE TABLE `personalshopper` (
  `id` varchar(256) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` tinyint(1) NOT NULL,
  `deviceuse` text NOT NULL,
  `internet` tinyint(1) NOT NULL,
  `office_programs` tinyint(1) NOT NULL,
  `gamming` tinyint(1) NOT NULL,
  `graphics` tinyint(1) NOT NULL,
  `engineering` tinyint(1) NOT NULL,
  `record` tinyint(1) NOT NULL,
  `playdvd` tinyint(1) NOT NULL,
  `playbluray` tinyint(1) NOT NULL,
  `media_server` tinyint(1) NOT NULL,
  `picture-store` tinyint(1) NOT NULL,
  `music-store` tinyint(1) NOT NULL,
  `video-store` tinyint(1) NOT NULL,
  `office-store` tinyint(1) NOT NULL,
  `graphic-store` tinyint(1) NOT NULL,
  `extra-store` tinyint(1) NOT NULL,
  `screenid` tinyint(1) NOT NULL,
  `webcam` tinyint(1) NOT NULL,
  `bluetooth` tinyint(1) NOT NULL,
  `mediacard` tinyint(1) NOT NULL,
  `vga` tinyint(1) NOT NULL,
  `dvi` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `pricemin` varchar(256) NOT NULL,
  `pricemax` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

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
-- Indexes for table `19`
--
ALTER TABLE `19`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `20`
--
ALTER TABLE `20`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `21`
--
ALTER TABLE `21`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `22`
--
ALTER TABLE `22`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `23`
--
ALTER TABLE `23`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `24`
--
ALTER TABLE `24`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `25`
--
ALTER TABLE `25`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogaffiliate`
--
ALTER TABLE `blogaffiliate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desktopresult`
--
ALTER TABLE `desktopresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desktops`
--
ALTER TABLE `desktops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drawing`
--
ALTER TABLE `drawing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptopdisplay`
--
ALTER TABLE `laptopdisplay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptopresult`
--
ALTER TABLE `laptopresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptopreview`
--
ALTER TABLE `laptopreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptopreviews`
--
ALTER TABLE `laptopreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptoptableresult`
--
ALTER TABLE `laptoptableresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newcomments`
--
ALTER TABLE `newcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personalshopper`
--
ALTER TABLE `personalshopper`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1`
--
ALTER TABLE `1`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2`
--
ALTER TABLE `2`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3`
--
ALTER TABLE `3`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4`
--
ALTER TABLE `4`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5`
--
ALTER TABLE `5`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `19`
--
ALTER TABLE `19`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `20`
--
ALTER TABLE `20`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `21`
--
ALTER TABLE `21`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `22`
--
ALTER TABLE `22`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `23`
--
ALTER TABLE `23`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `24`
--
ALTER TABLE `24`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `25`
--
ALTER TABLE `25`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogaffiliate`
--
ALTER TABLE `blogaffiliate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `desktops`
--
ALTER TABLE `desktops`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drawing`
--
ALTER TABLE `drawing`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptopdisplay`
--
ALTER TABLE `laptopdisplay`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptopreview`
--
ALTER TABLE `laptopreview`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptoptableresult`
--
ALTER TABLE `laptoptableresult`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newcomments`
--
ALTER TABLE `newcomments`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
