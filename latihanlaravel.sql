-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 03:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihanlaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Informatika', 'Akreditasi A', NULL, NULL),
(2, 'Sistem Informasi', 'Akreditasi A', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kampus_binus`
--

CREATE TABLE `kampus_binus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kampus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kampus_binus`
--

INSERT INTO `kampus_binus` (`id`, `nama_kampus`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Kampus Anggrek', 'Kebon Jeruk', NULL, NULL),
(2, 'Kampus Alam Sutera', 'Alam Sutera', NULL, NULL),
(3, 'Kampus Syahdan', 'KH Syahdan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `kampus_binus_id` bigint(20) UNSIGNED NOT NULL,
  `nim` bigint(20) NOT NULL,
  `nama` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `jurusan_id`, `kampus_binus_id`, `nim`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 96486, 'Nilam Faizah Winarsih M.Pd', 'Ds. Bawal No. 557, Manado 52942, Maluku', NULL, NULL),
(2, 1, 3, 13438, 'Mulya Uda Natsir S.Pt', 'Ds. Laksamana No. 721, Makassar 74726, Kaltara', NULL, NULL),
(3, 2, 2, 50466, 'Vanya Chelsea Nasyidah', 'Ki. Gardujati No. 113, Payakumbuh 92583, DKI', NULL, NULL),
(4, 1, 3, 83678, 'Tomi Adriansyah', 'Ki. Baja No. 330, Bukittinggi 15718, Kalsel', NULL, NULL),
(5, 1, 1, 69100, 'Himawan Budiyanto', 'Jln. Haji No. 408, Palembang 34448, Sumut', NULL, NULL),
(6, 2, 3, 56077, 'Bakidin Mangunsong', 'Gg. Suniaraja No. 248, Sukabumi 64175, Sulut', NULL, NULL),
(7, 1, 3, 90330, 'Iriana Ghaliyati Namaga', 'Ki. Jambu No. 580, Denpasar 98988, NTT', NULL, NULL),
(8, 2, 3, 57283, 'Ifa Rika Hariyah', 'Ki. Baing No. 750, Metro 31330, Gorontalo', NULL, NULL),
(9, 2, 3, 48083, 'Aisyah Anita Pertiwi', 'Dk. Dipatiukur No. 738, Subulussalam 55089, Aceh', NULL, NULL),
(10, 1, 2, 40564, 'Yunita Wijayanti M.TI.', 'Psr. Pattimura No. 844, Palembang 86576, Maluku', NULL, NULL),
(11, 1, 2, 18272, 'Kani Laksita M.TI.', 'Dk. Banda No. 764, Pasuruan 60292, Banten', NULL, NULL),
(12, 1, 3, 38828, 'Chelsea Padmasari S.I.Kom', 'Dk. Cokroaminoto No. 854, Jambi 44627, NTB', NULL, NULL),
(13, 1, 2, 41128, 'Fitriani Mayasari', 'Jr. Bambon No. 539, Langsa 88760, Bali', NULL, NULL),
(14, 2, 1, 29547, 'Gantar Nugroho', 'Jln. Padma No. 826, Tegal 38327, Riau', NULL, NULL),
(15, 2, 2, 76960, 'Saiful Sitompul S.T.', 'Dk. Bayam No. 267, Malang 65238, Malut', NULL, NULL),
(16, 2, 3, 36369, 'Kawaya Ramadan', 'Psr. Wahidin Sudirohusodo No. 486, Tangerang 61062, Jabar', NULL, NULL),
(17, 1, 2, 82148, 'Sakura Mayasari', 'Jr. Babadak No. 242, Tidore Kepulauan 93045, Banten', NULL, NULL),
(18, 2, 2, 70196, 'Catur Saptono', 'Ds. Jambu No. 633, Bau-Bau 39941, Sumbar', NULL, NULL),
(19, 2, 2, 59373, 'Cemplunk Mursinin Waluyo S.Farm', 'Dk. Raya Setiabudhi No. 971, Jayapura 74355, Kalsel', NULL, NULL),
(20, 1, 1, 44503, 'Zulaikha Oktaviani M.M.', 'Dk. Bakin No. 780, Ambon 48077, Sulbar', NULL, NULL),
(21, 1, 2, 27469, 'Legawa Anggriawan', 'Kpg. Raya Ujungberung No. 113, Tual 88238, DIY', NULL, NULL),
(22, 1, 2, 93288, 'Irwan Kuswoyo S.Pd', 'Jln. Thamrin No. 345, Samarinda 54858, Sulsel', NULL, NULL),
(23, 1, 1, 79417, 'Prakosa Hakim', 'Psr. Baja No. 56, Banjarbaru 78459, Sulsel', NULL, NULL),
(24, 1, 1, 15741, 'Balangga Dabukke', 'Dk. Bahagia  No. 981, Dumai 24648, NTB', NULL, NULL),
(25, 2, 2, 79439, 'Teddy Pranowo', 'Dk. Karel S. Tubun No. 3, Surakarta 20838, Jabar', NULL, NULL),
(26, 1, 3, 14534, 'Genta Pudjiastuti', 'Psr. Arifin No. 987, Bontang 37962, Malut', NULL, NULL),
(27, 2, 3, 87350, 'Mala Wani Kuswandari S.E.', 'Ki. Agus Salim No. 982, Cimahi 70143, Sumsel', NULL, NULL),
(28, 1, 1, 23279, 'Ida Nurdiyanti', 'Psr. Adisucipto No. 123, Tasikmalaya 67628, Jatim', NULL, NULL),
(29, 1, 1, 81356, 'Gina Winarsih', 'Ds. Rajawali Barat No. 990, Tanjungbalai 27460, DKI', NULL, NULL),
(30, 2, 2, 80412, 'Dian Hasanah', 'Jln. Cihampelas No. 648, Lubuklinggau 57190, Gorontalo', NULL, NULL),
(31, 1, 3, 84712, 'Yuni Wahyuni', 'Jr. Raya Ujungberung No. 530, Cirebon 28839, Kaltim', NULL, NULL),
(32, 1, 2, 40831, 'Hafshah Susanti', 'Ds. Banda No. 920, Pekanbaru 46718, Lampung', NULL, NULL),
(33, 2, 3, 53606, 'Cawisono Jailani', 'Jln. Adisumarmo No. 263, Sorong 42410, Kalteng', NULL, NULL),
(34, 2, 2, 45482, 'Bajragin Jayadi Gunarto M.M.', 'Dk. Cokroaminoto No. 121, Tasikmalaya 44995, Kalteng', NULL, NULL),
(35, 2, 1, 23809, 'Usman Dipa Sitompul M.M.', 'Dk. Bhayangkara No. 729, Solok 60262, Gorontalo', NULL, NULL),
(36, 2, 3, 60354, 'Rina Fujiati M.Ak', 'Psr. Salatiga No. 795, Bengkulu 69426, Aceh', NULL, NULL),
(37, 1, 1, 45065, 'Latika Patricia Wastuti', 'Jln. Babadan No. 869, Tasikmalaya 40115, Kaltara', NULL, NULL),
(38, 1, 3, 78180, 'Hamima Vanesa Purnawati M.Farm', 'Ds. Pattimura No. 667, Manado 28406, Jabar', NULL, NULL),
(39, 2, 2, 23146, 'Zalindra Novi Permata', 'Jr. Bakau Griya Utama No. 91, Administrasi Jakarta Utara 22403, Pabar', NULL, NULL),
(40, 1, 2, 92837, 'Daliono Soleh Kusumo S.Psi', 'Jr. Gatot Subroto No. 133, Bukittinggi 70726, Banten', NULL, NULL),
(41, 1, 1, 94913, 'Panca Kuswoyo S.Gz', 'Jr. Industri No. 585, Pekalongan 87460, Pabar', NULL, NULL),
(42, 2, 2, 71791, 'Cici Haryanti', 'Kpg. Suharso No. 442, Tarakan 16744, Jabar', NULL, NULL),
(43, 1, 1, 59261, 'Yahya Hutagalung', 'Dk. Sampangan No. 187, Banjarbaru 12317, Babel', NULL, NULL),
(44, 2, 2, 47169, 'Ika Nurdiyanti', 'Jr. Sutarjo No. 551, Pagar Alam 53224, Bali', NULL, NULL),
(45, 2, 1, 86972, 'Humaira Usamah M.Farm', 'Psr. Kyai Gede No. 973, Sabang 34277, Kaltim', NULL, NULL),
(46, 2, 3, 60172, 'Cecep Lantar Sihotang S.IP', 'Ds. Abdul Rahmat No. 572, Serang 16588, Kaltim', NULL, NULL),
(47, 1, 1, 62200, 'Luluh Siregar', 'Gg. Imam Bonjol No. 890, Semarang 45134, Jambi', NULL, NULL),
(48, 2, 3, 46888, 'Sadina Nurdiyanti', 'Ki. Thamrin No. 411, Pematangsiantar 41539, Babel', NULL, NULL),
(49, 1, 2, 83632, 'Emin Prabowo S.Ked', 'Ds. Labu No. 739, Prabumulih 16909, Kaltim', NULL, NULL),
(50, 1, 3, 83867, 'Jaswadi Najmudin', 'Kpg. Juanda No. 851, Serang 92674, Malut', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_11_12_073443_create_jurusan_table', 2),
(11, '2021_11_12_073511_create_kampus_binus_table', 3),
(12, '2021_11_12_072644_create_mahasiswa_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kampus_binus`
--
ALTER TABLE `kampus_binus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_jurusan_id_foreign` (`jurusan_id`),
  ADD KEY `mahasiswa_kampus_binus_id_foreign` (`kampus_binus_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kampus_binus`
--
ALTER TABLE `kampus_binus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`),
  ADD CONSTRAINT `mahasiswa_kampus_binus_id_foreign` FOREIGN KEY (`kampus_binus_id`) REFERENCES `kampus_binus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
