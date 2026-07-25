-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2026 at 07:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `id_produk` int NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `total_harga` int DEFAULT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int NOT NULL,
  `id_penjualan` int DEFAULT NULL,
  `id_produk` int DEFAULT NULL,
  `jumlah_produk` int DEFAULT NULL,
  `sub_total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail`, `id_penjualan`, `id_produk`, `jumlah_produk`, `sub_total`) VALUES
(3, 3, 17, 1, 100000),
(4, 3, 18, 1, 200000),
(5, 3, 20, 1, 20000000),
(6, 3, 21, 1, 3000000),
(7, 3, 22, 1, 300000),
(8, 3, 25, 1, 5000000),
(9, 3, 26, 1, 2300000),
(10, 3, 27, 1, 2400000),
(11, 3, 28, 1, 25000000),
(12, 3, 29, 1, 15000000),
(13, 3, 30, 1, 30000000),
(27, 7, 17, 1, 100000),
(28, 8, 30, 1, 30000000),
(29, 9, 17, 1, 100000),
(30, 10, 22, 1, 300000),
(31, 11, 30, 1, 30000000),
(32, 12, 30, 1, 30000000),
(33, 13, 17, 1, 100000),
(34, 14, 18, 1, 200000),
(35, 15, 18, 1, 200000),
(36, 15, 27, 1, 2400000),
(37, 16, 31, 1, 900000000),
(38, 17, 17, 1, 100000),
(39, 17, 31, 1, 900000000),
(40, 18, 18, 1, 200000),
(41, 19, 17, 1, 100000),
(42, 19, 18, 1, 200000),
(43, 19, 20, 1, 20000000),
(44, 19, 21, 1, 3000000),
(45, 19, 22, 1, 300000),
(46, 19, 25, 1, 5000000),
(47, 19, 28, 1, 25000000),
(48, 19, 30, 1, 30000000),
(49, 20, 17, 1, 100000),
(50, 20, 18, 1, 200000),
(51, 20, 20, 1, 20000000),
(52, 20, 21, 1, 3000000),
(53, 20, 22, 1, 300000),
(54, 20, 25, 4, 20000000),
(55, 20, 28, 2, 50000000),
(56, 20, 29, 3, 45000000),
(57, 20, 30, 4, 120000000),
(58, 21, 28, 1, 25000000),
(59, 21, 29, 1, 15000000),
(60, 21, 18, 1, 200000),
(61, 22, 28, 1, 25000000),
(62, 23, 20, 1, 20000000),
(63, 23, 18, 1, 200000),
(64, 23, 17, 2, 200000),
(65, 24, 17, 1, 100000),
(66, 24, 22, 1, 300000),
(67, 24, 31, 1, 900000000),
(68, 24, 28, 1, 25000000),
(69, 24, 30, 1, 30000000),
(70, 24, 29, 1, 15000000),
(71, 25, 17, 1, 100000),
(72, 25, 18, 3, 600000),
(73, 25, 22, 1, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int NOT NULL,
  `id_user` int NOT NULL,
  `id_produk` int NOT NULL,
  `jumlah` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_user`, `id_produk`, `jumlah`, `created_at`) VALUES
(1, 20, 23, 4, '2025-01-28 14:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama_pelanggan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_telepon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telepon`) VALUES
(8, 'El Manuk', 'Sidoarjo', '095235656543'),
(9, 'Sam Sul', 'Krian', '0856782345'),
(11, 'Pak Rey', 'Krian', '085163024682'),
(12, 'Pak Ony', 'Cimon', '093864345'),
(13, 'Salsa', 'Krian', '085163024682'),
(14, 'Bila', 'Sidoarjo', '085163024682'),
(15, 'Xavier', 'Amerika', '0943456212'),
(17, 'Hesti', 'terik', '0938242324'),
(18, 'Tegar Rawr', 'Terik', '085230087174'),
(19, 'Dhea', 'Tarik', '029837347323');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int NOT NULL,
  `tanggal_penjualan` date DEFAULT NULL,
  `id_kasir` int DEFAULT NULL,
  `total_harga` int DEFAULT NULL,
  `id_pelanggan` int DEFAULT NULL,
  `bayar` int DEFAULT NULL,
  `kembali` int DEFAULT NULL,
  `metode` enum('Cash','Transfer') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Selsesai','Proses') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tanggal_penjualan`, `id_kasir`, `total_harga`, `id_pelanggan`, `bayar`, `kembali`, `metode`, `status`) VALUES
(3, '2025-02-01', 20, 103300000, 15, 103300000, 0, NULL, NULL),
(7, '2025-02-21', 20, 100000, 15, 100000, 0, NULL, NULL),
(8, '2025-02-21', 20, 30000000, 15, 30000000, 0, NULL, NULL),
(9, '2025-02-21', 20, 100000, 15, 100000, 0, NULL, NULL),
(10, '2025-02-21', 20, 300000, 15, 300000, 0, NULL, NULL),
(11, '2025-02-21', 20, 30000000, 13, 30000000, 0, NULL, NULL),
(12, '2025-02-24', 20, 30000000, 12, 30000000, 0, NULL, NULL),
(13, '2025-02-24', 20, 100000, 11, 100000, 0, NULL, NULL),
(14, '2025-03-03', 20, 200000, 15, 200000, 0, NULL, NULL),
(15, '2025-03-18', 20, 2600000, 17, 3000000, 400000, NULL, NULL),
(16, '2025-03-18', 20, 900000000, 18, 900000000, 0, NULL, NULL),
(17, '2025-04-23', 20, 900100000, 15, 900100000, 0, NULL, NULL),
(18, '2025-05-08', 20, 200000, 8, 200000, 0, NULL, NULL),
(19, '2025-08-25', 20, 83600000, 15, 83600000, 0, NULL, NULL),
(20, '2025-08-25', 20, 258600000, 15, 258600000, 0, NULL, NULL),
(21, '2025-10-15', 20, 40200000, 17, 40200000, 0, NULL, NULL),
(22, '2026-02-05', 20, 25000000, 19, 25000000, 0, NULL, NULL),
(23, '2026-02-23', 20, 20400000, 15, 20400000, 0, NULL, NULL),
(24, '2026-04-03', 20, 970400000, 15, 970400000, 0, NULL, NULL),
(25, '2026-05-25', 20, 1000000, 15, 1000000, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `gambar_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi_produk`, `harga`, `stok`, `gambar_produk`) VALUES
(17, 'Mouse', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.', 100000, 770, 'mouse.png'),
(18, 'Monitor', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.', 200000, 961, 'monitor.jpg'),
(20, 'Vga Card', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.', 20000000, 977, 'vga.jpeg'),
(21, 'Motherboard', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.', 3000000, 980, 'motherboard.jpg'),
(22, 'Ram', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.', 300000, 983, 'ram.jpeg'),
(25, 'Laptop', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.', 5000000, 9992, 'laptop.jpeg'),
(28, 'Samsung S25 Ultra', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.\r\n', 25000000, 191, 's25 ultra.jpg'),
(29, 'Asus ROG 8 Pro', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.\r\n', 15000000, 92, 'rog 8.jpg'),
(30, 'iPhone 16 Pro Max', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta, dolores.\r\n', 30000000, 48, 'iphone 16 promax.jpg'),
(31, 'Rubicon', 'Rubicon 2013', 900000000, 9, 'rubicon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `business_name`, `email`, `address`, `phone`, `logo`) VALUES
(1, 'UCell', 'ucell@gmail.com', 'Dsn Terik, Ds Terik, Kec Krian, Kab Sidoarjo Rt 7 Rw 3', '085163024682', 'logo ucell2.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('admin','petugas') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(16, 'Sam Sul', 'samsul', '$2y$10$8qZlMB7zkCVv477TpsWd0eaHhMVnbJY5WqTw37igDGHtwzfX2fEc6', 'petugas'),
(20, 'Ubed Dahlan', 'ubeddahlan', '$2y$10$.i96rAR25h4anpS9fmVP0uA/R7yZeCxZ6yp2mVLCTBRbSy60BBeiC', 'admin'),
(21, 'Kal El', 'kalel', '$2y$10$596S.WIqUuXyYBMBc/7qde9aufw0nLfmvLs0rk0QmRGTLWv8aDImK', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
