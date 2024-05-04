-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 07:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agricart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `contact_no`) VALUES
(29, 'admin@admin.com', '$2y$10$U/bvSZB1P9zBYgrouy1mWei3FlpBqaW8EoZvz/uLpsA431AW4DaeW', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_details`
--

CREATE TABLE `buyer_details` (
  `Buyer_id` int(20) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `full_name` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `address` varchar(200) NOT NULL,
  `pin_code` int(7) NOT NULL,
  `state` varchar(255) NOT NULL,
  `otp` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_details`
--

INSERT INTO `buyer_details` (`Buyer_id`, `photo`, `full_name`, `email`, `contact_no`, `password`, `created_on`, `address`, `pin_code`, `state`, `otp`) VALUES
(17, 'image.jpg', 'shlok patel', 'shlok@gmail.com', 898005687, '$2y$10$aGvqss9lICuR4O2KHOSUs.VSZQLFbHLArGKDxvGZnIrFFKqW2yBBa', '2024-02-17 18:07:55', '', 0, '', 0),
(20, 'manthan.jpg', 'manthan', 'manthan@gmail.com', 2147483647, '$2y$10$prmmWGp1tAqKwy7hxyPQoOmeLx0BH2FSC1ShADrQEWmMZj5dTm93G', '2024-03-01 04:21:26', '', 0, '', 0),
(21, 'punya.jpg', 'punya', 'punya@gmail.com', 784563218, '$2y$10$aGvqss9lICuR4O2KHOSUs.VSZQLFbHLArGKDxvGZnIrFFKqW2yBBa', '2024-03-01 04:39:57', 'sachin park', 380015, 'Karnataka', 0),
(22, 'vraj.png', 'vraj', 'vraj@gmail.com', 2147483647, '$2y$10$NX3y0r9gxWcC6IXLaMR65OoplBdLLuqq.1lcfKRZzroUY0Abgm0zS', '2024-03-01 04:40:20', '', 0, '', 0),
(23, 'shreyansh.jpg', 'raj', 'raj@gmail.com', 2147483647, '$2y$10$b/VNiQ4Dyzmk0vvoRSHkz.MqEdt7PuCafGkbtBBcEKIUs9xYYB1uG', '2024-03-01 04:40:40', '', 0, '', 0),
(24, 'nand.png', 'nand', 'nand@gmaIL.com', 898007388, '$2y$10$5CqR0bNnqlzZ/4FyMkX4kuOb83xygFUQMwiCbYk/gCix346UArR0y', '2024-03-01 04:41:30', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_id` int(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `buyer_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`cart_id`, `product_id`, `buyer_id`, `quantity`) VALUES
(191, 57, 0, 1),
(193, 58, 17, 1),
(194, 72, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `contact_id` int(255) NOT NULL,
  `buyer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`contact_id`, `buyer_name`, `email`, `message`, `status`, `created_on`) VALUES
(1, 'shlok', 'shlok@gmail.com', 'In HTML, the <p> tag defines a paragraph. A paragraph is a distinct section of text with spacing before and after. \r\nThe closing <p> tag is optional and is implied by the opening tag of the next HTML element. Browsers automatically add a single blank line', 0, '2024-02-16 09:10:14'),
(2, 'raj', '', 'jhkjsdskdhjasdkjsahdjbsakjdkjasdasjdsdjashdiasydshazxs', 1, '2024-02-16 09:10:14'),
(9, 'punya', 's', 'sss', 1, '2024-02-16 09:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_details`
--

CREATE TABLE `coupon_details` (
  `coupon_id` int(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `discount_percentage` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupon_details`
--

INSERT INTO `coupon_details` (`coupon_id`, `coupon_code`, `discount_percentage`) VALUES
(1, 'shlok', 10),
(2, 'aaa', 20);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(8, 'shlokpatel.502@gmail.com'),
(9, 'sasas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(255) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `order_no` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `buyer_id` int(50) NOT NULL,
  `seller_id` int(255) NOT NULL,
  `payment` int(50) NOT NULL,
  `price` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `status` int(10) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `tracking_no`, `order_no`, `product_id`, `buyer_id`, `seller_id`, `payment`, `price`, `quantity`, `status`, `order_date`) VALUES
(66, '', '2733949706', '27', 17, 11, 0, 799, 11, 0, '2023-11-12 17:09:40'),
(67, '', '8144956717', '29', 17, 11, 0, 1299, 3, 0, '2023-11-13 17:26:45'),
(74, '', '4730060100', '34', 17, 11, 0, 799, 1, 0, '2023-11-14 18:06:31'),
(75, '', '5069363713', '38', 20, 11, 0, 2999, 11, 0, '2023-11-21 04:38:22'),
(76, '', '5069363713', '44', 20, 22, 0, 899, 9, 0, '2023-11-22 04:38:22'),
(77, '', '1894386848', '53', 20, 23, 0, 299, 1, 0, '2023-11-27 04:39:00'),
(79, '', '5061796026', '28', 21, 11, 0, 399, 1, 0, '2023-12-13 04:54:19'),
(80, '', '2940702671', '28', 21, 11, 0, 399, 1, 0, '2023-12-15 04:58:19'),
(81, '', '3277234757', '42', 21, 22, 0, 799, 1, 0, '2023-12-23 07:17:56'),
(82, '', '3277234757', '30', 21, 11, 0, 399, 1, 0, '2023-12-25 07:17:56'),
(83, '', '3277234757', '50', 21, 22, 0, 599, 1, 0, '2023-12-26 07:17:56'),
(84, '', '3277234757', '60', 21, 23, 0, 859, 20, 0, '2024-01-16 07:17:56'),
(85, '', '3277234757', '65', 21, 24, 0, 12999, 15, 0, '2024-01-17 07:17:56'),
(86, '', '3277234757', '58', 21, 23, 0, 499, 30, 0, '2024-01-24 07:17:56'),
(87, '', '7879849061', '58', 17, 23, 0, 499, 20, 0, '2024-01-25 09:26:32'),
(88, '', '8467593020', '39', 17, 11, 0, 2599, 11, 0, '2024-01-29 07:14:32'),
(89, '', '8467593020', '60', 17, 23, 0, 859, 1, 0, '2024-01-30 07:14:32'),
(90, '', '8467593020', '37', 17, 11, 0, 499, 4, 0, '2024-03-02 07:14:32'),
(91, '', '8467593020', '72', 17, 24, 0, 950, 1, 0, '2024-03-02 07:14:32'),
(92, '', '8467593020', '62', 17, 24, 0, 189, 1, 0, '2024-03-02 07:14:32'),
(93, '', '3959526947', '66', 17, 24, 0, 189, 1, 0, '2024-03-02 07:27:19'),
(94, '', '7771404239', '69', 17, 24, 0, 999, 1, 0, '2024-03-02 07:45:54'),
(95, '', '4775544921', '56', 17, 23, 0, 499, 1, 0, '2024-03-02 08:10:05'),
(96, '', '6596209740', '59', 17, 23, 0, 599, 1, 0, '2024-03-02 09:31:38'),
(97, '', '6596209740', '73', 17, 24, 0, 2899, 1, 0, '2024-03-02 09:31:38'),
(98, '', '1683931026', '42', 17, 22, 0, 799, 4, 0, '2024-03-02 10:15:08'),
(99, '', '1683931026', '72', 17, 24, 0, 950, 1, 0, '2024-03-02 10:15:08'),
(100, '', '1683931026', '28', 17, 11, 0, 399, 25, 0, '2024-03-02 10:15:08'),
(101, '', '5950698875', '33', 17, 11, 0, 599, 6, 0, '2024-03-04 16:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(10) NOT NULL,
  `seller_id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mrp` int(255) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(255) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `photo2` varchar(255) NOT NULL,
  `photo3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `seller_id`, `name`, `description`, `mrp`, `price`, `quantity`, `photo`, `photo2`, `photo3`) VALUES
(27, 11, 'Panga', 'Made up of stainless steal and the handle is made up of kashmir wood. ', 850, 799, 19, 'panga.jpg', 'panga2.jpg', 'panga3.jpeg.jpg'),
(28, 11, 'Water Pipe', 'Pacakage Contains: Unbreakable PVC Plain Green Super Braided Water Hose Pipe With Water Tap Adapter & 2 Clamps.\r\nSize : 1/2 inch( 0.50 Inch) , Length : 10 mete', 430, 399, 3, 'rubber_pipe.webp', 'rubber_pipe2.webp', 'rubber_pipe3.jpg'),
(29, 11, 'Pick Mattock', 'Very convenient when digging hard ground. It can be used for various purposes. For caring for flower beds and farmwork. For harvesting carrots and onions, and for rooting small trees. From archaeological excavation to cracking ice. Easy to use, making it ', 1380, 1299, 0, 'pick_mattock.jpg', 'pick_mattock2.jpg', 'pick_mattock3.jpg'),
(30, 11, 'AGNI Plus | Pesticides', 'Pesticides are chemical substances designed to control or eliminate pests such as insects, weeds, fungi, rodents, and other organisms that interfere with agricultural production, public health, or comfort. These compounds play a crucial role in modern agr', 430, 399, 98, 'pesticides.jpg', 'pesticides.jpg', 'pesticides.jpg'),
(31, 11, 'IPL TRIN | Pesticides', 'Pesticides are chemical substances designed to control or eliminate pests such as insects, weeds, fungi, rodents, and other organisms that interfere with agricultural production, public health, or comfort. These compounds play a crucial role in modern agr', 740, 699, 88, 'pesticides2.jpeg.jpg', 'pesticides2.jpeg.jpg', 'pesticides2.jpeg.jpg'),
(32, 11, 'IPL Warrior | Pesticides', 'Pesticides are chemical substances designed to control or eliminate pests such as insects, weeds, fungi, rodents, and other organisms that interfere with agricultural production, public health, or comfort. These compounds play a crucial role in modern agr', 635, 599, 119, 'pesticides3.jpg', 'pesticides3.jpg', 'pesticides3.jpg'),
(33, 11, 'Digging Fork', 'Versatile gardening tool combining the functionality of a fork and a shovel.\r\nForked blades for effective soil penetration, loosening, and aeration.\r\nEfficient for digging planting holes, transplanting small plants, and moving soil or compost.\r\nSuitable f', 630, 599, 23, 'spade_forkp.jpg', 'spade_forkp2.jpg', 'spade_forkp3.jpg'),
(34, 11, 'Spade', 'Heavy Duty Gardening Spade\r\nStrong Wooden Handle\r\nMade for rough use and long lasting', 840, 799, 0, 'spade.webp', 'spade2.webp', 'spade3.webp'),
(35, 11, 'Sprayer', 'Built-Up Quality: The Turbo 2-in-1 sprayer machine for agriculture is built with heavy-duty plastic that can withstand any season and harsh climatic conditions. Product maintenance is very important\r\nMultiple Nozzles: The agriculture machine comes with 5 ', 3535, 3499, 40, 'sprayer.jpg', 'sprayer2.jpg', 'sprayer3.webp'),
(37, 11, 'Fast Action | Weed Killer', 'kill all the weeds which are harmfull for the plants', 520, 499, 16, 'weed killer.jpg', 'weed killer.jpg', 'weed killer.jpg'),
(38, 11, 'MAHADHAN | fertilizer', 'Fertilizer is a vital component in modern agriculture, designed to enhance soil fertility and promote plant growth, ultimately maximizing crop yields. These formulations typically consist of essential nutrients crucial for plant development, such as nitro', 3037, 2999, 97, 'fertilizer_2.jpg', 'fertilizer_2.jpg', 'fertilizer_2.jpg'),
(39, 11, 'Girnar | fertilizer', 'Fertilizer is a vital component in modern agriculture, designed to enhance soil fertility and promote plant growth, ultimately maximizing crop yields. These formulations typically consist of essential nutrients crucial for plant development, such as nitro', 2658, 2599, 39, 'fertilizer_3.jpg', 'fertilizer_3.jpg', 'fertilizer_3.jpg'),
(40, 11, 'BJUP | fertilizer', 'Fertilizer is a vital component in modern agriculture, designed to enhance soil fertility and promote plant growth, ultimately maximizing crop yields. These formulations typically consist of essential nutrients crucial for plant development, such as nitro', 3010, 2999, 0, 'fertilizer.jpg', 'fertilizer.jpg', 'fertilizer.jpg'),
(42, 22, 'Pesticide | SUNPHATE', 'Safe for People and Pets When Used as DirectedCreates a Natural Peppermint Barrier for MiceHigh-Grade, US-Farmed Peppermint from the Pacific NorthwestNatural Ingredients Proven Effective in the Real World', 899, 799, 45, 'download (1).jpeg', 'download (1).jpeg', 'download (1).jpeg'),
(43, 22, 'Pesticide | ALACHLOR', 'Safe for People and Pets When Used as DirectedCreates a Natural Peppermint Barrier for MiceHigh-Grade, US-Farmed Peppermint from the Pacific NorthwestNatural Ingredients Proven Effective in the Real World', 699, 659, 70, 'download (3).jpeg', 'download (3).jpeg', 'download (3).jpeg'),
(44, 22, 'Pesticide | ATRAZINE', 'Safe for People and Pets When Used as DirectedCreates a Natural Peppermint Barrier for MiceHigh-Grade, US-Farmed Peppermint from the Pacific NorthwestNatural Ingredients Proven Effective in the Real World', 999, 899, 79, 'download (6).jpeg', 'download (6).jpeg', 'download (6).jpeg'),
(45, 22, 'Pesticide | ATRAZINE', 'Safe for People and Pets When Used as DirectedCreates a Natural Peppermint Barrier for MiceHigh-Grade, US-Farmed Peppermint from the Pacific NorthwestNatural Ingredients Proven Effective in the Real World', 799, 699, 40, 'download (8).jpeg', 'download (8).jpeg', 'download (8).jpeg'),
(46, 22, 'Pesticide | AGERUO', 'Safe for People and Pets When Used as DirectedCreates a Natural Peppermint Barrier for MiceHigh-Grade, US-Farmed Peppermint from the Pacific NorthwestNatural Ingredients Proven Effective in the Real World', 1299, 1199, 0, 'download (9).jpeg', 'download (9).jpeg', 'download (9).jpeg'),
(47, 22, 'Pesticide | MARKER', 'Safe for People and Pets When Used as Directed\r\nCreates a Natural Peppermint Barrier for Mice\r\nHigh-Grade, US-Farmed Peppermint from the Pacific Northwest\r\nNatural Ingredients Proven Effective in the Real World', 399, 299, 100, 'p.png', 'pesticide1.webp', 'pesticide3.webp'),
(48, 22, 'fertilizer | GREEN', 'Nutrient-Rich: TrustBasket Vermicompost for plants is a nutrient-packed enhancer for your soil. Enriched with essential minerals, vitamins, and beneficial microorganisms, it provides the perfect nourishment for your plants to flourish.\r\nEco-Friendly: Unli', 1299, 1199, 80, 'fertilizer1.jpg', 'fertilizer1.jpg', 'fertilizer1.jpg'),
(49, 22, 'fertilizer | NAFED', 'Nutrient-Rich: TrustBasket Vermicompost for plants is a nutrient-packed enhancer for your soil. Enriched with essential minerals, vitamins, and beneficial microorganisms, it provides the perfect nourishment for your plants to flourish.\r\nEco-Friendly: Unli', 999, 899, 100, 'fertilizer3.jpeg', 'fertilizer3.jpeg', 'fertilizer3.jpeg'),
(50, 22, 'fertilizer | GREEN', 'Nutrient-Rich: TrustBasket Vermicompost for plants is a nutrient-packed enhancer for your soil. Enriched with essential minerals, vitamins, and beneficial microorganisms, it provides the perfect nourishment for your plants to flourish.\r\nEco-Friendly: Unli', 699, 599, 199, 'fertilizer4.jpeg', 'fertilizer4.jpeg', 'fertilizer4.jpeg'),
(51, 22, 'fertilizer | ISO', 'Nutrient-Rich: TrustBasket Vermicompost for plants is a nutrient-packed enhancer for your soil. Enriched with essential minerals, vitamins, and beneficial microorganisms, it provides the perfect nourishment for your plants to flourish.\r\nEco-Friendly: Unli', 2999, 2599, 0, 'fertilizer5.webp', 'fertilizer5.webp', 'fertilizer5.webp'),
(52, 23, 'fertilizer | PROM+', 'Nutrient-Rich: TrustBasket Vermicompost for plants is a nutrient-packed enhancer for your soil. Enriched with essential minerals, vitamins, and beneficial microorganisms, it provides the perfect nourishment for your plants to flourish.\r\nEco-Friendly: Unli', 3999, 3599, 70, 'fertilizer6.webp', 'fertilizer6.webp', 'fertilizer6.webp'),
(53, 23, 'weed killer | FARM GENERAL', 'Kills weeds and grasses: use on driveways and walkways, and around fences, trees, flower beds, shrubs and other areas in your yard\r\nKills the root: visible results as fast as 3 hours. Replant new flowers, trees and shrubs the same weekend\r\nRAINFAST: rainf', 399, 299, 199, 'weed1.jpg', 'weed1.jpg', 'weed1.jpg'),
(54, 23, 'weed killer | EARTS', 'Kills weeds and grasses: use on driveways and walkways, and around fences, trees, flower beds, shrubs and other areas in your yard\r\nKills the root: visible results as fast as 3 hours. Replant new flowers, trees and shrubs the same weekend\r\nRAINFAST: rainf', 299, 259, 200, 'weed2.jpeg', 'weed2.jpeg', 'weed2.jpeg'),
(55, 23, 'Green & Weed Killer | HOME FRONT', 'Kills weeds and grasses: use on driveways and walkways, and around fences, trees, flower beds, shrubs and other areas in your yard\r\nKills the root: visible results as fast as 3 hours. Replant new flowers, trees and shrubs the same weekend\r\nRAINFAST: rainf', 899, 799, 150, 'weed3.jpeg', 'weed3.jpeg', 'weed3.jpeg'),
(56, 23, 'Weed & Green Killer | SPECTRACIDE', 'Kills weeds and grasses: use on driveways and walkways, and around fences, trees, flower beds, shrubs and other areas in your yard\r\nKills the root: visible results as fast as 3 hours. Replant new flowers, trees and shrubs the same weekend\r\nRAINFAST: rainf', 599, 499, 179, 'weed4.jpeg', 'weed4.jpeg', 'weed4.jpeg'),
(57, 23, 'Green & Weed Killer | ELIMINATOR', 'Kills weeds and grasses: use on driveways and walkways, and around fences, trees, flower beds, shrubs and other areas in your yard\r\nKills the root: visible results as fast as 3 hours. Replant new flowers, trees and shrubs the same weekend\r\nRAINFAST: rainf', 999, 899, 190, 'weed5.jpeg', 'weed5.jpeg', 'weed5.jpeg'),
(58, 23, 'weed killer | IMAGE', 'Kills weeds and grasses: use on driveways and walkways, and around fences, trees, flower beds, shrubs and other areas in your yard\r\nKills the root: visible results as fast as 3 hours. Replant new flowers, trees and shrubs the same weekend\r\nRAINFAST: rainf', 599, 499, 117, 'weed6.jpeg', 'weed6.jpeg', 'weed6.jpeg'),
(59, 23, 'Weed & Green Killer ', 'Kills weeds and grasses: use on driveways and walkways, and around fences, trees, flower beds, shrubs and other areas in your yard\r\nKills the root: visible results as fast as 3 hours. Replant new flowers, trees and shrubs the same weekend\r\nRAINFAST: rainf', 699, 599, 139, 'weed7.jpeg', 'weed7.jpeg', 'weed7.jpeg'),
(60, 23, 'fertilizer | VERMI COMPOST', 'Nutrient-Rich: TrustBasket Vermicompost for plants is a nutrient-packed enhancer for your soil. Enriched with essential minerals, vitamins, and beneficial microorganisms, it provides the perfect nourishment for your plants to flourish.\r\nEco-Friendly: Unli', 899, 859, 108, 'h.jpg', 'h1.jpg', 'h.jpg'),
(61, 24, 'BKR ® Power Tiller Inter-Cultivator with 4 Stroke ', 'Durable 7HP engine: The BKR Power Tiller Inter-Cultivator is equipped with a robust 7.0 HP engine, providing reliable power and performance for various tilling tasks.Eco-friendly operation: The low-emission fuel engine ensures environmentally friendly o', 44999, 39999, 16, 'bb.jpg', 'bb1.jpg', 'bb2.jpg'),
(62, 24, 'FALCON FCH-301 Hand Cultivator Single Prong Hand H', 'DURABLE CONSTRUCTION: The hand cultivator single prong is built to last with top-notch quality materials. It features a strong and sturdy single prong made from durable steel or stainless steel. This ensures that the cultivator can withstand the rigors of', 299, 189, 49, 'fch.jpg', 'fch1.jpg', 'fch2.jpg'),
(63, 24, 'VIS 1000R Power Weeder/Tiller for Farming Weeder w', 'These Tillers are best for Agriculture & Gardening Purposes, which Start with Recoil Starter\r\nThe power weeder is a new generation soil preparing machine suitable for all kinds of farms for the purpose of deweeding, ploughing and ridge forming with unique', 40000, 38999, 22, 'a - Copy.jpg', 'a1 - Copy.jpg', 'a2 - Copy.jpg'),
(64, 24, ' Grass Soil Mixing Cultivator Tool', 'VERSATILE FUNCTIONALITY: The hand soil tiller with a weeding blade combines the benefits of both a tiller and a weeding tool, providing users with a versatile gardening tool in one compact device.\r\nEFFICIENT SOIL PREPARATION: The tiller feature of this to', 1200, 1199, 50, 'sm.jpg', 'sm1.jpg', 'sm2.jpg'),
(65, 24, 'Neptune', 'HAND PUSH BRUSH CUTTER - NEPTUNE SIMPLIFY FARMING HAND PUSH BRUSH CUTTER is the unique product which lets you cut the grass of your lawn without getting fatigued. The two wheels move seamlessly on the ground and save a great amount of time and effort.\r\n2 ', 14000, 12999, 29, 'cutter.jpg', 'cutter1.jpg', 'cutter2.jpg'),
(66, 24, 'FALCON FW-500', 'EFFICIENT WEED REMOVAL: The Hand Weeder is a specialized tool designed to efficiently remove weeds from your garden or lawn. Its unique design allows you to dig deep into the soil and extract weeds, including their roots, ensuring effective weed control.\r', 200, 189, 19, 'ss.jpg', 'ss1.jpg', 'ss2.jpg'),
(67, 24, 'FALCON FPHD-1906 Post Hole Digger', 'VERSATILE DIGGING: A post-hole digger is a powerful tool designed to efficiently dig holes in the ground. It can be used for various applications, such as installing fence posts, deck supports, or planting trees, making it a versatile choice for both resi', 2500, 2399, 80, 'f1.jpg', 'f2.jpg', 'f3.jpg'),
(68, 24, 'FRP Telescopic Pole 7to 22 Ft', 'FIBRE GLASS Telescopic pole\r\nLIGHT WEIGHT\r\nSHOCK PROOF\r\nTERMITE PROOF\r\nEASY TO HANDLE AND TRANSPORT', 2700, 2599, 90, 'fp.jpg', 'fp1.jpg', 'fp2.jpg'),
(69, 24, 'tata agrico Round Shovel with Wooden Handle', 'Ideal for agriculture purposes and construction sites.', 1300, 999, 99, 'shovel.jpg', 'shovel1.jpg', 'shovel2.jpg'),
(70, 24, 'Pruning Saw', 'JCT TATA Wooden Handle Pruning Saw, Traditional Handsaw Light Weight for Gardening and Agriculture Purpose (Small Size 30 cm), Hand powered\r\nUseful for agriculture, professionals and for camping', 350, 299, 130, 'pruning.jpg', 'pruning1.jpg', 'pruning2.jpg'),
(71, 24, 'Klassic Post Hole Hand Auger', 'Hand Augers are used to carry out a range of shallow digging necessary in obtaining soil samples, making postholes, drilling fishing holes in ice, environmental construction, mining, opening clogged drains and locating underground materials that may poten', 350, 310, 180, 'hole.jpg', 'hole1.jpg', 'hole2.jpg'),
(72, 24, 'WOLF-Garten 7223000 Bypass Anvil Secateur', 'Its best used on younger growth as it provides a very clean cut, essential for maintaining a healthy plant or shrub\r\nSuitable for both left and right handed users with Single-handed locking device\r\nIdeal for delicate and precise pruning\r\nThese light weigh', 1000, 950, 118, 'wolftool.jpg', 'wolftool1.jpg', 'wolftool2.jpg'),
(73, 24, 'ALL IN ONE KIT', 'Material: The khurpi is made of Export-quality stainless steel. The tools are made of iron and are black powder coated for corrosion and rust protection.\r\nContents: The tool box contains one pc each- Hand Cultivator, Hand Fork, Big Hand Trowel, Small Hand', 3000, 2899, 99, 'i2.jpg', 'i.jpg', '5 items2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seller_details`
--

CREATE TABLE `seller_details` (
  `seller_id` int(20) NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `government_id` varchar(100) NOT NULL,
  `gst_no` int(100) NOT NULL,
  `status` int(3) NOT NULL,
  `created_on` datetime NOT NULL,
  `otp` int(7) NOT NULL,
  `verify` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_details`
--

INSERT INTO `seller_details` (`seller_id`, `first_name`, `last_name`, `photo`, `email`, `password`, `contact_no`, `government_id`, `gst_no`, `status`, `created_on`, `otp`, `verify`) VALUES
(11, 'shreaynsh', 'patel', 'shreyansh.jpg', 'shlok@gmail.com', '$2y$10$zQ5wzL3wEB3cmwAMUY32WO1tQnPg9jbdmnwbySGYA7nC772m2cQvm', 1, 'adminrevenue.jpeg', 0, 0, '0000-00-00 00:00:00', 0, 1),
(15, 'manthan', 'patel', 'manthan.jpg', 'manthan@gmail.com', '$2y$10$nRvF3vpF7tV8x9BSZsH5q.QXiIgZ2Mgsn1ob1EgEKJd.OvVjJf7R6', 111, 'adminrevenue.jpeg', 1212, 0, '0000-00-00 00:00:00', 1, 1),
(20, 'shlok', 'patel', 'image.jpg', 'shlokpatel.502@gmail.com', '$2y$10$ihIMwgyLXiLqv5wyTtP9ge4kjZLnFftAaOfMRuh7thRSKbi7FrKLi', 1111, 'image.jpg', 2223, 0, '2024-02-28 08:14:17', 0, 1),
(23, 'nand', 'patel', 'nand.png', 'nand@gmail.com', '$2y$10$TZfuewyflhim0sJ6jYTYCuBBMIATMeZAXLpK0I5yJbkBuisNcGOw.', 123456789, 'nand.png', 123456789, 0, '2024-02-29 05:17:26', 0, 1),
(24, 'punya', 'patel', 'punya.jpg', 'punya@gmail.com', '$2y$10$SlGepU0ADu1Vzo/Zdm6wBewk3CJXAlHcbENIS0u63Ps.PTeNFbmSu', 696969, 'punya.jpg', 12345678, 0, '2024-02-29 05:46:19', 0, 1),
(25, 'vraj', 'patel', 'vraj.png', 'vraj@gmail.com', '$2y$10$rQ8uRvvY0WpPkU1JiUzRk.XXTMDrZ3SvPEx3jzssZjb0gc3JGilou', 2147483647, 'aadhar.jpg', 0, 0, '2024-03-01 05:45:11', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_details`
--

CREATE TABLE `shop_details` (
  `shop_id` int(255) NOT NULL,
  `seller_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_details`
--

INSERT INTO `shop_details` (`shop_id`, `seller_id`, `name`, `address`, `city`, `email`, `contact_no`, `time`, `contact_person`, `location`, `photo`) VALUES
(10, 24, 'Agro Infomart', '1104, 11th Floor, Capstone Building, Opp. Chirag Motors, nr. Parimal Garden, Gujarat 380006', 'Gujarat', 'Gujarat', 2147483647, 'Monday-Friday 9:00AM To 8:00PM', '9645876123', 'https://maps.app.goo.gl/ULzx26PUc3czLVgm6', '65e018e3417a6_shop1.jpeg'),
(11, 24, 'SHREE BHAVANI NURSERY AND FARM', ' Oppo. Arose foods, Nr. Sandesh bunglow, b/h Mumatpura gam, Karnavati Club Rd, Ahmedabad, Gujarat 380054', ' Ahmedabad', ' Ahmedabad', 2147483647, 'Monday-Saturday 10:00AM To 9:00PM', '5623152369', 'https://maps.app.goo.gl/9b5DWwNKYdk6MSTR7', '65e019f92eb7e_shop2.jpeg'),
(12, 24, 'Sheetal Nursery', 'Makarba Rd, opposite Kripal Heritage, near Police Headquarters, Makarba, Ahmedabad, Gujarat 380051', 'Ahmedabad', 'Ahmedabad', 2147483647, 'Monday-Saturday 10:00AM To 10:00PM', '8596412356', 'https://maps.app.goo.gl/Vd5rAabuD5VLL6n48', '65e01a01a3b19_shop3.jpeg'),
(13, 24, 'Rocks N Woods Nursery & Pots', '2F5M+CJJ, Mumatpura Rd, Mumatpura, Ahmedabad, Gujarat 380054', 'Ahmedabad', 'Ahmedabad', 2147483647, 'Monday-Friday 9:00AM To 6:00PM', '6523145879', 'https://maps.app.goo.gl/n6b3qE17sS5w7todA', '65e01a0c22ef3_shop4.jpeg'),
(14, 22, 'Pragati seeds & Agro chemicals', '2HR8+PWW, Income Tax, Navjeevan Press Rd, Sattar Taluka Society, Usmanpura, Ahmedabad, Gujarat 380014', 'Ahmedabad', 'Ahmedabad', 2147483647, 'Monday-Friday 11:00AM To 9:30PM', '5231245789', 'https://maps.app.goo.gl/fnM9f6DStd3Qt74s8', '65e01c409c503_shop5.jpg'),
(15, 22, 'AMBICA AGRO', '404,Sankalp complex, Sardar Gunj Road, beside Indo Africa Marriage Hall, Anand, Gujarat 388001', 'Anand,Gujarat', 'Anand,Gujarat', 2147483647, 'Monday-Saturday 8:30AM To 9:30PM', '9856412356', 'https://maps.app.goo.gl/isMHBDe7kRpzhU77A', '65e01c965cee5_shop6.jpeg'),
(16, 22, 'Yug Shakti Seeds', 'Life Style, B-1 Gf 18 Anta, Ajwa Rd, near Kashi Da Party Plot, Vadodara, Gujarat 390019', 'Vadodara, Gujarat', 'Vadodara, Gujarat', 2147483647, 'Monday-Saturday 10:30AM To 10:30PM', '9325678913', 'https://maps.app.goo.gl/GggACEB5BQXXWK5F7', '65e01c5cdce42_shop7.jpeg'),
(17, 22, 'Shree Khodiyar Garden Tools', 'Shop No 30 & 31 Silicon Valley, Satellite, Ahmedabad - 380015 (Beside India Sports Near Shivranjini Cross Road)', 'Satellite, Ahmedabad', 'Satellite, Ahmedabad', 2147483647, 'Monday-Friday 11:30AM To 10:30PM', '5231659875', 'https://maps.app.goo.gl/6z8ASawdBCm2oGEu9', '65e01c645b076_shop8.jpg'),
(18, 23, 'Agriown Farmtech Pvt Ltd', 'F Block, 8 No, 3rd Floor, 4D Square Mall, Opp Engineering School, Motera, Ahmedabad - 380005', ' Motera, Ahmedabad', ' Motera, Ahmedabad', 2147483647, 'Monday-Friday 9:45AM To 8:00PM', '3265987456', 'https://maps.app.goo.gl/Qn2cKYTEvaidBW6H6', '65e01eb219aad_shop9.jpeg'),
(19, 23, 'Arbuda Agrochemicals Pvt Ltd', 'Shop No:-LL-22, Sattadhar Complex, C P Nagar Road, Ghatlodiya, Ahmedabad - 380061 (Near CP Pan Parlour,)', 'Ghatlodiya, Ahmedabad ', 'Ghatlodiya, Ahmedabad ', 2147483647, 'Monday-Friday 10:30AM To 9:35PM', '9856123789', 'https://maps.app.goo.gl/eoT98s4geNhPk5qz9', '65e01eb96cae3_shop10.jpeg'),
(20, 23, 'Greenman Garden Agro Center', 'B/2-1, Mayurpark Society, Gate No.2, Near Swamivivekanand chowk, opposite Yash Arian Memnagar, Memnagar, Ahmedabad, Gujarat 380052', 'Memnagar, Ahmedabad,', 'Memnagar, Ahmedabad,', 2147483647, 'Monday-Saturday 12:30AM To 11:30PM', '9623156896', 'https://maps.app.goo.gl/xzr5PoWLGjdtwmCH9', '65e01ec09ccb5_shop11.jpeg'),
(21, 23, 'The Green Garden', '146, Suyog Complex, New CG Rd, below SAKAR ENGLISH SCHOOL, Nigam Nagar, Chandkheda, Ahmedabad, Gujarat 382424', 'Chandkheda, Ahmedabad', 'Chandkheda, Ahmedabad', 2147483647, 'Monday-Friday 12:00AM To 8:00PM', '9653265987', 'https://maps.app.goo.gl/Apy5UjzmJPKbS8Sz6', '65e01ec7572d4_shop12.jpeg'),
(22, 11, 'swaroop agrochemical industries', ' Plot no. -B/9, Vasupujaya Industrial Estate, 2nd Floor, Gala No.:, 212, New Link Rd, Laxmi Nagar, Goregaon, Mumbai, Maharashtra 400064', ' Mumbai, Maharashtra', ' Laxmi Nagar, Goregaon, Mumbai, Maharashtra', 2147483647, 'Monday-Saturday 12:00AM To 5:00PM', '9652316598', 'https://maps.app.goo.gl/B8JnmazJsjiPa5P48', '65e020e7df198_shop13.jpeg'),
(23, 11, 'patel agro centre palanpur', 'Gurunanak Chowk, Chaman Bagh, Palanpur, Gujarat 385001', ' Palanpur, Gujarat', ' Palanpur, Gujarat', 2147483647, 'Monday-Saturday 12:30AM To 3:30PM', '6326598563', 'https://maps.app.goo.gl/ya6wPpg9bcyjb8Eg7', '65e020ee9cd2c_shop14.jpeg'),
(24, 11, 'Utkarsh Agrochem Private Limited', 'Shop number 177, GOLDEN PLAZA COMPLEX, NH No 48, Kamrej Rd, Kamrej, Gujarat 394185', ' Kamrej, Gujarat', ' Kamrej, Gujarat', 2147483647, 'Monday-Friday 8:30AM To 5:30PM', '9856321569', 'https://maps.app.goo.gl/mofMisFmA1Hr7Z3S9', '65e020f5b07a9_shop15.jpeg'),
(25, 11, 'Apna Seeds & Pesticides', 'Shop No. 16 & 17, Sardar Patel Vegetable Market, Jamalpur, Ahmedabad, Gujarat 380022', ' Ahmedabad, Gujarat ', ' Ahmedabad, Gujarat ', 2147483647, 'Monday-Friday 11:00AM To 2:00PM', '9653157563', 'https://maps.app.goo.gl/KAUbkGaY8uyg3Yv16', '65e020fb218a9_shop16.jpeg'),
(26, 11, 'Avinash ', 'hello ', 'hwllo', 'aviu@gmail.com', 2147483647, '555', 'avi', 'hello', '65cc8ee18abf9_adminfarmerlogo.png');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `testimonial_id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `feedback` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `buyer_details`
--
ALTER TABLE `buyer_details`
  ADD PRIMARY KEY (`Buyer_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupon_details`
--
ALTER TABLE `coupon_details`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `seller_details`
--
ALTER TABLE `seller_details`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `shop_details`
--
ALTER TABLE `shop_details`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `buyer_details`
--
ALTER TABLE `buyer_details`
  MODIFY `Buyer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `contact_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupon_details`
--
ALTER TABLE `coupon_details`
  MODIFY `coupon_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `seller_details`
--
ALTER TABLE `seller_details`
  MODIFY `seller_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `shop_details`
--
ALTER TABLE `shop_details`
  MODIFY `shop_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `testimonial_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
