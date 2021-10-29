-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 06:29 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecolife`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `compony_name` varchar(50) NOT NULL,
  `governorate` varchar(50) NOT NULL,
  `block_number` int(11) NOT NULL,
  `street_address` varchar(50) NOT NULL,
  `avenue` varchar(50) NOT NULL,
  `building_number` varchar(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `additional_info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `compony_name`, `governorate`, `block_number`, `street_address`, `avenue`, `building_number`, `floor`, `phone`, `additional_info`) VALUES
(26, 'Wunsch-Bernier', 'Micronesia', 41881, 'Witting Expressway', 'New Gayland', '33894', 'New Elvie', '+1-490-565-3092', NULL),
(27, 'Stokes LLC', 'Tuvalu', 931, 'Nienow Forges', 'South Berry', '4047', 'Tremaineville', '(518) 426-4787 x1218', NULL),
(28, 'Tremblay-Macejkovic', 'Bouvet Island (Bouvetoya)', 18768, 'Bryce Circles', 'West Willardmouth', '8138', 'Libbybury', '+1-451-400-5988', NULL),
(29, 'Hamill-Aufderhar', 'Barbados', 61919, 'Hintz Heights', 'Magnusburgh', '1674', 'Rossiemouth', '+12016377128', NULL),
(30, 'Brekke Ltd', 'Turkey', 782, 'Johns Port', 'Oceanefort', '5163', 'West Stevieport', '948.739.1678 x36716', NULL),
(31, 'Kuvalis-Hilpert', 'Netherlands Antilles', 78298, 'Manuel Place', 'Kristyville', '96996', 'Kubside', '519.802.1466 x5061', NULL),
(32, 'Pfeffer Ltd', 'French Southern Territories', 241, 'Homenick Mountains', 'Mountains', '253', 'Mountains', '012287632', NULL),
(33, 'zujixi@mailinator.com', 'gehone@mailinator.com', 446, 'sisexo@mailinator.com', 'jajiwotav@mailinator.com', '474', '944', '0323151351', 'Minim consequatur qu'),
(34, 'womuw@mailinator.com', 'byqer@mailinator.com', 165, 'fikehor@mailinator.com', 'poveper@mailinator.com', '924', '946', '021351315', 'Ad velit officia si'),
(37, 'Pfeffer Ltd', 'French Southern Territories', 241, 'Homenick Mountains', 'Mountains', '253', 'Mountains', '012287632', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `available_times`
--

CREATE TABLE `available_times` (
  `id` int(11) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`) VALUES
(45, 113, 1, 1),
(52, 210, 1, 1),
(54, 203, 51, 3),
(55, 202, 51, 10),
(56, 202, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cart_box`
-- (See below for the actual view)
--
CREATE TABLE `cart_box` (
`cart_id` bigint(20) unsigned
,`user_id` bigint(20) unsigned
,`quantity` int(11)
,`pro_id` bigint(20) unsigned
,`pro_name` varchar(100)
,`pro_des` varchar(250)
,`pro_details` text
,`pro_price` float
,`new_price` float
,`pro_images` longtext
,`pro_rate` enum('1','2','3','4','5')
,`new` tinyint(4)
,`offer` int(11)
,`pro_status` tinyint(1)
,`category_id` bigint(20) unsigned
,`cat_name` varchar(50)
,`cat_header` varchar(50)
,`cat_status` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cart_total_price`
-- (See below for the actual view)
--
CREATE TABLE `cart_total_price` (
`user_id` bigint(20) unsigned
,`total_price` double
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_header` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_header`, `status`) VALUES
(58, 'modi', 'et', 1),
(59, 'laudantium', 'doloribus', 0),
(60, 'a', 'recusandae', 1),
(61, 'quisquam', 'possimus', 0),
(62, 'sequi', 'nemo', 1),
(63, 'eaque', 'ipsa', 1),
(64, 'qui', 'iusto', 1),
(65, 'numquam', 'natus', 0),
(66, 'tempora', 'et', 1),
(67, 'perspiciatis', 'quod', 1),
(68, 'autem', 'ut', 1),
(69, 'quos', 'qui', 0),
(70, 'suscipit', 'impedit', 1),
(71, 'nemo', 'voluptas', 1),
(72, 'ut', 'non', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'ahmed', 'omar@omar.com', 'sweets is required', 'Hi, admin i want fucken taffy'),
(2, 'ahmed', 'omar@omar.com', 'sweets is required', 'Hi, admin i want fucken taffy'),
(3, 'ahmed', 'omar@omar.com', 'sweets is required', 'Hi, admin i want fucken taffy');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(2) UNSIGNED NOT NULL,
  `total_price` float NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `if_not_availble` varchar(50) NOT NULL,
  `destroy_mode` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `address_id`, `date`, `time`, `if_not_availble`, `destroy_mode`) VALUES
(62, 1, 28225500, 34, '2021-10-19', '', '', 'C'),
(64, 1, 21623.9, 37, '2021-10-19', '01:03', 'call me', 'C');

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_box`
-- (See below for the actual view)
--
CREATE TABLE `order_box` (
`order_id` bigint(20) unsigned
,`total_price` float
,`if_not_availble` varchar(50)
,`destroy_mode` varchar(1)
,`date` date
,`user_id` bigint(2) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`address_id` bigint(20) unsigned
,`compony_name` varchar(50)
,`governorate` varchar(50)
,`block_number` int(11)
,`street_address` varchar(50)
,`avenue` varchar(50)
,`building_number` varchar(50)
,`floor` varchar(50)
,`phone` varchar(20)
,`additional_info` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `product_id`, `quantity`, `order_id`) VALUES
(26, 19, 7, 17),
(27, 15, 1, 5),
(28, 27, 3, 27),
(29, 20, 6, 22),
(30, 1, 9, 28),
(31, 6, 2, 61),
(32, 10, 4, 61),
(33, 19, 7, 61),
(34, 43, 1, 62),
(35, 40, 1, 62),
(36, 43, 1, 63),
(37, 41, 1, 63),
(38, 95, 1, 63),
(39, 93, 1, 63),
(40, 81, 1, 63),
(41, 105, 1, 63),
(42, 83, 4, 64),
(43, 109, 1, 64),
(44, 105, 1, 64),
(45, 93, 1, 64);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_des` varchar(250) NOT NULL,
  `pro_details` text NOT NULL,
  `price` float NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`images`)),
  `rate` enum('1','2','3','4','5') NOT NULL DEFAULT '4',
  `new` tinyint(4) NOT NULL DEFAULT 0,
  `offer` int(11) DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `new_price` float GENERATED ALWAYS AS (`price` - `price` * `offer` / 100) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_des`, `pro_details`, `price`, `images`, `rate`, `new`, `offer`, `category_id`, `status`) VALUES
(200, 'Quis possimus.', 'Laudantium repudiandae laudantium voluptates dolorem debitis similique.', 'Accusantium atque a blanditiis accusamus qui dignissimos commodi in perferendis incidunt dolore qui dignissimos vel accusantium.', 4642, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?15226\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?57956\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?81127\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?58468\"]', '4', 0, 31, 69, 0),
(201, 'Itaque temporibus dolorem.', 'Quia autem sunt consequatur maiores.', 'Beatae qui dolores harum eius doloremque esse tenetur unde officia voluptate.', 3450, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?89212\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?66838\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?21574\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?90441\"]', '1', 1, 5, 67, 0),
(202, 'Quaerat sed.', 'Iusto nisi sequi soluta autem aut non vel.', 'Qui impedit id neque quae quia doloremque dolorem numquam pariatur voluptatem alias consectetur eligendi ut tenetur numquam.', 4067, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?47393\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?87898\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?16238\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?79528\"]', '1', 1, 37, 61, 1),
(203, 'Et dignissimos ea.', 'Et sint odio at.', 'Ut quae id non voluptatem et tempore neque dolorum rerum voluptas amet enim sed.', 4301, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?90089\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?39210\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?23187\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?26131\"]', '2', 1, 23, 60, 0),
(204, 'Veniam soluta.', 'Sunt provident voluptatem ut exercitationem molestiae impedit.', 'Modi deserunt harum beatae quaerat nihil sed mollitia dolorem culpa omnis et atque ut enim est molestias enim.', 1147, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?33733\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?57906\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?38354\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?10714\"]', '2', 1, 13, 67, 1),
(205, 'Voluptas sapiente.', 'Consectetur suscipit blanditiis et ea quia adipisci consequuntur.', 'Debitis at autem rerum porro et magnam sit facere est iure harum sint.', 4463, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?56770\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?23216\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?95408\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?72475\"]', '4', 0, 7, 60, 0),
(206, 'Quia laborum aut.', 'Id ut earum aut autem veritatis.', 'Aut ea qui qui ratione aut labore cupiditate molestias labore nihil expedita consequatur occaecati.', 4986, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?84981\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?63271\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?84600\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?39696\"]', '2', 0, 32, 72, 1),
(207, 'Accusantium rerum.', 'Ut sit est illo facilis quas.', 'Natus ut nesciunt culpa quae et doloribus saepe omnis in hic temporibus reprehenderit quo ut magnam nobis sequi quaerat sit.', 4210, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?69890\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?14343\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?13472\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?14821\"]', '3', 0, 20, 69, 0),
(208, 'Et ratione et.', 'Impedit et harum rerum quod sed velit.', 'Ducimus voluptatum et numquam eveniet temporibus aut qui qui velit.', 4044, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?38165\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?34584\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?94273\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?43989\"]', '1', 1, 20, 65, 1),
(209, 'Rerum aut.', 'Et sunt numquam quo fuga culpa vel fugiat vero.', 'Architecto voluptatem nobis sed voluptatem alias est tempore non earum dolor aut dignissimos provident dicta beatae modi natus est.', 1735, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?31721\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?12862\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?28221\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?20255\"]', '2', 0, 44, 60, 1),
(210, 'Necessitatibus ut.', 'Odit velit quae ut minima.', 'Omnis ipsam ut cumque molestiae omnis aperiam iusto sequi sed et sed nam officiis nihil dolorum.', 3261, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?35222\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?69830\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?23301\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?87639\"]', '4', 1, 32, 60, 0),
(211, 'Et vitae aperiam.', 'Velit suscipit deserunt similique unde odio reprehenderit minima eos.', 'Sed asperiores eligendi vel magni vitae corporis doloribus non magni et illum maiores possimus odit.', 4911, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?98769\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?52685\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?18169\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?26639\"]', '4', 0, 34, 72, 0),
(212, 'Laudantium eveniet.', 'Voluptates sed voluptatum praesentium esse iste sed.', 'Et consectetur dignissimos ut est illum debitis temporibus quaerat cupiditate.', 1996, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?89719\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?28672\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?49594\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?16151\"]', '1', 0, 46, 61, 1),
(213, 'Voluptates expedita.', 'Voluptates sint quis consectetur unde ipsam dolor.', 'Neque est facere voluptas iusto est consectetur aut nostrum vel placeat aut in est voluptates quis quo.', 4291, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?73032\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?55700\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?32113\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?12376\"]', '1', 0, 45, 58, 1),
(214, 'Minima necessitatibus sit.', 'Ut molestiae amet fugiat facere.', 'Consectetur commodi est saepe et reiciendis maxime est aliquid omnis animi totam in.', 3070, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?12374\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?27745\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?27088\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?66208\"]', '3', 1, 6, 63, 0),
(215, 'Et expedita cumque.', 'Aperiam ut architecto dolores expedita.', 'Omnis sequi laudantium suscipit atque nisi aperiam et sapiente expedita corporis consequatur minus praesentium ducimus ut vel esse doloremque minima.', 4851, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?34225\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?32881\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?91794\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?33919\"]', '5', 1, 40, 64, 1),
(216, 'Possimus temporibus.', 'Et facilis et ab et itaque nulla.', 'Occaecati totam qui illo non neque impedit temporibus veniam quis hic non itaque eum et veritatis id repellendus aliquid eaque.', 2566, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?67414\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?11503\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?47862\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?16453\"]', '2', 0, 19, 60, 0),
(217, 'Quod sed.', 'Deserunt doloremque pariatur officiis quisquam qui vitae cum.', 'Pariatur velit est consequatur vel ut laudantium ducimus praesentium voluptatem architecto sapiente omnis repellat asperiores.', 3953, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?59189\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?53607\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?73568\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?35280\"]', '2', 0, 36, 67, 0),
(218, 'Voluptas quidem ut.', 'Numquam velit amet cum corporis ut error.', 'Quia porro accusantium quo ut non voluptatem commodi magni quae.', 2609, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?74516\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?82116\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?57586\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?28735\"]', '2', 1, 8, 60, 1),
(219, 'In natus.', 'Alias ad sed nihil eos ratione.', 'Pariatur tenetur impedit dolorem aut cupiditate aut commodi eligendi molestiae consequatur.', 3815, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?43232\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?55985\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?17392\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?86047\"]', '5', 0, 15, 72, 1),
(220, 'Iure accusamus.', 'Odit adipisci id et id aliquam reiciendis.', 'Tempore ut omnis neque unde nulla totam non sint architecto.', 2548, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?77493\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?23866\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?83004\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?18910\"]', '5', 0, 28, 72, 0),
(221, 'Facere non.', 'Voluptas dolores ut accusantium.', 'Autem voluptatem vero repellendus officia repellat neque et quasi laudantium.', 3412, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?93810\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?17703\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?39440\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?70255\"]', '5', 1, 7, 65, 0),
(222, 'Corrupti minus rerum.', 'Nam ut sit voluptatem rerum eligendi culpa amet.', 'Qui voluptate quia eveniet eum quisquam ipsa exercitationem ea ullam labore maxime sint eos autem molestias.', 1349, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?77079\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?80273\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?65910\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?58580\"]', '2', 0, 17, 61, 0),
(223, 'Ut eveniet.', 'Adipisci distinctio qui a sit sit molestiae.', 'Nam ipsa ea aut nobis quasi dolores sunt aliquid sed nostrum placeat reprehenderit corporis culpa.', 3037, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?66300\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?21062\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?95320\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?20008\"]', '3', 1, 9, 72, 1),
(224, 'Eum atque qui.', 'Facere dolorem aliquid atque eos.', 'Excepturi molestiae quam sapiente veniam officiis ipsum quidem veritatis nemo neque voluptas illum cumque ea dolorum qui est veritatis quam nihil.', 961, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?18591\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?91761\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?86643\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?78147\"]', '4', 0, 39, 69, 0),
(225, 'Possimus aut rerum.', 'Iste et non enim quidem error quo iste sed.', 'Temporibus ut sunt error nesciunt non ea velit praesentium placeat.', 4700, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?15272\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?96416\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?45399\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?60469\"]', '4', 1, 27, 58, 1),
(226, 'Et enim.', 'Quaerat exercitationem omnis delectus suscipit.', 'Nam hic quisquam id consequatur et corrupti sed qui inventore a perspiciatis nihil earum neque placeat delectus provident reprehenderit laborum aperiam.', 1179, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?67269\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?57228\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?92944\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?35155\"]', '1', 1, 41, 71, 0),
(227, 'Tempore qui aspernatur.', 'Rerum qui voluptates et et qui accusamus.', 'Omnis dignissimos voluptatem est hic asperiores omnis ut facere omnis quis sapiente quos veritatis eum reprehenderit voluptates quis consequatur sint veniam.', 1401, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?59326\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?42689\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?90216\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?71256\"]', '1', 0, 28, 59, 1),
(228, 'Tempore quam non.', 'Quos laboriosam ut quidem at qui accusamus enim.', 'Deleniti nihil hic cupiditate rerum totam aliquid aut nemo quibusdam recusandae.', 4897, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?82605\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?94046\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?27723\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?76524\"]', '1', 1, 36, 63, 1),
(229, 'Qui sequi.', 'Laudantium quam sunt itaque sed maxime.', 'Sit molestiae aut ullam esse facilis blanditiis in iusto omnis mollitia ut sit et qui consequatur.', 1264, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?44279\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?64278\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?26288\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?43413\"]', '3', 0, 36, 70, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_box`
-- (See below for the actual view)
--
CREATE TABLE `product_box` (
`pro_id` bigint(20) unsigned
,`pro_name` varchar(100)
,`pro_des` varchar(250)
,`pro_details` text
,`pro_price` float
,`new_price` float
,`pro_images` longtext
,`pro_rate` enum('1','2','3','4','5')
,`new` tinyint(4)
,`offer` int(11)
,`pro_status` tinyint(1)
,`category_id` bigint(20) unsigned
,`cat_name` varchar(50)
,`cat_header` varchar(50)
,`cat_status` tinyint(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `re_des` varchar(250) NOT NULL,
  `re_rate` enum('1','2','3','4','5') NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `re_des`, `re_rate`, `product_id`, `user_id`) VALUES
(41, 'Adipisci optio eum quibusdam consequatur neque veniam consequatur. Earum voluptas modi quo doloremque earum. Molestiae voluptatem et sunt reprehenderit asperiores sapiente voluptatibus. Ipsa est vel soluta nesciunt quia temporibus.', '5', 4, 25),
(42, 'Ullam vitae doloremque in voluptas. Totam consectetur eos sed cupiditate nihil. Vel est hic dolores quas rerum eos odio. Quas ipsa commodi maxime aliquid nihil.', '2', 15, 12),
(43, 'Aut est quis omnis id vel voluptates. Voluptatem dolores enim non nihil eius facilis. Vitae sequi beatae a dolores dolorem dicta possimus. Ad distinctio odio qui iste libero dignissimos.', '2', 19, 29),
(44, 'Nostrum saepe est repellat dolorem. Sint pariatur eius quia est est. Vitae adipisci officiis non commodi maxime non.', '5', 18, 19);

-- --------------------------------------------------------

--
-- Stand-in structure for view `review_box`
-- (See below for the actual view)
--
CREATE TABLE `review_box` (
`re_id` bigint(20) unsigned
,`re_des` varchar(250)
,`re_rate` enum('1','2','3','4','5')
,`product_id` bigint(20) unsigned
,`user_id` bigint(20) unsigned
,`name` varchar(255)
,`email` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploads/users/avatar/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `isAdmin`, `password`, `remember_token`, `verify_code`, `created_at`, `updated_at`) VALUES
(1, 'Berry Murray', 'ahmed@ahmed.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oeGSgMwFoL', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(2, 'Eliane Heidenreich', 'august.douglas@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H4aW4uypr5', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(3, 'Reyna Bergnaum', 'amosciski@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8BkUf3nMsz', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(4, 'Prof. Oran Considine', 'colten15@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VrWQZ0vX3r', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(5, 'Hulda Baumbach', 'delaney.schoen@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HWCUXeKbcY', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(6, 'Lucy Cronin', 'nina.kuphal@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yqg09vFP7A', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(7, 'Dayna Lang', 'kharris@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gkbZNEbVoR', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(8, 'Dr. Janessa Heller', 'maeve35@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BvIw4e6WtI', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(9, 'Willard Runolfsson', 'shaniya.blick@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TBRM8GlNbX', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
(10, 'Porter Murray', 'osborne22@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RyaqMzvmgH', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(11, 'Tyson Harber', 'toy.kuhn@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JAkmSj3TGJ', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(12, 'Victoria Beatty', 'kuhic.toy@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cAtd51Onlr', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(13, 'Litzy Balistreri', 'stiedemann.nikolas@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NjGOxkItYQ', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(14, 'Dr. Amani Dickinson I', 'wehner.judge@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'flzNA9nxPH', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(15, 'Mrs. Valerie Stroman DDS', 'margie77@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pIOhGHh5Ru', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(16, 'Yolanda Rice I', 'jaltenwerth@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1wCmnVT51l', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(17, 'Melyna Windler', 'marvin60@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o8OyQSQ3zl', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(18, 'Albert Johnson', 'ihahn@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vtsvatJVJv', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(19, 'Mrs. Lorine Dooley', 'dianna.nikolaus@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iNpog8SZYZ', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(20, 'Beau Farrell', 'fhyatt@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wfecXuolOk', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(21, 'Prof. Grady Crist MD', 'savanah87@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd7cfpKaxdl', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(22, 'Pauline Will', 'aquitzon@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K7ECOJa0iR', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(23, 'Gerda Borer Sr.', 'tyree37@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KxSq4E7cl6', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(24, 'David Dickinson MD', 'bednar.alena@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3gleYt34vJ', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(25, 'Ayana Zulauf', 'beatty.gia@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rHUTPspRd8', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(26, 'Gaylord Marquardt MD', 'hmurazik@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b409KgEzHC', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(27, 'Kelton Kohler', 'lou43@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0MG5kvrubl', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(28, 'Dr. Erwin Kulas', 'feil.letitia@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OZQt8kTPh5', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(29, 'Tessie Pfeffer', 'bosco.colleen@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r3ghsZ9p19', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(31, 'Charity Price', 'baylee53@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DBgTWkPkz5', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(32, 'Koby Mraz', 'bertram18@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PBORCxcQWZ', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(33, 'Jazlyn Pollich', 'nasir.pagac@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V3PbV3RJKG', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(34, 'Cassie Lang', 'julius.cartwright@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rQbcUVdgY9', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
(35, 'Barrett Carter', 'bashirian.sydnie@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3QZq4ChDtE', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(36, 'Logan Stehr PhD', 'tillman.breanna@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L9oPh91TN6', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(37, 'Harley Bednar', 'mraz.danny@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fMb343fyLO', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(38, 'Kathlyn Howe', 'guy.carroll@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SxEzDohaWP', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(39, 'Rollin Crooks', 'kirk85@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RCJEgCkEEa', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(40, 'Guido Kulas', 'sheridan87@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wkWRxUEMkf', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(41, 'Keaton Kshlerin DDS', 'harvey.erika@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mCaxtvn3TK', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(42, 'Nadia Conroy', 'kattie.kautzer@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '72rLwpz0Ka', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(43, 'Miss Esmeralda Cummerata PhD', 'qbeier@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W7VWiJAQ5a', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(44, 'Miller Lowe', 'runolfsdottir.tom@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DLdR97oIaL', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(45, 'Maverick Hill', 'lysanne.grady@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vFYdHXSYpQ', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(46, 'Vidal Kunze', 'glover.margarett@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8S1TzZBg2F', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(47, 'Shayna Romaguera', 'vcummerata@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g9aZmCgvsY', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(48, 'Fermin Larkin', 'carter.efrain@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PyWtBO6OW9', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(49, 'Zola Conroy', 'abe.macejkovic@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm6L52kvVMX', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(50, 'Adrian Kulas', 'raheem.padberg@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wH35Gmmywb', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03'),
(51, 'seif', 'seif@s.com', 'uploads/users/avatar/default.png', NULL, 0, '$2y$10$AH9IBnziAF4601cnDjYwQuOKbis.wYkH.E9UMBNwAVGcfnWxtH/2K', NULL, '3uWMQK9TmjVPOzNLNRvP4rspSCNQYkeH70V5U0tthwSuR5k4f3', '2021-10-23 18:04:02', '2021-10-23 18:04:02');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_purchases`
-- (See below for the actual view)
--
CREATE TABLE `user_purchases` (
`user_id` bigint(2) unsigned
,`product_id` bigint(20) unsigned
);

-- --------------------------------------------------------

--
-- Structure for view `cart_box`
--
DROP TABLE IF EXISTS `cart_box`;

CREATE VIEW `cart_box`  AS  select `carts`.`id` AS `cart_id`,`carts`.`user_id` AS `user_id`,`carts`.`quantity` AS `quantity`,`product_box`.`pro_id` AS `pro_id`,`product_box`.`pro_name` AS `pro_name`,`product_box`.`pro_des` AS `pro_des`,`product_box`.`pro_details` AS `pro_details`,`product_box`.`pro_price` AS `pro_price`,`product_box`.`new_price` AS `new_price`,`product_box`.`pro_images` AS `pro_images`,`product_box`.`pro_rate` AS `pro_rate`,`product_box`.`new` AS `new`,`product_box`.`offer` AS `offer`,`product_box`.`pro_status` AS `pro_status`,`product_box`.`category_id` AS `category_id`,`product_box`.`cat_name` AS `cat_name`,`product_box`.`cat_header` AS `cat_header`,`product_box`.`cat_status` AS `cat_status` from (`carts` join `product_box` on(`carts`.`product_id` = `product_box`.`pro_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `cart_total_price`
--
DROP TABLE IF EXISTS `cart_total_price`;

CREATE VIEW `cart_total_price`  AS  select `cart_box`.`user_id` AS `user_id`,sum(`cart_box`.`new_price` * `cart_box`.`quantity`) AS `total_price` from `cart_box` group by `cart_box`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `order_box`
--
DROP TABLE IF EXISTS `order_box`;

CREATE VIEW `order_box`  AS  select `orders`.`id` AS `order_id`,`orders`.`total_price` AS `total_price`,`orders`.`if_not_availble` AS `if_not_availble`,`orders`.`destroy_mode` AS `destroy_mode`,`orders`.`date` AS `date`,`orders`.`user_id` AS `user_id`,`users`.`name` AS `name`,`users`.`email` AS `email`,`orders`.`address_id` AS `address_id`,`addresses`.`compony_name` AS `compony_name`,`addresses`.`governorate` AS `governorate`,`addresses`.`block_number` AS `block_number`,`addresses`.`street_address` AS `street_address`,`addresses`.`avenue` AS `avenue`,`addresses`.`building_number` AS `building_number`,`addresses`.`floor` AS `floor`,`addresses`.`phone` AS `phone`,`addresses`.`additional_info` AS `additional_info` from ((`orders` join `users` on(`users`.`id` = `orders`.`user_id`)) join `addresses` on(`addresses`.`id` = `orders`.`address_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `product_box`
--
DROP TABLE IF EXISTS `product_box`;

CREATE VIEW `product_box`  AS  select `products`.`id` AS `pro_id`,`products`.`pro_name` AS `pro_name`,`products`.`pro_des` AS `pro_des`,`products`.`pro_details` AS `pro_details`,`products`.`price` AS `pro_price`,`products`.`new_price` AS `new_price`,`products`.`images` AS `pro_images`,`products`.`rate` AS `pro_rate`,`products`.`new` AS `new`,`products`.`offer` AS `offer`,`products`.`status` AS `pro_status`,`products`.`category_id` AS `category_id`,`categories`.`cat_name` AS `cat_name`,`categories`.`cat_header` AS `cat_header`,`categories`.`status` AS `cat_status` from (`products` join `categories` on(`products`.`category_id` = `categories`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `review_box`
--
DROP TABLE IF EXISTS `review_box`;

CREATE VIEW `review_box`  AS  select `reviews`.`id` AS `re_id`,`reviews`.`re_des` AS `re_des`,`reviews`.`re_rate` AS `re_rate`,`reviews`.`product_id` AS `product_id`,`reviews`.`user_id` AS `user_id`,`users`.`name` AS `name`,`users`.`email` AS `email` from (`reviews` join `users` on(`reviews`.`user_id` = `users`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `user_purchases`
--
DROP TABLE IF EXISTS `user_purchases`;

CREATE VIEW `user_purchases`  AS  select `orders`.`user_id` AS `user_id`,`order_products`.`product_id` AS `product_id` from (`orders` join `order_products` on(`orders`.`id` = `order_products`.`order_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available_times`
--
ALTER TABLE `available_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `available_times`
--
ALTER TABLE `available_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
