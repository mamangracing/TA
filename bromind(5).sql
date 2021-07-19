-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jul 2021 pada 11.03
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `no_cart` varchar(20) NOT NULL,
  `kd_user` varchar(6) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `qty` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`no_cart`, `kd_user`, `product_id`, `qty`) VALUES
('CT00003', 'CTR003', 'PRK000', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(20) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_address` varchar(30) NOT NULL,
  `no_hp` int(30) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `role_id` int(2) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `is_active` int(3) DEFAULT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`, `no_hp`, `email`, `role_id`, `password`, `is_active`, `date_created`) VALUES
(2, 'mamangracing', 'gak tau', 12345678, 'huft@gmail.com', 3, 'huft123', 1, '2021-07-16'),
(3, 'cihuy', 'gak tau', 9877654, 'cihuy@gmail.com', 3, 'cihuy123', 1, '2021-07-17');

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
  `message_id` varchar(8) NOT NULL,
  `kd_user` varchar(6) DEFAULT NULL,
  `comment` text NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`message_id`, `kd_user`, `comment`, `date_created`) VALUES
('MSG01002', 'CTR002', 'hhhhhhh', '2021-07-18'),
('MSG01003', 'CTR003', 'asd', '2021-07-18');

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
  `product_id` varchar(6) NOT NULL,
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
('PRK000', 'asuuu', 'Food', 'asu lah', 10000, 'jus_alpukat2.jpeg'),
('PRK001', 'Jus Alpukat', 'Baverage', 'anjay', 15000, 'jus_alpukat3.jpeg');

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
  `report_id` varchar(6) NOT NULL,
  `food` varchar(30) DEFAULT NULL,
  `baverg` varchar(30) DEFAULT NULL,
  `on_income` int(11) NOT NULL,
  `off_income` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `spending` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`report_id`, `food`, `baverg`, `on_income`, `off_income`, `income`, `spending`, `profit`, `date_created`) VALUES
('RPT00', 'asuuu', 'Jus Alpukat', 20000, 10000, 30000, 10000, 20000, '2021-07-18'),
('RPT01', 'asuuu', 'Jus Alpukat', 20000, 10000, 30000, 5000, 25000, '2021-07-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Pemilik'),
(2, 'Kasir'),
(3, 'Customer');

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
(2, 2, 'Dashboard Admin', 'casier', 'fas fa-fw fa-tachometer-alt', 1),
(9, 4, 'Information', 'website', 'fas fa-fw fa-info-circle', 1),
(10, 4, 'Product', 'product', 'fas fa-fw fa-store', 1),
(11, 4, 'Story', 'website/story', 'fas fa-fw fa-hourglass-half', 1),
(12, 1, 'Message', 'website/message', 'fas fa-fw fa-comments', 1),
(13, 4, 'Promo', 'website/promo', 'fas fa-fw fa-percentage', 1),
(14, 4, 'Report', 'report', 'fas fa-fw fa-chart-line', 1),
(15, 1, 'Employees', 'leader/employees', 'fas fa-fw fa-users', 1),
(16, 1, 'My Profile', 'leader/profile', 'fas fa-fw fa-user', 1),
(17, 1, 'Edit Profile', 'leader/editprofile', 'fas fa-fw fa-user-edit', 1),
(18, 1, 'Change Password', 'leader/changepassword', 'fas fa-fw fa-key', 1),
(19, 2, 'My Profile', 'casier/profile', 'fas fa-fw fa-user', 1),
(20, 2, 'Edit Profile', 'casier/editprofile', 'fas fa-fw fa-user-edit', 1),
(21, 2, 'Change Password', 'casier/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `kd_user` varchar(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` date NOT NULL,
  `address` varchar(20) DEFAULT NULL,
  `no_hp` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`kd_user`, `name`, `email`, `password`, `image`, `role_id`, `is_active`, `date_created`, `address`, `no_hp`) VALUES
('CTR002', 'boby', 'boby@gmail.com', 'boby123', '', 3, 1, '2021-07-17', 'gak tau', 9876544),
('CTR003', 'satrio', 'satrio@gmail.com', 'satrio123', '', 3, 1, '2021-07-17', 'au elap', 123456),
('KSR001', 'Malik Ardhiansyah', 'malikardhi@gmail.com', 'malikjos', 'default.jpg', 2, 1, '2021-07-01', NULL, NULL),
('LDR001', 'Agung', 'putrabina0@gmail.com', 'mamangracing', 'd8nf2xt-bcca85ee-e56a-4e0f-86c', 1, 1, '2021-07-01', NULL, NULL);

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
-- Indexes for table `access_menu`
--
ALTER TABLE `access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`no_cart`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_sidebar`
--
ALTER TABLE `menu_sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kd_user`),
  ADD UNIQUE KEY `kd_user` (`kd_user`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_menu`
--
ALTER TABLE `access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu_sidebar`
--
ALTER TABLE `menu_sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
