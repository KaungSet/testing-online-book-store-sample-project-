-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 06:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `summary`, `price`, `category_id`, `cover`, `created_date`, `modified_date`) VALUES
(8, 'AAAAAAAAA', 'John', 'But without giving any spoilers or revealing plot twists! As a general rule, try to avoid writing in detail about anything that happens from about the middle of the book onwards. If the book is part of a series, it can be useful to mention this, and whether you think you&#039;d need to have read other books in the series to enjoy this one.', 13, 9, '0cee7e54fda8ac99ec11459448e89c7d.jpg', '2021-05-20 11:10:47', '2021-06-02 22:55:48'),
(9, 'BBBB', 'Mi Mi', 'But without giving any spoilers or revealing plot twists! As a general rule, try to avoid writing in detail about anything that happens from about the middle of the book onwards. If the book is part of a series, it can be useful to mention this, and whether you think you&#039;d need to have read other books in the series to enjoy this one.', 13, 5, '20BestBookCovers-11-mobileMasterAt3x.jpg', '2021-05-20 11:16:00', '2021-06-02 22:55:59'),
(11, 'CCCedit2', 'Nilar', 'But without giving any spoilers or revealing plot twists! As a general rule, try to avoid writing in detail about anything that happens from about the middle of the book onwards. If the book is part of a series, it can be useful to mention this, and whether you think you&#039;d need to have read other books in the series to enjoy this one.', 908000, 3, '22BestCovers-Dorfman-02-mobileMasterAt3x.jpg', '2021-05-20 12:07:24', '2021-06-02 22:56:15'),
(12, 'DDDD', 'Zask', 'K&#039;S', 123, 17, 'action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg', '2021-05-20 15:18:16', '2021-06-02 22:56:26'),
(13, 'EEEE', 'Layla', 'But without giving any spoilers or revealing plot twists! As a general rule, try to avoid writing in detail about anything that happens from about the middle of the book onwards. If the book is part of a series, it can be useful to mention this, and whether you think you&#039;d need to have read other books in the series to enjoy this one.', 4579350, 7, 'images.jpg', '2021-05-20 15:19:04', '2021-06-02 22:56:38'),
(14, 'GGGG', 'Joker', 'Like all works of art, no two book reviews will be identical. But fear not: there are a few guidelines for any aspiring book reviewer to follow. Most book reviews, for instance, are less than 1,500 words long, with the sweet spot hitting somewhere around the 1,000-word mark. (However, this may vary depending on the platform on which you’re writing, as we’ll see later.)', 1345, 10, 'd97c518471a161c6badd53b365ca55d6.jpg', '2021-05-28 16:34:06', '2021-06-02 22:56:55'),
(15, 'HHHH', 'Saber', 'Like all works of art, no two book reviews will be identical. But fear not: there are a few guidelines for any aspiring book reviewer to follow. Most book reviews, for instance, are less than 1,500 words long, with the sweet spot hitting somewhere around the 1,000-word mark. (However, this may vary depending on the platform on which you’re writing, as we’ll see later.)', 13, 10, '41gr3r3FSWL.jpg', '2021-05-28 16:34:34', '2021-06-02 22:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `remark`, `created_date`, `modified_date`) VALUES
(1, 'History', 'Books about historic events .historical facts ', '2021-05-17 18:17:14', '2021-05-18 16:37:26'),
(2, 'Computer', '', '2021-05-17 18:18:15', '2021-05-17 19:22:10'),
(3, 'Mythology', '', '2021-05-17 18:20:16', '2021-05-17 18:20:16'),
(4, 'Sciences', '', '2021-05-17 18:22:40', '2021-05-17 18:22:40'),
(5, 'Religions', '', '2021-05-17 18:23:29', '2021-05-17 18:23:29'),
(6, 'Fiction', '', '2021-05-17 18:25:36', '2021-05-17 18:25:36'),
(7, 'Magazine', '', '2021-05-17 18:26:23', '2021-05-17 18:26:23'),
(8, 'Language', '', '2021-05-17 18:27:06', '2021-05-17 18:27:06'),
(9, 'Comic', '', '2021-05-17 18:44:49', '2021-05-17 18:44:49'),
(10, 'Discovery', 'about discovery', '2021-05-17 23:21:49', '2021-05-17 23:21:49'),
(13, 'Wild Life', 'about wild life', '2021-05-17 23:26:27', '2021-05-17 23:26:27'),
(17, 'Kitchen', 'about kitchen', '2021-05-18 13:48:02', '2021-05-18 13:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_date`, `modified_date`) VALUES
(1, 'admin', 'kyaw@gmail.com', '+959400089600999999', 'gasdvdswcgrrwcx', 0, '2021-05-31 20:53:41', '2021-06-01 14:46:59'),
(2, 'admin2', 'admin2@gmail.com', '0928334637', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 0, '2021-06-01 12:30:31', '2021-06-01 14:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `book_id`, `order_id`, `qty`) VALUES
(1, 8, 1, 2),
(2, 9, 1, 1),
(3, 13, 1, 2),
(4, 15, 1, 3),
(5, 14, 1, 2),
(6, 8, 2, 1),
(7, 13, 2, 1),
(8, 15, 2, 1),
(9, 14, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'kaung', 'kyaw@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'kaungset', 'kyawset@gmail.com', 'd81f9c1be2e08964bf9f24b15f0e4900'),
(3, 'kaungset1', 'kyawset1@gmail.com', '289dff07669d7a23de0ef88d2f7129e7'),
(4, 'kaungset2', 'kyawset2@gmail.com', '99c5e07b4d5de9d18c350cdf64c5aa3d'),
(5, 'kaung1', 'kaung1@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
