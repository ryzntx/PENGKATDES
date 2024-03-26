-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2024 at 01:50 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int NOT NULL,
  `tables_name` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `subject_id` int NOT NULL,
  `data` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `tables_name`, `event`, `description`, `subject_id`, `data`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'users', 'insert', 'insert into users', 18, 'null', 1, '2024-03-20 19:29:00', '2024-03-24 14:52:45'),
(2, 'users', 'delete', 'delete from users', 0, 'null', 1, '2024-03-20 19:50:59', '2024-03-24 14:52:45'),
(3, 'users', 'insert', 'insert into users', 19, '{\"id\":19,\"data\":{\"nik\":\"1234567892134567\",\"nama\":\"Hajat\",\"username\":\"hajat\",\"password\":\"$2y$10$LG4KGafaLAVIU0tQFN\\/ltebO3Pvasj\\/7vpSEMrbhxSWWpwrX.H5Gu\",\"telp\":\"12345678998\",\"level\":\"petugas\",\"created_at\":\"2024-03-20 19:51:36\",\"updated_at\":\"2024-03-20 19:5', 1, '2024-03-20 19:51:36', '2024-03-24 14:52:45'),
(4, 'users', 'update', 'update into users', 0, 'null', 1, '2024-03-20 19:52:26', '2024-03-24 14:52:45'),
(5, 'users', 'update', 'update into users', 0, '{\"nik\":\"1234567892134567\",\"nama\":\"Hajat Supriatna\",\"username\":\"hajat\",\"telp\":\"12345678998\",\"level\":\"petugas\",\"updated_at\":\"2024-03-20 19:54:14\"}', 1, '2024-03-20 19:54:14', '2024-03-24 14:52:45'),
(6, 'users', 'delete', 'delete from users', 0, 'null', 1, '2024-03-20 19:54:51', '2024-03-24 14:52:45'),
(7, 'users', 'insert', 'insert into users', 20, '{\"nik\":\"2123456797127323\",\"nama\":\"Hahat\",\"username\":\"hahat\",\"password\":\"$2y$10$s593vsMuHiZlO\\/9woljVVu7ykIrOcZiNayfKx57RiOJBmCJpFltZS\",\"telp\":\"123456789876\",\"level\":\"petugas\",\"created_at\":\"2024-03-20 19:57:10\",\"updated_at\":\"2024-03-20 19:57:10\"}', 1, '2024-03-20 19:57:10', '2024-03-24 14:52:45'),
(8, 'users', 'update', 'update into users', 0, '{\"nik\":\"2123456797127323\",\"nama\":\"Hahat\",\"username\":\"hahat\",\"telp\":\"123456789876\",\"level\":\"petugas\",\"updated_at\":\"2024-03-20 19:57:19\"}', 1, '2024-03-20 19:57:19', '2024-03-24 14:52:45'),
(9, 'users', 'update', 'update into users', 20, '{\"nik\":\"2123456797127323\",\"nama\":\"Hahat\",\"username\":\"hahat\",\"telp\":\"123456789876\",\"level\":\"petugas\",\"updated_at\":\"2024-03-20 20:22:11\"}', 1, '2024-03-20 20:22:11', '2024-03-24 14:52:45'),
(10, 'users', 'delete', 'delete from users', 20, 'null', 1, '2024-03-20 20:22:23', '2024-03-24 14:52:45'),
(11, '', 'login', 'login into system as admin', 0, '[\"::1\",{}]', 1, '2024-03-20 20:32:37', '2024-03-24 14:52:45'),
(12, '', 'logout', 'logout from system', 0, '[\"::1\",{}]', 1, '2024-03-20 20:33:06', '2024-03-24 14:52:45'),
(13, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-20 20:39:52', '2024-03-24 14:52:45'),
(14, '', 'logout', 'logout from system', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-20 20:40:24', '2024-03-24 14:52:45'),
(15, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-21 07:12:06', '2024-03-24 14:52:45'),
(16, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-24 12:58:06', '2024-03-24 14:52:45'),
(17, '', 'logout', 'logout from system', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-24 14:59:24', '2024-03-24 14:59:24'),
(18, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-24 15:00:31', '2024-03-24 15:00:31'),
(19, 'profile', 'update', 'update into profile', 1, '{\"tentang\":\"No aliquyam gubergren erat facilisis sed vero gubergren facilisis ut duo. Consectetuer consetetur in et est elitr amet et consectetuer qui ipsum. Eirmod soluta feugait sit justo eos eos dolor consectetuer dolor esse gubergren. Minim clita cons', 1, '2024-03-24 16:43:15', '2024-03-24 16:43:15'),
(20, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-25 06:47:57', '2024-03-25 06:47:57'),
(21, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-26 13:49:11', '2024-03-26 13:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi`
--

CREATE TABLE `organisasi` (
  `id` int NOT NULL,
  `nip` char(13) DEFAULT NULL,
  `nama` varchar(120) DEFAULT NULL,
  `jabatan` varchar(120) DEFAULT NULL,
  `deskripsi` text,
  `foto` text,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int NOT NULL,
  `isi_laporan` text CHARACTER SET utf8mb4 NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('baru','proses','selesai') NOT NULL DEFAULT 'baru',
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan_foto`
--

CREATE TABLE `pengaduan_foto` (
  `id` int NOT NULL,
  `foto` text,
  `pengaduan_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int NOT NULL,
  `tentang` text,
  `visi` text,
  `misi` text,
  `sejarah` text,
  `geografis` text,
  `demografis` text,
  `created_at` timestamp NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `tentang`, `visi`, `misi`, `sejarah`, `geografis`, `demografis`, `created_at`, `updated_at`) VALUES
(1, 'No aliquyam gubergren erat facilisis sed vero gubergren facilisis ut duo. Consectetuer consetetur in et est elitr amet et consectetuer qui ipsum. Eirmod soluta feugait sit justo eos eos dolor consectetuer dolor esse gubergren. Minim clita consequat aliquyam feugait est ipsum sed ad kasd rebum lorem ipsum no consetetur sit ipsum justo eos. Dolores autem kasd duis mazim ea erat erat lorem duo. Ut nonummy magna at rebum exerci lorem sed rebum lobortis dolor consetetur in erat dolor et. Et magna consectetuer nonummy stet. Consequat dolore vel et voluptua sed mazim justo gubergren dolore eros odio cum duo dolores augue. Amet sed exerci elitr kasd eos assum. Sed consetetur sea et erat lorem ut delenit vel clita sadipscing facilisis invidunt magna. Accusam adipiscing elitr elit aliquyam feugait luptatum ipsum nam luptatum hendrerit vel. Iusto sanctus lorem nonummy ipsum dolor ea. Ut invidunt magna at labore sea accusam magna sea labore at ipsum et justo. Sed dolore lobortis in vero at sit invidunt tempor et diam sed et. Adipiscing minim illum ea amet et delenit kasd elitr dolor amet autem ea commodo eu invidunt erat et. Rebum no dolor sea consetetur elitr gubergren gubergren vel consetetur ex sanctus. Erat zzril elitr diam in diam eirmod dolor nostrud aliquyam et voluptua takimata dolor diam accusam molestie ut vero. Nam minim sed dolor sed in vero ut eirmod. Dolores et in.', '', '', '', '', '', '2024-03-24 16:43:12', '2024-03-24 09:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id` int NOT NULL,
  `pengaduan_id` int NOT NULL,
  `tanggapan` text NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `nik` char(16) DEFAULT NULL,
  `nama` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(13) DEFAULT NULL,
  `alamat` text NOT NULL,
  `level` enum('admin','petugas','user') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nik`, `nama`, `email`, `username`, `password`, `telp`, `alamat`, `level`, `created_at`, `updated_at`) VALUES
(1, '1238942832312131', 'Atha Nabil Andal', '', 'thanbl_', '$2y$10$Fq.A1iLlCkHQvwkfDeB34OreLLHpU93TifeIdNjJb6XM1hl2TIlYa', '08512374232', '', 'admin', '2024-03-20 09:19:16', '2024-03-20 09:24:32'),
(2, '1280183912', 'Thalal Atha Nabil', '', 'ryzntx', '$2y$10$RqXYNcLyGiIv6pM3LKLC4OI6wwWuA6TZj5QPJwmaVKnIE5dINnSiq', '08142324123', '', 'user', '2024-03-20 09:19:16', '2024-03-20 09:24:32'),
(3, '345678976', 'Ujang Maman', '', 'ujangmaman', '$2y$10$fAEr2Zbs5ddM4S2vVeT6YuFIO727PQOcq611MG7dH/2ettQr1QkEm', '08765476626', '', 'user', '2024-03-20 09:19:16', '2024-03-20 09:24:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_log_user` (`user_id`);

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id_users` (`user_id`) USING BTREE;

--
-- Indexes for table `pengaduan_foto`
--
ALTER TABLE `pengaduan_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pengaduan_foto_pengaduan` (`pengaduan_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id_pengaduan` (`pengaduan_id`) USING BTREE,
  ADD KEY `id_users` (`user_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengaduan_foto`
--
ALTER TABLE `pengaduan_foto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `FK_log_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `FK_pengaduan_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengaduan_foto`
--
ALTER TABLE `pengaduan_foto`
  ADD CONSTRAINT `FK_pengaduan_foto_pengaduan` FOREIGN KEY (`pengaduan_id`) REFERENCES `pengaduan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `FK_tanggapan_pengaduan` FOREIGN KEY (`pengaduan_id`) REFERENCES `pengaduan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tanggapan_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
