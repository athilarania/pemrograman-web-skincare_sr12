-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2017 pada 04.24
-- Versi server: 10.1.28-MariaDB
-- Versi PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aqilla`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`) VALUES
(3, 'hakko', 'hakko', 'hakko bio richard'),
(4, 'admin', 'admin', 'Abdul yamin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `br_id` int(6) NOT NULL,
  `br_nm` varchar(50) NOT NULL,
  `br_item` int(4) NOT NULL,
  `br_hrg` int(10) NOT NULL,
  `br_stok` int(9) NOT NULL,
  `br_satuan` varchar(20) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `br_sts` varchar(2) NOT NULL,
  `br_gbr` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`br_id`, `br_nm`, `br_item`, `br_hrg`, `br_stok`, `br_satuan`, `ket`, `br_sts`, `br_gbr`) VALUES
(1, 'Kaos Sudirman', 1, 60000, 12, 'Pcs', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y', '8.jpg'),
(2, 'Kaos Skaters', 1, 65000, 24, 'Pcs', 'Bahan Cotton Combed 24s built up', 'Y', '9.jpg'),
(3, 'Kaos Emwe', 1, 80000, 30, 'Pcs', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y', '6.jpg'),
(4, 'Kaos Begin', 1, 80000, 20, 'Pcs', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y', '7.jpg'),
(5, 'Kaos Man City', 1, 60000, 30, 'Pcs', 'Bahan Cotton Combed 20s Jahitan samping', 'Y', '2.jpg'),
(7, 'Kaos Cool Blue', 1, 70000, 20, 'Pcs', 'Bahan kardet jakarta', 'Y', '4.jpg'),
(8, 'Kaos Feed Me', 1, 65000, 12, 'Pcs', 'Bahan Cotton Combed 24s built up', 'Y', '3.jpg'),
(9, 'Kaos Art Hitam', 1, 55000, 20, 'Pcs', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y', '1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `br_id` int(6) NOT NULL,
  `br_nm` varchar(50) NOT NULL,
  `br_item` int(4) NOT NULL,
  `br_hrg` int(10) NOT NULL,
  `br_stok` int(9) NOT NULL,
  `br_satuan` varchar(20) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `br_sts` varchar(2) NOT NULL,
  `br_gbr` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`br_id`, `br_nm`, `br_item`, `br_hrg`, `br_stok`, `br_satuan`, `ket`, `br_sts`, `br_gbr`) VALUES
(1, 'Kerupuk', 4, 12000, 4, 'pcs', 'kerpik balado', 'Y', '4.png'),
(2, 'Karupuak taleh', 2, 13000, 4, 'pcs', 'berasal dari talas', 'Y', '7.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `no_hdpem` varchar(10) NOT NULL,
  `tgl_hdpem` date NOT NULL,
  `usr_hdpem` int(11) NOT NULL,
  `crkir_hdpem` tinyint(4) NOT NULL,
  `crpem_hdpem` tinyint(4) NOT NULL,
  `penerima_hdpem` varchar(50) NOT NULL,
  `almt_pem` text NOT NULL,
  `kp_pem` varchar(6) NOT NULL,
  `kota_pem` varchar(30) NOT NULL,
  `tlp` varchar(16) NOT NULL,
  `rek_pem` varchar(50) NOT NULL,
  `nmrek_pem` varchar(20) NOT NULL,
  `bank_pem` varchar(25) NOT NULL,
  `ct_pem` text NOT NULL,
  `tot_hdpem` int(11) NOT NULL,
  `sts_pem` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`no_hdpem`, `tgl_hdpem`, `usr_hdpem`, `crkir_hdpem`, `crpem_hdpem`, `penerima_hdpem`, `almt_pem`, `kp_pem`, `kota_pem`, `tlp`, `rek_pem`, `nmrek_pem`, `bank_pem`, `ct_pem`, `tot_hdpem`, `sts_pem`) VALUES
('T10090078', '2010-09-29', 13, 0, 0, 'sandi ajah', ' Jl. Nangka Raya Blok I ', '17151', 'Bekasi', '021', '123123123', '', '', '', 12070000, 'Y'),
('T10090077', '2010-09-29', 26, 0, 0, 'isan sah', '  jl. lipo ', '18762', '02187967', 'Cikarang', '67542111', 'Ihsan sah, S.Kom', 'BCA', '', 190000, 'Y'),
('T10090074', '2010-09-28', 13, 0, 0, 'sandi ajah', ' Jl. Nangka Raya Blok I ', '17151', 'Bekasi', '021', '123123123', '', '', '', 2920000, 'Y'),
('T10090073', '2010-09-28', 26, 0, 0, 'isan sah', '  jl. lipo ', '18762', '02187967', 'Cikarang', '67542111', 'Ihsan sah, S.Kom', 'BCA', '', 60000, 'Y'),
('T10090076', '2010-09-29', 13, 0, 0, 'sandi ajah', ' Jl. Nangka Raya Blok I ', '17151', 'Bekasi', '021', '123123123', '', '', '', 190000, 'Y'),
('T10090075', '2010-09-29', 13, 0, 0, 'sandi ajah', ' Jl. Nangka Raya Blok I ', '17151', 'Bekasi', '021', '123123123', '', '', '', 70000, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `kode_user` varchar(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `level` varchar(20) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`kode_user`, `nama`, `username`, `password`, `pass`, `level`, `img`) VALUES
('U004', 'Abdul Yamin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Administrator', 'admin.jpg'),
('U006', 'Muhammad Abduh', 'abduh', '0f7b4cffd710effa18f49a319f8cc146', 'abduh', 'Administrator', 'facebook-logo-png-9.png'),
('U007', 'Bayu', 'bayu', 'a430e06de5ce438d499c2e4063d60fd6', 'bayu', 'Pegawai', '88-512.png'),
('U008', 'bayu kurniawan', 'bayu', 'a430e06de5ce438d499c2e4063d60fd6', 'bayu', 'Pts_absensi', 'bayu.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `email` varchar(60) NOT NULL,
  `alamat` text NOT NULL,
  `pos` int(6) NOT NULL,
  `kota` varchar(60) NOT NULL,
  `hp` int(12) NOT NULL,
  `no_rek` varchar(30) NOT NULL,
  `nama_rek` varchar(60) NOT NULL,
  `bank` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama`, `username`, `password`, `email`, `alamat`, `pos`, `kota`, `hp`, `no_rek`, `nama_rek`, `bank`) VALUES
(1, 'kokok', 'admin', 'admin', 'ocikyamin93@gmail.com', 'nknknknkn', 0, 'nknknknk', 909090909, '09090', 'yamin', 'Mandiri'),
(2, 'kokok', 'admin', 'admin', 'ocikyamin93@gmail.com', 'nknknknkn', 0, 'nknknknk', 909090909, '09090', 'yamin', 'Mandiri'),
(3, 'Bayu', 'user', 'user', 'ocikyamin93@gmail.com', 'd', 0, 'gg', 988989, '898989898989', 'bayu', 'BNI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_usr` int(11) NOT NULL,
  `nm_usr` varchar(50) NOT NULL,
  `log_usr` varchar(20) NOT NULL,
  `pas_usr` varchar(100) NOT NULL,
  `email_usr` varchar(50) NOT NULL,
  `almt_usr` text NOT NULL,
  `kp_usr` varchar(6) NOT NULL,
  `kota_usr` varchar(25) NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `rek` varchar(30) NOT NULL,
  `nmrek` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `sts_usr` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_usr`, `nm_usr`, `log_usr`, `pas_usr`, `email_usr`, `almt_usr`, `kp_usr`, `kota_usr`, `tlp`, `rek`, `nmrek`, `bank`, `sts_usr`) VALUES
(28, 'Hakko Bio Richard', 'acchoblues', 'hakko270990', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803', '121212121212', 'Hakko Bio Richard', 'BCA', ''),
(27, 'Hakko Bio Richard', 'acchoblues', 'hakko270990', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803', '121212121212', 'Hakko Bio Richard', 'Mandiri', ''),
(29, 'Hakko Bio Richard', 'hakko bio richard', 'romance18', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803', '121212121212', 'Hakko Bio Richard', 'Bank Jabar', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`br_id`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`br_id`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no_hdpem`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`kode_user`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_usr`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `br_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `makanan`
--
ALTER TABLE `makanan`
  MODIFY `br_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
