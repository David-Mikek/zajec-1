-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2016 at 01:04 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zajec`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `date_b` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_e` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_slovenian_ci,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `category_id`, `user_id`, `title`, `date_b`, `date_e`, `description`, `price`) VALUES
(2, 1, 3, 'Renault Scenic', '2013-02-22 08:16:52', '2013-03-01 09:52:47', 'Nov avtomobili ....', 17000),
(3, 2, 1, 'Apple iPad', '2013-02-01 09:53:24', '0000-00-00 00:00:00', 'Ipad 3 ....', 450),
(4, 2, 4, 'Jabolka', '2013-02-14 23:00:00', '2013-02-19 23:00:00', 'Prodajam MacBook Air!\r\n', 700),
(5, 1, 4, 'fdf', '2013-02-04 23:00:00', '2013-02-18 23:00:00', 'fhgh', 5665),
(6, 1, 4, 'Hruške', '2013-03-13 23:00:00', '2013-03-29 23:00:00', 'sdfnsldkfjsldfkj333', 5003),
(7, 1, 5, 'sggdfg', '2013-03-11 23:00:00', '2013-03-29 23:00:00', 'dhfghfgh', 456456),
(8, 1, 7, 'Avto', '2016-03-30 22:00:00', '2016-04-29 22:00:00', 'fajni je ', 69);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Avtomobili'),
(2, 'Računalništvo'),
(4, 'Knjige');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_c` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `ad_id`, `user_id`, `date_c`, `content`) VALUES
(1, 6, 4, '2013-03-20 15:23:32', 'Moj prvi oglas. Držim pesti!'),
(2, 6, 4, '2013-03-20 15:23:43', 'sdfsdfd'),
(3, 6, 4, '2013-03-20 15:23:58', '<b>A to dela</b>'),
(4, 6, 4, '2013-03-20 15:56:29', 'kjfdgh'),
(5, 6, 4, '2013-03-20 15:59:14', 'kjfdgh'',NOW()); UPDATE users SET last_name=''zzz5'' WHERE id=5; --'),
(7, 7, 4, '2013-03-20 16:48:23', 'dfgdfg'),
(8, 8, 7, '2016-03-31 09:54:35', 'tk zgleda');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `url` varchar(100) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `ad_id`, `url`) VALUES
(2, 2, 'pictures/20130301010743-2-Winter.jpg'),
(3, 6, 'pictures/20130301014546-6-Winter.jpg'),
(4, 6, 'pictures/20130301014910-6-Winter.jpg'),
(5, 6, 'pictures/20130301014937-6-Sunset.jpg'),
(6, 6, 'pictures/20130301014947-6-Sunset.jpg'),
(9, 7, 'pictures/20130315013118-7-Winter.jpg'),
(11, 7, 'pictures/20130315013126-7-Blue hills.jpg'),
(12, 8, 'pictures/20160331115424-8-1409824291199.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `privlage` varchar(20) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `pass`, `phone`, `privlage`) VALUES
(1, 'Islam', 'Mušić', 'islam.music@gmail.com', '0f315d32ad05a7148f0eb1aaf054599c1712198f', '031366244', ''),
(2, 'qq', 'qq', 'qq@qq.qq', 'qq', 'qq', ''),
(3, 'Gorazd', 'Žižek', 'gorazd@scv.si', 'd043e3901eab5b120e35a5614e92695ab24aeff4', '041262112', ''),
(4, 'Test4', 'Hallooo!!!', 'test@test.com', '63ab89682d9a027b1f5c91f6b0ed347ef7dc9ac7', '031632546', ''),
(5, 'ppp', 'zzz', 'ppp@pp.pp', 'b3054ff0797ff0b2bbce03ec897fe63e0b6490e0', '9999', ''),
(6, 'ooo', 'ooo', 'oo@oo.oo', '0343bb07c98f8a943e8eb80c0ba3d9758d372d22', '00', ''),
(7, 'Aljaz', 'Bozic', 'fb.aljaz@gmail.com', 'b217ed390f88e5d71a2fc22acb1d64749163d9df', '070594884', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ads_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`);

--
-- Constraints for table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
