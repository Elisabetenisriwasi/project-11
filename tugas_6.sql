-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2020 pada 15.47
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_6`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama_produk`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(5, NULL, 'Rantai cambuk', 135000, 500, 'Deskripsi Rantai Cambuk Bandhil Pencak Silat Tapak Suci Kusarigama Ninjutsu\r\n\r\nSenjata tradisional Bandhil salah satunya, senjata ini disebut juga sebagai Umban Pelempar Batu. Terdapat tiga jenis senjata ini di antaranya: Brubuh, Jauh, dan Lepas. Brubuh digunakan dalam pertempuran jarak dekat. Biasanya berupa rantai besi, dan pelurunya juga dari besi.\r\nSelain itu, senjata ini juga digunakan dalam perguruan seni beladiri Indonesia Tapak Suci. Senjata ini dipakai untuk pertarungan jarak jauh dan untuk melawan beberapa orang yang bersenjata. Senjata tradisional jenis ini memiliki tingkat kesulitan teknik yang cukup tinggi karena membutuhkan koordinasi gerakan badan yang seimbang dan juga membutuhkan kelenturan tubuh, timing yang tepat serta membutuhkan keberanian yang besar. Hati-hati dalam menggunakan senjata tersebut bagi praktisi yang belum mahir.\r\n\r\nSpek Rantai:\r\n- Batang Terbuat Dari Behel 10mm\r\n- Peluru/Bandul Dari Besi\r\n- Gagang Dari Aluminium\r\n- Panjang Total 1m\r\n- Berat Nett Satu Senjata 800gr\r\n\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:39:29', '2020-11-23 13:15:02'),
(6, NULL, 'Double Stick Nunchaku Foam Busa Import Warna Polos', 40000, 250, 'Deskripsi Double Stick Nunchaku Foam Busa Import Warna Polos\r\n\r\nDouble Stick Nunchaku Foam Busa,\r\nSangat Cocok Untuk Latihan/Pemula,\r\nSangat Empuk,\r\nRingan dan Aman,\r\nProduk Import,\r\nTersedia Warna Hitam, Hijau Merah dan Biru\r\nRANDOM, Tergantung Ketersediaan Stock\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:40:08', '2020-11-15 01:40:08'),
(7, NULL, 'Mini Knuckle Glass Breaker,Model Skull Atau Tengkorak', 30000, 450, 'Deskripsi Mini Knuckle Glass Breaker,Model Skull Atau Tengkorak\r\n\r\nMini Knuckle Glass Breaker,\r\n\r\nModel Skull Atau Tengkorak,\r\n\r\nPraktis, Kuat, Murah-Meriah dan Berkualitas,\r\n\r\nTersedia Warna Silver, Hitam dan Emas,\r\n\r\nRandom Tergantung Ketersediaan Stock,\r\n\r\nFull Metal,\r\n\r\nStainless Steel,\r\n\r\nProduk Import,\r\n\r\nPerhatian: Hanya untuk Koleksi, Mohon Tidak Disalahgunakan!\r\n\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:44:29', '2020-11-20 17:46:34'),
(8, NULL, 'Katana Samurai Pedang Gi Joe hitam murah meriah', 320000, 1000, 'Deskripsi Katana Samurai Pedang Gi Joe hitam murah meriah\r\n\r\nKatana Gi Joe Black\r\nSpek :\r\nBahan bilah baja strip \r\nPanjang bilah 70 cm\r\nPanjang handle 28 cm\r\nLebar bilah 2,5cm\r\nKondisi tajam\r\nCocok buat jadi koleksi atau pajangan rumah nya', 50, '2020-11-15 09:20:18', '2020-11-20 17:46:47'),
(9, NULL, 'Gelang simpai', 25000, 100, 'Gelang simpai motif dayak terbuat dari bahan rotan dan untuk ukiran nya bisa sesuai pesanan', 40, '2020-11-20 17:00:00', '2020-11-20 17:00:00'),
(10, NULL, 'Cincin simpai', 15000, 100, 'Cincin simpai murah motif terbuat dari anyaman rotan', 60, '2020-11-20 17:00:00', '2020-11-20 17:00:00'),
(11, NULL, 'Ikat kepala motif', 50000, 150, 'Ikat kepala motif bahan halus dan lembut untuk motif bisa sesuai pesanan', 20, '2020-11-20 17:00:00', '2020-11-20 17:00:00'),
(12, NULL, 'Mandau', 500000, 200, 'Mandau khas dayak terbuat dari kayu ulin untuk kualitas kami jamin top', 10, '2020-11-20 17:00:00', '2020-11-20 17:00:00'),
(13, NULL, 'Tas krepay', 300000, 150, 'Tas krepay model terbaru terbuat dari bahn yang ringan sehingga mudah di bawa dan juga bisa di gunakan untuk meyimpan pernak pernik', 20, '2020-11-20 17:00:00', '2020-11-20 17:00:00'),
(14, NULL, 'Anting manik-manik', 30000, 100, 'Anting-anting rumbai motif yang terbuat dari manik-manik dengan beradaptasi sesuai tren terkini', 40, '2020-11-20 17:00:00', '2020-11-20 17:00:00'),
(15, NULL, 'Kalung ', 300000, 150, 'Kalung motif dengan fassion tren terkini', 20, '2020-11-20 17:00:00', '2020-11-20 17:00:00'),
(18, 3, 'gantungan kunci motif', 40000, 50, 'untuk motif bisa sesuai pesanan', 100, '2020-11-24 06:01:11', '2020-11-24 06:01:11'),
(19, 3, 'Ikat kepala motif', 50000, 1000, 'untuk motif nya bisa request sendiri bahan terbuat dari katun halus', 100, '2020-11-24 06:11:43', '2020-11-24 06:11:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'eni', 'eni', 'eni@gmail.com', '$2y$10$SpQitvz.uXOiLRE5glKgauD04hdzgMD0uQUH.6nqxUtLieBCZvZym', NULL, '2020-11-24 14:33:34', '2020-11-24 07:33:34'),
(5, 'cining', 'cining', 'eni@gmail.com', '$2y$10$wn2c2edmwdPL8.3idmULPeJ1VoN286dXsHhIvyFj0U7HkVCc7Aphy', NULL, '2020-11-23 12:20:13', '2020-11-23 05:20:13'),
(6, 'sriwasi', 'sriwasi', 'eni@gmail.com', '$2y$10$8/lXtHY5CnIzz1tTZ/OBV.W9mPcDVFWlRMMfxS04gaTmtuMV5AuQe', NULL, '2020-11-24 07:01:38', '2020-11-24 07:01:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `update_at`) VALUES
(3, 3, '+622311262329', '2020-11-15 21:09:13', '2020-11-24 14:23:57'),
(5, 5, '+62250659998', '2020-11-15 21:09:13', '2020-11-15 17:00:00'),
(6, 6, '+622506588999', '2020-11-20 17:00:00', '2020-11-23 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
