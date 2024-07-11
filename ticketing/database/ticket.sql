-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2024 at 04:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|127.0.0.1', 'i:1;', 1719473162),
('admin@gmail.com|127.0.0.1:timer', 'i:1719473162;', 1719473162),
('admin1@gmail.com|127.0.0.1', 'i:1;', 1720008317),
('admin1@gmail.com|127.0.0.1:timer', 'i:1720008317;', 1720008317),
('klien@gmail.com|127.0.0.1', 'i:1;', 1719454302),
('klien@gmail.com|127.0.0.1:timer', 'i:1719454302;', 1719454302),
('petugas1@gmail.com|127.0.0.1', 'i:1;', 1720009847),
('petugas1@gmail.com|127.0.0.1:timer', 'i:1720009847;', 1720009847);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Astik', 'active', '2024-05-29 22:55:56', '2024-05-29 22:55:56'),
(2, 'Id', 'active', '2024-05-29 22:55:56', '2024-05-29 22:55:56'),
(3, 'KIP', 'active', '2024-06-21 01:30:42', '2024-06-21 01:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategorimasalah`
--

CREATE TABLE `kategorimasalah` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divisions_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategorimasalah`
--

INSERT INTO `kategorimasalah` (`id`, `nama`, `divisions_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'zoom', 1, 'active', '2024-06-11 21:39:07', '2024-06-11 21:39:07'),
(2, 'Hardware', 1, 'active', '2024-06-24 21:58:05', '2024-06-24 21:58:05'),
(3, 'Software', 1, 'active', '2024-06-24 21:58:18', '2024-06-24 21:58:18'),
(4, 'Antivirus', 1, 'active', '2024-06-24 21:58:33', '2024-06-24 21:58:33'),
(5, 'Jaringan Internet', 2, 'active', '2024-06-24 21:58:53', '2024-06-24 21:58:53'),
(6, 'Publikasi', 3, 'active', '2024-06-24 21:59:10', '2024-06-24 21:59:10'),
(7, 'Dokumentasi', 3, 'active', '2024-06-24 21:59:21', '2024-06-24 21:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama_kecamatan`, `created_at`, `updated_at`) VALUES
(1, 'Koja, kelurahan rawa badak selatan', '2024-06-20 02:34:59', '2024-06-20 23:13:42'),
(2, 'Kelapa gading, kelurahan kelapa gading barat', '2024-06-20 23:16:52', '2024-06-20 23:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_08_035055_create_tickets_table', 1),
(5, '2024_05_08_074659_update_tickets', 1),
(6, '2024_05_08_074818_update_tickets', 1),
(7, '2024_05_08_080145_add_email_to_tickets_table', 1),
(8, '2024_05_08_091449_add_lokasi_to_tickets_table', 1),
(9, '2024_05_15_092259_add_lokasi_to_users_tickets', 2),
(10, '2024_05_16_040307_add_nama_to_users_tickets', 3),
(11, '2024_05_16_041443_add_departemen_to_users_tickets', 4),
(12, '2024_05_16_042201_add_kecamatan_to_users_tickets', 5),
(13, '2024_05_16_074550_add_photo_path_to_tickets_table', 6),
(14, '2024_05_16_080626_add_photo_path_to_tickets_table', 7),
(15, '2024_05_16_083506_add_photo_path_to_tickets_table', 8),
(16, '2024_05_17_020908_add_photo_to_users_tickets', 9),
(17, '2024_05_17_083701_add_divisi_to_users_tickets', 10),
(18, '2024_05_17_084054_add_divisi_to_users_tickets', 11),
(19, '2024_05_20_035041_create_clients_table', 12),
(20, '2024_05_20_040940_create_clients_table', 13),
(21, '2024_05_21_030910_create_client_table', 14),
(22, '2024_05_21_070253_add_usertype_to_users_table', 15),
(23, '2024_05_22_064823_add_usertype_to_ticket_table', 16),
(24, '2024_05_27_040357_add_usertype_to_users_tickets', 17),
(25, '2024_05_27_035213_add_usertype_to_tickets_table', 18),
(26, '2024_05_27_035405_add_usertype_to_tickets_table', 18),
(27, '2024_05_28_083002_add_kategori_to_users_tickets', 19),
(28, '2024_05_30_053253_add__divisi', 20),
(29, '2024_05_30_054811_add_status_to_users_divisions', 21),
(30, '2024_05_30_060115_add_division_id_to_users_table', 22),
(31, '2024_06_04_031845_add_photo_closed_to_tickets_table', 23),
(34, '2024_06_05_031723_create_kecamatan', 24),
(35, '2024_06_07_021738_create_kategorimasalah_table', 25),
(36, '2024_06_21_033149_add_deskripsi_to_tickets_table', 26),
(37, '2024_06_24_013515_add_catatan_to_tickets_table', 27),
(38, '2024_06_24_013724_add_catatan_to_tickets', 28);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('andreasmandagi240403@gmail.com', '$2y$12$xvBlF7GLaQNZNI.FuzCsGuKNgPJ6CgVQqGnwPI5E8HHD0y0AAWNJq', '2024-05-17 00:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('G9mIeLjwsRzKbfA3sUyKw2yf0sVjsSNggqUwNZAT', 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidUhyQ0s0TXpJWWVEUVQ0YkdMOEVBY0FBY25qMlJSRWNiaHpWVUNVTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWthcC10aWNrZXQ/ZW5kX2RhdGU9MjAyNC0wNy0xMSZzdGFydF9kYXRlPTIwMjQtMDYtMjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMjtzOjU6ImFsZXJ0IjthOjA6e319', 1720673551),
('nbxl8Ze5ni2KpPte9Tpiy3rRVKa1GMiUoAtXzSYt', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSk9ybmZhWFlOendTVmdkaURIWWtOODh1SGpQWFJTSmV6UnFYWUk4WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90aWNrZXRzL2V4cG9ydD9lbmRfZGF0ZT0yMDI0LTA3LTMxJnN0YXJ0X2RhdGU9MjAyNC0wNy0wMSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo1OiJhbGVydCI7YTowOnt9fQ==', 1720672240),
('ukXCbY17yzz3COlEdLmKYDZATha94sDCDySuPpWC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1RhN29lcDVzNFRjU2hhZ0hOblQxVjkwVzJaUHIxWEFqaHFOcDdKSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGxpa2FzaS90aWNrZXRfY2xvc2VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720668422);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `usertype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_id` bigint UNSIGNED DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departemen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_closed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('open','closed','pending','proses') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `usertype`, `agent_id`, `nama`, `email`, `departemen`, `divisi`, `kecamatan`, `kategori`, `description`, `catatan`, `photo`, `photo_closed`, `status`, `created_at`, `updated_at`) VALUES
(1, 30, NULL, NULL, 'petugas1', 'petugas@gmail.com', 'administrasi', 'Aplikasi & Statistik', 'koja, Kelurahan kecamatan koja', 'Zoom', 'MInta tolong buatin saya link zoom buat seminar rt dan rw', 'Saya sudah buatkan linknya bapak dan ibu', '2bYbOd2tvl0SudH4N3cr6o7dB8i0QVwpksSWMU8p.png', 'ticket_photos/qouPe1pkzAi9KvlPXHPL3zF2syo4xv9xdTAFP1S7.png', 'closed', '2024-06-24 19:31:14', '2024-06-24 19:33:27'),
(2, NULL, NULL, NULL, 'bagas eko prayogo', 'bagas@gmail.com', 'Humas', 'Infrastruktur Digital', 'tanjung priok/kebon bawang', 'Network', 'wifi bermasalah', '', '7bCaycOqSEwzQKMvFZaNSSNPv0Gv4ZcyrRHP7POn.jpg', 'ticket_photos/utzmkaIU9WA1jrNhY5b6ozEGcCeymhFcZEEP8Zrj.jpg', 'closed', '2024-06-11 23:52:31', '2024-06-20 20:06:32'),
(3, NULL, NULL, NULL, 'akbar', 'akbar@gmail.com', 'Humas', 'Komunikasi Informasi Publik', 'penjaringan', 'Dokumentasi', 'tolong dokumentasikan penyuluhan yang dilakukan oleh kecamatan penjaringan', 'baik, kami sudah membuat dokumentasi penyuluhan yang di lakukan kecamatan penjaringan', 'aKrn4dGimyawBA53ZY94cbcujPtDV45rAyGE66kp.png', 'ticket_photos/BvRsHWrnaL0GkAIHDNljoP1SD16Pi2BBA3by2MA9.jpg', 'closed', '2024-06-24 00:02:59', '2024-06-24 00:20:55'),
(64, 23, '{\"id\":23,\"division_id\":1,\"usertype\":\"petugas\",\"name\":\"eko\",\"email\":\"eko@gmail.com\",\"email_verified_at\":null,\"created_at\":\"2024-06-06T02:09:38.000000Z\",\"updated_at\":\"2024-06-06T02:11:12.000000Z\"}', NULL, 'agus', 'agus@gmail.com', 'Humas', 'Infrastruktur Digital', 'tanjung priok/kebon bawang', 'Publikasi', 'asassa', '', 'Yeh1PKkLS1PDTEbZMgKaPooROxZricNKOMJUXHQ3.jpg', NULL, 'closed', '2024-06-05 22:03:21', '2024-06-12 01:30:46'),
(66, 14, '', NULL, 'agus', 'agus@gmail.com', 'Humas', 'Aplikasi & Statistik', 'kantor wali kota', 'Antivirus', 'pc terkena malware', '', 'NRTMFAWslvlaZVaGOwy3z464VW6yY4LhyPetAsCy.jpg', 'ticket_photos/mR56u6i7ZbMu84EluFqJzylY17EwiMLBd7yY988X.jpg', 'closed', '2024-06-11 23:54:48', '2024-06-20 19:37:32'),
(67, NULL, NULL, NULL, 'asri', 'asri@gmail.com', 'umum', 'Aplikasi & Statistik', 'pademangan', 'Software', 'website down', '', 'daOVmewh344aqD6r49hL8asGsBA66Sodkg4VuyzW.png', 'ticket_photos/715oGTKfZBSJyAUJr3QXH9XshMf7Lb2RjybK8QGF.jpg', 'closed', '2024-06-12 20:01:43', '2024-06-12 21:03:31'),
(68, 30, NULL, NULL, 'meimei', 'meimei@gmail.com', 'Ekonomi', 'Infrastruktur Digital', 'Koja, Kelurahan rawa badak utara', 'Hardware', 'Rusak pada komputer saya', 'Mohon maaf saya sudah perbaikan pada komputer bapak dan ibu. terima kasih', 'kI4KLtewjBeItJTXm4yz9fYcxbdkOOAnIyt7eh7w.png', 'ticket_photos/Sn3EGByiF6AtfkVofKMIV1IZAauhSGQLeBIfsV2m.jpg', 'closed', '2024-06-12 20:38:11', '2024-06-24 20:24:35'),
(69, 30, NULL, NULL, 'Upin', 'upin@gmail.com', 'Dana usaha', 'Infrastruktur Digital', 'Koja, Kelurahan rawa badak utara', 'Publikasi', 'bikinin saya zoom meeting', '', 'zsD4ZDewQ7Ce7It1yeVy10Nu5ybAHw1GyOAehAro.jpg', NULL, 'proses', '2024-06-20 19:53:59', '2024-06-24 20:19:23'),
(70, 30, NULL, NULL, 'Ipin', 'Ipin@gmail.com', 'Jaringan', 'Aplikasi & Statistik', 'kelapa gading, kelurahan kelapa gading timur', 'Network', 'Mas ada masalah pada jaringan di kelurahannya', '', 'gjTJ6RMMUQAIeE91kneWs1u4T43IVLXUp2sgsVta.jpg', NULL, 'closed', '2024-06-20 20:05:50', '2024-06-20 20:13:53'),
(71, 30, NULL, NULL, 'Ipin', 'Ipin@gmail.com', 'Jaringan', 'Aplikasi & Statistik', 'kelapa gading, kelurahan kelapa gading timur', 'Network', 'Mas ada masalah pada jaringan di kelurahannya', '', 'OV5le6vzuN4sXOfVO3p8H5k98GfzqPuFUISpXoOg.jpg', 'ticket_photos/9mqIy5Qc0Hq9C39EzqZ7TmBhLxgEV4wGK0a4QnRi.jpg', 'closed', '2024-06-20 20:06:03', '2024-06-23 18:50:57'),
(72, 30, NULL, NULL, 'Amel', 'amelia@gmail.com', 'administrasi', 'Aplikasi & Statistik', 'Koja, Kelurahan rawa badak selatan', 'Antivirus', 'Mas di laptop saya kayak ada virus ini, cara hilanginnya bagaimana ya?', 'baik virus nya sudah di hilangkan, dikarenakan bapak/ibu membuka web yang aneh aneh atau menginstall aplikasi bajakan.', 'KTe7XWplY7iNL6sZk5oNWRTciFhaIxkaHGTqogHi.png', 'ticket_photos/nk38yfPFpZnzlCyq5ePICYUkzLvmmQEoiOSQH1gq.jpg', 'closed', '2024-06-20 23:05:22', '2024-06-23 20:58:53'),
(73, 37, NULL, NULL, 'bambang', 'bambanggans@gmail.com', 'keuangan', 'Aplikasi & Statistik', 'Koja, Kelurahan rawa badak utara', 'Publikasi', 'minta tolong buatin link zopm, soalnya ada seminar', '', 'e8hNi715cwR0RZxWWY0R9pBdooGti67KIajD4xtT.jpg', 'ticket_photos/1blWTWdDL7AnQKtuALQKu5M117ONTbuk2o9VVXOo.jpg', 'closed', '2024-06-21 00:00:20', '2024-06-23 18:47:30'),
(74, 37, NULL, NULL, 'Gaga', 'gaga@gmail.com', 'bidang tata usaha', 'Infrastruktur Digital', 'Kebong bawang, Kelurahan kebong bawang', 'Dokumentasi', 'Bikin saya zoom meeting buat besok mas.', 'baik, kami sudah buatkan link zoom nya', 'tVJvZYps7FfO3YKhBoWFF2h3GtnGfmUFEZ1jcyw1.png', 'ticket_photos/NBCBGtVaShz8zIllylHs0oNXKk1aWjUfSrkUuMXQ.jpg', 'closed', '2024-06-21 01:08:11', '2024-06-25 20:09:39'),
(76, NULL, NULL, NULL, 'ali', 'ali@gmail.com', 'Humas', 'Komunikasi Informasi Publik', 'tanjung priok/kebon bawang', 'Dokumentasi', 'Tolong dokumentasi kegiatan membersihkan sungai yang dilakukan kelurahan kebon bawang', 'done', 'OpurXUQD2fdZrF86SjSiae4gubSr9Azi8bJcAhjw.jpg', 'ticket_photos/rHkte8snrse1gXQ7cOlKhrSVJACNkueGulNZqldY.jpg', 'closed', '2024-06-24 01:04:33', '2024-06-26 19:09:09'),
(78, 41, NULL, NULL, 'sumsang', 'sumsang@gmail.com', 'bidang tata usaha', 'Komunikasi Informasi Publik', 'Koja, Kelurahan rawa badak utara', 'Dokumentasi', 'saya minta tolong 1 perkalian dari kantor walikota untuk jadi dokumentasi acara kelurahan kita mas', 'sone', 'NhDKjBMLyr3jF1xO1qu0Ni5jw8XiVhoBIUOGZic6.jpg', 'ticket_photos/NJXlzTtQnGljll4ksP4oy2tt0kavEyS90zaDMp7G.jpg', 'closed', '2024-06-24 20:13:20', '2024-06-27 00:48:19'),
(79, 41, NULL, NULL, 'Amer', 'amer@gmail', 'catatan sipil', 'Komunikasi Informasi Publik', 'kelapa gading, kelurahan kelapa gading barat', 'Publikasi', 'minta tolong bantuin saya dalam kegiatan publikasi acara kelurahan kita mas', NULL, 'wdyChS2PswqbLFlLzOtdAmjNjbH8Ggu2c63vASPQ.jpg', NULL, 'proses', '2024-06-24 20:15:17', '2024-06-27 00:48:01'),
(80, NULL, NULL, NULL, 'agnes', 'agens87@gmial.com', 'Umum', 'Aplikasi & Statistik', 'kelapa gading, kelurahan pegangsaan dua', 'Zoom', 'Tolong buatkan saya link zoom untuk kegiatan kelurahan pegangsaan dua', 'done', 'o5N3R2uEDUSvkcGg7CwUN8S5ZSpry7Ti2xRQ83oq.jpg', 'ticket_photos/LmGZOHu3TNsOngw0DnDT4AS35iFAbOYkMoOzoCSO.jpg', 'closed', '2024-06-24 20:34:49', '2024-06-26 19:06:37'),
(81, 37, NULL, NULL, 'klien1', 'klien1@gmail.com', 'bidang tata usaha', 'Aplikasi & Statistik', 'Kebong bawang, Kelurahan kebong bawang', 'Zoom', 'Minta tolong bikin saya link zoomnya buat seminar ya mas, terima kasih', NULL, 'fcsdZceI4GzmJ3oYMABKImOwhMXrjIxrDCHQIqGN.jpg', NULL, 'proses', '2024-06-26 18:59:57', '2024-06-27 00:45:50'),
(82, 37, NULL, NULL, 'klien1', 'klien1@gmail.com', 'jaringan', 'Infrastruktur Digital', 'kelapa gading, kelurahan kelapa gading timur', 'Network', 'Mas minta tolong internet di kantor kelurahan kelapa gading timur ini sudah nggak aktif dari 2 hari lalu mas, terima kasih', NULL, 'MDxJ2kZ6FbOnElE9GjspmkURZPD8Ypvl7fbi4N8p.jpg', NULL, 'proses', '2024-06-26 19:01:16', '2024-06-27 00:47:09'),
(83, 37, NULL, NULL, 'klien1', 'klien1@gmail.com', 'umum', 'Aplikasi & Statistik', 'tanjung priok/kebon bawang', 'Software', 'server down', NULL, '6GrWtbIowQj6MOPCKRlU2IahcHDFMW2qLi8Xyz6z.png', NULL, 'open', '2024-07-02 01:04:24', '2024-07-02 01:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `usertype` enum('client','petugas','admin','kordinator') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'client',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `division_id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'client', 'klien2', 'klien2@gmail.com', NULL, '$2y$12$D.ei3LdxNkHqe7FIWLkX1uVonsyj7qCvBSyT0sVGMfgZaWrp747kC', NULL, '2024-06-24 19:36:19', '2024-06-24 19:36:19'),
(2, NULL, 'admin', 'admin2', 'admin2@gmail.com', NULL, '$2y$12$Ij2kgYL0kDV0pL1KD8ew3e6.PFVQ2N5IKLhZCmz8yOMxcy0XNQ6pO', NULL, '2024-06-24 19:34:52', '2024-06-24 19:34:52'),
(3, NULL, 'admin', 'bagas2', 'bagas2@gmail.com', NULL, '$2y$12$j5WLyO0O7Pvax.Wuxr6WWuChBTQCv6JP9cgBAsHoHSi36iZ1RE6bG', NULL, '2024-06-24 19:09:29', '2024-06-24 19:09:29'),
(14, NULL, 'admin', 'aku', 'aku@gmail.com', NULL, '$2y$12$irrRR9RJkaZDOXiNgn9w2uz61Pl6k.vKn7YujF8fRWLEUu2.BTmny', 'YDvEpOCCAqj3tMnWagSDP24tTEdj05wpkoNF10zonA6VlldMIaaOnoyAMZEE', '2024-05-29 22:19:35', '2024-06-11 23:40:07'),
(22, NULL, 'admin', 'andreas', 'andreas@gmail.com', NULL, '$2y$12$CzUPWwe5Vz0Cb8F6Xwfg7O/W5c.YDWdTYR9Z8ll/tHaDf18iGcFPu', NULL, '2024-06-05 19:05:56', '2024-06-05 19:05:56'),
(23, NULL, 'client', 'eko', 'eko@gmail.com', NULL, '$2y$12$p7EoS57DXzw31.GNvaJ3H.8/bMlD9ujcZ129iZAph9mGQHBl2nNzC', 'T4M6p8HepVse9XEPZnjdxIVuyVfXOvPoWb21vSNZv2ef1tNwgq1G2j2Gt4yE', '2024-06-05 19:09:38', '2024-06-05 19:11:12'),
(30, 1, 'petugas', 'petugas', 'petugas@gmail.com', NULL, '$2y$12$77/i37A2sSNoi9spOb5O3u759cGN21TWjDUcr.ZParpA4pj2eTEoq', NULL, '2024-06-09 20:57:50', '2024-06-09 20:57:50'),
(34, 1, 'petugas', 'bagaz', 'bagas09@gmail.com', NULL, '$2y$12$DsBUiU7kL3SM55cyWlRXO.kxPid16J64.ddNJnKe0aw5XyTW1Z2QS', 'RPOmuxivHOquS0YrIOPg4O2hzEiCmrMMVM2FzTD3ejUYRuQ9QlvHxm57zRry', '2024-06-13 18:49:11', '2024-06-19 01:25:11'),
(36, 2, 'petugas', 'petugas2', 'petugas2@gmail.com', NULL, '$2y$12$J4DADIXwGPi/uhbzbj7TPu56cfT18s7Mm8MUajJdVH4rzh8SVAcka', NULL, '2024-06-20 19:43:18', '2024-06-21 01:28:13'),
(37, NULL, 'client', 'klien', 'klien1@gmail.com', NULL, '$2y$12$q0HcT7w7jPQTcfnADJW5re5assaNc/B0tuBAdc7gBKS6L6bukKRf2', NULL, '2024-06-20 23:38:02', '2024-06-20 23:38:02'),
(41, 3, 'petugas', 'petugas3', 'petugas3@gmail.com', NULL, '$2y$12$DWI2lTGuYFCSZ2OgOTaSqe3cVdyNYTQQuE.Dyul5QCyPcRzDKin7m', 'ze0clTtAVxorAMlNdkW9RTRm1B5uKZSZlLtfHGU4rbSgQgMXqgAmiF1DCZn1', '2024-06-21 01:31:09', '2024-06-21 01:31:09'),
(45, NULL, 'client', 'Test User', 'test@example.com', '2024-07-02 00:27:52', '$2y$12$0OEWvaLPfF3icqeDuCoPHuC3Vxhs8N/s6lQz3bhlTGN7QXZz7TlH2', 'hh49swlLRB', '2024-07-02 00:27:53', '2024-07-02 00:27:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategorimasalah`
--
ALTER TABLE `kategorimasalah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategorimasalah_divisions_id_foreign` (`divisions_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_agent_id_foreign` (`agent_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_division_id_foreign` (`division_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategorimasalah`
--
ALTER TABLE `kategorimasalah`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategorimasalah`
--
ALTER TABLE `kategorimasalah`
  ADD CONSTRAINT `kategorimasalah_divisions_id_foreign` FOREIGN KEY (`divisions_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
