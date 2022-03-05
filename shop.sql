-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2022 at 12:10 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text COLLATE utf8_persian_ci NOT NULL,
  `password` text COLLATE utf8_persian_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `status`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'admin1@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `backet`
--

DROP TABLE IF EXISTS `backet`;
CREATE TABLE IF NOT EXISTS `backet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ctime` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `backet`
--

INSERT INTO `backet` (`id`, `pid`, `uid`, `ctime`) VALUES
(82, 27, 15, '2019-02-22 13:45:17'),
(85, 31, 14, '2022-02-24 11:01:52'),
(84, 31, 13, '2019-02-24 10:46:17'),
(83, 28, 15, '2019-02-22 13:45:23'),
(80, 30, 14, '2019-02-22 13:37:58'),
(81, 28, 14, '2019-02-22 13:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `image` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `ctime` timestamp NOT NULL,
  `status` varchar(255) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `image`, `description`, `ctime`, `status`) VALUES
(12, 'a', 'WIN_20180507_06_27_49_Pro.jpg', '<p>aaaaaaaaaaaaaaaaaaaaaa</p>', '2022-02-27 14:44:03', '1'),
(14, 'c', 'WIN_20180507_06_28_08_Pro.jpg', '<p>aaaaaaaaaaaaaaaaaaaaaa</p>', '2022-02-27 14:46:34', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fullname`, `phone`, `email`, `description`, `status`) VALUES
(61, 'Ø­Ø³ÛŒÙ† Ø±Ø¶Ø§ÛŒÛŒ', '09139913419', 'hossien@yahoo.com', 'Ø¹Ø±Ø¶ Ø³Ù„Ø§Ù… Ùˆ Ø®ØªØ³Ù‡ Ù†Ø¨Ø§Ø´ÛŒØ¯ Ø®Ø¯Ù…Øª Ø´Ù…Ø§ \r\n\r\nÙ„Ø·ÙØ§ Ù„ÛŒÙ†Ú© Ø¯Ø§Ù†Ù„ÙˆØ¯ Ù¾Ú©ÛŒØ¬ Ù‡Ø§Ø±Ùˆ Ø¨Ø±Ø§Ù… Ø§Ø±Ø³Ø§Ù„ Ú©Ù†ÛŒØ¯\r\n\r\nÙ…Ø±Ø³ÛŒ :)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `fullname` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `message` text COLLATE utf8_persian_ci NOT NULL,
  `ctime` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `pid`, `fullname`, `message`, `ctime`, `status`) VALUES
(33, 30, 'Ø¹Ù„ÛŒ Ù‚Ø§Ø³Ù…ÛŒ', 'Ø³Ù„Ø§Ù… Ø¨Ù‡ Ù‡Ù…Ú¯ÛŒØŒ Ø§ÛŒÙ† ÛŒÚ© Ù†Ø¸Ø± Ø¨Ø±Ø§ÛŒ ØªØ³Øª ØªØ§Ø±ÛŒØ® Ø´Ù…Ø³ÛŒ Ù…ÛŒ Ø¨Ø§Ø´Ø¯.', '2022-02-23 12:33:23', 1),
(30, 27, 'Ø¹Ù„ÛŒ Ù‚Ø§Ø³Ù…ÛŒ', 'Ø¨Ù‡ØªØ±ÛŒÙ† Ù„Ù¾ ØªØ§Ù¾ Ù…ÙˆØ¬ÙˆØ¯ Ø¯Ø± Ø¨Ø§Ø²Ø§Ø±', '2019-02-03 11:57:42', 1),
(31, 27, 'Ø­Ø³Ø§Ù… Ú©Ø§Ù…ÛŒØ§Ø±', 'Ø³Ù„Ø§Ù… Ú©ÛŒ ØªØ®ÙÛŒÙ Ù…ÛŒØ®ÙˆØ±Ù‡ Ø§ÛŒÙ† Ù…Ø­ØµÙˆÙ„ Ù…Ù…Ù†ÙˆÙ† Ù…ÛŒØ´Ù… Ø¨Ú¯ÛŒØ¯ :)', '2019-02-22 17:09:39', 1),
(32, 27, 'Ù…Ø­Ù…Ø¯ Ø­Ø³ÛŒÙ† Ø§Ú©Ø¨Ø±ÛŒØ§Ù†', 'Ø³Ù„Ø§Ù… Ù…Ø­ØµÙˆÙ„ Ø§Ù…Ø±ÙˆØ² Ø¨Ù‡ Ø¯Ø³ØªÙ… Ø±Ø³ÛŒØ¯ Ø®ÛŒÙ„ÛŒ Ø¨Ø§ Ú©ÛŒÙÛŒØª ØªØ± Ø§Ø² Ø¹Ú©Ø³Ø´ Ø¨ÙˆØ¯ Ù…Ù…Ù†ÙˆÙ† Ø§Ø² Ø³Ø§ÛŒØª Ø®ÙˆØ¨ØªÙˆÙ†', '2019-02-22 17:16:31', 1),
(34, 28, 'Ø¹Ù„ÛŒ Ù‚Ø§Ø³Ù…ÛŒ', 'Ø³Ù„Ø§Ù… Ø¨Ø³Ø¨Ø§Ø± Ù„Ù¾ ØªØ§Ù¾ Ø®ÙˆØ¨ÛŒ Ù‡Ø³ØªØ´ ØªÙ†Ù‡Ø§ Ù…Ø´Ú©Ù„Ø´ Ø§ÛŒÙ† Ù‡Ø³ØªØ´ Ú©Ù‡ Ø²ÙˆØ¯ Ø¯Ø§Øº Ù…ÛŒÚ©Ù†Ù‡.', 'Û±Û¹:Û±Û±:Û´Ûµ', 1),
(35, 28, 'Ø­Ø³Ø§Ù… Ú©Ø§Ù…ÛŒØ§Ø±', 'Ø³Ù„Ø§Ù… Ø¨Ø±Ø§ÛŒ Ù…Ù†Ù… Ù‡Ù…ÛŒÙ† Ù…Ø´Ú©Ù„ Ø±Ùˆ Ø¯Ø§Ø´Øª Ø¨Ø±Ø§Ø´ ÙÙ† Ø®Ø±ÛŒØ¯Ù… Ø¨Ù‡ØªØ± Ø´Ø¯Ø´', 'Û±Û¹:Û²Û·:ÛµÛ¶', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `image` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `price` int(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `image`, `description`, `price`, `status`) VALUES
(27, 'Ù„Ù¾ ØªØ§Ù¾ Ø§ÛŒØ³ÙˆØ³', 'pro2.jpg', 'Ø±Ù… 8 ØŒ Ù‡Ø§Ø±Ø¯ 500', 2000000, 0),
(28, 'Ù„Ù¾ ØªØ§Ù¾ Ù„Ù†ÙˆÙˆ ', 'pro1.jpg', 'Ø±Ù… 16 ØŒ Ù‡Ø§Ø±Ø¯ 1 ØªØ±Ø§', 3500000, 1),
(30, 'Ù„Ù¾ ØªØ§Ù¾ Ø§Ú† Ù¾ÛŒ elite book', 'pro4.jpg', 'Ø±Ù… 8 ØŒ Ù‡Ø§Ø±Ø¯ 250 Ú¯ÛŒÚ¯ ØŒÚ¯Ø±Ø§ÙÛŒÚ© 2', 5500000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `phone`, `email`, `password`, `status`) VALUES
(15, 'Ù…Ø­Ù…Ø¯ Ø­Ø³ÛŒÙ† Ø§Ú©Ø¨Ø±ÛŒØ§Ù†', '09121781624', 'm.h.a1378@gmail.com', 'm123', 1),
(14, 'Ø¹Ù„ÛŒ Ù‚Ø§Ø³Ù…ÛŒ', '09134678129', 'alighasemi@gmail.com', '123456', 1),
(13, 'Ø­Ø³Ø§Ù… Ú©Ø§Ù…ÛŒØ§Ø±', '09913656693', 'hesamkamyar81@gmail.com', 'hesam123', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
