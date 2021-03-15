-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Värd: sql309.byetcluster.com
-- Tid vid skapande: 15 mars 2021 kl 11:39
-- Serverversion: 5.6.48-88.0
-- PHP-version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `epiz_28090194_testing`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_quantity` mediumint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_brand`, `product_price`, `product_image`, `product_quantity`) VALUES
(75, 'test', 'Zer', '0.00', '1615819989Desktop Screenshot 2020.10.17 - 23.47.02.09 (2).png', 0),
(76, 'new', 'Midyat', '0.00', '1615822861Desktop Screenshot 2020.10.18 - 19.09.59.31.png', 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
