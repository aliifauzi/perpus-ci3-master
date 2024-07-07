-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jul 2024 pada 16.14
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(11) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(9, '5000', 'Aktif', '2024-07-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `id_kategori`, `id_rak`, `sampul`, `isbn`, `lampiran`, `title`, `penerbit`, `pengarang`, `thn_buku`, `isi`, `jml`, `tgl_masuk`) VALUES
(16, 'BK001', 7, 5, 'fe22b42dee2ee17d6fa29b2d498027ea.jpg', '111-333-23232', '0', 'Naruto Chapter 100', 'MK', 'Masashi K', '2000', '', 1, '2024-07-07 20:59:14'),
(17, 'BK0017', 7, 5, 'a65f3a49f974cf110bce54e074d934c8.jpg', '1111-332321-3213', '0', 'Jujutsu Kaisen Chapter 15', 'GA', 'Gege A', '2022', '<br>', 1, '2024-07-07 20:59:01'),
(18, 'BK0018', 7, 5, '7730cc1fbe9ab1e4b0957245cbf4fedd.jpg', '145-22-31231', '0', 'Death Note', 'Shueisha', 'Tsugumi Ohba', '2006', '', 1, '2024-07-07 21:00:01'),
(19, 'BK0019', 7, 5, '7a16fad35d96933ec126b1ae304981c8.jpg', '9786230049934 ', '0', 'Black Clover', 'YT', 'Yuki Tabata', '2018', '', 1, '2024-07-07 21:01:04'),
(20, 'BK0020', 7, 5, '5c815d0c9dee2b8908434de667056c1d.jpg', '4214124', '0', 'Your Name', 'MS', 'Makoto Shinkai', '2016', '', 1, '2024-07-07 21:01:43'),
(21, 'BK0021', 8, 6, 'caacc38cdeb4dd0ea6bcee5b3eddf65f.jpg', '213213', '0', 'Perkakas dan Bahan Teknik Otomotif', 'JD', 'John Doe', '2005', '', 5, '2024-07-07 21:03:43'),
(22, 'BK0022', 8, 6, '7af0d7c939f8813590c1654ecb727c31.jpg', '5125211332', '0', 'Otomotif Sepeda Motor', 'JS', 'John Saber', '2007', '', 4, '2024-07-07 21:04:15'),
(23, 'BK0023', 8, 6, '839c630d5c7e14a8cfe5fe2a8c952d7e.jpg', '5112332321', '0', 'Kumpulan Gambar Teknik Otomotif', 'JY', 'John yu', '2004', '', 10, '2024-07-07 21:04:42'),
(24, 'BK0024', 8, 6, '254f29946e71bd0e8fc6e5426ce1857a.jpg', '1123332', '0', 'Kelistrikan Otomotif', 'JH', 'John huban', '2008', '', 7, '2024-07-07 21:05:09'),
(25, 'BK0025', 8, 6, 'ea281dbbbfe8ac3866bcaefba3f33d2e.jpg', '554231', '0', 'Teknologi Dasar Otomotif', 'JB', 'John Bury', '1999', '', 10, '2024-07-07 21:05:54'),
(26, 'BK0026', 6, 4, 'b160f59010a2cce0f36d35e1167a8621.jpg', '3323232', '0', 'Seni Rupa &amp; Desain', 'BA', 'Bryan abre', '1988', '', 5, '2024-07-07 21:06:49'),
(27, 'BK0027', 6, 4, '51793611411a7f774323f7f51e6e45fd.png', '33232561', '0', 'Pengetahuan Dasar Seni Rupa', 'BD', 'Bryan don', '2008', '', 15, '2024-07-07 21:07:29'),
(28, 'BK0028', 6, 4, 'd97540985d7f1b6f9c2f565a8f531186.jpg', '35678921', '0', 'Seni Lukis', 'BC', 'Bryan cena', '1999', '', 15, '2024-07-07 21:08:00'),
(29, 'BK0029', 6, 4, 'c6be7bf69f9ef2d7e7c6748f785cc788.jpg', '3421567', '0', 'Askara', 'BA', 'Bryan Askara', '2009', '', 6, '2024-07-07 21:08:30'),
(30, 'BK0030', 6, 4, 'a661c26a6311d35b360621f10f93dac8.jpg', '32323551', '0', 'Seni Lukis 2', 'BD', 'Bryan Cena', '1999', '', 5, '2024-07-07 21:09:09'),
(31, 'BK0031', 5, 3, 'a1d13f1067735f11d0f3b30dc4f20648.jpg', '232321114', '0', 'Python &amp; Pandas', 'LI', 'Lorem Ipsum', '2010', '', 10, '2024-07-07 21:09:53'),
(32, 'BK0032', 5, 3, '70a60dc53cf5502c35a3127250b7135c.jpg', '232566722', '0', 'Web Programming', 'AAS', 'Sunanti', '2015', '', 10, '2024-07-07 21:10:39'),
(33, 'BK0033', 5, 3, 'f7b6964f1cd82eabfc81345684cc0482.jpg', '2223131321', '0', 'Buku Mahir Web Programming', 'IY', 'Ir Yuniar', '2012', '', 10, '2024-07-07 21:11:17'),
(34, 'BK0034', 5, 3, '91eee7de640159772b60dd3730b699df.jpg', '22335512213', '0', 'Pemrograman Web untuk Pemula', 'KH', 'Kristianto Haryodi', '2012', '', 10, '2024-07-07 21:11:55'),
(35, 'BK0035', 5, 3, 'fa453bbaefb91f3d147bb697704eded6.jpg', '223576865', '0', 'Otodidak Desain dan Pemrograman Web', 'LS', 'Lorem sance', '2019', '', 10, '2024-07-07 21:12:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(5, 'Informatika'),
(6, 'Seni'),
(7, 'Komik'),
(8, 'Otomotif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(1, 'AG001', 'aliifauzi', '202cb962ac59075b964b07152d234b70', 'Petugas', 'Ihsan', 'Sukabumi', '2001-05-30', 'Laki-Laki', 'Sukabumi', '082218910316', 'ihsanf51@gmail.com', '2024-01-07', 'user_1720352754.jpeg'),
(10, 'AG002', 'ali30', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Ali', 'Sukabumi', '2001-05-30', 'Laki-Laki', 'Sukabumi Jawa Barat', '0812312313', 'ali@gmail.com', '2024-07-07', 'user_1720357947.jpg'),
(11, 'AG0011', 'fauzi30', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Fauzi', 'Sukabumi', '2001-05-30', 'Laki-Laki', 'Sukabumi Jawa Barat', '081122334455', 'fauzi@gmail.com', '2024-07-07', 'user_1720357979.jpg'),
(12, 'AG0012', 'nadia17', '202cb962ac59075b964b07152d234b70', 'Anggota', 'nadia', 'Jakarta', '2001-02-17', 'Perempuan', 'Jakarta Selatan', '081112233123', 'nadia@gmail.com', '2024-07-07', 'user_1720358501.jpeg'),
(13, 'AG0013', 'anin17', '202cb962ac59075b964b07152d234b70', 'Anggota', 'anindita', 'Jakarta', '2001-02-17', 'Perempuan', 'Jakarta selatan', '0811234562', 'anin17@gmail.com', '2024-07-07', 'user_1720358580.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(36, 'PJ001', 'AG002', 'BK0017', 'Dipinjam', '2024-07-07', 3, '2024-07-10', '0'),
(37, 'PJ0037', 'AG0011', 'BK001', 'Dipinjam', '2024-07-07', 3, '2024-07-10', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(3, 'Pemrograman'),
(4, 'Seni'),
(5, 'Komik'),
(6, 'Otomotif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indeks untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
