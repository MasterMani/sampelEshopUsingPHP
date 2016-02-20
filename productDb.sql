-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2015 at 04:30 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `productDb`
--

CREATE TABLE IF NOT EXISTS `productDb` (
  `sku` varchar(10) NOT NULL,
  `mCat` varchar(25) NOT NULL,
  `mCatId` varchar(20) NOT NULL,
  `sCat` varchar(25) NOT NULL,
  `sCatId` varchar(20) NOT NULL,
  `title` mediumtext NOT NULL,
  `brand` varchar(100) NOT NULL,
  `brandId` varchar(100) NOT NULL,
  `imageUrl` varchar(300) NOT NULL,
  `sPrice` varchar(50) NOT NULL,
  `lPrice` varchar(50) NOT NULL,
  `descriptionText` longtext NOT NULL,
  `uniId` int(15) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productDb`
--

INSERT INTO `productDb` (`sku`, `mCat`, `mCatId`, `sCat`, `sCatId`, `title`, `brand`, `brandId`, `imageUrl`, `sPrice`, `lPrice`, `descriptionText`, `uniId`) VALUES
('231-100', 'Household Appliances', '123100', 'Washing machines', '100', 'WAE28462GB Washing Machine - White', 'BOSCH', '00123100-Brand-100', 'http://brain-images.cdn.dixons.com/4/1/10126314/u_10126314.jpg', '£299.00', '', 'Tackle your household''s laundry with ease when you use the Bosch WAE28462GB Washing Machine.Quick and easy cleaningPre-programmed with 15 different programs, you''ll find that this washing machine can', 4),
('00123100-1', 'Household Appliances', '123100', 'Washing machines', '100', 'WAE28462GB Washing Machine - White', 'BOSCH', '00123100-Brand-100', 'http://brain-images.cdn.dixons.com/4/1/10126314/u_10126314.jpg', '£299.00', '', 'Tackle your household''s laundry with ease when you use the Bosch WAE28462GB Washing Machine.Quick and easy cleaningPre-programmed with 15 different programs, you''ll find that this washing machine can \n', 5),
('102-100', 'Computing Accessories', ' 102', 'Tablet accessories', '100', 'Surface Pro 3 to VGA CableSurface Pro 3 to VGA Cable', 'MICROSOFT', '102-Brand-100', 'http://brain-images.cdn.dixons.com/8/4/10109148/u_10109148.jpg', '£34.99', '', 'Connect to your monitor or any other VGA compatible device and share the photos, videos and experiences stored on your Surface Pro 3.With the Surface Pro 3 to VGA Cable it is simple to show your frien', 23),
('101-100', 'Cameras and camcorders', ' 101', 'Lenses', '100', 'Fujinon XF 18 mm f/2 R Wide-Angle LensFujifilmFujinon XF-18mm f/2 R for  X-Pro1', 'FUJIFILM', '101-Brand-100', 'http://brain-images.cdn.dixons.com/9/1/12448419/u_12448419.jpg', '£245.00', '', 'The Fuji Fujinon XF 18 mm f2 R Wide-Angle Lens has a sleek, compact and lightweight ‘pancake'' design.Compact creativityThe XF 18mm lens is built with glass-mold aspheric that is effective in increasin', 24),
('101-101', 'Cameras and camcorders', ' 101', 'Lenses', '101', 'AF-S DX NIKKOR 55-300 mm f/4.5-5.6G SWM ED VR Telephoto Zoom LensNikon AF-S DX NIKKOR 55-300 mm f/4.5-5.6G VR Telephoto Zoom Lens', 'NIKON', '101-Brand-101', 'http://brain-images.cdn.dixons.com/1/4/07908141/u_07908141.jpg', '£225.00', '', 'The Nikon AF-S DX NIKKOR 55-300 mm f/4.5-5.6G VR Telephoto Zoom Lens opens a whole new world to your photography capabilities.  Shoot even further  The high-powered Nikon zoom lens is built to shoot s', 25),
('102-101', 'Computing Accessories', ' 102', 'Tablet accessories', '101', 'Surface 3 Pen – BlackSurface 3 Pen - Black', 'MICROSOFT', '102-Brand-101', 'http://brain-images.cdn.dixons.com/1/3/10128731/u_10128731.jpg', '£44.99', '', 'With a genuine pen-like feel, you can write and navigated accurately with the Surface 3 Stylus Pen from Microsoft.  Authentic pen-like feel  Let your creativity run wild with the Surface 3 Pen which -', 26),
('100-100', 'Household Appliances', ' 100', 'Washing machines', '100', 'WAE28462GB Washing Machine - White', 'BOSCH', '100-Brand-100', 'http://brain-images.cdn.dixons.com/4/1/10126314/u_10126314.jpg', '£299.00', '', 'Tackle your household''s laundry with ease when you use the Bosch WAE28462GB Washing Machine.Quick and easy cleaningPre-programmed with 15 different programs, you''ll find that this washing machine can ', 27),
('102-103', 'Computing Accessories', ' 102', 'Tablet accessories', '103', 'Type+ Keyboard Folio iPad Air Case - BlackType+ Keyboard Folio iPad Air Case - Black', 'LOGITECH', '102-Brand-103', 'http://brain-images.cdn.dixons.com/8/5/10100558/u_10100558.jpg', '£79.99', '', 'When carrying your iPad Air from A-to-B, the Logitech Type+ Keyboard Folio iPad Air Case keeps it protected whilst incorporating a variety of features that help you to get the most out of your iPad.Wh', 28),
('102-102', 'Computing Accessories', ' 102', 'Tablet accessories', '102', 'Type+ Keyboard Folio iPad Air Case - BlackType+ Keyboard Folio iPad Air Case - Black', 'LOGITECH', '102-Brand-102', 'http://brain-images.cdn.dixons.com/8/5/10100558/u_10100558.jpg', '£79.99', '', 'When carrying your iPad Air from A-to-B, the Logitech Type+ Keyboard Folio iPad Air Case keeps it protected whilst incorporating a variety of features that help you to get the most out of your iPad.Wh', 29),
('100-101', 'Household Appliances', ' 100', 'Washing machines', '101', 'ZWF81441W Washing Machine - WhiteZWF81441W Washing Machine - White', 'ZANUSSI', '100-Brand-101', 'http://brain-images.cdn.dixons.com/0/9/10126890/u_10126890.jpg', '£229.00', '', 'Wash quickly and efficiently with the Zanussi ZWF81441W Washing Machine which features a quick wash function and has been awarded an A+++ energy rating.Efficient washingThe ZWF81441W features an 8 kg ', 30),
('103-100', 'Household Appliances', ' 103', 'Microwaves', '100', 'K25MSS11 Solo Microwave - Black & Stainless SteelKenwood K25MSS11', 'KENWOOD', '103-Brand-100', 'http://brain-images.cdn.dixons.com/5/0/07677905/u_07677905.jpg', '£69.99', '', 'Offering versatile and convenient cooking power at an attractive price, this stylish Kenwood K25MSS11 Solo Microwave will take the stress out of a busy lifestyle.The Kenwood K25MSS11 Microwave deliver', 31),
('103-103', 'Household Appliances', ' 103', 'Microwaves', '103', 'K23CM13 Combination Microwave - Mirror FinishKenwood K23CM13', 'KENWOOD', '103-Brand-103', 'http://brain-images.cdn.dixons.com/3/5/19394353/l_19394353.jpg', '£79.99', '', 'Packed full of features the stylish Kenwood K23CM13 Combination Microwave is a versatile addition to any kitchen with a silver case and mirror-finish door. Flexible CookingBoasting a 23 litre capacity', 32),
('103-104', 'Household Appliances', ' 103', 'Microwaves', '104', 'NN-CT555WBPQ Combination Microwave - WhiteNN-CT555WBPQ Combination Microwave - White', 'PANASONIC', '103-Brand-104', 'http://brain-images.cdn.dixons.com/1/1/10127511/u_10127511.jpg', '£189.99', '', 'Enjoy large capacity cooking with fast and reliable results with the convenient Panasonic NN-CT555WBPQ Combination Microwave. Comprising of a microwave, grill and convection oven, which can be used in', 33),
('103-102', 'Household Appliances', ' 103', 'Microwaves', '102', 'K25MB14 Solo Microwave - BlackKENWOOD K25MB14 Solo Microwave - Black', 'KENWOOD', '103-Brand-102', 'http://brain-images.cdn.dixons.com/2/7/21780572/u_21780572.jpg', '£64.99', '', 'Heat up your meals quickly with the 900 W Kenwood K25MB14 Solo Microwave in black.Good-sized microwaveThere are 25 litres of room in the K25MB14, giving you ample space to prepare your meals. The glas', 34),
('103-105', 'Household Appliances', ' 103', 'Microwaves', '105', 'NN-CT555WBPQ Combination Microwave - WhiteNN-CT555WBPQ Combination Microwave - White', 'PANASONIC', '103-Brand-105', 'http://brain-images.cdn.dixons.com/1/1/10127511/u_10127511.jpg', '£189.99', '', 'Enjoy large capacity cooking with fast and reliable results with the convenient Panasonic NN-CT555WBPQ Combination Microwave. Comprising of a microwave, grill and convection oven, which can be used in', 35),
('103-101', 'Household Appliances', ' 103', 'Microwaves', '101', 'L20GS14 Microwave with Grill - SilverLOGIK L20GS14 Microwave with Grill - Silver', 'LOGIK', '103-Brand-101', 'http://brain-images.cdn.dixons.com/7/9/21729397/u_21729397.jpg', '£44.99', '', 'Enjoy quick and simple cooking with the Logik L20GS14 Microwave with Grill which offers a 20-litre capacity and auto cook programmes that make preparing meals a breeze.  Choose from the 800 W microwav', 36),
('103-106', 'Household Appliances', ' 103', 'Microwaves', '106', 'CMG656BS1B Built-in Combination Microwave - Stainless Steel', 'BOSCH', '103-Brand-106', 'http://brain-images.cdn.dixons.com/2/2/10135922/u_10135922.jpg', '£599.00', '', 'Combining oven, microwave and grilling technology; this stainless steel Bosch CMG656BS1B Combination Microwave offers quick impressive cooking results so your meals can be cooked to perfection in a ma', 37),
('103-107', 'Household Appliances', ' 103', 'Microwaves', '107', 'MCD2664E-M Built-in Microwave with Grill - Stainless SteelAEG MCD2664E-M Built-in Microwave with Grill - Stainless Steel', 'AEG', '103-Brand-107', 'http://brain-images.cdn.dixons.com/5/2/17259625/u_17259625.jpg', '£393.00', '', 'The AEG MCD2664E-M Built-in Microwave with Grill gives you amazing cooking convenience while beautifully complementing your kitchen with its flush fitting design.Powerful cooking flexibilityWith 900 W', 38),
('103-108', 'Household Appliances', ' 103', 'Microwaves', '108', 'RHM3003 Combination Microwave - White', 'RUSSELL HOBBS', '103-Brand-108', 'http://brain-images.cdn.dixons.com/2/1/10127512/u_10127512.jpg', '£104.00', '', 'Complete your kitchen with the spacious Russell Hobbs RHM3003 Combination Microwave, with multiple cooking functions and a stylish mirror finish.  Power  With a capacity of 30 litres, a max temperatur', 39);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productDb`
--
ALTER TABLE `productDb`
  ADD UNIQUE KEY `Unq` (`uniId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productDb`
--
ALTER TABLE `productDb`
  MODIFY `uniId` int(15) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
