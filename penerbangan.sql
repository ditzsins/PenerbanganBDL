-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 10:15 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penerbangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_harga`
--

CREATE TABLE `detail_harga` (
  `id_detail_harga` varchar(10) NOT NULL,
  `id_jadwal` varchar(10) NOT NULL,
  `harga_tiket` int(15) NOT NULL,
  `jenis_kelas` enum('Economy','Business','First Class','Premium Economy') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_harga`
--

INSERT INTO `detail_harga` (`id_detail_harga`, `id_jadwal`, `harga_tiket`, `jenis_kelas`) VALUES
('DH-00065', 'JD-0064', 5000000, 'First Class'),
('DH-00066', 'JD-0065', 3000000, 'First Class'),
('DH-00067', 'JD-0066', 2500000, 'First Class'),
('DH-00068', 'JD-0067', 3640000, 'First Class'),
('DH-00069', 'JD-0068', 2300000, 'First Class'),
('DH0001', 'JD-0001', 100000, 'Economy'),
('DH0002', 'JD-0001', 200000, 'Business'),
('DH0003', 'JD-0001', 300000, 'First Class'),
('DH0004', 'JD-0001', 400000, 'Premium Economy'),
('DH0005', 'JD-0003', 200000, 'Economy'),
('DH0006', 'JD-0003', 300000, 'Business'),
('DH0007', 'JD-0003', 400000, 'First Class'),
('DH0008', 'JD-0003', 500000, 'Premium Economy'),
('DH0009', 'JD-0005', 300000, 'Economy'),
('DH0010', 'JD-0005', 400000, 'Business'),
('DH0011', 'JD-0005', 500000, 'First Class'),
('DH0012', 'JD-0005', 600000, 'Premium Economy'),
('DH0013', 'JD-0006', 400000, 'Economy'),
('DH0014', 'JD-0006', 500000, 'Business'),
('DH0015', 'JD-0006', 600000, 'First Class'),
('DH0016', 'JD-0006', 700000, 'Premium Economy'),
('DH0017', 'JD-0007', 150000, 'Economy'),
('DH0018', 'JD-0007', 250000, 'Business'),
('DH0019', 'JD-0007', 350000, 'First Class'),
('DH0020', 'JD-0007', 450000, 'Premium Economy'),
('DH0021', 'JD-0008', 250000, 'Economy'),
('DH0022', 'JD-0008', 350000, 'Business'),
('DH0023', 'JD-0008', 450000, 'First Class'),
('DH0024', 'JD-0008', 550000, 'Premium Economy'),
('DH0025', 'JD-0009', 120000, 'Economy'),
('DH0026', 'JD-0009', 220000, 'Business'),
('DH0027', 'JD-0009', 320000, 'First Class'),
('DH0028', 'JD-0009', 420000, 'Premium Economy'),
('DH0029', 'JD-0010', 220000, 'Economy'),
('DH0030', 'JD-0010', 320000, 'Business'),
('DH0031', 'JD-0010', 420000, 'First Class'),
('DH0032', 'JD-0010', 520000, 'Premium Economy'),
('DH0033', 'JD-0010', 320000, 'Economy'),
('DH0034', 'JD-0010', 420000, 'Business'),
('DH0035', 'JD-0010', 520000, 'First Class'),
('DH0036', 'JD-0010', 620000, 'Premium Economy'),
('DH0037', 'JD-0011', 300000, 'Economy'),
('DH0038', 'JD-0011', 400000, 'Business'),
('DH0039', 'JD-0011', 500000, 'First Class'),
('DH0040', 'JD-0011', 600000, 'Premium Economy'),
('DH0041', 'JD-0013', 400000, 'Economy'),
('DH0042', 'JD-0013', 600000, 'Business'),
('DH0043', 'JD-0013', 800000, 'First Class'),
('DH0044', 'JD-0013', 1000000, 'Premium Economy'),
('DH0045', 'JD-0016', 500000, 'Economy'),
('DH0046', 'JD-0016', 600000, 'Business'),
('DH0047', 'JD-0016', 700000, 'First Class'),
('DH0048', 'JD-0016', 800000, 'Premium Economy'),
('DH0049', 'JD-0017', 600000, 'Economy'),
('DH0050', 'JD-0017', 700000, 'Business'),
('DH0051', 'JD-0017', 800000, 'First Class'),
('DH0052', 'JD-0017', 900000, 'Premium Economy'),
('DH0053', 'JD-0018', 700000, 'Economy'),
('DH0054', 'JD-0018', 800000, 'Business'),
('DH0055', 'JD-0018', 900000, 'First Class'),
('DH0056', 'JD-0018', 1000000, 'Premium Economy'),
('DH0057', 'JD-0019', 550000, 'Economy'),
('DH0058', 'JD-0019', 650000, 'Business'),
('DH0059', 'JD-0019', 750000, 'First Class'),
('DH0060', 'JD-0019', 850000, 'Premium Economy'),
('DH0061', 'JD-0020', 400000, 'Economy'),
('DH0062', 'JD-0020', 600000, 'Business'),
('DH0063', 'JD-0020', 800000, 'First Class'),
('DH0064', 'JD-0020', 1000000, 'Premium Economy'),
('DH0065', 'JD-0069', 587000, 'Economy'),
('DH0066', 'JD-0070', 537900, 'Economy'),
('DH0067', 'JD-0071', 756500, 'Economy'),
('DH0068', 'JD-0072', 77200, 'Economy'),
('DH0069', 'JD-0073', 416500, 'Economy'),
('DH0070', 'JD-0074', 494600, 'Economy'),
('DH0071', 'JD-0075', 455000, 'Economy'),
('DH0072', 'JD-0076', 963200, 'Economy'),
('DH0073', 'JD-0077', 2864100, 'Economy'),
('DH0074', 'JD-0078', 1266100, 'Economy'),
('DH0075', 'JD-0079', 1427300, 'Economy'),
('DH0076', 'JD-0080', 1103900, 'Business'),
('DH0077', 'JD-0081', 1131900, 'Business'),
('DH0078', 'JD-0082', 664000, 'Economy'),
('DH0079', 'JD-0083', 778500, 'Economy'),
('DH0080', 'JD-0084', 752000, 'Economy'),
('DH0081', 'JD-0085', 685000, 'Economy'),
('DH0082', 'JD-0086', 537500, 'Economy'),
('DH0083', 'JD-0087', 691500, 'Economy');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_detail` varchar(10) NOT NULL,
  `id_pesanan` varchar(10) NOT NULL,
  `id_jadwal` varchar(10) NOT NULL,
  `jenis_perjalanan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_detail`, `id_pesanan`, `id_jadwal`, `jenis_perjalanan`) VALUES
(' DP0091', 'PS0091', 'JD-0084', 'Pergi'),
('DP0001', 'PS0001', 'JD-0001', 'Pergi'),
('DP0002', 'PS0002', 'JD-0005', 'Pergi'),
('DP0003', 'PS0003', 'JD-0008', 'Pergi'),
('DP0004', 'PS0004', 'JD-0007', 'Pergi'),
('DP0005', 'PS0005', 'JD-0005', 'Pergi'),
('DP0006', 'PS0006', 'JD-0011', 'Pergi'),
('DP0007', 'PS0007', 'JD-0008', 'Pergi'),
('DP0008', 'PS0008', 'JD-0009', 'Pergi'),
('DP0009', 'PS0009', 'JD-0025', 'Pergi'),
('DP0010', 'PS0010', 'JD-0016', 'Pergi'),
('DP0011', 'PS0011', 'JD-0063', 'Pergi'),
('DP0012', 'PS0012', 'JD-0018', 'Pergi'),
('DP0013', 'PS0013', 'JD-0016', 'Pergi'),
('DP0014', 'PS0014', 'JD-0023', 'Pergi'),
('DP0015', 'PS0015', 'JD-0025', 'Pergi'),
('DP0016', 'PS0016', 'JD-0032', 'Pergi'),
('DP0017', 'PS0017', 'JD-0029', 'Pergi'),
('DP0018', 'PS0018', 'JD-0035', 'Pergi'),
('DP0019', 'PS0019', 'JD-0048', 'Pergi'),
('DP0020', 'PS0020', 'JD-0005', 'Pergi'),
('DP0021', 'PS0021', 'JD-0006', 'Pergi'),
('DP0022', 'PS0022', 'JD-0001', 'Pergi'),
('DP0023', 'PS0023', 'JD-0006', 'Pergi'),
('DP0024', 'PS0024', 'JD-0008', 'Pergi'),
('DP0025', 'PS0025', 'JD-0010', 'Pergi'),
('DP0026', 'PS0026', 'JD-0020', 'Pergi'),
('DP0027', 'PS0027', 'JD-0063', ''),
('DP0028', 'PS0028', 'JD-0022', 'Pergi'),
('DP0029', 'PS0029', 'JD-0063', 'Pergi'),
('DP0030', 'PS0030', 'JD-0020', 'Pergi'),
('DP0031', 'PS0031', 'JD-0024', 'Pergi'),
('DP0032', 'PS0032', 'JD-0001', 'Pergi'),
('DP0033', 'PS0033', 'JD-0003', 'Pergi'),
('DP0034', 'PS0034', 'JD-0056', 'Pergi'),
('DP0035', 'PS0035', 'JD-0056', 'Pergi'),
('DP0036', 'PS0036', 'JD-0056', 'Pergi'),
('DP0037', 'PS0037', 'JD-0056', 'Pergi'),
('DP0038', 'PS0038', 'JD-0057', 'Pergi'),
('DP0039', 'PS0039', 'JD-0057', 'Pergi'),
('DP0040', 'PS0040', 'JD-0057', 'Pergi'),
('DP0041', 'PS0041', 'JD-0057', 'Pergi'),
('DP0042', 'PS0042', 'JD-0058', 'Pergi'),
('DP0043', 'PS0043', 'JD-0058', 'Pergi'),
('DP0044', 'PS0044', 'JD-0058', 'Pergi'),
('DP0045', 'PS0045', 'JD-0058', 'Pergi'),
('DP0046', 'PS0046', 'JD-0039', 'Pergi'),
('DP0047', 'PS0047', 'JD-0039', 'Pergi'),
('DP0048', 'PS0048', 'JD-0039', 'Pergi'),
('DP0049', 'PS0049', 'JD-0039', 'Pergi'),
('DP0050', 'PS0050', 'JD-0039', 'Pergi'),
('DP0051', 'PS0051', 'JD-0039', 'Pergi'),
('DP0052', 'PS0052', 'JD-0039', 'Pergi'),
('DP0053', 'PS0053', 'JD-0039', 'Pergi'),
('DP0054', 'PS0054', 'JD-0039', 'Pergi'),
('DP0055', 'PS0055', 'JD-0039', 'Pergi'),
('DP0056', 'PS0056', 'JD-0040', 'Pergi'),
('DP0057', 'PS0057', 'JD-0040', 'Pergi'),
('DP0058', 'PS0058', 'JD-0040', 'Pergi'),
('DP0059', 'PS0059', 'JD-0019', 'Pergi'),
('DP0060', 'PS0060', 'JD-0019', 'Pergi'),
('DP0061', 'PS0061', 'JD-0010', 'Pergi'),
('DP0062', 'PS0062', 'JD-0010', 'Pergi'),
('DP0063', 'PS0063', 'JD-0007', 'Pergi'),
('DP0064', 'PS0064', 'JD-0024', 'Pergi'),
('DP0065', 'PS0065', 'JD-0024', 'Pergi'),
('DP0066', 'PS0066', 'JD-0027', 'Pergi'),
('DP0067', 'PS0067', 'JD-0030', 'Pergi'),
('DP0068', 'PS0068', 'JD-0029', 'Pergi'),
('DP0069', 'PS0069', 'JD-0003', 'Pergi'),
('DP0070', 'PS0070', 'JD-0020', 'Pergi'),
('DP0071', 'PS0071', 'JD-0064', 'Pergi'),
('DP0072', 'PS0072', 'JD-0065', 'Pergi'),
('DP0073', 'PS0073', 'JD-0066', 'Pergi'),
('DP0074', 'PS0074', 'JD-0067', 'Pergi'),
('DP0075', 'PS0075', 'JD-0068', 'Pergi'),
('DP0076', 'PS0076', 'JD-0069', 'Pergi'),
('DP0077', 'PS0077', 'JD-0070', 'Pergi'),
('DP0078', 'PS0078', 'JD-0071', 'Pergi'),
('DP0079', 'PS0079', 'JD-0072', 'Pergi'),
('DP0080', 'PS0080', 'JD-0073', 'Pergi'),
('DP0081', 'PS0081', 'JD-0074', 'Pergi'),
('DP0082', 'PS0082', 'JD-0075', 'Pergi'),
('DP0083', 'PS0083', 'JD-0076', 'Pergi'),
('DP0084', 'PS0084', 'JD-0077', 'Pergi '),
('DP0085', 'PS0085', 'JD-0078', 'Pergi'),
('DP0086', 'PS0086', 'JD-0079', 'Pergi'),
('DP0087', 'PS0087', 'JD-0080', 'Pergi'),
('DP0088', 'PS0088', 'JD-0081', 'Pergi'),
('DP0089', 'PS0089', 'JD-0082', 'Pergi'),
('DP0090', 'PS0090', 'JD-0083', 'Pergi'),
('DP0092', 'PS0092', 'JD-0085', 'Pergi'),
('DP0093', 'PS0093', 'JD-0086', 'Pergi'),
('DP0094', 'PS0094', 'JD-0087', 'Pergi'),
('DP0095', 'PS0095', 'JD-0001', 'Pergi'),
('DP0096', 'PS0096', 'JD-0001', 'Pergi'),
('DP0097', 'PS0097', 'JD-0001', 'Pergi'),
('DP0098', 'PS0098', 'JD-0001', 'Pergi');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transit`
--

CREATE TABLE `detail_transit` (
  `Id_Detail_Transit` varchar(10) NOT NULL,
  `Id_Jadwal` varchar(10) NOT NULL,
  `Id_Maskapai` varchar(10) NOT NULL,
  `Kota_Asal` varchar(15) NOT NULL,
  `Kota_Tujuan` varchar(15) NOT NULL,
  `Waktu_Berangkat` datetime NOT NULL,
  `Lama_Transit` time NOT NULL,
  `Waktu_TIba` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` varchar(10) NOT NULL,
  `kota_asal` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `waktu_brkt` datetime NOT NULL,
  `waktu_tiba` datetime NOT NULL,
  `kode_maskapai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `kota_asal`, `kota_tujuan`, `waktu_brkt`, `waktu_tiba`, `kode_maskapai`) VALUES
('JD-0001', 'Jakarta', 'Bali', '2018-06-17 05:00:00', '2018-06-17 07:20:00', 'AA-002'),
('JD-0003', 'Jakarta', 'Yogyakarta', '2018-06-17 14:00:00', '2018-06-17 15:00:00', 'GA-002'),
('JD-0005', 'Jakarta', 'Makassar', '2018-06-21 13:00:00', '2018-06-21 16:00:00', 'JT-001'),
('JD-0006', 'Jakarta', 'Padang', '2018-06-23 06:00:00', '2018-06-23 10:00:00', 'BA-520'),
('JD-0007', 'Jakarta', 'Medan', '2018-06-20 17:00:00', '2018-06-20 20:00:00', 'JT-003'),
('JD-0008', 'Jakarta', 'Palembang', '2018-06-19 10:00:00', '2018-06-19 13:00:00', 'CL-002'),
('JD-0009', 'Jakarta', 'Pontianak', '2018-06-18 09:00:00', '2018-06-18 13:00:00', 'CL-001'),
('JD-0010', 'Jakarta', 'Ambon', '2018-06-22 12:00:00', '2018-06-22 17:00:00', 'GA-003'),
('JD-0011', 'Jakarta', 'Malaysia', '2018-06-19 16:00:00', '2018-06-19 18:00:00', 'MH-710'),
('JD-0013', 'Jakarta', 'Manokwari', '2018-06-23 06:00:00', '2018-06-23 11:00:00', 'BA-520'),
('JD-0016', 'Jakarta', 'Surabaya', '2018-06-21 14:00:00', '2018-06-21 15:00:00', 'IW-2280'),
('JD-0017', 'Jakarta', 'Papua', '2018-06-18 12:00:00', '2018-06-18 18:00:00', 'IW-3520'),
('JD-0018', 'Jakarta', 'Yogyakarta', '2018-06-20 15:00:00', '2018-06-20 16:00:00', 'AA-003'),
('JD-0019', 'Jakarta', 'Singapore', '2018-06-22 09:00:00', '2018-06-22 10:30:00', 'CL-002'),
('JD-0020', 'Jakarta', 'Palembang', '2018-06-23 06:00:00', '2018-06-23 08:00:00', 'IW-1808'),
('JD-0021', 'Jakarta', 'Jember', '2018-06-30 06:00:00', '2018-06-30 08:00:00', 'CL-003'),
('JD-0022', 'Jakarta', 'Malang', '2018-07-10 13:00:00', '2018-07-10 15:00:00', 'IW-3520'),
('JD-0023', 'Jakarta', 'Semarang', '2018-07-20 05:00:00', '2018-07-20 07:00:00', 'JT-002'),
('JD-0024', 'Jakarta', 'Solo', '2018-07-23 08:00:00', '2018-07-23 10:00:00', 'GA-002'),
('JD-0025', 'Jakarta', 'Sumenep', '2018-07-27 16:00:00', '2018-07-27 17:20:00', 'AA-003'),
('JD-0026', 'Jakarta', 'Banda Aceh', '2018-07-30 18:00:00', '2018-07-30 19:00:00', 'BA-370'),
('JD-0027', 'Jakarta', 'Bandar Lampung', '2018-08-01 11:00:00', '2018-08-01 13:00:00', 'AA-003'),
('JD-0028', 'Jakarta', 'Bangka/Pangkal Pinang', '2018-08-09 13:00:00', '2018-08-09 14:00:00', 'GA-001'),
('JD-0029', 'Jakarta', 'Batam', '2018-08-14 05:00:00', '2018-08-14 08:00:00', 'CL-003'),
('JD-0030', 'Jakarta', 'Belitung/Tanjung Pandan', '2018-08-25 06:00:00', '2018-08-25 09:30:00', 'JT-001'),
('JD-0031', 'Jakarta', 'Bengkulu', '2018-08-28 07:00:00', '2018-08-28 11:00:00', 'IW-3520'),
('JD-0032', 'Jakarta', 'Jambi', '2018-09-06 08:00:00', '2018-09-06 10:00:00', 'CL-002'),
('JD-0033', 'Jakarta', 'Pekanbaru', '2018-09-11 05:00:00', '2018-09-11 08:00:00', 'BA-350'),
('JD-0034', 'Jakarta', 'Balikpapan', '2018-09-19 07:00:00', '2018-09-19 10:00:00', 'BA-520'),
('JD-0035', 'Jakarta', 'Banjarmasin', '2018-09-28 19:00:00', '2018-09-29 23:00:00', 'BA-370'),
('JD-0036', 'Jakarta', 'Samarinda', '2018-09-30 06:00:00', '2018-09-30 11:00:00', 'IW-2280'),
('JD-0037', 'Jakarta', 'Bau-Bau', '2018-10-04 04:00:00', '2018-10-04 08:00:00', 'AA-002'),
('JD-0038', 'Jakarta', 'Gorontalo', '2018-10-10 04:00:00', '2018-10-10 07:00:00', 'JT-002'),
('JD-0039', 'Jakarta', 'Jeddah', '2019-01-24 04:00:00', '2019-01-24 20:00:00', 'ET-863'),
('JD-0040', 'Jakarta', 'Madinah', '2019-01-30 02:00:00', '2019-01-30 18:00:00', 'EM-089'),
('JD-0041', 'Jakarta', 'Riyadh', '2019-02-02 05:00:00', '2019-02-02 19:00:00', 'ET-863'),
('JD-0042', 'Jakarta', 'Bahrain', '2019-02-07 01:00:00', '2019-01-07 16:00:00', 'EM-089'),
('JD-0043', 'Jakarta', 'Brunei Darussalam', '2019-02-14 04:00:00', '2019-02-14 21:00:00', 'GA-003'),
('JD-0044', 'Jakarta', 'Kendari', '2018-10-17 07:00:00', '2018-10-17 11:00:00', 'IW-1808'),
('JD-0045', 'Jakarta', 'Mamuju', '2018-10-24 03:00:00', '2018-10-24 06:00:00', 'CL-002'),
('JD-0046', 'Jakarta', 'Manado', '2018-10-31 04:00:00', '2018-10-31 08:00:00', 'BA-520'),
('JD-0047', 'Jakarta', 'Lombok', '2018-11-03 06:00:00', '2018-11-03 08:00:00', 'GA-002'),
('JD-0048', 'Jakarta', 'Jayapura', '2018-11-07 12:00:00', '2018-11-07 15:00:00', 'IW-1808'),
('JD-0049', 'Jakarta', 'Shanghai', '2018-11-15 07:00:00', '2018-11-15 14:00:00', 'GA-003'),
('JD-0050', 'Jakarta', 'Beijing', '2018-11-21 08:00:00', '2018-11-21 15:00:00', 'MH-530'),
('JD-0051', 'Jakarta', 'Guangzhou', '2018-11-29 09:00:00', '2018-11-29 17:00:00', 'AA-002'),
('JD-0052', 'Jakarta', 'Hong Kong', '2018-11-30 04:00:00', '2018-11-30 11:00:00', 'HK-889'),
('JD-0053', 'Jakarta', 'Tokyo', '2018-12-01 05:00:00', '2018-12-01 11:00:00', 'AA-002'),
('JD-0054', 'Jakarta', 'Osaka', '2018-12-05 01:00:00', '2018-12-05 07:00:00', 'GA-002'),
('JD-0055', 'Jakarta', 'Hiroshima', '2018-12-11 07:00:00', '2018-12-11 15:00:00', 'AA-003'),
('JD-0056', 'Jakarta', 'Seoul', '2018-12-18 08:00:00', '2018-12-18 20:00:00', 'KO-454'),
('JD-0057', 'Jakarta', 'Busan', '2018-12-25 06:00:00', '2018-12-25 19:00:00', 'KO-454'),
('JD-0058', 'Jakarta', 'Jeju', '2018-12-31 12:00:00', '2018-12-31 23:00:00', 'KO-454'),
('JD-0059', 'Jakarta', 'Sydney', '2019-01-04 03:00:00', '2019-01-20 19:00:00', 'GA-002'),
('JD-0060', 'Jakarta', 'Melbourne', '2019-01-10 04:00:00', '2019-01-10 17:00:00', 'AA-001'),
('JD-0061', 'Jakarta', 'Qatar', '2018-06-30 06:00:00', '2018-06-30 23:00:00', 'QA-341'),
('JD-0062', 'Jakarta', 'Dhubai', '2019-02-27 04:00:00', '2019-02-27 20:00:00', 'EM-089'),
('JD-0063', 'Jakarta', 'Abu Dhabi', '2019-03-07 03:00:00', '2019-03-07 20:00:00', 'ET-863'),
('JD-0064', 'Jakarta', 'Paris', '2018-07-05 10:26:00', '2018-07-05 17:17:00', 'GA-111'),
('JD-0065', 'Jakarta', 'Bangkok', '2018-07-05 05:21:00', '2018-07-05 10:17:00', 'GA-555'),
('JD-0066', 'Jakarta', 'Ambon', '2018-07-05 17:00:00', '2018-07-05 19:17:00', 'GA-666'),
('JD-0067', 'Jakarta', 'Bali', '2018-07-05 08:00:00', '2018-07-05 10:00:00', 'GA-888'),
('JD-0068', 'Jakarta', 'Palembang', '2018-07-05 23:00:00', '2018-07-05 03:00:00', 'GA-777'),
('JD-0069', 'Jakarta', 'Bali', '2018-07-08 19:00:00', '2018-06-29 21:50:00', 'JT-42'),
('JD-0070', 'Jakarta', 'Yogyakarta', '2018-06-30 21:30:00', '2018-06-30 22:40:00', 'QG-110'),
('JD-0071', 'Jakarta', 'Yogyakarta', '2018-06-30 20:45:00', '2018-06-30 22:15:00', 'GA-256'),
('JD-0072', 'Jakarta', 'Medan', '2018-06-30 20:00:00', '2018-06-30 22:05:00', 'SJ-1002'),
('JD-0073', 'Jakarta', 'Surabaya', '2018-07-01 05:00:00', '2018-07-01 06:30:00', 'JT-690'),
('JD-0074', 'Jakarta', 'Surabaya', '2018-07-01 05:55:00', '2018-07-01 07:25:00', 'QG-712'),
('JD-0075', 'Jakarta', 'Yogyakarta', '2018-07-05 04:50:00', '2018-07-05 06:00:00', 'JT-690'),
('JD-0076', 'Jakarta', 'Bangkok', '2019-01-17 06:30:00', '2018-07-17 10:20:00', 'SL-119'),
('JD-0077', 'Jakarta', 'Bangkok', '2019-01-17 09:40:00', '2019-01-17 13:10:00', 'GA-866'),
('JD-0078', 'Jakarta', 'B.Aceh ', '2019-01-31 05:00:00', '2019-01-31 08:55:00', 'QG-10'),
('JD-0079', 'Jakarta', 'B.Aceh ', '2019-01-31 12:00:00', '2019-01-31 14:55:00', 'GA-146'),
('JD-0080', 'Jakarta', 'Belitung ', '2019-02-01 06:45:00', '2018-07-01 07:40:00', 'ID-6826'),
('JD-0081', 'Jakarta', 'Belitung ', '2019-02-05 08:30:00', '2019-02-05 09:35:00', 'IN-056'),
('JD-0082', 'Jakarta', 'Surabaya ', '2019-02-28 05:00:00', '2019-02-28 06:30:00', 'JT-690'),
('JD-0083', 'Jakarta ', 'Surabaya ', '2019-02-28 12:50:00', '2019-02-28 14:31:00', 'GA-314 '),
('JD-0084', 'Jakarta ', 'Pangkal Pinang', '2019-03-07 06:10:00', '2019-03-07 07:20:00', 'JT-610'),
('JD-0085', 'Jakarta ', 'Pangkal Pinang', '2019-03-07 15:05:00', '2019-03-07 16:30:00', 'GA-138'),
('JD-0086', 'Jakarta', 'Batam ', '2019-03-28 06:10:00', '2019-03-28 07:55:00', 'JT-374'),
('JD-0087', 'Jakarta', 'Batam', '2019-03-28 16:00:00', '2019-03-28 17:40:00', 'QG-944');

-- --------------------------------------------------------

--
-- Table structure for table `maskapai`
--

CREATE TABLE `maskapai` (
  `kode_maskapai` varchar(10) NOT NULL,
  `nama_maskapai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maskapai`
--

INSERT INTO `maskapai` (`kode_maskapai`, `nama_maskapai`) VALUES
('AA-001', 'AirAsia'),
('AA-002', 'AirAsia'),
('AA-003', 'AirAsia'),
('BA-350', 'Batik Air'),
('BA-370', 'Batik Air'),
('BA-520', 'Batik Air'),
('CL-001', 'Citilink'),
('CL-002', 'Citilink'),
('CL-003', 'Citilink'),
('EM-089', 'Emirates Airlines'),
('ET-863', 'Etihad'),
('GA-001', 'Garuda Indonesia'),
('GA-002', 'Garuda Indonesia'),
('GA-003', 'Garuda Indonesia'),
('GA-111', 'Garuda Indonesia'),
('GA-138', 'Garuda Indonesia '),
('GA-146', 'Garuda Indonesia '),
('GA-256', 'Garuda Indonesia'),
('GA-314 ', 'Garuda Indonesia'),
('GA-555', 'Garuda Indonesia'),
('GA-666', 'Garuda Indonesia'),
('GA-777', 'Garuda Indonesia'),
('GA-866', 'Garuda Indonesia'),
('GA-888', 'Garuda Indonesia'),
('HK-889', 'Hong Kong'),
('ID-6826', 'Batik Air '),
('IN-056', 'Nam Air '),
('IW-1808', 'Wings Air'),
('IW-2280', 'Wings Air'),
('IW-3520', 'Wings Air'),
('JT-001', 'Lion Air'),
('JT-002', 'Lion Air'),
('JT-003', 'Lion Air'),
('JT-36', 'Lion air'),
('JT-374', 'Lion Air '),
('JT-42', 'Lion air'),
('JT-544', 'Lion air'),
('JT-610', 'Lion Air '),
('JT-690', 'Lion air'),
('KO-454', 'Korean Air'),
('MH-530', 'Malaysia Airlines'),
('MH-710', 'Malaysia Airlines'),
('QA-341', 'Qatar Airlines'),
('QG-10', 'Citilink'),
('QG-110', 'Citilink'),
('QG-712', 'Citilink'),
('QG-944', 'Citilink '),
('SJ-1002', 'Sriwijaya'),
('SL-119', 'Thai Lion');

-- --------------------------------------------------------

--
-- Table structure for table `metode_bayar`
--

CREATE TABLE `metode_bayar` (
  `id_metode` varchar(10) NOT NULL,
  `nama_metode` enum('Transfer','Kartu Kredit','ATM','CIMB Click','BCA Klikpay','Mandiri Debit','Indomaret','Alfamart') NOT NULL,
  `nama_mitra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metode_bayar`
--

INSERT INTO `metode_bayar` (`id_metode`, `nama_metode`, `nama_mitra`) VALUES
('MT001', 'Transfer', 'Transfer'),
('MT002', 'Kartu Kredit', 'Credit Card'),
('MT003', 'ATM', 'ATM'),
('MT004', 'CIMB Click', 'CIMB Niaga'),
('MT005', 'BCA Klikpay', 'Bank BCA'),
('MT006', 'Mandiri Debit', 'Bank Mandiri'),
('MT007', 'Indomaret', 'PT. Indomaret'),
('MT008', 'Alfamart', 'PT. Alfamart');

-- --------------------------------------------------------

--
-- Table structure for table `pemesan`
--

CREATE TABLE `pemesan` (
  `nama_pemesan` varchar(50) NOT NULL,
  `email_pemesan` varchar(50) NOT NULL,
  `telp_pemesan` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesan`
--

INSERT INTO `pemesan` (`nama_pemesan`, `email_pemesan`, `telp_pemesan`) VALUES
('00Agus Salim', '00Agusalim@gmail.com', '08135266659'),
('00Hartonang', '00hartons@yahoo.com', '081645224548'),
('00Hendra Bustomi', '00Hendrabustomi@yahoo.com', '0815465251'),
('00Kevins', '00kekev@gmail.com', '081325111441'),
('00Monang', '00Monangyowis@gmail.com', '081352997478'),
('Adam Kharisma', '0adamkharisma@gmail.com', '089667483612'),
('Aria Bagus', '0araibp@gmail.com', '089775628976'),
('Arisa Putri', '0arisaputri@gmail.com', '089678946529'),
('Widya Artiawandini', '0artiawandiniwidya@yahoo.com', '089668756741'),
('Frans Alafghanis', '0bulefrans@gmail.com', '089667865431'),
('Galih Adigunaa', '0galihdiguna@gmail.com', '089778965412'),
('Irfan Arianto', '0irfanarianto@gmail.com', '089786751293'),
('Elijah Muhamad', '0muhammadelija@gmail.com', '089668075896'),
('Nahrudin', '0nahrudinlatinusa@gmail.com', '089665785621'),
('Neni Nuraeni', '0nenin@gmail.com', '089667856782'),
('Reyna Tania', '0reynatania@gmail.com', '089776893450'),
('Richardooo', '0richardochandra@gmail.com', '089667951342'),
('Rio Aananda', '0Rioanandaaaa@gmail.com', '089778071269'),
('Shafira Amadea', '0shafiraamadea@gmail.com', '089778965785'),
('Susi Sulastri', '0susisl@gmail.com', '089665789114'),
('Afif Iswandi', 'aaafifiswandee@gmail.com', '081675999874'),
('Andhika Ardiyansyah', 'aaandhikaas@yahoo.com', '085763664897'),
('Andreanbayu Adjie', 'aaandreaaji@gmail.com', '081695917375'),
('Asriyani', 'aaasriyani@outlook.com', '081263665873'),
('Arief Rubani', 'aabluriv@yahoo.com', '081265447985'),
('Adindarizka', 'aadesrzk@gmail.com', '085675999360'),
('Aafiyah', 'aadiyah@gmail.com', '038748236487'),
('Dimas Pungky', 'aadpunky@yahoo.com', '081350668587'),
('Myra Febrianti', 'aaebeh@yandex.com', '081563667489'),
('Ersyanda Vieri', 'aaersvieri@yandex.com', '081360558582'),
('Farras Burhanuddin', 'aafarrasbp@aim.com', '081675996341'),
('Aafiyah', 'aafiyah52@gmail.com', '089887362538'),
('Galih Sutedjo', 'aagalihsute@gmail.com', '081350554648'),
('Varian Kashira', 'aaiangnome@outlook.com', '081630332524'),
('Faresha Amanda', 'aareshamnd@aim.com', '087463669597'),
('Reza Akbar', 'aarezrezakbr@aim.com', '081896997479'),
('Aaron Blenda ', 'aaronblenda@gmail.com', '081385674479'),
('Abdul Viqri', 'Abdul23@gmail.com', '021496851726'),
('Abizard Razka Muttaqien', 'abizardrazka@gmail.com', '085567890888'),
('Abi Zhar', 'abizharel@gmail.com', '082119212912'),
('Abraham Alexi Pratama', 'abrahamalexipratama@gmail.com', '083897578838'),
('Abyan Arafif', 'abyanarafif@gmail.com', '087777260998'),
('Arya Zaki Abyoso', 'abyoso09@gmail.com', '098512547658'),
('Achazia Brigit Aharon', 'achaziabrigitaharon@gmail.com', '089865467556'),
('Adam Afif Al Arkhan', 'adamafifalarkhan@gmail.com', '089977651254'),
('Adam Karismanaf', 'Adamkarisma@gmail.com', '08976587632'),
('Adam Karismadi', 'adamkarismadi@gmail.com', '081281924567'),
('Adam Levine', 'adamlevine@gmail.com', '081267899350'),
('adamun', 'adamun@gmail.com', '08569741223'),
('Adawiyatul Rahmah', 'adawiyatulrahmah@gmail.com', '085777889070'),
('Adeeva Afsheen', 'adeevafsheen@gmail.com', '089887215677'),
('Adelard Radmilo', 'adelardradmilo@gmail.com', '083865466846'),
('Adelia Shintya Wardani', 'adeliashintya@gmail.com', '081252967104'),
('Ade Noer Syahfitri', 'adenoersyah@gmail.com', '082234566788'),
('Ade Nur Fitri', 'adenurfitri@gmail.com', '085666777888'),
('Adhyastha Adelio Cetta', 'adhyasthaadeliocetta@gmail.com', '08888346376'),
('Adiba Shakila', 'adibashakila@gmail.com', '083889000777'),
('Adika Subrata', 'adikaasbrt@gmail.com', '081237773822'),
('Adilanisa Ardani', 'adilanisardani@gmail.com', '087821444560'),
('Adinda Eka', 'adindaadeka48@gmail.com', '085621388480'),
('Adira Azzahra', 'adirazzahra@gmail.com', '081222450999'),
('Aditiya pratama', 'Aditiyapratama@gmail.com', '089987876543'),
('Adriell Meshach', 'adriellmeshach@gmail.com', '089864846486'),
('Angga Dwi Ramdhani', 'adwiramdhani@gmail.com', '081286451113'),
('Achmad Fauzi Firdaus ', 'afauzifirdaus@gmail.com', '081286451234'),
('Agor Irfan', 'agorirfan@gmail.com', '081582939287'),
('Ahlan Pakradiga', 'ahlanpakradiga@gmail.com', '08758916377'),
('Ahmad', 'Ahmad@gmail.com', '085219303639'),
('Alpha', 'ahuruf@gmail.com', '081212122323'),
('Ahza Danish', 'ahzadanish@gmail.com', '089783463365'),
('Ainur Ridho Febriyanto', 'ainurridho@gmail.com', '08123086598'),
('Air Nakhla Adinata', 'airnakhladinata@gmail.com', '089456673754'),
('Aisyah Aziz', 'aisyahaziz@gmail.com', '081250999788'),
('Ajeng Azima Zakih', 'ajengazima@gmail', '081274830826'),
('Aji Bayu Wirotama', 'ajibayuwirotama@gmail.com', '087720988766'),
('akhdan habibie darwis', 'akhdanhabibiedarwis@ymail.com', '082125342592'),
('Alamgir Abrisam Arief', 'alamgirabrisamarief@gmail.com', '085683554867'),
('Alan Clark', 'alanclark@gmail.com', '081567811244'),
('Alanis Dhewiya', 'alanisdhew@gmail.com', '089999777666'),
('Alaric Zeroun', 'alariczeroun@gmail.com', '08125576859'),
('Alby Luthfy', 'albyluthfy@gmail.com', '089865386437'),
('Aldi', 'aldi.indrag@gmail.com', '081210633201'),
('aldi', 'aldi@gmail,com', '08578653212'),
('Richardo chandra', 'aldochandra46@gmail.com', '08567853718'),
('Aldrich Kenzie', 'aldrichkenzie@gmail.com', '081388577558'),
('Taffarel Liegar', 'alearel@gmail.com', '087654123678'),
('Anexa Alexa', 'alexaanex@gmail.com', '082242132455'),
('Alexander Thaslim', 'alexanderthaslim@gmail.com', '089887665420'),
('Alex Andrew', 'alexandrew@gmail.com', '085712345688'),
('Alfariel Sandy', 'alfarielsandy@gmail.com', '089874654746'),
('Alfath Muhammad', 'alfathmhd@gmail.com', '087890234510'),
('Alfinia', 'alfin21@gmail.com', '081283649876'),
('Alice Haryono', 'aliceharyono@gmail.com', '089887625111'),
('Alice Cooper', 'aliciacooper@gmail.com', '082566780999'),
('Alicia keys', 'aliciakeys@gmail.com', '085677899232'),
('Alief A', 'alief0293@gmail.com', '085694929583'),
('Aliyah Bravani', 'aliyahbravani20@gmail.com', '081230988756'),
('Alvaro Gavriel', 'alvarogavriel@gmail.com', '085779373685'),
('Alvianti', 'alvianti@gmail.com', '085623455111'),
('alvia asa', 'alviasa@gmail.com', '08777656465'),
('alvin nur', 'alvin87@gmail.com', '081121255456'),
('Alvin Andreas', 'alvinandreas@gmail.com', '081258869869'),
('Alwan Fawwaz', 'alwanfawwaz@gmail.com', '08986547476'),
('Alwi Alatas', 'alwialatas@gmail.com', '083821567888'),
('Alya Azizah', 'alyazizah@gmail.com', '083889022345'),
('Amartyas Andiani', 'amartyasandiani@gmail.com', '087889022134'),
('Amber Liu', 'ambeliu@gmail.com', '085678233122'),
('Ayu Melati', 'amelati@gmail.com', '081286451113'),
('Amirza Setya Andiani', 'amirzandiani@gmail.com', '087791256201'),
('Ammarah', 'ammarah23@gmail.com', '087736253826'),
('Amran Fakhriy', 'amranfakhriy@gmail.com', '085696565849'),
('Achmad Mubarok Doohan', 'amubarokdoohan@gmail.com', '081286451111'),
('Rio Ananda', 'ananda.ananda20@gmail.com', '085373777713'),
('Anastasya', 'Anastasya@gmail.com', '087789765675'),
('Anastasya Auliya', 'anastasyauliya@gmail.com', '082233514032'),
('Andika P', 'andikaprasetya@gmail.com', '083895455984'),
('dira', 'andira@gmail.com', '08534251675'),
('Andra Moissani', 'andramoissani@gmail.com', '081359657591'),
('Andrea Hirata', 'andreahirataa@gmail.com', '089999233455'),
('Andrea Shaugy', 'andreashaugy@gmail.com', '087777213450'),
('Andre Fredella', 'andrefredella@gmail.com', '08987646573'),
('andrian novaldi', 'andriannovaldi@gmail.com', '081383335120'),
('Andro xda', 'androxd@gmail.com', '081011210101'),
('Anggista Krisdamayanti K', 'anggistakk@gmail.com', '089815260377'),
('wijaya anggoro', 'anggorowij12@gmail.com', '081278901234'),
('Anik Wulandari', 'anikwulandari@gmail.com', '089716240887'),
('Anisa', 'anisaf@yahoo.com ', '08195544232'),
('Anne Marie', 'annemarie@gmail.com', '088899080250'),
('Annisa Ramadhina', 'annisaR@gmail.com', '089781916377'),
('annisa rahma aulia', 'annisarahmaaulia@yahoo.co.id', '087888902344'),
('Annisa Retno', 'annisaretno@gmail.com', '083882134511'),
('annisa tiara putri', 'annisatiaraputrii@yahoo.com', '089688201135'),
('annov hari prabowo', 'annovhariprabowo@gmail.com', '083878986858'),
('Ardell Zahid', 'ardellzahid@gmail.com', '081395768565'),
('Ariana Grande', 'arianagrande@gmail.com', '087788982340'),
('Ariel Tatum', 'arieltatum@gmail.com', '087889213222'),
('Arif B', 'arifb@gmail.com', '085723451235'),
('Arkan Zaky', 'arkanzaky@gmail.com', '089999876512'),
('Arrizal Amin', 'arrizalamin@gmail.com', '089877623455'),
('Arsy Widianto', 'arsywidianto@gmail.com', '087889800766'),
('Asiah', 'asiaaahhh@gmail.com', '081234456789'),
('Astina Yulina', 'astinayulina@gmail.com', '081233222111'),
('Athaya Hanadewi', 'athayahana@gmail.com', '089999888777'),
('Atika Balqis', 'atikabalqis@gmail.com', '089887611234'),
('Atika Hardianti', 'atikahardianti@gmail.com', '087786232124'),
('Muhammad Attala', 'attalamhd@gmail.com', '082167555400'),
('Aulia Febrianti', 'auliafeb@gmail.com', '081234000988'),
('Aurel', 'aurelll@gmail.com', '087777888999'),
('Agustia Anindi', 'austianindi@gmail.com', '085673218900'),
('Azalea Khaliqa', 'azaleakhaliqa@gmail.com', '082144509800'),
('Azka Aldric', 'azkaaldric@gmail.com', '089857557267'),
('Azmi Nurul Azizah', 'azminurul@gmail.com', '089852344123'),
('Baekhyun', 'baekhyunee@gmail.com', '089555678900'),
('Balqis Callista', 'balqiscalista@gmail.com', '081256777211'),
('Balqis Madina', 'balqismadina@gmail.com', '087889085412'),
('Barly Asmara', 'barlyasmara@gmail.com', '085677909888'),
('Barra Malik Hawwas', 'barramalikhawwas@gmail.com', '082177890777'),
('Bayati Dinah', 'bayatidinah@gmail.com', '081544211344'),
('Bayu Fajari', 'bayufajaribay@gmail.com', '083889080700'),
('Bayyinah Sadiqah', 'bayyinahsadiqah@gmail.com', '089765345661'),
('Bazla Yaqdhan', 'bazlayaqdhan@gmail.com', '081112333516'),
('Beatrice El', 'beatriceel@gmail.com', '085721999200'),
('Belinda Natalia', 'belindanatalia@gmail.com', '08577993001'),
('Benicia Askanah', 'beniciaskanah@gmail.com', '081567211345'),
('Benny Setiawan', 'bennysetiawan@gmail.com', '083899001256'),
('BillieEilish', 'billieilish@gmail.com', '087882765490'),
('Bimbim Adhati', 'bimbimadha@gmail.com', '081244566188'),
('Brian Joo', 'brianjoo@gmail.com', '088888999000'),
('Brisia Jodie', 'brisiajodie@gmail.com', '089890878658'),
('Calvin Harris', 'calvinharris@gmail.com', '089787233450'),
('Calya Salsabila', 'calyasalsabila@gmail.com', '085662788900'),
('Camilo Deven', 'camilodeven@gmail.com', '089834563453'),
('Carl Sweeney', 'carlsweeney@gmail.com', '081245645487'),
('Carol Afkar', 'carolafkar@gmail.com', '081267868769'),
('Casper Magico', 'caspermagico@gmail.com', '089882340980'),
('Cathrine Gina', 'catherinegina@gmail.com', '081272888901'),
('Centoy adinda', 'centoy@gmail.com', '0981928323'),
('Chaika Clarence', 'chaikaclarence@gmail.com', '08986473643'),
('Chander Vinod', 'chandervinod@gmail.com', '085666213455'),
('Chandra Dhawy', 'chandradhawy@gmail.com', '087772445600'),
('Park Chanyeol', 'chanyeolpcy@gmail.com', '087777615500'),
('Charlie Puth', 'charlieputh@gmail.com', '089992506880'),
('Chayra Nadhifa', 'chayranadhifa@gmail.com', '081344899000'),
('Chelsea Islan', 'chelseaislan@gmail.com', '085213500982'),
('cheyra', 'cheyra11@yahoo.com', '081977623232'),
('cheyra', 'cheyra@yahoo.com', '081977623232'),
('Chiko Al Faruq', 'chikoalfaruq@gmail.com', '0888998098'),
('Siwon Choi', 'choisiwon@gmail.com', '089999888211'),
('Chris Brown', 'chrisbrown@gmail.com', '087889088764'),
('Christina Aguilera', 'christinaguilera@gmail.com', '08125680922'),
('Clair Oriel', 'clairoriel@gmail.com', '085689356845'),
('Clarence Leonard', 'clarenceleonard@gmail.com', '089880721444'),
('Clean Bandit', 'cleanbandit@gmail.com', '089887656600'),
('Cloe Grace Moretz', 'cloegrace@gmail.com', '081250988230'),
('Daffa Arya Prayitna', 'daffaryaprayitna@gmail.com', '089887662344'),
('Dafiyah Syauqiyyah', 'dafiyahsyauqiyyah@gmail.com', '082145666200'),
('Dakota Fanning', 'dakotafanning@gmail.com', '087777654202'),
('Damar Rasyid', 'damarrasyid@gmail.com', '085789345834'),
('Danendra Ramadhan', 'danendraramadhan@gmail.com', '083894568464'),
('Danial Wijaya', 'danialwijaya@gmail.com', '081224550998'),
('Daniel Caesar', 'danielcaesar@gmail.com', '081256090788'),
('Daniel Edward Davine', 'danieledwardavine@gmail.com', '085793458459'),
('Danielle Catharina', 'daniellecatharina@gmail.com', '081345217888'),
('Danise William', 'danisewilliam@gmail.com', '081511409213'),
('Danish Mayza', 'danishmayza@gmail.com', '08579347739'),
('Dara', 'daralee@gmail.com', '085678213488'),
('Dareen Aharon', 'dareenaharon@gmail.com', '08569375483'),
('Darwin Nicolas', 'darwinicolas@gmail.com', '087821445200'),
('David Guetta', 'davidguetta@gmail.com', '08568990888'),
('Demi Lovato', 'demilovato@gmail.com', '087888900800'),
('Dennisa Aura Kathelya', 'dennisakathelya@gmail.com', '087889088790'),
('Dennis Lloyd', 'dennisloydd@gmail.com', '081280999250'),
('Denny Wijaya', 'dennywijaya@gmail.com', '081289999921'),
('Desi Sartika Ramadani', 'desisartikaramadani@gmail.com', '089877650909'),
('destriansyah', 'destriansyah@yahoo.com', '081977662211'),
('Dheannisa Ramadhani Putri', 'dheanniaputri@gmail.com', '087882908544'),
('Dianah Al Fadiyah', 'dianahalfadiyah@gmail.com', '088898000211'),
('Dian Sari', 'diansaridian@gmail.com', '083890777650'),
('Dimas Anggara', 'dimasanggara@gmail.com', '081234520111'),
('Dina Anggraeni', 'dinanggraeni@gmail.com', '085678098124'),
('Dinda Kirana', 'dindakirana@gmail.com', '089882445609'),
('Dinda Maria', 'dindamariaa@gmail.com', '085677567222'),
('Do Kyungsoo', 'diokyung@gmail.com', '085621322500'),
('Dipha Barus', 'diphabarus@gmail.com', '087899540988'),
('Dwi Putra Muhammad', 'dwiputramhd@gmail.com', '089888907666'),
('Dwita Wulandari', 'dwitawulandari@gmail.com', '08565008901'),
('Dzakiyah Rafifah', 'dzakiyahrafifah@gmail.com', '089777290912'),
('Earlyta Arsyfa', 'earlytarsyfa@gmail.com', '087777211356'),
('Ed Sheeran', 'edsheeran@gmail.com', '081255789080'),
('Edward Drew', 'edwardrew@gmail.com', '085703758498'),
('Efendi Mufid', 'efendimufid@gmail.com', '083889008112'),
('Egi Saputro', 'egisaputro@gmail.com', '082145609821'),
('Emery Adelard', 'emeryadelard@gmail.com', '082158675869'),
('Emma Stone', 'emmastone@gmail.com', '081288900877'),
('Emma Watson', 'emmawtson@gmail.com', '081380988288'),
('Emyr Salim Hauzan', 'emyrsalimhauzan@gmail.com', '087886221311'),
('Ernest Hansel', 'ernesthansel@gmail.com', '081395598589'),
('eva n ', 'evan@yahoo.com ', '081954323211'),
('evin ', 'evin@yahoo.com', '081943432211'),
('Ezra Azel', 'ezraazel@gmail.com', '089847564767'),
('Fadhlan Arkhan Nabil', 'fadhlanarkhanabil@gmail.com', '082113445099'),
('Fadiyah Syafiqah', 'fadiyahsyafiqah@gmail.com', '081344500988'),
('Fagan Abner', 'faganabner@gmail.com', '082138453767'),
('Faiha Khalishah', 'faihakhalishah@gmail.com', '087777666500'),
('Fairel Atharizz', 'fairelatharizz@gmail.com', '085670099240'),
('Faiza Kulla', 'faizakulla@gmail.com', '085666312444'),
('Fathimah Shakila', 'fathimahshakila@gmail.com', '087777888999'),
('Fathiya Aulianisa', 'fathiyaulianisa@gmail.com', '089999888000'),
('Felisha Ulya', 'felishaulya@gmail.com', '085334667880'),
('Finna Ziya', 'finnaziya@gmail.com', '089888700255'),
('Firdaus Jamilah', 'firdausjamilah@gmail.com', '081255781222'),
('Gals gadiguna', 'gals@gmail.com', '0812938121'),
('Ghaisan Ahmad', 'ghaisanahmad@gmail.com', '082115670998'),
('Ghani Marwan', 'ghanimarwan@gmail.com', '085778990222'),
('Gigi Hadid', 'gigihadid@gmail.com', '081345621509'),
('Gilang Prakoso', 'gilangrakoso@gmail.com', '087882900215'),
('Githa Hanania', 'githahanania@gmail.com', '08999980989'),
('Gummy', 'gummykim@gmail.com', '085212344566'),
('Gwen Syareefa Putri', 'gwensyareefa@gmail.com', '087722566812'),
('Hadwan Al Ghazali', 'hadwanalghazali@gmail.com', '085678900245'),
('Hafizh Mahardika', 'hafizhmahardika@gmail.com', '085788900256'),
('Hailee Stainfeld', 'haileesatainfeld@gmail.com', '082178900889'),
('Hana Fairuz', 'hanafairuzhana@gmail.com', '087772445670'),
('Hannifa Chyntia', 'hannifatia@gmail.com', '088882333453'),
('Hafshah Amina', 'hashahamina@gmail.com', '085777899000'),
('Herjunot Ali', 'herjunotali@gmail.com', '082560788978'),
('Ihsan Muhammad', 'ihsanmuhammad@gmail.com', '087998004568'),
('Ijal Rasyid', 'ijalrasyid@gmail.com', '081577809888'),
('Ilene Syadiyah', 'ilenesyadiyah@gmail.com', '089724566701'),
('Ilham Rizki', 'ilhamrizki@gmail.com', '082135666700'),
('Indra Kurniawan', 'indrakurniawan@gmail.com', '083889000800'),
('Intan Indrawati Lestari', 'intanindraw@gmail.com', '087855542099'),
('Iqbal Ramadhan', 'iqbaaalram@gmail.com', '089877621340'),
('jaja r ', 'jaja@yahoo.com ', '081123236565'),
('Jamaane Fatih', 'jamaanefatih@gmail.com', '089977800245'),
('Jamil Yervant', 'jamilyervant@gmail.com', '081112344600'),
('Jasmine Anisa Fauziyah', 'jasmineanisafauziyah@gmail.com', '082144500012'),
('Jay Park', 'jaypark@gmail.com', '081256908788'),
('jelita', 'jelita@yahoo.com', '081908867506'),
('Ullan Jelita Kuntum Cheyra', 'jelitapanda@gmail.com', '087889020135'),
('Jennifer Lawrence', 'jenniferlaw@gmail.com', '089999878929'),
('Jess Glyne', 'jessglyne@gmail.com', '085777888909'),
('Jessica Jung', 'jessicajung@gmail.com', '081222455000'),
('Jihan Farahah', 'jihanfarahah@gmail.com', '087662280999'),
('John Mayer', 'johnmayer@gmail.com', '087888250876'),
('Johnny Deep', 'johnnydeep@gmail.com', '089999878202'),
('John Park', 'johnpark@gmail.com', '085212350621'),
('Jonas Blue', 'jonasblue@gmail.com', '085678909866'),
('Jorja Smith', 'jorjasmith@gmail.com', '085280999878'),
('Julia Roberts', 'juliaroberts@gmail.com', '081272988244'),
('Jung Hana', 'junghana@gmail.com', '089877213456'),
('Kadek Devi', 'kadekdevi@gmail.com', '081356788988'),
('Kaleefa Wahdani', 'kaleefawahdani@gmail.com', '087774456120'),
('Kangta', 'kangtaaaaa@gmail.com', '087876212344'),
('Kanye West', 'kanyewest@gmail.com', '082155608988'),
('Kaysha Almeera', 'kayshalmeera@gmail.com', '089999877222'),
('Keven Hafizh', 'kevenhafizh@gmail.com', '085668909910'),
('Kevin Julio', 'kevinjulio@gmail.com', '087853216712'),
('Key', 'keykey@gmail.com', '081344678620'),
('Khalid', 'khaliddd@gmail.com', '0856215099'),
('Khansa Risqi Azila', 'khansazila@gmail.com', '085778999822'),
('Khazinun Umam', 'khazinunumam@gmail.com', '087888999222'),
('kiki ', 'kiki@yahoo.com ', '08196652432'),
('Kim Bum', 'kimbumnee@gmail.com', '087889230452'),
('Zia', 'kimzia@gmail.com', '082145666200'),
('koiriyah', 'koir@yahoo.com ', '081223564554'),
('Kristen Stewart', 'kristenstewart@gmail.com', '088828722344'),
('Krystal Jung', 'krystaljung@gmail.com', '081344166788'),
('kuntum', 'kuntum11@yahoo.com', '081977665542'),
('kuntum', 'kuntum@yahoo.com', '081977665554'),
('Kygo', 'kygoygo@gmail.com', '087882145690'),
('lala', 'lala@yahoo.com', '08121231314'),
('Lateef Adam', 'lateefadam@gmail.com', '087751300999'),
('Laudya Cinthya Bella', 'laudyalcb@gmail.com', '081250988709'),
('Henry Lau', 'lauhenry@mail.com', '087888900999'),
('Hana', 'leehana@gmail.com', '087777898900'),
('Lee Hyun', 'leehyun@gmail.com', '081222888789'),
('Lee Seungri', 'leeseungribig@gmail.com', '081234561278'),
('Lee Taemin', 'leetaemminsh@gmail.com', '087888257190'),
('Leeteuk', 'leeteuksuper@gmail.com', '089890252166'),
('Leezy', 'leezyaaa@gmail.com', '081290255670'),
('Lelly Fajrin Maulidian', 'lellyfajrin@gmail.com', '085621555099'),
('Lena Park', 'lenaparkgmail.com', '081213342909'),
('Lia Kartika', 'liakartikaaa@gmail.com', '081388900800'),
('Lily Collins', 'lilycollins@gmail.com', '085777899220'),
('Luna', 'lunakim@gmail.com', '087888929828'),
('Luqman Khawas', 'luqmankhawas@gmail.com', '081112355690'),
('Luqyana Salma', 'luqyanasalma@gmail.com', '081345600922'),
('Luthfiy Malihah', 'luthfiymalihagmail.com', '082225669008'),
('Mackenzie Zeigler', 'mackenziezeig@gmail.com', '088877909200'),
('Maheswara Al Ghazi', 'maheswaralghazi@gmail.com', '089998224588'),
('Mahirah Khuluqiyah', 'mahirahkhuluqiyah@gmail.com', '088889920067'),
('Mahira Nur Islami', 'mahiranurislami@gmail.com', '089877672340'),
('Mala Alewwa', 'malalewwa@gmail.com', '085622344555'),
('Malika Khairiya', 'malikahkairiya@gmail.com', '082244560999'),
('Maliq Javier', 'maliqjavier@gmail.com', '081344675525'),
('Mannaf Ashofi', 'mannafashof@gmail.com', '082321456723'),
('Maren Morris', 'marenmorris@gmail.com', '085677890088'),
('Mariah Malwa', 'mariahmalwa@gmail.com', '085666555000'),
('Maria Naula Dohan', 'marianaula@gmail.com', '087980655231'),
('Mathew Axxel', 'mathewaxxel@gmail.com', '081222122166'),
('Matte Anexx', 'matteanexx@gmail.com', '081222188999'),
('Mawaddah Zahidah', 'mawaddahzahidah@gmail.com', '081334501888'),
('Medina Azzura Kayle', 'mediazzurakey@gmail.com', '082134521777'),
('Fitria Mella Intan', 'mellaintan@gmail.com', '081344099821'),
('Meng Jia', 'mengjiaa@gmail.com', '082290878200'),
('Muhammad Bangga', 'mhdbangga@gmail.com', '087213462333'),
('Muhammad Fajri', 'mhdfajriii@gmail.com', '089765409800'),
('Miguel', 'miguelmiguel@gmail.com', '082175900788'),
('Miley Cyrus', 'mileycyrus@gmail.com', '087886555466'),
('Mima Alifa', 'mimalifa@gmail.com', '083822134567'),
('Min Hyuk', 'minhyukmingmail.com', '089877902244'),
('Minzi', 'minzidaehan@gmail.com', '089292838444'),
('Mitha Whulandary', 'mithawhulan@gmail.com', '081238457821'),
('Monica Karina', 'monicakarina@gmail.com', '082190888755'),
('Muthia Hatifa', 'muthiatifa@gmail.com', '085672344562'),
('Nabil Abimanyu', 'nabilabimanyu@gmail.com', '082118990878'),
('Nabila Aisya Bella', 'nabilaisyabella@gmail.com', '081222555690'),
('Nada Fitriya', 'nadafitriya@gmail.com', '087772880993'),
('Nadhif Hadrian', 'nadhifhadrian@gmail.com', '085666780999'),
('Nadine Salwa', 'nadinesalwa@gmail.com', '089992335660'),
('Naina ', 'naina13@yahoo.com ', '081923234141'),
('Nana', 'nanalee@gmail.com', '085678900999'),
('Natasha Wilona', 'natashawilona@gmail.com', '085789080756'),
('Nathan Skye', 'nathanskye@gmail.com', '081233266788'),
('Natti Natasha', 'nattinatasha@gmail.com', '089978909888'),
('Nazwa Cantika Ramadhani', 'nazwacantik@gmail.com', '081509890345'),
('Nick Jonas', 'nickjonas@gmail.com', '082889877240'),
('Nicky Jam Marve', 'nickyjam@gmail.com', '081250988788'),
('Nicky Lee', 'nickylee@gmail.com', '087888999767'),
('Nicole Jung', 'nicolejung@gmail.com', '089989800655'),
('Niken Pertiwi', 'nikenpertiwiken@gmail.com', '089880777654'),
('Nio Garcia', 'niogarciaa@gmail.com', '089887652342'),
('Oktaviana Ayu Putri Siswanto', 'oktapuputri@gmail.com', '08577899020'),
('Olivia Indra Wahyuni', 'oliviaindrawahyuni@gmail.com', '081560988750'),
('Onew', 'onewshinee@gmail.com', '089999766566'),
('Park Jimin', 'parkjimin@gmail.com', '081288412506'),
('Prilly Latuconsina', 'prillylatuconsina@gmail.com', '085678900210'),
('Qaisar Muhammad', 'qaisarmuhammad@gmail.com', '089777801255'),
('Qanita Najiyah', 'qanitanajiyah@gmail.com', '085666000985'),
('Qatrunnada Lutfiah ', 'qatrunnadalutfiah@gmail.com', '087777888212'),
('Quraisy Shihab', 'quraisyshihab@gmail.com', '085778999245'),
('rafandra ', 'rafandra@yahoo.com', '081976542233'),
('Rafardhan Atalla', 'rafardhanatalla@gmail.com', '089765431209'),
('Rafa Fauzan', 'rafauzan@gmail.com', '081244500988'),
('Raffi Munandar', 'raffimunandar@gmail.com', '081234516678'),
('Rafidatul Asila', 'rafidatulasila@gmail.com', '087772889101'),
('Rahma Nada Syahla', 'rahmanadasyahla@gmail.com', '081244567900'),
('Raidah Rasyidah', 'raidahrasyidah@gmail.com', '0888999645'),
('Raihanah Sakhi ', 'raihanahsakhi@gmail.com', '081548378336'),
('Rakhshandrina Kaysa Syifa', 'rakhshandrinakaysasyifa@gmail.com', '089636734726'),
('Ranty Maria', 'rantymaria@gmail.com', '085788909211'),
('Ratna Agung', 'ratnagung@gmail.com', '085788900781'),
('Raya', 'Raya12@yahoo.com', '08195544227'),
('Rayi Putra', 'rayiputra@gmail.com', '081345621333'),
('Rella Martyas', 'rellamartyas@gmail.com', '085789021332'),
('Rendy Pandugo', 'rendypandugo@gmail.com', '089789002344'),
('reza', 'rezades@yahoo.com', '081976765432'),
('Reza Rahardian', 'rezarahardian@gmail.com', '085678999211'),
('Rianty Auran', 'riantyauran@gmail.com', '087882903450'),
('Rich Brian', 'richbrian@gmail.com', '083888709259'),
('Rini Kusuma', 'rinikusumarin@gmail.com', '082145600988'),
('Rini Mardiana', 'rinimardianaaa@gmail.com', '085777821540'),
('Rita Ora', 'ritaora@gmail.com', '081560998250'),
('Rizky Zhafira', 'rizkyzhafira@gmail.com', '087934743843'),
('Saarah Amelia', 'saarahamelia@gmail.com', '081547557355'),
('Sabrina Carpenter', 'sabrinacarpenter@gmail.com', '087866625099'),
('Saddam Hussein', 'saddamhussein@gmail.com', '085799070144'),
('Safanah Fauziyah', 'safanahfauziyah@gmail.com', '089754557745'),
('Safinah Safinatunnajah', 'safinahsafinatunnajah@gmail.com', '083866875686'),
('Sakha Rizqullah', 'sakharizqullah@gmail.com', '083880997544'),
('Sakhi Aniq', 'sakhianiq@gmail.com', '083857557448'),
('Salma Risqi Amadia ', 'salmarisqiamadia@gmail.com', '087575475468'),
('Sara Fajira', 'sarafajira@gmail.com', '081345621344'),
('Selena Gomez', 'selenagomez@gmail.com', '087777222455'),
('Sena Harianti', 'senahari@gmail.com', '085299900100'),
('Shailene Woodley', 'shailenewood@gmail.com', '085621788909'),
('Shawn Mendes', 'shawnmendes88@gmail.com', '08786215088'),
('Sheryl Sheinafia', 'sherylshein@gmail.com', '085677890999'),
('Shofi Aisyah Aqila', 'shofiaisyahaqila@gmail.com', '085689664977'),
('Sohee', 'soheekim@gmail.com', '089998788800'),
('Suho', 'suhokim@gmail.com', '089999777888'),
('Suzy Bae', 'suzybae@gmail.com', '087888909828'),
('Sylfia Fully', 'sylfiafully@gmail.com', '085680999210'),
('Taehyung', 'taehyunghyung@gmail.com', '081234555909'),
('Talina Salamah Qolbi', 'talinasalamahqolbi@gmail.com', '085745624524'),
('Tasha Reid', 'tashareid@gmail.com', '081233455120'),
('Taufiq Rahman', 'taufiqrahman@gmail.com', '089997880965'),
('Taylor Swift', 'taylorswift@gmail.com', '081250928766'),
('Teuku Rasya', 'teukurasya@gmail.com', '085678900233'),
('Thaha Ahmad', 'thahahmaddd@gmail.com', '085234098777'),
('Thallah Hana', 'thallahhana@gmail.com', '08975835535'),
('Tiara Zahsy Salsabillla', 'tiarazahsysalsabillla@gmail.com', '089648463683'),
('Tiffany', 'tiffanykim@gmail.com', '089888788200'),
('Tika Hadi', 'tikahaditika@gmail.com', '089887890255'),
('Tri Eka Dewi', 'triekadewi@gmail.com', '085672445109'),
('Tristan Arsen', 'tristanarsen@gmail.com', '089847568747'),
('Tsamara Ufairah Azka', 'tsamaraufairahazka@gmail.com', '081236474047'),
('Tyaga Aharon', 'tyagaharon@gmail.com', '085694758468'),
('Ubadah Gabai', 'ubadahgabai@gmail.com', '089836456387'),
('ulfi m ', 'ulfimar@yahoo.com ', '081965787865'),
('Ulwan Aziz', 'ulwanaziz@gmail.com', '083899766540'),
('Umay Fakhriyah', 'umayfakhriyah@gmail.com', '085694795749'),
('Uma Zakiyyah', 'umazakiyyah@gmail.com', '087854356457'),
('Ummar Ayyash', 'ummarayyash@gmail.com', '081344567122'),
('Utami Aulia', 'utamiaulia@gmail.com', '081345126009'),
('Valda Athena', 'valdaathena@gmail.com', '085693468788'),
('Vanessa Hudgens', 'vanessahud@gmail.com', '085722456908'),
('Verrell Bramasta', 'verrelbramasta@gmail.com', '085777900888'),
('Victoria song', 'victoriasong@gmail.com', '085621333252'),
('Wafa Kamila', 'wafakamila@gmail.com', '087778901244'),
('Walad Darlane', 'waladarlane@gmail.com', '085777900124'),
('Whidya Aliguna', 'whidyaaa@gmail.com', '087878252343'),
('widya ', 'widya@yahoo.com ', '081233537766'),
('Winola Conary', 'winolaconary@gmail.com', '085785656556'),
('Wira Kwayera', 'wirakwayera@gmail.com', '085683946377'),
('Wiratama Adam', 'wiratamadam@gmail.com', '085793458399'),
('Wulandari Nurul', 'wulandarinurul@gmail.com', '085777800444'),
('Wyman Nando', 'wymanando@gmail.com', '085683467387'),
('Xavier Melkisedek', 'xaviermelkisedek@gmail.com', '081398343748'),
('Yaasir Mustaqil', 'yaasirmustaqil@gmail.com', '085777822450'),
('Yaqdhan Amril', 'yaqdhanamril@gmail.com', '089997665440'),
('Yeeshai Seanan', 'yeeshaiseanan@gmail.com', '083863453643'),
('Yongs ananda', 'yong@gmail.com', '08912438123'),
('Kim Yoon-ah', 'yoonah@gmail.com', '081222456788'),
('Zaccheo Ivander', 'zaccheoivander@gmail.com', '089874637456'),
('Zac Efron', 'zacefron@gmail.com', '085788908250'),
('Zachary Fallah', 'zacharyfallah@gmail.com', '083888999111'),
('Zahran Jinan', 'zahranjinan@gmail.com', '085211500988'),
('Zaki Adriansyah', 'zakiadriansyah@gmail.com', '087889021444'),
('Zayn Malik', 'zaynmalikk@gmail.com', '087889088250'),
('Zayyan Arkana', 'zayyanarkana@gmail.com', '087845745673'),
('Zedd', 'zedd222@gmail.com', '081566200988'),
('Zendaya', 'zendayaaa@gmail.com', '089500987888'),
('Zeroun Fidelyo', 'zerounfidelyo@gmail.com', '081389457455'),
('Zia Ramadhani', 'ziaramadhani@gmail.com', '085683465738'),
('Zico', 'zico22@gmail.com', '089989222145'),
('Zidna Tuqo Asy Syahidah', 'zidnatuqoasy@gmail.com', '085250988790');

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `id_penumpang` varchar(10) NOT NULL,
  `nama_penumpang` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `id_pesanan` varchar(10) NOT NULL,
  `title` enum('Mr.','Mrs.','Ms.') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`id_penumpang`, `nama_penumpang`, `tgl_lahir`, `kewarganegaraan`, `id_pesanan`, `title`) VALUES
('PN0001', 'Aliando', '1988-06-02', 'Indonesia', 'PS0001', 'Mr.'),
('PN0002', 'Annisa', '2015-05-13', 'Indonesia', 'PS0001', 'Mrs.'),
('PN0003', 'Abimanyu', '2011-02-10', 'Indonesia', 'PS0001', 'Mr.'),
('PN0004', 'Abdul', '1998-06-30', 'Indonesia', 'PS0002', 'Mr.'),
('PN0005', 'Adinata', '1993-12-18', 'Indonesia', 'PS0002', 'Ms.'),
('PN0006', 'Azzia', '2016-06-16', 'Indonesia', 'PS0002', 'Mrs.'),
('PN0007', 'Adam Karisma', '1990-04-21', 'Indonesia', 'PS0003', 'Mr.'),
('PN0008', 'Andita', '1992-03-11', 'Indonesia', 'PS0003', 'Ms.'),
('PN0009', 'Nida', '2015-02-19', 'Indonesia', 'PS0003', 'Mrs.'),
('PN0010', 'Diyah', '1990-11-21', 'Indonesia', 'PS0004', 'Ms.'),
('PN0011', 'Putra', '1988-07-31', 'Indonesia', 'PS0004', 'Mr.'),
('PN0012', 'Rianti', '2012-07-31', 'Indonesia', 'PS0004', 'Mrs.'),
('PN0013', 'Afiyah', '1993-08-24', 'Indonesia', 'PS0005', 'Ms.'),
('PN0014', 'Mitha', '2017-12-30', 'Indonesia', 'PS0005', 'Mrs.'),
('PN0015', 'Aaron Blenda', '1986-06-28', 'Indonesia', 'PS0006', 'Mr.'),
('PN0016', 'Marcia', '1990-09-27', 'Indonesia', 'PS0006', 'Ms.'),
('PN0017', 'Abizard Razka', '1988-06-04', 'Indonesia', 'PS0007', 'Mr.'),
('PN0018', 'Nadiah', '1990-06-29', 'Indonesia', 'PS0007', 'Ms.'),
('PN0019', 'Marcia', '2013-07-21', 'Indonesia', 'PS0007', 'Mrs.'),
('PN0020', 'Agus Salim', '1970-01-01', 'Indonesia', 'PS0071', 'Mr.'),
('PN0021', 'Hartonang', '1971-02-02', 'Indonesia', 'PS0072', 'Mr.'),
('PN0022', 'Bustomi', '1973-03-03', 'Indonesia', 'PS0073', 'Mr.'),
('PN0023', 'Kevin', '1974-04-04', 'Indonesia', 'PS0074', 'Mr.'),
('PN0024', 'Monang', '1975-05-05', 'Indonesia', 'PS0075', 'Mr.'),
('PN0025', 'jellita', '1996-05-10', 'Indonesia', 'PS0076', 'Mrs.'),
('PN0026', 'kuntum', '1996-06-28', 'Indonesia', 'PS0077', 'Mrs.'),
('PN0027', 'cheyra', '1995-06-18', 'Indonesia', 'PS0078', 'Mrs.'),
('PN0028', 'reza', '1994-06-06', 'Indonesia', 'PS0079', 'Mr.'),
('PN0029', 'destriansyah', '1992-05-21', 'Indonesia', 'PS0080', 'Mr.'),
('PN0030', 'lily', '1992-07-01', 'Indonesia', 'PS0081', 'Mrs.'),
('PN0031', 'marlina', '1990-06-14', 'Indonesia', 'PS0082', 'Mrs.'),
('PN0032', 'rafa', '1997-07-11', 'Indonesia', 'PS0083', 'Mr.'),
('PN0033', 'raya', '1995-07-18', 'Indonesia', 'PS0084', 'Mrs.'),
('PN0034', 'naina', '1994-07-24', 'Indonesia', 'PS0085', 'Mrs.'),
('PN0035', 'Anisaf', '1998-09-19', 'Indonesia', 'PS0086', 'Mrs.'),
('PN0036', 'Ulfi', '1993-08-22', 'Indonesia', 'PS0087', 'Mrs.'),
('PN0037', 'Widya ', '1994-09-20', 'Indonesia', 'PS0088', 'Mrs.'),
('PN0038', 'kiki', '1995-09-19', 'Indonesia', 'PS0089', 'Mr.'),
('PN0039', 'koiriyah', '1996-05-07', 'Indonesia', 'PS0090', 'Mrs.'),
('PN0040', 'Jaja', '1998-07-03', 'Indonesia', 'PS0091', 'Mr.'),
('PN0041', 'eva n ', '1997-10-30', 'Indonesia ', 'PS0092', 'Mrs.'),
('PN0042', 'evi n ', '1996-07-25', 'Indonesia ', 'PS0093', 'Mrs.'),
('PN0043', 'Lala', '1996-11-15', 'Indonesia', 'PS0094', 'Mrs.'),
('PN0044', 'Richardo Chandra', '1999-02-12', 'indonesia', 'PS0095', 'Mr.'),
('PN0045', 'Yongs ananda', '1999-09-11', 'indonesia', 'PS0096', 'Mr.'),
('PN0046', 'Centoy adinda', '1994-10-12', 'indonesia', 'PS0097', 'Mr.'),
('PN0047', 'Gals gadiguna', '1998-01-01', 'indonesia', 'PS0098', 'Mr.');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` varchar(10) NOT NULL,
  `email_pemesan` varchar(50) NOT NULL,
  `jenis_kelas` enum('Economy','Business','First Class','Premium Economy') NOT NULL,
  `total_harga` int(15) NOT NULL,
  `jml_dewasa` int(3) NOT NULL,
  `jml_anak` int(3) NOT NULL,
  `jml_bayi` int(3) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_bayar` date NOT NULL,
  `id_metode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `email_pemesan`, `jenis_kelas`, `total_harga`, `jml_dewasa`, `jml_anak`, `jml_bayi`, `tgl_pesan`, `tgl_bayar`, `id_metode`) VALUES
('PS0001', '0adamkharisma@gmail.com', 'Economy', 300000, 1, 2, 0, '2018-06-21', '2018-06-22', 'MT001'),
('PS0002', 'Abdul23@gmail.com', 'Business', 900000, 2, 1, 0, '2018-06-21', '2018-06-22', 'MT002'),
('PS0003', 'Adamkarisma@gmail.com', 'First Class', 1000000, 1, 1, 1, '2018-06-22', '2018-06-23', 'MT003'),
('PS0004', 'aadiyah@gmail.com', 'Premium Economy', 1400000, 2, 0, 1, '2018-06-22', '2018-06-23', 'MT004'),
('PS0005', 'aafiyah52@gmail.com', 'Economy', 300000, 1, 1, 0, '2018-06-23', '2018-06-24', 'MT005'),
('PS0006', 'aaronblenda@gmail.com', 'Business', 750000, 2, 1, 0, '2018-06-23', '2018-06-24', 'MT006'),
('PS0007', 'abizardrazka@gmail.com', 'First Class', 1350000, 2, 1, 0, '2018-06-24', '2018-06-25', 'MT007'),
('PS0008', 'abizharel@gmail.com', 'Premium Economy', 1100000, 2, 0, 1, '2018-06-24', '2018-06-25', 'MT008'),
('PS0009', 'abrahamalexipratama@gmail.com', 'Economy', 250000, 1, 0, 1, '2018-06-25', '2018-06-26', 'MT001'),
('PS0010', 'abyanarafif@gmail.com', 'Business', 640000, 1, 1, 0, '2018-06-26', '2018-06-27', 'MT002'),
('PS0011', 'achaziabrigitaharon@gmail.com', 'First Class', 840000, 2, 0, 0, '2018-06-27', '2018-06-28', 'MT004'),
('PS0012', 'adamafifalarkhan@gmail.com', 'Premium Economy', 600000, 2, 0, 0, '2018-06-28', '2018-06-29', 'MT005'),
('PS0013', 'adamkarismadi@gmail.com', 'Economy', 1200000, 2, 0, 1, '2018-06-28', '2018-06-29', 'MT006'),
('PS0014', 'adamlevine@gmail.com', 'Business', 1400000, 2, 1, 0, '2018-06-29', '2018-06-30', 'MT007'),
('PS0015', 'adamun@gmail.com', 'First Class', 1600000, 2, 0, 0, '2018-07-01', '2018-07-02', 'MT001'),
('PS0016', 'adawiyatulrahmah@gmail.com', 'Premium Economy', 1800000, 1, 1, 1, '2018-07-02', '2018-07-03', 'MT002'),
('PS0017', 'adeevafsheen@gmail.com', 'Economy', 2100000, 2, 1, 0, '2018-07-03', '2018-07-04', 'MT003'),
('PS0018', 'adelardradmilo@gmail.com', 'Business', 800000, 1, 0, 0, '2018-07-04', '2018-07-05', 'MT004'),
('PS0019', 'adeliashintya@gmail.com', 'First Class', 750000, 1, 0, 1, '2018-07-06', '2018-07-07', 'MT004'),
('PS0020', 'adenoersyah@gmail.com', 'Premium Economy', 2000000, 2, 0, 0, '2018-07-07', '2018-07-08', 'MT005'),
('PS0021', 'adenurfitri@gmail.com', 'Economy', 400000, 1, 0, 0, '2018-06-01', '2018-06-02', 'MT003'),
('PS0022', 'adhyasthaadeliocetta@gmail.com', 'Business', 600000, 1, 0, 0, '2017-12-18', '2017-12-19', 'MT006'),
('PS0023', 'adibashakila@gmail.com', 'First Class', 800000, 1, 0, 0, '2017-11-20', '2017-11-20', 'MT008'),
('PS0024', 'afauzifirdaus@gmail.com', 'Premium Economy', 1000000, 1, 0, 0, '2017-10-23', '2017-10-23', 'MT003'),
('PS0025', 'amubarokdoohan@gmail.com', 'Economy', 550000, 1, 0, 0, '2017-09-08', '2017-09-09', 'MT001'),
('PS0026', 'Aditiyapratama@gmail.com', 'Business', 1300000, 2, 0, 0, '2017-08-25', '2017-08-26', 'MT004'),
('PS0027', 'Ahmad@gmail.com', 'First Class', 750000, 1, 0, 1, '2017-06-16', '2017-06-17', 'MT007'),
('PS0028', 'aaafifiswandee@gmail.com', 'Premium Economy', 850000, 1, 1, 0, '2017-07-20', '2017-07-21', 'MT007'),
('PS0029', 'aadesrzk@gmail.com', 'Economy', 700000, 1, 0, 1, '2017-05-02', '2017-05-03', 'MT005'),
('PS0030', 'adikaasbrt@gmail.com', 'Business', 800000, 1, 1, 0, '2017-04-15', '2017-04-16', 'MT003'),
('PS0031', 'adilanisardani@gmail.com', 'First Class', 900000, 1, 0, 1, '2017-03-31', '2017-04-01', 'MT001'),
('PS0032', 'adindaadeka48@gmail.com', 'Premium Economy', 1000000, 1, 0, 1, '2017-02-15', '2017-02-16', 'MT007'),
('PS0033', 'adirazzahra@gmail.com', 'Economy', 1200000, 1, 1, 0, '2017-01-13', '2017-01-14', 'MT001'),
('PS0034', 'adriellmeshach@gmail.com', 'Business', 800000, 1, 0, 1, '2018-01-06', '2018-01-07', 'MT001'),
('PS0035', 'agorirfan@gmail.com', 'First Class', 900000, 1, 0, 0, '2018-02-10', '2018-02-11', 'MT005'),
('PS0036', 'ahlanpakradiga@gmail.com', 'Premium Economy', 1800000, 2, 0, 0, '2018-03-29', '2018-03-30', 'MT001'),
('PS0037', 'ahzadanish@gmail.com', 'Economy', 500000, 1, 0, 0, '2018-04-20', '2018-04-21', 'MT008'),
('PS0038', 'ainurridho@gmail.com', 'Business', 1200000, 1, 1, 0, '2018-05-16', '2018-05-17', 'MT004'),
('PS0039', 'airnakhladinata@gmail.com', 'First Class', 700000, 1, 0, 1, '2018-06-08', '2018-06-09', 'MT002'),
('PS0040', 'aisyahaziz@gmail.com', 'Premium Economy', 800000, 1, 0, 0, '2018-06-15', '2018-06-16', 'MT001'),
('PS0041', 'ajengazima@gmail', 'Economy', 800000, 1, 1, 0, '2018-06-17', '2018-06-18', 'MT001'),
('PS0042', 'ajibayuwirotama@gmail.com', 'Business', 600000, 1, 0, 1, '2018-06-18', '2018-06-19', 'MT002'),
('PS0043', 'akhdanhabibiedarwis@ymail.com', 'First Class', 1600000, 2, 0, 0, '2018-05-29', '2018-05-30', 'MT001'),
('PS0044', 'alamgirabrisamarief@gmail.com', 'Premium Economy', 1000000, 1, 0, 0, '2018-05-10', '2018-05-11', 'MT001'),
('PS0045', 'alanclark@gmail.com', 'Economy', 600000, 1, 1, 0, '2018-05-20', '2018-05-21', 'MT003'),
('PS0046', 'alanisdhew@gmail.com', 'Business', 400000, 1, 0, 1, '2018-04-22', '2018-04-23', 'MT004'),
('PS0047', 'alariczeroun@gmail.com', 'First Class', 1000000, 1, 1, 0, '2018-04-15', '2018-04-16', 'MT005'),
('PS0048', 'albyluthfy@gmail.com', 'Premium Economy', 600000, 1, 0, 1, '2018-03-23', '2018-03-24', 'MT006'),
('PS0049', 'aldi@gmail,com', 'Economy', 320000, 1, 0, 0, '2018-03-23', '2018-03-24', 'MT007'),
('PS0050', 'austianindi@gmail.com', 'Business', 420000, 1, 0, 0, '2018-02-22', '2018-02-23', 'MT001'),
('PS0051', 'ahuruf@gmail.com', 'First Class', 520000, 1, 0, 0, '2018-02-27', '2018-02-28', 'MT001'),
('PS0052', 'aldrichkenzie@gmail.com', 'Premium Economy', 1240000, 2, 0, 0, '2018-01-01', '2018-01-02', 'MT002'),
('PS0053', 'alexanderthaslim@gmail.com', 'Economy', 220000, 1, 0, 0, '2018-01-04', '2018-01-05', 'MT005'),
('PS0054', 'alexandrew@gmail.com', 'Business', 640000, 2, 0, 0, '2018-01-10', '2018-01-11', 'MT004'),
('PS0055', 'alfarielsandy@gmail.com', 'First Class', 420000, 1, 0, 0, '2018-01-24', '2018-01-25', 'MT006'),
('PS0056', 'alfathmhd@gmail.com', 'Premium Economy', 520000, 1, 0, 0, '2018-01-23', '2018-01-24', 'MT008'),
('PS0057', 'alfin21@gmail.com', 'Economy', 120000, 1, 0, 0, '2017-12-21', '2017-12-22', 'MT001'),
('PS0058', 'aliceharyono@gmail.com', 'Business', 220000, 1, 0, 0, '2017-12-29', '2017-12-30', 'MT001'),
('PS0059', 'aliciacooper@gmail.com', 'First Class', 320000, 1, 0, 0, '2017-12-01', '2017-12-02', 'MT001'),
('PS0060', 'aliciakeys@gmail.com', 'Premium Economy', 420000, 1, 0, 0, '2016-12-29', '2016-12-30', 'MT008'),
('PS0061', 'alief0293@gmail.com', 'Economy', 250000, 1, 0, 0, '2016-12-08', '2016-12-09', 'MT003'),
('PS0062', 'aliyahbravani20@gmail.com', 'Business', 350000, 1, 0, 0, '2016-12-15', '2016-12-16', 'MT004'),
('PS0063', 'alvarogavriel@gmail.com', 'First Class', 450000, 1, 0, 0, '2016-11-17', '2016-11-18', 'MT005'),
('PS0064', 'alvianti@gmail.com', 'Premium Economy', 550000, 1, 0, 0, '2016-11-18', '2016-11-19', 'MT007'),
('PS0065', 'alviasa@gmail.com', 'Economy', 150000, 1, 0, 0, '2016-10-20', '2016-10-21', 'MT008'),
('PS0066', 'alvin87@gmail.com', 'Business', 250000, 1, 0, 0, '2016-09-16', '2016-09-17', 'MT003'),
('PS0067', 'alvinandreas@gmail.com', 'First Class', 350000, 1, 0, 0, '2016-08-04', '2016-08-05', 'MT001'),
('PS0068', 'alwanfawwaz@gmail.com', 'Premium Economy', 450000, 1, 0, 0, '2016-08-17', '2016-08-18', 'MT004'),
('PS0069', 'alwialatas@gmail.com', 'Economy', 400000, 1, 0, 0, '2016-07-14', '2016-07-15', 'MT007'),
('PS0070', 'alyazizah@gmail.com', 'Business', 500000, 1, 0, 0, '2016-06-22', '2016-06-23', 'MT001'),
('PS0071', '00Agusalim@gmail.com', 'First Class', 5000000, 1, 0, 0, '2018-06-07', '2018-06-07', 'MT001'),
('PS0072', '00Hendrabustomi@yahoo.com', 'First Class', 3000000, 1, 0, 0, '2018-06-07', '2018-06-07', 'MT003'),
('PS0073', '00Monangyowis@gmail.com', 'First Class', 2500000, 1, 0, 0, '2018-06-07', '2018-06-07', 'MT006'),
('PS0074', '00hartons@yahoo.com', 'First Class', 3640000, 1, 0, 0, '2018-06-07', '2018-06-07', 'MT004'),
('PS0075', '00kekev@gmail.com', 'First Class', 2300000, 1, 0, 0, '2018-06-07', '2018-06-07', 'MT001'),
('PS0076', 'jelita@yahoo.com', 'Economy', 587000, 1, 0, 0, '2018-07-08', '2018-07-08', 'MT003'),
('PS0077', 'kuntum@yahoo.com', 'Economy', 537900, 1, 0, 0, '2018-06-30', '2018-06-30', 'MT003'),
('PS0078', 'cheyra11@yahoo.com', 'Economy', 756500, 1, 0, 0, '2018-06-30', '2018-06-30', 'MT003'),
('PS0079', 'rezades@yahoo.com', 'Economy', 772000, 1, 0, 0, '2018-06-30', '2018-06-30', 'MT003'),
('PS0080', 'destriansyah@yahoo.com', 'Economy', 416500, 1, 0, 0, '2018-07-01', '2018-07-01', 'MT003'),
('PS0081', 'jelita@yahoo.com', 'Economy', 494600, 1, 0, 0, '2018-07-01', '2018-07-01', 'MT003'),
('PS0082', 'kuntum11@yahoo.com', 'Economy', 455000, 1, 0, 0, '2018-07-05', '2018-07-05', 'MT003'),
('PS0083', 'rafandra@yahoo.com', 'Economy', 963200, 1, 0, 0, '2019-01-16', '2019-01-16', 'MT003'),
('PS0084', 'Raya12@yahoo.com', 'Economy', 2864100, 1, 0, 0, '2019-01-16', '2019-01-16', 'MT006'),
('PS0085', 'naina13@yahoo.com ', 'Economy', 1266100, 1, 0, 0, '2019-01-29', '2019-01-29', 'MT003'),
('PS0086', 'anisaf@yahoo.com ', 'Economy', 1427300, 1, 0, 0, '2019-01-30', '2019-01-30', 'MT003'),
('PS0087', 'ulfimar@yahoo.com ', 'Business', 1103900, 1, 0, 0, '2019-01-24', '2019-01-24', 'MT003'),
('PS0088', 'widya@yahoo.com ', 'Business', 1131900, 1, 0, 0, '2019-01-31', '2019-01-31', 'MT003'),
('PS0089', 'kiki@yahoo.com ', 'Economy', 664000, 1, 0, 0, '2019-02-20', '2019-02-20', 'MT003'),
('PS0090', 'koir@yahoo.com ', 'Economy', 778000, 1, 0, 0, '2019-02-26', '2019-02-26', 'MT003'),
('PS0091', 'jaja@yahoo.com ', 'Economy', 752000, 1, 0, 0, '2019-03-05', '2019-03-05', 'MT003'),
('PS0092', 'evan@yahoo.com ', 'Economy', 685000, 1, 0, 0, '2019-03-05', '2019-03-05', 'MT003'),
('PS0093', 'evin@yahoo.com', 'Economy', 537500, 1, 0, 0, '2019-03-25', '2019-03-25', 'MT006'),
('PS0094', 'lala@yahoo.com', 'Economy', 691500, 1, 0, 0, '2019-03-25', '2019-03-25', 'MT003'),
('PS0095', 'aldochandra46@gmail.com', 'Economy', 100000, 1, 0, 0, '2018-07-03', '2018-07-03', 'MT001'),
('PS0096', 'yong@gmail.com', 'Economy', 100000, 1, 0, 0, '2018-07-03', '2018-07-03', 'MT001'),
('PS0097', 'centoy@gmail.com', 'Economy', 100000, 1, 0, 0, '2018-07-03', '2018-07-03', 'MT001'),
('PS0098', 'gals@gmail.com', 'Economy', 100000, 1, 0, 0, '2018-07-04', '2018-07-04', 'MT001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_harga`
--
ALTER TABLE `detail_harga`
  ADD PRIMARY KEY (`id_detail_harga`),
  ADD KEY `Id_Jadwal` (`id_jadwal`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `Id_Pesanan` (`id_pesanan`),
  ADD KEY `Id_Jadwal` (`id_jadwal`);

--
-- Indexes for table `detail_transit`
--
ALTER TABLE `detail_transit`
  ADD PRIMARY KEY (`Id_Detail_Transit`),
  ADD KEY `Id_Jadwal` (`Id_Jadwal`),
  ADD KEY `Id_Maskapai` (`Id_Maskapai`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `Kode_Maskapai` (`kode_maskapai`);

--
-- Indexes for table `maskapai`
--
ALTER TABLE `maskapai`
  ADD PRIMARY KEY (`kode_maskapai`);

--
-- Indexes for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD PRIMARY KEY (`email_pemesan`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id_penumpang`),
  ADD KEY `Id_Pesanan` (`id_pesanan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `Email_Pemesan` (`email_pemesan`),
  ADD KEY `pesanan_ibfk_1` (`id_metode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_harga`
--
ALTER TABLE `detail_harga`
  ADD CONSTRAINT `detail_harga_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`),
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`);

--
-- Constraints for table `detail_transit`
--
ALTER TABLE `detail_transit`
  ADD CONSTRAINT `detail_transit_ibfk_1` FOREIGN KEY (`Id_Jadwal`) REFERENCES `jadwal` (`id_jadwal`),
  ADD CONSTRAINT `detail_transit_ibfk_2` FOREIGN KEY (`Id_Maskapai`) REFERENCES `maskapai` (`kode_maskapai`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kode_maskapai`) REFERENCES `maskapai` (`kode_maskapai`);

--
-- Constraints for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD CONSTRAINT `penumpang_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_metode`) REFERENCES `metode_bayar` (`id_metode`),
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`email_pemesan`) REFERENCES `pemesan` (`email_pemesan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
