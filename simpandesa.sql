-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2021 at 10:51 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `simpandesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `gambar`) VALUES
(1, 'Tenda', 'tent.png'),
(2, 'Terpal', 'carpet.png'),
(3, 'Tali tambang', 'rope.png'),
(4, 'Kuali/belangong', 'cauldron.png'),
(5, 'keranda mayit', 'coffin.png'),
(6, 'Meja/Kursi (per set)', 'chair.png'),
(7, 'Pemotong rumput', 'lawn-mower.png'),
(8, 'Sound System', 'sound-system.png');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id_konfirmasi` int(11) NOT NULL,
  `id_kuantitas` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_pinjem` int(11) NOT NULL,
  `tgl_kembali` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_konfirmasi`, `id_kuantitas`, `id_barang`, `tgl_pinjem`, `tgl_kembali`, `id_user`, `status_kembali`) VALUES
(43, 0, 1, 1622505600, 1623196800, 1, 0),
(44, 0, 2, 1622505600, 1623196800, 1, 0),
(45, 0, 2, 1622505600, 1623196800, 1, 0),
(46, 0, 3, 1622505600, 1623196800, 1, 0),
(47, 0, 4, 1622505600, 1623196800, 1, 0),
(48, 0, 1, 1622592000, 1622764800, 3, 0),
(49, 0, 3, 1622592000, 1622764800, 3, 0),
(50, 0, 3, 1622592000, 1622764800, 3, 0),
(51, 0, 8, 1622592000, 1622764800, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuantitas`
--

CREATE TABLE `kuantitas` (
  `id_kuantitas` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuantitas`
--

INSERT INTO `kuantitas` (`id_kuantitas`, `id_barang`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 3),
(5, 2),
(6, 2),
(7, 4),
(8, 6),
(9, 6),
(10, 7),
(11, 7),
(12, 8),
(15, 5),
(16, 5),
(17, 2),
(18, 3),
(19, 2),
(20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pass` varchar(128) NOT NULL,
  `hak_akses` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nik`, `nama`, `pass`, `hak_akses`) VALUES
(1, '1234567890', 'jokowi', '123', 'user'),
(2, '0987654321', 'agus', '123', 'admin'),
(3, '123123123', 'Naufal Alfadhil', '123123', 'user'),
(4, '456343222', 'Daffaq SP', '123', 'user'),
(5, '6789012391283', 'Agus Budiman', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `kuantitas`
--
ALTER TABLE `kuantitas`
  ADD PRIMARY KEY (`id_kuantitas`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `kuantitas`
--
ALTER TABLE `kuantitas`
  MODIFY `id_kuantitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
