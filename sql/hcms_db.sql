-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 03:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'admin@barata.id', 1669337934),
(2, '::1', 'admin@barata.id', 1669337936);

-- --------------------------------------------------------

--
-- Table structure for table `md_bagian`
--

CREATE TABLE `md_bagian` (
  `idmd_bagian` int(11) NOT NULL,
  `kodebagian` varchar(100) DEFAULT NULL,
  `namabagian` varchar(100) DEFAULT NULL,
  `idmd_bidang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `md_bidang`
--

CREATE TABLE `md_bidang` (
  `idmd_bidang` int(11) NOT NULL,
  `kodebidang` varchar(100) DEFAULT NULL,
  `namabidang` varchar(100) DEFAULT NULL,
  `idmd_organisasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_bidang`
--

INSERT INTO `md_bidang` (`idmd_bidang`, `kodebidang`, `namabidang`, `idmd_organisasi`) VALUES
(1, NULL, 'BIRO ENJINIRING', 7),
(2, NULL, 'BIRO HUKUM', 9),
(3, NULL, 'BAGIAN ORGANISASI & TATA LAKSANA', 8),
(4, NULL, 'BIDANG PENGEMBANGAN ORGANISASI & SDM', 8),
(5, NULL, 'BAGIAN PELATIHAN & ASESMEN', 8),
(6, NULL, 'BIDANG PERSONALIA & HUBUNGAN INDUSTRIAL', 8),
(7, NULL, 'BIRO HUMAN CAPITAL', 8),
(8, NULL, 'BAGIAN REMUNERASI & PELAYANAN PERSONIL', 8),
(9, NULL, 'BIRO KEUANGAN & AKUNTANSI', 10),
(10, NULL, 'BIDANG AKUNTANSI & PERPAJAKAN', 10),
(11, NULL, 'BIDANG RESTRUKTURISASI', 10),
(12, NULL, 'BIDANG KEUANGAN', 10),
(13, NULL, 'BIDANG KEUANGAN ', 10),
(14, NULL, 'BAGIAN ANGGARAN & PENDANAAN', 10),
(15, NULL, 'BAGIAN EVALUASI PELAPORAN', 10),
(16, NULL, 'BAGIAN PERBENDAHARAAN', 10),
(17, NULL, 'BAGIAN PERPAJAKAN', 10),
(18, NULL, 'BIDANG PENGELOLAAN SISTEM SUPPLY CHAIN & ADMINISTRASI KONTRAK', 12),
(19, NULL, 'BIDANG PERENCANAAN SUPPLY CHAIN', 12),
(20, NULL, 'BAGIAN ADMINISTRASI PEMBELIAN', 12),
(21, NULL, 'BIRO MANAJEMEN SUPPLY CHAIN', 12),
(22, NULL, 'BAGIAN ADMINISTRASI & VERIFIKASI', 12),
(23, NULL, 'BAGIAN LOGISTIK', 12),
(24, NULL, 'BAGIAN RISET PRODUK', 11),
(25, NULL, 'BIRO PENGEMBANGAN USAHA', 11),
(26, NULL, 'BIDANG PERENCANAAN KORPORASI', 11),
(27, NULL, 'BIDANG KERJASAMA USAHA', 11),
(28, NULL, 'BAGIAN QUALITY ASSURANCE', 13),
(29, NULL, 'BIDANG PENGEMBANGAN SISTEM', 13),
(30, NULL, 'BIRO SISTEM, MUTU & K3LH', 13),
(31, NULL, 'BAGIAN SISTEM TIK / SAP', 13),
(32, NULL, 'BIDANG SHE', 13),
(33, NULL, 'DIREKTORAT PEMASARAN', 4),
(34, NULL, 'BIDANG OPERASI', 15),
(35, NULL, 'BIDANG KEUANGAN & SDM', 15),
(36, NULL, 'BIDANG PEMASARAN', 15),
(37, NULL, 'BAGIAN ADMINISTRASI PENJUALAN', 15),
(38, NULL, 'BAGIAN ADMINISTRASI KEUANGAN', 14),
(39, NULL, 'BAGIAN GUDANG', 14),
(40, NULL, 'BAGIAN INVENTORI', 14),
(41, NULL, 'BAGIAN PENGENDALIAN MATERIAL & PRODUKSI', 14),
(42, NULL, 'BAGIAN PERAWATAN & PERBAIKAN', 14),
(43, NULL, 'BAGIAN PERBAIKAN', 14),
(44, NULL, 'BAGIAN PERENCANAAN MATERIAL & PRODUKSI', 14),
(45, NULL, 'BAGIAN PERENCANAAN PEMELIHARAAN', 14),
(46, NULL, 'BAGIAN PERENCANAAN PRODUKSI & EVALUASI', 14),
(47, NULL, 'BAGIAN SUPPLY CHAIN', 14),
(48, NULL, 'BAGIAN TECHNICAL ADVISOR', 14),
(49, NULL, 'BAGIAN TEKNIK', 14),
(50, NULL, 'BIDANG AUDIT KEUANGAN', 14),
(51, NULL, 'BIDANG KEUANGAN & SDM', 14),
(52, NULL, 'BIDANG OPERASI', 14),
(53, NULL, 'BIDANG PEMASARAN', 14),
(54, NULL, 'BIDANG PEMELIHARAAN & PERBAIKAN', 14),
(55, NULL, 'BIDANG PPP & INVENTORI', 14),
(56, NULL, 'DIVISI INDUSTRI KOMPONEN & PERMESINAN', 14),
(57, NULL, 'UNIT QSHE', 14),
(58, NULL, 'BIDANG OPERASI', 16),
(59, NULL, 'BIDANG PEMASARAN', 16),
(60, NULL, 'BAGIAN ADMINISTRASI & KEUANGAN', 18),
(61, NULL, 'BAGIAN ESTIMATOR', 18),
(62, NULL, 'BAGIAN GUDANG', 18),
(63, NULL, 'BAGIAN KAWASAN BERIKAT', 18),
(64, NULL, 'BAGIAN PEMELIHARAAN & PERBAIKAN', 18),
(65, NULL, 'BAGIAN PENGADAAN', 18),
(66, NULL, 'BAGIAN PENGIRIMAN LOGISTIK', 18),
(67, NULL, 'BAGIAN PERENCANAAN & PENGENDALIAN PRODUKSI', 18),
(68, NULL, 'BAGIAN PERENCANAAN MATERIAL', 18),
(69, NULL, 'BAGIAN PERENCANAAN PRODUKSI & EVALUASI', 18),
(70, NULL, 'BAGIAN PERSONALIA & UMUM', 18),
(71, NULL, 'BAGIAN TEKNIK', 18),
(72, NULL, 'BAGIAN TEKNOLOGI PENGELASAN & PEMELIHARAAN', 18),
(73, NULL, 'BIDANG KEUANGAN & SDM', 18),
(74, NULL, 'BIDANG OPERASI', 18),
(75, NULL, 'BIDANG PEMASARAN', 18),
(76, NULL, 'BIDANG PPP & INVENTORI', 18),
(77, NULL, 'DIVISI PEMBANGKIT', 18),
(78, NULL, 'UNIT QSHE', 18),
(79, NULL, 'BAGIAN ADMINISTRASI KEUANGAN', 17),
(80, NULL, 'BAGIAN PEMELIHARAAN & PERBAIKAN', 17),
(81, NULL, 'BAGIAN PERENCANAAN MATERIAL & PRODUKSI', 17),
(82, NULL, 'BAGIAN PERSONALIA & UMUM', 17),
(83, NULL, 'BAGIAN TECHNICAL ADVISOR', 17),
(84, NULL, 'BAGIAN TEKNIK', 17),
(85, NULL, 'BIDANG KEUANGAN & SDM', 17),
(86, NULL, 'BIDANG PEMASARAN', 17),
(87, NULL, 'BIDANG PPP & INVENTORI', 17),
(88, NULL, 'DIVISI SUMBER DAYA AIR', 17),
(89, NULL, 'UNIT QSHE', 17),
(90, NULL, 'BAGIAN PRODUKSI', 21),
(91, NULL, 'PABRIK HIDROMEKANIKAL TEGAL', 21),
(92, NULL, 'UNIT PENGENDALIAN KUALITAS', 21),
(93, NULL, 'BAGIAN PRODUKSI FABRIKASI', 22),
(94, NULL, 'BAGIAN PRODUKSI KOMPONEN', 22),
(95, NULL, 'BAGIAN PRODUKSI PABRIKASI', 22),
(96, NULL, 'BAGIAN PRODUKSI PERMESINAN', 22),
(97, NULL, 'PRODUKSI FABRIKASI', 22),
(98, NULL, 'PRODUKSI KOMPONEN', 22),
(99, NULL, 'UNIT PENGENDALIAN KUALITAS', 22),
(100, NULL, 'BAGIAN KEUANGAN & UMUM', 23),
(101, NULL, 'BAGIAN PPP & INVENTORI', 23),
(102, NULL, 'BAGIAN PRODUKSI', 23),
(103, NULL, 'UNIT PENGENDALIAN KUALITAS', 23),
(104, NULL, 'BAGIAN PRODUKSI 1', 19),
(105, NULL, 'BAGIAN PRODUKSI PENGECORAN 1', 19),
(106, NULL, 'PABRIK PENGECORAN', 19),
(107, NULL, 'UNIT PENGENDALIAN KUALITAS', 19),
(108, NULL, 'BAGIAN PRODUKSI 2', 19),
(109, NULL, 'BAGIAN PRODUKSI PENGECORAN 2', 19),
(110, NULL, 'BAGIAN PRODUKSI 1', 20),
(111, NULL, 'BAGIAN PRODUKSI 2', 20),
(112, NULL, 'BAGIAN PRODUKSI 3', 20),
(113, NULL, 'BAGIAN PRODUKSI 4', 20),
(114, NULL, 'BAGIAN PRODUKSI PABRIK PERALATAN INDUSTRI 1', 20),
(115, NULL, 'BAGIAN PRODUKSI PABRIK PERALATAN INDUSTRI 2', 20),
(116, NULL, 'PABRIK PERALATAN INDUSTRI', 20),
(117, NULL, 'UNIT PENGENDALIAN KUALITAS', 20),
(118, NULL, 'BAGIAN PRODUKSI PRECISION & HEAVY MACHINERY', 24),
(119, NULL, 'BAGIAN PRODUKSI 5', 24),
(120, NULL, 'PABRIK PRECISION & HEAVY MACHINERY', 24),
(121, NULL, 'UNIT PENGENDALIAN KUALITAS', 24),
(122, NULL, 'BIDANG KEPATUHAN & MANAJEMEN RISIKO', 6),
(123, NULL, 'SATUAN PENGAWASAN INTERN', 6),
(124, NULL, 'BIDANG AUDIT KEUANGAN', 6),
(125, NULL, 'BAGIAN KESEKRETARIATAN', 5),
(126, NULL, 'BAGIAN MEDIA RALATION & PKBL', 5),
(127, NULL, 'BAGIAN UMUM & KAWASAN', 5),
(128, NULL, 'BIDANG KOMUNIKASI KORPORAT', 5),
(129, NULL, 'BIDANG PENGELOLAAN ASET', 5),
(130, NULL, 'BIDANG UMUM & KESEKRETARIATAN', 5),
(131, NULL, 'SEKRETARIAT PERUSAHAAN', 5);

-- --------------------------------------------------------

--
-- Table structure for table `md_grade`
--

CREATE TABLE `md_grade` (
  `idmd_grade` int(11) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  `gajipokok` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_grade`
--

INSERT INTO `md_grade` (`idmd_grade`, `grade`, `gajipokok`) VALUES
(1, 1, '4500000'),
(2, 2, '4900000'),
(3, 3, '5900000'),
(4, 4, '6900000'),
(5, 5, '7900000'),
(6, 6, '8900000'),
(7, 7, '9900000'),
(8, 8, '10900000'),
(9, 9, '11900000'),
(10, 10, '13000000'),
(11, 11, '14000000'),
(12, 12, '15000000');

-- --------------------------------------------------------

--
-- Table structure for table `md_jabatan`
--

CREATE TABLE `md_jabatan` (
  `idmd_jabatan` int(11) NOT NULL,
  `namajabatan` varchar(100) DEFAULT NULL,
  `idmd_bidang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `md_karyawan`
--

CREATE TABLE `md_karyawan` (
  `npk` int(11) NOT NULL,
  `idmd_marital` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tempatlahir` varchar(100) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `jeniskelamin` varchar(100) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `nik` varchar(100) DEFAULT NULL,
  `alamatsekarang` varchar(200) DEFAULT NULL,
  `nohp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mulaibekerja` date DEFAULT NULL,
  `tgldiangkat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_karyawan`
--

INSERT INTO `md_karyawan` (`npk`, `idmd_marital`, `nama`, `tempatlahir`, `tgllahir`, `jeniskelamin`, `agama`, `nik`, `alamatsekarang`, `nohp`, `email`, `mulaibekerja`, `tgldiangkat`) VALUES
(123, 'BK', 'Dodi Setiawan', 'Banyuwangi', '2022-11-18', 'LK', 'HINDU', '123', 'Dusun SumberGroto Rt 05 Rw 02  Desa Rejoagung Kecamatan Srono Kabupaten Banyuwangi', '080808878', 'dodisetiawan.ti9.poliwangi@gmail.com', '2022-11-25', '2022-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `md_level`
--

CREATE TABLE `md_level` (
  `idmd_level` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `namalevel` varchar(150) DEFAULT NULL,
  `mappingso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_level`
--

INSERT INTO `md_level` (`idmd_level`, `level`, `namalevel`, `mappingso`) VALUES
(1, 0, 'Direktorat', 'Direktorat'),
(2, 1, 'General Manager / Sekretaris Perusahaan / Kepala SPI', 'Organisasi'),
(3, 2, 'Senior Manager / Senior Auditor / Senior Coorporate Legal', 'Bidang'),
(4, 3, 'Manager / Kepala Unit QSHE / Coorporate Legal', 'Bagian'),
(5, 4, 'Supervisor', 'Sub Bagian'),
(6, 5, 'Staf / Officer / Fungsional Lainnya', 'Staf'),
(7, 6, 'Pelaksana / Operator', 'Non Staf');

-- --------------------------------------------------------

--
-- Table structure for table `md_marital`
--

CREATE TABLE `md_marital` (
  `idmd_marital` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_marital`
--

INSERT INTO `md_marital` (`idmd_marital`, `status`, `deskripsi`) VALUES
(1, 'BK', 'Belum Kawin'),
(2, 'TK', 'Cerai Hidup / Cerai Mati'),
(3, 'BS', 'Bersuami (Orang Barata)'),
(4, 'K', 'Kawin');

-- --------------------------------------------------------

--
-- Table structure for table `md_organisasi`
--

CREATE TABLE `md_organisasi` (
  `idmd_organisasi` int(11) NOT NULL,
  `kodeorganisasi` varchar(100) DEFAULT NULL,
  `namaorganisasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_organisasi`
--

INSERT INTO `md_organisasi` (`idmd_organisasi`, `kodeorganisasi`, `namaorganisasi`) VALUES
(1, 'DUT', 'Direktorat Utama'),
(2, 'DKS', 'Direktorat Keuangan, SDM & MR'),
(3, 'DOP', 'Direktorat Operasi'),
(4, 'DPS', 'Direktorat Pemasaran'),
(5, 'SKP', 'Sekretariat Perusahaan'),
(6, 'SPI', 'Satuan Pengawasan Intern'),
(7, 'BEJ', 'Biro Enjiniring'),
(8, 'BHC', 'Biro Human Campital'),
(9, 'BHM', 'Biro Hukum'),
(10, 'BKA', 'Biro Keuangan & Akuntansi'),
(11, 'BPU', 'Biro Pengembangan Usaha'),
(12, 'BSC', 'Biro Manajemen Supply Chain'),
(13, 'BSQ', 'Biro Sistem, Mutu & K3LH'),
(14, 'DKP', 'Divisi Industri Komponen & Permesinan'),
(15, 'DGA', 'Divisi Industri Gula & Agro'),
(16, 'DMG', 'Divisi Minyak & Gas'),
(17, 'DSA', 'Divisi Sumber Daya Air'),
(18, 'DPM', 'Divisi Pembangkit'),
(19, 'FOU', 'Pabrik Pengecoran'),
(20, 'PPI', 'Pabrik Peralatan Industri'),
(21, 'TGL', 'Pabrik Hidromekanikal Tegal'),
(22, 'PKT', 'Pabrik Komponen Turbin'),
(23, 'MDN', 'Pabrik Konstruksi Baja Medan'),
(24, 'PHM', 'Pabrik Precision & Heavy Machinery');

-- --------------------------------------------------------

--
-- Table structure for table `mk_jabatan`
--

CREATE TABLE `mk_jabatan` (
  `idmk_jabatan` int(11) NOT NULL,
  `idmd_jabatan` int(11) DEFAULT NULL,
  `npk` int(11) DEFAULT NULL,
  `idmd_bidang` int(11) DEFAULT NULL,
  `idmd_bagian` int(11) DEFAULT NULL,
  `idmd_organisasi` int(11) DEFAULT NULL,
  `idmd_level` int(11) DEFAULT NULL,
  `tglmulai` datetime DEFAULT NULL,
  `kategorifungsi` varchar(100) DEFAULT NULL,
  `statusjabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mk_jabatan`
--

INSERT INTO `mk_jabatan` (`idmk_jabatan`, `idmd_jabatan`, `npk`, `idmd_bidang`, `idmd_bagian`, `idmd_organisasi`, `idmd_level`, `tglmulai`, `kategorifungsi`, `statusjabatan`) VALUES
(2, 0, 123, 126, NULL, 5, 5, '2022-11-25 00:00:00', 'Core', 'Definitif');

-- --------------------------------------------------------

--
-- Table structure for table `mk_pendidikan`
--

CREATE TABLE `mk_pendidikan` (
  `idmk_pendidikan` int(11) NOT NULL,
  `npk` int(11) DEFAULT NULL,
  `levelpendidikan` varchar(100) DEFAULT NULL,
  `jurusan` varchar(200) DEFAULT NULL,
  `institusi` varchar(100) DEFAULT NULL,
  `tahunlulus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mk_pendidikan`
--

INSERT INTO `mk_pendidikan` (`idmk_pendidikan`, `npk`, `levelpendidikan`, `jurusan`, `institusi`, `tahunlulus`) VALUES
(2, 123, 'SD', 'Teknik Informatika', 'Politeknik Negeri Banyuwangi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mk_renumerasi`
--

CREATE TABLE `mk_renumerasi` (
  `idmk_renumerasi` int(11) NOT NULL,
  `idmd_grade` int(11) DEFAULT NULL,
  `npk` int(11) DEFAULT NULL,
  `tgldiangkat` date DEFAULT NULL,
  `ub_gajipokokkonversi` int(11) DEFAULT NULL,
  `ub_tunjkesejahteraankonversi` int(11) DEFAULT NULL,
  `ub_tunjperalihanupahpokok` int(11) DEFAULT NULL,
  `ub_tunjperalihanjabatan` int(11) DEFAULT NULL,
  `ub_tunjperalihan` int(11) DEFAULT NULL,
  `ub_tunjjabatan` int(11) DEFAULT NULL,
  `ub_upahpokokberlaku` int(11) DEFAULT NULL,
  `uf_gajipokokkonversi` int(11) DEFAULT NULL,
  `uf_tunjkesejahteraankonversi` int(11) DEFAULT NULL,
  `uf_tunjperalihanupahpokok` int(11) DEFAULT NULL,
  `uf_tunjperalihanjabatan` int(11) DEFAULT NULL,
  `uf_tunjperalihan` int(11) DEFAULT NULL,
  `uf_tunjjabatan` int(11) DEFAULT NULL,
  `uf_upahpokokberlaku` int(11) DEFAULT NULL,
  `uf_tunjpenyesuaian` int(11) DEFAULT NULL,
  `statuskeaktifan` varchar(45) DEFAULT NULL,
  `statusdirumahkan` varchar(45) DEFAULT NULL,
  `batchdirumahkan` varchar(45) DEFAULT NULL,
  `tgldirumahkan` date DEFAULT NULL,
  `aktivitasobsolete` varchar(45) DEFAULT NULL,
  `aktivitas2022` varchar(45) DEFAULT NULL,
  `subaktivitas` varchar(45) DEFAULT NULL,
  `statuskepegawaian` varchar(45) DEFAULT NULL,
  `tekniknonteknik` varchar(45) DEFAULT NULL,
  `golpend` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mk_renumerasi`
--

INSERT INTO `mk_renumerasi` (`idmk_renumerasi`, `idmd_grade`, `npk`, `tgldiangkat`, `ub_gajipokokkonversi`, `ub_tunjkesejahteraankonversi`, `ub_tunjperalihanupahpokok`, `ub_tunjperalihanjabatan`, `ub_tunjperalihan`, `ub_tunjjabatan`, `ub_upahpokokberlaku`, `uf_gajipokokkonversi`, `uf_tunjkesejahteraankonversi`, `uf_tunjperalihanupahpokok`, `uf_tunjperalihanjabatan`, `uf_tunjperalihan`, `uf_tunjjabatan`, `uf_upahpokokberlaku`, `uf_tunjpenyesuaian`, `statuskeaktifan`, `statusdirumahkan`, `batchdirumahkan`, `tgldirumahkan`, `aktivitasobsolete`, `aktivitas2022`, `subaktivitas`, `statuskepegawaian`, `tekniknonteknik`, `golpend`) VALUES
(2, 2, 123, '2022-11-24', 679, 67867, 67867, 67867, 678678, 679, 678678, 1123, 12312, 123123, 123, 1231, 123, 1231, 1231, 'A', 'H', 'II', '2022-11-25', 'TTL', 'TTL', 'BP', 'KT', 'Teknik', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$10$LIAhhUtYk8cetV5q3cFqCundFuzMcj58rpzDn94JvwtbxlvLCYJVO', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1669366508, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_bagian`
--
ALTER TABLE `md_bagian`
  ADD PRIMARY KEY (`idmd_bagian`);

--
-- Indexes for table `md_bidang`
--
ALTER TABLE `md_bidang`
  ADD PRIMARY KEY (`idmd_bidang`);

--
-- Indexes for table `md_grade`
--
ALTER TABLE `md_grade`
  ADD PRIMARY KEY (`idmd_grade`);

--
-- Indexes for table `md_jabatan`
--
ALTER TABLE `md_jabatan`
  ADD PRIMARY KEY (`idmd_jabatan`);

--
-- Indexes for table `md_karyawan`
--
ALTER TABLE `md_karyawan`
  ADD PRIMARY KEY (`npk`),
  ADD UNIQUE KEY `npk_UNIQUE` (`npk`);

--
-- Indexes for table `md_level`
--
ALTER TABLE `md_level`
  ADD PRIMARY KEY (`idmd_level`);

--
-- Indexes for table `md_marital`
--
ALTER TABLE `md_marital`
  ADD PRIMARY KEY (`idmd_marital`);

--
-- Indexes for table `md_organisasi`
--
ALTER TABLE `md_organisasi`
  ADD PRIMARY KEY (`idmd_organisasi`);

--
-- Indexes for table `mk_jabatan`
--
ALTER TABLE `mk_jabatan`
  ADD PRIMARY KEY (`idmk_jabatan`);

--
-- Indexes for table `mk_pendidikan`
--
ALTER TABLE `mk_pendidikan`
  ADD PRIMARY KEY (`idmk_pendidikan`);

--
-- Indexes for table `mk_renumerasi`
--
ALTER TABLE `mk_renumerasi`
  ADD PRIMARY KEY (`idmk_renumerasi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `md_bagian`
--
ALTER TABLE `md_bagian`
  MODIFY `idmd_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `md_bidang`
--
ALTER TABLE `md_bidang`
  MODIFY `idmd_bidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `md_grade`
--
ALTER TABLE `md_grade`
  MODIFY `idmd_grade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `md_jabatan`
--
ALTER TABLE `md_jabatan`
  MODIFY `idmd_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_level`
--
ALTER TABLE `md_level`
  MODIFY `idmd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `md_marital`
--
ALTER TABLE `md_marital`
  MODIFY `idmd_marital` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `md_organisasi`
--
ALTER TABLE `md_organisasi`
  MODIFY `idmd_organisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `mk_jabatan`
--
ALTER TABLE `mk_jabatan`
  MODIFY `idmk_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mk_pendidikan`
--
ALTER TABLE `mk_pendidikan`
  MODIFY `idmk_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mk_renumerasi`
--
ALTER TABLE `mk_renumerasi`
  MODIFY `idmk_renumerasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
