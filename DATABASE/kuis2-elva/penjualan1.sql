-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 03:57 AM
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
-- Database: `penjualan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_supplier` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `stok`, `id_supplier`) VALUES
('B001', 'Jaket', 500000, 42, 'S001'),
('B002', 'Tas', 700000, 18, 'S002'),
('B003', 'Sepatu', 670000, 15, 'S003'),
('B004', 'Topi', 100000, 61, 'S004');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(10) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `total_bayar` int(10) NOT NULL,
  `id_transaksi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `tgl_bayar`, `total_bayar`, `id_transaksi`) VALUES
('PM1', '2022-10-27', 500000, 'T001'),
('PM2', '2022-10-28', 700000, 'T002'),
('PM3', '2022-10-23', 570000, 'T003'),
('PM4', '2022-10-21', 100000, 'T004');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` varchar(10) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `no_telp` char(13) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `jenis_kelamin`, `no_telp`, `alamat`) VALUES
('P001', 'Malik', 'Laki-laki', '085123456789', 'Jakarta'),
('P002', 'Nazlita', 'Perempuan', '085234567890', 'Jogja'),
('P003', 'Abil', 'Perempuan', '0853456789010', 'Surabaya'),
('P004', 'Dwi', 'Laki-laki', '0854567890123', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`) VALUES
('S001', 'Maulana', '0812345678901', 'Jepara'),
('S002', 'Maulydia', '0823456789012', 'Pati'),
('S003', 'Khabila', '0834567890123', 'Kudus'),
('S004', 'Janoko', '0845678901234', 'Demak');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `id_pembeli` varchar(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `id_pembeli`, `tanggal`, `keterangan`) VALUES
('T001', 'B001', 'P001', '2022-10-27', 'Transaksi Selesai - Belum Lunas'),
('T002', 'B002', 'P002', '2022-10-27', 'Transaksi Selesai - Lunas'),
('T003', 'B003', 'P003', '2022-10-27', 'Transaksi Selesai - Lunas'),
('T004', 'B004', 'P004', '2022-10-27', 'Transaksi Selesai - Belum Lunas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_id_supplier` (`id_supplier`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `fk_id_transaksi` (`id_transaksi`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_id_barang` (`id_barang`),
  ADD KEY `fk_id_pembeli` (`id_pembeli`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_id_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `fk_id_transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_id_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_id_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
