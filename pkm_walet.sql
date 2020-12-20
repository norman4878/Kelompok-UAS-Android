-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 01:50 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pkm_walet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'mitra', 'usaha'),
(9, 'amat', '23567'),
(10, 'anam', 'admin123'),
(11, 'ijai', '23568jos'),
(13, 'mantap', 'jossekali'),
(14, 'coba123', 'ABCD');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `no_barang` int(11) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `harga` float NOT NULL,
  `stok` int(15) NOT NULL,
  `image` varchar(200) NOT NULL,
  `deskripsi` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`no_barang`, `nama_barang`, `harga`, `stok`, `image`, `deskripsi`) VALUES
(1, 'Sarang burung walet campuran', 12000000, 15, 'campuran.jpg', 'Sarang yang di maksud ini merupak jenis 2 sarang yaitu campuran antara sarang wurni dan patahan serta yang berbentuk sudut,yang kombinasikan jadi satu dalam proses penjualan.'),
(2, 'Sarang burung walet sudut', 14000000, 40, 'sudut.jpg', 'Biasanay sarang jarang-jarang di hasilkan,karena jenis sarang yang ini biasanya terbentuk hanya  bisa terbentuk di setiap sisi-sisi ruang dalam bangunan sarang walet.'),
(6, 'Sarang burung walet pecahan', 10000000, 20, 'patahan.jpg', 'Bentuk dari sarang walet ini biasanya merupakan pecahan dari berbagai jenis sarang yang ada seperti dari pecahan sarang walet murni dan sudut.'),
(8, 'Sarang burung walet murni', 15000000, 50, 'walet2.jpg', 'Jenis sarang yang di hasilka ini merupan sarang walet yang memang di cari-cari oleh kalangan bisnis jual beli walet,karena dari segi kualitas nya memang bagus.'),
(9, 'SarangW', 12000000, 10, 'walet', 'SarangW'),
(10, 'SarangW', 15000000, 50, 'walet', 'SarangW');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `nama` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`nama`, `password`, `no_hp`, `alamat`, `image`) VALUES
('anjay', 'blableh', '91818318', 'Jl.jomblo', ''),
('coeglah', 'hahiho', '2147483647', 'anjay gurinjay', ''),
('Dendi', 'jos123', '08565543321', 'Jl_Sarigading', 'norjpeg'),
('juragan', '123456', '085545778666', 'Jl. Tikus', ''),
('Norman', 'mantap_sekali', '082334455667', 'Jl_Wengga', 'norjpeg'),
('reborn', '123456', '089363613153', 'Jlan', 'favicon (15).ico');

-- --------------------------------------------------------

--
-- Table structure for table `profil_admin`
--

CREATE TABLE IF NOT EXISTS `profil_admin` (
  `id` int(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `umur` int(5) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `whats` varchar(15) NOT NULL,
  `fb` varchar(200) NOT NULL,
  `instan` varchar(200) NOT NULL,
  `tentang` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `video` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil_admin`
--

INSERT INTO `profil_admin` (`id`, `nama`, `umur`, `tgl_lahir`, `alamat`, `no_hp`, `whats`, `fb`, `instan`, `tentang`, `image`, `video`) VALUES
(1, 'Kurdiansyah', 55, '1970-10-06', 'JL. Bapinang-Pagatan', '085349723312', '085349723312', 'sarangwallet@yahoo.com', '@Pelet_murah', 'PengUsaha: Rumah sarang walet', 'dgdgd.ico', 'contoh.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `no_transaksi` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `no_barang` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jumlah` int(15) NOT NULL,
  `status` varchar(50) NOT NULL,
  `catatan` varchar(200) NOT NULL,
  `tgl_edit` datetime NOT NULL,
  `tgl_hapus` datetime NOT NULL,
  `org_hapus` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `nama`, `no_barang`, `tanggal`, `jumlah`, `status`, `catatan`, `tgl_edit`, `tgl_hapus`, `org_hapus`) VALUES
(9, 'reborn', 1, '2019-11-24 16:05:35', 12, 'Diproses', 'kaya nasi campur', '2019-11-24 16:06:57', '0000-00-00 00:00:00', ''),
(11, 'reborn', 8, '2019-11-24 16:42:24', 20, 'Selesai', 'coeg udah punya', '2019-11-24 16:44:17', '0000-00-00 00:00:00', ''),
(12, 'reborn', 2, '2019-11-28 04:39:32', 35, 'Diterima', 'anjayrykre', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(13, 'anjay', 6, '2019-11-28 05:00:45', 12, 'Diterima', 'anjay', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(14, 'anjay', 8, '2019-11-28 05:00:57', 25, 'Diterima', 'dfd', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `password` (`password`), ADD UNIQUE KEY `username_2` (`username`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`no_barang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`nama`);

--
-- Indexes for table `profil_admin`
--
ALTER TABLE `profil_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`), ADD KEY `no_pelanggan` (`nama`), ADD KEY `no_barang` (`no_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `no_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `profil_admin`
--
ALTER TABLE `profil_admin`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`no_barang`) REFERENCES `barang` (`no_barang`),
ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`nama`) REFERENCES `pelanggan` (`nama`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
