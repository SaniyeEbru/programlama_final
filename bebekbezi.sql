-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 25 Ağu 2020, 12:01:37
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bebekbezi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gittigidiyor`
--

CREATE TABLE `gittigidiyor` (
  `id` int(11) NOT NULL,
  `gittigidiyor_isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `gittigidiyor_fiyat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gittigidiyor`
--

INSERT INTO `gittigidiyor` (`id`, `gittigidiyor_isim`, `gittigidiyor_fiyat`) VALUES
(673, 'Bambo Nature 5 Beden 54 Adet', 196),
(674, 'Bambo Nature 4 Beden 60 Adet', 178),
(675, 'Goon Mutlu Bebek 4 Beden 38 Adet', 21),
(676, 'Molfix 3 Beden 30 Adet', 19),
(677, 'Molfix 6 Beden 20 Adet', 46),
(678, 'Molfix Külot Bez 7 Beden 72 Adet', 94),
(679, 'Molfix 5 Beden 24 Adet', 39),
(680, 'Molfix 1 Beden 50 Adet', 46),
(681, 'Molfix 5 Beden 20 Adet', 43),
(682, 'Molfix 6 Beden 39 Adet', 52),
(683, 'Sleepy Natural 2 Beden 20 Adet', 18),
(684, 'Molfix Pure&Soft 3 Beden 140 Adet', 112),
(685, 'Molfix Pure&Soft 3 Beden 280 Adet', 212),
(686, 'Molfix Pure&Soft 4 Beden 112 Adet', 112),
(687, 'Molfix Pure&Soft 4 Beden 224 Adet', 212),
(688, 'Molfix Pure&Soft 4 Beden 56 Adet', 64),
(689, 'Huggies Little Swimmers S-M Beden 12 Adet', 22),
(690, 'Huggies Little Swimmers M-L Beden 11 Adet', 25),
(691, 'Prima Günlük Rahatlık 4 Beden 27 Adet', 34),
(692, 'Molfix 2 Beden 116 Adet', 75),
(693, 'Sleepy Natural Külot Bez 5 Beden 24 Adet', 32),
(694, 'Sleepy 4 Beden 60 Adet', 61),
(695, 'Molfix 1 Beden 120 Adet', 69),
(696, 'Sleepy 3 Beden 34 Adet', 40),
(697, 'Molfix 2 Beden 124 Adet', 85),
(698, 'Prima Aktif Bebek 7 Beden 34 Adet', 69),
(699, 'Prima Pants 7 Beden 29 Adet', 75),
(700, 'Prima Külot Bez 6 Beden 34 Adet', 80),
(701, 'Molfix Pure&Soft 2 Beden 88 Adet', 59),
(702, 'Goon Premium Soft 5 Beden 24 Adet', 35),
(703, 'Prima Aktif Bebek 8 Beden 31 Adet', 73),
(704, 'Molfix Prematüre 0 Beden 120 Adet', 89),
(705, 'Prima Premium Care 3 Beden 96 Adet', 124),
(706, 'Prima Aktif Bebek 5 Beden 46 Adet', 68),
(707, 'Prima Aktif Bebek 2 Beden 64 Adet', 89),
(708, 'Prima Yenidoğan 2 Beden 72 Adet', 69),
(709, 'Sleepy Natural Külot Bez 5 Numara 100 Adet', 77),
(710, 'Sleepy Natural Külot Bez 4 Beden 100 Adet', 68),
(711, 'Sleepy Sensitive 4 Beden 90 Adet', 85),
(712, 'Sleepy Natural 3+ Beden 32 Adet', 30),
(713, 'Sleepy Natural 5 Beden 24 Adet', 30),
(714, 'Sleepy Natural 4+ Beden 26 Adet', 30),
(715, 'Sleepy Natural  3 Beden 68 Adet', 57),
(716, 'Sleepy Natural 1 Beden 40 Adet', 30),
(717, 'Molfix 5 Beden 60 Adet', 59),
(718, 'Molfix 3 Beden 94 Adet', 75),
(719, 'Prima Aktif Bebek 5 Beden 26 Adet', 57),
(720, 'Prima Premium Care 0 Beden 30 Adet', 30);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `trendyol`
--

CREATE TABLE `trendyol` (
  `id` int(11) NOT NULL,
  `trendyol_isim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `trendyol_fiyat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `trendyol`
--

INSERT INTO `trendyol` (`id`, `trendyol_isim`, `trendyol_fiyat`) VALUES
(337, 'Çocuk Bezi 4 Numara 7-14 kg Maxi 56\'lı Jumbo Paket', 52),
(338, 'Yıkanabilir Çocuk Bezi', 25),
(339, 'Jumbo Çocuk Bezi 4 Numara 60\'lı', 60),
(340, 'Çocuk Bezi 3 Numara 4-9 Kg Midi 68\'li Jumbo Paket', 49),
(341, 'Çocuk Bezi 5 Numara 11-18 Kg Jun. 44\'lü Jumbo Paket', 49),
(342, 'Çocuk Bezi 4+ Numara 9-16 Kg Maxi Plus 36\'lı Avantaj Paket', 30),
(343, 'Yenidoğan Çocuk Bezi 1 Numara 2-5 Kg Jumbo Paket.', 52),
(344, 'Çocuk Bezi 3 Numara 4-9 kg Midi 44\'lü Avantaj Paket', 37),
(345, 'Yıkanabilir Çocuk Bezi Gülsu Model', 55),
(346, 'Çocuk Bezi 2 Numara 3-6 Kg Mini 48\'li Avantaj Paket', 37),
(347, 'Çocuk Bezi 6 Numara 16+ Kg Ext. Large 34\'lü Jumbo Paket', 49),
(348, 'Megbaby Yıkanabilir Çocuk Bezi Gülsu Model', 55),
(349, 'Megbaby Yıkanabilir Çocuk Bezi Gülsu Model', 55),
(350, 'Çocuk Bezi 6 Numara 16+ Kg Ext. Large 24\'lü Avantaj Paket', 37),
(351, 'Yeni Doğan 1 Numara Çocuk Bezi 2-5 Kg 40\'lı Ikiz Paket', 37),
(352, 'Yıkanabilir Çocuk Bezi', 55),
(353, 'Megbaby Yıkanabilir Çocuk Bezi Gülsu Model Mavi Renk', 55),
(354, 'Çocuk Bezi Yıkanabilir', 55),
(355, 'Yıkanabilir Çocuk Bezi', 55),
(356, '40\'lı İkiz Paket Yenidoğan Çocuk Bezi', 40),
(357, 'Junıor 5 Beden Çocuk Bezi 24\'lü Avantaj Paket', 38),
(358, 'Yıkanabilir Çocuk Bezi', 55),
(359, 'Yıkanabilir Çocuk Bezi', 55),
(360, 'Yıkanabilir Çocuk Bezi Gülsu Model', 55);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `gittigidiyor`
--
ALTER TABLE `gittigidiyor`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `trendyol`
--
ALTER TABLE `trendyol`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `gittigidiyor`
--
ALTER TABLE `gittigidiyor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;

--
-- Tablo için AUTO_INCREMENT değeri `trendyol`
--
ALTER TABLE `trendyol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
