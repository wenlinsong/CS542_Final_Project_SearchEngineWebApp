-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2014 at 12:47 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotels`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel_distance`
--

CREATE TABLE IF NOT EXISTS `hotel_distance` (
  `id` int(11) NOT NULL,
  `area` varchar(20) NOT NULL,
  `toFifthAve` float NOT NULL,
  `toMuseum` float NOT NULL,
  `toFerry` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_distance`
--

INSERT INTO `hotel_distance` (`id`, `area`, `toFifthAve`, `toMuseum`, `toFerry`) VALUES
(1, 'Time Square', 0.8, 4.2, 3.1),
(2, 'Manhattan', 0.5, 5.5, 2.3),
(3, 'Time Square', 0.6, 2.8, 3.3),
(4, 'Manhattan', 2.1, 4.5, 2),
(5, 'Central Park', 5.2, 0.2, 1.5),
(6, 'Brooklyn', 8.1, 5.3, 3.8),
(7, 'Time Square', 0.8, 0.8, 2.5),
(8, 'Soho', 1.5, 2.5, 8.5),
(9, 'Central Park', 3, 0.5, 2.5),
(10, 'Manhattan', 1.3, 2.1, 2),
(11, 'Brooklyn', 7.8, 4.5, 8.8),
(12, 'JFK', 10.1, 12.4, 5.6),
(13, 'Manhattan', 1.5, 0.9, 1.3),
(14, 'Central Park', 4.5, 0.1, 1.8),
(15, 'Soho', 8.5, 3.1, 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_newyork`
--

CREATE TABLE IF NOT EXISTS `hotel_newyork` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `star` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_newyork`
--

INSERT INTO `hotel_newyork` (`id`, `name`, `star`) VALUES
(1, 'Hilton', 4),
(2, 'Marriott', 3),
(3, 'Inn', 2),
(4, 'Empire', 4),
(5, 'Westin', 4),
(6, 'Union', 3),
(7, 'Hudson', 4),
(8, 'Countyard', 3),
(9, 'Four Seasons', 5),
(10, 'Four Points', 4),
(11, 'Sheraton', 4),
(12, 'Mayfair', 2),
(13, 'Riverside', 2),
(14, 'Conrad', 5),
(15, 'Intercontinental', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_price`
--

CREATE TABLE IF NOT EXISTS `hotel_price` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_price`
--

INSERT INTO `hotel_price` (`id`, `price`) VALUES
(1, 299),
(2, 243),
(3, 189),
(4, 350),
(5, 330),
(6, 232),
(7, 340),
(8, 205),
(9, 275),
(10, 237),
(11, 280),
(12, 150),
(13, 169),
(14, 485),
(15, 302);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_review`
--

CREATE TABLE IF NOT EXISTS `hotel_review` (
  `id` int(11) NOT NULL,
  `cleanliness` float NOT NULL,
  `staff` float NOT NULL,
  `location` float NOT NULL,
  `dining` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_review`
--

INSERT INTO `hotel_review` (`id`, `cleanliness`, `staff`, `location`, `dining`) VALUES
(1, 9.1, 8.8, 9.2, 8.4),
(2, 9, 9.1, 9.1, 8.6),
(3, 9.3, 8.7, 8.7, 8.2),
(4, 9.2, 8.9, 9.3, 8.3),
(5, 9, 9.2, 8.9, 7.6),
(6, 8.8, 8.9, 9, 8.1),
(7, 9.3, 8.7, 9.3, 8),
(8, 8.9, 9.3, 8.7, 9),
(9, 9.5, 9, 9, 8.6),
(10, 9.2, 8.9, 9.5, 8.5),
(11, 9, 9.1, 9.1, 8.2),
(12, 8.9, 9, 8.8, 7.9),
(13, 9.1, 9.1, 8.6, 8),
(14, 9.1, 9.3, 9, 7.8),
(15, 9.3, 9.2, 8.9, 7.7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
