-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 30 juin 2025 à 16:59
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce_database`
--

DROP DATABASE IF EXISTS ecommerce_database;
CREATE DATABASE ecommerce_database;
USE ecommerce_database;

-- --------------------------------------------------------

--
-- Structure de la table `food_categories`
--

CREATE TABLE `food_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `food_categories`
--

INSERT INTO `food_categories` (`category_id`, `category_name`) VALUES
(1, 'Chocolate'),
(2, 'Traditional Sweets'),
(3, 'Snacks'),
(4, 'Drinks'),
(5, 'Instant Noodles');

-- --------------------------------------------------------

--
-- Structure de la table `product_list`
--

CREATE TABLE `product_list` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product_list`
--

INSERT INTO `product_list` (`product_id`, `product_name`, `category_id`, `price`, `stock`) VALUES
(1, 'Pocky Chocolate', 1, 150, 172),
(2, 'Pocky Strawberry', 1, 180, 238),
(3, 'KitKat Matcha', 1, 350, 411),
(4, 'KitKat Sakura', 1, 400, 357),
(5, 'Black Thunder Chocolate Bar', 1, 150, 386),
(6, 'Meiji Apollo Strawberry Chocolates', 1, 200, 241),
(7, 'Dars Chocolate', 1, 180, 491),
(8, 'Koala\'s March Cookies', 1, 200, 132),
(9, 'Glico Almond Chocolate', 1, 300, 98),
(10, 'Meiji Macadamia Chocolate', 1, 350, 216),
(11, 'Toppo Chocolate Sticks', 1, 200, 274),
(12, 'Meiji Marble Chocolates', 1, 200, 479),
(13, 'Meiji Kinoko no Yama', 1, 200, 283),
(14, 'Takenoko no Sato', 1, 200, 11),
(15, 'Chocoball Peanut', 1, 180, 367),
(16, 'Shiroi Koibito Cookies', 2, 1200, 414),
(17, 'Tokyo Banana', 2, 1500, 286),
(18, 'Matcha Mochi', 2, 300, 125),
(19, 'Daifuku Mochi', 2, 200, 442),
(20, 'Yokan Sweet Bean Jelly', 2, 300, 322),
(21, 'Sakuma Drops Candy', 2, 300, 429),
(22, 'Konpeito Sugar Candy', 2, 300, 82),
(23, 'Bourbon Alfort Cookies', 2, 200, 457),
(24, 'Lotte Custard Cake', 2, 300, 201),
(25, 'Calbee Shrimp Chips', 3, 150, 97),
(26, 'Senbei Rice Crackers', 3, 200, 497),
(27, 'Jagabee Potato Snacks', 3, 200, 150),
(28, 'Wasabi Peas', 3, 200, 317),
(29, 'Umeboshi Dried Plum Snacks', 3, 300, 310),
(30, 'Koikeya Seaweed Chips', 3, 200, 148),
(31, 'Pretz Tomato Flavor', 3, 150, 388),
(32, 'Peach Gummies', 3, 150, 277),
(33, 'Grape Gummies', 3, 150, 65),
(34, 'Ramune Soda', 4, 180, 278),
(35, 'Melon Soda', 4, 200, 298),
(36, 'Suntory Boss Coffee', 4, 180, 296),
(37, 'Itoen Green Tea', 4, 150, 150),
(38, 'UCC Coffee Can', 4, 180, 333),
(39, 'Calpis Soda', 4, 200, 223),
(40, 'Fanta Grape', 4, 180, 130),
(41, 'Asahi Juroku-cha Tea', 4, 180, 93),
(42, 'Sapporo Ichiban Ramen', 5, 300, 478),
(43, 'Nissin Cup Noodles', 5, 200, 275);

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `user_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_date`, `user_id`) VALUES
(1, '2025-06-25 00:00:00', '2'),
(2, '2025-06-24 00:00:00', '3'),
(3, '2025-06-25 00:00:00', '4'),
(4, '2025-06-23 00:00:00', '5'),
(5, '2025-06-22 00:00:00', '6'),
(6, '2025-06-21 00:00:00', '7'),
(7, '2025-06-20 00:00:00', '8'),
(8, '2025-06-19 00:00:00', '9'),
(9, '2025-06-18 00:00:00', '10'),
(10, '2025-06-17 00:00:00', '11'),
(11, '2025-06-16 00:00:00', '12'),
(12, '2025-06-25 00:00:00', '13'),
(13, '2025-06-24 00:00:00', '14'),
(14, '2025-06-23 00:00:00', '15'),
(15, '2025-06-22 00:00:00', '16'),
(16, '2025-06-21 00:00:00', '17'),
(17, '2025-06-20 00:00:00', '18'),
(18, '2025-06-19 00:00:00', '19'),
(19, '2025-06-18 00:00:00', '20'),
(20, '2025-06-17 00:00:00', '21'),
(21, '2025-06-25 00:00:00', '22'),
(22, '2025-06-24 00:00:00', '23'),
(23, '2025-06-23 00:00:00', '24'),
(24, '2025-06-22 00:00:00', '25'),
(25, '2025-06-21 00:00:00', '26'),
(26, '2025-06-20 00:00:00', '27'),
(27, '2025-06-19 00:00:00', '28'),
(28, '2025-06-18 00:00:00', '29'),
(29, '2025-06-17 00:00:00', '30'),
(30, '2025-06-22 00:00:00', '30'),
(31, '2025-06-16 00:00:00', '31'),
(32, '2025-06-25 00:00:00', '32'),
(33, '2025-06-24 00:00:00', '33'),
(34, '2025-06-23 00:00:00', '34'),
(35, '2025-06-22 00:00:00', '35'),
(36, '2025-06-21 00:00:00', '36'),
(37, '2025-06-16 00:00:00', '36'),
(38, '2025-06-20 00:00:00', '37'),
(39, '2025-06-19 00:00:00', '38'),
(40, '2025-06-18 00:00:00', '39'),
(41, '2025-06-17 00:00:00', '40'),
(42, '2025-06-16 00:00:00', '41'),
(43, '2025-06-25 00:00:00', '42'),
(44, '2025-06-24 00:00:00', '43'),
(45, '2025-06-23 00:00:00', '44'),
(46, '2025-06-17 00:00:00', '45'),
(47, '2025-06-22 00:00:00', '45'),
(48, '2025-06-21 00:00:00', '46'),
(49, '2025-06-20 00:00:00', '47'),
(50, '2025-06-19 00:00:00', '48'),
(51, '2025-06-18 00:00:00', '49'),
(52, '2025-06-17 00:00:00', '50');

-- --------------------------------------------------------

--
-- Structure de la table `transaction_rows`
--

CREATE TABLE `transaction_rows` (
  `transaction_row_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transaction_rows`
--

INSERT INTO `transaction_rows` (`transaction_row_id`, `transaction_id`, `product_id`, `quantity`) VALUES
(1, 1, 2, 2),
(2, 2, 5, 5),
(3, 3, 1, 1),
(4, 4, 3, 12),
(5, 5, 1, 16),
(6, 6, 2, 22),
(7, 7, 4, 26),
(8, 8, 1, 30),
(9, 9, 6, 36),
(10, 10, 2, 40),
(11, 11, 1, 43),
(12, 12, 2, 4),
(13, 13, 3, 8),
(14, 14, 5, 14),
(15, 15, 1, 19),
(16, 16, 2, 24),
(17, 17, 4, 28),
(18, 18, 1, 33),
(19, 19, 3, 37),
(20, 20, 6, 41),
(21, 21, 1, 3),
(22, 22, 2, 6),
(23, 23, 4, 10),
(24, 24, 3, 15),
(25, 25, 1, 18),
(26, 26, 5, 23),
(27, 27, 2, 27),
(28, 28, 1, 31),
(29, 29, 4, 35),
(30, 30, 2, 12),
(31, 31, 3, 39),
(32, 32, 2, 7),
(33, 33, 5, 11),
(34, 34, 1, 13),
(35, 35, 1, 17),
(36, 36, 4, 21),
(37, 37, 2, 43),
(38, 38, 2, 25),
(39, 39, 3, 29),
(40, 40, 5, 32),
(41, 41, 1, 38),
(42, 42, 2, 42),
(43, 43, 3, 9),
(44, 44, 1, 2),
(45, 45, 4, 5),
(46, 46, 4, 35),
(47, 47, 2, 12),
(48, 48, 1, 16),
(49, 49, 5, 26),
(50, 50, 2, 30),
(51, 51, 3, 36),
(52, 52, 4, 40);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`) VALUES
(1, 'Thomas Paillereau', 'thomas.paillereau@example.com', 'YesButNo'),
(2, 'Emi Ito', 'emi.ito@example.com', ''),
(3, 'Taro Yamada', 'taro.yamada@example.com', ''),
(4, 'Sakura Kato', 'sakura.kato@example.com', ''),
(5, 'Ryo Tanaka', 'ryo.tanaka@example.com', ''),
(6, 'Yuki Tanaka', 'yuki.tanaka@example.com', ''),
(7, 'Kaito Suzuki', 'kaito.suzuki@example.com', ''),
(8, 'Mio Sato', 'mio.sato@example.com', ''),
(9, 'Haruto Yamamoto', 'haruto.y@example.com', ''),
(10, 'Aoi Kobayashi', 'aoi.k@example.com', ''),
(11, 'Sora Ito', 'sora.ito@example.com', ''),
(12, 'Rina Watanabe', 'rina.w@example.com', ''),
(13, 'Daichi Nakamura', 'daichi.n@example.com', ''),
(14, 'Hinata Takahashi', 'hinata.t@example.com', ''),
(15, 'Yuto Mori', 'yuto.mori@example.com', ''),
(16, 'Kokoro Kato', 'kokoro.kato@example.com', ''),
(17, 'Yuma Ishikawa', 'yuma.i@example.com', ''),
(18, 'Leo Tanaka', 'leo.tanaka@example.com', ''),
(19, 'Mei Suzuki', 'mei.s@example.com', ''),
(20, 'Kento Yamamoto', 'kento.y@example.com', ''),
(21, 'Nana Kobayashi', 'nana.k@example.com', ''),
(22, 'Takeru Sato', 'takeru.sato@example.com', ''),
(23, 'Miki Ito', 'miki.ito@example.com', ''),
(24, 'Shota Nakamura', 'shota.n@example.com', ''),
(25, 'Riku Tanaka', 'riku.tanaka@example.com', ''),
(26, 'Mao Watanabe', 'mao.w@example.com', ''),
(27, 'Sota Yamamoto', 'sota.y@example.com', ''),
(28, 'Yuna Takahashi', 'yuna.t@example.com', ''),
(29, 'Haruki Mori', 'haruki.mori@example.com', ''),
(30, 'Yui Suzuki', 'yui.s@example.com', ''),
(31, 'Koki Tanaka', 'koki.tanaka@example.com', ''),
(32, 'Yuna Nakamura', 'yuna.nakamura@example.com', ''),
(33, 'Akari Takahashi', 'akari.t@example.com', ''),
(34, 'Hiroshi Kobayashi', 'hiroshi.k@example.com', ''),
(35, 'Yuki Mori', 'yuki.mori@example.com', ''),
(36, 'Takumi Inoue', 'takumi.i@example.com', ''),
(37, 'Mio Shimizu', 'mio.shimizu@example.com', ''),
(38, 'Hina Takahashi', 'hina.takahashi@example.com', ''),
(39, 'Ryota Kato', 'ryota.kato@example.com', ''),
(40, 'Sakura Yoshida', 'sakura.y@example.com', ''),
(41, 'Kaito Yamada', 'kaito.yamada@example.com', ''),
(42, 'Yuma Kimura', 'yuma.kimura@example.com', ''),
(43, 'Mai Sato', 'mai.sato@example.com', ''),
(44, 'Ren Yamamoto', 'ren.yamamoto@example.com', ''),
(45, 'Yui Suzuki', 'yui.suzuki@example.com', ''),
(46, 'Sota Ito', 'sota.ito@example.com', ''),
(47, 'Haruto Watanabe', 'haruto.w@example.com', ''),
(48, 'Aoi Ito', 'aoi.ito@example.com', ''),
(49, 'Hinata Tanaka', 'hinata.tanaka@example.com', ''),
(50, 'Riku Hayashi', 'riku.hayashi@example.com', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Index pour la table `transaction_rows`
--
ALTER TABLE `transaction_rows`
  ADD PRIMARY KEY (`transaction_row_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `transaction_rows`
--
ALTER TABLE `transaction_rows`
  MODIFY `transaction_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `food_categories` (`category_id`);

--
-- Contraintes pour la table `transaction_rows`
--
ALTER TABLE `transaction_rows`
  ADD CONSTRAINT `transaction_rows_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`),
  ADD CONSTRAINT `transaction_rows_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
