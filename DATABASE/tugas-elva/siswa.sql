-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 06:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `id_spp` varchar(10) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `level` enum('Junior','Middle','Senior') DEFAULT NULL,
  `kompetensi_keahlian` varchar(100) DEFAULT NULL,
  `biaya_spp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `username`, `id_spp`, `kelas`, `level`, `kompetensi_keahlian`, `biaya_spp`) VALUES
(1, '100011', 'elva123', 'A1', 'X', 'Junior', 'RPL', 250000),
(2, '100022', 'anggi123', 'B1', 'X', 'Junior', 'TKJ', 250000),
(3, '100033', 'hikmah123', 'C1', 'X', 'Junior', 'TB', 250000),
(4, '200011', 'nova123', 'A2', 'XI', 'Middle', 'RPL', 300000),
(5, '200022', 'nita123', 'B2', 'XI', 'Middle', 'TKJ', 300000),
(6, '200033', 'tiara123', 'C2', 'XI', 'Middle', 'TB', 300000),
(7, '300011', 'shofi123', 'A3', 'XII', 'Senior', 'RPL', 350000),
(8, '300022', 'maya123', 'B3', 'XII', 'Senior', 'TKJ', 350000),
(9, '300033', 'ulya123', 'C3', 'XII', 'Senior', 'TB', 350000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn_unique` (`nisn`),
  ADD UNIQUE KEY `username_unique` (`username`),
  ADD UNIQUE KEY `id_spp_unique` (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
