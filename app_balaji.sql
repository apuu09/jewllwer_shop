-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2018 at 12:08 AM
-- Server version: 5.6.36-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `app_balaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'balaji', 'balaji@123');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `msg`) VALUES
(1, 'ee', 'w@gmai.co', '788', 'hi'),
(2, 'Ritesh', 'rthpatel1976@yahoo.co.uk', '447950536325', 'I would like to buy Emerald, about 5 to 6 carat can you please let know price including ship to U.K.');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`) VALUES
(3, 'Precious'),
(4, 'Semi Precious');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `oid` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `paymenttype` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`oid`, `id`, `uid`, `total`, `name`, `mobile`, `email`, `address`, `paymenttype`, `status`, `date`) VALUES
(587, 1, 21, '100', 'sonu', '7611008837', 'sonu@gmail.com', 'West Java, Indonesia', 'Online', '1', '2017-09-28 17:17:03'),
(878, 2, 21, '200', 'son', 'usijiu', 'iui', 'Újkér, Hungary', 'COD', '1', '2017-09-28 17:18:49'),
(452, 3, 21, '2000', 'p', 'p', 'p', 'PPG Paints Arena Parking Garage, Centre Avenue, Pittsburgh, PA, United States', 'COD', '1', '2017-09-28 17:19:52'),
(316, 4, 22, '1300', 'p', 'p', 'p', 'p', 'COD', '1', '2017-09-28 17:26:49'),
(949, 5, 23, '100', 'sada', 'dad', 'dad', 'dada', 'COD', '1', '2017-09-29 07:05:23'),
(597, 6, 21, '400', 'tt', 'u', 'uu', 'u', 'COD', '1', '2017-09-29 13:22:45'),
(172, 7, 21, '2600', 'p', 'p', 'p', 'Paris, France', 'COD', '1', '2017-10-06 07:17:18'),
(607, 8, 21, '100', 'q', 'q', 'q', 'q', 'COD', '1', '2017-10-06 07:23:10'),
(398, 9, 21, '3499', 'sdfsdf', 'sdfdsfsf', 'sdfsdf', 'sdfsdfs', 'COD', '1', '2017-10-11 16:54:53'),
(799, 10, 25, '6597', 'sonu', 'sonu', 'sonu', 'som', 'COD', '1', '2017-10-11 18:02:18'),
(782, 11, 21, '84380', 'sonu', '7611007730', 'sonusuthar432@gmail.com', 'State of São Paulo, Brazil', 'COD', '1', '2017-10-12 09:41:08'),
(724, 12, 21, '2199', 'oo', 'oo', 'oo', 'South Carolina, United States', 'COD', '1', '2017-10-26 05:44:19'),
(170, 13, 21, '1099', 'p', 'p', 'p', 'pp', 'COD', '1', '2017-10-26 06:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE IF NOT EXISTS `order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `oid`, `pid`, `uid`, `qty`, `price`) VALUES
(1, 587, 2, 21, '1', '100'),
(2, 878, 4, 21, '1', '100'),
(3, 878, 1, 21, '1', '100'),
(4, 452, 3, 21, '2', '1000'),
(5, 316, 3, 22, '1', '1000'),
(6, 316, 1, 22, '1', '100'),
(7, 316, 4, 22, '1', '100'),
(8, 316, 2, 22, '1', '100'),
(9, 949, 1, 23, '1', '100'),
(10, 597, 1, 21, '4', '100'),
(11, 172, 1, 21, '26', '100'),
(12, 607, 1, 21, '1', '100'),
(13, 398, 0, 21, '1', '3499'),
(14, 799, 10, 25, '3', '2199'),
(15, 782, 4, 21, '4', '1099'),
(16, 782, 11, 21, '1', '3499'),
(17, 782, 12, 21, '15', '5099'),
(18, 724, 10, 21, '1', '2199'),
(19, 170, 4, 21, '1', '1099');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `img` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cid`, `img`, `name`, `mrp`, `des`) VALUES
(4, 4, '0489ba14889ab1912a55ada6cc07586c.jpg', 'Saligram', '1099', ''),
(10, 3, '4b4dae032ce7b4b01f9c067560779903.JPG', 'Blue Sapphire- Neelam (Thailand) - Super Premium 2.25 Ratti', '2199', 'Blue Sapphire is a highly precious, blue colored gemstone of the Corundum mineral family. Recognized as the most powerful and fastest acting gemstone in vedic astrology, it brings instant wealth, fame and success in wearer’s life.  Quick Overview Natural '),
(11, 3, '9d90bf87090848491fdbec7aecfdb089.JPG', 'Blue Sapphire- Neelam (Thailand) - Super Premium 3.25 Ratti', '3499 ', 'Blue Sapphire (Neelam) Blue Sapphire is a highly precious, blue colored gemstone of the Corundum mineral family. Recognized as the most powerful and fastest acting gemstone in vedic astrology, it brings instant wealth, fame and success in wearer’s life.  '),
(12, 3, 'a6d807634174b2e2af2bb4e661a60445.jpg', 'Blue Sapphire- Neelam (Thailand) - Super Premium 4.25 Ratti', '5099', 'Blue Sapphire (Neelam) Blue Sapphire is a highly precious, blue colored gemstone of the Corundum mineral family. Recognized as the most powerful and fastest acting gemstone in vedic astrology, it brings instant wealth, fame and success in wearer’s life.  '),
(13, 3, '1e4a6733fcd3723abdc0a341caa66fad.jpg', 'Blue Sapphire- Neelam (Thailand) - Super Premium 5.25 Ratti', '6599', 'Blue Sapphire (Neelam) Blue Sapphire is a highly precious, blue colored gemstone of the Corundum mineral family. Recognized as the most powerful and fastest acting gemstone in vedic astrology, it brings instant wealth, fame and success in wearer’s life.  '),
(14, 3, '17788197c24f588f60339f98e5e6121c.jpg', 'Blue Sapphire- Neelam (Thailand) - Super Premium 6.25', '8099', 'Blue Sapphire (Neelam) Blue Sapphire is a highly precious, blue colored gemstone of the Corundum mineral family. Recognized as the most powerful and fastest acting gemstone in vedic astrology, it brings instant wealth, fame and success in wearer’s life.  '),
(15, 3, 'e4904ae4fb0e4783c2bf0beed5d498d7.jpg', 'Blue Sapphire- Neelam (Thailand) - Super Premium 7.25 Ratti', '9699', 'Blue Sapphire (Neelam) Blue Sapphire is a highly precious, blue colored gemstone of the Corundum mineral family. Recognized as the most powerful and fastest acting gemstone in vedic astrology, it brings instant wealth, fame and success in wearer’s life.  '),
(16, 3, 'dac32f4fa95749ef222f468e02786ec4.JPG', 'Apatite - Cats Eye (Super Premium) Original Lab Certified Gemstone 2.25 Ratti', '799', 'Cat''s Eye (Lahsuniya in Hindi) is a semi precious gemstone found in shades of colours like gray, black, honey and yellowish green.  Quick Overview Natural Super Premium Cats Eye gemstone (Apatite) of Super Premium Quality •	Lab Certified •	100% Genuine •	'),
(17, 3, 'c968c6e445b64be88d11b03c0ac1df50.jpg', 'Apatite - Cats Eye (Super Premium) Original Lab Certified Gemstone 3.25', '1199', 'Cat''s Eye (Lahsuniya in Hindi) is a semi precious gemstone found in shades of colours like gray, black, honey and yellowish green.  Quick Overview Natural Super Premium Cats Eye gemstone (Apatite) of Super Premium Quality •	Lab Certified •	100% Genuine •	'),
(18, 3, '5ea21de36fd9f6c0a6d8f9600020a522.jpg', 'Apatite - Cats Eye (Super Premium) Original Lab Certified Gemstone 4.25 Ratti', '1599', 'Cat''s Eye (Lahsuniya in Hindi) is a semi precious gemstone found in shades of colours like gray, black, honey and yellowish green.  Quick Overview Natural Super Premium Cats Eye gemstone (Apatite) of Super Premium Quality •	Lab Certified •	100% Genuine •	'),
(19, 3, '05596cb2efa47d56eeea2581beb06646.jpg', 'Apatite - Cats Eye (Super Premium) Original Lab Certified Gemstone 5.25 Ratti', '2099', 'Cat''s Eye (Lahsuniya in Hindi) is a semi precious gemstone found in shades of colours like gray, black, honey and yellowish green.  Quick Overview Natural Super Premium Cats Eye gemstone (Apatite) of Super Premium Quality •	Lab Certified •	100% Genuine •	'),
(20, 3, '', 'Apatite - Cats Eye (Super Premium) Original Lab Certified Gemstone 6.25 Ratti', '2399', 'Cat''s Eye (Lahsuniya in Hindi) is a semi precious gemstone found in shades of colours like gray, black, honey and yellowish green.  Quick Overview Natural Super Premium Cats Eye gemstone (Apatite) of Super Premium Quality •	Lab Certified •	100% Genuine •	'),
(21, 4, '269169efb7eac9c69bd9009f982132f9.JPG', 'Apatite - Cats Eye (Super Premium) Original Lab Certified Gemstone 7.25 Ratti', '2799', 'Cat''s Eye (Lahsuniya in Hindi) is a semi precious gemstone found in shades of colours like gray, black, honey and yellowish green.  Quick Overview Natural Super Premium Cats Eye gemstone (Apatite) of Super Premium Quality •	Lab Certified •	100% Genuine •	'),
(22, 4, '26b743ed00b68ecd419316b5b573602d.jpg', 'Apatite - Cats Eye (Super Premium) Original Lab Certified Gemstone 8.25 Ratti', '3199', 'Cat''s Eye (Lahsuniya in Hindi) is a semi precious gemstone found in shades of colours like gray, black, honey and yellowish green.  Quick Overview Natural Super Premium Cats Eye gemstone (Apatite) of Super Premium Quality •	Lab Certified •	100% Genuine •	'),
(23, 4, '61ac1dc9baa3c09e5089c2ac0072f685.jpg', 'Religious Yantra Brass Dhan Laxmi Yantra Kit (Gold, 20.32 cm x 20.32 cm)', '1899', 'DHAN LAXMI YANTRA Get prosperity and victory through Dhan Laxmi Yantra Dhan Laxmi Yantra is a plate made of metal foils in which the mantras of Goddess Maklakshmi are encrypted to chant during the daily Pooja routine. The mantras are chanted to conquer al'),
(24, 3, 'c23be2514768d09ab8925a3a11e19095.JPG', 'Emerald (Zambian) Panna – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 2.25 Ratti', '1099', 'Emerald (Panna) Emerald is a green colored, highly precious gemstone of the Beryl mineral family. It is one of the most reputed gemstones in vedic astrology worn for success in businesses & jobs, creative or intellectual pursuits and knowledge seeking ven'),
(26, 3, 'f35d5120323d93673f25f410176f21ec.JPG', 'Emerald (Zambian) Panna – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 4.25', '2099', 'Emerald (Panna) Emerald is a green colored, highly precious gemstone of the Beryl mineral family. It is one of the most reputed gemstones in vedic astrology worn for success in businesses & jobs, creative or intellectual pursuits and knowledge seeking ven'),
(27, 3, 'faad8a5a4932adbce502a1dfca409b94.JPG', 'Emerald (Zambian) Panna – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 5.25 Ratti', '2599', 'Emerald (Panna) Emerald is a green colored, highly precious gemstone of the Beryl mineral family. It is one of the most reputed gemstones in vedic astrology worn for success in businesses & jobs, creative or intellectual pursuits and knowledge seeking ven'),
(28, 3, 'f90828b355b58b5e476ea615155dc0ff.jpg', 'Emerald (Zambian) Panna – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 6.25 Ratti', '3099', 'Emerald (Panna) Emerald is a green colored, highly precious gemstone of the Beryl mineral family. It is one of the most reputed gemstones in vedic astrology worn for success in businesses & jobs, creative or intellectual pursuits and knowledge seeking ven'),
(29, 3, '2bb6e3847904cedde57a2e11106abf8d.jpg', 'Emerald (Zambian) Panna – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 7.25 Ratti', '3599', 'Emerald (Panna) Emerald is a green colored, highly precious gemstone of the Beryl mineral family. It is one of the most reputed gemstones in vedic astrology worn for success in businesses & jobs, creative or intellectual pursuits and knowledge seeking ven'),
(30, 3, 'd0d6cbda3d9494d3e68bd7a3054cfd75.jpg', 'Emerald (Zambian) Panna – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 8.25', '4099', 'Emerald (Panna) Emerald is a green colored, highly precious gemstone of the Beryl mineral family. It is one of the most reputed gemstones in vedic astrology worn for success in businesses & jobs, creative or intellectual pursuits and knowledge seeking ven'),
(31, 4, '615a3d5b5ef3e5ece44675af415e7732.jpg', 'Original Siddha Panchmukhi Hanuman Kavach', '1999', '???? ?????? ??? ?????? ??? ????? ??? ?? ???? ????? ?? ???? ?? ??? ???? ????? ???? ????????? ?????? ??? ?? ???? ??? ?? | ?? ????? ??? ?? ??? ????? ??????? ?? ????? ???? ?? ????? ???? ??? ???? ???   ???? ?????? ??? ???? ?? ??? ????? ?? ????? ???? ?? ????? ?'),
(32, 4, 'd50a87f9275b8311ccefa572dcc20231.jpg', 'White Opal with Fire - Premium certified 2.25 Ratti', '1099', '?	The quality of Opal depends upon its Color, Clarity & Transparency, Shape & Polish. ?	For Astrological purpose, the Opal''s quality depends mainly on its colour and clarity. The background colour of the Opal stone should be pure, the play of colours (col'),
(33, 4, 'f03e66e2dd78a14af197f692f16145e1.jpg', 'White Opal with Fire - Premium certified 3.25 Ratti', '1499', '?	The quality of Opal depends upon its Color, Clarity & Transparency, Shape & Polish. ?	For Astrological purpose, the Opal''s quality depends mainly on its colour and clarity. The background colour of the Opal stone should be pure, the play of colours (col'),
(34, 4, '26366a6dc842f3c7b0801ec5b66e1a0f.jpg', 'White Opal with Fire - Premium certified 4.25 Ratti', '1999', '?	The quality of Opal depends upon its Color, Clarity & Transparency, Shape & Polish. ?	For Astrological purpose, the Opal''s quality depends mainly on its colour and clarity. The background colour of the Opal stone should be pure, the play of colours (col'),
(35, 4, 'bb54161ddaf27411e881623979458ae2.png', 'White Opal with Fire - Premium certified 5.25 Ratti', '2599', '?	The quality of Opal depends upon its Color, Clarity & Transparency, Shape & Polish. ?	For Astrological purpose, the Opal''s quality depends mainly on its colour and clarity. The background colour of the Opal stone should be pure, the play of colours (col'),
(36, 3, 'f645e505dff61ffb8fd79e1a4a6557c6.png', 'White Opal with Fire - Premium certified 6.25 Ratti', '2999', '?	The quality of Opal depends upon its Color, Clarity & Transparency, Shape & Polish. ?	For Astrological purpose, the Opal''s quality depends mainly on its colour and clarity. The background colour of the Opal stone should be pure, the play of colours (col'),
(37, 4, 'd1dd276d7fb8be4763f3557f3dcbc37b.jpg', 'White Opal with Fire - Premium certified 7.25 Ratti', '3599', '?	The quality of Opal depends upon its Color, Clarity & Transparency, Shape & Polish. ?	For Astrological purpose, the Opal''s quality depends mainly on its colour and clarity. The background colour of the Opal stone should be pure, the play of colours (col'),
(38, 4, 'a5380152d949a6362e6c79cac3110df5.png', 'White Opal with Fire - Premium certified 8.25 Ratti', '3999', '?	The quality of Opal depends upon its Color, Clarity & Transparency, Shape & Polish. ?	For Astrological purpose, the Opal''s quality depends mainly on its colour and clarity. The background colour of the Opal stone should be pure, the play of colours (col'),
(39, 4, '5632f2ed59ce1169c0e81254536740ef.png', 'Natural South Sea   (Cultured) Pearl – Moti – Premium 2.25 Ratti', '699', 'Pearl (Moti in Hindi) is an iridescent organic gemstone known for its lustrous appearance and astrological benefits. Quick Overview Natural Premium Pearl gemstone (South Sea (Cultured)) of Premium Quality •	Lab Certified •	100% Genuine •	Pay Securely  Pri'),
(40, 4, 'e1430727cd5674e359646f761f1bbaa9.jpg', 'Natural South Sea   (Cultured) Pearl – Moti – Premium 3.25 Ratti', '999', 'Pearl (Moti in Hindi) is an iridescent organic gemstone known for its lustrous appearance and astrological benefits. Quick Overview Natural Premium Pearl gemstone (South Sea (Cultured)) of Premium Quality •	Lab Certified •	100% Genuine •	Pay Securely  Pri'),
(41, 4, 'd8388030ce39916b915e0c3382be68f5.jpg', 'Natural South Sea   (Cultured) Pearl – Moti – Premium 4.25', '1299', 'Pearl (Moti in Hindi) is an iridescent organic gemstone known for its lustrous appearance and astrological benefits. Quick Overview Natural Premium Pearl gemstone (South Sea (Cultured)) of Premium Quality •	Lab Certified •	100% Genuine •	Pay Securely  Pri'),
(42, 4, '4e2ea395410b3c37aae9b5ffa980a64a.png', 'Natural South Sea   (Cultured) Pearl – Moti – Premium 5.25 Ratti', '1599', 'Pearl (Moti in Hindi) is an iridescent organic gemstone known for its lustrous appearance and astrological benefits. Quick Overview Natural Premium Pearl gemstone (South Sea (Cultured)) of Premium Quality •	Lab Certified •	100% Genuine •	Pay Securely  Pri'),
(43, 4, '2150625d6222352d0e20800c9eb5a252.jpg', 'Natural South Sea   (Cultured) Pearl – Moti – Premium 6.25 Ratti', '1899', 'Pearl (Moti in Hindi) is an iridescent organic gemstone known for its lustrous appearance and astrological benefits. Quick Overview Natural Premium Pearl gemstone (South Sea (Cultured)) of Premium Quality •	Lab Certified •	100% Genuine •	Pay Securely  Pri'),
(44, 4, '957d13640fc65ad3f901f9477015493f.jpg', 'Natural South Sea   (Cultured) Pearl – Moti – Premium 7.25 Ratti', '2299', 'Pearl (Moti in Hindi) is an iridescent organic gemstone known for its lustrous appearance and astrological benefits. Quick Overview Natural Premium Pearl gemstone (South Sea (Cultured)) of Premium Quality •	Lab Certified •	100% Genuine •	Pay Securely  Pri'),
(45, 4, 'b2a8227340512be729e94e4574adff26.jpg', 'Natural South Sea   (Cultured) Pearl – Moti – Premium 8.25 Ratti', '2599', 'Pearl (Moti in Hindi) is an iridescent organic gemstone known for its lustrous appearance and astrological benefits. Quick Overview Natural Premium Pearl gemstone (South Sea (Cultured)) of Premium Quality •	Lab Certified •	100% Genuine •	Pay Securely  Pri'),
(46, 3, '7545269fe330f4bfd4e484a3a20dda8f.jpg', 'Yellow Sapphire (Pukhraj)  (Thailand) - Luxury 2.25 Ratti', '1999', 'We offer this Yellow Sapphire Stone to our prestigious clients in various designs, sizes, shades and finishes to satisfy their variegated demands at most affordable prices.  Features:   •	Perfect finish •	Unmatched quality •	Elegant look •	Smooth edges •	'),
(47, 3, 'c46f4b5c73acfaf0db84649e889b19ea.jpg', 'Yellow Sapphire (Pukhraj)  (Thailand) - Luxury 3.25 Ratti', '2699', 'We offer this Yellow Sapphire Stone to our prestigious clients in various designs, sizes, shades and finishes to satisfy their variegated demands at most affordable prices.  Features:   •	Perfect finish •	Unmatched quality •	Elegant look •	Smooth edges •	'),
(48, 3, '8279d2644497dc04848ead741f1ab842.jpg', 'Yellow Sapphire (Pukhraj)  (Thailand) - Luxury 4.25 Ratti', '3499', 'Product Description: We offer this Yellow Sapphire Stone to our prestigious clients in various designs, sizes, shades and finishes to satisfy their variegated demands at most affordable prices.  Features:   •	Perfect finish •	Unmatched quality •	Elegant l'),
(49, 3, '7670112375be64c892c6eb8a99c89017.jpg', 'Yellow Sapphire (Pukhraj)  (Thailand) - Luxury 5.25 Ratti', '4299', 'Product Description: We offer this Yellow Sapphire Stone to our prestigious clients in various designs, sizes, shades and finishes to satisfy their variegated demands at most affordable prices.  Features:   •	Perfect finish •	Unmatched quality •	Elegant l'),
(50, 3, '0b8fff21a0e0bf3ca1c8dfc60fdf04f4.jpg', 'Yellow Sapphire (Pukhraj)  (Thailand) - Luxury 6.25 Ratti', '4999', 'Product Description: We offer this Yellow Sapphire Stone to our prestigious clients in various designs, sizes, shades and finishes to satisfy their variegated demands at most affordable prices.  Features:   •	Perfect finish •	Unmatched quality •	Elegant l'),
(51, 3, '5a3a597589f6956df984ffc348243215.jpg', 'Yellow Sapphire (Pukhraj)  (Thailand) - Luxury 7.25 Ratti', '5699', 'Product Description: We offer this Yellow Sapphire Stone to our prestigious clients in various designs, sizes, shades and finishes to satisfy their variegated demands at most affordable prices.  Features:   •	Perfect finish •	Unmatched quality •	Elegant l'),
(52, 3, '18dbe9161c1aedbaac5118b31de98eda.jpg', 'Yellow Sapphire (Pukhraj)  (Thailand) - Luxury 8.25 Ratti', '6599', 'Product Description: We offer this Yellow Sapphire Stone to our prestigious clients in various designs, sizes, shades and finishes to satisfy their variegated demands at most affordable prices.  Features:   •	Perfect finish •	Unmatched quality •	Elegant l'),
(53, 3, '54435e92600d4486f4198af271f5ea66.jpg', 'Yellow Sapphire (Pukhraj)  (Thailand) - Luxury 9.25', '7299', 'Product Description: We offer this Yellow Sapphire Stone to our prestigious clients in various designs, sizes, shades and finishes to satisfy their variegated demands at most affordable prices.  Features:   •	Perfect finish •	Unmatched quality •	Elegant l'),
(54, 3, 'c9cbf83bb238d189bc17bdb60c9a96f0.JPG', 'Red Coral (Capsule) - Premium (Small) Super Delux Quality 2.25 Ratti', '599', 'Red Coral (Moonga) Red Coral is a precious, bright red organic gemstone formed in the deep sea by marine creatures called coral polyps (Corallium rubrum).  It is a popular astrological gemstone worn to treat Mangal dosha and ensure success in leadership r'),
(55, 4, '5c34e8ff6b1ae0612aaa19869966567c.jpg', 'Red Coral (Capsule) - Premium (Small) Super Delux Quality 3.25 Ratti', '799', 'Red Coral (Moonga) Red Coral is a precious, bright red organic gemstone formed in the deep sea by marine creatures called coral polyps (Corallium rubrum).  It is a popular astrological gemstone worn to treat Mangal dosha and ensure success in leadership r'),
(56, 4, 'aa3363e50431209428c42d9365bee912.jpg', 'Red Coral (Capsule) - Premium (Small) Super Delux Quality 4.25 Ratti', '1199', 'Red Coral (Moonga) Red Coral is a precious, bright red organic gemstone formed in the deep sea by marine creatures called coral polyps (Corallium rubrum).  It is a popular astrological gemstone worn to treat Mangal dosha and ensure success in leadership r'),
(57, 4, '233799dd30148876be7be2ecafbdb021.jpg', 'Red Coral (Capsule) - Premium (Small) Super Delux Quality 5.25 Ratti', '1499', 'Red Coral (Moonga) Red Coral is a precious, bright red organic gemstone formed in the deep sea by marine creatures called coral polyps (Corallium rubrum).  It is a popular astrological gemstone worn to treat Mangal dosha and ensure success in leadership r'),
(58, 4, '57e421537d0b22f8e216d842f99d9dbe.JPG', 'Red Coral (Capsule) - Premium (Small) Super Delux Quality 6.25 Ratti', '1799', 'Red Coral (Moonga) Red Coral is a precious, bright red organic gemstone formed in the deep sea by marine creatures called coral polyps (Corallium rubrum).  It is a popular astrological gemstone worn to treat Mangal dosha and ensure success in leadership r'),
(59, 4, 'f95d3c3b2bf765ef47c84a15f86895d5.JPG', 'Red Coral (Capsule) - Premium (Small) Super Delux Quality 7.25 Ratti', '2099', 'Red Coral (Moonga) Red Coral is a precious, bright red organic gemstone formed in the deep sea by marine creatures called coral polyps (Corallium rubrum).  It is a popular astrological gemstone worn to treat Mangal dosha and ensure success in leadership r'),
(60, 4, '6081257a63f5a1c80d5f130bd55f14e1.jpg', 'Red Coral (Capsule) - Premium (Small) Super Delux Quality 8.25 Ratti', '2399', 'Red Coral (Moonga) Red Coral is a precious, bright red organic gemstone formed in the deep sea by marine creatures called coral polyps (Corallium rubrum).  It is a popular astrological gemstone worn to treat Mangal dosha and ensure success in leadership r'),
(61, 3, '08d9e16250cd31180819de0002d662d1.jpg', 'New Burma Ruby – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 2.25 Ratti', '1099', 'Ruby or Manik is a natural, deep pink or blood red colored, precious gemstone of the Corundum family. Vedic astrology recommends rubies to be worn for success and growth in businesses, jobs, social status, authority and self-confidence.  Quick Overview Na'),
(62, 3, 'f65e7ac2d50baa6901dafda1b335fc9d.jpg', 'New Burma Ruby – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 3.25 Ratti', '1699', 'Ruby or Manik is a natural, deep pink or blood red colored, precious gemstone of the Corundum family. Vedic astrology recommends rubies to be worn for success and growth in businesses, jobs, social status, authority and self-confidence.  Quick Overview Na'),
(63, 3, '522b450dbcc3d77c675d8360e97a4eb7.jpg', 'New Burma Ruby – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 4.25 Ratti', '2199', 'Ruby or Manik is a natural, deep pink or blood red colored, precious gemstone of the Corundum family. Vedic astrology recommends rubies to be worn for success and growth in businesses, jobs, social status, authority and self-confidence.  Quick Overview Na'),
(64, 3, '5a91a7ec0e8c0f0ee517269f0d0e2320.jpg', 'New Burma Ruby – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 5.25 Ratti', '2799', 'Ruby or Manik is a natural, deep pink or blood red colored, precious gemstone of the Corundum family. Vedic astrology recommends rubies to be worn for success and growth in businesses, jobs, social status, authority and self-confidence.  Quick Overview Na'),
(65, 3, 'baced30d9ac8820c031b51ab774edfdb.jpg', 'New Burma Ruby – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 6.25 Ratti', '3299', 'Ruby or Manik is a natural, deep pink or blood red colored, precious gemstone of the Corundum family. Vedic astrology recommends rubies to be worn for success and growth in businesses, jobs, social status, authority and self-confidence.  Quick Overview Na'),
(66, 3, '13ec8ae33287237d730478f79ad2e051.jpg', 'New Burma Ruby – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 7.25 Ratti', '3699', 'Ruby or Manik is a natural, deep pink or blood red colored, precious gemstone of the Corundum family. Vedic astrology recommends rubies to be worn for success and growth in businesses, jobs, social status, authority and self-confidence.  Quick Overview Na'),
(67, 3, '7f8bb662ff01f0b580695b84497ffeda.jpg', 'New Burma Ruby – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 8.25 Ratti', '4099', 'Ruby or Manik is a natural, deep pink or blood red colored, precious gemstone of the Corundum family. Vedic astrology recommends rubies to be worn for success and growth in businesses, jobs, social status, authority and self-confidence.  Quick Overview Na'),
(68, 3, 'd84a148a63308422ea9155c2eebf8ce5.jpg', 'New Burma Ruby – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 9.25 Ratti', '4599', 'Ruby or Manik is a natural, deep pink or blood red colored, precious gemstone of the Corundum family. Vedic astrology recommends rubies to be worn for success and growth in businesses, jobs, social status, authority and self-confidence.  Quick Overview Na'),
(69, 4, '5307cf32e65fd88f3a43c1fc727ea292.jpg', 'Shri Shani Subh Yantra Rudraksha Yantra Kavach', '1999', 'Our Shani raksha Kavach is energized by our vedic pundits, this kavach shields the person from ill effects of shani, evil eye. Benefits are: remedy to diseases, improvement in business, improvement in relations, improvement in financial conditions. Descri'),
(70, 3, 'e488ad2e1b6336b524a60de22f4d3ab4.JPG', 'Emerald (Zambian) Panna – Premium 100 % ORIGINAL CERTIFIED NATURAL GEMSTONE AAA QUALITY 3.25 Ratti', '1599', 'Emerald (Panna) Emerald is a green colored, highly precious gemstone of the Beryl mineral family. It is one of the most reputed gemstones in vedic astrology worn for success in businesses & jobs, creative or intellectual pursuits and knowledge seeking ven');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE IF NOT EXISTS `sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(1000) NOT NULL,
  `about` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `mobile`, `address`, `otp`) VALUES
(24, 'Avinash Upadhyay', 'password', 'upadhyay.avinashhts@gmail.com', '8171657105', 'Jaipur ', ''),
(21, 'sonu', 'sonu', 'sonusuthar432@gmail.com', '7611007730', 'bikaner', '60328'),
(23, 'Saurabh', '123456', 'saurabh@appiqo.com', '9958376213', 'Jaipur', ''),
(25, 'stiwari', '12345', 'saurabh@appiqo.com', '999999999999', 'ajdbad', ''),
(26, 'immayur', 'shribihariji', 'immayursharma@gmail.com', '7617777798', 'Agra', ''),
(27, 'Anjani', '1234567890', 'anjani@appiqo.com', '9001870045', 'Jaipur', ''),
(28, 'Piyush Sharma', 'mahadev', 'Piyushsharma25dec@gmail.com', '7906250328', 'Jaipur', ''),
(29, 'sonu', '12345', 'sonu@gmail.com', '7611007730', 'jaipur', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
