-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2019 at 03:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'elashry', 'm.elashry23@yahoo.com', '$2y$10$xqCTpOE34pXA/.kRvdaqoezi2hVQ.ap0eJJ0N0VM8T8vjXa8j48wm', '0'),
(2, 'moh el', 'mohamedelashry323@gmail.com', '$2y$10$FZGFeUpJd.glCl/FHf2D.OTmZHMe.mD4vJ3B2Upcusy0rVROukPYa', '0'),
(3, 'moh el', 'm.elashry232@yahoo.com', '$2y$10$7VsxDf9A9Jw8ityW0s1R5ueGyay0z3cCUTkqWqPo00dgtpX9w9qX.', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'dell');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(2, 23, '::1', 1, 1),
(3, 1, '::1', 1, 1),
(4, 2, '::1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Ladies Wearss'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(12, 'Mobiles'),
(13, 'laptop');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 12, 2, 'Samsung Galaxy S10', 10000, 50, 'Its a good phone', '1552670517_sumsung galaxy s8.png', 'samsung, mobile, galaxy'),
(2, 12, 3, 'Iphone 7 plus', 40000, 5000, 'Iphone is a good phone', '1552670718_iphone-7-plus.jpg', 'apple, iphone, mobile'),
(4, 12, 2, 'Samsung Galaxy S6', 5000, 100, 'Samsung is a good phone', '1552670857_samsung galaxy s6.jpg', 'samsung, mobile, s6'),
(5, 12, 2, 'Samsung Galaxy S10', 5000, 5000, 'Samsung Galaxy S10', '1552671096_7-2-samsung-mobile-phone-png-clipart-thumb.png', 'samsung, mobile, s10'),
(6, 13, 1, 'lap', 6500, 50, ' vb', '1558875670_12039452_525963140912391_6353341236808813360_n.png', 'lap'),
(7, 12, 3, 'iphone', 6000, 50, 'good phone', '1559304593_apple-iphone8-gold-1-3x.jpg', 'phone'),
(8, 12, 2, 'y9 ', 4000, 15, 'phne', '1559304693_1.jpg', 'phone'),
(9, 12, 4, 'xperia', 6000, 400, 'phone', '1559304984_xperia-XZ1-Blue-product-shot-2000x2000-b08e3a68662b814a3ba8f0a7812af0ba.png', 'phone'),
(10, 12, 5, 'lg phone', 3000, 6000, 'phone', '1559305033_LG-V30-Cloud-SilverTA.jpg', 'phone'),
(11, 13, 6, 'labtop', 7000, 333, 'good labtp', '1559305107_61KKeAnjdIL._SL1280_.jpg', 'labtp');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'moh', 'el', 'm.elashry23@yahoo.com', '9afd713e1e21a80725006995e696423c', '0109934798', 'jhjhj', '22koo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
