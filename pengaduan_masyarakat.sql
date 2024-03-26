-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.3.0 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table pengaduan_masyarakat.log
CREATE TABLE IF NOT EXISTS `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tables_name` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `subject_id` int NOT NULL,
  `data` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_log_user` (`user_id`),
  CONSTRAINT `FK_log_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel pengaduan_masyarakat.log: ~18 rows (lebih kurang)
DELETE FROM `log`;
INSERT INTO `log` (`id`, `tables_name`, `event`, `description`, `subject_id`, `data`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'insert', 'insert into users', 18, 'null', 1, '2024-03-20 19:29:00', '2024-03-24 14:52:45'),
	(2, 'users', 'delete', 'delete from users', 0, 'null', 1, '2024-03-20 19:50:59', '2024-03-24 14:52:45'),
	(3, 'users', 'insert', 'insert into users', 19, '{"id":19,"data":{"nik":"1234567892134567","nama":"Hajat","username":"hajat","password":"$2y$10$LG4KGafaLAVIU0tQFN\\/ltebO3Pvasj\\/7vpSEMrbhxSWWpwrX.H5Gu","telp":"12345678998","level":"petugas","created_at":"2024-03-20 19:51:36","updated_at":"2024-03-20 19:5', 1, '2024-03-20 19:51:36', '2024-03-24 14:52:45'),
	(4, 'users', 'update', 'update into users', 0, 'null', 1, '2024-03-20 19:52:26', '2024-03-24 14:52:45'),
	(5, 'users', 'update', 'update into users', 0, '{"nik":"1234567892134567","nama":"Hajat Supriatna","username":"hajat","telp":"12345678998","level":"petugas","updated_at":"2024-03-20 19:54:14"}', 1, '2024-03-20 19:54:14', '2024-03-24 14:52:45'),
	(6, 'users', 'delete', 'delete from users', 0, 'null', 1, '2024-03-20 19:54:51', '2024-03-24 14:52:45'),
	(7, 'users', 'insert', 'insert into users', 20, '{"nik":"2123456797127323","nama":"Hahat","username":"hahat","password":"$2y$10$s593vsMuHiZlO\\/9woljVVu7ykIrOcZiNayfKx57RiOJBmCJpFltZS","telp":"123456789876","level":"petugas","created_at":"2024-03-20 19:57:10","updated_at":"2024-03-20 19:57:10"}', 1, '2024-03-20 19:57:10', '2024-03-24 14:52:45'),
	(8, 'users', 'update', 'update into users', 0, '{"nik":"2123456797127323","nama":"Hahat","username":"hahat","telp":"123456789876","level":"petugas","updated_at":"2024-03-20 19:57:19"}', 1, '2024-03-20 19:57:19', '2024-03-24 14:52:45'),
	(9, 'users', 'update', 'update into users', 20, '{"nik":"2123456797127323","nama":"Hahat","username":"hahat","telp":"123456789876","level":"petugas","updated_at":"2024-03-20 20:22:11"}', 1, '2024-03-20 20:22:11', '2024-03-24 14:52:45'),
	(10, 'users', 'delete', 'delete from users', 20, 'null', 1, '2024-03-20 20:22:23', '2024-03-24 14:52:45'),
	(11, '', 'login', 'login into system as admin', 0, '["::1",{}]', 1, '2024-03-20 20:32:37', '2024-03-24 14:52:45'),
	(12, '', 'logout', 'logout from system', 0, '["::1",{}]', 1, '2024-03-20 20:33:06', '2024-03-24 14:52:45'),
	(13, '', 'login', 'login into system as admin', 0, '["::1","Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0"]', 1, '2024-03-20 20:39:52', '2024-03-24 14:52:45'),
	(14, '', 'logout', 'logout from system', 0, '["::1","Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0"]', 1, '2024-03-20 20:40:24', '2024-03-24 14:52:45'),
	(15, '', 'login', 'login into system as admin', 0, '["::1","Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0"]', 1, '2024-03-21 07:12:06', '2024-03-24 14:52:45'),
	(16, '', 'login', 'login into system as admin', 0, '["::1","Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0"]', 1, '2024-03-24 12:58:06', '2024-03-24 14:52:45'),
	(17, '', 'logout', 'logout from system', 0, '["::1","Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0"]', 1, '2024-03-24 14:59:24', '2024-03-24 14:59:24'),
	(18, '', 'login', 'login into system as admin', 0, '["::1","Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0"]', 1, '2024-03-24 15:00:31', '2024-03-24 15:00:31'),
	(19, 'profile', 'update', 'update into profile', 1, '{"tentang":"No aliquyam gubergren erat facilisis sed vero gubergren facilisis ut duo. Consectetuer consetetur in et est elitr amet et consectetuer qui ipsum. Eirmod soluta feugait sit justo eos eos dolor consectetuer dolor esse gubergren. Minim clita cons', 1, '2024-03-24 16:43:15', '2024-03-24 16:43:15'),
	(20, '', 'login', 'login into system as admin', 0, '["::1","Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0"]', 1, '2024-03-25 06:47:57', '2024-03-25 06:47:57');

-- membuang struktur untuk table pengaduan_masyarakat.organisasi
CREATE TABLE IF NOT EXISTS `organisasi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nip` char(13) DEFAULT NULL,
  `nama` varchar(120) DEFAULT NULL,
  `jabatan` varchar(120) DEFAULT NULL,
  `deskripsi` text,
  `foto` text,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel pengaduan_masyarakat.organisasi: ~0 rows (lebih kurang)
DELETE FROM `organisasi`;

-- membuang struktur untuk table pengaduan_masyarakat.pengaduan
CREATE TABLE IF NOT EXISTS `pengaduan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isi_laporan` text CHARACTER SET utf8mb4 NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('baru','proses','selesai') NOT NULL DEFAULT 'baru',
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_users` (`user_id`) USING BTREE,
  CONSTRAINT `FK_pengaduan_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel pengaduan_masyarakat.pengaduan: ~0 rows (lebih kurang)
DELETE FROM `pengaduan`;

-- membuang struktur untuk table pengaduan_masyarakat.pengaduan_foto
CREATE TABLE IF NOT EXISTS `pengaduan_foto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` text,
  `pengaduan_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_pengaduan_foto_pengaduan` (`pengaduan_id`),
  CONSTRAINT `FK_pengaduan_foto_pengaduan` FOREIGN KEY (`pengaduan_id`) REFERENCES `pengaduan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel pengaduan_masyarakat.pengaduan_foto: ~0 rows (lebih kurang)
DELETE FROM `pengaduan_foto`;

-- membuang struktur untuk table pengaduan_masyarakat.profile
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tentang` text,
  `visi` text,
  `misi` text,
  `sejarah` text,
  `geografis` text,
  `demografis` text,
  `created_at` timestamp NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel pengaduan_masyarakat.profile: ~0 rows (lebih kurang)
DELETE FROM `profile`;
INSERT INTO `profile` (`id`, `tentang`, `visi`, `misi`, `sejarah`, `geografis`, `demografis`, `created_at`, `updated_at`) VALUES
	(1, 'No aliquyam gubergren erat facilisis sed vero gubergren facilisis ut duo. Consectetuer consetetur in et est elitr amet et consectetuer qui ipsum. Eirmod soluta feugait sit justo eos eos dolor consectetuer dolor esse gubergren. Minim clita consequat aliquyam feugait est ipsum sed ad kasd rebum lorem ipsum no consetetur sit ipsum justo eos. Dolores autem kasd duis mazim ea erat erat lorem duo. Ut nonummy magna at rebum exerci lorem sed rebum lobortis dolor consetetur in erat dolor et. Et magna consectetuer nonummy stet. Consequat dolore vel et voluptua sed mazim justo gubergren dolore eros odio cum duo dolores augue. Amet sed exerci elitr kasd eos assum. Sed consetetur sea et erat lorem ut delenit vel clita sadipscing facilisis invidunt magna. Accusam adipiscing elitr elit aliquyam feugait luptatum ipsum nam luptatum hendrerit vel. Iusto sanctus lorem nonummy ipsum dolor ea. Ut invidunt magna at labore sea accusam magna sea labore at ipsum et justo. Sed dolore lobortis in vero at sit invidunt tempor et diam sed et. Adipiscing minim illum ea amet et delenit kasd elitr dolor amet autem ea commodo eu invidunt erat et. Rebum no dolor sea consetetur elitr gubergren gubergren vel consetetur ex sanctus. Erat zzril elitr diam in diam eirmod dolor nostrud aliquyam et voluptua takimata dolor diam accusam molestie ut vero. Nam minim sed dolor sed in vero ut eirmod. Dolores et in.', '', '', '', '', '', '2024-03-24 16:43:12', '2024-03-24 09:43:15');

-- membuang struktur untuk table pengaduan_masyarakat.tanggapan
CREATE TABLE IF NOT EXISTS `tanggapan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pengaduan_id` int NOT NULL,
  `tanggapan` text NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_pengaduan` (`pengaduan_id`) USING BTREE,
  KEY `id_users` (`user_id`) USING BTREE,
  CONSTRAINT `FK_tanggapan_pengaduan` FOREIGN KEY (`pengaduan_id`) REFERENCES `pengaduan` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tanggapan_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel pengaduan_masyarakat.tanggapan: ~0 rows (lebih kurang)
DELETE FROM `tanggapan`;

-- membuang struktur untuk table pengaduan_masyarakat.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` char(16) DEFAULT NULL,
  `nama` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(13) DEFAULT NULL,
  `alamat` text NOT NULL,
  `level` enum('admin','petugas','user') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `nik` (`nik`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel pengaduan_masyarakat.user: ~3 rows (lebih kurang)
DELETE FROM `user`;
INSERT INTO `user` (`id`, `nik`, `nama`, `email`, `username`, `password`, `telp`, `alamat`, `level`, `created_at`, `updated_at`) VALUES
	(1, '1238942832312131', 'Atha Nabil Andal', '', 'thanbl_', '$2y$10$Fq.A1iLlCkHQvwkfDeB34OreLLHpU93TifeIdNjJb6XM1hl2TIlYa', '08512374232', '', 'admin', '2024-03-20 09:19:16', '2024-03-20 09:24:32'),
	(2, '1280183912', 'Thalal Atha Nabil', '', 'ryzntx', '$2y$10$RqXYNcLyGiIv6pM3LKLC4OI6wwWuA6TZj5QPJwmaVKnIE5dINnSiq', '08142324123', '', 'user', '2024-03-20 09:19:16', '2024-03-20 09:24:32'),
	(3, '345678976', 'Ujang Maman', '', 'ujangmaman', '$2y$10$fAEr2Zbs5ddM4S2vVeT6YuFIO727PQOcq611MG7dH/2ettQr1QkEm', '08765476626', '', 'user', '2024-03-20 09:19:16', '2024-03-20 09:24:32');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
