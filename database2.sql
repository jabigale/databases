-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2023 at 08:42 PM
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
-- Database: `realetp3_database2`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text NOT NULL,
  `postid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `flagger` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counselorpost`
--

CREATE TABLE `counselorpost` (
  `id` int(10) NOT NULL,
  `post` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(256) NOT NULL,
  `author` varchar(256) NOT NULL,
  `comments` int(10) NOT NULL DEFAULT '0',
  `views` int(10) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` tinyint(1) NOT NULL,
  `education` text NOT NULL,
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faith`
--

CREATE TABLE `faith` (
  `id` int(1) NOT NULL,
  `uid` int(1) NOT NULL,
  `desc` text NOT NULL,
  `group` text NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(1) NOT NULL,
  `uid` int(1) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `sortorder` varchar(256) NOT NULL,
  `group` varchar(256) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leisure`
--

CREATE TABLE `leisure` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `actice` tinyint(1) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberarticlereview`
--

CREATE TABLE `memberarticlereview` (
  `id` int(1) NOT NULL,
  `memberuid` int(11) NOT NULL,
  `atitle` varchar(256) NOT NULL,
  `article` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberhome`
--

CREATE TABLE `memberhome` (
  `id` int(10) NOT NULL,
  `title` varchar(256) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `sortorder` tinyint(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `uid` int(10) NOT NULL,
  `password` varchar(256) NOT NULL,
  `administrative` int(1) NOT NULL DEFAULT '0',
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(256) NOT NULL,
  `zip` int(5) NOT NULL,
  `church` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `posts` int(1) NULL,
  `birthday` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `occupation` varchar(256) NOT NULL,
  `position` varchar(256) NOT NULL,
  `education` tinyint(1) NOT NULL,
  `relationship` tinyint(1) NOT NULL,
  `children` tinyint(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membersnew`
--

CREATE TABLE `membersnew` (
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `pname` varchar(256) NOT NULL,
  `pemail` varchar(256) NOT NULL,
  `church` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(128) NOT NULL,
  `id` int(1) NOT NULL,
  `rand` bigint(20) NOT NULL,
  `churchstatus` tinyint(1) NOT NULL,
  `single` int(1) NOT NULL,
  `attemptedcontact` tinyint(1) NULL DEFAULT NULL,
  `approved` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberspending`
--

CREATE TABLE `memberspending` (
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `pname` varchar(256) NOT NULL,
  `pemail` varchar(256) NOT NULL,
  `church` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(128) NOT NULL,
  `id` int(1) NOT NULL,
  `rand` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberstatus`
--

CREATE TABLE `memberstatus` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `status` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` tinyint(1) NULL DEFAULT NULL,
  `flagger` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message-recipient`
--

CREATE TABLE `message-recipient` (
  `messageid` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recipient` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) NOT NULL,
  `to` int(10) NOT NULL,
  `from` int(10) NOT NULL,
  `message` text NOT NULL,
  `unread` int(1) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` int(11) NOT NULL DEFAULT '0',
  `flagger` int(11) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `userid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `postid` int(10) NOT NULL,
  `tag` text NOT NULL,
  `album` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE `quizes` (
  `id` int(1) NOT NULL,
  `uid` int(1) NOT NULL,
  `favorites` date NOT NULL,
  `faith` int(1) NOT NULL,
  `activities` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scripture`
--

CREATE TABLE `scripture` (
  `post` text NOT NULL,
  `author` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `flagger` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scripturecomments`
--

CREATE TABLE `scripturecomments` (
  `id` int(11) NOT NULL,
  `spid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` int(1) NOT NULL DEFAULT '0',
  `flagger` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scriptureinteract`
--

CREATE TABLE `scriptureinteract` (
  `verse` varchar(256) NOT NULL,
  `versecontent` text NOT NULL,
  `id` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solotime`
--

CREATE TABLE `solotime` (
  `post` text NOT NULL,
  `author` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `flagger` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solotimecomments`
--

CREATE TABLE `solotimecomments` (
  `id` int(11) NOT NULL,
  `stpid` int(1) NOT NULL,
  `uid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` int(1) NOT NULL DEFAULT '0',
  `flagger` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuscomments`
--

CREATE TABLE `statuscomments` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` int(1) NOT NULL DEFAULT '0',
  `flagger` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webchat_lines`
--

CREATE TABLE `webchat_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `gravatar` varchar(32) NOT NULL,
  `text` varchar(255) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weekendquest`
--

CREATE TABLE `weekendquest` (
  `post` text NOT NULL,
  `author` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `flagger` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weekendquestcomments`
--

CREATE TABLE `weekendquestcomments` (
  `id` int(11) NOT NULL,
  `spid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` int(1) NOT NULL DEFAULT '0',
  `flagger` int(1) NOT NULL,
  `inactive` tinyint(1) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counselorpost`
--
ALTER TABLE `counselorpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faith`
--
ALTER TABLE `faith`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leisure`
--
ALTER TABLE `leisure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberarticlereview`
--
ALTER TABLE `memberarticlereview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberhome`
--
ALTER TABLE `memberhome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `userid` (`uid`);

--
-- Indexes for table `membersnew`
--
ALTER TABLE `membersnew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberspending`
--
ALTER TABLE `memberspending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberstatus`
--
ALTER TABLE `memberstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scripture`
--
ALTER TABLE `scripture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scripturecomments`
--
ALTER TABLE `scripturecomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scriptureinteract`
--
ALTER TABLE `scriptureinteract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solotime`
--
ALTER TABLE `solotime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solotimecomments`
--
ALTER TABLE `solotimecomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuscomments`
--
ALTER TABLE `statuscomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webchat_lines`
--
ALTER TABLE `webchat_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ts` (`ts`);

--
-- Indexes for table `weekendquest`
--
ALTER TABLE `weekendquest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekendquestcomments`
--
ALTER TABLE `weekendquestcomments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `counselorpost`
--
ALTER TABLE `counselorpost`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leisure`
--
ALTER TABLE `leisure`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `memberarticlereview`
--
ALTER TABLE `memberarticlereview`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberhome`
--
ALTER TABLE `memberhome`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `membersnew`
--
ALTER TABLE `membersnew`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `memberspending`
--
ALTER TABLE `memberspending`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `memberstatus`
--
ALTER TABLE `memberstatus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `scripture`
--
ALTER TABLE `scripture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scripturecomments`
--
ALTER TABLE `scripturecomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scriptureinteract`
--
ALTER TABLE `scriptureinteract`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `solotime`
--
ALTER TABLE `solotime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `solotimecomments`
--
ALTER TABLE `solotimecomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `statuscomments`
--
ALTER TABLE `statuscomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `webchat_lines`
--
ALTER TABLE `webchat_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `weekendquest`
--
ALTER TABLE `weekendquest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weekendquestcomments`
--
ALTER TABLE `weekendquestcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
