-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2023 at 03:25 PM
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
-- Database: `realetp3_mtc2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountbalance`
--

CREATE TABLE `accountbalance` (
  `accountid` int(11) NOT NULL DEFAULT '0',
  `store1` decimal(11,2) DEFAULT NULL,
  `store2` decimal(11,2) DEFAULT NULL,
  `store3` decimal(11,2) DEFAULT NULL,
  `store4` decimal(11,2) DEFAULT NULL,
  `store5` decimal(11,2) DEFAULT NULL,
  `store6` decimal(11,2) DEFAULT NULL,
  `store7` decimal(11,2) DEFAULT NULL,
  `store8` decimal(11,2) DEFAULT NULL,
  `store9` decimal(11,2) DEFAULT NULL,
  `store10` decimal(11,2) DEFAULT NULL,
  `store1date` date DEFAULT NULL,
  `store2date` date DEFAULT NULL,
  `store3date` date DEFAULT NULL,
  `store4date` date DEFAULT NULL,
  `store5date` date DEFAULT NULL,
  `store6date` date DEFAULT NULL,
  `store7date` date DEFAULT NULL,
  `store8date` date DEFAULT NULL,
  `store9date` date DEFAULT NULL,
  `store10date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounting-journal`
--

CREATE TABLE `accounting-journal` (
  `id` int(10) NOT NULL,
  `journaltype` smallint(1) NOT NULL,
  `transid` int(10) NOT NULL,
  `accountid` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `siteid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `fullname` varchar(256) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(4) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `phone1` varchar(24) DEFAULT NULL,
  `sphone1` bigint(7) DEFAULT NULL,
  `phone2` varchar(24) DEFAULT NULL,
  `sphone2` bigint(7) DEFAULT NULL,
  `phone3` varchar(24) DEFAULT NULL,
  `sphone3` bigint(7) DEFAULT NULL,
  `phone4` varchar(24) DEFAULT NULL,
  `sphone4` bigint(7) DEFAULT NULL,
  `contact1` varchar(100) DEFAULT NULL,
  `contact2` varchar(100) DEFAULT NULL,
  `contact3` varchar(100) DEFAULT NULL,
  `contact4` varchar(100) DEFAULT NULL,
  `fax` varchar(24) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `creditlimit` int(5) DEFAULT NULL,
  `taxid` varchar(28) DEFAULT NULL,
  `priceclass` tinyint(1) DEFAULT NULL,
  `taxclass` tinyint(1) DEFAULT NULL,
  `RequirePO` tinyint(1) NOT NULL DEFAULT '0',
  `retail` tinyint(1) NOT NULL DEFAULT '0',
  `commercial` tinyint(1) NOT NULL DEFAULT '0',
  `vendor` tinyint(1) NOT NULL DEFAULT '0',
  `distributor` tinyint(1) NOT NULL DEFAULT '0',
  `nationalaccount` tinyint(1) NOT NULL DEFAULT '0',
  `affiliate` tinyint(1) NOT NULL DEFAULT '0',
  `oldtype` tinyint(4) NOT NULL,
  `oldcatid` tinyint(1) NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `statement` tinyint(1) NOT NULL DEFAULT '0',
  `salesmanid` tinyint(1) NOT NULL DEFAULT '0',
  `nonsig` tinyint(1) DEFAULT NULL,
  `nationalaccountcanceldate` date DEFAULT NULL,
  `taxnumexpiredate` date DEFAULT NULL,
  `allowcod` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(1000) DEFAULT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udatedate` int(10) DEFAULT NULL,
  `lastactivedate` date DEFAULT NULL,
  `siteid` tinyint(4) DEFAULT '0',
  `vendor1099flag` tinyint(4) DEFAULT '0',
  `password` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_type`
--

CREATE TABLE `accounts_type` (
  `id` tinyint(4) NOT NULL,
  `type` varchar(100) NOT NULL,
  `code` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_priceclass`
--

CREATE TABLE `account_priceclass` (
  `id` tinyint(4) NOT NULL,
  `class_type` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_taxtype`
--

CREATE TABLE `account_taxtype` (
  `id` tinyint(4) NOT NULL,
  `tax_type` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_line_items`
--

CREATE TABLE `ci_line_items` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `linenumber` smallint(1) NOT NULL,
  `qty` decimal(11,2) DEFAULT NULL,
  `amount` decimal(9,2) NOT NULL,
  `partid` int(11) NOT NULL,
  `packageid` int(11) DEFAULT NULL,
  `serviceid` int(11) NOT NULL,
  `comment` text,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `fet` decimal(9,2) DEFAULT NULL,
  `totallineamount` decimal(9,2) DEFAULT NULL,
  `lineitem_typeid` tinyint(1) NOT NULL,
  `lineitem_subtypeid` smallint(3) NOT NULL,
  `lineitem_saletype` tinyint(1) NOT NULL,
  `hours` decimal(5,2) DEFAULT NULL,
  `mechid` smallint(2) DEFAULT NULL,
  `basecost` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_tax_trans`
--

CREATE TABLE `ci_tax_trans` (
  `id` int(11) NOT NULL,
  `transid` int(11) NOT NULL,
  `taxamount` decimal(11,2) NOT NULL,
  `lineid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customeremail`
--

CREATE TABLE `customeremail` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `invoiceid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customerinteractions`
--

CREATE TABLE `customerinteractions` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `userid` smallint(6) DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL,
  `mileagein` bigint(20) DEFAULT NULL,
  `mileageout` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `location` smallint(6) NOT NULL,
  `creationdate` datetime NOT NULL,
  `invoicedate` date NOT NULL,
  `voiddate` date DEFAULT NULL,
  `subtotal` decimal(9,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(9,2) NOT NULL DEFAULT '0.00',
  `total` decimal(9,2) NOT NULL DEFAULT '0.00',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `abvname` varchar(256) NOT NULL,
  `abvvehicle` varchar(256) NOT NULL,
  `ponumber` varchar(255) DEFAULT NULL,
  `checknum` int(10) DEFAULT NULL,
  `checkaccountid` int(10) DEFAULT NULL,
  `vendor_po` int(11) DEFAULT NULL,
  `vendor_invoice` varchar(255) DEFAULT NULL,
  `taxgroup` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` smallint(6) NOT NULL,
  `name` varchar(128) NOT NULL,
  `username` varchar(56) NOT NULL,
  `password` varchar(256) NOT NULL,
  `birthday` date NOT NULL,
  `showbirthday` tinyint(1) NOT NULL DEFAULT '1',
  `hiredate` date NOT NULL,
  `position` varchar(56) NOT NULL,
  `sales` tinyint(4) NOT NULL DEFAULT '0',
  `payrate` int(11) NOT NULL,
  `paytype` tinyint(4) NOT NULL,
  `basepay` int(11) NOT NULL,
  `overtimerate` smallint(6) NOT NULL,
  `timeclock` tinyint(4) NOT NULL DEFAULT '0',
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `session` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` smallint(2) NOT NULL,
  `storeid` varchar(128) NOT NULL,
  `topbgcolor1` varchar(25) NOT NULL,
  `topbgcolor2` varchar(64) NOT NULL,
  `textfont` tinyint(4) NOT NULL,
  `textsize` tinyint(4) NOT NULL,
  `bgcolor` varchar(128) NOT NULL,
  `open` time NOT NULL,
  `close` time NOT NULL,
  `schedule1` tinyint(4) NOT NULL,
  `schedule2` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `interested`
--

CREATE TABLE `interested` (
  `id` int(11) NOT NULL,
  `text1` text NOT NULL,
  `text2` text NOT NULL,
  `text3` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `subtypeid` smallint(6) DEFAULT NULL,
  `part_number` varchar(16) DEFAULT NULL,
  `quicksearch` varchar(20) DEFAULT NULL,
  `model` varchar(53) DEFAULT NULL,
  `width` varchar(7) DEFAULT NULL,
  `ratio` varchar(10) DEFAULT NULL,
  `rim` varchar(6) DEFAULT NULL,
  `manid` varchar(2) DEFAULT NULL,
  `fet` varchar(4) DEFAULT NULL,
  `load_index` smallint(4) DEFAULT NULL,
  `speed` varchar(3) DEFAULT NULL,
  `treadwear` varchar(3) DEFAULT NULL,
  `traction` varchar(1) DEFAULT NULL,
  `tempurature` varchar(1) DEFAULT NULL,
  `warranty` varchar(6) DEFAULT NULL,
  `sidewall` varchar(10) DEFAULT NULL,
  `ply` varchar(35) DEFAULT NULL,
  `plyid` tinyint(4) NOT NULL DEFAULT '1',
  `treaddepth` varchar(4) DEFAULT NULL,
  `lastactivedate` varchar(10) DEFAULT NULL,
  `userid` varchar(2) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `non-stock` varchar(4) DEFAULT NULL,
  `weight` varchar(3) DEFAULT NULL,
  `loc1_onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc2_onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc3_onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc4_onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc5_onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc6_onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc7_onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc8_onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc9_onhand` int(11) NOT NULL DEFAULT '0',
  `loc10_onhand` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory2019-top100`
--

CREATE TABLE `inventory2019-top100` (
  `id` smallint(6) NOT NULL,
  `inventoryid` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `brandid` smallint(6) NOT NULL,
  `qty` smallint(6) NOT NULL,
  `loc1qty` smallint(6) NOT NULL,
  `loc2qty` smallint(6) NOT NULL,
  `loc3qty` smallint(6) NOT NULL,
  `loc4qty` smallint(6) NOT NULL,
  `loc5qty` smallint(6) NOT NULL,
  `loc6qty` smallint(6) NOT NULL,
  `loc7qty` smallint(6) NOT NULL,
  `loc8qty` smallint(6) NOT NULL,
  `loc9qty` smallint(6) NOT NULL,
  `loc10qty` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_loadrange`
--

CREATE TABLE `inventory_loadrange` (
  `id` tinyint(4) NOT NULL,
  `ply` int(11) NOT NULL,
  `range` varchar(25) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_price`
--

CREATE TABLE `inventory_price` (
  `id` int(5) NOT NULL DEFAULT '0',
  `partid` int(5) DEFAULT NULL,
  `siteid` int(1) DEFAULT NULL,
  `onhand` int(3) DEFAULT NULL,
  `obligated` int(1) DEFAULT NULL,
  `keeponhand` int(2) DEFAULT NULL,
  `totqtyreceived` decimal(6,2) DEFAULT NULL,
  `receiveddate` varchar(10) DEFAULT NULL,
  `lastcost` varchar(7) DEFAULT NULL,
  `lastcostdate` varchar(10) DEFAULT NULL,
  `baseamount` varchar(7) DEFAULT NULL,
  `baseamountdate` varchar(10) DEFAULT NULL,
  `price1` varchar(5) DEFAULT NULL,
  `price2` varchar(5) DEFAULT NULL,
  `price3` varchar(5) DEFAULT NULL,
  `price4` varchar(5) DEFAULT NULL,
  `price5` decimal(3,2) DEFAULT NULL,
  `price6` decimal(3,2) DEFAULT NULL,
  `msrp` int(1) DEFAULT NULL,
  `commissionflag` int(1) DEFAULT NULL,
  `commission` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_sidewall`
--

CREATE TABLE `inventory_sidewall` (
  `id` tinyint(4) NOT NULL,
  `code` varchar(24) NOT NULL,
  `description` text NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_subtype`
--

CREATE TABLE `inventory_subtype` (
  `id` varchar(3) NOT NULL DEFAULT '',
  `typeid` varchar(2) DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `editable` varchar(1) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `id` int(11) NOT NULL,
  `partid` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qty` smallint(6) NOT NULL,
  `transactiontype` tinyint(4) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `location` smallint(6) NOT NULL,
  `amount` varchar(5) NOT NULL,
  `voided` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_type`
--

CREATE TABLE `inventory_type` (
  `id` tinyint(1) NOT NULL,
  `value` varchar(100) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `userid` smallint(6) DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL,
  `mileagein` bigint(20) DEFAULT NULL,
  `mileageout` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `location` smallint(6) NOT NULL,
  `creationdate` datetime NOT NULL,
  `invoicedate` date NOT NULL,
  `voiddate` date DEFAULT NULL,
  `subtotal` decimal(9,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(9,2) NOT NULL DEFAULT '0.00',
  `total` decimal(9,2) NOT NULL DEFAULT '0.00',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `abvname` varchar(256) NOT NULL,
  `abvvehicle` varchar(256) NOT NULL,
  `ponumber` varchar(255) DEFAULT NULL,
  `checknum` int(10) DEFAULT NULL,
  `checkaccountid` int(10) DEFAULT NULL,
  `vendor_po` int(11) DEFAULT NULL,
  `vendor_invoice` varchar(255) DEFAULT NULL,
  `taxgroup` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoiceautocomplete`
--

CREATE TABLE `invoiceautocomplete` (
  `id` smallint(1) NOT NULL,
  `comment` text NOT NULL,
  `usage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_type`
--

CREATE TABLE `invoice_type` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name-plural` varchar(255) NOT NULL,
  `abv` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `journal` tinyint(1) NOT NULL,
  `journaltypeid` tinyint(1) NOT NULL,
  `accounttype` tinyint(1) NOT NULL,
  `printcopies` tinyint(1) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lineitem_saletype`
--

CREATE TABLE `lineitem_saletype` (
  `id` varchar(2) NOT NULL DEFAULT '',
  `description` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lineitem_type`
--

CREATE TABLE `lineitem_type` (
  `id` varchar(2) NOT NULL DEFAULT '',
  `description` varchar(25) DEFAULT NULL,
  `display` varchar(1) DEFAULT NULL,
  `inventory` varchar(1) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `editable` varchar(1) DEFAULT NULL,
  `field` varchar(1) DEFAULT NULL,
  `invoiceacctid` varchar(3) DEFAULT NULL,
  `billacctid` varchar(3) DEFAULT NULL,
  `taxable` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `line_items`
--

CREATE TABLE `line_items` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `linenumber` smallint(1) NOT NULL,
  `qty` decimal(11,2) DEFAULT NULL,
  `amount` decimal(9,2) NOT NULL,
  `partid` int(11) NOT NULL,
  `packageid` int(11) DEFAULT NULL,
  `serviceid` int(11) NOT NULL,
  `comment` text,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `fet` decimal(9,2) DEFAULT NULL,
  `totallineamount` decimal(9,2) DEFAULT NULL,
  `lineitem_typeid` tinyint(1) NOT NULL,
  `lineitem_subtypeid` smallint(3) NOT NULL,
  `lineitem_saletype` tinyint(1) NOT NULL,
  `hours` decimal(5,2) DEFAULT NULL,
  `mechid` smallint(2) DEFAULT NULL,
  `basecost` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loc1schedule`
--

CREATE TABLE `loc1schedule` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `hour` smallint(6) NOT NULL,
  `length` tinyint(4) NOT NULL,
  `thread` int(11) NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `return` datetime NOT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `userid` smallint(6) DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL,
  `mileagein` bigint(20) DEFAULT NULL,
  `mileageout` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `location` smallint(6) NOT NULL,
  `creationdate` datetime NOT NULL,
  `invoicedate` date NOT NULL,
  `voiddate` date DEFAULT NULL,
  `subtotal` decimal(9,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(9,2) NOT NULL DEFAULT '0.00',
  `total` decimal(9,2) NOT NULL DEFAULT '0.00',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `abvname` varchar(256) NOT NULL,
  `abvvehicle` varchar(256) NOT NULL,
  `ponumber` varchar(255) DEFAULT NULL,
  `checknum` int(10) DEFAULT NULL,
  `checkaccountid` int(10) DEFAULT NULL,
  `vendor_po` int(11) DEFAULT NULL,
  `vendor_invoice` varchar(255) DEFAULT NULL,
  `taxgroup` tinyint(1) DEFAULT NULL,
  `insertdate` date NOT NULL,
  `tires` tinyint(1) DEFAULT NULL,
  `lof` tinyint(1) DEFAULT NULL,
  `brakes` tinyint(1) DEFAULT NULL,
  `shocks` tinyint(1) DEFAULT NULL,
  `align` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` smallint(6) NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zip` int(5) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `fax` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `storenum` varchar(54) NOT NULL DEFAULT '0',
  `storename` varchar(256) NOT NULL,
  `displaystorename` varchar(256) NOT NULL,
  `topbgcolor1` varchar(6) NOT NULL,
  `topbgcolor2` varchar(6) NOT NULL,
  `bgcolor` varchar(6) NOT NULL,
  `textfont` tinyint(1) NOT NULL,
  `textsize` tinyint(1) NOT NULL,
  `open` time NOT NULL,
  `close` time NOT NULL,
  `schedule1` tinyint(1) NOT NULL,
  `schedule2` tinyint(1) NOT NULL,
  `schedule3` tinyint(1) NOT NULL,
  `schedule4` tinyint(1) NOT NULL,
  `schedule5` tinyint(1) NOT NULL,
  `schedule6` tinyint(1) NOT NULL,
  `schedule7` tinyint(1) NOT NULL,
  `schedule8` tinyint(1) NOT NULL,
  `schedule9` tinyint(1) NOT NULL,
  `schedule10` tinyint(1) NOT NULL,
  `schedule1bays` tinyint(1) NOT NULL,
  `schedule2bays` tinyint(1) NOT NULL,
  `schedule3bays` tinyint(1) NOT NULL,
  `schedule4bays` tinyint(1) NOT NULL,
  `schedule5bays` tinyint(1) NOT NULL,
  `schedule6bays` tinyint(1) NOT NULL,
  `schedule7bays` tinyint(1) NOT NULL,
  `schedule8bays` tinyint(1) NOT NULL,
  `schedule9bays` tinyint(1) NOT NULL,
  `schedule10bays` tinyint(1) NOT NULL,
  `schedule1hour` varchar(6) NOT NULL,
  `schedule2hour` varchar(6) NOT NULL,
  `schedule3hour` varchar(6) NOT NULL,
  `schedule4hour` varchar(6) NOT NULL,
  `schedule5hour` varchar(6) NOT NULL,
  `schedule6hour` varchar(6) NOT NULL,
  `schedule7hour` varchar(6) NOT NULL,
  `schedule8hour` varchar(6) NOT NULL,
  `schedule9hour` varchar(6) NOT NULL,
  `schedule10hour` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notelink`
--

CREATE TABLE `notelink` (
  `id` int(11) NOT NULL,
  `transid` int(11) NOT NULL,
  `notetype` tinyint(4) NOT NULL,
  `printflag` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `notetype` tinyint(4) NOT NULL,
  `note` text NOT NULL,
  `userid` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `code` varchar(25) NOT NULL,
  `title` varchar(256) NOT NULL,
  `amount` smallint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `startqty` smallint(4) NOT NULL DEFAULT '0',
  `endqty` smallint(4) NOT NULL DEFAULT '0',
  `salenumbers` smallint(6) NOT NULL,
  `usedqty` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(2) NOT NULL,
  `description` varchar(60) DEFAULT NULL,
  `print` tinyint(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `siteid` int(1) DEFAULT NULL,
  `sortorder` smallint(6) NOT NULL,
  `usage` int(11) NOT NULL DEFAULT '0',
  `price1` decimal(11,2) DEFAULT NULL,
  `price2` decimal(11,2) DEFAULT NULL,
  `price3` decimal(11,2) DEFAULT NULL,
  `price4` decimal(11,2) DEFAULT NULL,
  `price5` decimal(11,2) DEFAULT NULL,
  `price6` decimal(11,2) DEFAULT NULL,
  `quickprint` tinyint(4) DEFAULT NULL,
  `oil` tinyint(4) DEFAULT NULL,
  `align` tinyint(4) DEFAULT NULL,
  `brakes` tinyint(4) DEFAULT NULL,
  `tire` tinyint(4) DEFAULT NULL,
  `group1` tinyint(4) DEFAULT NULL,
  `group2` tinyint(4) DEFAULT NULL,
  `group3` tinyint(4) DEFAULT NULL,
  `group4` tinyint(4) DEFAULT NULL,
  `group5` tinyint(4) DEFAULT NULL,
  `groupsortorder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `package_items`
--

CREATE TABLE `package_items` (
  `id` mediumint(3) NOT NULL,
  `packageid` smallint(2) DEFAULT NULL,
  `type` smallint(1) DEFAULT NULL,
  `pki_id` smallint(2) DEFAULT NULL,
  `description` text,
  `qty` smallint(1) DEFAULT NULL,
  `priceflag` tinyint(1) DEFAULT NULL,
  `price1` decimal(11,2) DEFAULT NULL,
  `price2` decimal(11,2) DEFAULT NULL,
  `price3` decimal(11,2) DEFAULT NULL,
  `price4` decimal(11,2) DEFAULT NULL,
  `price5` decimal(11,2) DEFAULT NULL,
  `price6` decimal(11,2) DEFAULT NULL,
  `linenumber` smallint(1) DEFAULT NULL,
  `detsubtypeid` smallint(2) DEFAULT NULL,
  `oil` tinyint(4) DEFAULT NULL,
  `align` tinyint(4) DEFAULT NULL,
  `brakes` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pageid` smallint(1) NOT NULL,
  `pagelink` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `iscreditcard` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phonenumbers`
--

CREATE TABLE `phonenumbers` (
  `id` smallint(6) NOT NULL,
  `name` varchar(256) NOT NULL,
  `location` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL,
  `phonenumber` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phonenumbertype`
--

CREATE TABLE `phonenumbertype` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pricematrix`
--

CREATE TABLE `pricematrix` (
  `id` smallint(6) NOT NULL,
  `markup` smallint(6) NOT NULL DEFAULT '0',
  `markuptype` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pricematrixlink`
--

CREATE TABLE `pricematrixlink` (
  `id` varchar(4) NOT NULL DEFAULT '',
  `priceclassid` varchar(1) DEFAULT NULL,
  `detsubtypeid` varchar(3) DEFAULT NULL,
  `matrixid` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pricematrixmarkuptype`
--

CREATE TABLE `pricematrixmarkuptype` (
  `id` tinyint(4) NOT NULL,
  `pricematrixid` tinyint(4) NOT NULL,
  `markuptype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quickadd`
--

CREATE TABLE `quickadd` (
  `id` mediumint(1) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `quantity` tinyint(1) NOT NULL DEFAULT '1',
  `showprice` tinyint(1) NOT NULL DEFAULT '0',
  `showpart` tinyint(1) NOT NULL DEFAULT '0',
  `category` smallint(6) NOT NULL,
  `sortorder` smallint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quickadd_categories`
--

CREATE TABLE `quickadd_categories` (
  `id` smallint(1) NOT NULL,
  `category` varchar(256) NOT NULL,
  `sortorder` smallint(1) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` tinyint(4) NOT NULL,
  `category` tinyint(4) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `mysqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reports_categories`
--

CREATE TABLE `reports_categories` (
  `id` tinyint(4) NOT NULL,
  `category` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s1line_items`
--

CREATE TABLE `s1line_items` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `linenumber` smallint(1) NOT NULL,
  `qty` decimal(11,2) DEFAULT NULL,
  `amount` decimal(9,2) NOT NULL,
  `partid` int(11) NOT NULL,
  `packageid` int(11) DEFAULT NULL,
  `serviceid` int(11) NOT NULL,
  `comment` text,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `fet` decimal(9,2) DEFAULT NULL,
  `totallineamount` decimal(9,2) DEFAULT NULL,
  `lineitem_typeid` tinyint(1) NOT NULL,
  `lineitem_subtypeid` smallint(3) NOT NULL,
  `lineitem_saletype` tinyint(1) NOT NULL,
  `hours` decimal(5,2) DEFAULT NULL,
  `mechid` smallint(2) DEFAULT NULL,
  `basecost` decimal(9,2) DEFAULT NULL,
  `oilchange` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s2line_items`
--

CREATE TABLE `s2line_items` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `linenumber` smallint(1) NOT NULL,
  `qty` decimal(11,2) DEFAULT NULL,
  `amount` decimal(9,2) NOT NULL,
  `partid` int(11) NOT NULL,
  `packageid` int(11) DEFAULT NULL,
  `serviceid` int(11) NOT NULL,
  `comment` text,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `fet` decimal(9,2) DEFAULT NULL,
  `totallineamount` decimal(9,2) DEFAULT NULL,
  `lineitem_typeid` tinyint(1) NOT NULL,
  `lineitem_subtypeid` smallint(3) NOT NULL,
  `lineitem_saletype` tinyint(1) NOT NULL,
  `hours` decimal(5,2) DEFAULT NULL,
  `mechid` smallint(2) DEFAULT NULL,
  `basecost` decimal(9,2) DEFAULT NULL,
  `oilchange` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedule1hours`
--

CREATE TABLE `schedule1hours` (
  `id` smallint(6) NOT NULL,
  `displaytime` varchar(128) NOT NULL,
  `sortorder` tinyint(4) NOT NULL,
  `hour` tinyint(2) NOT NULL,
  `minute` tinyint(2) NOT NULL,
  `inactive` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedule2hours`
--

CREATE TABLE `schedule2hours` (
  `id` smallint(6) NOT NULL,
  `displaytime` varchar(128) NOT NULL,
  `sortorder` tinyint(4) NOT NULL,
  `hour` tinyint(2) NOT NULL,
  `minute` tinyint(2) NOT NULL,
  `inactive` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scheduleloc1`
--

CREATE TABLE `scheduleloc1` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `hour` smallint(6) NOT NULL,
  `length` tinyint(4) NOT NULL,
  `thread` int(11) DEFAULT NULL,
  `schedule` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `return` datetime NOT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `userid` smallint(6) DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL,
  `mileagein` bigint(20) DEFAULT NULL,
  `mileageout` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `location` smallint(6) NOT NULL,
  `creationdate` datetime NOT NULL,
  `invoicedate` date NOT NULL,
  `voiddate` date DEFAULT NULL,
  `subtotal` decimal(9,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(9,2) NOT NULL DEFAULT '0.00',
  `total` decimal(9,2) NOT NULL DEFAULT '0.00',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `abvname` varchar(256) NOT NULL,
  `abvvehicle` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `ponumber` varchar(255) DEFAULT NULL,
  `checknum` int(10) DEFAULT NULL,
  `checkaccountid` int(10) DEFAULT NULL,
  `vendor_po` int(11) DEFAULT NULL,
  `vendor_invoice` varchar(255) DEFAULT NULL,
  `taxgroup` tinyint(1) DEFAULT NULL,
  `insertdate` date NOT NULL,
  `tires` tinyint(1) DEFAULT NULL,
  `lof` tinyint(1) DEFAULT NULL,
  `brakes` tinyint(1) DEFAULT NULL,
  `shocks` tinyint(1) DEFAULT NULL,
  `align` tinyint(1) DEFAULT NULL,
  `engine` tinyint(4) DEFAULT NULL,
  `baynumber` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scheduleloc2`
--

CREATE TABLE `scheduleloc2` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `hour` smallint(6) NOT NULL,
  `length` tinyint(4) NOT NULL,
  `thread` int(11) DEFAULT NULL,
  `schedule` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `return` datetime NOT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `userid` smallint(6) DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL,
  `mileagein` bigint(20) DEFAULT NULL,
  `mileageout` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `location` smallint(6) NOT NULL,
  `creationdate` datetime NOT NULL,
  `invoicedate` date NOT NULL,
  `voiddate` date DEFAULT NULL,
  `subtotal` decimal(9,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(9,2) NOT NULL DEFAULT '0.00',
  `total` decimal(9,2) NOT NULL DEFAULT '0.00',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `abvname` varchar(256) NOT NULL,
  `abvvehicle` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `ponumber` varchar(255) DEFAULT NULL,
  `checknum` int(10) DEFAULT NULL,
  `checkaccountid` int(10) DEFAULT NULL,
  `vendor_po` int(11) DEFAULT NULL,
  `vendor_invoice` varchar(255) DEFAULT NULL,
  `taxgroup` tinyint(1) DEFAULT NULL,
  `insertdate` date NOT NULL,
  `tires` tinyint(1) DEFAULT NULL,
  `lof` tinyint(1) DEFAULT NULL,
  `brakes` tinyint(1) DEFAULT NULL,
  `shocks` tinyint(1) DEFAULT NULL,
  `align` tinyint(1) DEFAULT NULL,
  `engine` tinyint(4) DEFAULT NULL,
  `baynumber` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_tax`
--

CREATE TABLE `schedule_tax` (
  `id` int(11) NOT NULL,
  `transid` int(11) NOT NULL,
  `taxamount` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `search-account`
--

CREATE TABLE `search-account` (
  `id` int(11) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `account` int(1) NOT NULL,
  `searchnumber` int(7) NOT NULL,
  `accounttype` tinyint(1) NOT NULL,
  `invoiceid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `senderemails`
--

CREATE TABLE `senderemails` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `defaultemail` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` smallint(1) NOT NULL,
  `item` text NOT NULL,
  `cost1` decimal(6,2) NOT NULL,
  `cost2` decimal(6,2) NOT NULL,
  `cost3` decimal(6,2) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `taxexempt` tinyint(1) NOT NULL DEFAULT '0',
  `laborhours` smallint(6) NOT NULL,
  `title` varchar(256) NOT NULL,
  `code` varchar(10) NOT NULL,
  `note` text NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `serviceoptions`
--

CREATE TABLE `serviceoptions` (
  `id` smallint(6) NOT NULL,
  `item` varchar(256) NOT NULL,
  `groupid` smallint(6) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `order` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services_new`
--

CREATE TABLE `services_new` (
  `id` int(2) NOT NULL,
  `type` int(1) NOT NULL,
  `taxexempt` tinyint(1) DEFAULT '0',
  `laborhours` decimal(6,2) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `code` varchar(18) NOT NULL,
  `printnote` tinyint(1) NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services_sub`
--

CREATE TABLE `services_sub` (
  `id` int(2) NOT NULL DEFAULT '0',
  `seriviceid` int(2) DEFAULT NULL,
  `siteid` int(1) DEFAULT NULL,
  `price1` decimal(5,2) DEFAULT NULL,
  `price2` decimal(5,2) DEFAULT NULL,
  `price3` decimal(5,2) DEFAULT NULL,
  `price4` decimal(5,2) DEFAULT NULL,
  `price5` decimal(5,2) DEFAULT NULL,
  `servicenote` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sidetext`
--

CREATE TABLE `sidetext` (
  `id` smallint(6) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `qtyused` int(11) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_details`
--

CREATE TABLE `tax_details` (
  `id` int(11) NOT NULL,
  `transactionid` int(11) NOT NULL,
  `lineitem_id` int(11) NOT NULL,
  `taxableamount` decimal(11,2) NOT NULL,
  `taxamount` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `id` tinyint(1) NOT NULL,
  `description` varchar(24) DEFAULT NULL,
  `peopletypeid` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `rate` varchar(5) DEFAULT NULL,
  `multiply` decimal(5,4) NOT NULL,
  `formdisplay` tinyint(4) NOT NULL DEFAULT '1',
  `inactive` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_trans`
--

CREATE TABLE `tax_trans` (
  `id` int(11) NOT NULL,
  `transid` int(11) NOT NULL,
  `taxamount` decimal(11,2) NOT NULL,
  `lineid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `hour` smallint(6) NOT NULL,
  `length` tinyint(4) NOT NULL,
  `thread` int(11) DEFAULT NULL,
  `schedule` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `return` datetime NOT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `accountid` int(11) NOT NULL,
  `userid` smallint(6) DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL,
  `mileagein` bigint(20) DEFAULT NULL,
  `mileageout` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `location` smallint(6) NOT NULL,
  `creationdate` datetime NOT NULL,
  `invoicedate` date NOT NULL,
  `voiddate` date DEFAULT NULL,
  `subtotal` decimal(9,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(9,2) NOT NULL DEFAULT '0.00',
  `total` decimal(9,2) NOT NULL DEFAULT '0.00',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `abvname` varchar(256) NOT NULL,
  `abvvehicle` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `ponumber` varchar(255) DEFAULT NULL,
  `checknum` int(10) DEFAULT NULL,
  `checkaccountid` int(10) DEFAULT NULL,
  `vendor_po` int(11) DEFAULT NULL,
  `vendor_invoice` varchar(255) DEFAULT NULL,
  `taxgroup` tinyint(1) DEFAULT NULL,
  `insertdate` date NOT NULL,
  `tires` tinyint(1) DEFAULT NULL,
  `lof` tinyint(1) DEFAULT NULL,
  `brakes` tinyint(1) DEFAULT NULL,
  `shocks` tinyint(1) DEFAULT NULL,
  `align` tinyint(1) DEFAULT NULL,
  `engine` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_line_items`
--

CREATE TABLE `temp_line_items` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `linenumber` smallint(1) NOT NULL,
  `qty` decimal(11,2) DEFAULT NULL,
  `amount` decimal(9,2) NOT NULL,
  `partid` int(11) NOT NULL,
  `packageid` int(11) DEFAULT NULL,
  `serviceid` int(11) NOT NULL,
  `comment` text,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `fet` decimal(9,2) DEFAULT NULL,
  `totallineamount` decimal(9,2) DEFAULT NULL,
  `lineitem_typeid` tinyint(1) NOT NULL,
  `lineitem_subtypeid` smallint(3) NOT NULL,
  `lineitem_saletype` tinyint(1) NOT NULL,
  `hours` decimal(5,2) DEFAULT NULL,
  `mechid` smallint(2) DEFAULT NULL,
  `basecost` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `timeclockinfo`
--

CREATE TABLE `timeclockinfo` (
  `id` bigint(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `userid` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `timeclockstatus`
--

CREATE TABLE `timeclockstatus` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `userid` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tireoptions`
--

CREATE TABLE `tireoptions` (
  `id` smallint(6) NOT NULL,
  `item` varchar(256) NOT NULL,
  `groupid` tinyint(4) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tires`
--

CREATE TABLE `tires` (
  `id` int(10) NOT NULL,
  `brand` varchar(56) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `invtype` tinyint(1) NOT NULL,
  `subtype1` smallint(6) NOT NULL,
  `subtype2` smallint(6) NOT NULL,
  `model` varchar(31) DEFAULT NULL,
  `size` varchar(13) DEFAULT NULL,
  `part_number` varchar(7) DEFAULT NULL,
  `load_index` varchar(12) DEFAULT NULL,
  `ply` varchar(3) DEFAULT NULL,
  `sw` varchar(3) DEFAULT NULL,
  `utgq` varchar(6) DEFAULT NULL,
  `mileage` varchar(7) DEFAULT NULL,
  `oe` varchar(2) DEFAULT NULL,
  `fet` varchar(3) DEFAULT NULL,
  `base` varchar(5) DEFAULT NULL,
  `net` varchar(9) DEFAULT NULL,
  `cost` varchar(17) DEFAULT NULL,
  `cash_price` varchar(7) DEFAULT NULL,
  `customer_price` decimal(9,2) NOT NULL,
  `percentcoop` varchar(8) DEFAULT NULL,
  `overstock_price` varchar(24) DEFAULT NULL,
  `overstock100_price` varchar(25) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `cross_section` varchar(13) DEFAULT NULL,
  `aspect_ratio` varchar(12) DEFAULT NULL,
  `rim` varchar(3) DEFAULT NULL,
  `quicksearch` int(11) NOT NULL,
  `onspecial` tinyint(4) NOT NULL DEFAULT '0',
  `offer1` int(11) NOT NULL DEFAULT '0',
  `offer2` int(11) NOT NULL DEFAULT '0',
  `offer3` int(11) NOT NULL DEFAULT '0',
  `offer4` int(11) NOT NULL DEFAULT '0',
  `offer5` int(11) NOT NULL DEFAULT '0',
  `loc1onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc1date` date NOT NULL,
  `loc2onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc2date` date NOT NULL,
  `loc3onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc3date` date NOT NULL,
  `loc4onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc4date` date NOT NULL,
  `loc5onhand` smallint(6) NOT NULL DEFAULT '0',
  `loc5date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tire_manufacturers`
--

CREATE TABLE `tire_manufacturers` (
  `id` int(11) NOT NULL,
  `brand` varchar(64) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `affiliate` tinyint(4) NOT NULL DEFAULT '0',
  `defaultsearch` tinyint(4) NOT NULL DEFAULT '0',
  `brandmarkup` tinyint(4) NOT NULL DEFAULT '0',
  `pricematrixid` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tire_models`
--

CREATE TABLE `tire_models` (
  `id` int(11) NOT NULL,
  `tire-brand` smallint(6) NOT NULL,
  `tire-model` varchar(256) NOT NULL,
  `price-markup` tinyint(4) NOT NULL DEFAULT '20',
  `markuptype` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `transactionid` int(11) NOT NULL,
  `transactiontype` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL,
  `accountid` int(11) NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  `tax` decimal(9,2) NOT NULL,
  `userid` smallint(6) NOT NULL,
  `voided` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `translink`
--

CREATE TABLE `translink` (
  `linkid` int(12) NOT NULL,
  `transid` int(12) NOT NULL,
  `linktoid` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `linktosortid` tinyint(1) NOT NULL,
  `sortid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicleinspections`
--

CREATE TABLE `vehicleinspections` (
  `id` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `wipers` tinyint(4) DEFAULT NULL,
  `lights` tinyint(4) DEFAULT NULL,
  `oilpangasket` tinyint(4) DEFAULT NULL,
  `transmission` tinyint(4) DEFAULT NULL,
  `airfilter` tinyint(4) DEFAULT NULL,
  `cabinairfilter` tinyint(4) DEFAULT NULL,
  `headgasket` tinyint(4) DEFAULT NULL,
  `powersteeringfluid` tinyint(4) DEFAULT NULL,
  `brakefluid` tinyint(4) DEFAULT NULL,
  `coolant` tinyint(4) DEFAULT NULL,
  `belts` tinyint(4) DEFAULT NULL,
  `battery` tinyint(4) DEFAULT NULL,
  `hoses` tinyint(4) DEFAULT NULL,
  `tuneup` tinyint(4) DEFAULT NULL,
  `valvecover` tinyint(4) DEFAULT NULL,
  `alternator` tinyint(4) DEFAULT NULL,
  `starter` tinyint(4) DEFAULT NULL,
  `idler` tinyint(4) DEFAULT NULL,
  `pitman` tinyint(4) DEFAULT NULL,
  `tierods` tinyint(4) DEFAULT NULL,
  `controlarm` tinyint(4) DEFAULT NULL,
  `balljoints` tinyint(4) DEFAULT NULL,
  `rackpinion` tinyint(4) DEFAULT NULL,
  `cvaxle` tinyint(4) DEFAULT NULL,
  `fstruts` tinyint(4) DEFAULT NULL,
  `rstruts` tinyint(4) DEFAULT NULL,
  `lateral` tinyint(4) DEFAULT NULL,
  `fbrakes` tinyint(4) DEFAULT NULL,
  `fcalipers` tinyint(4) DEFAULT NULL,
  `rbrakes` tinyint(4) DEFAULT NULL,
  `rcalipers` tinyint(4) DEFAULT NULL,
  `brakelines` tinyint(4) DEFAULT NULL,
  `lfbearing` tinyint(4) DEFAULT NULL,
  `rfbearing` tinyint(4) DEFAULT NULL,
  `lrbearing` tinyint(4) DEFAULT NULL,
  `rrbearing` tinyint(4) DEFAULT NULL,
  `lftire` tinyint(4) DEFAULT NULL,
  `rftire` tinyint(4) DEFAULT NULL,
  `lrtire` tinyint(4) DEFAULT NULL,
  `rrtire` tinyint(4) DEFAULT NULL,
  `other1` tinyint(4) DEFAULT NULL,
  `other2` tinyint(4) DEFAULT NULL,
  `other3` tinyint(4) DEFAULT NULL,
  `other4` tinyint(4) DEFAULT NULL,
  `other5` tinyint(4) DEFAULT NULL,
  `wipersnotes` text NOT NULL,
  `lightsnotes` text NOT NULL,
  `oilpangasketnotes` text NOT NULL,
  `transmissionnotes` text NOT NULL,
  `airfilternotes` text NOT NULL,
  `cabinairfilternotes` text NOT NULL,
  `headgasketnotes` text NOT NULL,
  `powersteeringfluidnotes` text NOT NULL,
  `brakefluidnotes` text NOT NULL,
  `coolantnotes` text NOT NULL,
  `beltsnotes` text NOT NULL,
  `batterynotes` text NOT NULL,
  `hosesnotes` text NOT NULL,
  `tuneupnotes` text NOT NULL,
  `valvecovernotes` text NOT NULL,
  `alternatornotes` text NOT NULL,
  `starternotes` text NOT NULL,
  `idlernotes` text NOT NULL,
  `pitmannotes` text NOT NULL,
  `tierodsnotes` text NOT NULL,
  `controlarmnotes` text NOT NULL,
  `balljointsnotes` text NOT NULL,
  `rackpinionnotes` text NOT NULL,
  `cvaxlenotes` text NOT NULL,
  `fstrutsnotes` text NOT NULL,
  `rstrutsnotes` text NOT NULL,
  `lateralnotes` text NOT NULL,
  `fbrakesnotes` text NOT NULL,
  `fcalipersnotes` text NOT NULL,
  `rbrakesnotes` text NOT NULL,
  `rcalipersnotes` text NOT NULL,
  `brakelinesnotes` text NOT NULL,
  `lfbearingnotes` text NOT NULL,
  `rfbearingnotes` text NOT NULL,
  `lrbearingnotes` text NOT NULL,
  `rrbearingnotes` text NOT NULL,
  `lftirenotes` text NOT NULL,
  `rftirenotes` text NOT NULL,
  `lrtirenotes` text NOT NULL,
  `rrtirenotes` text NOT NULL,
  `other1notes` text NOT NULL,
  `other2notes` text NOT NULL,
  `other3notes` text NOT NULL,
  `other4notes` text NOT NULL,
  `other5notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `accountid` int(11) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `cfyear` int(4) DEFAULT NULL,
  `make` varchar(256) DEFAULT NULL,
  `cfmake` varchar(256) DEFAULT NULL,
  `model` varchar(256) DEFAULT NULL,
  `cfmodel` varchar(256) DEFAULT NULL,
  `submodel` varchar(128) DEFAULT NULL,
  `cfsubmodel` varchar(256) DEFAULT NULL,
  `engine` varchar(100) DEFAULT NULL,
  `cylinder` tinyint(1) DEFAULT '0',
  `drive` tinyint(1) DEFAULT '0',
  `license` varchar(256) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `vin` varchar(256) DEFAULT NULL,
  `oldvehicleaccount` int(11) NOT NULL DEFAULT '0',
  `description` varchar(256) DEFAULT NULL,
  `creationdate` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `inactivationdate` date NOT NULL,
  `TGOptionID` varchar(128) DEFAULT NULL,
  `CFDescription` varchar(256) DEFAULT NULL,
  `Unit` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountbalance`
--
ALTER TABLE `accountbalance`
  ADD PRIMARY KEY (`accountid`),
  ADD KEY `accountid` (`accountid`);

--
-- Indexes for table `accounting-journal`
--
ALTER TABLE `accounting-journal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transid` (`transid`),

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountid`),
  ADD KEY `acctid` (`accountid`);

--
-- Indexes for table `accounts_type`
--
ALTER TABLE `accounts_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `account_priceclass`
--
ALTER TABLE `account_priceclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_taxtype`
--
ALTER TABLE `account_taxtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_line_items`
--
ALTER TABLE `ci_line_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `ci_tax_trans`
--
ALTER TABLE `ci_tax_trans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transid` (`transid`);

--
-- Indexes for table `customeremail`
--
ALTER TABLE `customeremail`
  ADD PRIMARY KEY (`id`);
  ADD KEY `email` (`email`);

--
-- Indexes for table `customerinteractions`
--
ALTER TABLE `customerinteractions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `interested`
--
ALTER TABLE `interested`
  ADD PRIMARY KEY (`id`),

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory2019-top100`
--
ALTER TABLE `inventory2019-top100`
  ADD PRIMARY KEY (`inventoryid`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `inventory_loadrange`
--
ALTER TABLE `inventory_loadrange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_price`
--
ALTER TABLE `inventory_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_sidewall`
--
ALTER TABLE `inventory_sidewall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_subtype`
--
ALTER TABLE `inventory_subtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`id`),

--
-- Indexes for table `inventory_type`
--
ALTER TABLE `inventory_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`),

--
-- Indexes for table `invoiceautocomplete`
--
ALTER TABLE `invoiceautocomplete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_type`
--
ALTER TABLE `invoice_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lineitem_saletype`
--
ALTER TABLE `lineitem_saletype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lineitem_type`
--
ALTER TABLE `lineitem_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line_items`
--
ALTER TABLE `line_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `loc1schedule`
--
ALTER TABLE `loc1schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `notelink`
--
ALTER TABLE `notelink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD KEY `id` (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_items`
--
ALTER TABLE `package_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pageid`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonenumbertype`
--
ALTER TABLE `phonenumbertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricematrix`
--
ALTER TABLE `pricematrix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricematrixlink`
--
ALTER TABLE `pricematrixlink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricematrixmarkuptype`
--
ALTER TABLE `pricematrixmarkuptype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quickadd`
--
ALTER TABLE `quickadd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quickadd_categories`
--
ALTER TABLE `quickadd_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports_categories`
--
ALTER TABLE `reports_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s1line_items`
--
ALTER TABLE `s1line_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `s2line_items`
--
ALTER TABLE `s2line_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `schedule1hours`
--
ALTER TABLE `schedule1hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule2hours`
--
ALTER TABLE `schedule2hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduleloc1`
--
ALTER TABLE `scheduleloc1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),

--
-- Indexes for table `scheduleloc2`
--
ALTER TABLE `scheduleloc2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),

--
-- Indexes for table `schedule_tax`
--
ALTER TABLE `schedule_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `search-account`
--
ALTER TABLE `search-account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `senderemails`
--
ALTER TABLE `senderemails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceoptions`
--
ALTER TABLE `serviceoptions`
  ADD KEY `id` (`id`);

--
-- Indexes for table `services_new`
--
ALTER TABLE `services_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_sub`
--
ALTER TABLE `services_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidetext`
--
ALTER TABLE `sidetext`
  ADD KEY `id` (`id`);

--
-- Indexes for table `tax_details`
--
ALTER TABLE `tax_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_trans`
--
ALTER TABLE `tax_trans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule` (`schedule`),

--
-- Indexes for table `temp_line_items`
--
ALTER TABLE `temp_line_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `timeclockinfo`
--
ALTER TABLE `timeclockinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeclockstatus`
--
ALTER TABLE `timeclockstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tireoptions`
--
ALTER TABLE `tireoptions`
  ADD KEY `id` (`id`);

--
-- Indexes for table `tires`
--
ALTER TABLE `tires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tire_manufacturers`
--
ALTER TABLE `tire_manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tire_models`
--
ALTER TABLE `tire_models`
  ADD KEY `id` (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactionid` (`transactionid`);

--
-- Indexes for table `translink`
--
ALTER TABLE `translink`
  ADD PRIMARY KEY (`linkid`),
  ADD UNIQUE KEY `transid` (`transid`),
  ADD KEY `transid_2` (`transid`);

--
-- Indexes for table `vehicleinspections`
--
ALTER TABLE `vehicleinspections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountid` (`accountid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting-journal`
--
ALTER TABLE `accounting-journal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119501;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accountid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39197;

--
-- AUTO_INCREMENT for table `accounts_type`
--
ALTER TABLE `accounts_type`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `account_priceclass`
--
ALTER TABLE `account_priceclass`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_taxtype`
--
ALTER TABLE `account_taxtype`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ci_line_items`
--
ALTER TABLE `ci_line_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ci_tax_trans`
--
ALTER TABLE `ci_tax_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customeremail`
--
ALTER TABLE `customeremail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customerinteractions`
--
ALTER TABLE `customerinteractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` smallint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interested`
--
ALTER TABLE `interested`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20222;

--
-- AUTO_INCREMENT for table `inventory2019-top100`
--
ALTER TABLE `inventory2019-top100`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_loadrange`
--
ALTER TABLE `inventory_loadrange`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inventory_sidewall`
--
ALTER TABLE `inventory_sidewall`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `inventory_type`
--
ALTER TABLE `inventory_type`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735094;

--
-- AUTO_INCREMENT for table `invoiceautocomplete`
--
ALTER TABLE `invoiceautocomplete`
  MODIFY `id` smallint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `invoice_type`
--
ALTER TABLE `invoice_type`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `line_items`
--
ALTER TABLE `line_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1763241;

--
-- AUTO_INCREMENT for table `loc1schedule`
--
ALTER TABLE `loc1schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notelink`
--
ALTER TABLE `notelink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502088;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75006;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `package_items`
--
ALTER TABLE `package_items`
  MODIFY `id` mediumint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pageid` smallint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `phonenumbertype`
--
ALTER TABLE `phonenumbertype`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricematrix`
--
ALTER TABLE `pricematrix`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `pricematrixmarkuptype`
--
ALTER TABLE `pricematrixmarkuptype`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quickadd`
--
ALTER TABLE `quickadd`
  MODIFY `id` mediumint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quickadd_categories`
--
ALTER TABLE `quickadd_categories`
  MODIFY `id` smallint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reports_categories`
--
ALTER TABLE `reports_categories`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `s1line_items`
--
ALTER TABLE `s1line_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `s2line_items`
--
ALTER TABLE `s2line_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule1hours`
--
ALTER TABLE `schedule1hours`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `schedule2hours`
--
ALTER TABLE `schedule2hours`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `scheduleloc1`
--
ALTER TABLE `scheduleloc1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1228;

--
-- AUTO_INCREMENT for table `scheduleloc2`
--
ALTER TABLE `scheduleloc2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_tax`
--
ALTER TABLE `schedule_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search-account`
--
ALTER TABLE `search-account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `senderemails`
--
ALTER TABLE `senderemails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` smallint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `serviceoptions`
--
ALTER TABLE `serviceoptions`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_new`
--
ALTER TABLE `services_new`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `sidetext`
--
ALTER TABLE `sidetext`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_details`
--
ALTER TABLE `tax_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4522255;

--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tax_trans`
--
ALTER TABLE `tax_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1278734;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp_line_items`
--
ALTER TABLE `temp_line_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timeclockinfo`
--
ALTER TABLE `timeclockinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18892;

--
-- AUTO_INCREMENT for table `timeclockstatus`
--
ALTER TABLE `timeclockstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tireoptions`
--
ALTER TABLE `tireoptions`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tires`
--
ALTER TABLE `tires`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2329;

--
-- AUTO_INCREMENT for table `tire_manufacturers`
--
ALTER TABLE `tire_manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tire_models`
--
ALTER TABLE `tire_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translink`
--
ALTER TABLE `translink`
  MODIFY `linkid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1306393;

--
-- AUTO_INCREMENT for table `vehicleinspections`
--
ALTER TABLE `vehicleinspections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48605;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
