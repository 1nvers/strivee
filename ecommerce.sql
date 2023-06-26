-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 08:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `category` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `online` tinyint(1) NOT NULL,
  `rating` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `owner`, `name`, `category`, `price`, `description`, `image`, `city_id`, `city`, `online`, `rating`, `rating_count`) VALUES
(1, 1, 'Joki Game', 7, 20000, 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Proin eget tortor risus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus suscipit tortor eget felis porttitor volutpat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', 'img/products/jasa-joki-game-62874d49ea211.png', 3271, 'Kota Bogor', 1, 5, 2),
(3, 2, 'Membuat Website', 3, 100000, 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat.', 'img/products/membuat-website-628b86f67a162.png', 3216, 'Kabupaten Bekasi', 1, 13, 3),
(5, 1, 'Pengisi Suara Anime', 1, 100000, 'Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt. Donec rutrum congue leo eget malesuada. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', 'img/products/pengisi-suara-anime-628cd1923d750.jpg', 3271, 'Kota Bogor', 1, 11, 3),
(6, 4, 'Cleaning Service', 8, 50000, 'Donec rutrum congue leo eget malesuada. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Vivamus suscipit tortor eget felis porttitor volutpat. Sed porttitor lectus nibh. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.', 'img/products/cleaning-service-6291f1424956b.jpg', 3205, 'Kabupaten Garut', 0, 0, 0),
(7, 4, 'Developer Game', 3, 123123, 'Proin eget tortor risus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada.', 'img/products/developer-game-6291f187c0f31.jpg', 3205, 'Kabupaten Garut', 1, 0, 0),
(8, 4, 'Pengajar Sekolah', 4, 10000, 'Cras ultricies ligula sed magna dictum porta. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.', 'img/products/pengajar-sekolah-6291f19dc93c9.png', 3205, 'Kabupaten Garut', 0, 0, 0),
(9, 4, 'Admin Medsos', 5, 50000, 'Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vivamus suscipit tortor eget felis porttitor volutpat.', 'img/products/admin-medsos-6291f1d4767ab.png', 3205, 'Kabupaten Garut', 0, 0, 0),
(10, 2, 'Renovasi Rumah', 8, 500000, 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh.', 'img/products/renovasi-rumah-6291f1fd4bb0e.png', 3216, 'Kabupaten Bekasi', 0, 0, 0),
(11, 3, 'Laundry', 8, 5000, 'Donec sollicitudin molestie malesuada. Sed porttitor lectus nibh. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Cras ultricies ligula sed magna dictum porta.', 'img/products/laundry-6291f21f47826.png', 3273, 'Kota Bandung', 0, 0, 0),
(14, 5, 'buat lagu', 1, 500000, 'aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa ', 'img/products/buat-lagu-6291f288ed36a.jpg', 1602, 'Kabupaten Ogan Komering Ilir', 0, 0, 0),
(15, 3, 'Servis AC', 6, 10000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Pellentesque in ipsum id orci porta dapibus. Cras ultricies ligula sed magna dictum porta.', 'img/products/servis-ac-6291f2a511f90.png', 3273, 'Kota Bandung', 0, 0, 0),
(16, 5, 'tukang kayu', 8, 20000, 'aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaa ', 'img/products/tukang-kayu-6291f2c01c699.jpg', 1602, 'Kabupaten Ogan Komering Ilir', 0, 0, 0),
(17, 5, 'service rumah', 8, 1000, 'bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb  aaaaaa aaa c cd ad bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb  aaaaaa aaa c cd ad bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbbbbb  aaaaaa aaa c cd ad ', 'img/products/service-rumah-6291f3ac49ffb.jpg', 1602, 'Kabupaten Ogan Komering Ilir', 0, 0, 0),
(18, 3, 'Sedot WC', 8, 1231123, 'Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'img/products/sedot-wc-6291faf1791ad.png', 3273, 'Kota Bandung', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product`, `author`, `rating`, `message`) VALUES
(1, 1, 2, 4, 'Rank aku jadi tinggi abis pake jasa ini'),
(2, 1, 3, 1, 'Slow respond, joki nya lama'),
(3, 3, 1, 5, 'keren banget'),
(4, 3, 3, 4, 'agak keren'),
(9, 5, 1, 5, 'keren\r\n'),
(10, 5, 2, 4, 'keren banget'),
(11, 5, 3, 2, 'okokok'),
(12, 3, 4, 4, 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(12) NOT NULL,
  `image` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `password`, `email`, `name`, `gender`, `address`, `phone`, `image`, `city_id`, `city`) VALUES
(1, 1, 'admin', '$2y$10$rUIhvfDghqKV/nRrw1KOJOH7phUWY95KVFgdYKU2D5.hSd4KIwg3.', 'admin@admin.com', 'Admin Gaming', 0, 'Jl. Jalan, Bogor, 69420', '81322222222', 'img/users/admin-6291eac3b69f8.png', 3271, 'Kota Bogor'),
(2, 0, 'emanggek', '$2y$10$F96xzdhVvJpOseVoTYPI/.Mfiw/QdUBgHSgFpP3WMxMssqgRfmccO', 'emggk@jimel.kom', 'EmgGk', 0, 'Bekasi, 17510', '86969696969', 'img/users/emanggek-628a1ee7b3e09.png', 3216, 'Kabupaten Bekasi'),
(3, 0, 'user69', '$2y$10$A23A7OsXlytEHadEFkEul.A6gu9X7.thlJ2OQpnfTUI45krn44V.G', 'user@jimel.kom', 'User SixNine', 1, 'Perumahan Rumah, Bandung', '123123123123', 'img/users/user69-6289eb4d0c164.jpg', 3273, 'Kota Bandung'),
(4, 0, 'usertest', '$2y$10$6Ux7GLeKNYLJ7CjYIJIBaOlC5AAa4DdrQgqvPnZmCvtYzgFRdbM6W', 'user2@jimel.kom', '', 0, '', '12983912839', 'img/pfp.jpg', 3205, 'Kabupaten Garut'),
(5, 0, 'momon', '$2y$10$P7e10/sKRWJOhTHVe1pObukeBgvBpqWdjUAgL1YfTSlXtUI0Kl3e2', 'momon@gmail.com', 'mo mon', 0, 'asdasd', '85612312312', 'img/pfp.jpg', 1602, 'Kabupaten Ogan Komering Ilir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
