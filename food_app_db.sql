-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 10:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `facilitie`
--

CREATE TABLE `facilitie` (
  `fid` int(11) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `textfield` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilitie`
--

INSERT INTO `facilitie` (`fid`, `rid`, `textfield`) VALUES
(1, 1, 'home delivery'),
(2, 1, 'cash on delivery'),
(3, 1, 'ac and non ac cafe'),
(4, 5, 'cash on delivery'),
(5, 5, ''),
(6, 5, ''),
(7, 5, ''),
(8, 2, ''),
(9, 2, ''),
(10, 0, 'cash on delivery\nAc\nvirali\nkavita'),
(11, 2, 'cash on delivery\nAC available\nfamily tables');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_name`, `password`) VALUES
('kavita', 'kavita123'),
('kavya', 'kavya123');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `imgid` int(11) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `tagname` varchar(50) NOT NULL,
  `datetime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`imgid`, `rid`, `image`, `tagname`, `datetime`) VALUES
(1, 1, 'menu_image/gpizza.jpeg', 'menu', '2024-03-06 12:28:50.000000'),
(2, 1, 'menu_image/oar2.jpg', 'all photos', '2024-03-06 12:42:21.000000'),
(3, 1, 'menu_image/menu1.png', 'Special Menu', '2024-03-18 08:34:05.000000'),
(4, 2, 'menu_image/menu1.png', 'Special Menu', '2024-03-19 19:49:02.000000');

-- --------------------------------------------------------

--
-- Table structure for table `orderfood`
--

CREATE TABLE `orderfood` (
  `oid` int(4) NOT NULL,
  `uid` int(4) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `pid` int(4) NOT NULL DEFAULT 0,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `amount` int(4) NOT NULL DEFAULT 0,
  `discount` int(6) NOT NULL DEFAULT 0,
  `totalamount` int(4) NOT NULL DEFAULT 0,
  `orderstatus` tinyint(1) NOT NULL DEFAULT 0,
  `oredrdatetime` datetime NOT NULL DEFAULT current_timestamp(),
  `ordercompletetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderfood`
--

INSERT INTO `orderfood` (`oid`, `uid`, `rid`, `pid`, `quantity`, `amount`, `discount`, `totalamount`, `orderstatus`, `oredrdatetime`, `ordercompletetime`) VALUES
(1, 5, 1, 9, 1, 600, 0, 600, 2, '2024-03-31 19:01:52', '2024-03-31 19:38:28'),
(2, 5, 1, 10, 1, 450, 0, 450, 1, '2024-03-31 20:04:15', '2024-03-31 20:06:33'),
(3, 5, 1, 9, 1, 600, 0, 600, 0, '2024-03-31 20:12:02', NULL),
(4, 5, 3, 36, 1, 1100, 0, 1100, 0, '2024-03-31 20:12:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `imgid` int(11) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `tagname` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`imgid`, `rid`, `image`, `tagname`, `datetime`) VALUES
(1, 1, 'menu_image/oar2.jpg', 'all photos', '2024-03-06 12:43:13'),
(2, 9, 'menu_image/smosa.jpeg', 'All Photos', '2024-03-18 08:48:00'),
(3, 9, 'menu_image/t8.jpeg', 'All Photos', '2024-03-18 08:48:29'),
(4, 2, 'menu_image/d7.jpeg', 'All photos', '2024-03-19 19:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `pname` varchar(50) NOT NULL,
  `ptype` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` int(4) NOT NULL DEFAULT 0,
  `pimage` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `cookingtime` varchar(10) NOT NULL DEFAULT '00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `rid`, `pname`, `ptype`, `category`, `price`, `pimage`, `datetime`, `cookingtime`) VALUES
(0, 1, 'Gulab Jambu', 'Non suger free', 'pure veg', 200, 'images/sweet5.jpeg', '2024-03-15 17:42:35', '55 mi'),
(1, 1, 'Strawberry cake', 'Suger Free', 'Pure veg', 450, 'images/sweet1.jpeg', '2024-03-15 17:37:13', '2 hou'),
(2, 1, 'Chocolate cake', 'Suger Free', 'Pure veg', 550, 'images/sweet2.jpeg', '2024-03-15 17:38:46', '2 hou'),
(3, 1, 'Kaju Katri', 'suger ', 'Pure veg', 1000, 'images/sweet3.jpeg', '2024-03-15 17:39:31', '1 hou'),
(4, 1, 'Gajar Halwa', 'Non suger free', 'mixed', 320, 'images/sweet4.jpg', '2024-03-15 17:41:46', '40 mi'),
(6, 1, 'Moti chur laddu', 'suger free', 'pure veg', 1000, 'images/sweet6.jpeg', '2024-03-15 17:43:39', '75 mi'),
(7, 1, 'Special indian sweets', 'suger free', 'pure veg', 500, 'images/sweet7.jpeg', '2024-03-15 17:44:38', '1 hou'),
(8, 1, 'Khajur sweets', 'Non suger free', 'pure veg', 700, 'images/sweet8.jpeg', '2024-03-15 17:45:21', '2 hou'),
(9, 1, 'Kalakand', 'suger free', 'pure veg', 600, 'images/sweet9.jpeg', '2024-03-15 17:46:14', '80 mi'),
(10, 1, 'Ras Malay', 'Non suger free', 'pure veg', 450, 'images/sweet10.jpeg', '2024-03-15 17:46:40', '70 mi'),
(18, 2, 'Pani puri', 'chilli puri', 'pure veg', 80, 'images/panipuri.jpeg', '2024-03-16 14:40:23', '30 mi'),
(19, 2, 'French Fries', 'West indian', 'Non veg', 120, 'images/fries.jpeg', '2024-03-16 14:41:20', '25 mi'),
(20, 2, 'Khasta kachori', 'SOuth indian', ' veg', 150, 'images/khastakachori.jpeg', '2024-03-16 14:42:04', '50 mi'),
(21, 2, 'Kachori', 'south indian', ' Non veg', 100, 'images/kachori.jpeg', '2024-03-16 14:42:46', '45 mi'),
(22, 2, 'Dabeli', 'North indian', 'veg', 70, 'images/dabeli.jpeg', '2024-03-16 14:45:59', '30 minutes'),
(23, 2, 'Bateka vada', 'South indian', 'veg', 80, 'images/batekavada.jpeg', '2024-03-16 14:46:49', '30 minutes'),
(24, 2, 'Pakoda', 'South indian', 'mixed', 110, 'images/panir.jpeg', '2024-03-16 15:01:39', '35 minutes'),
(25, 2, 'Panir Pakoda', 'South indian', 'pure veg', 150, 'images/panirpakoda.jpeg', '2024-03-16 15:02:33', '45 minutes'),
(26, 2, 'Panir Vada Pav', 'South indian', 'pure veg', 150, 'images/v2.jpeg', '2024-03-16 15:06:19', '45 minutes'),
(27, 2, 'Vada Pav', 'South indian', 'Mixed', 110, 'images/v1.jpeg', '2024-03-16 15:06:48', '35 minutes'),
(28, 3, 'Churama laddu', 'South Indian', 'Pure Veg', 550, 'images/giranar1.jpeg', '2024-03-17 07:50:52', '80 minutes'),
(29, 3, 'Aalu matar sabji and roti', 'North Indian', 'Pure Veg', 220, 'images/giranar.jpeg', '2024-03-17 07:54:09', '60 minutes'),
(30, 3, 'Panir Parotha', 'North Indian', 'Mixed', 450, 'images/giranar3.jpeg', '2024-03-17 07:55:11', '65 minutes'),
(31, 3, 'Aalu Parotha', 'North Indian', 'Pure veg', 150, 'images/girnar4.jpeg', '2024-03-17 07:55:57', '30 minutes'),
(32, 3, 'Pasta', 'West Indian', 'mixed', 110, 'images/giranar5.jpeg', '2024-03-17 07:56:36', '25 minutes'),
(33, 3, 'Giranar special full dish', 'North Indian', 'Pure veg', 1000, 'images/giranar6.jpeg', '2024-03-17 07:57:23', '90 minutes'),
(34, 3, 'Dahi puri', 'South Indian', 'Non veg', 200, 'images/giranar7.jpeg', '2024-03-17 07:58:09', '20 minutes'),
(35, 3, 'Tamatto sabji and puri', 'North Indian', 'Non veg', 190, 'images/giranar8.jpeg', '2024-03-17 07:59:08', '25 minutes'),
(36, 3, 'Gujarati thali', 'North Indian', 'Pure veg', 1100, 'images/giranar9.jpeg', '2024-03-17 07:59:51', '90 minutes'),
(37, 3, 'Tadaka dal jira rice', 'North Indian', 'mixed', 500, 'images/giranar10.jpg', '2024-03-17 08:00:27', '60 minutes'),
(38, 4, 'Regular burger', 'west indian', 'pure veg', 100, 'images/b1.jpeg', '2024-03-17 09:48:44', '20 minutes'),
(39, 4, 'Chese burger', 'North indian', 'pure veg', 130, 'images/b2.jpeg', '2024-03-17 09:49:19', '30 minutes'),
(40, 4, 'Maionese burger', 'South indian', 'Mixed', 140, 'images/bmaionese3.jpeg', '2024-03-17 09:50:05', '35 minutes'),
(41, 4, 'Aalu Tikki burger', 'South indian', 'Pure veg', 180, 'images/baalutikki4.jpeg', '2024-03-17 09:50:58', '45 minutes'),
(42, 4, 'Veg Regular burger', 'South indian', 'Pure veg', 140, 'images/bveg5.jpeg', '2024-03-17 09:51:47', '25 minutes'),
(43, 4, 'Chicken burger', 'South indian', 'Non veg', 240, 'images/bchicken6.jpeg', '2024-03-17 09:52:42', '45 minutes'),
(44, 4, 'Speciality burger', 'North indian', 'Non veg', 150, 'images/bspeciality7.jpeg', '2024-03-17 09:53:26', '40 minutes'),
(45, 4, 'Bacon burger', 'North indian', 'Mixed', 120, 'images/bacon8.jpeg', '2024-03-17 09:54:29', '50 minutes'),
(46, 4, 'Burger with French Fries', 'West indian', 'Non veg', 170, 'images/bfrench.jpeg', '2024-03-17 09:55:50', '60 minutes'),
(47, 4, 'French Fries', 'West indian', 'Pure veg', 110, 'images/b10.jpeg', '2024-03-17 09:56:22', '30 minutes'),
(48, 5, 'Manchurian', 'West indian', 'Mixed', 140, 'images/r1.jpeg', '2024-03-17 10:14:53', '45 minutes'),
(49, 5, 'Manchurian Noodles ', 'West indian', 'Non veg', 220, 'images/noodles.jpeg', '2024-03-17 10:16:03', '65 minutes'),
(50, 5, 'Hakka Noodles ', 'North indian', ' Mixed', 190, 'images/hakka3.jpeg', '2024-03-17 10:17:43', '20 minutes'),
(51, 5, 'Maggie', 'South indian', ' Mixed', 95, 'images/maggie3.jpeg', '2024-03-17 10:18:21', '15 minutes'),
(52, 5, 'Chienese', 'North indian', ' Mixed', 105, 'images/chinese5.jpeg', '2024-03-17 10:19:27', '25 minutes'),
(53, 5, 'Cheese Pizza', 'South indian', ' Pure veg', 150, 'images/chese6.jpeg', '2024-03-17 10:20:48', '25 minutes'),
(54, 5, 'Veggie Pizza', 'South indian', ' Non veg', 180, 'images/veggie7.jpeg', '2024-03-17 10:21:14', '35 minutes'),
(55, 5, 'Regular Pizza', 'South indian', ' Pure veg', 170, 'images/regular8.jpeg', '2024-03-17 10:21:55', '25 minutes'),
(56, 5, 'White sos pasta', 'North indian', ' Pure veg', 120, 'images/r9.jpeg', '2024-03-17 10:22:39', '25 minutes'),
(57, 5, 'Stri Fry pasta', 'West indian', 'Mixed', 100, 'images/strifry10.jpeg', '2024-03-17 10:23:15', '20 minutes'),
(58, 6, 'Momos', 'West Indian', 'Pure veg', 400, 'images/t1.jpeg', '2024-03-17 11:02:28', '40 minutes'),
(59, 6, 'Chinese Noodles', 'North Indian', 'Non veg', 200, 'images/t2.jpeg', '2024-03-17 11:06:16', '20 minutes'),
(60, 6, 'Hakka Noodles', 'South Idian', 'Non veg', 250, 'images/t3.jpg', '2024-03-17 11:28:12', '18 minutes'),
(61, 6, 'Fruite Cake', 'North Idian', 'Mixed', 600, 'images/t4.jpeg', '2024-03-17 11:28:56', '20 minutes'),
(62, 6, 'Fruite Cake', 'North Idian', 'Mixed', 600, 'images/t4.jpeg', '2024-03-17 11:30:41', '40 minutes'),
(63, 6, 'Chinese rice', 'South Idian', 'Mixed', 250, 'images/t4.png', '2024-03-17 11:31:27', '25 minutes'),
(64, 6, 'Chinese bhel', 'South Idian', 'Mixed', 350, 'images/t5jpeg.jpeg', '2024-03-17 11:32:45', '30 minutes'),
(65, 6, 'Crispy Chinese bhel', 'North Idian', 'Mixed', 300, 'images/crispychinesebhel6.jpeg', '2024-03-17 11:33:15', '30 minutes'),
(66, 6, 'French Frise', 'North Idian', 'Pure veg', 100, 'images/t7.jpeg', '2024-03-17 11:33:45', '15 minutes'),
(67, 6, 'Sandwich', 'South Idian', 'Non veg', 140, 'images/t8.jpeg', '2024-03-17 11:36:04', '20 minutes'),
(68, 6, 'Trishiv special', 'North Idian', 'Mixed', 450, 'images/t9.jpeg', '2024-03-17 11:37:35', '50 minutes'),
(69, 6, 'Kitu Burger', 'North Idian', 'Mixed', 300, 'images/t10.jpeg', '2024-03-17 11:38:09', '30 minutes'),
(70, 7, 'MCD special', 'North Indian', 'Pure veg', 500, 'images/m1.jpeg', '2024-03-17 12:01:37', '2 hour'),
(71, 7, 'French Fries', 'South Indian', 'Pure veg', 100, 'images/m2.jpeg', '2024-03-17 12:02:20', '10 minutes'),
(72, 7, 'Chese Burger', 'South Indian', 'Mixed', 200, 'images/m3.jpeg', '2024-03-17 12:03:58', '20 minutes'),
(73, 7, 'Aalu Tikkie Burger', 'South Indian', 'Mixed', 250, 'images/aalutikkie4.jpeg', '2024-03-17 12:04:29', '20 minutes'),
(74, 7, 'Regular Burger', 'North Indian', 'Pure veg', 130, 'images/reular5.jpeg', '2024-03-17 12:05:06', '15 minutes'),
(75, 7, 'Chese French Frise', 'South Indian', 'Mixed', 110, 'images/m6.jpeg', '2024-03-17 12:06:04', '15 minutes'),
(76, 7, 'Mocktail', 'West Indian', 'Pure Veg', 70, 'images/moktel.jpg', '2024-03-17 12:07:19', '10 minutes'),
(77, 7, 'Cold Coffee', 'South Indian', 'Pure Veg', 80, 'images/m8.jpeg', '2024-03-17 12:22:36', '10 minutes'),
(78, 7, 'Hot Coffee', 'South Indian', 'Pure Veg', 85, 'images/m9.jpeg', '2024-03-17 12:22:56', '10 minutes'),
(79, 7, 'Cold coco', 'South Indian', 'Pure Veg', 100, 'images/m10.jpeg', '2024-03-17 12:23:30', '10 minutes'),
(80, 8, 'Regular pizza', 'North Indian', 'Pure veg', 169, 'images/l1.jpeg', '2024-03-17 12:36:18', '20 minutes'),
(81, 8, 'Chesee pizza', 'North Indian', 'Mixed', 180, 'images/chese2.jpg', '2024-03-17 12:36:55', '22 minutes'),
(82, 8, 'Giant pizza', 'South Indian', 'Mixed', 185, 'images/giant3.jpeg', '2024-03-17 12:37:48', '23 minutes'),
(83, 8, 'Monster pizza', 'South Indian', 'Mixed', 190, 'images/monstar.jpeg', '2024-03-17 12:38:22', '50 minutes'),
(84, 8, 'Non veg pizza', 'South Indian', 'Non veg', 180, 'images/nonveg5.jpeg', '2024-03-17 12:39:02', '20 minutes'),
(85, 8, 'Onion twist pizza', 'North Indian', 'Mixed', 190, 'images/oniontwist6.jpeg', '2024-03-17 12:39:51', '25 minutes'),
(86, 8, 'Margheta pizza', 'North Indian', 'Pure veg', 200, 'images/margheta7.jpeg', '2024-03-17 12:40:24', '30 minutes'),
(87, 8, 'Garden Delight pizza', 'South Indian', 'Non veg', 250, 'images/gardendelight8.jpeg', '2024-03-17 12:41:15', '30 minutes'),
(88, 8, 'Spring Fling pizza', 'West Indian', 'Non veg', 220, 'images/springfling9.jpeg', '2024-03-17 12:42:06', '25 minutes'),
(89, 8, 'Farm villa pizza', 'West Indian', 'Pure veg', 250, 'images/farmvilla10.jpeg', '2024-03-17 12:42:42', '30 minutes'),
(90, 9, 'Angur rabadi', 'South Indian', 'Pure veg', 320, 'images/angurrabadi1.jpeg', '2024-03-17 13:08:34', '19 minutes'),
(91, 9, 'Dry fruit rabadi', 'North Indian', 'Pure veg', 320, 'images/dryfruite2.jpeg', '2024-03-17 13:09:21', '23 minutes'),
(92, 9, 'Rahbhog ', 'South Indian', 'Pure veg', 50, 'images/rajbhog3.jpeg', '2024-03-17 13:10:08', '12 minutes'),
(93, 9, 'Salama Paak ', 'South Indian', 'Pure veg', 80, 'images/salamapak4.jpeg', '2024-03-17 13:10:50', '14 minutes'),
(94, 9, 'Mal Puda ', 'North Indian', 'Pure veg', 30, 'images/malpuda5.jpeg', '2024-03-17 13:12:09', '10 minutes'),
(95, 9, 'Chocolate kulfi', 'North Indian', 'Pure veg', 30, 'images/chocolatekulfi6.jpeg', '2024-03-17 13:13:19', '10 minutes'),
(96, 9, 'Roj kulfi', 'North Indian', 'Pure veg', 35, 'images/roj7.jpeg', '2024-03-17 13:15:17', '11 minutes'),
(97, 9, 'Roj Fruit kulfi', 'North Indian', 'Pure veg', 40, 'images/dryfruite8.jpeg', '2024-03-17 13:16:06', '11 minutes'),
(98, 9, 'Veg Frankie', 'South Indian', 'Pure veg', 30, 'images/vegjpeg.jpeg', '2024-03-17 13:17:27', '9 minutes'),
(99, 9, 'Schezwan Frankie', 'West Indian', 'Mixed', 35, 'images/schezwan.jpeg', '2024-03-17 13:18:08', '9 minutes'),
(100, 9, 'Cheese Frankie', 'West Indian', 'Mixed', 40, 'images/cheese.jpeg', '2024-03-17 13:18:36', '8 minutes'),
(101, 9, 'Mayonnaise Frankie', 'West Indian', 'Mixed', 45, 'images/mayonnaise.jpeg', '2024-03-17 13:19:19', '9 minutes'),
(102, 9, 'Samosa', 'South Indian', 'Pure veg', 60, 'images/smosa.jpeg', '2024-03-17 13:20:01', '14 minutes'),
(103, 9, 'Dhosa', 'South Indian', 'Mixed', 110, 'images/dhosa.jpeg', '2024-03-17 13:20:45', '15 minutes'),
(104, 9, 'Masala Dhosa', 'north Indian', 'Mixed', 130, 'images/masala.jpeg', '2024-03-17 13:21:18', '15 minutes'),
(105, 9, 'Maysur Dhosa', 'north Indian', 'Mixed', 135, 'images/maysur.jpeg', '2024-03-17 13:22:15', '17 minutes'),
(106, 9, 'Palakh Panir Dhosa', 'north Indian', 'Pure veg', 135, 'images/palakh.jpeg', '2024-03-17 13:22:57', '17 minutes'),
(107, 9, 'Dahi vada', 'South Indian', 'Pure veg', 55, 'images/dahi vada.jpeg', '2024-03-17 13:23:30', '10 minutes'),
(108, 10, 'Tortill Roll', 'South indian', 'pure veg', 399, 'images/d1.jpeg', '2024-03-17 13:37:59', '20 minutes'),
(109, 10, 'Saute Vegetables', 'North indian', 'Pure veg', 300, 'images/d2.jpeg', '2024-03-17 13:39:12', '15 minutes'),
(110, 10, 'Chinmayi Vegetables', 'South indian', 'Pure veg', 320, 'images/d3.jpeg', '2024-03-17 13:40:10', '13 minutes'),
(111, 10, 'Crispy Vegetables Salt & Pepper', 'West indian', 'Pure veg', 300, 'images/d4.jpeg', '2024-03-17 13:43:20', '13 minutes'),
(112, 10, 'Bruschetta - 8 pcs', 'West indian', 'Pure veg', 340, 'images/d3.jpeg', '2024-03-17 13:44:58', '15 minutes'),
(113, 10, 'Paneer Chilli', 'South indian', 'Pure veg', 360, 'images/d5.jpeg', '2024-03-17 13:46:52', '20 minutes'),
(114, 10, 'Manchurian', 'West indian', 'Pure veg', 250, 'images/d6.jpeg', '2024-03-17 13:47:30', '15 minutes'),
(115, 10, 'Spring Roll', 'South indian', 'Pure veg', 280, 'images/d7.jpeg', '2024-03-17 13:48:04', '20 minutes'),
(116, 10, 'Crispy Veg', 'North indian', 'Pure veg', 300, 'images/d8.jpeg', '2024-03-17 13:48:43', '18 minutes'),
(117, 10, 'Crispy Veg', 'North indian', 'Pure veg', 300, 'images/d8.jpeg', '2024-03-17 13:48:44', '18 minutes'),
(118, 10, 'Garlic Bread - 8 pcs', 'South indian', 'Pure veg', 260, 'images/d9.jpeg', '2024-03-17 13:49:47', '22 minutes'),
(119, 10, 'Garlic Bread - 8 pcs', 'South indian', 'Pure veg', 260, 'images/d9.jpeg', '2024-03-17 13:49:47', '22 minutes'),
(120, 10, 'Cheese Garlic Bread - 8 pcs', 'South indian', 'Pure veg', 299, 'images/d10.jpeg', '2024-03-17 13:50:14', '25 minutes');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `resid` int(11) NOT NULL,
  `res_user_name` varchar(50) NOT NULL,
  `res_password` varchar(20) NOT NULL,
  `resname` varchar(50) NOT NULL,
  `resaddress` varchar(255) NOT NULL,
  `opentime` varchar(5) NOT NULL DEFAULT '00:00',
  `closetime` varchar(5) NOT NULL DEFAULT '00:00',
  `resimage` varchar(255) NOT NULL,
  `resphone` varchar(10) NOT NULL,
  `banerimage` varchar(255) NOT NULL,
  `minamount` varchar(4) NOT NULL DEFAULT '0',
  `foodcategory` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`resid`, `res_user_name`, `res_password`, `resname`, `resaddress`, `opentime`, `closetime`, `resimage`, `resphone`, `banerimage`, `minamount`, `foodcategory`, `datetime`) VALUES
(1, 'Mitesh Sharma', 'sharma123', 'Bhagwati Sweet', 'Katargam,surat', '08:00', '11:00', 'images/menu1.png', '7778945680', '', '1000', 'Pure veg', '2024-03-15 17:06:27'),
(2, 'Dhruv Shah', '123456', 'Vaishali Vadapav ', 'Shop No.5,katargam,jamnagar', '10:00', '12:71', 'images/vaishalivadapav.png', '9632587485', '', '1000', 'Pure veg', '2024-03-15 17:20:25'),
(3, 'Mehul maheta', 'mehta123456', 'Girnar', 'Kamrej char rasta,surat', '00:00', '00:00', 'images/giranar.jpg', '9874563217', '', '0', '', '2024-03-15 17:23:00'),
(4, 'Fenil gohil', '123789', 'Burgill', 'Vanita vishram,athawaget,surat', '00:00', '00:00', 'images/burgill.jpg', '8956237412', '', '0', '', '2024-03-15 17:24:37'),
(5, 'Jay modi', 'modi123', 'Real Peparika', 'Shop No.22,Avalon,Gajera,katagam,surat', '00:00', '00:00', 'images/realpeprika.jpeg', '6639857412', '', '0', '', '2024-03-15 17:26:04'),
(6, 'Anil Desay', 'desay456', 'Trishiv', 'Shop No.40,Zolly Plaza,Vanita,Athawaget,surat', '00:00', '00:00', 'images/trishiv.jpg', '9685741230', '', '0', '', '2024-03-15 17:27:55'),
(7, 'Ashok shah', '123456', 'McDonald’s', 'Adajan char rsta,surat', '07:00', '11:00', 'images/mcd.jpg', '8524719634', '', '800 ', 'Buffert', '2024-03-15 17:30:17'),
(8, 'Tejas mithaiwala', '789456', 'LaPinoz Pizza', 'Adajan City lite road,,surat', '00:00', '00:00', '', '7412589630', '', '0', '', '2024-03-15 17:31:37'),
(9, 'Darshan Thakkar', '321654', 'Kailash', 'vanita vishram,Athawaget,surat', '08:00', '11:00', 'images/testofbhagvati.jpg', '6932580147', '', '1000', 'Pure veg', '2024-03-15 17:33:03'),
(10, 'Ketan Thakkar', '987654', 'Dream Festiva', 'Adajan,surat', '00:00', '00:00', '', '9632587410', '', '0', '', '2024-03-15 17:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `revid` int(4) NOT NULL,
  `uid` int(4) NOT NULL DEFAULT 0,
  `rid` int(4) NOT NULL DEFAULT 0,
  `rating` int(10) NOT NULL,
  `review` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`revid`, `uid`, `rid`, `rating`, `review`, `datetime`) VALUES
(1, 1, 1, 5, 'Your restaurant is very flexible and customer frie', '2024-03-06 14:12:10'),
(2, 1, 2, 4, 'your restaurant is provide all category food', '2024-03-06 14:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `uphone` int(10) NOT NULL,
  `uaddress` varchar(50) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `uadddatetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `uaddress`, `pwd`, `uadddatetime`) VALUES
(1, 'kavya', 'kavya@gmail.com', 2147483647, 'haripura,surat', '', '2024-03-06 12:58:26'),
(2, 'kirti', 'kavya@gmail.com', 2147483647, 'haripura,surat', '', '2024-03-26 10:05:38'),
(3, 'kirti', 'kavya@gmail.com', 2147483647, 'haripura,surat', '123456', '2024-03-26 13:22:09'),
(4, 'Pankaj Maheta', 'pankaj108@gmail.com', 2147483647, 'kataragam,surat', '12345678', '2024-03-26 13:46:26'),
(5, 'Misha Shah', 'misha22@gmail.com', 2147483647, 'Adajan,surat', '98745632', '2024-03-26 14:13:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facilitie`
--
ALTER TABLE `facilitie`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`imgid`);

--
-- Indexes for table `orderfood`
--
ALTER TABLE `orderfood`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`imgid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`resid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facilitie`
--
ALTER TABLE `facilitie`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderfood`
--
ALTER TABLE `orderfood`
  MODIFY `oid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `resid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `revid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
