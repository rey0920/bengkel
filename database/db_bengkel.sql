-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2022 pada 16.33
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bengkel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_adm` int(11) NOT NULL,
  `nama_adm` varchar(50) NOT NULL,
  `telp_adm` varchar(15) NOT NULL,
  `user_adm` varchar(50) NOT NULL,
  `pass_adm` varchar(100) NOT NULL,
  `foto_adm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_adm`, `nama_adm`, `telp_adm`, `user_adm`, `pass_adm`, `foto_adm`) VALUES
(1, 'Administrator', '08962878534', 'admin', 'admin', '10172021182044e.PNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangjasa`
--

CREATE TABLE `barangjasa` (
  `id_brg` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `stok` varchar(10) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `id_adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barangjasa`
--

INSERT INTO `barangjasa` (`id_brg`, `nama`, `jenis`, `stok`, `harga`, `keterangan`, `id_adm`) VALUES
(1, 'Oli Yamalube 800cc', 'barang', '23', '35000', 'SAE 10/30W', 1),
(4, 'Service Berkala', 'jasa', '100', '30000', 'Service per kilometer', 1),
(5, 'Suspensi Depan Matic', 'barang', '5', '500000', 'Set Shock Absorber depan Matic', 1),
(6, 'Tune Up Motor', 'jasa', '100', '75000', 'Mengembalikan Performa Mesin', 1),
(7, 'Overhaul Motor', 'jasa', '100', '250000', 'Turun Mesin', 1),
(8, 'Kanvas REM Honda Matic Depan', 'barang', '13', '35000', 'Kode Part KVB', 1),
(9, 'Kanvas REM Belakang', 'barang', '14', '30000', 'Kode part KVB', 1),
(10, 'Oli AHM MPX 2', 'barang', '25', '45000', 'SAE 10/30W Matic', 1),
(11, 'Kanvas REM Yamaha Matic Belakang', 'barang', '15', '30000', 'Kode Part 5MX', 1),
(12, 'Kanvas REM Yamaha Matic Depan', 'barang', '18', '35000', 'Kode part 1S7', 1),
(13, 'Suspensi Belakang Matic', 'barang', '17', '250000', 'Tinggi 30-34mm Untuk all matic', 1),
(14, 'Service Besar', 'jasa', '100', '150000', 'Service Besar', 1),
(15, 'Kanvas REM Honda Matic Depan', 'barang', '20', '35000', 'Kode Part KVB', 1),
(16, 'Baut 8-12mm', 'barang', '9', '2000', 'Baut ukuran 8-12mm', 1),
(17, 'Ganti Oli', 'jasa', '100 ', '15000', 'Penggantian Oli Mesin/Oli Gardan matic', 1),
(18, 'Ganti Kanvas Rem', 'jasa', '100', '15000', 'Penggantian Part kanvas Rem', 1),
(19, 'Service Shock Absorber Matic', 'jasa', '100', '80000', 'Service Shock Absorber untuk matic', 1),
(20, 'Klep Set Honda Matic', 'barang', '9', '70000', 'Klep Set motor Honda Matic', 1),
(21, 'Piston 56mm Honda Matic', 'barang', '2', '160000', 'Piston NPP Honda Matic', 1),
(22, 'Packing Gasket Top Set', 'barang', '9', '50000', 'Packing Top Set Honda Vario', 1),
(23, 'Air Colant Radiator 1L', 'barang', '31', '40000', 'Genuine Part All Motor', 1),
(24, 'Oli AHM MPX 1', 'barang', '30', '45000', 'SAE 10/30W Manual', 1),
(25, 'Lampu Halogen', 'barang', '48', '35000', 'Lampu Motor bebek', 1),
(26, 'Lampu LED Putih', 'barang', '16', '80000', 'Warna Putih Susu', 1),
(27, 'Lampu Stop Rem', 'barang', '29', '10000', 'Lampu Stop Rem', 1),
(28, 'Kabel Speedometer Honda', 'barang', '6', '25000', 'Kabel Speedometer Honda Beat, Vario', 1),
(29, 'Oli Gardan Matic Yamalube 100ML', 'barang', '9', '14500', 'Oli Samping/Gardan Matic 100ML', 1),
(30, 'Oli Gardan Matic Yamalube 140ML', 'barang', '15', '17000', 'Oli Gardan matic 140ML', 1),
(31, 'Oli Gardan Matic Honda 120ML', 'barang', '19', '13000', 'Oli Gardan/Oli samping Matic120 ML', 1),
(32, 'Oli Enduro Racing 4T 1Lt', 'barang', '24', '48000', 'Oli 4T', 1),
(33, 'Carbu/Injector Cleaner ', 'barang', '13', '25000', 'Cleaning Carb/Injection Motor', 1),
(34, 'Klakson Keong Motor', 'barang', '4', '120000', 'Klakson Keong All Motor', 1),
(35, 'Busi NGK Honda', 'barang', '18', '14000', 'Busi motor honda', 1),
(36, 'Busi NGK Yamaha', 'barang', '20', '14000', 'Busi NGK Yamaha', 1),
(37, 'Battery/Aki Kering Yuasa', 'barang', '11', '200000', 'Aki untuk semua motor ', 1),
(38, 'Gear Set Honda Kharisma/Supra/Revo/Blade/Supra Fit', 'barang', '6', '165000', 'Gear Set + Rantai Sepeda Motor', 1),
(39, 'Bearing/Laher', 'barang', '3', '10000', 'Bearing Laher Motor', 1),
(40, 'V-Belt Set Yamaha Nmax/Aerox/Lexi', 'barang', '10', '150000', 'VanBelt Set + Roller', 1),
(41, 'V-Belt Set Honda Vario110/125/Beat Karbu/Beat Injection', 'barang', '9', '89000', 'Vanbelt set + Roller Honda', 1),
(42, 'Kanvas Ganda Honda Matic ', 'barang', '9', '80000', 'Kanvas Ganda Honda Matic', 1),
(43, 'Jasa Pergantian Spare Part', 'jasa', '1', '10000', 'Jasa Repair/ganti spare part ', 1),
(44, 'Lampu Rem', 'barang', '10', '5000', 'Lampu Stop Rem', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` int(11) NOT NULL,
  `nama_kasir` varchar(50) NOT NULL,
  `telp_kasir` varchar(20) NOT NULL,
  `user_kasir` varchar(50) NOT NULL,
  `pass_kasir` varchar(100) NOT NULL,
  `foto_kasir` text NOT NULL,
  `id_adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `telp_kasir`, `user_kasir`, `pass_kasir`, `foto_kasir`, `id_adm`) VALUES
(1, 'Faris Sofyan', '0895358560637', 'kasir', 'kasir', '10112021232639o.PNG', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsumen`
--

CREATE TABLE `konsumen` (
  `id_kon` int(11) NOT NULL,
  `nama_kon` varchar(50) NOT NULL,
  `telp_kon` varchar(20) NOT NULL,
  `alamat_kon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsumen`
--

INSERT INTO `konsumen` (`id_kon`, `nama_kon`, `telp_kon`, `alamat_kon`) VALUES
(0, 'Umum', '0', '-'),
(5, 'Wiganda', '0895358560637', 'Jl. Rorotan'),
(6, 'Mahdi', '021404812', 'Jl. Sutim'),
(8, 'Alex', '0214912941', 'Jl. Marunda Baru'),
(9, 'Roy', '089521631289', 'Jl. Kayu Tinggi'),
(10, 'Joko', '021213282818', 'Jl. Tipar Cakung'),
(11, 'Husnan', '02131293912', 'Jl. Rorotan III'),
(12, 'Agus', '089241723761', 'Jl. Marunda Lama ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mekanik`
--

CREATE TABLE `mekanik` (
  `id_mekanik` int(11) NOT NULL,
  `nama_mekanik` varchar(50) CHARACTER SET latin1 NOT NULL,
  `telp_mekanik` varchar(20) CHARACTER SET latin1 NOT NULL,
  `alamat_mekanik` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mekanik`
--

INSERT INTO `mekanik` (`id_mekanik`, `nama_mekanik`, `telp_mekanik`, `alamat_mekanik`) VALUES
(2, 'Dicky Putra', '08921738127', 'Jl. Rorotan II'),
(3, 'Rois Salim', '08912831238', 'Jl. Malaka III HB'),
(4, 'Muhammad Iqbal', '088276215674', 'Jl. Rorotan VI'),
(5, 'Ahmad Husnan', '081283719281', 'Jl. Rorotan VI'),
(6, 'Vicky Ary Rahardian', '089542445192', 'Jl. Malaka Bulak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_spl` int(11) NOT NULL,
  `nama_spl` varchar(50) NOT NULL,
  `telp_spl` varchar(20) NOT NULL,
  `alamat_spl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_spl`, `nama_spl`, `telp_spl`, `alamat_spl`) VALUES
(2, 'JSM Part Center', '0818622226', 'Ruko Sentra Niaga 5. Kav 10 No 2. Harapan Indah Boulevard.'),
(3, 'Genesis Surya Motor', '081283970033', 'Jl. Taman Venda Utam, RT.007/RW.026, Pejuang, Kec. Bekasi Bar., Bekasi, Jawa Barat\r\n'),
(4, 'Toko Mur & Baut', '02144853522', 'Jl. Taman Harapan Indah No.16, RT.005/RW.027, Pejuang, Kecamatan Medan Satria, Kota Bks, Jawa Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_trx`
--

CREATE TABLE `tmp_trx` (
  `id_tmp` int(11) NOT NULL,
  `id_trx` varchar(20) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_trx`
--

INSERT INTO `tmp_trx` (`id_tmp`, `id_trx`, `id_brg`, `jml`, `id_kasir`, `status`) VALUES
(2, '02062019094643', 4, 1, 1, 'Done'),
(4, '02062019094643', 1, 2, 1, 'Done'),
(7, '02062019120923', 4, 1, 1, 'Done'),
(8, '02062019121127', 4, 1, 1, 'Done'),
(10, '06062019094346', 1, 1, 1, 'Done'),
(11, '06062019100803', 4, 1, 1, 'Done'),
(12, '11102021230829', 7, 1, 1, 'Done'),
(13, '12102021220618', 9, 1, 1, 'Done'),
(15, '12102021220903', 6, 5, 1, 'Done'),
(16, '12102021221316', 10, 5, 1, 'Done'),
(24, '17102021154021', 1, 1, 1, 'Done'),
(26, '17102021154021', 4, 1, 1, 'Done'),
(27, '17102021154900', 7, 1, 1, 'Done'),
(28, '17102021154900', 10, 1, 1, 'Done'),
(29, '17102021154900', 23, 1, 1, 'Done'),
(30, '17102021154900', 22, 1, 1, 'Done'),
(31, '17102021154900', 20, 1, 1, 'Done'),
(32, '17102021155157', 24, 2, 1, 'Done'),
(33, '17102021174556', 16, 2, 1, 'Done'),
(34, '17102021174556', 6, 4, 1, 'Done'),
(35, '17102021194334', 9, 1, 1, 'Done'),
(36, '17102021194448', 23, 2, 1, 'Done'),
(38, '20102021015011', 19, 1, 1, 'Done'),
(39, '26102021220156', 16, 10, 1, 'Done'),
(40, '26102021220156', 23, 1, 1, 'Done'),
(41, '27102021115351', 23, 1, 1, 'Done'),
(42, '27102021115351', 16, 2, 1, 'Done'),
(43, '27102021115351', 24, 1, 1, 'Done'),
(44, '27102021115351', 4, 1, 1, 'Done'),
(45, '27102021115351', 8, 1, 1, 'Done'),
(46, '27102021115351', 8, 1, 1, 'Done'),
(47, '27102021115351', 9, 1, 1, 'Done'),
(48, '27102021115640', 23, 1, 1, 'Done'),
(50, '27102021115640', 16, 2, 1, 'Done'),
(51, '27102021115640', 9, 1, 1, 'Done'),
(52, '27102021115640', 8, 1, 1, 'Done'),
(53, '27102021115640', 4, 1, 1, 'Done'),
(54, '27102021115640', 24, 1, 1, 'Done'),
(55, '17112021120733', 17, 1, 1, 'Done'),
(56, '17112021120733', 24, 1, 1, 'Done'),
(57, '17112021120756', 23, 2, 1, 'Done'),
(58, '17112021120756', 10, 3, 1, 'Done'),
(59, '17112021120824', 1, 1, 1, 'Done'),
(60, '17112021151438', 29, 1, 1, 'Done'),
(61, '17112021151438', 4, 1, 1, 'Done'),
(63, '17112021151438', 26, 1, 1, 'Done'),
(64, '17112021151438', 1, 1, 1, 'Done'),
(65, '17112021151438', 27, 1, 1, 'Done'),
(66, '17112021151438', 18, 1, 1, 'Done'),
(67, '17112021151712', 17, 1, 1, 'Done'),
(68, '17112021151712', 10, 1, 1, 'Done'),
(69, '17112021151849', 19, 1, 1, 'Done'),
(70, '17112021191541', 23, 1, 1, 'Done'),
(71, '17112021191541', 16, 5, 1, 'Done'),
(72, '17112021191541', 4, 1, 1, 'Done'),
(73, '17112021191541', 10, 1, 1, 'Done'),
(74, '17112021191541', 26, 1, 1, 'Done'),
(75, '17112021191541', 19, 1, 1, 'Done'),
(76, '17112021191541', 28, 1, 1, 'Done'),
(77, '17112021191541', 31, 1, 1, 'Done'),
(78, '20112021113959', 23, 1, 1, 'Done'),
(79, '20112021113959', 10, 1, 1, 'Done'),
(80, '20112021113959', 6, 1, 1, 'Done'),
(81, '20112021113959', 16, 4, 1, 'Done'),
(82, '20112021113959', 28, 1, 1, 'Done'),
(84, '24112021204109', 35, 1, 1, 'Done'),
(85, '24112021204109', 37, 1, 1, 'Done'),
(86, '24112021204109', 34, 1, 1, 'Done'),
(87, '24112021204109', 41, 1, 1, 'Done'),
(88, '24112021204109', 10, 1, 1, 'Done'),
(89, '24112021204109', 39, 1, 1, 'Done'),
(90, '24112021204109', 43, 1, 1, 'Done'),
(91, '24112021205206', 16, 5, 1, 'Done'),
(92, '24112021205206', 25, 2, 1, 'Done'),
(93, '24112021205224', 42, 1, 1, 'Done'),
(94, '28112021185952', 23, 4, 1, 'Done'),
(95, '28112021190016', 37, 1, 1, 'Done'),
(96, '28112021190016', 32, 3, 1, 'Done'),
(97, '29112021204803', 4, 1, 1, 'Done'),
(98, '29112021204803', 32, 1, 1, 'Done'),
(99, '29112021204803', 38, 1, 1, 'Done'),
(100, '29112021204803', 33, 1, 1, 'Done'),
(101, '30112021130620', 23, 1, 1, 'Done'),
(102, '30112021130620', 33, 1, 1, 'Done'),
(103, '17122021230319', 23, 2, 1, 'Done'),
(104, '17122021230754', 35, 1, 1, 'Done'),
(105, '17122021230754', 16, 5, 1, 'Done'),
(106, '17122021230754', 10, 2, 1, 'Done'),
(107, '01012022213511', 37, 1, 1, 'Done'),
(108, '01012022213511', 26, 2, 1, 'Done'),
(109, '01012022213511', 16, 5, 1, 'Done'),
(110, '01012022213511', 39, 2, 1, 'Done'),
(111, '01012022213511', 32, 7, 1, 'Done'),
(112, '01012022213511', 28, 2, 1, 'Done'),
(113, '06012022161337', 23, 10, 1, 'Done'),
(114, '07012022191221', 16, 1, 1, 'Done'),
(115, '07012022191221', 9, 1, 1, 'Done'),
(116, '07012022192710', 39, 12, 6, 'Done'),
(117, '12012022095714', 37, 1, 1, 'Done'),
(118, '12012022095714', 39, 12, 1, 'Done');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx`
--

CREATE TABLE `trx` (
  `id_trx` varchar(20) NOT NULL,
  `id_kon` int(11) NOT NULL,
  `tgl_trx` date NOT NULL,
  `total` varchar(20) NOT NULL,
  `id_kasir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trx`
--

INSERT INTO `trx` (`id_trx`, `id_kon`, `tgl_trx`, `total`, `id_kasir`) VALUES
('01012022213511', 0, '2022-01-01', '776000', 1),
('06012022161337', 13, '2022-01-06', '400000', 1),
('07012022191221', 0, '2022-01-07', '32000', 1),
('07012022192710', 0, '2022-01-07', '120000', 6),
('12012022095714', 0, '2022-01-12', '320000', 1),
('17102021154021', 6, '2021-10-17', '65000', 1),
('17102021154900', 5, '2021-10-17', '455000', 1),
('17102021155157', 5, '2021-10-17', '90000', 1),
('17102021174556', 0, '2021-10-17', '304000', 1),
('17102021194334', 0, '2021-10-17', '30000', 1),
('17102021194448', 0, '2021-10-17', '80000', 1),
('17112021120733', 0, '2021-11-17', '60000', 1),
('17112021120756', 0, '2021-11-17', '215000', 1),
('17112021120824', 0, '2021-11-17', '35000', 1),
('17112021151438', 5, '2021-11-17', '184500', 1),
('17112021151712', 0, '2021-11-17', '60000', 1),
('17112021151849', 0, '2021-11-17', '80000', 1),
('17112021191541', 9, '2021-11-17', '323000', 1),
('17122021230319', 0, '2021-12-17', '80000', 1),
('17122021230754', 0, '2021-12-17', '114000', 1),
('20102021015011', 0, '2021-10-20', '80000', 1),
('20112021113959', 10, '2021-11-20', '193000', 1),
('24112021204109', 11, '2021-11-24', '488000', 1),
('24112021205206', 0, '2021-11-24', '80000', 1),
('24112021205224', 0, '2021-11-24', '80000', 1),
('26102021220156', 0, '2021-10-26', '60000', 1),
('27102021115351', 7, '2021-10-27', '219000', 1),
('27102021115640', 8, '2021-10-27', '184000', 1),
('28112021185952', 0, '2021-11-28', '160000', 1),
('28112021190016', 0, '2021-11-28', '344000', 1),
('29112021204803', 12, '2021-11-29', '268000', 1),
('30112021130620', 0, '2021-11-30', '65000', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trxbarang`
--

CREATE TABLE `trxbarang` (
  `id_trxbrg` varchar(20) NOT NULL,
  `tgl_trxbrg` date NOT NULL,
  `id_brg` int(11) NOT NULL,
  `id_spl` int(11) NOT NULL,
  `jml_brg` int(11) NOT NULL,
  `ket_trxbrg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trxbarang`
--

INSERT INTO `trxbarang` (`id_trxbrg`, `tgl_trxbrg`, `id_brg`, `id_spl`, `jml_brg`, `ket_trxbrg`) VALUES
('09195312012022', '2022-01-12', 23, 3, 10, 'Air Radiator 1L'),
('09330130122021', '2021-12-30', 23, 2, 10, 'Air Radiator'),
('09350112012022', '2022-01-12', 44, 3, 10, 'Lampu Stop Rem'),
('09374012012022', '2022-01-12', 36, 2, 5, 'Busi NGK'),
('09384512012022', '2022-01-12', 23, 3, 5, 'Air Radiator 1L'),
('15075517112021', '2021-11-17', 31, 3, 20, 'Oli Gardan Matic HONDA 120ML'),
('15083117112021', '2021-11-17', 25, 3, 50, 'Lampu Halogen Motor bebek'),
('15085017112021', '2021-11-17', 26, 3, 20, 'Lampu LED Putih motor Bebek'),
('15091517112021', '2021-11-17', 28, 2, 10, 'Kabel Speedometer'),
('15094417112021', '2021-11-17', 27, 3, 30, 'Lampu Stop Rem Motor Bebek'),
('15100317112021', '2021-11-17', 29, 3, 10, 'Oli Gardan 100ML Yamalube'),
('15102117112021', '2021-11-17', 30, 3, 15, 'Oli Gardan 140ML Yamalube'),
('15105517112021', '2021-11-17', 23, 2, 10, 'Air Colant'),
('15325817102021', '2021-10-17', 20, 2, 10, 'Klep Matic'),
('15342017102021', '2021-10-17', 21, 3, 2, 'Piston/Seher Motor '),
('15362017102021', '2021-10-17', 22, 2, 10, 'Packing TOP Motor Vario 110 Genuine Quality'),
('15414817102021', '2021-10-17', 23, 2, 10, 'Pendingin Radiator'),
('15441517102021', '2021-10-17', 24, 3, 10, 'Genuine Part'),
('15523517102021', '2021-10-17', 16, 4, 50, 'Baut ukuran 8-12mm'),
('16094306012022', '2022-01-06', 23, 2, 10, 'Air Radiator'),
('19453917102021', '2021-10-17', 23, 3, 3, 'Air Colant'),
('20322424112021', '2021-11-24', 37, 3, 15, 'Aki Yuasa Kering'),
('20324824112021', '2021-11-24', 39, 2, 30, 'Bearing Motor Bebek'),
('20331824112021', '2021-11-24', 35, 2, 20, 'Busi NGK Untuk Honda'),
('20333624112021', '2021-11-24', 36, 2, 15, 'Busi NGK Yamaha'),
('20335524112021', '2021-11-24', 33, 2, 15, 'Cleaning Injector/Carb'),
('20341724112021', '2021-11-24', 38, 2, 7, 'Gear Set + Rantai Honda'),
('20344524112021', '2021-11-24', 34, 3, 5, 'Klakson Motor'),
('20350824112021', '2021-11-24', 32, 3, 10, 'Oli 4T 1lt'),
('20353824112021', '2021-11-24', 41, 2, 10, 'Vanbelt Set + Roller Honda'),
('20355724112021', '2021-11-24', 40, 2, 10, 'Vanbelt + Roller Yamaha'),
('20374424112021', '2021-11-24', 42, 2, 10, 'Kanvas Ganda Motor Matic Honda'),
('23085517122021', '2021-12-17', 24, 3, 25, 'Oli AHM MPX1'),
('23093217122021', '2021-12-17', 32, 3, 25, 'Oli Enduro Racing 4T');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indeks untuk tabel `barangjasa`
--
ALTER TABLE `barangjasa`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id_kon`);

--
-- Indeks untuk tabel `mekanik`
--
ALTER TABLE `mekanik`
  ADD PRIMARY KEY (`id_mekanik`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_spl`);

--
-- Indeks untuk tabel `tmp_trx`
--
ALTER TABLE `tmp_trx`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indeks untuk tabel `trx`
--
ALTER TABLE `trx`
  ADD PRIMARY KEY (`id_trx`);

--
-- Indeks untuk tabel `trxbarang`
--
ALTER TABLE `trxbarang`
  ADD PRIMARY KEY (`id_trxbrg`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `barangjasa`
--
ALTER TABLE `barangjasa`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id_kon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `mekanik`
--
ALTER TABLE `mekanik`
  MODIFY `id_mekanik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_spl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tmp_trx`
--
ALTER TABLE `tmp_trx`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
