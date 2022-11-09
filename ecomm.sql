-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 04:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 1, 4),
(3, 9, 4, 6),
(4, 9, 12, 2),
(7, 13, 5, 1),
(8, 13, 16, 1),
(9, 14, 4, 1),
(10, 14, 5, 1),
(14, 19, 6, 1),
(16, 22, 6, 2),
(18, 19, 13, 1),
(19, 25, 3, 2),
(20, 25, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(2, 'Office furniture', 'Office furniture'),
(3, 'Single Sofa', 'Single Sofa'),
(4, 'Living Room', 'Living Room'),
(5, 'Single Bed', 'Single Bed'),
(8, 'Full Bed', 'Full Bed'),
(9, 'Kitchen Furniture', 'Kitchen Furniture'),
(12, 'sofa', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'LOBBY LUXURY ', '', 'lobby-luxury', 799.99, 'microsoft-surface-pro-4-typecover-128-gb_1638255718.png', '2018-05-10', 3),
(2, 1, 'LUXURY ELEGANTY', '', 'luxury-eleganty', 499.99, 'lenovo-ideapad-320s-14ikb-14-laptop-grey_1638255581.png', '2022-06-26', 1),
(3, 1, 'Sofa – Neptune', '', 'sofa-neptune', 339.99, 'apple-9-7-ipad-32-gb-gold_1638254941.png', '2022-11-09', 1),
(4, 1, 'Athena  Sofa', '', 'athena-sofa', 419.99, 'athena-sofa_1638254620.jfif', '2021-11-29', 2),
(5, 1, 'LUXURY WOODEN SOFA', '', 'luxury-wooden-sofa', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver_1638255329.jpg', '0000-00-00', 0),
(6, 2, 'Office table Code-008 558', '', 'office-table-code-008-558', 1199.99, 'pc-specialist-vortex-core-lite-gaming-pc_1638259522.jpg', '2021-12-01', 3),
(7, 2, 'Office table Code-002 552', '', 'office-table-code-002-552', 1299.99, 'dell-inspiron-5675-gaming-pc-recon-blue_1638259147.jpg', '2021-11-29', 3),
(8, 2, 'Office table Code-001 551', '', 'office-table-code-001-551', 1489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc_1638259161.jfif', '2021-11-30', 1),
(9, 1, 'French wooden carved sofa set classic luxury living room furniture', '', 'french-wooden-carved-sofa-set-classic-luxury-living-room-furniture', 749.99, 'french-wooden-carved-sofa-set-classic-luxury-living-room-furniture_1638253825.jfif', '2021-11-30', 3),
(10, 2, 'Office table Code-003 553', '', 'office-table-code-003-553', 1199.99, 'hp-pavilion-power-580-015na-gaming-pc_1638259251.jpg', '2021-11-30', 4),
(11, 2, 'Office table Code-005 555', '', 'office-table-code-005-555', 1399.99, 'lenovo-legion-y520-gaming-pc_1638259276.jpg', '2022-01-28', 1),
(12, 2, 'Office table Code-009 559', '', 'office-table-code-009-559', 999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc_1638259581.jpg', '2018-05-10', 1),
(13, 2, 'Office table Code-007 557', '', 'office-table-code-007-557', 1449.99, 'pc-specialist-vortex-core-ii-gaming-pc_1638259290.jpg', '2022-11-09', 1),
(14, 1, 'Berlin Classic Sofa Set', '', 'berlin-classic-sofa-set', 649.99, 'berlin-classic-sofa-set_1638254082.jpg', '2021-11-30', 1),
(15, 1, 'Luxury Wooden Sofa', '', 'luxury-wooden-sofa', 379.99, 'luxury-wooden-sofa_1638254230.jpg', '2021-11-30', 1),
(16, 1, 'Athena Tradtional Hazelnut Sofa', '', 'athena-tradtional-hazelnut-sofa', 599.99, 'athena-tradtional-hazelnut-sofa_1638254553.jpg', '2021-11-29', 2),
(17, 1, 'LUXURY WOODEN SOFA ESSENTIALS', '', 'luxury-wooden-sofa-essentials', 339.99, 'apple-9-7-ipad-32-gb-space-grey_1638255236.png', '2018-05-12', 1),
(18, 4, 'Living Room Sofa cotton fabric sofa', '', 'living-room-sofa-cotton-fabric-sofa', 3749.99, 'living-room-sofa-cotton-fabric-sofa.jpg', '0000-00-00', 0),
(19, 4, 'Luxury Modern Leather Fabric Corner Sectional Sofa Set Design Couches for Living Room with Ottoman', '', 'luxury-modern-leather-fabric-corner-sectional-sofa-set-design-couches-living-room-ottoman', 5799.99, 'my-aashis-luxury-modern-u-shaped-leather-fabric-corner-sectional-sofa-set-design-couches-living-room-ottoman.jpg', '2022-11-09', 1),
(20, 3, 'Erommy Power Lift Recliner,Heated PU Leather single cheer ', '', 'erommy-power-lift-recliner-heated-pu-leather-single-cheer', 239.99, 'erommy-power-lift-recliner-heated-pu-leather.jpeg', '2021-12-01', 1),
(21, 3, 'Modern Accent Chair Single Sofa Comfy Fabric Upholstered single cheer ', '', 'modern-accent-chair-single-sofa-comfy-fabric-upholstered-single-cheer', 139.99, 'modern-accent-chair-single-sofa-comfy-fabric-upholstered.jpeg', '0000-00-00', 0),
(22, 3, 'single sofa 24.5 Wide Accent Chair with Ottoman Storage Armchair with Adjustable Backrest single cheer ', '', 'single-sofa-24-5-wide-accent-chair-ottoman-storage-armchair-adjustable-backrest-single-cheer', 319.99, '24-5-wide-accent-chair-ottoman-storage-armchair-adjustable-backrest.jpeg', '0000-00-00', 0),
(23, 3, 'Queer Eye Wynn Accent Chair, Living Room Armchair, Camel single cheer ', '', 'queer-eye-wynn-accent-chair-living-room-armchair-camel-single-cheer', 109.99, 'queer-eye-wynn-accent-chair-living-room-armchair-camel.jpeg', '2022-05-10', 2),
(24, 3, 'Homall Recliner Chair Padded Seat Pu Leather for Living  single cheer ', '', 'homall-recliner-chair-padded-seat-pu-leather-living-single-cheer', 99.99, 'homall-recliner-chair-padded-seat-pu-leather-living.jpeg', '0000-00-00', 0),
(25, 4, 'SOFA Modern Living Room Sofa Tufted Velvet Cushion ', '', 'sofa-modern-living-room-sofa-tufted-velvet-cushion', 3349.99, 'sofa-modern-living-room-sofa-tufted-velvet-cushion.jpg', '0000-00-00', 0),
(26, 4, 'Luxury Modern U Shaped Leather Fabric Corner Sectional Sofa Set Design Couches for Living Room with Ottoman', '', 'luxury-modern-u-shaped-leather-fabric-corner-sectional-sofa-set-design-couches-living-room-ottoman', 6499.99, 'luxury-modern-u-shaped-leather-fabric-corner-sectional-sofa-set-design-couches-living-room-ottoman.jpg', '0000-00-00', 0),
(27, 4, 'Luxury Home Sleek Design  furniture 5 seater couch living room corner sofa set designs with price', '', 'luxury-home-sleek-design-furniture-5-seater-couch-living-room-corner-sofa-set-designs-price', 5899.99, 'luxury-cheer-bam-home-sleek-design-sale-modern-furniture-5-seater-couch-living-room-corner-sofa-set-designs-price.jpg', '0000-00-00', 0),
(28, 4, 'Luxury  Home Sleek Design Sale modern furniture 5 seater couch living room corner sofa ', '', 'luxury-home-sleek-design-sale-modern-furniture-5-seater-couch-living-room-corner-sofa', 6059.99, 'luxury-home-sleek-design-sale-modern-furniture-5-seater-couch-living-room-corner-sofa.jpg', '0000-00-00', 0),
(29, 4, 'My Aashis Luxury Modern Leather Fabric Corner Sectional Sofa Set Design Couches for Living Room with Ottoman', '', 'my-aashis-luxury-modern-leather-fabric-corner-sectional-sofa-set-design-couches-living-room-ottoman', 6789.99, 'my-aashis-luxury-modern-leather-fabric-corner-sectional-sofa-set-design-couches-living-room-ottoman.jpg', '0000-00-00', 0),
(30, 4, 'Luxury Modern U Shaped Leather Fabric Corner Sectional Sofa for Living Room with Ottoman', '', 'luxury-modern-u-shaped-leather-fabric-corner-sectional-sofa-living-room-ottoman', 7349.99, 'luxury-modern-u-shaped-leather-fabric-corner-sectional-sofa-living-room-ottoman.jpg', '2021-11-30', 1),
(31, 4, 'Blue Green with Beige Supreme Sectional Sofa living room', '', 'blue-green-beige-supreme-sectional-sofa-living-room', 4999.99, 'blue-green-beige-supreme-sectional-sofa.png', '0000-00-00', 0),
(32, 4, 'U Shape Sofa Set:- Hardwood Fabric 9 Seater Sofa Set with 4-Puffy (Roland Pink and White) living room', '', 'u-shape-sofa-set-hardwood-fabric-9-seater-sofa-set-4-puffy-roland-pink-and-white-living-room', 4799.99, 'u-shape-sofa-set-hardwood-fabric-9-seater-sofa-set-4-puffy-roland-pink-and-white.png', '0000-00-00', 0),
(33, 4, 'Luxury U Shape Sofa Set:- Hardwood Fabric 9 Seater Sofa Set', '', 'luxury-u-shape-sofa-set-hardwood-fabric-9-seater-sofa-set', 5249.99, 'luxury-u-shape-sofa-set-hardwood-fabric-9-seater-sofa-set.jpg', '0000-00-00', 0),
(34, 2, 'Office table Code-006 556', '', 'office-table-code-006-556', 1299.99, 'code-001-551.jpg', '0000-00-00', 0),
(35, 2, 'Office table Code-011 561', '', 'office-table-code-011-561', 1139.99, 'code-011-561.jpg', '0000-00-00', 0),
(36, 2, 'Office table Code-012 562', '', 'office-table-code-012-562', 989.99, 'code-012-562.jpg', '0000-00-00', 0),
(37, 2, 'Office table Code-013 563', '', 'office-table-code-013-563', 1499.9, 'code-013-563.png', '0000-00-00', 0),
(38, 2, 'Office table Code-014 564', '', 'office-table-code-014-564', 1234.99, 'code-014-564.png', '0000-00-00', 0),
(39, 2, 'Office table Code-015 565', '', 'office-table-code-015-565', 1344.99, 'code-015-565.png', '0000-00-00', 0),
(40, 2, 'Office table Code-004 554', '', 'office-table-code-004-554', 1299.99, 'code-004-554.jpg', '0000-00-00', 0),
(41, 5, 'single Bed Code-SB001', '', 'single-bed-code-sb001', 299.99, 'code-sb001.jpg', '0000-00-00', 0),
(42, 5, 'single Bed Code-SB002', '', 'single-bed-code-sb002', 234.99, 'code-sb002.jpg', '0000-00-00', 0),
(43, 5, 'single Bed Code-SB003', '', 'single-bed-code-sb003', 339.99, 'code-sb003.jfif', '0000-00-00', 0),
(44, 5, 'single Bed  Code-SB004', '', 'single-bed-code-sb004', 255.99, 'code-sb004.jfif', '0000-00-00', 0),
(45, 5, 'single Bed  Code-SB005', '', 'single-bed-code-sb005', 299.99, 'code-sb005.jfif', '0000-00-00', 0),
(46, 5, 'single Bed  Code-SB006', '', 'single-bed-code-sb006', 289.99, 'code-sb006.jfif', '0000-00-00', 0),
(47, 5, 'single Bed  Code-SB007', '', 'single-bed-code-sb007', 419.99, 'code-sb007.jfif', '0000-00-00', 0),
(48, 5, 'single Bed Code-SB008', '', 'single-bed-code-sb008', 339.99, 'code-sb008.jfif', '0000-00-00', 0),
(49, 5, 'single Bed Code-SB009', '', 'single-bed-code-sb009', 499.99, 'code-sb009.jfif', '0000-00-00', 0),
(50, 5, 'single Bed  Code-SB010', '', 'single-bed-code-sb010', 549.99, 'code-sb010.jfif', '0000-00-00', 0),
(51, 2, 'Office table Code-010 560', '', 'office-table-code-010-560', 339.99, 'code-010-560.png', '0000-00-00', 0),
(52, 8, 'Bed Code-FB001', '', 'bed-code-fb001', 6789.99, 'code-fb001.png', '0000-00-00', 0),
(53, 8, 'Bed Code-FB002', '', 'bed-code-fb002', 3339.99, 'code-fb002.png', '2021-11-30', 1),
(54, 8, 'Bed Code-FB003', '', 'bed-code-fb003', 2899.99, 'code-fb003.png', '0000-00-00', 0),
(55, 8, 'Bed Code-FB004', '', 'bed-code-fb004', 2666.99, 'code-fb004.png', '0000-00-00', 0),
(56, 8, 'Bed Code-FB005', '', 'bed-code-fb005', 1899.99, 'code-fb005.png', '0000-00-00', 0),
(57, 8, 'Bed Code-FB006', '', 'bed-code-fb006', 2199.99, 'code-fb006.png', '0000-00-00', 0),
(58, 8, 'Bed Code-FB007', '', 'bed-code-fb007', 1999.99, 'code-fb007.png', '0000-00-00', 0),
(59, 8, 'Bed Code-FB008', '', 'bed-code-fb008', 1899.99, 'code-fb008.png', '0000-00-00', 0),
(60, 8, 'Bed Code-FB009', '', 'bed-code-fb009', 2666.99, 'code-fb009.png', '0000-00-00', 0),
(61, 8, 'Bed Code-FB010', '', 'bed-code-fb010', 1449.99, 'code-fb010.png', '0000-00-00', 0),
(62, 8, 'Code-FB011', '', 'code-fb011', 1749.99, 'code-fb011.png', '0000-00-00', 0),
(63, 8, 'Code-FB012', '', 'code-fb012', 2355.99, 'code-fb012.png', '0000-00-00', 0),
(64, 8, 'Code-FB013', '', 'code-fb013', 2289.99, 'code-fb013.png', '0000-00-00', 0),
(65, 8, 'Code-FB014', '', 'code-fb014', 1999.99, 'code-fb014.png', '0000-00-00', 0),
(66, 8, 'Code-FB015', '', 'code-fb015', 2666.99, 'code-fb015.png', '0000-00-00', 0),
(67, 8, 'Code-FB016', '', 'code-fb016', 1899.99, 'code-fb016.png', '0000-00-00', 0),
(68, 9, 'Kitchen Code-KIT0001', '', 'kitchen-code-kit0001', 1299.99, 'code-kit0001.png', '0000-00-00', 0),
(69, 9, 'Kitchen Code-KIT0002', '', 'kitchen-code-kit0002', 1344.99, 'code-kit0002.png', '2021-11-30', 1),
(70, 9, 'Kitchen Code-KIT0003', '', 'kitchen-code-kit0003', 1449.99, 'code-kit0003.png', '2021-11-30', 1),
(71, 9, 'Kitchen Code-KIT0004', '', 'kitchen-code-kit0004', 1299.99, 'code-kit0004.png', '0000-00-00', 0),
(72, 9, 'Kitchen Code-KIT0005', '', 'kitchen-code-kit0005', 1579.99, 'code-kit0005.png', '0000-00-00', 0),
(73, 9, 'Kitchen Code-KIT0006', '', 'kitchen-code-kit0006', 1449.99, 'code-kit0006.png', '0000-00-00', 0),
(74, 9, 'Kitchen Code-KIT0007', '', 'kitchen-code-kit0007', 1489.98, 'code-kit0007.png', '0000-00-00', 0),
(75, 9, 'Kitchen Code-KIT0008', '', 'kitchen-code-kit0008', 1559.99, 'code-kit0008.png', '0000-00-00', 0),
(76, 9, 'Kitchen  Code-KIT0009', '', 'kitchen-code-kit0009', 1344.99, 'code-kit0009.png', '0000-00-00', 0),
(77, 9, 'Kitchen Code-KIT0010', '', 'kitchen-code-kit0010', 3339.99, 'code-kit0010.png', '0000-00-00', 0),
(78, 9, 'Kitchen Code-KIT0011', '', 'kitchen-code-kit0011', 1899.99, 'code-kit0011.png', '0000-00-00', 0),
(79, 9, 'Kitchen Code-KIT0012', '', 'kitchen-code-kit0012', 2666.99, 'code-kit0012.png', '0000-00-00', 0),
(80, 9, 'Kitchen Code-KIT0013', '', 'kitchen-code-kit0013', 1749.99, 'code-kit0013.png', '0000-00-00', 0),
(81, 9, 'Kitchen Code-KIT0014', '', 'kitchen-code-kit0014', 2199.99, 'code-kit0014.png', '0000-00-00', 0),
(82, 9, 'Kitchen Code-KIT0015', '', 'kitchen-code-kit0015', 1899.99, 'code-kit0015.png', '0000-00-00', 0),
(83, 9, 'Kitchen Code-KIT0016', '', 'kitchen-code-kit0016', 2355.99, 'code-kit0016.png', '0000-00-00', 0),
(84, 2, 'fgdsgf', '<p>djjfjdk fjksl jfklsdj klfdsjfklsjfklsd jlkfsdjfkldsjfklsj fdkl fjskd jfkls fdjjfjdk fjksl jfklsdj klfdsjfklsjfklsd jlkfsdjfkldsjfklsj fdkl fjskd jfkls f</p>\r\n', 'fgdsgf', 232, 'fgdsgf.jfif', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$8wY63GX/y9Bq780GBMpxCesV9n1H6WyCqcA2hNy2uhC59hEnOpNaS', 1, 'admin', 'Dirie', '', '', 'pic1.jpg', 1, '', '', '2018-05-01'),
(13, 'user1@gmail.com', '$2y$10$Yxt9JCxXh7eiJNMthzkUvepUui52a1GVLCroEd6eCunZMKoIbjp6e', 0, 'fitah', 'abd', 'banasree', '01792636546', 'fitah.jpg', 1, '', '', '2021-11-29'),
(14, 'user3@gmail.com', '$2y$10$9ePuz0aLm7J3hPR0fgOqoOniCyYtjHXjBVkB3zRr0/AGRH7OMO4/m', 0, 'fitah', 'abd', 'ajfkls', '7987875767', 'fitah.jpg', 1, 'tTIzPDGKfdwL', '567pfyJwIN2kzo8', '2021-11-30'),
(19, 'adesh@gmail.com', '$2y$10$j1jmO4GZ0bInOLu1/vaZcerASJgwnODPwAe4C3nUeRbDIufKQcZ5i', 0, 'adesh', 'roble', '', '', 'combo 7.jfif', 1, 'thVK3YcxRWQE', 'lsFoTX4KiLuOcD1', '2021-11-30'),
(21, 'moha@gmail.com', '$2y$10$P5W/MMW2zl2/R3zifynzS.1XAX6w92GwNW/jJ2d/vHN8enAmtDbva', 0, 'moha', 'nour', '', '', '', 1, 'R37kPAKG8Z5J', '', '2021-12-01'),
(22, 'joy@gmail.com', '$2y$10$VMD.bl0fRQfVyd/SjJp7A.DNRPj1fPLC8vIR2TYRf0a2onx7wMrQq', 0, 'fitah', 'abd', '', '', '', 1, '5nJzae2gliLm', '', '2021-12-01'),
(23, 'adeshroble51@gmail.com', '$2y$10$NOqnhOU1tkYNjTSATfCP1uyvAngGaW86sWVk3sso05Y6hS5TEe4aC', 0, 'hawk', 'hawke', '', '', '', 1, 'j3iRfy9Uo74b', '', '2022-05-10'),
(24, 'test1@gmail.com', '$2y$10$mJhVHCsK6/yzTiIwtvLbrudUtNfkbVEIgitxKeocRmFMGJLjo3YJ6', 0, 'test1', 'test', '', '', '', 1, 'K6oEglJLYGId', '', '2022-07-17'),
(25, 'abdalla@gmail.com', '$2y$10$b7qlNW/MUChl5cpnLQQpc.O3u/.mFtid80TW0HBO59kanwOe35ad6', 0, 'abdalla', 'abdalla', '', '', '', 1, 'XSyDBvTL1gJw', '', '2022-11-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
