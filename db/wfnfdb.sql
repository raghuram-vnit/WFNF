-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2015 at 01:26 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wfnfdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_date` date NOT NULL,
  `total_events` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_date`, `total_events`) VALUES
('2015-09-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_detail`
--

CREATE TABLE IF NOT EXISTS `event_detail` (
  `event_id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event` varchar(200) NOT NULL,
  `farmer_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event_subscription`
--

CREATE TABLE IF NOT EXISTS `event_subscription` (
  `event_subscription_id` int(11) unsigned NOT NULL,
  `event_id` int(11) NOT NULL,
  `vounteer_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE IF NOT EXISTS `role_master` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `send_email`
--

CREATE TABLE IF NOT EXISTS `send_email` (
  `id` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `email_subject` varchar(50) NOT NULL,
  `email_body` text NOT NULL,
  `invalid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_master`
--

CREATE TABLE IF NOT EXISTS `status_master` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL,
  `status_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE IF NOT EXISTS `user_master` (
  `user_id` int(10) unsigned NOT NULL,
  `user_fname` varchar(100) NOT NULL,
  `user_mname` varchar(100) DEFAULT NULL,
  `user_lname` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL DEFAULT 'e99a18c428cb38d5f260853678922e03',
  `user_address` varchar(500) NOT NULL DEFAULT 'Address',
  `user_city` varchar(100) NOT NULL DEFAULT 'City',
  `user_state` varchar(100) NOT NULL DEFAULT 'State',
  `user_country` varchar(100) NOT NULL DEFAULT 'India',
  `user_pin` varchar(10) NOT NULL DEFAULT '111111',
  `user_photo` varchar(100) NOT NULL DEFAULT 'NULL',
  `user_phone` varchar(12) NOT NULL DEFAULT '9999999999',
  `user_email` varchar(100) NOT NULL,
  `user_status` varchar(10) NOT NULL DEFAULT 'Active',
  `user_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_fname`, `user_mname`, `user_lname`, `user_password`, `user_address`, `user_city`, `user_state`, `user_country`, `user_pin`, `user_photo`, `user_phone`, `user_email`, `user_status`, `user_created`, `user_updated`) VALUES
(1, 'raghuram', NULL, 'm', '123456', 'Address', 'City', 'State', 'India', '560066', 'NULL', '9538200210', 'raghuram.vnit@gmail.com', 'Active', '0000-00-00 00:00:00', '2015-09-20 06:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_map`
--

CREATE TABLE IF NOT EXISTS `user_role_map` (
  `user_id` int(10) unsigned NOT NULL,
  `role_name` varchar(25) NOT NULL DEFAULT 'Volunteer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_map`
--

INSERT INTO `user_role_map` (`user_id`, `role_name`) VALUES
(1, 'Farmer');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE IF NOT EXISTS `user_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_date`);

--
-- Indexes for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_date` (`event_date`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `event_subscription`
--
ALTER TABLE `event_subscription`
  ADD PRIMARY KEY (`event_subscription_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `vounteer_id` (`vounteer_id`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`),
  ADD UNIQUE KEY `role_name_2` (`role_name`);

--
-- Indexes for table `send_email`
--
ALTER TABLE `send_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_master`
--
ALTER TABLE `status_master`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`),
  ADD UNIQUE KEY `status_name_2` (`status_name`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_email_2` (`user_email`);

--
-- Indexes for table `user_role_map`
--
ALTER TABLE `user_role_map`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_detail`
--
ALTER TABLE `event_detail`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `event_subscription`
--
ALTER TABLE `event_subscription`
  MODIFY `event_subscription_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `send_email`
--
ALTER TABLE `send_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_master`
--
ALTER TABLE `status_master`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD CONSTRAINT `event_detail_fk` FOREIGN KEY (`event_date`) REFERENCES `events` (`event_date`),
  ADD CONSTRAINT `event_user_fk` FOREIGN KEY (`farmer_id`) REFERENCES `user_master` (`user_id`);

--
-- Constraints for table `event_subscription`
--
ALTER TABLE `event_subscription`
  ADD CONSTRAINT `event_subscription_fk` FOREIGN KEY (`event_id`) REFERENCES `event_detail` (`event_id`),
  ADD CONSTRAINT `volunteer_event_fk` FOREIGN KEY (`vounteer_id`) REFERENCES `user_master` (`user_id`);

--
-- Constraints for table `user_role_map`
--
ALTER TABLE `user_role_map`
  ADD CONSTRAINT `user_role_map_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_master` (`user_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
