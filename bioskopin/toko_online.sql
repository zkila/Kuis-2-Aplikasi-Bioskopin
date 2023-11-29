-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 11:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Barbie', 'Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. ', 'Comedy', 35000, 114, 'barbie.png'),
(4, 'Oppenheimer', 'During World War II, Lt. Gen. Leslie Groves Jr. appoints physicist J. Robert Oppenheimer to work on the top-secret Manhattan Project.', 'Thriller', 50000, 180, 'oppenheimer.png'),
(7, 'Mission Impossible Dead Reckoning Part One', 'Ethan Hunt and the IMF team must track down a terrifying new weapon that threatens all of humanity if it falls into the wrong hands.', 'Thriller', 50000, 200, 'mission impossible.png'),
(8, 'Blue Beetle', 'Jaime Reyes suddenly finds himself in possession of an ancient relic of alien biotechnology called the Scarab.', 'Action', 50000, 127, 'blue beetle.png'),
(9, 'The Hunger Games: Mockingjay – Part 2', 'After realising that she is no longer fighting for survival, Katniss Everdeen sets out to assassinate the tyrannical President Snow and liberate the people of Panem.', 'Action', 50000, 137, 'hunger games.png'),
(10, 'Spider-Man: Across the Spider-Verse', 'In an attempt to curb the Spot, a scientist, from harnessing the power of the multiverse, Miles Morales joins forces with Gwen Stacy.', 'Action', 50000, 140, 'spiderman atsv.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(7, 'Grand City XXI', 'BCA', '2023-11-27 23:16:25', '2023-11-28 23:16:25'),
(8, 'TV Hartono MER', 'QRIS', '2023-11-27 23:16:41', '2023-11-28 23:16:41'),
(9, 'Pakuwon City Mall XXI', 'MANDIRI', '2023-11-27 23:45:26', '2023-11-28 23:45:26'),
(10, 'Grand City XXI', 'BCA', '2023-11-28 00:12:23', '2023-11-29 00:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Sepatu', 1, 300000, ''),
(2, 2, 1, 'Barbie', 1, 50000, ''),
(3, 3, 1, 'Barbie', 2, 50000, ''),
(4, 4, 4, 'Oppenheimer', 2, 50000, ''),
(5, 5, 4, 'Oppenheimer', 1, 50000, ''),
(6, 6, 7, 'Mission Impossible Dead Reckoning Part One', 1, 50000, ''),
(7, 7, 10, 'Spider-Man: Across the Spider-Verse', 1, 50000, ''),
(8, 7, 4, 'Oppenheimer', 1, 50000, ''),
(9, 7, 1, 'Barbie', 1, 50000, ''),
(10, 8, 8, 'Blue Beetle', 2, 50000, ''),
(11, 9, 1, 'Barbie', 1, 50000, ''),
(12, 9, 4, 'Oppenheimer', 1, 50000, ''),
(13, 10, 10, 'Spider-Man: Across the Spider-Verse', 2, 50000, ''),
(14, 10, 8, 'Blue Beetle', 1, 50000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Arkana Bilal ', 'rkila', '321', 2),
(4, 'testes', 'testes', '456', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
