-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2021 pada 10.58
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bromind`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_menu`
--

CREATE TABLE `access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `access_menu`
--

INSERT INTO `access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(6, 2, 4),
(12, 1, 3),
(14, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `no_cart` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `qty` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`no_cart`, `product_id`, `total`, `qty`) VALUES
(3, 3, '', 3),
(4, 1, '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `no_pesan` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `featured`
--

CREATE TABLE `featured` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `featured`
--

INSERT INTO `featured` (`id`, `product_id`) VALUES
(1, 17),
(2, 16),
(3, 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_sidebar`
--

CREATE TABLE `menu_sidebar` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_sidebar`
--

INSERT INTO `menu_sidebar` (`id`, `menu`) VALUES
(1, 'Leader'),
(2, 'Casier'),
(4, 'Website');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `comment`, `date_created`) VALUES
(1, 'Customer 1', 'customer1@email.com', 'Enak banget menu yang ada di BroMind, tempat nyaman, bisa buat kerja bareng temen, buat nyantai.', 1605858531),
(2, 'Customer 2', 'customer2@gmail.com', 'Enak beud guys, bisa pesen online tinggal nunggu di rumah langsung nyampe deh.', 2005858531),
(3, 'Customer 3', 'customer3@gmail.com', 'Aing nyoba ning kono, jian enak tenan. Kon rasakne dewe jal, lak gak percoyo karo aku. Enek rego, enek rupo.', 1805858531),
(4, 'Customer 4', 'customer4@gmail.com', 'I always dolanan at the BroMind Cafe for sekedar nyangkruk lan ngopi with my konco2 from Meduro.', 12354366),
(5, 'Customer 5', 'customer5@email.com', 'Beh, pokok e jos gandoss kotos2 sampek bledos, wedooss', 214252525),
(6, 'Customer 6', 'customer6@email.com', 'Beh, pokok e jos gandoss kotos2 sampek bledos, wedooss', 224252525),
(7, 'Customer 7', 'customer7@email.com', 'Enak banget menu yang ada di BroMind, tempat nyaman, bisa buat kerja bareng temen, buat nyantai.', 2005858531),
(8, 'Customer 8', 'customer8@gmail.com', 'Enak beud guys, bisa pesen online tinggal nunggu di rumah langsung nyampe deh.', 2035858531);

-- --------------------------------------------------------

--
-- Struktur dari tabel `page`
--

CREATE TABLE `page` (
  `no` int(10) NOT NULL,
  `link` varchar(20) DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `page`
--

INSERT INTO `page` (`no`, `link`, `id`) VALUES
(1, 'story', 'story'),
(2, 'menu', 'menu'),
(3, 'contact', 'contact'),
(4, 'yt', 'youtube');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `product_id` int(15) NOT NULL,
  `product_name` varchar(40) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `price` int(30) DEFAULT NULL,
  `product_img` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_type`, `description`, `price`, `product_img`) VALUES
(1, 'Kentang Goreng dadakan', 'Food', 'Kentang goreng harga bervarias', 8000, NULL),
(2, 'Pisang Bakar Coklat ', 'Food', 'Pisang bakar rasa bisa mix', 10000, 'pisang bakar coklat.jpg '),
(3, 'Pisang Bakar Coklat', 'Food', 'Pisang bakar rasa bisa mix', 9000, 'pisang bakar coklat.jpg'),
(4, 'Pisang Bakar Keju', 'Food', 'Pisang bakar rasa bisa mix', 9000, 'pisang bakar keju.jpg'),
(5, 'Pisang Bakar Plus Roti', 'Food', 'Pisang bakar rasa bisa mix', 12000, 'pisang bakar dan roti.jpg'),
(6, 'Roti Bakar Coklat', 'Food', 'Roti bakar rasa bisa mix', 9000, 'roti bakar coklat.jpg'),
(7, 'Roti Bakar Coklat Keju', 'Food', 'Roti bakar rasa bisa mix', 10000, 'roti bakar coklat keju.jpg'),
(8, 'Roti Bakar Kacang', 'Food', 'Roti bakar rasa bisa mix', 9000, 'roti bakar kacang.jpg'),
(9, 'Roti Bakar Kacang Coklat', 'Food', 'Roti bakar rasa bisa mix', 11000, 'roti bakar kacang coklat.jpg'),
(10, 'Roti Bakar Kacang Keju', 'Food', 'Roti bakar rasa bisa mix', 11000, 'roti bakar keju kacang.jpeg'),
(11, 'Roti Bakar Stroberi', 'Food', 'Roti bakar rasa bisa mix', 9000, 'roti bakar stroberi.jpg'),
(12, 'Kopi Late', 'Baverage', 'Kopi dengan late', 20000, 'kopi late.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `promo_img` varchar(128) NOT NULL,
  `promo_name` varchar(128) NOT NULL,
  `promo_detail` varchar(256) NOT NULL,
  `period` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id`, `promo_img`, `promo_name`, `promo_detail`, `period`) VALUES
(1, 'gopay.png', 'Promo GOPAY 5%', 'Setiap pembelian dengan menggunakan GOPAY, akan mendapat potongan harga subtotal sebesar 5%', '17 August - 30 Desember 2020'),
(2, 'ovo.png', 'Promo OVO 10%', 'Setiap pembelian dengan menggunakan OVO, akan mendapat potongan harga subtotal sebesar 10%', '17 August - 30 Desember 2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `food` varchar(30) DEFAULT NULL,
  `baverg` varchar(30) DEFAULT NULL,
  `on_income` int(11) NOT NULL,
  `off_income` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `spending` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id`, `food`, `baverg`, `on_income`, `off_income`, `income`, `spending`, `profit`, `date_created`) VALUES
(23, 'Roti Bakar Coklat Keju', 'Kopi Late', 20000, 10000, 30000, 10000, 20000, 1624332372);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Pemilik'),
(2, 'Kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `story`
--

CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `p1` text NOT NULL,
  `p2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `story`
--

INSERT INTO `story` (`id`, `image`, `p1`, `p2`) VALUES
(1, 'story.png', 'Ketika menjalin pertemanan, Anda dan sahabat mungkin memiliki hobi atau minat yang sama akan suatu hal. Salah satunya adalah minuman kopi yang memiliki rasa khas pahit dan manis ini. Sahabat yang telah setia berada di samping Anda dalam berbagai situasi memang perlu dijaga dan tidak boleh disia-siakan. Maka dari itu, ketika dia membutuhkan kehadiran Anda, sebisa mungkin Anda akan meluangkan waktu untuknya. Meskipun kadang pernah merasa kecewa, sepertinya perasaan itu adalah hal yang lumrah karena semua orang kemungkinan juga mengalaminya.	Namun, tak dapat dipungkiri bahwa dari pengalaman pahit yang pernah dirasakan, ada pelajaran yang Anda dapat. Dari situlah Tuhan melatih Anda untuk terus belajar dan berubah menjadi sosok yang lebih baik. Terkadang, Anda tidak mendapatkan balasan yang sama atas kebaikan yang telah Anda lakukan pada seseorang. Namun, hal itu bukan berarti menjadi alasan Anda untuk berhenti berbuat baik. Hangatnya minuman kopi dapat memberikan ketenangan kepada orang-orang yang menikmatinya. Selain itu, menenggak minuman berwarna gelap ini juga menjadi salah satu cara untuk mendapatkan inspirasi', 'Ketika dihadapkan dengan urusan pekerjaan yang berat, risiko terkena stres mungkin sulit untuk dihindari. Alhasil, Anda bisa saja lupa untuk menikmati hal-hal sederhana yang sebenarnya dapat menenangkan pikiran. Anda bisa saja menikmati Kopi untuk menenangkan pikiran anda sejenak. Ketika menghadapi kesulitan yang berat dalam hidup, pertanyaan seperti “apa salah saya?” mungkin pernah Anda tanyakan kepada Tuhan. Perasaan tidak adil dan tersakiti pun mungkin tidak dapat dihindari.Namun, Anda perlu percaya bahwa setelah kesulitan itu berlalu, Tuhan akan menggantikannya dengan sesuatu yang lebih baik. Layaknya kopi, pahit dan manis yang Anda rasakan ada untuk menyeimbangkan serta memberikan kenikmatan tersendiri dalam hidup. Hidup itu ibarat minum kopi , kadang rasanya pahit , tapi itu yang membuat mata terbuka , karena hidup itu tak semana mestinya manis yang kita inginkan , diperlukan juga adanya pengalaman pahit supaya kita bisa tahu bahwa kita perlu instropeksi kepada diri sendiri apa yang telah kita lakukan , apakah itu baik apa tidak ? Entah esok lusa atau nanti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard Leader', 'leader', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Dashboard Admin', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(9, 4, 'Information', 'website', 'fas fa-fw fa-info-circle', 1),
(10, 4, 'Product', 'product', 'fas fa-fw fa-store', 1),
(11, 4, 'Story', 'website/story', 'fas fa-fw fa-hourglass-half', 1),
(12, 4, 'Message', 'website/message', 'fas fa-fw fa-comments', 1),
(13, 4, 'Promo', 'website/promo', 'fas fa-fw fa-percentage', 1),
(14, 4, 'Report', 'report', 'fas fa-fw fa-chart-line', 1),
(15, 1, 'Employees', 'leader/employees', 'fas fa-fw fa-users', 1),
(16, 1, 'My Profile', 'leader/profile', 'fas fa-fw fa-user', 1),
(17, 1, 'Edit Profile', 'leader/editprofile', 'fas fa-fw fa-user-edit', 1),
(18, 1, 'Change Password', 'leader/changepassword', 'fas fa-fw fa-key', 1),
(19, 2, 'My Profile', 'admin/profile', 'fas fa-fw fa-user', 1),
(20, 2, 'Edit Profile', 'admin/editprofile', 'fas fa-fw fa-user-edit', 1),
(21, 2, 'Change Password', 'admin/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `image`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Agung Prawoto', 'putrabina0@gmail.com', 'mamangracing', 'd8nf2xt-bcca85ee-e56a-4e0f-86c', 1, 1, '2021-07-01'),
(2, 'Malik Ardhiansyah', 'malikardhi@gmail.com', 'malikjos', 'default.jpg', 2, 1, '2021-07-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `logo` varchar(128) NOT NULL,
  `head` varchar(128) NOT NULL,
  `loc_img` varchar(128) NOT NULL,
  `location` varchar(192) NOT NULL,
  `maps` varchar(128) NOT NULL,
  `fb` varchar(192) NOT NULL,
  `ig` varchar(192) NOT NULL,
  `yt` varchar(192) NOT NULL,
  `wa` varchar(192) NOT NULL,
  `senju` varchar(50) NOT NULL,
  `sabtu` varchar(50) NOT NULL,
  `weekend` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `website`
--

INSERT INTO `website` (`id`, `logo`, `head`, `loc_img`, `location`, `maps`, `fb`, `ig`, `yt`, `wa`, `senju`, `sabtu`, `weekend`) VALUES
(1, 'logo.png', 'BroMind Cafe', 'location.png', 'Jl. KSU Kebon Duren Kalimulya, Ruko Tran Depok Cyber Village No. R26, Kalimulya, Cilodong, Depok City, West Java 16413', 'https://goo.gl/maps/KF4tAYiX2G8HfpiQ8', 'https://web.facebook.com/ardhiansyah.marine', 'https://www.instagram.com/ardhiansyah_malik1200/', 'https://www.youtube.com/channel/UCzmTpFiq-0TBAto96lS5PoQ/', 'https://wa.me/message/4M42AXBU247XK1', '3 PM - 1 AM', '3 PM - 3 AM', '3 PM - 12 PM');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access_menu`
--
ALTER TABLE `access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`no_cart`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`no_pesan`);

--
-- Indeks untuk tabel `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_sidebar`
--
ALTER TABLE `menu_sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `access_menu`
--
ALTER TABLE `access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `no_cart` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `no_pesan` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `menu_sidebar`
--
ALTER TABLE `menu_sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `story`
--
ALTER TABLE `story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
