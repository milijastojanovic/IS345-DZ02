-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2016 at 05:50 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `is345`
--

-- --------------------------------------------------------

--
-- Table structure for table `dz02`
--

CREATE TABLE `dz02` (
  `Id` int(11) NOT NULL,
  `Naziv` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `Opis` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Referenca` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `DatumKreiranja` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DatumModifikovanja` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Autor` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `Format` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dz02`
--

INSERT INTO `dz02` (`Id`, `Naziv`, `Opis`, `Referenca`, `DatumKreiranja`, `DatumModifikovanja`, `Autor`, `Format`) VALUES
(42, 'Klip', ' UneÅ¡en je novi klip!', 'http://localhost/is345/uploaded/video.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Milija Stojanovic', 'video/mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dz02`
--
ALTER TABLE `dz02`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dz02`
--
ALTER TABLE `dz02`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
