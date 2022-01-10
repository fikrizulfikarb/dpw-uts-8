-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 04:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_dpw`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `id_user`, `title`, `write`, `description`, `created_at`, `updated_at`) VALUES
(24, 8, '1. Nasi Pecel', 'fikrizulfikarb', 'Nasi pecel adalah hidangan khas Indonesia dari Jawa berupa nasi yang disajikan dengan pecel. Sayuran yang dipakai biasanya kangkung, kacang panjang, daun singkong, dan daun pepaya. Di Jawa Timur, sering ditambahkan kembang turi. Rasanya lebih nikmat jika dimakan dengan tempe goreng dan cracker tradisional yang biasa disebut peyek.', '2021-12-11 22:44:25', '2021-12-11 22:44:25'),
(25, 8, '2. Rendang', 'fikrizulfikarb', 'Rendang atau randang adalah masakan daging bercita rasa pedas yang menggunakan campuran berbagai bumbu dan rempah-rempah. Masakan ini dihasilkan dari proses memasak yang dipanaskan berulang-ulang dengan santan kelapa.Proses memasaknya memakan waktu berjam-jam (biasanya sekitar empat jam) hingga kering dan berwarna hitam pekat.Dalam suhu ruangan, rendang dapat bertahan hingga berminggu-minggu. Rendang yang dimasak dalam waktu lebih singkat dan santannya belum mengering serta berwarna coklat terang keemasan disebut kalio.Rendang dapat ditemukan di Rumah Makan Padang di seluruh dunia.Masakan ini populer di kalangan masyarakat Indonesia dan negara-negara di Asia Tenggara, seperti Malaysia, Singapura, Brunei, Filipina, dan Thailand. Di daerah asalnya, Minangkabau, rendang disajikan dalam berbagai upacara adat dan acara istimewa.Meskipun rendang merupakan masakan tradisional Minangkabau secara umum, masing-masing daerah di sana memiliki teknik memasak dan penggunaan bumbu yang berbeda.Pada 2011, rendang dinobatkan sebagai hidangan peringkat pertama dalam daftar World\'s 50 Most Delicious Foods (50 Hidangan Terlezat Dunia) yang digelar oleh CNN International. Keren, ya!', '2021-12-12 06:36:36', '2021-12-12 06:36:36'),
(26, 8, '3. Kerak telor', 'fikrizulfikarb', 'Kerak telur adalah makanan asli daerah Jakarta, dengan bahan-bahan beras ketan putih, telur ayam atau bebek, ebi yang disangrai kering, ditambah bawang merah goreng, lalu diberi bumbu yang dihaluskan berupa kelapa sangrai, cabai merah, kencur, jahe, merica butiran, garam dan gula pasir.\r\n\r\nPada proses penyajiannya, kerak telor yang sudah jadi tadi disajikan di atas piring. Kemudian ditaburi dengan bawang merah dan parutan kelapa yang sudah di sangrai.\r\nPada proses pembuatan, kerak telor ini tidak menggunakan kompor untuk memasaknya, namun menggunakan anglo dan arang. Karena apabila menggunakan kompor, keraknya akan mudah gosong.\r\nKeanekaragaman makanan khas Indonesia ini pastinya bikin bangga kan, sama nih kayak Djarum 76 yang bangga akan keanekaragaman Indonesia salah satunya makanannya dengan membuat campaign #IndonesiaAdalahKita dalam rangka Sumpah Pemuda 2020. Ada juga video commercial tentang #IndonesiaAdalahKita yang pastinya keren banget. Lihat videonya dibawah ini yuk!', '2021-12-12 06:38:04', '2021-12-12 06:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coment`
--

INSERT INTO `coment` (`id`, `isi`, `nama`, `created_at`, `updated_at`) VALUES
(18, 'req makanan khas padang dong', 'mega', '2021-12-12 02:14:30', '2021-12-12 02:14:30'),
(19, 'makanan khas betawi dong', 'elly', '2021-12-12 06:37:03', '2021-12-12 06:37:03'),
(21, 'makanan khas bali bang', 'lola reghita', '2021-12-24 10:11:49', '2021-12-24 10:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'fikrizulfikarb', 'fikri.zb10@gmail.com', 'fikri', '$2y$10$/mO1ld9hH0o.X7/6iowzLu3PGyI9BoB8Wr.RCCWVYF3iPNIvruAtK', NULL, '2021-12-11 22:09:30', '2021-12-11 22:09:30'),
(9, 'megabolot', 'megapratiwi17@gmail.com', 'mega pratiwi', '$2y$10$OOl8iz2WJo5fcINF.cFH0.lLC4KrP.9s6.mTzvjqNo3bT14mYdefu', NULL, '2021-12-24 10:07:29', '2021-12-24 10:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 3, '089689203086', '2021-11-13 22:47:36', '2021-11-13 22:47:36'),
(2, 4, '089689203086', '2021-11-15 05:38:12', '2021-11-15 05:38:12'),
(4, 6, NULL, '2021-11-16 23:42:47', '2021-11-16 23:42:47'),
(5, 7, '089689203086', '2021-11-16 23:44:43', '2021-11-16 23:44:43'),
(6, 8, '081290034449', '2021-12-11 22:09:30', '2021-12-11 22:09:30'),
(7, 9, '081290033449', '2021-12-24 10:07:29', '2021-12-24 10:07:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
