-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 09:12 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mhs`
--

CREATE TABLE `data_mhs` (
  `id` int(11) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_mhs`
--

INSERT INTO `data_mhs` (`id`, `nim`, `nama`, `alamat`, `tgl_lahir`) VALUES
(1, '41119018', 'Hengky Daramawan', 'Jakarta Barat', '22 Febuari 2001');

-- --------------------------------------------------------

--
-- Table structure for table `data_mhs_chart`
--

CREATE TABLE `data_mhs_chart` (
  `nik` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jkel` char(1) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `jrs` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_mhs_chart`
--

INSERT INTO `data_mhs_chart` (`nik`, `nama`, `jkel`, `tgl_lhr`, `jrs`) VALUES
(135310150, 'Hidayatuloh', '1', '1997-08-05', 'TK'),
(135310156, 'Ayu Wulandari', '2', '1995-09-01', 'TK'),
(135410156, 'Ahmad Fauzi', '1', '1995-02-23', 'TI'),
(135410189, 'Wawan Ridwan', '1', '1993-02-13', 'TI'),
(135510190, 'Marno', '1', '1993-10-23', 'MI'),
(135510191, 'Icha May', '2', '1995-01-13', 'MI'),
(135510920, 'Dadan Hermawan', '1', '1996-05-05', 'SI'),
(135518322, 'Nita Vera', '2', '1994-09-05', 'TI'),
(135518900, 'Bili Wilian', '1', '1995-10-08', 'SI'),
(135558944, 'Bayu Galih', '1', '1997-01-15', 'SI'),
(135610157, 'Dani Iskandar', '1', '1998-03-26', 'SI'),
(136349343, 'Aryani', '2', '1992-10-29', 'MI'),
(147343998, 'Lestari', '2', '1996-11-12', 'MI'),
(158549583, 'Candra Halim', '1', '1994-10-22', 'TK'),
(158984545, 'Juanto', '1', '1993-01-20', 'SI');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `no` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`no`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `umur`) VALUES
(1, 'Aini', 'Wanita', '01-03-2000', 22),
(2, 'Bela', 'Wanita', '02-01-2001', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nim`, `nama`, `email`) VALUES
(1, '41119001', 'Hengky Daramawan', 'hengky@gmail.com'),
(2, '41119002', 'yuli', 'yuli@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mhs`
--
ALTER TABLE `data_mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_mhs_chart`
--
ALTER TABLE `data_mhs_chart`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_mhs`
--
ALTER TABLE `data_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_mhs_chart`
--
ALTER TABLE `data_mhs_chart`
  MODIFY `nik` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158984546;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
