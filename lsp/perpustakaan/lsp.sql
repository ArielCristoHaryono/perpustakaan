-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2024 at 11:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `katalog`
--

CREATE TABLE `katalog` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `isbn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `katalog`
--

INSERT INTO `katalog` (`id`, `judul`, `penulis`, `penerbit`, `isbn`) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '9786028811039'),
(2, 'Dilan: Dia adalah Dilanku Tahun 1990', 'Pidi Baiq', 'Pastel Books', '9786027870938'),
(3, 'Bumi', 'Tere Liye', 'Gramedia Pustaka Utama', '9786020332952'),
(4, 'Pulang', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', '9789799105289'),
(5, 'Perahu Kertas', 'Dewi Lestari', 'Bentang Pustaka', '9786028811046'),
(6, 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'Dewi Lestari', 'Truedee Books', '9789799731242'),
(7, 'Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', '9786020332112'),
(8, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', '9789792262101'),
(9, 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', 'Republika', '9789793213010'),
(10, '5 Cm', 'Donny Dhirgantoro', 'Grasindo', '9789790250995'),
(11, 'Rantau 1 Muara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', '9786020300388'),
(12, 'Rectoverso', 'Dewi Lestari', 'Truedee Books', '9786028994275'),
(13, 'Hafalan Shalat Delisa', 'Tere Liye', 'Republika', '9786028994343'),
(14, 'Gadis Kretek', 'Ratih Kumala', 'Gramedia Pustaka Utama', '9789792267274'),
(15, 'Cerita Cinta Enrico', 'Ayu Utami', 'Kepustakaan Populer Gramedia', '9789799105845'),
(16, 'Seperti Dendam, Rindu Harus Dibayar Tuntas', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '9786020322823'),
(17, 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '9789792202174'),
(18, 'Orang-Orang Biasa', 'Andrea Hirata', 'Bentang Pustaka', '9786022915917'),
(19, 'Rindu', 'Tere Liye', 'Republika', '9786028994973'),
(20, 'Koala Kumal', 'Raditya Dika', 'GagasMedia', '9789797808326'),
(21, 'Marmut Merah Jambu', 'Raditya Dika', 'GagasMedia', '9789797808319'),
(22, 'Cinta Brontosaurus', 'Raditya Dika', 'GagasMedia', '9789797808302'),
(23, 'Critical Eleven', 'Ika Natassa', 'Gramedia Pustaka Utama', '9786020322488'),
(24, 'Twivortiare', 'Ika Natassa', 'Gramedia Pustaka Utama', '9786020321047'),
(25, 'Antologi Rasa', 'Ika Natassa', 'Gramedia Pustaka Utama', '9789792258816'),
(26, 'Garis Waktu', 'Fiersa Besari', 'Media Kita', '9786022906051'),
(27, 'Konspirasi Alam Semesta', 'Fiersa Besari', 'Media Kita', '9786022907607'),
(28, 'Jejak Langkah', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '9789799731220'),
(29, 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '9789799731206'),
(30, 'Anak Semua Bangsa', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '9789799731213'),
(31, 'Rumah Kaca', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '9789799731237'),
(32, 'Hujan Bulan Juni', 'Sapardi Djoko Damono', 'Gramedia Pustaka Utama', '9786020324709'),
(33, 'Kugapai Cintamu', 'Asma Nadia', 'Asma Nadia Publishing', '9786029144261'),
(34, 'Cinta Laki-Laki Biasa', 'Asma Nadia', 'Asma Nadia Publishing', '9786029144278'),
(35, 'Sang Pemimpi', 'Andrea Hirata', 'Bentang Pustaka', '9789791225093'),
(36, 'Edensor', 'Andrea Hirata', 'Bentang Pustaka', '9786028811072'),
(37, 'Maryam', 'Okky Madasari', 'Gramedia Pustaka Utama', '9789792268380'),
(38, 'Pasung Jiwa', 'Okky Madasari', 'Gramedia Pustaka Utama', '9789792268724'),
(39, 'Amba', 'Laksmi Pamuntjak', 'Gramedia Pustaka Utama', '9789792265891'),
(40, 'Aruna dan Lidahnya', 'Laksmi Pamuntjak', 'Gramedia Pustaka Utama', '9789792268137'),
(41, 'Lelaki Harimau', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '9789792234309'),
(42, 'Dari Beranda Rindu', 'Asma Nadia', 'Asma Nadia Publishing', '9786029144353'),
(43, 'Jatuh Cinta Adalah Cara Terbaik untuk Bunuh Diri', 'Bernard Batubara', 'GagasMedia', '9786029225274'),
(44, 'Resign!', 'Almira Bastari', 'Gramedia Pustaka Utama', '9786020378030'),
(45, 'Pretty Little Liars Indonesia', 'Sara Shepard', 'Harpener Publishing', '9786020901394'),
(46, 'Serangkai', 'Intan Paramaditha', 'Gramedia Pustaka Utama', '9786020656874'),
(47, 'Dunia Anna', 'Jostein Gaarder', 'Mizan Pustaka', '9789794337594'),
(48, 'Filosofi Kopi', 'Dewi Lestari', 'Bentang Pustaka', '9789799707507'),
(49, 'Keluarga Cemara', 'Arswendo Atmowiloto', 'Bentang Pustaka', '9786028811496'),
(50, 'Marmut Merah Jambu', 'Raditya Dika', 'Gramedia', '9789787896321');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(11) NOT NULL,
  `pinjamid` int(11) NOT NULL,
  `namapinjam` varchar(100) NOT NULL,
  `tglpinjam` date NOT NULL,
  `tglkembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id`, `pinjamid`, `namapinjam`, `tglpinjam`, `tglkembali`) VALUES
(2, 2, 'amriel', '2024-12-08', '2024-12-15'),
(3, 0, 'amriel', '2024-12-08', '2024-12-15'),
(4, 0, 'baby', '2024-12-15', '2024-12-22'),
(5, 0, 'wuwuw', '2024-12-08', '2024-12-15'),
(6, 0, 'wawa', '2024-12-09', '2024-12-16'),
(7, 0, 'Ariel', '2024-12-01', '2024-12-08'),
(8, 0, 'amriel', '2024-12-01', '2024-12-08'),
(9, 0, 'boss', '2024-12-15', '2024-12-22'),
(10, 0, 'michelle', '2024-12-12', '2024-12-19'),
(11, 0, 'Ariel', '2024-12-30', '2025-01-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `katalog`
--
ALTER TABLE `katalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinjamid` (`pinjamid`),
  ADD KEY `pinjamid_2` (`pinjamid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `katalog`
--
ALTER TABLE `katalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
