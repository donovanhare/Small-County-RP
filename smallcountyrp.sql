-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2015 at 08:46 AM
-- Server version: 5.5.39-log
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smallcountyrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `911 calls`
--

CREATE TABLE IF NOT EXISTS `911 calls` (
`ID` int(11) NOT NULL,
  `Timestamp` int(11) NOT NULL,
  `Caller` int(6) NOT NULL,
  `Incident` varchar(128) NOT NULL,
  `Location` varchar(128) NOT NULL,
  `Service` int(2) NOT NULL,
  `Number` int(8) NOT NULL,
  `IGTime` int(12) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `911 calls`
--

INSERT INTO `911 calls` (`ID`, `Timestamp`, `Caller`, `Incident`, `Location`, `Service`, `Number`, `IGTime`) VALUES
(1, 1423316082, 1, '-', '-', 1, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
`SQLID` int(32) NOT NULL,
  `Username` varchar(24) NOT NULL,
  `Password` varchar(129) NOT NULL,
  `Status` int(2) NOT NULL,
  `Admin` int(2) NOT NULL,
  `RegisterIP` varchar(16) NOT NULL,
  `RegisterDate` int(12) NOT NULL,
  `LatestIP` varchar(16) NOT NULL,
  `ExemptIP` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
`ID` int(11) NOT NULL,
  `PlayerName` varchar(26) NOT NULL,
  `IP` varchar(18) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `A_ID` int(11) NOT NULL,
  `Timestamp` int(11) NOT NULL,
  `BannedBy` varchar(26) NOT NULL,
  `Reason` varchar(128) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
`SQLID` int(5) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `Interior` int(3) NOT NULL,
  `World` int(5) NOT NULL,
  `InteriorX` float NOT NULL,
  `InteriorY` float NOT NULL,
  `InteriorZ` float NOT NULL,
  `Owned` int(2) NOT NULL,
  `Owner` int(6) NOT NULL,
  `Price` int(12) NOT NULL,
  `Payout` int(5) NOT NULL,
  `Safe` int(12) NOT NULL,
  `Type` int(11) NOT NULL,
  `EntranceFee` int(5) NOT NULL,
  `Locked` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`SQLID`, `Name`, `PosX`, `PosY`, `PosZ`, `Interior`, `World`, `InteriorX`, `InteriorY`, `InteriorZ`, `Owned`, `Owner`, `Price`, `Payout`, `Safe`, `Type`, `EntranceFee`, `Locked`) VALUES
(1, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(2, 'Fort Carson Diner', -53.9388, 1188.89, 19.3594, 4, 2, 457.305, -88.4285, 999.555, 0, 0, 10000, 775, 0, 6, 15, 0),
(3, 'King Ring', -144.051, 1222.94, 19.8992, 17, 3, 378.026, -190.516, 1000.63, 0, 0, 11000, 650, 16875, 6, 25, 0),
(4, 'Fort Carson Ammunation', -314.884, 829.965, 14.2422, 7, 4, 315.244, -140.886, 999.602, 0, 0, 16000, 2200, 6875, 2, 50, 0),
(5, 'Fort Carson Bar', -179.978, 1088.61, 19.7422, 11, 5, 501.981, -69.1502, 998.758, 0, 0, 16250, 1100, 11725, 9, 15, 0),
(6, 'Fort Carson ZIP', -177.389, 1111.71, 19.7422, 18, 6, 161.405, -94.2416, 1001.8, 0, 0, 14000, 2000, 4930, 5, 10, 0),
(7, 'Fort Carson Central News', -99.1645, 1083.33, 19.7422, 3, 7, 386.526, 173.638, 1008.38, 0, 0, 35000, 4000, 0, 3, 15, 0),
(8, 'Fort Carson Gas Station', -149.256, 1172.01, 19.75, 17, 8, -25.7114, -187.822, 1003.55, 0, 0, 36000, 1000, 575, 1, 25, 0),
(9, 'Thomas Autos', -93.807, 1378.08, 10.273, 3, 9, -97.762, 1369.51, 1246.39, 0, 0, 12000, 2600, 8150, 9, 50, 0),
(10, 'Bank of Bone County', -182.026, 1132.62, 19.7422, 0, 10, 2305.62, -16.3238, 26.7496, 2, 0, 0, 0, 0, 0, 0, 0),
(11, 'Alecs Joint', -310.074, 1303.54, 53.6643, 17, 11, 493.391, -22.7228, 1000.68, 0, 0, 30000, 1500, 5334, 9, 100, 0),
(12, 'Wang Autos', 128.146, 1063.47, 13.6094, 0, 0, 128.085, 1060.68, 13.644, 3, 0, 0, 0, 0, 0, 0, 0),
(13, 'Cluckin Bell', 172.445, 1176.13, 14.7645, 9, 13, 365.044, -10.61, 1001.85, 0, 0, 17500, 1500, 0, 10, 15, 0),
(14, 'Cow Station Central', -19.0786, 1176.77, 19.5634, 17, 14, -25.7114, -187.822, 1003.55, 0, 0, 15000, 600, 8662, 1, 50, 0),
(15, 'Skywalker Airlines', 424.153, 2536.34, 16.1484, 3, 15, 386.526, 173.638, 1008.38, 0, 0, 2000000, 1200, 0, 3, 100, 0),
(17, 'Foster Trading.', -204.507, 1137.74, 19.742, 3, 17, 833.27, 10.5884, 1004.18, 1, 1, 100000, 2400, 2250, 4, 50, 1),
(18, 'Fort Carson Store', -181.022, 1034.81, 19.7422, 17, 1, -25.7114, -187.822, 1003.55, 1, 1, 25000, 3250, 2520, 1, 25, 0),
(19, 'Aequitas Equitas', -314.296, 1774.55, 43.641, 11, 19, 501.981, -69.1502, 998.758, 0, 0, 42000, 750, 800, 9, 50, 0),
(20, 'Sr. Frango', -1940.52, 2380.01, 49.695, 17, 20, 378.026, -190.516, 1000.63, 0, 0, 4000, 1250, 0, 6, 0, 0),
(22, 'Sheriff''s Department', -217.262, 979.251, 19.501, 1, 22, 768.688, -1401.45, 3001.09, 3, 0, 0, 0, 0, 0, 0, 0),
(23, '', -219.581, 1208.92, 19.742, 0, 0, -219.672, 1211.27, 19.786, 3, 0, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE IF NOT EXISTS `characters` (
`ID` int(6) NOT NULL,
  `A_ID` int(6) NOT NULL,
  `Name` varchar(34) NOT NULL,
  `RegisterIP` varchar(16) NOT NULL,
  `RegisterDate` int(12) NOT NULL,
  `LatestIP` varchar(16) NOT NULL,
  `Tutorial` int(2) NOT NULL,
  `Level` int(5) NOT NULL,
  `XP` int(6) NOT NULL,
  `Cash` int(11) NOT NULL,
  `Skin` int(3) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `VWorld` int(4) NOT NULL,
  `Interior` int(2) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` int(2) NOT NULL,
  `Kicks` int(5) NOT NULL,
  `Muted` int(2) NOT NULL,
  `Faction` int(2) NOT NULL,
  `Rank` int(2) NOT NULL,
  `Job` int(2) NOT NULL,
  `Health` float NOT NULL,
  `Armour` float NOT NULL,
  `hEntered` int(5) NOT NULL,
  `bEntered` int(5) NOT NULL,
  `Vehicles` int(3) NOT NULL,
  `Bank` int(12) NOT NULL,
  `ExemptIP` int(11) NOT NULL,
  `TotalTimePlayed` int(12) NOT NULL,
  `OnlinePeriod` int(12) NOT NULL,
  `Payday` int(12) NOT NULL,
  `LastOnline` int(12) NOT NULL,
  `PhoneStatus` int(2) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `TruckingCompleted` int(6) NOT NULL,
  `TruckCoolDown` int(12) NOT NULL,
  `GDL` int(2) NOT NULL,
  `CDL` int(2) NOT NULL,
  `MDL` int(2) NOT NULL,
  `Fare` int(3) NOT NULL,
  `VehicleRadio` int(2) NOT NULL,
  `Cuffed` int(1) NOT NULL,
  `Spawn` int(1) NOT NULL,
  `Jail` int(4) NOT NULL,
  `Radio` int(2) NOT NULL,
  `RadioFreq` int(4) NOT NULL DEFAULT '27',
  `Weapons` varchar(104) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
  `Uniform` int(4) NOT NULL,
  `Screwdriver` int(2) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`ID`, `A_ID`, `Name`, `RegisterIP`, `RegisterDate`, `LatestIP`, `Tutorial`, `Level`, `XP`, `Cash`, `Skin`, `PosX`, `PosY`, `PosZ`, `VWorld`, `Interior`, `Age`, `Gender`, `Kicks`, `Muted`, `Faction`, `Rank`, `Job`, `Health`, `Armour`, `hEntered`, `bEntered`, `Vehicles`, `Bank`, `ExemptIP`, `TotalTimePlayed`, `OnlinePeriod`, `Payday`, `LastOnline`, `PhoneStatus`, `PhoneNumber`, `TruckingCompleted`, `TruckCoolDown`, `GDL`, `CDL`, `MDL`, `Fare`, `VehicleRadio`, `Cuffed`, `Spawn`, `Jail`, `Radio`, `RadioFreq`, `Weapons`, `Uniform`, `Screwdriver`) VALUES
(1, 1, 'Harold_Foster', '127.0.0.1', 1406949900, '127.0.0.1', 5, 10, 160, 1000000, 4, -204.474, 1137.32, 19.742, 0, 0, 34, 1, 2, 0, 1, 10, 2, 100, 0, 0, 0, 0, 49116, 1, 7858, 23, 3600, 1449419950, 2, 7907424, 8, 1415289406, 0, 0, 0, 0, 0, 0, 1, 0, 2, 11, '0,0,24,35,0,0,0,0,0,0,34,20,0,0,0,0,0,0,0,0,0,0,0,0,', 265, 1);

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE IF NOT EXISTS `factions` (
`SQLID` int(5) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Type` int(2) NOT NULL,
  `Rank1` varchar(32) NOT NULL DEFAULT 'Rank1',
  `Rank2` varchar(32) NOT NULL DEFAULT 'Rank2',
  `Rank3` varchar(32) NOT NULL DEFAULT 'Rank3',
  `Rank4` varchar(32) NOT NULL DEFAULT 'Rank4',
  `Rank5` varchar(32) NOT NULL DEFAULT 'Rank5',
  `Rank6` varchar(32) NOT NULL DEFAULT 'Rank6',
  `Rank7` varchar(32) NOT NULL DEFAULT 'Rank7',
  `Rank8` varchar(32) NOT NULL DEFAULT 'Rank8',
  `Rank9` varchar(32) NOT NULL DEFAULT 'Rank9',
  `Rank10` varchar(32) NOT NULL DEFAULT 'Rank10',
  `CommandRank` int(2) NOT NULL,
  `MaxRank` int(2) NOT NULL DEFAULT '8',
  `VaultRank` int(2) NOT NULL,
  `Vault` int(12) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`SQLID`, `Name`, `Type`, `Rank1`, `Rank2`, `Rank3`, `Rank4`, `Rank5`, `Rank6`, `Rank7`, `Rank8`, `Rank9`, `Rank10`, `CommandRank`, `MaxRank`, `VaultRank`, `Vault`, `PosX`, `PosY`, `PosZ`) VALUES
(1, 'Bone County Sheriff''s Department', 2, 'Cadet', 'Deputy Sheriff I', 'Deputy Sheriff II', 'Corporal', 'Sergeant', 'Commander', 'Deputy Chief', 'Chief of Police', 'Rank9', 'Rank10', 6, 10, 8, 0, -217.262, 979.251, 19.501),
(2, 'Fort Carson Central News', 3, 'Freelance', 'Reporter', 'Senior Reporter', 'Manager', 'Exec. Manager', 'Chief Broadcaster', 'Co-CEO', 'CEO', 'Rank9', 'Rank10', 7, 8, 8, 0, -99.164, 1083.33, 19.742),
(3, 'Fort Carson Medical', 4, 'Lowest', 'Rank 2 init', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8 - Leader', 'Rank9', 'Rank10', 7, 8, 8, 0, -769.018, 1643.15, 27.611),
(4, 'Aequitas Equitas', 1, 'Newbie', 'In', 'GG WP', 'HC', 'Thine Leader', 'Rank 6', 'Rank 7', 'Rank 8 - Leader', 'Rank9', 'Rank10', 4, 5, 7, 0, -309.675, 1762.32, 43.641),
(5, 'Corn Hauling Cunts', 1, 'Slave', 'City Slicker', 'Cunt', 'Gunslinger', 'Veteran', 'Rackateer', 'Rebel', 'Outlaw', 'Overseer', 'Barnyard Boss', 8, 10, 7, 0, -58.547, 74.832, 3.117);

-- --------------------------------------------------------

--
-- Table structure for table `factionvehicles`
--

CREATE TABLE IF NOT EXISTS `factionvehicles` (
`SQLID` int(5) NOT NULL,
  `Model` int(4) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `PosA` float NOT NULL,
  `Color1` int(3) NOT NULL,
  `Color2` int(3) NOT NULL,
  `Type` int(11) NOT NULL,
  `Plate` varchar(11) NOT NULL,
  `Locked` int(4) NOT NULL,
  `Faction` int(2) NOT NULL,
  `Rank` int(2) NOT NULL,
  `Fuel` int(2) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `factionvehicles`
--

INSERT INTO `factionvehicles` (`SQLID`, `Model`, `PosX`, `PosY`, `PosZ`, `PosA`, `Color1`, `Color2`, `Type`, `Plate`, `Locked`, `Faction`, `Rank`, `Fuel`) VALUES
(1, 596, -227.516, 993.862, 19.2633, 268.872, 99, 1, 3, 'MD20HNL', 0, 1, 1, 55),
(2, 599, -209.808, 997.747, 19.808, 119.656, 99, 1, 3, 'DA59YKV', 0, 1, 5, 64),
(3, 596, -227.631, 998.073, 19.3009, 267.929, 99, 1, 3, 'AO82DVR', 0, 1, 1, 55),
(4, 598, -210.12, 993.495, 19.2805, 120.786, 99, 1, 3, 'QR04QZU', 0, 1, 6, 31),
(5, 523, -219.893, 990.409, 19.0837, 313.843, 99, 1, 3, 'IU60GAP', 0, 1, 4, 45),
(6, 523, -221.912, 990.569, 19.094, 319.435, 99, 1, 3, 'BM17YKI', 0, 1, 4, 52),
(7, 416, -303.992, 1036.2, 19.7426, 269.067, 1, 3, 3, 'XX99SJE', 0, 3, 1, 92),
(8, 416, -304.284, 1032.21, 19.7429, 270.114, 1, 3, 3, 'KE11ZKO', 0, 3, 1, 100),
(9, 490, -305.053, 1011.73, 19.72, 269.564, 4, 1, 3, 'RE96GUH', 0, 3, 5, 100),
(10, 582, -87.3225, 1077.67, 19.7962, 359.559, 34, 84, 3, 'FT00HPZ', 0, 2, 1, 100),
(11, 582, -84.0148, 1077.74, 19.7982, 359.242, 34, 84, 3, 'HU71RXS', 0, 2, 1, 100),
(12, 426, -80.6413, 1077.17, 19.4852, 0.271242, 47, 0, 3, 'JY23ROI', 0, 2, 3, 100),
(13, 47, -273.935, 1050.23, 19.5938, 3.86609, 2, 2, 3, 'KW14OUF', 0, 3, 5, 100),
(28, 563, -252.921, 1216.31, 28.546, 91.756, 3, 1, 3, 'PT33BXB', 0, 3, 4, 98),
(21, 445, -290.346, 1778.13, 42.583, 90.179, 0, 0, 3, 'BW16YCS', 0, 4, 1, 100),
(16, 560, -290.055, 1772.8, 42.403, 88.572, 0, 0, 3, 'LH56RFS', 0, 4, 1, 100),
(25, 579, -300.991, 1780.03, 42.62, 270.251, 0, 0, 3, 'PR26NLH', 0, 4, 1, 100),
(22, 580, -301.416, 1775.08, 42.484, 269.277, 0, 0, 3, 'SO98TKI', 0, 4, 1, 100),
(19, 409, -291.608, 1728.2, 42.487, 89.616, 0, 0, 3, 'JT45AVI', 0, 4, 1, 100),
(20, 407, -304.612, 1007.67, 19.828, 270.026, 4, 0, 3, 'YJ24ART', 0, 3, 1, 86),
(29, 461, -309.049, 1771.52, 43.225, 137.936, 0, 0, 3, 'LA88EZO', 0, 4, 1, 0),
(56, 478, -53.618, 89.578, 3.117, 250.429, 149, 149, 3, 'ZW22AEN', 0, 5, 1, 0),
(54, 512, -49.292, 70.243, 3.117, 242.186, 149, 149, 3, 'MK67QQI', 0, 5, 1, 99),
(55, 532, -40.955, 81.07, 3.117, 303.797, 149, 149, 3, 'LF89FOG', 0, 5, 1, 0),
(57, 531, -49.285, 97.067, 3.117, 223.622, 149, 149, 3, 'CX50SXL', 0, 5, 1, 0),
(58, 531, -47.805, 101.521, 3.117, 336.597, 149, 149, 3, 'VR22KCG', 0, 5, 1, 0),
(59, 531, -51.55, 101.448, 3.117, 59.686, 149, 149, 3, 'YI34RDE', 0, 5, 1, 0),
(60, 531, -53.11, 98.737, 3.117, 120.409, 149, 149, 3, 'VU40UML', 0, 5, 1, 0),
(61, 531, -51.238, 96.784, 3.117, 204.302, 149, 149, 3, 'FM86TJF', 0, 5, 1, 0),
(62, 478, -52.983, 85.142, 3.117, 139.596, 149, 149, 3, 'VA89KQJ', 0, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `factionweapons`
--

CREATE TABLE IF NOT EXISTS `factionweapons` (
`SQLID` int(6) NOT NULL,
  `Weapon` int(2) NOT NULL,
  `Ammo` int(4) NOT NULL,
  `Faction` int(2) NOT NULL,
  `Status` int(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `factionweapons`
--

INSERT INTO `factionweapons` (`SQLID`, `Weapon`, `Ammo`, `Faction`, `Status`) VALUES
(1, 25, 50, 1, 0),
(2, 34, 30, 1, 0),
(3, 25, 30, 1, 0),
(4, 27, 30, 1, 0),
(5, 34, 30, 1, 0),
(6, 25, 30, 1, 0),
(7, 29, 30, 1, 0),
(8, 25, 30, 1, 0),
(9, 25, 30, 1, 0),
(10, 25, 30, 1, 1),
(11, 25, 30, 1, 0),
(12, 25, 30, 1, 0),
(13, 25, 30, 1, 0),
(14, 25, 30, 1, 0),
(15, 25, 30, 1, 0),
(16, 25, 30, 1, 0),
(17, 25, 30, 1, 0),
(18, 31, 150, 1, 0),
(19, 31, 150, 1, 0),
(20, 31, 150, 1, 0),
(21, 25, 30, 1, 0),
(22, 31, 150, 1, 0),
(23, 34, 20, 1, 1),
(24, 31, 150, 1, 0),
(25, 29, 120, 1, 1),
(26, 34, 20, 1, 0),
(27, 27, 35, 1, 1),
(28, 27, 35, 1, 1),
(29, 31, 150, 1, 1),
(30, 34, 20, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
`SQLID` int(6) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `Interior` int(4) NOT NULL,
  `World` int(5) NOT NULL,
  `IntX` float NOT NULL,
  `IntY` float NOT NULL,
  `IntZ` float NOT NULL,
  `Owner` int(6) NOT NULL,
  `Price` int(12) NOT NULL,
  `Locked` int(2) NOT NULL,
  `Safe` int(12) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`SQLID`, `Name`, `PosX`, `PosY`, `PosZ`, `Interior`, `World`, `IntX`, `IntY`, `IntZ`, `Owner`, `Price`, `Locked`, `Safe`) VALUES
(10, 'Robada Retreat', -1051.28, 1549.5, 33.438, 2, 10, 225.757, 1240, 1082.15, 0, 17000, 0, 0),
(2, '3 Half Street', -348.879, 1168.88, 21.425, 3, 1, -33.655, 1564.23, 1080.21, 0, 1, 0, 0),
(3, '2 Half Street', -322.038, 1171.62, 21.425, 8, 2, -42.381, 1407.25, 1084.43, 1, 1, 1, 0),
(4, '1 Half Street', -295.473, 1174.32, 21.411, 15, 5, 151.627, 1623.31, 1081.82, 0, 1, 0, 0),
(5, '4 Half Street', -324.292, 1127.48, 20.212, 7, 4, -33.021, 1614.37, 1084.43, 0, 1, 0, 0),
(6, '5 Half Street', -360.011, 1130.15, 20.945, 1, 1009, 18.317, 1566.36, 1084.43, 0, 222, 0, 0),
(7, '6 Half Street', -362.046, 1110.62, 20.945, 1, 8, 18.317, 1566.36, 1084.43, 0, 1, 0, 0),
(1, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(9, '2 West Street', -259.295, 1144.14, 20.94, 15, 7, 106.91, 1561.03, 1084.44, 0, 10000, 0, 0),
(11, '1 Fort Carson Lane', -258.723, 1083.46, 20.94, 15, 9, 146.032, 1562.48, 1082.14, 0, 4000, 0, 0),
(12, 'Arco Del Shacko', -798.132, 2256.05, 59.641, 15, 17, 146.032, 1562.48, 1082.14, 0, 40000, 0, 0),
(13, '1 West Street', -260.95, 1181.69, 20.932, 15, 11, 106.91, 1561.03, 1084.44, 0, 13000, 0, 0),
(14, '3 West Street', -256.59, 1128.66, 21.694, 7, 14, -33.021, 1614.37, 1084.43, 0, 12500, 0, 0),
(15, '7 Half Street', -298.457, 1115.04, 20.932, 15, 13, 106.91, 1561.03, 1084.44, 0, 17000, 0, 0),
(16, 'Blueberry Acres Ranch', -62.126, 75.994, 3.117, 15, 16, 62.359, 1557.1, 1083.87, 0, 50000, 0, 0),
(17, 'Foster''s Holiday Home', 1457.36, 2773.43, 10.82, 8, 0, 217.318, 1555.38, 1084.02, 1, 100000000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE IF NOT EXISTS `icons` (
`SQLID` int(6) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `Interior` int(4) NOT NULL,
  `World` int(4) NOT NULL,
  `Type` int(4) NOT NULL,
  `Faction` int(4) NOT NULL,
  `Icon` int(6) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`SQLID`, `Name`, `PosX`, `PosY`, `PosZ`, `Interior`, `World`, `Type`, `Faction`, `Icon`) VALUES
(1, '', 104.337, 1046.41, 13.6436, 0, 0, 1, 0, 1239),
(2, 'Exit', 128.085, 1060.68, 13.6436, 0, 0, 8, 0, 1318),
(3, '', 2315.55, -14.6392, 26.7422, 0, 10, 5, 0, 1212),
(4, 'Scrap Dealer', 70.5404, 1219.05, 18.8121, 0, 0, 9, 0, 1254),
(5, 'Spray Garage (/spray)', 83.4342, 1080.86, 13.6154, 0, 0, 10, 0, 365),
(6, '', -99.6821, 1108.94, 19.7422, 0, 0, 0, 0, 1239),
(7, '', -99.9626, 1109.12, 19.7422, 0, 0, 11, 0, 1239),
(8, '', 2310.52, -8.40322, 26.7422, 0, 10, 4, 0, 1274),
(9, '', -145.946, 1081.9, 19.75, 0, 0, 3, 0, 1239),
(10, 'Department of Motor Vehicles', -291.872, 1206.66, 19.742, 0, 0, 12, 0, 1239),
(11, '', 754.966, -1405.84, 3001.09, 1, 22, 13, 1, 1239),
(12, '', -247.25, 1217.43, 23.287, 0, 0, 13, 3, 1239),
(13, 'Lil Mods', -88.688, 1357.66, 10.273, 0, 0, 14, 0, 1276),
(14, '', 751.891, -1400.43, 3001.09, 1, 22, 15, 1, 1242);

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE IF NOT EXISTS `objects` (
`SQLID` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Model` int(11) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `AngX` float NOT NULL,
  `AngY` float NOT NULL,
  `AngZ` float NOT NULL,
  `World` int(6) NOT NULL,
  `Interior` int(6) NOT NULL,
  `Movable` int(1) NOT NULL,
  `NewX` float NOT NULL,
  `NewY` float NOT NULL,
  `NewZ` float NOT NULL,
  `aNewX` float NOT NULL,
  `aNewY` float NOT NULL,
  `aNewZ` float NOT NULL,
  `Faction` int(2) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`SQLID`, `Name`, `Model`, `PosX`, `PosY`, `PosZ`, `AngX`, `AngY`, `AngZ`, `World`, `Interior`, `Movable`, `NewX`, `NewY`, `NewZ`, `aNewX`, `aNewY`, `aNewZ`, `Faction`) VALUES
(1, 'Vending Machine', 1209, -178.16, 1051.98, 18.754, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'PhoneBooth01', 1216, -205.249, 1078.76, 19.432, 0, 0, 87.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Dealer bollard 1', 19121, 123.503, 1062.76, 13.149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Dealer bollard 2', 19121, 125.492, 1062.75, 13.159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Dealer bollard 3', 19121, 130.342, 1062.85, 13.129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Dealer bollard 4', 19121, 132.396, 1062.95, 13.139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Dealer barrier', 996, 111.613, 1063.08, 13.3094, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'WANG', 11317, 105.988, 1055.41, 17.8694, 0, 0, 89.8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Wang Door', 1569, 126.556, 1061.85, 12.6394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Wang Door', 1569, 129.525, 1061.86, 12.6394, 0, 0, -179.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Wang Glass', 3851, 114.907, 1061.92, 14.5794, 0, 0, -90.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Wang Glass', 3851, 128.054, 1061.87, 14.6294, 0, 0, -90.2999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Wang Glass', 3851, 134.688, 1055.33, 14.6394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Wang Glass', 3851, 114.786, 1036.45, 14.6094, 0, 0, 89.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'Wang Glass', 3851, 101.691, 1036.47, 14.6294, 0, 0, 89.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'Wang Glass', 3851, 83.8843, 1036.45, 14.6097, 0, 0, 89.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Wang Glass', 3851, 127.977, 1036.33, 14.5994, 0, 0, 89.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Pump', 1676, -137.43, 1179.4, 20.33, 0, 0, 90.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'Pump', 1676, -137.531, 1172.13, 20.34, 0, 0, -89.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 'PNS Door', 971, -99.241, 1111.5, 21.0322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 'PNS Door LS', 971, 1025.7, -1029.35, 31.6464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 'TV Door', 971, -1904.93, 277.804, 42.9568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 'SF PNS Door', 971, -1935.87, 238.739, 36.2363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 'SF TV Door', 971, -2716.17, 217.438, 3.83085, 0, 0, -89.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 'SF TV Door 2', 971, -2714.76, 217.391, 4.27085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 'LS PNS 1', 971, 1843.47, -1855.25, 12.2328, 0, 0, -91.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 'LS B gate', 971, 2071.53, -1830.79, 13.1369, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 'House01-Door', 1506, -34.386, 1563.14, 1079.22, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 'dmv', 11431, -291.31, 1209.86, 20.132, 0, 0, 178.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 'Hospital Stairs', 8613, -333.781, 1037.4, 21.6322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 'Tree Test', 700, -206.518, 983.954, 19.164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 'Tree Test', 700, -206.509, 989.796, 19.411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 'Fence FCPD', 970, -206.319, 992.577, 19.558, 0, 1.1, -90.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 'Fence FCPD', 970, -206.33, 996.806, 19.662, 0, 1.4, -89.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 'Fence FCPD', 970, -206.345, 1000.94, 19.729, 0, -0.5, 90.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 'PD Bollard', 19121, -214.796, 1008.11, 19.305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 'PD Bollard', 19121, -222.84, 1008.09, 19.331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 'EQ', 971, -1420.54, 2590.97, 57.167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 'Bait Shop', 11497, -376.186, 1154.46, 18.752, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 'Jail Door', 19304, 743.6, -1406.07, 3003.24, 0, 0, -92, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 'Jail Door1', 19302, 743.555, -1405.2, 3001.37, 0, 0, -91.5, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 'Jail Door2', 19303, 743.528, -1406.86, 3001.36, 0, 0, -90.9, 22, 1, 1, 743.554, -1405.2, 3001.36, 0, 0, -90.9, 1),
(50, 'Jail Door', 19304, 743.556, -1402.05, 3003.25, 0, 0, -89, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 'Jail Door1', 19302, 743.538, -1401.18, 3001.37, 0, 0, -88.9, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 'Jail Door2', 19303, 743.577, -1402.9, 3001.39, 0, 0, -88.7, 22, 1, 1, 743.538, -1401.18, 3001.39, 0, 0, -88.7, 1),
(53, 'Jail Door', 19304, 743.536, -1398.45, 3003.25, 0, 0, -88.8, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 'Jail Door1', 19302, 743.561, -1397.61, 3001.39, 0, 0, -90.2, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 'Jail Door2', 19303, 743.558, -1399.31, 3001.42, 0, 0, -89.9, 22, 1, 1, 743.555, -1397.63, 3001.42, 0, 0, -89.9, 1),
(58, 'SD Door 01', 1495, 762.512, -1400.81, 3000.02, 0, 0, 89.7, 22, 1, 1, 762.505, -1401.97, 3000.02, 0, 0, 89.7, 1),
(59, 'SD Door 02', 1495, 758.117, -1397.15, 2999.98, 0, 0, 89.1, 22, 1, 1, 758.097, -1398.44, 2999.98, 0, 0, 89.1, 1),
(60, 'SD Door 03', 1495, 752.548, -1402.56, 3000.04, 0, 0, -179.9, 22, 1, 1, 753.588, -1402.56, 3000.04, 0, 0, -179.9, 1),
(61, 'SD Door 04', 19303, 747.836, -1399.6, 3001.31, 0, 0, -89.1, 22, 1, 1, 747.855, -1400.81, 3001.31, 0, 0, -89.1, 1),
(63, 'SP Door 06', 1502, 755.9, -1400.88, 3000, 0, 0, -179.6, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 'FD Gate 1', 2957, -257.96, 1210, 20.474, 0, 0, 0, 0, 0, 1, -257.963, 1210.92, 22.059, -90.2, 0, 0, 3),
(67, 'FD Gate 2', 2957, -251.848, 1210, 20.474, 0, 0, 0, 0, 0, 1, -251.848, 1210.91, 22.051, -90.2, 0, 0, 3),
(68, 'FD Gate 3', 2957, -245.736, 1210, 20.474, 0, 0, 0, 0, 0, 1, -245.735, 1211.03, 22.029, -90.2, 0, 0, 3),
(72, 'FD Door', 1566, -220.313, 1210.26, 19.892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `playervehicles`
--

CREATE TABLE IF NOT EXISTS `playervehicles` (
`SQLID` int(5) NOT NULL,
  `Model` int(4) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `PosA` float NOT NULL,
  `Color1` int(3) NOT NULL,
  `Color2` int(3) NOT NULL,
  `Type` int(11) NOT NULL,
  `Plate` varchar(11) NOT NULL,
  `Owner` int(6) NOT NULL,
  `Fuel` int(3) NOT NULL,
  `Damage` float NOT NULL,
  `Radio` int(1) NOT NULL,
  `Nitrous` int(4) NOT NULL,
  `Hydraulics` int(4) NOT NULL,
  `Wheels` int(4) NOT NULL,
  `Panels` int(8) NOT NULL,
  `Doors` int(8) NOT NULL,
  `Lights` int(11) NOT NULL,
  `Tires` int(8) NOT NULL,
  `Broken` int(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `playervehicles`
--

INSERT INTO `playervehicles` (`SQLID`, `Model`, `PosX`, `PosY`, `PosZ`, `PosA`, `Color1`, `Color2`, `Type`, `Plate`, `Owner`, `Fuel`, `Damage`, `Radio`, `Nitrous`, `Hydraulics`, `Wheels`, `Panels`, `Doors`, `Lights`, `Tires`, `Broken`) VALUES
(2, 402, -330.885, 1179.71, 20.573, 0.124, 0, 0, 1, 'EA82JGP', 1, 99, 495.314, 1, 1010, 0, 1075, 0, 0, 0, 0, 0),
(25, 579, -330.839, 1162.3, 19.832, 179.42, 1, 0, 1, 'GU74RAS', 1, 98, 991.086, 1, 1010, 1087, 1080, 0, 0, 0, 0, 0),
(33, 445, 114.141, 1066.53, 13.382, 269.892, 10, 0, 1, 'MW23CYE', 1, 56, 971.881, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `policenationalcomputer`
--

CREATE TABLE IF NOT EXISTS `policenationalcomputer` (
`ID` int(11) NOT NULL,
  `Time` int(11) NOT NULL,
  `Player` int(6) NOT NULL,
  `Officer` int(6) NOT NULL,
  `OfficerName` varchar(24) NOT NULL,
  `OfficerRank` varchar(32) NOT NULL,
  `Type` int(2) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `Value` int(10) NOT NULL,
  `PlayerName` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `servervehicles`
--

CREATE TABLE IF NOT EXISTS `servervehicles` (
`SQLID` int(5) NOT NULL,
  `Model` int(4) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `PosA` float NOT NULL,
  `Color1` int(3) NOT NULL,
  `Color2` int(3) NOT NULL,
  `Type` int(11) NOT NULL,
  `Plate` varchar(11) NOT NULL,
  `Locked` int(4) NOT NULL,
  `Fuel` int(2) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `servervehicles`
--

INSERT INTO `servervehicles` (`SQLID`, `Model`, `PosX`, `PosY`, `PosZ`, `PosA`, `Color1`, `Color2`, `Type`, `Plate`, `Locked`, `Fuel`) VALUES
(2, 436, -82.1378, 1340.16, 10.6698, 7.71223, 0, 0, 2, 'FNB-0442', 0, 93),
(1, 579, 129.571, 1052.11, 13.65, 25.1568, 1, 7, 2, 'OR79ZAB', 1, 100),
(3, 451, 84.7893, 1048.24, 13.6436, 229.316, 2, 7, 2, 'JG89PZE', 1, 100),
(4, 500, 114.163, 1057.53, 13.6436, 324.832, 53, 23, 2, 'OH36ODG', 1, 100),
(5, 466, 122.11, 1050.58, 13.6436, 359.061, 82, 34, 2, 'LU30IGO', 1, 100),
(6, 461, 113.669, 1045.59, 13.6436, 267.167, 153, 0, 2, 'HD04ZXR', 1, 100),
(7, 549, 114.233, 1050.37, 13.2493, 312.544, 9, 63, 2, 'CD26GMU', 1, 100),
(8, 415, 92.5838, 1048.9, 13.4143, 228.569, 1, 73, 2, 'AJ18XWU', 1, 100),
(9, 584, -135.094, 1160.76, 19.75, 88.0041, 1, 1, 2, 'DR05ALF', 1, 100),
(10, 499, -159.971, 1082.33, 19.7339, 331.41, 73, 5, 2, 'YV28FFY', 0, 100),
(11, 440, -150.799, 1082.1, 19.8571, 19.103, 92, 52, 2, 'XX17EZH', 0, 100),
(12, 413, -154.495, 1082.12, 19.8327, 18.6071, 7, 2, 2, 'MP51QPN', 0, 100),
(14, 492, -288.059, 1200.89, 19.524, 268.27, 46, 23, 4, 'OA22GCZ', 0, 84),
(15, 492, -288.359, 1197.5, 19.524, 268.572, 46, 23, 4, 'YV51EGG', 0, 94),
(16, 515, 585.626, 1643.27, 8.011, 64.144, 23, 43, 5, 'CY52WEL', 0, 100),
(17, 456, 597.516, 1653.54, 7.166, 64.546, 73, 79, 5, 'UO41NYS', 0, 94),
(18, 440, 648.213, 1704.77, 7.112, 131.149, 91, 32, 5, 'GS47LGY', 0, 100),
(20, 456, 601.502, 1657.17, 7.165, 64.339, 22, 72, 5, 'UZ49FRZ', 0, 67),
(21, 456, 605.831, 1660.31, 7.165, 64.997, 53, 71, 5, 'RP56LGY', 0, 82),
(22, 403, 589.16, 1646.84, 7.599, 64.325, 92, 11, 5, 'LS18BPB', 0, 100),
(23, 403, 594.728, 1649.72, 7.598, 65.686, 97, 11, 5, 'TP60PZZ', 0, 100),
(24, 413, 651.528, 1700.53, 7.078, 129.788, 33, 11, 5, 'RR84JPO', 0, 66),
(26, 482, 668.624, 1730.19, 7.06, 40.263, 82, 41, 5, 'AV70PMQ', 0, 100),
(27, 420, -160.404, 1132.43, 19.521, 180.095, 6, 0, 2, 'WX32LTY', 0, 99),
(28, 420, -156.607, 1132.35, 19.522, 178.4, 6, 6, 2, 'OM27OAZ', 0, 94),
(29, 438, -152.969, 1132.48, 19.745, 177.551, 6, 6, 2, 'HY41PSL', 0, 0),
(30, 473, -484.809, 2190.37, 40.42, 89.369, 34, 0, 2, 'YY27OFY', 0, 39),
(31, 527, -61.325, 1348.89, 10.532, 335.912, 4, 5, 6, 'PV61KUO', 0, 83);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `ID` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Version` varchar(16) NOT NULL,
  `Locked` int(2) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Weather` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`ID`, `Name`, `Version`, `Locked`, `Password`, `Weather`) VALUES
(0, 'Small County Roleplay', 'SC:RP 0.1a', 0, 'NONE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicleradio`
--

CREATE TABLE IF NOT EXISTS `vehicleradio` (
`id` int(6) NOT NULL,
  `vid` int(6) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `streamURL` varchar(264) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vehicleradio`
--

INSERT INTO `vehicleradio` (`id`, `vid`, `Name`, `streamURL`) VALUES
(1, 2, 'Hot 108', 'http://sc.hot108.com:4020/listen.pls'),
(2, 2, 'The Devil is a LIER', 'Devil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `911 calls`
--
ALTER TABLE `911 calls`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
 ADD PRIMARY KEY (`SQLID`), ADD UNIQUE KEY `SQLID` (`SQLID`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
 ADD PRIMARY KEY (`SQLID`), ADD UNIQUE KEY `ID` (`SQLID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Username` (`Name`), ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
 ADD PRIMARY KEY (`SQLID`);

--
-- Indexes for table `factionvehicles`
--
ALTER TABLE `factionvehicles`
 ADD PRIMARY KEY (`SQLID`);

--
-- Indexes for table `factionweapons`
--
ALTER TABLE `factionweapons`
 ADD PRIMARY KEY (`SQLID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
 ADD PRIMARY KEY (`SQLID`), ADD UNIQUE KEY `SQLID` (`SQLID`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
 ADD PRIMARY KEY (`SQLID`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
 ADD PRIMARY KEY (`SQLID`);

--
-- Indexes for table `playervehicles`
--
ALTER TABLE `playervehicles`
 ADD PRIMARY KEY (`SQLID`);

--
-- Indexes for table `policenationalcomputer`
--
ALTER TABLE `policenationalcomputer`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `servervehicles`
--
ALTER TABLE `servervehicles`
 ADD PRIMARY KEY (`SQLID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `vehicleradio`
--
ALTER TABLE `vehicleradio`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `911 calls`
--
ALTER TABLE `911 calls`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
MODIFY `SQLID` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
MODIFY `SQLID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
MODIFY `SQLID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `factionvehicles`
--
ALTER TABLE `factionvehicles`
MODIFY `SQLID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `factionweapons`
--
ALTER TABLE `factionweapons`
MODIFY `SQLID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
MODIFY `SQLID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
MODIFY `SQLID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
MODIFY `SQLID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `playervehicles`
--
ALTER TABLE `playervehicles`
MODIFY `SQLID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `policenationalcomputer`
--
ALTER TABLE `policenationalcomputer`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `servervehicles`
--
ALTER TABLE `servervehicles`
MODIFY `SQLID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `vehicleradio`
--
ALTER TABLE `vehicleradio`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
