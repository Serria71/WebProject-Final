
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2015 at 08:24 AM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a5972331_2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(32) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`account_name`),
  UNIQUE KEY `account_email_uk` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` VALUES('serria71', 'serria71@gmail.com', '484d8439234437a4f9b66644415507e0');
INSERT INTO `account` VALUES('Velynce', 'ventrexeana@gmail.com', 'b95ff886d828874541332c35d7f536e2');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(6) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `last_name` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `shipping_address` varchar(35) COLLATE latin1_general_ci NOT NULL DEFAULT 'NONE',
  `account_name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `shipping_address` (`shipping_address`),
  KEY `account_name` (`account_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` VALUES(11, 'Justin', 'Dennis', 'NONE', 'serria71');
INSERT INTO `customer` VALUES(13, 'Nimkii', 'Walker', 'NONE', 'Velynce');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_num` decimal(10,0) NOT NULL,
  `item_name` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `descrption` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `price` decimal(8,0) NOT NULL,
  `weight` decimal(6,0) NOT NULL,
  `sizes` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `quantity_on_hand` decimal(3,0) NOT NULL,
  `product_pic` varchar(60) COLLATE latin1_general_ci NOT NULL DEFAULT '../images/placeholder.jpg',
  `product_type` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'none',
  PRIMARY KEY (`item_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` VALUES(5, 'Dragon Ball Complete Box Set', 'One of the greatest collections own it today', 131, 5, NULL, 3, '../images/DB Complete Box Set.jpg', 'none');
INSERT INTO `item` VALUES(6, 'Dragon Ball Z Complete Box Set', 'One of the greatest collections own it today', 130, 5, NULL, 2, '../images/DBZ Complete Box Set.jpg', 'none');
INSERT INTO `item` VALUES(7, 'Naruto Season 1 Box Set 1', 'Watch the start of our favourite blond ninjas story', 25, 5, NULL, 3, '../images/Naruto Season 1 Box Set 1.jpg', 'none');
INSERT INTO `item` VALUES(8, 'Naruto Season 1 Box Set 2', 'Watch the start of our favourite blond ninjas story', 25, 5, NULL, 3, '../images/Naruto Season 1 Box Set 2.jpg', 'none');
INSERT INTO `item` VALUES(9, 'Naruto Season 2 Box Set 1', 'Watch the start of our favourite blond ninjas story', 25, 5, NULL, 3, '../images/Naruto Season 2 Box Set 1.jpg', 'none');
INSERT INTO `item` VALUES(10, 'Naruto Season 2 Box Set 2', 'Watch the start of our favourite blond ninjas story', 25, 5, NULL, 3, '../images/Naruto Season 2 Box Set 2.jpg', 'none');
INSERT INTO `item` VALUES(11, 'Yu Yu Hakusho Season 1 Complete', 'Watch the story of this young Spirit Detective', 30, 5, NULL, 3, '../images/Yu Yu Hakusho Season 1 Complete.jpg', 'none');
INSERT INTO `item` VALUES(12, 'Yu Yu Hakusho Season 2 Complete', 'Watch the story of this young Spirit Detective', 30, 5, NULL, 3, '../images/Yu Yu Hakusho Season 2 Complete.jpg', 'none');
INSERT INTO `item` VALUES(13, 'Akame ga Kiru! Volume 1', 'Read the Stuggle of two opposing sides wage war upon each other from the shadows', 12, 5, NULL, 3, '../images/Akame ga Kiru! Vol 1.jpg', 'none');
INSERT INTO `item` VALUES(14, 'Akame ga Kiru! Volume 2', 'Read the Stuggle of two opposing sides wage war upon each other from the shadows', 12, 5, NULL, 3, '../images/Akame ga Kiru! Vol 2.jpg', 'none');
INSERT INTO `item` VALUES(15, 'Bleach Volume 1', 'Follow the adventures of young Ichigo as he is brought into a new world', 13, 5, NULL, 3, '../images/Bleach Vol 1.jpg', 'none');
INSERT INTO `item` VALUES(16, 'Bleach Volume 2', 'Follow the adventures of young Ichigo as he is brought into a new world', 13, 5, NULL, 3, '../images/Bleach Vol 2.jpg', 'none');
INSERT INTO `item` VALUES(17, 'Fairy Tail Volume 1', 'Follow the adventures of the magic guild Fairy Tail throught their young wizards', 12, 5, NULL, 3, '../images/Fairy Tail Vol 1.jpg', 'none');
INSERT INTO `item` VALUES(18, 'Fairy Tail Volume 2', 'Follow the adventures of the magic guild Fairy Tail throught their young wizards', 12, 5, NULL, 3, '../images/Fairy Tail Vol 2.jpg', 'none');
INSERT INTO `item` VALUES(19, 'Shokugeki no Soma Volume 1', 'You have never seen cooking quite like this before', 12, 5, NULL, 3, '../images/Shokugeki no Soma Vol 1.jpg', 'none');
INSERT INTO `item` VALUES(20, 'Shokugeki no Soma Volume 2', 'You have never seen cooking quite like this before', 12, 5, NULL, 3, '../images/Shokugeki no Soma Vol 2.jpg', 'none');
INSERT INTO `item` VALUES(21, 'The Breaker Volume 1', 'Follow the adventures of young Shi-Woon as he is thrown into the Martial Arts underworld', 15, 5, NULL, 3, '../images/The Breaker Vol 1.jpg', 'none');
INSERT INTO `item` VALUES(22, 'The Breaker New Waves Volume 1', 'Follow the adventures of young Shi-Woon as he is thrown into the Martial Arts underworld', 12, 5, NULL, 3, '../images/The Breaker New Waves Vol 1.jpg', 'none');
INSERT INTO `item` VALUES(23, 'Generation of Miracles T-Shirt', 'Wear this Stlyish Kuroko no Basuke T-Shirt', 15, 1, 'Small', 3, '../images/Generation of Miracles.png', 'none');
INSERT INTO `item` VALUES(24, 'Aomine Daiki T-Shirt', 'Wear this Stlyish Kuroko no Basuke T-Shirt of Aomine Daiki', 18, 1, 'Medium', 3, '../images/Aomine Daiki.png', 'none');
INSERT INTO `item` VALUES(25, 'Nishinoya Yuu T-Shirt', 'Wear this Stlyish Haikyuu T-Shirt of Nishinoya Yuu', 20, 1, 'Large', 3, '../images/Nishinoya Yuu.png', 'none');
INSERT INTO `item` VALUES(26, 'Oikawa Tooru T-Shirt', 'Wear this Stlyish Haikyuu T-Shirt of Oikawa Tooru', 24, 1, 'XLarge', 3, '../images/Oikawa Tooru.png', 'none');
INSERT INTO `item` VALUES(27, 'Hatsune Miku Nendoroid', 'Every ones Favourite nendoroid', 70, 2, '100mm', 3, '../images/hatsune_miku_2.jpg', 'none');
INSERT INTO `item` VALUES(28, 'Snow Miku 2014 Nendoroid', 'Snow Miku is here to bring you some Winter magic', 80, 2, '100mm', 1, '../images/snow_miku_2014_2.jpg', 'none');
INSERT INTO `item` VALUES(29, 'Miku Nendoroid Halloween', 'Be careful this nendoroid might cause some bad luck.', 70, 2, '100mm', 3, '../images/miku_nendoroid_halloween_2.jpg', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(6) NOT NULL AUTO_INCREMENT,
  `total` decimal(5,0) NOT NULL,
  `shipping_address` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `item_num` decimal(10,0) DEFAULT NULL,
  `cust_id` int(6) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `shipping_address` (`shipping_address`),
  KEY `item_num` (`item_num`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` VALUES(6, 70, '682 Southern Ave', NULL, 11);
INSERT INTO `orders` VALUES(5, 80, '682 Southern Ave', NULL, 11);
INSERT INTO `orders` VALUES(7, 179, '682 Southern Ave', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_address` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `postal_code` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `cust_id` int(6) NOT NULL,
  PRIMARY KEY (`shipping_address`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` VALUES('682 Southern Ave', 'Canada', 'Sarnia', 'N7T 7E3', 11);
