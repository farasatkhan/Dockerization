-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2022 at 03:15 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roadrunner_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL,
  `privilege` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_email`, `admin_password`, `privilege`) VALUES
(1, 'admin@gmail.com', 'password1', 'admin'),
(4, 'asdasd@gmail.co.uk', 'gggggggg8', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

DROP TABLE IF EXISTS `checkouts`;
CREATE TABLE IF NOT EXISTS `checkouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `date_time_allowed` date DEFAULT NULL,
  `price` int(11) NOT NULL,
  `no_of_items` int(11) NOT NULL,
  `color` text NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkouts`
--

INSERT INTO `checkouts` (`id`, `product_id`, `userId`, `date_time_allowed`, `price`, `no_of_items`, `color`, `size`) VALUES
(11, 14, 10, NULL, 1800, 1, 'blue', 'XS'),
(10, 13, 9, NULL, 4000, 1, 'blue', 'XS');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(200) NOT NULL,
  `product_price` decimal(6,0) NOT NULL,
  `product_sizes` varchar(100) NOT NULL,
  `product_quality` varchar(100) NOT NULL,
  `product_description` varchar(1000) NOT NULL,
  `product_images` varchar(1000) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_price`, `product_sizes`, `product_quality`, `product_description`, `product_images`) VALUES
(13, 'Men\'s Tree Runners', '4000', '10, 11, 12, 13', 'sweat-wicking,breathable', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_1-image-1.jpg;shoe_1-image-2.jpg;shoe_1-image-3.jpg;shoe_1-image-4.jpg;shoe_1-image-5.jpg'),
(11, 'Men\'s Tree Dasher Relay', '3000', '8, 9, 10, 11, 12, 13', 'sweat-wicking,breathable', 'Seamless one-piece upper provides maximum comfort', 'shoe_2-image-1.jpg;shoe_2-image-2.jpg;shoe_2-image-3.jpg;shoe_2-image-4.jpg'),
(14, 'Men\'s Tree Skippers', '1800', '9, 10, 11, 12, 13, 15', 'sweat-wicking,breathable', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_10-image-1.jpg;shoe_10-image-2.jpg;shoe_10-image-3.jpg;shoe_10-image-4.jpg;shoe_10-image-5.jpg'),
(15, 'Men\'s Tree Toppers', '1500', '8, 9, 10, 11, 12', 'sweat-wicking,breathable,Light Weight', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_8-image-1.jpg;shoe_8-image-2.jpg;shoe_8-image-3.jpg;shoe_8-image-4.jpg'),
(16, 'Men\'s Wool Piper Mids', '1800', '8, 9, 10, 11, 12', 'sweat-wicking,Light Weight', 'Our breathable, silky-smooth sneaker made with responsibly sourced eucalyptus tree fiber treads lightly in everything you do.', 'shoe_9-image-1.jpg;shoe_9-image-2.jpg;shoe_9-image-3.jpg;shoe_9-image-4.jpg;shoe_9-image-5.jpg'),
(17, 'Men\'s Wool Pipers', '2500', '12, 13, 14', 'sweat-wicking,breathable', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_6-image-1.jpg;shoe_6-image-2.jpg;shoe_6-image-3.jpg;shoe_6-image-4.jpg'),
(18, 'Men\'s Wool Runner Mizzles', '4600', '8, 9, 10, 11, 12', 'sweat-wicking,breathable,Light Weight', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_4-image-1.jpg;shoe_4-image-2.jpg;shoe_4-image-3.jpg;shoe_4-image-4.jpg;shoe_4-image-5.jpg'),
(19, 'Men\'s Wool Runners', '5500', '8, 9, 10, 11, 12', 'sweat-wicking,breathable,Light Weight', 'Wear-with-everything classic style, great for travel', 'shoe_3-image-1.jpg;shoe_3-image-2.jpg;shoe_3-image-3.jpg;shoe_3-image-4.jpg;shoe_3-image-5.jpg'),
(20, 'Men\'s Wool Runner-up Mizzles', '3300', '8, 9, 10, 11, 12', 'sweat-wicking,breathable', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_7-image-1.jpg;shoe_7-image-2.jpg;shoe_7-image-3.jpg;shoe_7-image-4.jpg'),
(22, 'Women\'s Tree Pipers', '2400', '12, 13, 14', 'sweat-wicking,breathable', 'Walking, warmer weather, everyday wear', 'shoe_15-image-1.jpg;shoe_15-image-2.jpg;shoe_15-image-3.jpg;shoe_15-image-4.jpg;shoe_15-image-5.jpg'),
(23, 'Women\'s Tree Runners', '2600', '8, 9, 10, 11, 12', 'sweat-wicking,breathable,Light Weight', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_11-image-1.jpg;shoe_11-image-2.jpg;shoe_11-image-3.jpg;shoe_11-image-4.jpg;shoe_11-image-5.jpg'),
(24, 'Women\'s Tree Skippers', '2700', '8, 9, 10, 11', 'sweat-wicking,breathable', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_12-image-1.jpg;shoe_12-image-2.jpg;shoe_12-image-3.jpg;shoe_12-image-4.jpg;shoe_12-image-5.jpg'),
(25, 'Women\'s Tree Toppers', '3000', '8, 9, 10, 11, 12', 'sweat-wicking,breathable', 'Lightweight, breathable eucalyptus fiber provides next-level comfort', 'shoe_20-image-1.jpg;shoe_20-image-2.jpg;shoe_20-image-3.jpg'),
(26, 'Women\'s Wool Piper Mids', '3300', '8, 9, 10, 11, 12', 'sweat-wicking,breathable', 'Wear-with-everything classic style, great for travel', 'shoe_19-image-1.jpg;shoe_19-image-2.jpg;shoe_19-image-3.jpg;shoe_19-image-4.jpg;shoe_19-image-5.jpg'),
(27, 'Women\'s Wool Pipers', '3500', '8, 9, 10, 11, 12', 'sweat-wicking,breathable', 'Warm and cozy ZQ Merino wool provides next-level comfort', 'shoe_17-image-1.jpg;shoe_17-image-2.jpg;shoe_17-image-3.jpg;shoe_17-image-4.jpg;shoe_17-image-5.jpg'),
(28, 'Women\'s Wool Runner Fluffs', '2500', '8, 9, 10, 11, 12', 'sweat-wicking,Light Weight', 'Cushioned midsole gives wear-all-day support', 'shoe_21-image-1.jpg;shoe_21-image-2.jpg;shoe_21-image-3.jpg;shoe_21-image-4.jpg'),
(29, 'Women\'s Wool Runner Mizzles', '3700', '8, 9, 10, 11, 12', 'sweat-wicking,breathable', 'Machine-washable materials keep shoes looking like new', 'shoe_16-image-1.jpg;shoe_16-image-2.jpg;shoe_16-image-3.jpg;shoe_16-image-4.jpg;shoe_16-image-5.jpg'),
(30, 'Women\'s Wool Runners', '3600', '8, 9, 10, 11, 12', 'breathable,Light Weight', 'Warm and cozy ZQ Merino wool provides next-level comfort', 'shoe_15-image-1.jpg;shoe_15-image-2.jpg;shoe_15-image-3.jpg;shoe_15-image-4.jpg;shoe_15-image-5.jpg'),
(31, 'Women\'s Wool Runner-up Mizzles', '3900', '8, 9, 10, 11, 12', 'sweat-wicking,Light Weight', 'Warm and cozy ZQ Merino wool provides next-level comfort', 'shoe_18-image-1.jpg;shoe_18-image-2.jpg;shoe_18-image-3.jpg;shoe_18-image-4.jpg;shoe_18-image-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` date DEFAULT NULL,
  `userName` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `userId`, `product_id`, `stars`, `comment`, `date`, `userName`) VALUES
(9, 1, 13, 3, 'my my', NULL, 'Farasat Khan'),
(8, 1, 11, 5, 'ok', NULL, 'Farasat Khan'),
(10, 1, 14, 3, 'ko', NULL, 'Farasat Khan'),
(11, 9, 11, 3, 'my my', NULL, 'Dawood Ali'),
(12, 9, 13, 5, 'luv', NULL, 'Dawood Ali'),
(13, 1, 11, 3, 'jjj', NULL, 'ok'),
(14, 1, 11, 3, 'jjj', NULL, 'ok'),
(15, 1, 11, 3, 'jj1j', NULL, 'ok'),
(16, 1, 11, 3, 'jj12j', NULL, 'ok'),
(17, 10, 11, 5, 'Excellent quality ... pehnana ma maza aya na ya hasnata jese ki kutai ma mza aiya', NULL, 'hanzla tariq');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
CREATE TABLE IF NOT EXISTS `searches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text NOT NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `value`, `times`) VALUES
(8, 'piper', 1),
(7, 'pipers', 1),
(6, 'wool', 2),
(5, 'tree', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_dob` varchar(100) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `privilege` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_dob`, `user_gender`, `privilege`) VALUES
(1, 'Farasat Khan', 'farasatkahan@gmail.com', 'password1', '2022-06-05', 'male', 'user'),
(9, 'Dawood Ali', 'dawood@gmail.com', 'password1', '2022-06-17', 'male', 'user'),
(10, 'hanzla tariq', 'hanzlaonmail12@gmail.com', 'shooterin12', '1999-02-07', 'male', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
