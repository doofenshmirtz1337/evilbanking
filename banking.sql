-- phpMyAdmin SQL Dump
-- https://www.phpmyadmin.net/
-- Host: localhost:3306


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evilbanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `fromEmail` varchar(100) NOT NULL,
  `toEmail` varchar(100) NOT NULL,
  `content` varchar(200) NOT NULL DEFAULT 'Transfers',
  `cash` decimal(10,0) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userID` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPass` varchar(100) NOT NULL, -- md5(pass)
  `userStatus` enum('Y','N') NOT NULL DEFAULT 'Y',
  `tokenCode` varchar(100) NOT NULL,
  `userBalance` decimal(10,0) NOT NULL DEFAULT 1000000
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toID` (`toEmail`),
  ADD KEY `fromID` (`fromEmail`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);


--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

-- Doofenshmirtz
INSERT into tbl_users (userName, userEmail, userPass, userStatus, tokenCode) VALUES ("evildoof", "doof@evilcorp.com","232d160d767b645ff07856ccf52a8c93", "Y", "c4ca4238a0b923820dcc509a6f75849b");


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
