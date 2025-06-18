-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2025 at 06:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int NOT NULL,
  `nama` varchar(45) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`) VALUES
(2, 'Elektronik'),
(3, 'Fashion Pria'),
(4, 'Olahraga'),
(5, 'Handphone & Aksesoris'),
(12, 'Kecantikan');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int NOT NULL,
  `tanggal` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_pemesan` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat_pemesan` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `no_hp` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `jumlah_pesanan` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `produk_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `nama_pemesan`, `alamat_pemesan`, `no_hp`, `email`, `jumlah_pesanan`, `deskripsi`, `produk_id`) VALUES
(12, '07-05-2023', 'Muhammad Galang', 'Jl. Akami Sojaburi, Okonomiyaki II', '085437927754', 'ggalang8@gmail.com', 1, 'Hati-Hati di Jalan turututututututu', 21),
(13, '08-05-2023', 'Muchamad Zainuri', 'Kampung Bojong Rt.05 Rw.01, Bogor', '081210212912', 'zainuri7@gmail.com', 10, 'Yang Cepet ya dateng nya:]', 17),
(16, '08-05-2023', 'Muhammad Sumbul', 'Jalan Gorong II No.25 Rt.10 Rw.01 Kota Mars', '085437927754', 'masa6@gmail.com', 2, 'Jangan Lupa bonus wiskasnya', 9),
(17, '08-05-2023', 'Sri Asih Nurani', 'Jalan Galaksi 1 No.05 Rt.10 Rw.05 Kota Bekasi', '08121021298', 'sriasnur45@gmail.com', 1, 'Hati Hati Yak bang mahal nih soalnya.', 8),
(18, '08-05-2024', 'Muhammad Ade Wijaya ', 'Jalan sultan II, No.25 Rt.04 Rw.10 Kota Bogor', '081210212912', 'wijaya67@gmail.com', 2, 'kalo cepet sampe ada tip nih bang. (Tapi Boong)', 16),
(19, '12-05-2023', 'RahmaWati', 'Jl. Kemiri III No.24, Rt.010 Rw02, Tanggerang', '081210212912', 'Rahwaj23@gmail.com', 1, 'Hati Hati Bang Buat Kerja Soalnya:)', 13),
(29, '15-06-2025', 'Maulana Riski', 'Jl. Tirta Kencana IV No.56B', '081381805291', 'mzainuri478@gmail.com', 5, 'Jangan Lama Lama', 3);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `kode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `stok` int NOT NULL,
  `min_stok` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `kategori_produk_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode`, `img`, `nama`, `harga_jual`, `harga_beli`, `stok`, `min_stok`, `deskripsi`, `kategori_produk_id`) VALUES
(1, 'KC001SS', 'sunscreen.png', 'Sunscreen', 51000, 30000, 12, 8, 'Kondisi: Baru, Estimasi: Siap dikirim 1-3 hari', 12),
(2, 'KC002EY', 'eyeliner.jpg', 'Eyeliner', 75000, 50000, 10, 5, 'Kondisi: Baru, Estimasi: Siap dikirim 1-3 hari', 12),
(3, 'KC003BT', 'facialwash.jpg', 'Brightening Facial Wash', 50000, 35000, 20, 10, 'Kondisi: Baru, Estimasi: Siap dikirim 1-3 hari', 12),
(4, 'KC004LB', 'lipbalm1.png', 'Lip Balm', 100000, 85000, 15, 8, 'Kondisi: Baru, Estimasi: Siap dikirim 1-3 hari', 12),
(5, 'KC005BL', 'bodylotion.jpg', 'Body Lotion', 87000, 50000, 12, 5, 'Kondisi: Baru, Estimasi: Siap dikirim 1-3 hari', 12),
(6, 'EL001ST', 'smarttv.png', 'Smart TV', 3800000, 3000000, 8, 4, 'Kondisi: Baru, Estimasi: Siap dikirim 4-8 hari', 2),
(7, 'EL002KA', 'kipas.png', 'Kipas Angin', 150000, 125000, 15, 10, 'Kondisi: Baru, Estimasi: Siap dikirim 4-8 hari', 2),
(8, 'EL003KS', 'kulkas.png', 'Kulkas', 4500000, 3900000, 8, 4, 'Kondisi: Baru, Estimasi: Siap dikirim 4-8 hari', 2),
(9, 'EL004RC', 'magicjer.png', 'Digital Rice Cooker', 525000, 400000, 10, 7, 'Kondisi: Baru, Estimasi: Siap dikirim 4-8 hari', 2),
(10, 'EL005VC', 'vacum.png', 'Vacuum Cleaner', 1520000, 1320000, 5, 2, 'Kondisi: Baru, Estimasi: Siap dikirim 4-8 hari', 2),
(11, 'FP001KP', 'bajupolos.png', 'Kaos Polos', 59000, 48000, 25, 20, 'Kondisi: Baru, Estimasi: Siap dikirim 2-4 hari', 3),
(12, 'FP002HP', 'hoddie_polos.png', 'Hoodie Polos', 80000, 50000, 22, 15, 'Kondisi: Baru, Estimasi: Siap dikirim 2-4 hari', 3),
(13, 'FP003KJ', 'Kemeja.png', 'Kemeja', 350000, 300000, 15, 8, 'Kondisi: Baru, Estimasi: Siap dikirim 2-4 hari', 3),
(14, 'FP004CJ', 'jeans.png', 'Celana Jeans', 425000, 350000, 12, 10, 'Kondisi: Baru, Estimasi: Siap dikirim 2-4 hari', 3),
(15, 'FP005TS', 'tas_pinggang.png', 'Tas Selempang Bodypack', 230000, 150000, 15, 8, 'Kondisi: Baru, Estimasi: Siap dikirim 2-4 hari', 3),
(16, 'OL001SJ', 'sepatu.png', 'Sneakers Joging Pria', 290000, 250000, 20, 8, 'Kondisi: Baru, Estimasi: Siap dikirim 3-5 hari', 4),
(17, 'OL002HG', 'handgrip.png', 'Hand Grip', 50000, 35000, 30, 20, 'Kondisi: Baru, Estimasi: Siap dikirim 3-5 hari', 4),
(18, 'OL003MY', 'yoga.png', 'Matras Yoga', 100000, 89000, 15, 8, 'Kondisi: Baru, Estimasi: Siap dikirim 3-5 hari', 4),
(19, 'OL004KR', 'kmata_renang.png', 'Kaca Mata Renang', 88000, 73000, 20, 16, 'Kondisi: Baru, Estimasi: Siap dikirim 3-5 hari', 4),
(20, 'OL005PB', 'pull_up.png', 'Pull Up Bar', 110000, 87000, 15, 7, 'Kondisi: Baru, Estimasi: Siap dikirim 3-5 hari', 4),
(21, 'HP001RM', 'realme.png', 'Realme narzo 50A Prime', 2000000, 1899000, 8, 4, 'Kondisi: Baru, Estimasi: Siap dikirim 2-5 hari', 5),
(22, 'HP002OP', 'oppo.png', 'OPPO A78 5G', 4200000, 3800000, 12, 8, 'Kondisi: Baru, Estimasi: Siap dikirim 2-5 hari', 5),
(23, 'HP003SG', 'samsung.png', 'Samsung Galaxy A34 5G', 5500000, 4999000, 10, 7, 'Kondisi: Baru, Estimasi: Siap dikirim 2-5 hari', 5),
(24, 'HP004CS', 'casing.jpg', 'Cashing Iphone 11', 105000, 98000, 27, 18, 'Kondisi: Baru, Estimasi: Siap dikirim 2-5 hari', 5),
(25, 'HP005TP', 'tempred.png', 'Temperd glas', 10000, 7500, 30, 25, 'Kondisi: Baru, Estimasi: Siap dikirim 2-5 hari', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
