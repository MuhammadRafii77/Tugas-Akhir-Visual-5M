-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 05:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sepeda`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `status` enum('Sedang Proses','Selesai','Dibatalkan','') NOT NULL,
  `total_harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `nama_produk`, `jumlah`, `status`, `total_harga`) VALUES
(1, 'Beat', '2', 'Selesai', '45.000.000.00'),
(6, 'Honda CBR150R', '2', 'Sedang Proses', '50000000'),
(7, 'Yamaha NMAX', '1', 'Selesai', '30000000'),
(8, 'Suzuki GSX-R150', '3', 'Sedang Proses', '75000000'),
(9, 'Kawasaki Ninja 250SL', '1', 'Selesai', '60000000'),
(10, 'Ducati Panigale V4', '2', 'Dibatalkan', '150000000'),
(11, 'Harley-Davidson Stre', '1', 'Selesai', '80000000'),
(12, 'KTM RC 390', '3', 'Dibatalkan', '90000000'),
(13, 'BMW S1000RR', '2', 'Selesai', '120000000'),
(14, 'Aprilia RSV4', '1', 'Sedang Proses', '100000000'),
(15, 'Triumph Street Tripl', '2', 'Selesai', '110000000');

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE `faktur` (
  `id_faktur` int(11) NOT NULL,
  `id_pesanan` int(11) DEFAULT NULL,
  `total_harga` varchar(20) DEFAULT NULL,
  `tanggal_pembayaran` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faktur`
--

INSERT INTO `faktur` (`id_faktur`, `id_pesanan`, `total_harga`, `tanggal_pembayaran`) VALUES
(2, 1, '20', '2023-11-01'),
(4, 1, '50000000', '2023-05-01'),
(5, 2, '30000000', '2023-05-02'),
(6, 3, '75000000', '2023-05-03'),
(7, 4, '60000000', '2023-05-04'),
(8, 5, '150000000', '2023-05-05'),
(9, 6, '80000000', '2023-05-06'),
(10, 7, '90000000', '2023-05-07'),
(11, 8, '120000000', '2023-05-08'),
(12, 9, '100000000', '2023-05-09'),
(13, 10, '110000000', '2023-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(25) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `telepon`) VALUES
(1, 'Arul', 'Tabalong', '083747632'),
(3, 'Ahmad', 'Jl. Merdeka No. 123', '081234567890'),
(4, 'Siti', 'Jl. Pahlawan No. 45', '085678901234'),
(5, 'Budi', 'Jl. Diponegoro No. 78', '081112223344'),
(6, 'Dewi', 'Jl. Gajah Mada No. 56', '087654321098'),
(7, 'Fahri', 'Jl. Veteran No. 34', '081998877665'),
(8, 'Rina', 'Jl. Sudirman No. 89', '081111223344'),
(9, 'Eko', 'Jl. Hayam Wuruk No. 12', '082334455667'),
(10, 'Lina', 'Jl. Thamrin No. 67', '081234567890'),
(11, 'Cahyo', 'Jl. Imam Bonjol No. 23', '085667788999'),
(12, 'Diana', 'Jl. Kusuma Bangsa No. 45', '081234567890');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `nama_produk` varchar(15) DEFAULT NULL,
  `jumlah_produk` int(11) DEFAULT NULL,
  `tanggal_pesan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `nama_produk`, `jumlah_produk`, `tanggal_pesan`) VALUES
(6, 'Zx150', 1, '2023-11-07'),
(15, 'Honda CBR150R', 2, '2023-05-15'),
(16, 'Yamaha NMAX', 1, '2023-05-16'),
(17, 'Suzuki GSX-R150', 3, '2023-05-17'),
(18, 'Kawasaki Ninja ', 1, '2023-05-18'),
(19, 'Ducati Panigale', 2, '2023-05-19'),
(20, 'Harley-Davidson', 1, '2023-05-20'),
(21, 'KTM RC 390', 3, '2023-05-21'),
(22, 'BMW S1000RR', 2, '2023-05-22'),
(23, 'Aprilia RSV4', 1, '2023-05-23'),
(24, 'Triumph Street ', 2, '2023-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(20) DEFAULT NULL,
  `harga` varchar(20) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`) VALUES
(7, 'king', '10000', 2),
(23, 'Honda CBR1000RR', '150000000', 10),
(24, 'Yamaha R1', '160000000', 15),
(25, 'Suzuki GSX-R1000', '155000000', 12),
(26, 'Kawasaki Ninja ZX-10', '165000000', 8),
(27, 'Ducati Panigale V4', '200000000', 5),
(28, 'Harley-Davidson Stre', '250000000', 7),
(29, 'BMW S1000RR', '180000000', 10),
(30, 'KTM 1290 Super Duke ', '170000000', 9),
(31, 'Triumph Speed Triple', '190000000', 6),
(32, 'Aprilia RSV4', '195000000', 11);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(2, 'admin', '1234'),
(3, 'admin', '1234'),
(4, 'siti', 'sandi2'),
(5, 'agus', 'sandi3'),
(6, 'dewi', 'sandi4'),
(7, 'ari', 'sandi5'),
(8, 'lisa', 'sandi6'),
(9, 'joko', 'sandi7'),
(10, 'irma', 'sandi8'),
(11, 'eko', 'sandi9'),
(12, 'nina', 'sandi10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`id_faktur`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `faktur`
--
ALTER TABLE `faktur`
  MODIFY `id_faktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
