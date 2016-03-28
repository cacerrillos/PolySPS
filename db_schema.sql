-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:23306
-- Generation Time: Mar 28, 2016 at 10:18 PM
-- Server version: 5.6.27-log
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

--
-- Database: `sps`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `block_id` int(10) UNSIGNED NOT NULL,
  `block_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `date` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade_levels`
--

CREATE TABLE `grade_levels` (
  `grade_id` int(11) UNSIGNED NOT NULL,
  `grade_name` varchar(255) NOT NULL,
  `default_amount` int(10) UNSIGNED NOT NULL DEFAULT '17'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `house_id` int(10) UNSIGNED NOT NULL,
  `house_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(10) UNSIGNED NOT NULL,
  `location_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presentations`
--

CREATE TABLE `presentations` (
  `presentation_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `house_id` int(10) UNSIGNED NOT NULL,
  `date` int(11) UNSIGNED NOT NULL,
  `block_id` int(11) UNSIGNED NOT NULL,
  `location_id` int(11) UNSIGNED NOT NULL,
  `claimed` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presentation_limits`
--

CREATE TABLE `presentation_limits` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade_level` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presentation_text`
--

CREATE TABLE `presentation_text` (
  `presentation_id` int(10) UNSIGNED NOT NULL,
  `presentation_text` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `presentation` int(10) UNSIGNED NOT NULL,
  `viewer` int(10) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `entrykey` varchar(255) NOT NULL,
  `entryvalue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `viewers`
--

CREATE TABLE `viewers` (
  `viewer_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `house_id` int(11) UNSIGNED NOT NULL,
  `grade_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `grade_levels`
--
ALTER TABLE `grade_levels`
  ADD PRIMARY KEY (`grade_id`),
  ADD UNIQUE KEY `grade_level` (`grade_name`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`house_id`),
  ADD UNIQUE KEY `housename` (`house_name`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `presentations`
--
ALTER TABLE `presentations`
  ADD PRIMARY KEY (`presentation_id`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `date` (`date`),
  ADD KEY `block_id` (`block_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `presentation_limits`
--
ALTER TABLE `presentation_limits`
  ADD PRIMARY KEY (`id`,`grade_level`) USING BTREE,
  ADD KEY `presentation_limits_ibfk_2` (`grade_level`);

--
-- Indexes for table `presentation_text`
--
ALTER TABLE `presentation_text`
  ADD PRIMARY KEY (`presentation_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`presentation`,`viewer`),
  ADD KEY `registrations_ibfk_2` (`viewer`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`entrykey`);

--
-- Indexes for table `viewers`
--
ALTER TABLE `viewers`
  ADD PRIMARY KEY (`viewer_id`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `block_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `grade_levels`
--
ALTER TABLE `grade_levels`
  MODIFY `grade_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `house_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `presentations`
--
ALTER TABLE `presentations`
  MODIFY `presentation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `viewers`
--
ALTER TABLE `viewers`
  MODIFY `viewer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `presentations`
--
ALTER TABLE `presentations`
  ADD CONSTRAINT `presentations_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`house_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presentations_ibfk_2` FOREIGN KEY (`date`) REFERENCES `dates` (`date`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presentations_ibfk_3` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`block_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presentations_ibfk_4` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON UPDATE CASCADE;

--
-- Constraints for table `presentation_limits`
--
ALTER TABLE `presentation_limits`
  ADD CONSTRAINT `presentation_limits_ibfk_1` FOREIGN KEY (`id`) REFERENCES `presentations` (`presentation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presentation_limits_ibfk_2` FOREIGN KEY (`grade_level`) REFERENCES `grade_levels` (`grade_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presentation_text`
--
ALTER TABLE `presentation_text`
  ADD CONSTRAINT `presentation_text_ibfk_1` FOREIGN KEY (`presentation_id`) REFERENCES `presentations` (`presentation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`presentation`) REFERENCES `presentations` (`presentation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`viewer`) REFERENCES `viewers` (`viewer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `viewers`
--
ALTER TABLE `viewers`
  ADD CONSTRAINT `viewers_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`house_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `viewers_ibfk_2` FOREIGN KEY (`grade_id`) REFERENCES `grade_levels` (`grade_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
