-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2020 pada 15.23
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hewan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `Kode` varchar(10) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `Akses` varchar(25) NOT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`Kode`, `Nama`, `password`, `Akses`, `Alamat`, `Gender`) VALUES
('1111', 'Admin', '1111', 'Admin', 'Bandung', 'L'),
('2222', 'Salman', '2222', 'Member', 'Cilegon', 'L'),
('3333', 'Jeri', '3333', 'Member', 'Cibiru', 'L'),
('4444', 'febi', '4444', 'Member', 'Majalengka', 'L'),
('6666', 'Susan', '1234', 'Member', 'Bandung', 'P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelciri`
--

CREATE TABLE `tabelciri` (
  `KodeCiri` varchar(7) NOT NULL,
  `NamaCiri` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelciri`
--

INSERT INTO `tabelciri` (`KodeCiri`, `NamaCiri`) VALUES
('C0001', 'Melahirkan'),
('C0002', 'Bertelur'),
('C0003', 'Ikan'),
('C0004', 'Tumbuhan'),
('C0005', 'Plangton'),
('C0006', 'Insang'),
('C0007', 'Paru-paru'),
('C0008', 'Beracun'),
('C0009', 'Berbahaya'),
('C0010', 'Dapat di konsumsi'),
('C0011', 'Papula'),
('C0012', 'Capit'),
('C0013', 'Berbadan Besar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelhewan`
--

CREATE TABLE `tabelhewan` (
  `KodeHewan` varchar(7) NOT NULL,
  `NamaHewan` varchar(20) DEFAULT NULL,
  `Gambar` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelhewan`
--

INSERT INTO `tabelhewan` (`KodeHewan`, `NamaHewan`, `Gambar`) VALUES
('H0001', 'Udang', NULL),
('H0002', 'Kepiting', NULL),
('H0003', 'Bintang Laut', NULL),
('H0004', 'Paus', NULL),
('H0005', 'Hiu', NULL),
('H0006', 'Gurita', NULL),
('H0007', 'Lumba-lumba', NULL),
('H0008', 'Lobster', NULL),
('H0009', 'Bulu Babi', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelpertanyaan`
--

CREATE TABLE `tabelpertanyaan` (
  `KodePertanyaan` varchar(7) NOT NULL,
  `Pertanyaan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelpertanyaan`
--

INSERT INTO `tabelpertanyaan` (`KodePertanyaan`, `Pertanyaan`) VALUES
('P0001', 'Apakah Hewan ini melahirkan?'),
('P0002', 'Apakah hewan ini bertelur?'),
('P0003', 'Apakah hewan ini pemakan ikan?'),
('P0004', 'Apakah hewan ini pemakan tumbuhan?'),
('P0005', 'Apakah hewan ini pemakan plangton?'),
('P0006', 'Apakah hewan ini bernafas dengan insang?'),
('P0007', 'Apakah hewan ini bernafas dengan paru - paru?'),
('P0008', 'Apakah hewan ini bernafas dengan papula?'),
('P0009', 'Apakah hewan ini beracun?'),
('P0010', 'Apakah hewan ini berbahaya?'),
('P0011', 'Apakah hewan ini dapat di konsumsi?'),
('P0012', 'Apakah hewan ini memiliki capit?'),
('P0013', 'Apakah hewan ini berbadan besar?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelrule`
--

CREATE TABLE `tabelrule` (
  `KodeRule` varchar(7) NOT NULL,
  `KodePertanyaan1` varchar(50) DEFAULT NULL,
  `KodeHewan` varchar(7) DEFAULT NULL,
  `Nama Hewan` varchar(15) DEFAULT NULL,
  `Gambar` varchar(100) DEFAULT NULL,
  `Vidio` varchar(100) DEFAULT NULL,
  `Penjelasan` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelrule`
--

INSERT INTO `tabelrule` (`KodeRule`, `KodePertanyaan1`, `KodeHewan`, `Nama Hewan`, `Gambar`, `Vidio`, `Penjelasan`) VALUES
('R0001', 'P0002,P0005,P0006,P0010', 'H0001', 'Udang', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\udang.jpg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\Udang.avi', 'Udang adalah binatang yang hidup di perairan, khususnya sungai, laut, atau danau. Udang dapat ditemukan di hampir semua \"genangan\" air yang berukuran besar baik air tawar, air payau, maupun air asin pada kedalaman bervariasi, dari dekat permukaan hingga beberapa ribu meter di bawah permukaan.'),
('R0002', 'P0002,P0005,P0006,P0010,P0012', 'H0002', 'Kepiting', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\kepiting.jpg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\Kepiting.avi', 'Kepiting adalah binatang anggota krustasea berkaki sepuluh dari upabangsa Brachyura, yang dikenal mempunyai \"ekor\" yang sangat pendek, atau yang perutnya sama sekali tersembunyi di bawah dada. Tubuh kepiting dilindungi oleh cangkang yang sangat keras, tersusun dari kitin, dan dipersenjatai dengan sepasang capit.'),
('R0003', 'P0002,P0003,P0008,P0009,P0011', 'H0003', 'Bintang Laut', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\bintang laut.jpeg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\BintangLaut.avi', 'Bintang laut, walaupun dalam bahasa Inggris ia dikenal dengan sebutan starfish, hewan ini sangat jauh hubungannya dengan ikan. Bintang laut merupakan hewan invertebrata yang termasuk dalam filum Echinodermata, dan kelas Asteroidea'),
('R0004', 'P0001,P0003,P0007,P0009,P0011,P0013', 'H0004', 'Paus', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\paus.jpg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\Paus.avi', 'Paus atau lodan adalah kelompok mamalia yang hidup di lautan. Sebutan \"paus\" diberikan pada anggota bangsa Cetacea yang berukuran besar. Paus bukan tergolong dalam keluarga ikan. Paus mempunyai ciri-ciri sebagai berikut: bernapas menggunakan paru-par'),
('R0005', 'P0001,P0003,P0006,P0009', 'H0005', 'Hiu', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\hiu.jpg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\Hiu.avi', 'Ikan Hiu adalah sekelompok (superordo Selachimorpha) ikan dengan kerangka tulang rawan yang lengkap dan tubuh yang ramping. Mereka bernapas dengan menggunakan lima liang insang (kadang-kadang enam atau tujuh, tergantung pada spesiesnya) di samping, atau dimulai sedikit di belakang, kepalanya. Hiu mempunyai tubuh yang dilapisi kulit dermal denticles untuk melindungi kulit mereka dari kerusakan, dari parasit, dan untuk menambah dinamika air.Mereka mempunyai beberapa deret gigi yang dapat digantikan.'),
('R0006', 'P0001,P0003,P0006,P0010', 'H0006', 'Gurita', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\gurita.jpg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\Gurita.avi', 'Gurita adalah hewan moluska dari kelas Cephalopoda, ordo Octopoda dengan terumbu karang di samudra sebagai habitat utama. Gurita terdiri dari 289 spesies yang mencakup sepertiga dari total spesies kelas Cephalopoda. Gurita dalam bahasa Inggris disebut Octopus yang sering hanya mengacu pada hewan dari genus Octopus.'),
('R0007', 'P0001,P0003,P0007,P0009', 'H0007', 'Lumba - Lumba', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\lumba-lumba.jpg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\LumbaLumba.avi', 'Lumba-lumba adalah mamalia laut yang sangat cerdas, selain itu sistem alamiah yang melengkapi tubuhnya sangat kompleks. Sehingga banyak teknologi yang terinspirasi dari lumba-lumba.'),
('R0008', 'P0002,P0003,P0006,P0010,P0012', 'H0008', 'Lobster', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\lobster.jpg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\Lobster.avi', 'Lobster air tawar adalah crustacea yang menyerupai lobster dan hidup di air tawar yang tidak dapat membeku sampai ke dasar. Ikan ini dapat hidup di berbagai tempat di mana ada air tawar yang mengalir dan memiliki tempat untuk berlindung'),
('R0009', 'P0002,P0004,P0006,P0008', 'H0009', 'Bulu Babi', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\Gambar\\bulubabi.jpg', 'C:\\Users\\MSI\\Downloads\\Projek sispak\\.AVI\\BuluBabi.avi', 'Landak laut atau disebut juga bulu babi (Echinoidea) merupakan hewan laut yang berbentuk bundar dan memiliki duri pada kulitnya yang dapat digerakkan. Binatang ini terbagi menjadi sekitar 950 spesies dan dapat ditemukan mulai dari daerah pasang surut sampai di kedalaman 5.000 meter.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Kode`);

--
-- Indeks untuk tabel `tabelciri`
--
ALTER TABLE `tabelciri`
  ADD PRIMARY KEY (`KodeCiri`);

--
-- Indeks untuk tabel `tabelhewan`
--
ALTER TABLE `tabelhewan`
  ADD PRIMARY KEY (`KodeHewan`);

--
-- Indeks untuk tabel `tabelpertanyaan`
--
ALTER TABLE `tabelpertanyaan`
  ADD PRIMARY KEY (`KodePertanyaan`);

--
-- Indeks untuk tabel `tabelrule`
--
ALTER TABLE `tabelrule`
  ADD PRIMARY KEY (`KodeRule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
