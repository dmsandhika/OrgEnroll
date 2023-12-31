-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2023 pada 03.07
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalprojek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `foto_header` varchar(45) DEFAULT NULL,
  `foto_profile` varchar(45) DEFAULT NULL,
  `nama` varchar(45) NOT NULL,
  `judul` varchar(45) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_artikel` text NOT NULL,
  `idkategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `foto_header`, `foto_profile`, `nama`, `judul`, `tanggal`, `isi_artikel`, `idkategori`) VALUES
(2, '', '', 'Rega', 'sasasaas', '2023-11-07', 'asasasasaassasasasaaasasas', 4),
(3, 'header_20231120_12-22-56.png', 'profile_20231120_12-22-56.png', 'sasa', 'asaassdadsasd', '2023-11-13', 'dadadasdasdasda', 2),
(4, 'header_20231120_12-55-58.png', 'profile_20231120_12-55-58.png', 'ssssssssssssssssssssssssssss', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2023-11-30', 'asdasdsaaaaaaaaaaaaaaaaaaaaaaaaa', 4),
(5, '', '', 'Rangga Ekklesia Gabriel Anugrahnu', 'tes123', '2023-11-23', 'tess update', 1),
(6, '', '', 'aaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', '2023-11-23', 'aaaaaaaaaaaaaaaaaa', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `kode`, `nama`) VALUES
(1, 'TI01', 'Teknik informatika '),
(2, 'BI01', 'Bahasa Inggris '),
(3, 'TM010', 'Teknik Mesin'),
(4, 'AK011', 'Akuntansi'),
(5, 'TE013', 'Teknik Elektro'),
(6, 'TS014', 'Teknik Sipil'),
(7, 'FH015', 'Hukum'),
(8, 'FK016', 'Kedokteran'),
(9, 'TK018', 'Teknik.Kimia'),
(10, 'FM019', 'Manajemen'),
(11, 'FP020', 'Pertanian'),
(12, 'PKG21', 'Psikologi'),
(13, 'FAR22', 'Farmasi'),
(14, 'GEO23', 'Geofisika'),
(15, 'ASK24', 'Arsitektur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Olahraga'),
(2, 'Agama'),
(3, 'Kesenian'),
(4, 'Kemahasiswaan'),
(5, 'Penalaran'),
(6, 'Sosial'),
(7, 'tes123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `idjurusan` int(11) NOT NULL,
  `idorganisasi` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `nohp` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tanggal_pendaftaran` date NOT NULL,
  `cv` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `barcode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `idjurusan`, `idorganisasi`, `nama`, `semester`, `gender`, `nohp`, `email`, `tanggal_pendaftaran`, `cv`, `foto`, `barcode`) VALUES
(4, 1, 11, 'Karin Alisya', '3', 'P', '08956789543', 'alisya@gmail.com', '2023-11-01', NULL, NULL, NULL),
(5, 5, 7, 'Amaldi Baiki', '4', 'L', '082218994203', 'amaldi@gmail.com', '0000-00-00', NULL, NULL, NULL),
(6, 6, 11, 'Gerry hafidz', '5', 'L', '083124567392', 'hafidz@icloud.com', '0000-00-00', NULL, NULL, NULL),
(7, 7, 1, 'Bela Oktavia', '2', 'P', '082242021899', 'belaokta@icloud.com', '0000-00-00', NULL, NULL, NULL),
(8, 8, 3, 'Sengon Andrean', '4', 'L', '08956734321', 'Sengon@icloud.com', '0000-00-00', NULL, NULL, NULL),
(9, 2, 3, 'Monica ulandari', '2', 'P', '082234562345', 'monica@gmail.com', '0000-00-00', NULL, NULL, NULL),
(10, 9, 6, 'Imam rafi', '3', 'L', '082243567493', 'imamrafi@gmail.com', '0000-00-00', NULL, NULL, NULL),
(11, 10, 6, 'Shaffa', '2', 'P', '083121364895', 'Shaffa@gmail.com', '0000-00-00', NULL, NULL, NULL),
(12, 11, 5, 'Nabila tamara', '5', 'P', '08956789765', 'tamara@gmail.com', '0000-00-00', NULL, NULL, NULL),
(13, 12, 11, 'Abdiansyah', '4', 'L', '082218774203', 'Abdiasnyah@gmail.com', '0000-00-00', NULL, NULL, NULL),
(14, 13, 15, 'Ganza', '3', 'L', '083124563568', 'ganza@icloud.com', '0000-00-00', NULL, NULL, NULL),
(15, 14, 10, 'Silvy Dwi', '6', 'P', '082243896750', 'silvy@icloud.com', '0000-00-00', NULL, NULL, NULL),
(16, 15, 4, 'Raihan diaz', '6', 'L', '08956734765', 'raihan@gmail.com', '0000-00-00', NULL, NULL, NULL),
(18, 3, 14, 'Jerstang', '3', 'L', '082243567421', 'jerstang@gmail.com', '0000-00-00', NULL, NULL, NULL),
(19, 4, 15, 'Lidya Safitri', '5', 'P', '083121343425', 'Safitri16@gmail.com', '0000-00-00', NULL, NULL, NULL),
(32, 2, 14, 'Rangga Ekklesia Gabriel Anugrahnu', '12', 'L', '0988785567', 'admin@email.com', '2023-11-23', '', '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi`
--

CREATE TABLE `organisasi` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `deskripsi` text NOT NULL,
  `email` varchar(45) NOT NULL,
  `hp` varchar(45) NOT NULL,
  `idkategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `organisasi`
--

INSERT INTO `organisasi` (`id`, `kode`, `nama`, `deskripsi`, `email`, `hp`, `idkategori`) VALUES
(1, 'OL001', 'Futsal', 'Organisasi Futsal', 'futsal@gmail.com', '089765438765', 1),
(2, 'OL016', 'Bulu Tangkis', 'Organisasi Bulu tangkis', 'bultang@gmail.com', '08973748342423', 1),
(3, 'OL002', 'Ukm Bola Basket', 'Ini adalah Organisasi Basket', 'Basket@gmail.com', '083128353542', 1),
(4, 'PM003', 'Badan Eksekutif Mahasiswa(BEM)', 'Ini adalah Organisasi BEM', 'BEM@gmail.com', '08956432753', 4),
(5, 'PM004', 'Senat Mahasiswa', 'Ini adalah organisasi Senat Mahasiswa', 'senat@gmail.com', '082218443205', 4),
(6, 'PM005', 'Badan Perwakilan Mahasiswa(BPM)', 'Ini adalah organisasi BPM', 'BPM@gmail.com', '082262842739', 4),
(7, 'OL006', 'Ukm Pencak Silat', 'Ini adalah organisasi Pencak Silat', 'pencaksilat@gmail.com', '083128283245', 1),
(8, 'OL007', 'Ukm Bola volley', 'Ini adalah organisasi Bola Volley', 'Volley@gmail.com', '083138346584', 1),
(9, 'PL008', 'Ukm Robotik', 'Ini adalah organisasi robotik', 'Robotik@gmail.com', '08953762847', 5),
(10, 'PL009', 'Lembaga Pers mahasiswa', 'Ini adalah Organisasi Lembaga Pers Mahasiswa', 'Pers@gmail.com', '08958462418', 5),
(11, 'Ag010', 'Himpunan Mahasiswa islam(HMI)', 'Ini adalah Himpunan Mahasiswa Islam', 'HMI@gmail.com', '082237528190', 2),
(12, 'Ag011', 'Gerakan  Mahasiswa Kristen Indonesia(GMKI)', 'Ini adalah Gerakan  Mahasiswa Kristen Indonesia(GMKI)', 'GMKI@gmail.com', '082217428152', 2),
(13, 'Sn012', 'Ukm Musik', 'Ini adalah organisasi Ukm Musik', 'music@gmail.com', '083126263861', 3),
(14, 'Sn013', 'Ukm seni rupa dan fotografi', 'Ini adalah organisasi Ukm seni rupa dan fotografi', 'senirupa@gmail.com', '082218337101', 3),
(15, 'PM014', 'Himpunan mahaiswa  jurusan(HMJ)', 'Ini adalah organisasi Himpunan mahaiswa  jurusan(HMJ)', 'HMJ@gmail.com', '087863533945', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `idmahasiswa` int(11) NOT NULL,
  `status_pendaftaran` enum('diproses','diterima','ditolak') NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `idmahasiswa`, `status_pendaftaran`, `keterangan`) VALUES
(2, 10, 'ditolak', 'testtttttttttttttttt'),
(3, 9, 'diproses', ''),
(4, 18, 'diproses', NULL),
(5, 19, 'ditolak', NULL),
(6, 4, 'diproses', NULL),
(7, 5, 'diproses', NULL),
(8, 6, 'diproses', NULL),
(9, 7, 'diproses', NULL),
(10, 8, 'diproses', NULL),
(11, 11, 'diproses', NULL),
(12, 12, 'diproses', NULL),
(13, 13, 'ditolak', NULL),
(14, 14, 'ditolak', NULL),
(15, 15, 'diproses', NULL),
(16, 16, 'diproses', NULL),
(17, 4, 'diproses', 'diprosesassaassasa'),
(19, 32, 'diproses', 'aaaaaaaaa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idkategori` (`idkategori`) USING BTREE;

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mahasiswa_jurusan` (`idjurusan`),
  ADD KEY `fk_organisasi` (`idorganisasi`);

--
-- Indeks untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_organisasi_kategori1` (`idkategori`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pendaftaran_mahasiswa1` (`idmahasiswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`id`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_jurusan` FOREIGN KEY (`idjurusan`) REFERENCES `jurusan` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_organisasi` FOREIGN KEY (`idorganisasi`) REFERENCES `organisasi` (`id`);

--
-- Ketidakleluasaan untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  ADD CONSTRAINT `fk_organisasi_kategori1` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`id`) ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `fk_pendaftaran_mahasiswa1` FOREIGN KEY (`idmahasiswa`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
