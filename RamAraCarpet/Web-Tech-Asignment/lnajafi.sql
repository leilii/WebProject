-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2020 at 01:14 PM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lnajafi`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `discription` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `discription`) VALUES
(1, 'Tabriz', 'Tabriz is one of the largest cities in Iran and is one of the most famous Persian rug provenance. Tabris rugs are often indicated by a \"Raj\" number. The higher this number, the finer the rug is, as it indicates the knot density. There are both average (40 Raj) and exceptionally fine (80 Raj) Persian rugs from Tabris.'),
(2, 'Isfahan', 'Rugs from this city belong to the probably most valuable hand-knotted Persian rugs worldwide. Very fine Isfahan rugs come from the studios of world-renowned master knotters who achieve a knot density of more than a million knots per square meter. To own an Isfahan means to have a Persian rug of the highest knotting skill. The design of these rugs is mostly inspired by the impressive mosques and squares of the city bearing the same name.'),
(4, 'Nain', 'Rugs from the city of Nain, from the border of one of the largest deserts in Iran, are among the most famous Persian rugs in the world. Their typical design is characterized by floral ornaments, a medallion in the middle as well as beige and red or blue shades. Thanks to their designations 4La, 6La, 9La and 12La, the finenesses of a Nain rug can be seen at a glance. The lower the \"La\" number, the higher the knot density and thus the finer the rug.'),
(6, 'Kashan', 'Hand knotted rugs from the city of Kashan (Keshan) are known worldwide. Not only do these Persian rugs have a very popular design, but their quality is undisputedly one of the best. In the Persian Empire the city was considered one of the most important trading places along the famous Silk Road. Kashan rugs usually have a central medallion, floral ornaments and a red background. They are made of high-quality sheep\'s wool and vegetable dyes.'),
(8, 'Kerman', 'Once, hand-knotted rugs from the desert city of Kerman were considered the best Persian and oriental rugs. Today this reputation is no longer true, but these Persian rugs are still undisputedly among the highest quality oriental rugs. Kerman rugs are known for their rich floral ornaments, the strong plant colours and their pompous medallions in the centre. Kerman carpets have a long tradition.'),
(10, 'Qom', 'Rugs from Qom enjoy probably the highest reputation among all hand-knotted rug types.\r\nOnly the riverbed in which the city of Qom (Ghom, Qum) lies has dried up. The carpets of this carpet provenance beyond the Iranian borders, on the other hand, are widespread and highly valued. '),
(12, 'Paints and picturs Carpets', 'This is the section to write Paints and picturs Carpetsdiscription!'),
(13, '3D Carpets', 'This is the section to write 3D Carpetsdiscription!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `size` char(20) DEFAULT NULL,
  `detail` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `name`, `price`, `photo`, `size`, `detail`) VALUES
(1, 1, 'Mooj', 2000, 'images/tabriz9.jpg', '2mX3m', '60 raj,\r\n%80 silk,\r\n%20 wool,\r\nHand knitted.'),
(2, 1, 'Seh Metri', 3500, 'images/tabriz10.jpg', '1.5X2', 'Luxury Carpet,\r\n%90 silk,\r\nUnique.\r\n'),
(3, 1, 'Soof Zarbaft', 3250, 'images/tabriz11.jpg', '1.5m X 2m', 'Luxury,\r\n%100 silk\r\nHand knitted,\r\ngolden,\r\nUnique.'),
(4, 12, 'Cirus', 1000, 'images/tablo1.jpg', '1m x1.5 m', '%100 silk'),
(5, 12, 'Girl', 800, 'images/tablo2.jpg', NULL, 'Oval Shap'),
(6, NULL, 'Bazm', 1250, 'images/tablo4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role__id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role__id`, `name`) VALUES
(1, 'Admin'),
(2, 'Author'),
(3, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `active` varchar(100) NOT NULL,
  `registration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `address`, `city`, `country`, `phone`, `password`, `role_id`, `active`, `registration_date`) VALUES
(18, 'Leila', 'Naj', 'leilanajafi76@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$1eT5tkW3UFIZyKzjfj6GJeohVMcjajb4Whb0ROyR.FFL2.CunZD9K', 1, '', '2020-06-12'),
(20, 'Leila', 'Najafi', '4najal61@solent.ac.uk', NULL, NULL, NULL, NULL, '$2y$10$KgJ08aS8CsBCXfkTJeePcOgXPmygsucf5XjJLirgxjo3Sw7UnfBs2', NULL, '', '2020-06-15'),
(21, 'Yones', 'Najafi', 'younesedana@yahoo.co.uk', NULL, NULL, NULL, NULL, '$2y$10$i9b3nL/UUZSrM83dpzXK7eoHs/zP68dLyla.nAhdxTRZ0I0/dOVTu', NULL, '', '2020-06-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD KEY `product_id` (`product_id`,`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role__id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`user_id`),
  ADD KEY `fk_users_roles_idx` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role__id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role__id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

