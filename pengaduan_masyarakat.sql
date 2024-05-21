-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2024 at 10:34 PM
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
CREATE DATABASE IF NOT EXISTS `pengaduan_masyarakat` DEFAULT CHARACTER SET utf8mb4;
USE `pengaduan_masyarakat`;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int NOT NULL,
  `tables_name` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `subject_id` int DEFAULT NULL,
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
(21, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-26 13:49:11', '2024-03-26 13:49:11'),
(22, 'organisasi', 'insert', 'insert into organisasi', 1, '{\"nip\":\"123456789\",\"nama\":\"Mamat Supriatna\",\"jabatan\":\"Sekretaris\",\"deskripsi\":\"Lorem Ipsum Dolor sit Amet\",\"created_at\":\"2024-03-26 14:07:35\",\"updated_at\":\"2024-03-26 14:07:35\"}', 1, '2024-03-26 14:07:35', '2024-03-26 14:07:35'),
(23, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-03-26 16:55:39', '2024-03-26 16:55:39'),
(24, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-04-02 13:40:29', '2024-04-02 13:40:29'),
(25, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-04-02 17:10:51', '2024-04-02 17:10:51'),
(26, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-04-02 22:36:09', '2024-04-02 22:36:09'),
(27, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-04-03 02:26:26', '2024-04-03 02:26:26'),
(28, 'organisasi', 'insert', 'insert into organisasi', 2, '{\"nip\":\"1923842342\",\"nama\":\"Yayat Supriatna\",\"jabatan\":\"Bendahara\",\"deskripsi\":\"Bendahara adalah bla blabla\",\"foto\":\"LMC_08022022_075313.CL4P_Collection-3.0~2_1.jpg\",\"created_at\":\"2024-04-03 02:31:24\",\"updated_at\":\"2024-04-03 02:31:24\"}', 1, '2024-04-03 02:31:24', '2024-04-03 02:31:24'),
(29, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-04-16 12:53:34', '2024-04-16 12:53:34'),
(30, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/124.0.0.0 Safari\\/537.36\"]', 1, '2024-04-25 15:36:25', '2024-04-25 15:36:25'),
(31, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-04-25 15:37:51', '2024-04-25 15:37:51'),
(32, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-04-28 16:16:49', '2024-04-28 16:16:49'),
(33, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-04-29 07:56:41', '2024-04-29 07:56:41'),
(34, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-05-07 09:44:15', '2024-05-07 09:44:15'),
(35, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-05-07 13:30:26', '2024-05-07 13:30:26'),
(36, 'pengaduan', 'insert', 'insert into pengaduan', 3, '{\"judul_laporan\":\"Jalan Berlubang\",\"isi_laporan\":\"Ada jalan berlubang di RW 8\",\"status\":\"baru\",\"created_at\":\"2024-05-07 14:34:19\",\"updated_at\":\"2024-05-07 14:34:19\"}', 1, '2024-05-07 14:34:19', '2024-05-07 14:34:19'),
(37, 'pengaduan', 'insert', 'insert into pengaduan', 4, '{\"judul_laporan\":\"Jalanan Rusak\",\"isi_laporan\":\"Ruas jalan pada RW 07 mengalami kerusakan akibat banyak kendaraan berat melewat.\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-07 15:17:38\",\"updated_at\":\"2024-05-07 15:17:38\"}', 1, '2024-05-07 15:17:38', '2024-05-07 15:17:38'),
(38, 'pengaduan', 'insert', 'insert into pengaduan', 5, '{\"judul_laporan\":\"Jalanan Rusak\",\"isi_laporan\":\"Ruas jalan pada RW 07 mengalami kerusakan akibat banyak kendaraan berat melewat.\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-07 15:18:09\",\"updated_at\":\"2024-05-07 15:18:09\"}', 1, '2024-05-07 15:18:09', '2024-05-07 15:18:09'),
(39, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 2, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.18.264.jpg\",\"pengaduan_id\":38,\"created_at\":\"2024-05-07 15:18:09\",\"updated_at\":\"2024-05-07 15:18:09\"}', 1, '2024-05-07 15:18:09', '2024-05-07 15:18:09'),
(40, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 3, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165.jpg\",\"pengaduan_id\":38,\"created_at\":\"2024-05-07 15:18:09\",\"updated_at\":\"2024-05-07 15:18:09\"}', 1, '2024-05-07 15:18:09', '2024-05-07 15:18:09'),
(41, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 4, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg\",\"pengaduan_id\":38,\"created_at\":\"2024-05-07 15:18:09\",\"updated_at\":\"2024-05-07 15:18:09\"}', 1, '2024-05-07 15:18:09', '2024-05-07 15:18:09'),
(42, 'pengaduan', 'insert', 'insert into pengaduan', 6, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-07 15:20:13\",\"updated_at\":\"2024-05-07 15:20:13\"}', 1, '2024-05-07 15:20:13', '2024-05-07 15:20:13'),
(43, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 5, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.18.264.jpg\",\"pengaduan_id\":6,\"created_at\":\"2024-05-07 15:20:13\",\"updated_at\":\"2024-05-07 15:20:13\"}', 1, '2024-05-07 15:20:13', '2024-05-07 15:20:13'),
(44, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 6, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165.jpg\",\"pengaduan_id\":6,\"created_at\":\"2024-05-07 15:20:13\",\"updated_at\":\"2024-05-07 15:20:13\"}', 1, '2024-05-07 15:20:13', '2024-05-07 15:20:13'),
(45, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 7, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg\",\"pengaduan_id\":6,\"created_at\":\"2024-05-07 15:20:13\",\"updated_at\":\"2024-05-07 15:20:13\"}', 1, '2024-05-07 15:20:13', '2024-05-07 15:20:13'),
(46, 'pengaduan', 'insert', 'insert into pengaduan', 7, '{\"judul_laporan\":\"hehe\",\"isi_laporan\":\"hehe\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-07 15:33:13\",\"updated_at\":\"2024-05-07 15:33:13\"}', 1, '2024-05-07 15:33:13', '2024-05-07 15:33:13'),
(47, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 8, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_00.02.080.jpg\",\"pengaduan_id\":7,\"created_at\":\"2024-05-07 15:33:13\",\"updated_at\":\"2024-05-07 15:33:13\"}', 1, '2024-05-07 15:33:13', '2024-05-07 15:33:13'),
(48, 'pengaduan', 'insert', 'insert into pengaduan', 8, '{\"judul_laporan\":\"Testdawd\",\"isi_laporan\":\"dadwadaw\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-07 15:46:08\",\"updated_at\":\"2024-05-07 15:46:08\"}', 1, '2024-05-07 15:46:08', '2024-05-07 15:46:08'),
(49, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 9, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_00.02.080.jpg\",\"pengaduan_id\":8,\"created_at\":\"2024-05-07 15:46:08\",\"updated_at\":\"2024-05-07 15:46:08\"}', 1, '2024-05-07 15:46:08', '2024-05-07 15:46:08'),
(50, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 10, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_00.03.221.jpg\",\"pengaduan_id\":8,\"created_at\":\"2024-05-07 15:46:08\",\"updated_at\":\"2024-05-07 15:46:08\"}', 1, '2024-05-07 15:46:08', '2024-05-07 15:46:08'),
(51, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 11, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.16.047.jpg\",\"pengaduan_id\":8,\"created_at\":\"2024-05-07 15:46:08\",\"updated_at\":\"2024-05-07 15:46:08\"}', 1, '2024-05-07 15:46:08', '2024-05-07 15:46:08'),
(52, 'pengaduan', 'delete', 'delete from pengaduan', 7, 'null', 1, '2024-05-07 16:15:01', '2024-05-07 16:15:01'),
(53, 'pengaduan', 'delete', 'delete from pengaduan', 8, 'null', 1, '2024-05-07 16:48:39', '2024-05-07 16:48:39'),
(54, 'pengaduan', 'insert', 'insert into pengaduan', 9, '{\"judul_laporan\":\"Laporan Jalanan Rusak\",\"isi_laporan\":\"Jalanan rusak terjadi pada RW 07, yang disebabkan oleh truk proyek gadungan yang tidak bertanggung jawab melintas.\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-07 16:51:45\",\"updated_at\":\"2024', 1, '2024-05-07 16:51:45', '2024-05-07 16:51:45'),
(55, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 12, '{\"foto\":\"jalanan rusak.jpeg\",\"pengaduan_id\":9,\"created_at\":\"2024-05-07 16:51:45\",\"updated_at\":\"2024-05-07 16:51:45\"}', 1, '2024-05-07 16:51:45', '2024-05-07 16:51:45'),
(56, '', 'logout', 'logout from system', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-05-07 17:35:58', '2024-05-07 17:35:58'),
(57, '', 'login', 'login into system as user', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 2, '2024-05-07 17:37:20', '2024-05-07 17:37:20'),
(58, 'pengaduan', 'insert', 'insert into pengaduan', 10, '{\"judul_laporan\":\"Ujicoba Fitur\",\"isi_laporan\":\"Ujicoba Fitur\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 18:40:10\",\"updated_at\":\"2024-05-07 18:40:10\"}', 2, '2024-05-07 18:40:10', '2024-05-07 18:40:10'),
(59, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 13, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_00.02.080.jpg\",\"pengaduan_id\":10,\"created_at\":\"2024-05-07 18:40:10\",\"updated_at\":\"2024-05-07 18:40:10\"}', 2, '2024-05-07 18:40:10', '2024-05-07 18:40:10'),
(60, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 14, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_00.03.221.jpg\",\"pengaduan_id\":10,\"created_at\":\"2024-05-07 18:40:10\",\"updated_at\":\"2024-05-07 18:40:10\"}', 2, '2024-05-07 18:40:10', '2024-05-07 18:40:10'),
(61, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', 13, 'null', 2, '2024-05-07 18:43:52', '2024-05-07 18:43:52'),
(62, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 15, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.16.047.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:47:44\",\"updated_at\":\"2024-05-07 18:47:44\"}', 2, '2024-05-07 18:47:44', '2024-05-07 18:47:44'),
(63, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 16, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.16.047.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:47:44\",\"updated_at\":\"2024-05-07 18:47:44\"}', 2, '2024-05-07 18:47:44', '2024-05-07 18:47:44'),
(64, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', 16, 'null', 2, '2024-05-07 18:47:59', '2024-05-07 18:47:59'),
(65, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 17, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.16.047.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:48:34\",\"updated_at\":\"2024-05-07 18:48:34\"}', 2, '2024-05-07 18:48:34', '2024-05-07 18:48:34'),
(66, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 18, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.16.047.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:48:35\",\"updated_at\":\"2024-05-07 18:48:35\"}', 2, '2024-05-07 18:48:35', '2024-05-07 18:48:35'),
(67, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', 17, 'null', 2, '2024-05-07 18:50:43', '2024-05-07 18:50:43'),
(68, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 19, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:51:20\",\"updated_at\":\"2024-05-07 18:51:20\"}', 2, '2024-05-07 18:51:20', '2024-05-07 18:51:20'),
(69, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 20, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:51:20\",\"updated_at\":\"2024-05-07 18:51:20\"}', 2, '2024-05-07 18:51:20', '2024-05-07 18:51:20'),
(70, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 21, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.16.047.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:51:41\",\"updated_at\":\"2024-05-07 18:51:41\"}', 2, '2024-05-07 18:51:42', '2024-05-07 18:51:42'),
(71, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 22, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.16.047.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:51:42\",\"updated_at\":\"2024-05-07 18:51:42\"}', 2, '2024-05-07 18:51:42', '2024-05-07 18:51:42'),
(72, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 23, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_00.02.080_1.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:58:52\",\"updated_at\":\"2024-05-07 18:58:52\"}', 2, '2024-05-07 18:58:52', '2024-05-07 18:58:52'),
(73, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 24, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.16.047_2.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 18:58:57\",\"updated_at\":\"2024-05-07 18:58:57\"}', 2, '2024-05-07 18:58:57', '2024-05-07 18:58:57'),
(74, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 25, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165_1.jpg\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 19:00:25\",\"updated_at\":\"2024-05-07 19:00:25\"}', 2, '2024-05-07 19:00:25', '2024-05-07 19:00:25'),
(75, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 26, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_g.png\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 19:00:42\",\"updated_at\":\"2024-05-07 19:00:42\"}', 2, '2024-05-07 19:00:42', '2024-05-07 19:00:42'),
(76, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 27, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_w.png\",\"pengaduan_id\":\"10\",\"created_at\":\"2024-05-07 19:00:42\",\"updated_at\":\"2024-05-07 19:00:42\"}', 2, '2024-05-07 19:00:42', '2024-05-07 19:00:42'),
(77, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', 27, 'null', 2, '2024-05-07 19:01:05', '2024-05-07 19:01:05'),
(78, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', 26, 'null', 2, '2024-05-07 19:01:07', '2024-05-07 19:01:07'),
(79, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 28, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_00.02.080.jpg\",\"pengaduan_id\":\"\",\"created_at\":\"2024-05-07 19:16:04\",\"updated_at\":\"2024-05-07 19:16:04\"}', 2, '2024-05-07 19:16:04', '2024-05-07 19:16:04'),
(80, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 29, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_00.03.221.jpg\",\"pengaduan_id\":\"\",\"created_at\":\"2024-05-07 19:16:04\",\"updated_at\":\"2024-05-07 19:16:04\"}', 2, '2024-05-07 19:16:04', '2024-05-07 19:16:04'),
(81, 'pengaduan', 'insert', 'insert into pengaduan', 11, '{\"judul_laporan\":\"Hehe\",\"isi_laporan\":\"hehe\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 19:16:47\",\"updated_at\":\"2024-05-07 19:16:47\"}', 2, '2024-05-07 19:16:47', '2024-05-07 19:16:47'),
(82, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 30, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165.jpg\",\"pengaduan_id\":\"\",\"created_at\":\"2024-05-07 19:17:09\",\"updated_at\":\"2024-05-07 19:17:09\"}', 2, '2024-05-07 19:17:09', '2024-05-07 19:17:09'),
(83, 'pengaduan', 'insert', 'insert into pengaduan', 12, '{\"judul_laporan\":\"Hehe\",\"isi_laporan\":\"hehe\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 19:17:09\",\"updated_at\":\"2024-05-07 19:17:09\"}', 2, '2024-05-07 19:17:09', '2024-05-07 19:17:09'),
(84, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 31, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg\",\"pengaduan_id\":\"\",\"created_at\":\"2024-05-07 19:17:10\",\"updated_at\":\"2024-05-07 19:17:10\"}', 2, '2024-05-07 19:17:10', '2024-05-07 19:17:10'),
(85, 'pengaduan', 'insert', 'insert into pengaduan', 13, '{\"judul_laporan\":\"Hehe\",\"isi_laporan\":\"hehehs\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 19:18:39\",\"updated_at\":\"2024-05-07 19:18:39\"}', 2, '2024-05-07 19:18:39', '2024-05-07 19:18:39'),
(86, 'pengaduan', 'insert', 'insert into pengaduan', 14, '{\"judul_laporan\":\"Test Terus\",\"isi_laporan\":\"Anjing Lah\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 19:50:02\",\"updated_at\":\"2024-05-07 19:50:02\"}', 2, '2024-05-07 19:50:02', '2024-05-07 19:50:02'),
(87, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 32, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_g.png\",\"pengaduan_id\":14,\"created_at\":\"2024-05-07 19:50:02\",\"updated_at\":\"2024-05-07 19:50:02\"}', 2, '2024-05-07 19:50:02', '2024-05-07 19:50:02'),
(88, 'pengaduan', 'insert', 'insert into pengaduan', 15, '{\"judul_laporan\":\"Test Terus\",\"isi_laporan\":\"Anjing Lah\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 19:50:03\",\"updated_at\":\"2024-05-07 19:50:03\"}', 2, '2024-05-07 19:50:03', '2024-05-07 19:50:03'),
(89, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 33, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667.png\",\"pengaduan_id\":15,\"created_at\":\"2024-05-07 19:50:03\",\"updated_at\":\"2024-05-07 19:50:03\"}', 2, '2024-05-07 19:50:03', '2024-05-07 19:50:03'),
(90, 'pengaduan', 'insert', 'insert into pengaduan', 16, '{\"judul_laporan\":\"dadaw\",\"isi_laporan\":\"dadaw\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:23:16\",\"updated_at\":\"2024-05-07 20:23:16\"}', 2, '2024-05-07 20:23:16', '2024-05-07 20:23:16'),
(91, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 34, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667.png\",\"pengaduan_id\":\"undefined\",\"created_at\":\"2024-05-07 20:23:16\",\"updated_at\":\"2024-05-07 20:23:16\"}', 2, '2024-05-07 20:23:16', '2024-05-07 20:23:16'),
(92, 'pengaduan', 'insert', 'insert into pengaduan', 17, '{\"judul_laporan\":\"Awkiwkos\",\"isi_laporan\":\"dkadawda\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:24:39\",\"updated_at\":\"2024-05-07 20:24:39\"}', 2, '2024-05-07 20:24:39', '2024-05-07 20:24:39'),
(93, 'pengaduan', 'insert', 'insert into pengaduan', 18, '{\"judul_laporan\":\"Awkiwkos\",\"isi_laporan\":\"dkadawda\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:24:53\",\"updated_at\":\"2024-05-07 20:24:53\"}', 2, '2024-05-07 20:24:53', '2024-05-07 20:24:53'),
(94, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 35, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165.jpg\",\"pengaduan_id\":\"0\",\"created_at\":\"2024-05-07 20:24:53\",\"updated_at\":\"2024-05-07 20:24:53\"}', 2, '2024-05-07 20:24:53', '2024-05-07 20:24:53'),
(95, 'pengaduan', 'insert', 'insert into pengaduan', 19, '{\"judul_laporan\":\"dadawdadad\",\"isi_laporan\":\"dawwdad\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:25:55\",\"updated_at\":\"2024-05-07 20:25:55\"}', 2, '2024-05-07 20:25:55', '2024-05-07 20:25:55'),
(96, 'pengaduan', 'insert', 'insert into pengaduan', 20, '{\"judul_laporan\":\"dhakjdhawjkdawh\",\"isi_laporan\":\"dhajkdhawjkdhja\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:27:58\",\"updated_at\":\"2024-05-07 20:27:58\"}', 2, '2024-05-07 20:27:58', '2024-05-07 20:27:58'),
(97, 'pengaduan', 'insert', 'insert into pengaduan', 21, '{\"judul_laporan\":\"dhakjdhawjkdawh\",\"isi_laporan\":\"dhajkdhawjkdhja\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:28:09\",\"updated_at\":\"2024-05-07 20:28:09\"}', 2, '2024-05-07 20:28:09', '2024-05-07 20:28:09'),
(98, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 36, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165_1.jpg\",\"pengaduan_id\":\"0\",\"created_at\":\"2024-05-07 20:28:09\",\"updated_at\":\"2024-05-07 20:28:09\"}', 2, '2024-05-07 20:28:09', '2024-05-07 20:28:09'),
(99, 'pengaduan', 'insert', 'insert into pengaduan', 22, '{\"judul_laporan\":\"dhakjdhawjkdawh\",\"isi_laporan\":\"dhajkdhawjkdhja\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:29:43\",\"updated_at\":\"2024-05-07 20:29:43\"}', 2, '2024-05-07 20:29:43', '2024-05-07 20:29:43'),
(100, 'pengaduan', 'insert', 'insert into pengaduan', 23, '{\"judul_laporan\":\"dhakjdhawjkdawh\",\"isi_laporan\":\"dhajkdhawjkdhja\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:29:54\",\"updated_at\":\"2024-05-07 20:29:54\"}', 2, '2024-05-07 20:29:54', '2024-05-07 20:29:54'),
(101, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 37, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_g.png\",\"pengaduan_id\":\"0\",\"created_at\":\"2024-05-07 20:29:54\",\"updated_at\":\"2024-05-07 20:29:54\"}', 2, '2024-05-07 20:29:54', '2024-05-07 20:29:54'),
(102, 'pengaduan', 'insert', 'insert into pengaduan', 24, '{\"judul_laporan\":\"dkalndwaklnd\",\"isi_laporan\":\"ndkandlkwan\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:31:02\",\"updated_at\":\"2024-05-07 20:31:02\"}', 2, '2024-05-07 20:31:02', '2024-05-07 20:31:02'),
(103, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 38, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_w.png\",\"pengaduan_id\":\"0\",\"created_at\":\"2024-05-07 20:31:02\",\"updated_at\":\"2024-05-07 20:31:02\"}', 2, '2024-05-07 20:31:02', '2024-05-07 20:31:02'),
(104, 'pengaduan', 'insert', 'insert into pengaduan', 25, '{\"judul_laporan\":\"dawbjkdawbjk\",\"isi_laporan\":\"bdjkabdjkaw\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:32:06\",\"updated_at\":\"2024-05-07 20:32:06\"}', 2, '2024-05-07 20:32:06', '2024-05-07 20:32:06'),
(105, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 39, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667.png\",\"pengaduan_id\":\"0\",\"created_at\":\"2024-05-07 20:32:06\",\"updated_at\":\"2024-05-07 20:32:06\"}', 2, '2024-05-07 20:32:06', '2024-05-07 20:32:06'),
(106, 'pengaduan', 'insert', 'insert into pengaduan', 26, '{\"judul_laporan\":\"dawbjkdawbjk\",\"isi_laporan\":\"bdjkabdjkaw\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:32:33\",\"updated_at\":\"2024-05-07 20:32:33\"}', 2, '2024-05-07 20:32:33', '2024-05-07 20:32:33'),
(107, 'pengaduan', 'insert', 'insert into pengaduan', 27, '{\"judul_laporan\":\"kontoadlanwd\",\"isi_laporan\":\"dnaklwdnkwajdn\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:32:46\",\"updated_at\":\"2024-05-07 20:32:46\"}', 2, '2024-05-07 20:32:46', '2024-05-07 20:32:46'),
(108, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 40, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_w_1.png\",\"pengaduan_id\":\"0\",\"created_at\":\"2024-05-07 20:32:46\",\"updated_at\":\"2024-05-07 20:32:46\"}', 2, '2024-05-07 20:32:46', '2024-05-07 20:32:46'),
(109, 'pengaduan', 'insert', 'insert into pengaduan', 28, '{\"judul_laporan\":\"dhajdhjkawdjawk\",\"isi_laporan\":\"dabjkdbawjbd\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:35:06\",\"updated_at\":\"2024-05-07 20:35:06\"}', 2, '2024-05-07 20:35:06', '2024-05-07 20:35:06'),
(110, 'pengaduan', 'insert', 'insert into pengaduan', 29, '{\"judul_laporan\":\"dhajdhjkawdjawk\",\"isi_laporan\":\"dabjkdbawjbd\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:35:10\",\"updated_at\":\"2024-05-07 20:35:10\"}', 2, '2024-05-07 20:35:10', '2024-05-07 20:35:10'),
(111, 'pengaduan', 'insert', 'insert into pengaduan', 30, '{\"judul_laporan\":\"daklndkwalnand\",\"isi_laporan\":\"ndklandklawnkdnakdln\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:39:46\",\"updated_at\":\"2024-05-07 20:39:46\"}', 2, '2024-05-07 20:39:46', '2024-05-07 20:39:46'),
(112, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 41, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103_1.jpg\",\"pengaduan_id\":\"\",\"created_at\":\"2024-05-07 20:39:46\",\"updated_at\":\"2024-05-07 20:39:46\"}', 2, '2024-05-07 20:39:46', '2024-05-07 20:39:46'),
(113, 'pengaduan', 'insert', 'insert into pengaduan', 31, '{\"judul_laporan\":\"bdajkbdawjkbdawbdjk\",\"isi_laporan\":\"bjdkbajkdbawjkbdkjab\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:40:54\",\"updated_at\":\"2024-05-07 20:40:54\"}', 2, '2024-05-07 20:40:54', '2024-05-07 20:40:54'),
(114, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 42, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_w.png\",\"pengaduan_id\":\"\",\"created_at\":\"2024-05-07 20:40:54\",\"updated_at\":\"2024-05-07 20:40:54\"}', 2, '2024-05-07 20:40:54', '2024-05-07 20:40:54'),
(115, 'pengaduan', 'insert', 'insert into pengaduan', 32, '{\"judul_laporan\":\"dawkdnkajwn\",\"isi_laporan\":\"djkajkdbawkjldba dh\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:41:55\",\"updated_at\":\"2024-05-07 20:41:55\"}', 2, '2024-05-07 20:41:55', '2024-05-07 20:41:55'),
(116, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 43, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_g.png\",\"pengaduan_id\":\"32\",\"created_at\":\"2024-05-07 20:41:55\",\"updated_at\":\"2024-05-07 20:41:55\"}', 2, '2024-05-07 20:41:55', '2024-05-07 20:41:55'),
(117, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 44, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_g_1.png\",\"pengaduan_id\":\"32\",\"created_at\":\"2024-05-07 20:42:03\",\"updated_at\":\"2024-05-07 20:42:03\"}', 2, '2024-05-07 20:42:03', '2024-05-07 20:42:03'),
(118, 'pengaduan', 'insert', 'insert into pengaduan', 33, '{\"judul_laporan\":\"Hahihiho\",\"isi_laporan\":\"hahihoh\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:43:55\",\"updated_at\":\"2024-05-07 20:43:55\"}', 2, '2024-05-07 20:43:55', '2024-05-07 20:43:55'),
(119, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 45, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg\",\"pengaduan_id\":\"33\",\"created_at\":\"2024-05-07 20:43:56\",\"updated_at\":\"2024-05-07 20:43:56\"}', 2, '2024-05-07 20:43:56', '2024-05-07 20:43:56'),
(120, 'pengaduan', 'insert', 'insert into pengaduan', 34, '{\"judul_laporan\":\"teatsdwa\",\"isi_laporan\":\"dawdabjdba\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:45:20\",\"updated_at\":\"2024-05-07 20:45:20\"}', 2, '2024-05-07 20:45:20', '2024-05-07 20:45:20'),
(121, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 46, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg\",\"pengaduan_id\":\"34\",\"created_at\":\"2024-05-07 20:45:20\",\"updated_at\":\"2024-05-07 20:45:20\"}', 2, '2024-05-07 20:45:20', '2024-05-07 20:45:20'),
(122, 'pengaduan', 'insert', 'insert into pengaduan', 35, '{\"judul_laporan\":\"hkjadbjkbdjkabdjawbdbj\",\"isi_laporan\":\"bdjkabdjkabdjkawbdajk\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 20:48:24\",\"updated_at\":\"2024-05-07 20:48:24\"}', 2, '2024-05-07 20:48:24', '2024-05-07 20:48:24'),
(123, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 47, '{\"foto\":\"Screenshot 2021-11-25 161001.png\",\"pengaduan_id\":\"35\",\"created_at\":\"2024-05-07 20:48:24\",\"updated_at\":\"2024-05-07 20:48:24\"}', 2, '2024-05-07 20:48:24', '2024-05-07 20:48:24'),
(124, 'pengaduan', 'delete', 'delete from pengaduan', 35, 'null', 2, '2024-05-07 20:48:57', '2024-05-07 20:48:57'),
(125, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 2, '2024-05-07 20:48:57', '2024-05-07 20:48:57'),
(126, 'pengaduan', 'delete', 'delete from pengaduan', 34, 'null', 2, '2024-05-07 20:51:07', '2024-05-07 20:51:07'),
(127, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 2, '2024-05-07 20:51:07', '2024-05-07 20:51:07'),
(128, 'pengaduan', 'delete', 'delete from pengaduan', 33, 'null', 2, '2024-05-07 20:55:54', '2024-05-07 20:55:54'),
(129, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 2, '2024-05-07 20:55:54', '2024-05-07 20:55:54'),
(130, 'pengaduan', 'delete', 'delete from pengaduan', 10, 'null', 2, '2024-05-07 21:00:49', '2024-05-07 21:00:49'),
(131, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 2, '2024-05-07 21:00:49', '2024-05-07 21:00:49'),
(132, 'pengaduan', 'insert', 'insert into pengaduan', 36, '{\"judul_laporan\":\"Jalanan Bagong\",\"isi_laporan\":\"Bagong Bangsat\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 21:01:45\",\"updated_at\":\"2024-05-07 21:01:45\"}', 2, '2024-05-07 21:01:45', '2024-05-07 21:01:45'),
(133, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 48, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_g.png\",\"pengaduan_id\":\"36\",\"created_at\":\"2024-05-07 21:01:45\",\"updated_at\":\"2024-05-07 21:01:45\"}', 2, '2024-05-07 21:01:45', '2024-05-07 21:01:45'),
(134, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 49, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667.png\",\"pengaduan_id\":\"36\",\"created_at\":\"2024-05-07 21:01:45\",\"updated_at\":\"2024-05-07 21:01:45\"}', 2, '2024-05-07 21:01:45', '2024-05-07 21:01:45'),
(135, 'pengaduan', 'delete', 'delete from pengaduan', 36, 'null', 2, '2024-05-07 21:02:03', '2024-05-07 21:02:03'),
(136, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 2, '2024-05-07 21:02:03', '2024-05-07 21:02:03'),
(137, '', 'logout', 'logout from system', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 2, '2024-05-07 21:05:16', '2024-05-07 21:05:16'),
(138, '', 'login', 'login into system as admin', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-05-07 21:05:20', '2024-05-07 21:05:20'),
(139, '', 'logout', 'logout from system', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 1, '2024-05-07 21:05:43', '2024-05-07 21:05:43'),
(140, '', 'login', 'login into system as user', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 2, '2024-05-07 21:05:47', '2024-05-07 21:05:47'),
(141, 'pengaduan', 'insert', 'insert into pengaduan', 37, '{\"judul_laporan\":\"Hahahaha\",\"isi_laporan\":\"hahahahahaha\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 21:07:27\",\"updated_at\":\"2024-05-07 21:07:27\"}', 2, '2024-05-07 21:07:27', '2024-05-07 21:07:27'),
(142, 'pengaduan', 'insert', 'insert into pengaduan', 38, '{\"judul_laporan\":\"Hahahaha\",\"isi_laporan\":\"hahahahahaha\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 21:07:40\",\"updated_at\":\"2024-05-07 21:07:40\"}', 2, '2024-05-07 21:07:40', '2024-05-07 21:07:40'),
(143, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 50, '{\"foto\":\"vlcsnap-2024-02-07-23h06m55s667_g.png\",\"pengaduan_id\":\"38\",\"created_at\":\"2024-05-07 21:07:40\",\"updated_at\":\"2024-05-07 21:07:40\"}', 2, '2024-05-07 21:07:40', '2024-05-07 21:07:40'),
(144, 'pengaduan', 'delete', 'delete from pengaduan', 37, 'null', 2, '2024-05-07 21:07:43', '2024-05-07 21:07:43'),
(145, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 2, '2024-05-07 21:07:43', '2024-05-07 21:07:43'),
(146, 'pengaduan', 'insert', 'insert into pengaduan', 39, '{\"judul_laporan\":\"Jakarta\",\"isi_laporan\":\"Hari Ini\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-07 21:21:15\",\"updated_at\":\"2024-05-07 21:21:15\"}', 2, '2024-05-07 21:21:15', '2024-05-07 21:21:15'),
(147, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 51, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.22.165.jpg\",\"pengaduan_id\":\"39\",\"created_at\":\"2024-05-07 21:21:15\",\"updated_at\":\"2024-05-07 21:21:15\"}', 2, '2024-05-07 21:21:15', '2024-05-07 21:21:15'),
(148, '', 'login', 'login into system as user', 0, '[\"::1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36 Edg\\/123.0.0.0\"]', 2, '2024-05-08 01:52:59', '2024-05-08 01:52:59'),
(149, 'pengaduan', 'update', 'update into pengaduan', 38, '{\"judul_laporan\":\"Hahahaha\",\"isi_laporan\":\" hahahahahaha\",\"updated_at\":\"2024-05-08 01:58:23\"}', 2, '2024-05-08 01:58:23', '2024-05-08 01:58:23'),
(150, 'pengaduan', 'update', 'update into pengaduan', 38, '{\"judul_laporan\":\"Hahahaha\",\"isi_laporan\":\"  hahahahahaha\",\"updated_at\":\"2024-05-08 02:00:52\"}', 2, '2024-05-08 02:00:52', '2024-05-08 02:00:52'),
(151, '', 'login', 'login into system as admin', 0, '[\"127.0.0.1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36 Edg\\/125.0.0.0\"]', 1, '2024-05-20 12:23:33', '2024-05-20 12:23:33'),
(152, 'pengaduan', 'update', 'update into pengaduan', 9, '{\"status\":\"proses\",\"updated_at\":\"2024-05-20 16:39:27\"}', 1, '2024-05-20 16:39:27', '2024-05-20 16:39:27'),
(153, 'tanggapan', 'insert', 'insert into tanggapan', 1, '{\"pengaduan_id\":\"9\",\"user_id\":\"1\",\"created_at\":\"2024-05-20 16:39:27\",\"updated_at\":\"2024-05-20 16:39:27\"}', 1, '2024-05-20 16:39:27', '2024-05-20 16:39:27'),
(154, 'pengaduan', 'update', 'update into pengaduan', 9, '{\"status\":\"proses\",\"updated_at\":\"2024-05-20 17:43:49\"}', 1, '2024-05-20 17:43:49', '2024-05-20 17:43:49'),
(155, 'tanggapan', 'update', 'update into tanggapan', 1, '{\"pengaduan_id\":\"9\",\"isi_tanggapan\":\"Okeyyy Sipp\",\"user_id\":\"1\",\"updated_at\":\"2024-05-20 17:43:49\"}', 1, '2024-05-20 17:43:49', '2024-05-20 17:43:49'),
(156, 'pengaduan', 'update', 'update into pengaduan', 38, '{\"status\":\"proses\",\"updated_at\":\"2024-05-20 17:44:13\"}', 1, '2024-05-20 17:44:13', '2024-05-20 17:44:13'),
(157, 'tanggapan', 'insert', 'insert into tanggapan', 2, '{\"pengaduan_id\":\"38\",\"isi_tanggapan\":\"Kocak\",\"user_id\":\"1\",\"created_at\":\"2024-05-20 17:44:13\",\"updated_at\":\"2024-05-20 17:44:13\"}', 1, '2024-05-20 17:44:13', '2024-05-20 17:44:13'),
(158, 'pengaduan', 'insert', 'insert into pengaduan', 40, '{\"judul_laporan\":\"Jalan Jelek\",\"isi_laporan\":\"Jalannya jelek banget\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-20 18:31:23\",\"updated_at\":\"2024-05-20 18:31:23\"}', 1, '2024-05-20 18:31:23', '2024-05-20 18:31:23'),
(159, 'pengaduan', 'insert', 'insert into pengaduan', 41, '{\"judul_laporan\":\"Jalan Jelek\",\"isi_laporan\":\"Jalannya jelek banget\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-20 18:31:59\",\"updated_at\":\"2024-05-20 18:31:59\"}', 1, '2024-05-20 18:31:59', '2024-05-20 18:31:59'),
(160, 'pengaduan', 'insert', 'insert into pengaduan', 42, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-20 18:34:21\",\"updated_at\":\"2024-05-20 18:34:21\"}', 1, '2024-05-20 18:34:21', '2024-05-20 18:34:21'),
(161, 'pengaduan', 'insert', 'insert into pengaduan', 43, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-20 18:40:51\",\"updated_at\":\"2024-05-20 18:40:51\"}', 1, '2024-05-20 18:40:51', '2024-05-20 18:40:51'),
(162, 'pengaduan', 'insert', 'insert into pengaduan', 44, '{\"judul_laporan\":\"anj\",\"isi_laporan\":\"anj\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-20 18:42:42\",\"updated_at\":\"2024-05-20 18:42:42\"}', 1, '2024-05-20 18:42:42', '2024-05-20 18:42:42'),
(163, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 52, '{\"foto\":\"jalanan rusak.jpeg\",\"pengaduan_id\":\"44\",\"created_at\":\"2024-05-20 18:43:03\",\"updated_at\":\"2024-05-20 18:43:03\"}', 1, '2024-05-20 18:43:03', '2024-05-20 18:43:03'),
(164, 'pengaduan', 'update', 'update into pengaduan', 9, '{\"status\":\"proses\",\"updated_at\":\"2024-05-20 19:06:55\"}', 1, '2024-05-20 19:06:55', '2024-05-20 19:06:55'),
(165, 'tanggapan', 'update', 'update into tanggapan', 1, '{\"pengaduan_id\":\"9\",\"isi_tanggapan\":\"Okeyyy Sipp Boss!\",\"user_id\":\"1\",\"updated_at\":\"2024-05-20 19:06:55\"}', 1, '2024-05-20 19:06:55', '2024-05-20 19:06:55'),
(166, 'pengaduan', 'update', 'update into pengaduan', 9, '{\"status\":\"selesai\",\"updated_at\":\"2024-05-20 19:07:27\"}', 1, '2024-05-20 19:07:27', '2024-05-20 19:07:27'),
(167, 'tanggapan', 'update', 'update into tanggapan', 1, '{\"pengaduan_id\":\"9\",\"isi_tanggapan\":\"Okeyyy Sipp Boss!\",\"user_id\":\"1\",\"updated_at\":\"2024-05-20 19:07:27\"}', 1, '2024-05-20 19:07:27', '2024-05-20 19:07:27'),
(168, '', 'login', 'login into system as admin', 0, '[\"127.0.0.1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36 Edg\\/125.0.0.0\"]', 1, '2024-05-21 01:49:11', '2024-05-21 01:49:11'),
(169, 'pengaduan', 'delete', 'delete from pengaduan', 44, 'null', 1, '2024-05-21 02:16:51', '2024-05-21 02:16:51'),
(170, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 1, '2024-05-21 02:16:51', '2024-05-21 02:16:51'),
(171, 'tanggapan', 'delete', 'delete from tanggapan', NULL, 'null', 1, '2024-05-21 02:16:51', '2024-05-21 02:16:51'),
(172, 'pengaduan', 'delete', 'delete from pengaduan', 43, 'null', 1, '2024-05-21 02:17:20', '2024-05-21 02:17:20'),
(173, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 1, '2024-05-21 02:17:20', '2024-05-21 02:17:20'),
(174, 'tanggapan', 'delete', 'delete from tanggapan', NULL, 'null', 1, '2024-05-21 02:17:20', '2024-05-21 02:17:20'),
(175, 'pengaduan', 'delete', 'delete from pengaduan', 42, 'null', 1, '2024-05-21 02:20:51', '2024-05-21 02:20:51'),
(176, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 1, '2024-05-21 02:20:51', '2024-05-21 02:20:51'),
(177, 'tanggapan', 'delete', 'delete from tanggapan', NULL, 'null', 1, '2024-05-21 02:20:51', '2024-05-21 02:20:51'),
(178, 'pengaduan', 'delete', 'delete from pengaduan', 39, 'null', 1, '2024-05-21 02:31:30', '2024-05-21 02:31:30'),
(179, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 1, '2024-05-21 02:31:30', '2024-05-21 02:31:30'),
(180, 'tanggapan', 'delete', 'delete from tanggapan', NULL, 'null', 1, '2024-05-21 02:31:30', '2024-05-21 02:31:30'),
(181, 'tanggapan', 'delete', 'delete from tanggapan', NULL, 'null', 1, '2024-05-21 02:56:57', '2024-05-21 02:56:57'),
(182, 'pengaduan', 'delete', 'delete from pengaduan', 38, 'null', 1, '2024-05-21 02:56:57', '2024-05-21 02:56:57'),
(183, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 1, '2024-05-21 02:56:57', '2024-05-21 02:56:57'),
(184, 'pengaduan', 'insert', 'insert into pengaduan', 45, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"1\",\"created_at\":\"2024-05-21 02:59:05\",\"updated_at\":\"2024-05-21 02:59:05\"}', 1, '2024-05-21 02:59:05', '2024-05-21 02:59:05'),
(185, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 53, '{\"foto\":\"jalanan rusak.jpeg\",\"pengaduan_id\":\"45\",\"created_at\":\"2024-05-21 02:59:05\",\"updated_at\":\"2024-05-21 02:59:05\"}', 1, '2024-05-21 02:59:05', '2024-05-21 02:59:05'),
(186, 'tanggapan', 'delete', 'delete from tanggapan', NULL, 'null', 1, '2024-05-21 02:59:11', '2024-05-21 02:59:11'),
(187, 'pengaduan', 'delete', 'delete from pengaduan', 45, 'null', 1, '2024-05-21 02:59:11', '2024-05-21 02:59:11'),
(188, 'pengaduan_foto', 'delete', 'delete from pengaduan_foto', NULL, 'null', 1, '2024-05-21 02:59:11', '2024-05-21 02:59:11'),
(189, '', 'logout', 'logout from system', 0, '[\"127.0.0.1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36 Edg\\/125.0.0.0\"]', 1, '2024-05-21 03:04:09', '2024-05-21 03:04:09'),
(190, '', 'login', 'login into system as user', 0, '[\"127.0.0.1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36 Edg\\/125.0.0.0\"]', 2, '2024-05-21 03:04:22', '2024-05-21 03:04:22'),
(191, 'user', 'update', 'update into user', 2, '{\"username\":\"ryzntx\",\"email\":\"thalalatha13@gmail.com\",\"telp\":\"08142324123\",\"alamat\":\"adnkawdawdkawdjawdawdawdjaw\",\"updated_at\":\"2024-05-21 03:12:15\"}', 2, '2024-05-21 03:12:15', '2024-05-21 03:12:15'),
(192, 'user', 'update', 'update into user', 2, '{\"username\":\"ryzntx\",\"email\":\"thalalatha13@gmail.com\",\"telp\":\"08142324123\",\"alamat\":\"adnkawdawdkawdjawdawdawdjaw\",\"updated_at\":\"2024-05-21 03:12:31\"}', 2, '2024-05-21 03:12:31', '2024-05-21 03:12:31'),
(193, 'user', 'update', 'update into user', 2, '{\"username\":\"ryzntx\",\"email\":\"thalalatha13@gmail.com\",\"telp\":\"08142324123\",\"alamat\":\"akdkawjdaw\",\"updated_at\":\"2024-05-21 03:16:47\"}', 2, '2024-05-21 03:16:47', '2024-05-21 03:16:47'),
(194, '', 'login', 'login into system as user', 0, '[\"127.0.0.1\",\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36 Edg\\/125.0.0.0\"]', 2, '2024-05-21 07:22:53', '2024-05-21 07:22:53'),
(195, 'pengaduan', 'insert', 'insert into pengaduan', 46, '{\"judul_laporan\":\"Kerusakan Jembatan\",\"isi_laporan\":\"Kerusakan Jembatan di RW 08 yang di akibatkan oleh truk pasir yang melintas\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:26:39\",\"updated_at\":\"2024-05-21 07:26:39\"}', 2, '2024-05-21 07:26:40', '2024-05-21 07:26:40'),
(196, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 54, '{\"foto\":\"jalanan rusak.jpeg\",\"pengaduan_id\":\"46\",\"created_at\":\"2024-05-21 07:26:40\",\"updated_at\":\"2024-05-21 07:26:40\"}', 2, '2024-05-21 07:26:40', '2024-05-21 07:26:40'),
(197, 'pengaduan', 'insert', 'insert into pengaduan', 47, '{\"judul_laporan\":\"Pungutan liar oleh pihak keamanan\",\"isi_laporan\":\"Para warga RW 08 merasa resah karena iuran keamanan terasa lebih mahal dari bulan sebelumnya, kami warga rw 08 curiga adanya pungutan liar oleh pihak keamanan\",\"status\":\"baru\",\"user_id\":\"', 2, '2024-05-21 07:31:55', '2024-05-21 07:31:55'),
(198, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 55, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg\",\"pengaduan_id\":\"47\",\"created_at\":\"2024-05-21 07:31:55\",\"updated_at\":\"2024-05-21 07:31:55\"}', 2, '2024-05-21 07:31:55', '2024-05-21 07:31:55'),
(199, 'pengaduan', 'insert', 'insert into pengaduan', 48, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:32:33\",\"updated_at\":\"2024-05-21 07:32:33\"}', 2, '2024-05-21 07:32:33', '2024-05-21 07:32:33'),
(200, 'pengaduan', 'insert', 'insert into pengaduan', 49, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:32:33\",\"updated_at\":\"2024-05-21 07:32:33\"}', 2, '2024-05-21 07:32:34', '2024-05-21 07:32:34'),
(201, 'pengaduan', 'insert', 'insert into pengaduan', 50, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:32:51\",\"updated_at\":\"2024-05-21 07:32:51\"}', 2, '2024-05-21 07:32:51', '2024-05-21 07:32:51'),
(202, 'pengaduan', 'insert', 'insert into pengaduan', 51, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:33:56\",\"updated_at\":\"2024-05-21 07:33:56\"}', 2, '2024-05-21 07:33:56', '2024-05-21 07:33:56'),
(203, 'pengaduan', 'insert', 'insert into pengaduan', 52, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"test\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:34:06\",\"updated_at\":\"2024-05-21 07:34:06\"}', 2, '2024-05-21 07:34:06', '2024-05-21 07:34:06'),
(204, 'pengaduan', 'insert', 'insert into pengaduan', 53, '{\"judul_laporan\":\"tetst\",\"isi_laporan\":\"etast\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:37:02\",\"updated_at\":\"2024-05-21 07:37:02\"}', 2, '2024-05-21 07:37:02', '2024-05-21 07:37:02');
INSERT INTO `log` (`id`, `tables_name`, `event`, `description`, `subject_id`, `data`, `user_id`, `created_at`, `updated_at`) VALUES
(205, 'pengaduan', 'insert', 'insert into pengaduan', 54, '{\"judul_laporan\":\"tetst\",\"isi_laporan\":\"etast\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:37:06\",\"updated_at\":\"2024-05-21 07:37:06\"}', 2, '2024-05-21 07:37:06', '2024-05-21 07:37:06'),
(206, 'pengaduan', 'insert', 'insert into pengaduan', 55, '{\"judul_laporan\":\"test\",\"isi_laporan\":\"testsa\\r\\n\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:38:20\",\"updated_at\":\"2024-05-21 07:38:20\"}', 2, '2024-05-21 07:38:20', '2024-05-21 07:38:20'),
(207, 'pengaduan', 'insert', 'insert into pengaduan', 56, '{\"judul_laporan\":\"bbj\",\"isi_laporan\":\"bjb\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:41:15\",\"updated_at\":\"2024-05-21 07:41:15\"}', 2, '2024-05-21 07:41:15', '2024-05-21 07:41:15'),
(208, 'pengaduan', 'insert', 'insert into pengaduan', 57, '{\"judul_laporan\":\"bbj\",\"isi_laporan\":\"bjb\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:42:53\",\"updated_at\":\"2024-05-21 07:42:53\"}', 2, '2024-05-21 07:42:53', '2024-05-21 07:42:53'),
(209, 'pengaduan', 'insert', 'insert into pengaduan', 58, '{\"judul_laporan\":\"bbj\",\"isi_laporan\":\"bjb\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:44:10\",\"updated_at\":\"2024-05-21 07:44:10\"}', 2, '2024-05-21 07:44:10', '2024-05-21 07:44:10'),
(210, 'pengaduan_foto', 'insert', 'insert into pengaduan_foto', 56, '{\"foto\":\"Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg\",\"pengaduan_id\":\"58\",\"created_at\":\"2024-05-21 07:44:10\",\"updated_at\":\"2024-05-21 07:44:10\"}', 2, '2024-05-21 07:44:10', '2024-05-21 07:44:10'),
(211, 'pengaduan', 'insert', 'insert into pengaduan', 59, '{\"judul_laporan\":\"teadwa\",\"isi_laporan\":\"dadawdaw\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:45:43\",\"updated_at\":\"2024-05-21 07:45:43\"}', 2, '2024-05-21 07:45:43', '2024-05-21 07:45:43'),
(212, 'pengaduan', 'insert', 'insert into pengaduan', 60, '{\"judul_laporan\":\"jdawhdwa\",\"isi_laporan\":\"jabdjaw\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:52:57\",\"updated_at\":\"2024-05-21 07:52:57\"}', 2, '2024-05-21 07:52:57', '2024-05-21 07:52:57'),
(213, 'pengaduan', 'insert', 'insert into pengaduan', 61, '{\"judul_laporan\":\"dkawdkl\",\"isi_laporan\":\"dnajkwdnawjk\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:58:04\",\"updated_at\":\"2024-05-21 07:58:04\"}', 2, '2024-05-21 07:58:04', '2024-05-21 07:58:04'),
(214, 'pengaduan', 'insert', 'insert into pengaduan', 62, '{\"judul_laporan\":\"dkawdkl\",\"isi_laporan\":\"dnajkwdnawjk\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 07:58:34\",\"updated_at\":\"2024-05-21 07:58:34\"}', 2, '2024-05-21 07:58:34', '2024-05-21 07:58:34'),
(215, 'pengaduan', 'insert', 'insert into pengaduan', 63, '{\"judul_laporan\":\"ndadnaw\",\"isi_laporan\":\"ndkjadkjaw\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 08:04:42\",\"updated_at\":\"2024-05-21 08:04:42\"}', 2, '2024-05-21 08:04:42', '2024-05-21 08:04:42'),
(216, 'pengaduan', 'insert', 'insert into pengaduan', 64, '{\"judul_laporan\":\"dkandkwnk\",\"isi_laporan\":\"dknakwnd\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 08:08:07\",\"updated_at\":\"2024-05-21 08:08:07\"}', 2, '2024-05-21 08:08:07', '2024-05-21 08:08:07'),
(217, 'pengaduan', 'insert', 'insert into pengaduan', 65, '{\"judul_laporan\":\"danwknda\",\"isi_laporan\":\"andkwa\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 08:11:32\",\"updated_at\":\"2024-05-21 08:11:32\"}', 2, '2024-05-21 08:11:32', '2024-05-21 08:11:32'),
(218, 'pengaduan', 'insert', 'insert into pengaduan', 66, '{\"judul_laporan\":\"Pungli oleh Pemuda Panca Sila\",\"isi_laporan\":\"dakllndkawlnd\",\"status\":\"baru\",\"user_id\":\"2\",\"created_at\":\"2024-05-21 08:12:27\",\"updated_at\":\"2024-05-21 08:12:27\"}', 2, '2024-05-21 08:12:27', '2024-05-21 08:12:27'),
(219, 'pengaduan', 'update', 'update into pengaduan', 46, '{\"status\":\"proses\",\"updated_at\":\"2024-05-21 08:20:56\"}', 2, '2024-05-21 08:20:56', '2024-05-21 08:20:56');

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

--
-- Dumping data for table `organisasi`
--

INSERT INTO `organisasi` (`id`, `nip`, `nama`, `jabatan`, `deskripsi`, `foto`, `created_at`, `updated_at`) VALUES
(1, '123456789', 'Mamat Supriatna', 'Sekretaris', 'Lorem Ipsum Dolor sit Amet', NULL, '2024-03-26 07:07:35', '2024-03-26 07:07:35'),
(2, '1923842342', 'Yayat Supriatna', 'Bendahara', 'Bendahara adalah bla blabla', 'LMC_08022022_075313.CL4P_Collection-3.0~2_1.jpg', '2024-04-02 19:31:24', '2024-04-02 19:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int NOT NULL,
  `judul_laporan` varchar(50) NOT NULL,
  `isi_laporan` text CHARACTER SET utf8mb4 NOT NULL,
  `status` enum('baru','proses','selesai') NOT NULL DEFAULT 'baru',
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `judul_laporan`, `isi_laporan`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'Laporan Jalanan Rusak', 'Jalanan rusak terjadi pada RW 07, yang disebabkan oleh truk proyek gadungan yang tidak bertanggung jawab melintas.', 'selesai', 1, '2024-05-07 09:51:45', '2024-05-20 12:07:27'),
(46, 'Kerusakan Jembatan', 'Kerusakan Jembatan di RW 08 yang di akibatkan oleh truk pasir yang melintas', 'proses', 2, '2024-05-21 00:26:39', '2024-05-21 01:20:56'),
(47, 'Pungutan liar oleh pihak keamanan', 'Para warga RW 08 merasa resah karena iuran keamanan terasa lebih mahal dari bulan sebelumnya, kami warga rw 08 curiga adanya pungutan liar oleh pihak keamanan', 'baru', 2, '2024-05-21 00:31:55', '2024-05-21 00:31:55'),
(66, 'Pungli oleh Pemuda Panca Sila', 'dakllndkawlnd', 'baru', 2, '2024-05-21 01:12:27', '2024-05-21 01:12:27');

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

--
-- Dumping data for table `pengaduan_foto`
--

INSERT INTO `pengaduan_foto` (`id`, `foto`, `pengaduan_id`, `created_at`, `updated_at`) VALUES
(12, 'jalanan rusak.jpeg', 9, '2024-05-07 09:51:45', '2024-05-07 09:51:45'),
(54, 'jalanan rusak.jpeg', 46, '2024-05-21 00:26:40', '2024-05-21 00:26:40'),
(55, 'Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg', 47, '2024-05-21 00:31:55', '2024-05-21 00:31:55'),
(56, 'Dios - -Runaway- Official Music Video.mkv_snapshot_04.23.103.jpg', 58, '2024-05-21 00:44:10', '2024-05-21 00:44:10');

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
  `isi_tanggapan` text CHARACTER SET utf8mb4 NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id`, `pengaduan_id`, `isi_tanggapan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 9, 'Okeyyy Sipp Boss!', 1, '2024-05-20 09:39:27', '2024-05-20 12:07:27');

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
(2, '1280183912', 'Thalal Atha Nabil', 'thalalatha13@gmail.com', 'ryzntx', '$2y$10$Fq.A1iLlCkHQvwkfDeB34OreLLHpU93TifeIdNjJb6XM1hl2TIlYa', '08142324123', 'akdkawjdaw', 'user', '2024-03-20 09:19:16', '2024-05-20 20:16:47'),
(3, '345678976', 'Ujang Maman', '', 'ujangmaman', '$2y$10$Fq.A1iLlCkHQvwkfDeB34OreLLHpU93TifeIdNjJb6XM1hl2TIlYa', '08765476626', '', 'user', '2024-03-20 09:19:16', '2024-05-07 17:37:14');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pengaduan_foto`
--
ALTER TABLE `pengaduan_foto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `FK_tanggapan_pengaduan` FOREIGN KEY (`pengaduan_id`) REFERENCES `pengaduan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tanggapan_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
