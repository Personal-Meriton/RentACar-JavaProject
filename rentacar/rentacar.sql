-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2022 at 07:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentacar`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `costumerid` int(11) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `plocation` int(11) NOT NULL,
  `dlocation` int(11) NOT NULL,
  `pdate` date NOT NULL,
  `ddate` date NOT NULL,
  `payment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `costumerid`, `vehicleid`, `plocation`, `dlocation`, `pdate`, `ddate`, `payment`) VALUES
(12, 6, 15, 1, 1, '2022-01-21', '2022-01-28', 0),
(14, 8, 17, 1, 1, '2022-01-01', '2022-01-12', 1),
(15, 9, 15, 1, 1, '2022-01-05', '2022-01-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `surname` varchar(24) NOT NULL,
  `age` int(2) NOT NULL,
  `email` varchar(24) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `drln` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`id`, `name`, `surname`, `age`, `email`, `phone`, `drln`) VALUES
(6, 'Besart', 'Sherifi', 5, 'bs28746@seeu.edu.mk', '072223211', 'sssssssss'),
(8, 'Meriton', 'Ademi', 20, 'ma28727@seeu.edu.mk', '0038972534005', 'sssssssss'),
(9, 'Besart', 'Ademi', -1, 'ma28727@seeu.edu.mk', '-1', 'sssssssss'),
(10, 'Meriton', 'Ademi', 20, 'ma28727@seeu.edu.mk', '0038972534005', 'sssssssss');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `city` varchar(24) NOT NULL,
  `address` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `city`, `address`) VALUES
(1, 'Tetovë', 'Tetovë', 'Ilindenska 335, Tetovë 1'),
(3, 'Shkup Qendër', 'Shkup', '8 Udarna Brigada, Shkup1'),
(4, 'Tetovë', 'Tetovë', 'Ilindenska 335, Tetovë 1');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `brand` varchar(24) NOT NULL,
  `model` varchar(24) NOT NULL,
  `year` year(4) NOT NULL,
  `ftype` varchar(24) NOT NULL,
  `milage` varchar(24) NOT NULL,
  `hp` int(11) NOT NULL,
  `gear` varchar(24) NOT NULL,
  `color` varchar(24) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `price` float NOT NULL,
  `locationid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `brand`, `model`, `year`, `ftype`, `milage`, `hp`, `gear`, `color`, `plate`, `price`, `locationid`) VALUES
(15, 'Mercedes', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(16, 'BMW', 'X5', 2016, 'Gasoline ', '98206', 449, 'Automatic', 'Gray', 'TE0002AA', 100, 1),
(17, 'Audi', 'TT', 2008, 'Gasoline', '149200', 200, 'Automatic', 'Black', 'TE0003AA', 60, 1),
(18, 'Audi', 'Q3', 2013, 'Diesel', '232000', 184, 'Manual', 'Orange', 'TE0004AA', 50, 1),
(19, 'Mercedes', 'C CLASS', 2018, 'Gasoline', '119213', 245, 'Automatic', 'Blue', 'TE0005AA', 80, 1),
(20, 'Audi', 'R8', 2008, 'Gasoline', '69544', 450, 'Automatic', 'White', 'TE0006AA', 130, 3),
(21, 'Mercedes', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(22, 'Mercedes', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(23, 'Mercedes', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(24, 'Mercedess', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(25, 'Mercedess', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(28, 'Mercedess', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(29, 'Mercedess', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(30, 'Mercedess', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(31, 'Mercedes', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3),
(32, 'Mercedes', 'SLR', 2014, 'Gasoline', '28173', 306, 'Automatic', 'Yellow', 'TE0001AA', 300, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `costumerid` (`costumerid`),
  ADD KEY `vehicleid` (`vehicleid`),
  ADD KEY `plocation` (`plocation`),
  ADD KEY `dlocation` (`dlocation`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationid` (`locationid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`vehicleid`) REFERENCES `vehicles` (`id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`costumerid`) REFERENCES `costumer` (`id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`plocation`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`dlocation`) REFERENCES `location` (`id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`locationid`) REFERENCES `location` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
