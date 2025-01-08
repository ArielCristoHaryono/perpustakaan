-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2025 at 03:05 PM
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
-- Database: `lsprev`
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
(1, 'Kangen', 'Tere Liye', 'Republika Penerbit', '9786028997858'),
(2, 'jojon', 'jin', 'media', '453466'),
(3, 'jijin', 'john', 'johntor', '453466'),
(4, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '9786028811039'),
(5, 'Dilan: Dia adalah Dilanku Tahun 1990', 'Pidi Baiq', 'Pastel Books', '9786027870938'),
(6, 'Bumi', 'Tere Liye', 'Gramedia Pustaka Utama', '9786020332952'),
(7, 'Pulang', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', '9789799105289'),
(8, 'Perahu Kertas', 'Dewi Lestari', 'Bentang Pustaka', '9786028811046'),
(9, 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'Dewi Lestari', 'Truedee Books', '9789799731242'),
(10, 'Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', '9786020332112'),
(11, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', '9789792262101'),
(12, 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', 'Republika', '9789793213010'),
(13, '5 Cm', 'Donny Dhirgantoro', 'Grasindo', '9789790250995'),
(14, 'Rantau 1 Muara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', '9786020300388'),
(15, 'Rectoverso', 'Dewi Lestari', 'Truedee Books', '9786028994275'),
(16, 'Hafalan Shalat Delisa', 'Tere Liye', 'Republika', '9786028994343'),
(17, 'Gadis Kretek', 'Ratih Kumala', 'Gramedia Pustaka Utama', '9789792267274'),
(18, 'Cerita Cinta Enrico', 'Ayu Utami', 'Kepustakaan Populer Gramedia', '9789799105845'),
(19, 'Seperti Dendam, Rindu Harus Dibayar Tuntas', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '9786020322823'),
(20, 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '9789792202174'),
(21, 'Orang-Orang Biasa', 'Andrea Hirata', 'Bentang Pustaka', '9786022915917'),
(22, 'Rindu', 'Tere Liye', 'Republika', '9786028994973'),
(23, 'Koala Kumal', 'Raditya Dika', 'GagasMedia', '9789797808326'),
(24, 'Marmut Merah Jambu', 'Raditya Dika', 'GagasMedia', '9789797808319'),
(25, 'Cinta Brontosaurus', 'Raditya Dika', 'GagasMedia', '9789797808302'),
(26, 'Critical Eleven', 'Ika Natassa', 'Gramedia Pustaka Utama', '9786020322488'),
(27, 'Twivortiare', 'Ika Natassa', 'Gramedia Pustaka Utama', '9786020321047'),
(28, 'Antologi Rasa', 'Ika Natassa', 'Gramedia Pustaka Utama', '9789792258816'),
(29, 'Garis Waktu', 'Fiersa Besari', 'Media Kita', '9786022906051'),
(30, 'Konspirasi Alam Semesta', 'Fiersa Besari', 'Media Kita', '9786022907607'),
(31, 'Jejak Langkah', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '9789799731220'),
(32, 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '9789799731206'),
(33, 'Anak Semua Bangsa', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '9789799731213'),
(34, 'Rumah Kaca', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '9789799731237'),
(35, 'Hujan Bulan Juni', 'Sapardi Djoko Damono', 'Gramedia Pustaka Utama', '9786020324709'),
(36, 'Kugapai Cintamu', 'Asma Nadia', 'Asma Nadia Publishing', '9786029144261'),
(37, 'Cinta Laki-Laki Biasa', 'Asma Nadia', 'Asma Nadia Publishing', '9786029144278'),
(38, 'Sang Pemimpi', 'Andrea Hirata', 'Bentang Pustaka', '9789791225093'),
(39, 'Edensor', 'Andrea Hirata', 'Bentang Pustaka', '9786028811072'),
(40, 'Maryam', 'Okky Madasari', 'Gramedia Pustaka Utama', '9789792268380'),
(41, 'Pasung Jiwa', 'Okky Madasari', 'Gramedia Pustaka Utama', '9789792268724'),
(42, 'Amba', 'Laksmi Pamuntjak', 'Gramedia Pustaka Utama', '9789792265891'),
(43, 'Aruna dan Lidahnya', 'Laksmi Pamuntjak', 'Gramedia Pustaka Utama', '9789792268137'),
(44, 'Lelaki Harimau', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '9789792234309'),
(45, 'Dari Beranda Rindu', 'Asma Nadia', 'Asma Nadia Publishing', '9786029144353'),
(46, 'Jatuh Cinta Adalah Cara Terbaik untuk Bunuh Diri', 'Bernard Batubara', 'GagasMedia', '9786029225274'),
(47, 'Resign!', 'Almira Bastari', 'Gramedia Pustaka Utama', '9786020378030'),
(48, 'Pretty Little Liars Indonesia', 'Sara Shepard', 'Harpener Publishing', '9786020901394'),
(49, 'Serangkai', 'Intan Paramaditha', 'Gramedia Pustaka Utama', '9786020656874'),
(50, 'Dunia Anna', 'Jostein Gaarder', 'Mizan Pustaka', '9789794337594'),
(51, 'Filosofi Kopi', 'Dewi Lestari', 'Bentang Pustaka', '9789799707507'),
(52, 'Keluarga Cemara', 'Arswendo Atmowiloto', 'Bentang Pustaka', '9786028811496');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `namapinjam` varchar(100) NOT NULL,
  `tglpinjam` date NOT NULL,
  `tglkembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id`, `bookid`, `namapinjam`, `tglpinjam`, `tglkembali`) VALUES
(34, 3, 'andrew', '2025-01-07', '2025-01-14'),
(35, 1, 'rizal', '2025-01-07', '2025-01-14'),
(38, 3, 'ryan', '2025-01-07', '2025-01-14'),
(39, 50, 'andrew', '2025-01-07', '2025-01-14'),
(40, 51, 'ryan', '2025-01-07', '2025-01-14'),
(41, 49, 'john', '2025-01-07', '2025-01-14'),
(42, 39, 'kampret', '2025-01-07', '2025-01-14'),
(44, 40, 'john', '2025-01-08', '2025-01-15');

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
  ADD KEY `fk_pinjam_katalog` (`bookid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `katalog`
--
ALTER TABLE `katalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `fk_pinjam_katalog` FOREIGN KEY (`bookid`) REFERENCES `katalog` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
