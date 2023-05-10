-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2023 at 09:35 PM
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
-- Database: `realetp3_reward2`
--

-- --------------------------------------------------------

--
-- Table structure for table `adlinks`
--

CREATE TABLE `adlinks` (
  `id` int(1) NOT NULL,
  `amazon` text NOT NULL,
  `newegg` text NOT NULL,
  `bluehost` text NOT NULL,
  `shoptronics` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `advertisers`
--

CREATE TABLE `advertisers` (
  `id` int(3) NOT NULL,
  `advertiser` varchar(256) NOT NULL,
  `cookie` int(2) NOT NULL,
  `img1` varchar(128) NOT NULL,
  `img2` varchar(128) NOT NULL,
  `img3` varchar(128) NOT NULL,
  `link` text NOT NULL,
  `date` int(10) NOT NULL,
  `cat1` tinyint(1) NOT NULL,
  `cat2` tinyint(1) NOT NULL,
  `cat3` tinyint(1) NOT NULL,
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
  `cat21` tinyint(1) NOT NULL,
  `cat22` tinyint(1) NOT NULL,
  `cat23` tinyint(1) NOT NULL,
  `cat24` tinyint(1) NOT NULL,
  `cat25` tinyint(1) NOT NULL,
  `cat26` tinyint(1) NOT NULL,
  `cat27` tinyint(1) NOT NULL,
  `cat28` tinyint(1) NOT NULL,
  `cat29` tinyint(1) NOT NULL,
  `cat30` tinyint(1) NOT NULL,
  `cat31` tinyint(1) NOT NULL,
  `cat32` tinyint(1) NOT NULL,
  `cat33` tinyint(1) NOT NULL,
  `cat34` tinyint(1) NOT NULL,
  `cat35` tinyint(1) NOT NULL,
  `cat36` tinyint(1) NOT NULL,
  `cat37` tinyint(1) NOT NULL,
  `cat38` tinyint(1) NOT NULL,
  `cat39` tinyint(1) NOT NULL,
  `cat40` tinyint(1) NOT NULL,
  `cat41` tinyint(1) NOT NULL,
  `cat42` tinyint(1) NOT NULL,
  `cat43` tinyint(1) NOT NULL,
  `cat44` tinyint(1) NOT NULL,
  `cat45` tinyint(1) NOT NULL,
  `cat46` tinyint(1) NOT NULL,
  `cat47` tinyint(1) NOT NULL,
  `cat48` tinyint(1) NOT NULL,
  `cat49` tinyint(1) NOT NULL,
  `cat50` tinyint(1) NOT NULL,
  `cat51` tinyint(1) NOT NULL,
  `cat52` tinyint(1) NOT NULL,
  `cat53` tinyint(1) NOT NULL,
  `cat54` tinyint(1) NOT NULL,
  `cat55` tinyint(1) NOT NULL,
  `cat56` tinyint(1) NOT NULL,
  `cat57` tinyint(1) NOT NULL,
  `cat58` tinyint(1) NOT NULL,
  `cat59` tinyint(1) NOT NULL,
  `cat60` tinyint(1) NOT NULL,
  `cat61` tinyint(1) NOT NULL,
  `cat62` tinyint(1) NOT NULL,
  `cat63` tinyint(1) NOT NULL,
  `cat64` tinyint(1) NOT NULL,
  `cat65` tinyint(1) NOT NULL,
  `cat66` tinyint(1) NOT NULL,
  `cat67` tinyint(1) NOT NULL,
  `cat68` tinyint(1) NOT NULL,
  `cat69` tinyint(1) NOT NULL,
  `cat70` tinyint(1) NOT NULL,
  `cat71` tinyint(1) NOT NULL,
  `cat72` tinyint(1) NOT NULL,
  `cat73` tinyint(1) NOT NULL,
  `cat74` tinyint(1) NOT NULL,
  `cat75` tinyint(1) NOT NULL,
  `cat76` tinyint(1) NOT NULL,
  `cat77` tinyint(1) NOT NULL,
  `cat78` tinyint(1) NOT NULL,
  `cat79` tinyint(1) NOT NULL,
  `cat80` tinyint(1) NOT NULL,
  `cat81` tinyint(1) NOT NULL,
  `cat82` tinyint(1) NOT NULL,
  `cat83` tinyint(1) NOT NULL,
  `cat84` tinyint(1) NOT NULL,
  `cat85` tinyint(1) NOT NULL,
  `cat86` tinyint(1) NOT NULL,
  `cat87` tinyint(1) NOT NULL,
  `cat88` tinyint(1) NOT NULL,
  `cat89` tinyint(1) NOT NULL,
  `cat90` tinyint(1) NOT NULL,
  `cat91` tinyint(1) NOT NULL,
  `cat92` tinyint(1) NOT NULL,
  `cat93` tinyint(1) NOT NULL,
  `cat94` tinyint(1) NOT NULL,
  `cat95` tinyint(1) NOT NULL,
  `cat96` tinyint(1) NOT NULL,
  `cat97` tinyint(1) NOT NULL,
  `cat98` tinyint(1) NOT NULL,
  `cat99` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` smallint(2) NOT NULL,
  `category` varchar(128) NOT NULL,
  `mastercategory` tinyint(2) NOT NULL,
  `master` tinyint(2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `userid` int(6) NOT NULL,
  `amazon` int(10) NOT NULL,
  `newegg` int(10) NOT NULL,
  `bluehost` int(10) NOT NULL,
  `shoptronics` int(10) NOT NULL,
  `electrohome` int(10) NOT NULL,
  `nyrius` int(10) NOT NULL,
  `defender` int(10) NOT NULL,
  `fluance` int(10) NOT NULL,
  `levana` int(10) NOT NULL,
  `coffeeclub` int(10) NOT NULL,
  `rakuten` int(10) NOT NULL,
  `arrow` int(10) NOT NULL,
  `artisteer` int(10) NOT NULL,
  `bedhead` int(10) NOT NULL,
  `bestbuy` int(10) NOT NULL,
  `bigals` int(10) NOT NULL,
  `cafebritt` int(10) NOT NULL,
  `customtshirts` int(10) NOT NULL,
  `fitnessrepublic` int(10) NOT NULL,
  `fiverr` int(10) NOT NULL,
  `flexshopper` int(10) NOT NULL,
  `fujitsu` int(10) NOT NULL,
  `hostgator` int(10) NOT NULL,
  `hp` int(10) NOT NULL,
  `interstatebatteries` int(10) NOT NULL,
  `iweb` int(10) NOT NULL,
  `jacobtime` int(10) NOT NULL,
  `jemjem` int(10) NOT NULL,
  `jstrunkco` int(10) NOT NULL,
  `kobo` int(10) NOT NULL,
  `macofalltrades` int(10) NOT NULL,
  `macy` int(10) NOT NULL,
  `microsoft` int(10) NOT NULL,
  `reynspooner` int(10) NOT NULL,
  `officefurniture` int(10) NOT NULL,
  `onetravel` int(10) NOT NULL,
  `onlinesheetmusic` int(10) NOT NULL,
  `origin` int(10) NOT NULL,
  `pcrush` int(10) NOT NULL,
  `photos` int(10) NOT NULL,
  `rearview` int(10) NOT NULL,
  `seescandy` int(10) NOT NULL,
  `servermania` int(10) NOT NULL,
  `superstartickets` int(10) NOT NULL,
  `taobao` int(10) NOT NULL,
  `techarmor` int(10) NOT NULL,
  `tmart` int(10) NOT NULL,
  `tvliftcabinet` int(10) NOT NULL,
  `vudu` int(10) NOT NULL,
  `walmart` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(3) NOT NULL,
  `name` varchar(256) NOT NULL,
  `width` int(3) NOT NULL,
  `height` int(3) NOT NULL,
  `subfolder` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `userid` int(8) NOT NULL,
  `points` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tempusers`
--

CREATE TABLE `tempusers` (
  `userid` int(5) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `fbid` int(10) NOT NULL,
  `amazon` varchar(128) NOT NULL,
  `ebay` int(10) NOT NULL,
  `cj` int(10) NOT NULL,
  `key` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(5) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `fbid` int(10) NOT NULL,
  `amazon` varchar(128) NOT NULL,
  `ebay` int(10) NOT NULL,
  `cj` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisers`
--
ALTER TABLE `advertisers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisers`
--
ALTER TABLE `advertisers`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
