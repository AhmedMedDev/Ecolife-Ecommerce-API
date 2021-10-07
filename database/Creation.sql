-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 11:13 PM
-- Server version: 5.7.30-log
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
(1, 'Luettgen-Goodwin', 'Israel', 176, 'Arne Drives', 'Klingfort', '4538', 'Port Gersonchester', '452-339-4207', NULL),
(2, 'Ferry-Funk', 'Cote d\'Ivoire', 1710, 'Malinda Glen', 'Collinschester', '423', 'East Alfredabury', '953.226.6162 x67421', NULL),
(3, 'Deckow-Considine', 'Estonia', 656, 'Fritsch Freeway', 'Wymanfurt', '413', 'Port Claireborough', '1-392-508-6727 x9366', NULL),
(4, 'Kreiger and Sons', 'New Zealand', 326, 'Ankunding Wells', 'Tianatown', '866', 'Jabarichester', '853-395-2690 x29048', NULL),
(5, 'Hintz, Blick and Hettinger', 'Vanuatu', 598, 'Wolf Alley', 'North Murphy', '30606', 'Lake Deshawnmouth', '397.550.5496', NULL),
(6, 'Schroeder and Sons', 'Niue', 286, 'Ritchie Keys', 'Lake Genesischester', '8634', 'Darehaven', '463-661-8950', NULL),
(7, 'Cassin and Sons', 'French Polynesia', 680, 'Flatley Key', 'Meaganmouth', '47257', 'Henrystad', '732-562-6275', NULL),
(8, 'Dickens-Abshire', 'Guadeloupe', 95041, 'Rowe Park', 'Helgafort', '103', 'New Ransomburgh', '556-828-2888 x7004', NULL),
(9, 'Lebsack-Graham', 'Uganda', 424, 'Judson Orchard', 'West Timothy', '84251', 'Cyrusborough', '1-245-484-0665', NULL),
(10, 'Bins, Huel and Terry', 'Bahamas', 254, 'Welch Lake', 'New Albin', '504', 'Hintzport', '649.726.0192 x9188', NULL),
(11, 'McKenzie and Sons', 'Mali', 927, 'Betsy Parkway', 'Oberbrunnerside', '582', 'Port Edstad', '+1-950-609-2054', NULL),
(12, 'Hartmann, Schaefer and Kutch', 'Papua New Guinea', 48421, 'Stroman Circles', 'North Zariachester', '8779', 'North Janetshire', '1-437-625-1772', NULL),
(13, 'Doyle LLC', 'Mozambique', 7650, 'Schinner Branch', 'Ziemannburgh', '169', 'North Ismael', '(512) 912-3202 x389', NULL),
(14, 'Jakubowski, Hagenes and Crooks', 'Central African Republic', 1581, 'Joshuah Wells', 'Kiehnview', '2439', 'Port Keaganfurt', '687-552-7167 x75054', NULL),
(15, 'McLaughlin, Graham and Reinger', 'Bosnia and Herzegovina', 35466, 'Kaelyn Mews', 'Wildermanland', '1403', 'Maudstad', '+12535060041', NULL),
(16, 'Volkman, Spinka and Okuneva', 'Hungary', 8013, 'Jamil Green', 'South Nanniemouth', '4738', 'Pricehaven', '+1-678-510-9592', NULL),
(17, 'Altenwerth-Zemlak', 'Nicaragua', 755, 'Haag Junctions', 'Neldamouth', '7017', 'Lake Joside', '507.902.7943 x054', NULL),
(18, 'Fay, Larson and Ratke', 'Azerbaijan', 242, 'Baumbach Terrace', 'Darenside', '19332', 'Gusikowskiberg', '+16389711091', NULL),
(19, 'Quigley, Fay and Reichert', 'Tajikistan', 8907, 'Douglas Pike', 'East Cordelia', '54570', 'North Charityburgh', '808.628.4453 x149', NULL),
(20, 'Windler LLC', 'Barbados', 2898, 'Delia Garden', 'Tateville', '903', 'Haleyview', '483.274.4460 x153', NULL),
(21, 'Bechtelar, O\'Reilly and Borer', 'Belize', 90115, 'Davonte Trail', 'New Keshaunmouth', '554', 'East Anibal', '1-839-287-2063', NULL),
(22, 'Conn, Ledner and Lang', 'Zimbabwe', 4532, 'Gerda Unions', 'West Tyrese', '805', 'South Freeman', '824-825-6314 x2940', NULL),
(23, 'Parisian-Cartwright', 'Iran', 98832, 'Hannah Loop', 'East Oscarchester', '889', 'Lake Kathleen', '394-537-8398 x48629', NULL),
(24, 'Williamson and Sons', 'Greece', 983, 'Emanuel Hills', 'New Bert', '7400', 'Keeblerburgh', '(513) 737-8687', NULL),
(25, 'Runte PLC', 'Tuvalu', 62657, 'Katlyn Union', 'Cyrilburgh', '4542', 'Port Bella', '341.907.6463', NULL),
(26, 'Wunsch-Bernier', 'Micronesia', 41881, 'Witting Expressway', 'New Gayland', '33894', 'New Elvie', '+1-490-565-3092', NULL),
(27, 'Stokes LLC', 'Tuvalu', 931, 'Nienow Forges', 'South Berry', '4047', 'Tremaineville', '(518) 426-4787 x1218', NULL),
(28, 'Tremblay-Macejkovic', 'Bouvet Island (Bouvetoya)', 18768, 'Bryce Circles', 'West Willardmouth', '8138', 'Libbybury', '+1-451-400-5988', NULL),
(29, 'Hamill-Aufderhar', 'Barbados', 61919, 'Hintz Heights', 'Magnusburgh', '1674', 'Rossiemouth', '+12016377128', NULL),
(30, 'Brekke Ltd', 'Turkey', 782, 'Johns Port', 'Oceanefort', '5163', 'West Stevieport', '948.739.1678 x36716', NULL),
(31, 'Kuvalis-Hilpert', 'Netherlands Antilles', 78298, 'Manuel Place', 'Kristyville', '96996', 'Kubside', '519.802.1466 x5061', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`) VALUES
(1, 6, 1, 2),
(2, 9, 5, 7),
(3, 2, 3, 8),
(4, 8, 12, 3),
(5, 6, 25, 9),
(6, 20, 2, 5),
(7, 1, 23, 10),
(8, 18, 10, 1),
(9, 17, 26, 1),
(10, 16, 19, 7),
(11, 3, 10, 5),
(12, 20, 6, 9),
(13, 13, 18, 2),
(14, 1, 13, 4),
(15, 18, 23, 1),
(16, 20, 6, 1),
(17, 20, 18, 6),
(18, 8, 21, 6),
(19, 20, 30, 2),
(20, 15, 15, 1),
(21, 16, 26, 6),
(22, 10, 12, 5),
(23, 15, 12, 5),
(24, 11, 16, 5),
(25, 13, 16, 4),
(26, 10, 1, 4),
(27, 7, 15, 3),
(28, 9, 14, 2),
(29, 1, 19, 5),
(30, 19, 1, 7);

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
,`pro_images` json
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
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_header`, `status`) VALUES
(1, 'Mrs. Jessyca Reichel DVM', 'Miss Eulah Rogahn', 1),
(2, 'Alaina Block', 'Leopoldo Rath DDS', 1),
(3, 'Delta Hill', 'Cortney Greenfelder', 1),
(4, 'Jayme Heller III', 'Adrain Bosco I', 1),
(5, 'Kory Mohr', 'Ana Ferry', 0),
(6, 'Yasmin Hamill', 'Nelson Beier Sr.', 1),
(7, 'Prof. Amir Walker V', 'Dr. Myah Smitham', 1),
(8, 'Ms. Myrtle Connelly IV', 'Dr. Cathrine Roberts DDS', 0),
(9, 'Edyth Ruecker DDS', 'Dorcas Zieme Jr.', 0),
(10, 'Khalid Barrows', 'Norma Osinski', 0),
(11, 'Kristy D\'Amore', 'Prof. Raphaelle Cummings', 0),
(12, 'Harley Leuschke PhD', 'Prof. Dandre Runolfsson', 0),
(13, 'Lazaro Miller', 'Juston Mayert', 1),
(14, 'Lavern Barrows', 'Sim Kiehn', 1),
(15, 'Rafaela Hermiston', 'Lelia Corwin', 1),
(16, 'Margarett Emmerich', 'Bertram Oberbrunner', 1),
(17, 'Ole Parisian', 'Sammie O\'Reilly', 1),
(18, 'Prof. Hazel Schroeder I', 'Ola Donnelly', 1),
(19, 'Jacinto Jast', 'Edgar Kuhn', 1),
(20, 'Mr. Devan O\'Conner', 'Stacey Schaden', 0),
(21, 'Prof. Neal Stokes', 'Dr. Monte West Jr.', 1),
(22, 'Mr. Adolfo Crona', 'Gretchen Kiehn', 1),
(23, 'Bette Moore', 'Chanelle Klein', 1),
(24, 'Kraig Adams', 'Brenda Hyatt', 1),
(25, 'Brenda Nikolaus', 'Carmelo Huels', 1),
(26, 'Gregorio Hirthe', 'Madonna Bechtelar', 1),
(27, 'Rae Schaden', 'Brittany Price DDS', 0),
(28, 'Chauncey Wehner', 'Shemar Bergnaum', 0),
(29, 'Dr. Izaiah Kunze DDS', 'Keaton Wiegand', 1),
(30, 'Dr. Ladarius Connelly III', 'Jacky O\'Kon', 0),
(31, 'Ole Quigley', 'Ms. Ophelia Jast', 1),
(32, 'Cordell Corkery', 'Breanna Kunze', 1),
(33, 'Mr. Grayson Streich', 'Clinton O\'Kon', 1),
(34, 'Rhea Will DDS', 'Leanna Dicki', 0),
(35, 'Hilario Kunde', 'Prof. Sallie Hansen', 1),
(36, 'Miss Josie Corwin PhD', 'Kennedi Runte', 0),
(37, 'Prof. Alisha Deckow PhD', 'Mrs. Loyce Murazik', 0),
(38, 'Aglae Treutel', 'Flossie Oberbrunner II', 1),
(39, 'Dr. Seth Cassin III', 'Gwen O\'Keefe', 1),
(40, 'Amanda Shanahan', 'Gideon Schuster', 1);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `address_id`, `date`) VALUES
(1, 19, 131, 7, '2007-06-06 07:00:00'),
(2, 18, 93, 7, '1987-10-07 07:00:00'),
(3, 24, 90, 2, '2010-08-28 07:00:00'),
(4, 18, 193, 18, '1994-12-25 08:00:00'),
(5, 5, 90, 1, '2001-08-10 07:00:00'),
(6, 16, 136, 10, '1983-06-13 07:00:00'),
(7, 16, 195, 19, '2021-03-15 07:00:00'),
(8, 12, 160, 7, '1986-08-20 07:00:00'),
(9, 20, 67, 10, '2003-05-09 07:00:00'),
(10, 27, 58, 18, '2015-03-03 08:00:00'),
(11, 12, 127, 15, '2010-08-21 07:00:00'),
(12, 14, 173, 15, '2000-11-25 08:00:00'),
(13, 21, 199, 4, '1987-12-25 08:00:00'),
(14, 9, 96, 17, '1972-07-11 07:00:00'),
(15, 22, 67, 3, '1999-06-28 07:00:00'),
(16, 21, 78, 5, '1973-09-14 07:00:00'),
(17, 27, 109, 19, '1971-10-03 07:00:00'),
(18, 23, 173, 15, '2004-04-14 07:00:00'),
(19, 5, 182, 18, '2003-09-17 07:00:00'),
(20, 6, 195, 6, '1985-01-30 08:00:00'),
(21, 28, 63, 12, '1992-12-27 08:00:00'),
(22, 12, 109, 7, '2012-05-11 07:00:00'),
(23, 18, 195, 17, '1985-04-13 07:00:00'),
(24, 3, 56, 9, '1986-03-04 08:00:00'),
(25, 1, 70, 7, '2019-10-03 07:00:00'),
(26, 26, 116, 8, '1970-06-24 07:00:00'),
(27, 4, 101, 9, '1983-04-24 07:00:00'),
(28, 27, 188, 14, '2007-02-25 08:00:00'),
(29, 25, 133, 15, '1974-06-14 07:00:00'),
(30, 16, 99, 10, '2004-01-29 08:00:00'),
(31, 25, 115, 1, '1970-03-28 07:00:00'),
(32, 22, 150, 5, '1996-07-17 07:00:00'),
(33, 20, 151, 16, '1983-05-29 07:00:00'),
(34, 24, 200, 13, '2015-04-26 07:00:00'),
(35, 15, 138, 14, '1973-01-30 08:00:00'),
(36, 17, 64, 13, '1984-05-31 07:00:00'),
(37, 21, 64, 16, '1971-03-25 07:00:00'),
(38, 28, 62, 5, '2008-09-11 07:00:00'),
(39, 1, 185, 7, '1993-10-22 07:00:00'),
(40, 16, 108, 1, '1976-02-25 08:00:00'),
(41, 4, 127, 1, '1997-12-02 08:00:00'),
(42, 12, 152, 18, '1981-12-24 08:00:00'),
(43, 8, 197, 12, '1976-04-04 07:00:00'),
(44, 5, 178, 20, '1998-04-14 07:00:00'),
(45, 8, 149, 1, '2006-05-16 07:00:00'),
(46, 18, 62, 13, '2016-07-02 07:00:00'),
(47, 13, 156, 15, '1990-04-06 07:00:00'),
(48, 1, 112, 6, '2014-08-08 07:00:00'),
(49, 12, 160, 4, '1985-01-01 08:00:00'),
(50, 1, 79, 15, '1976-08-07 07:00:00'),
(51, 14, 120, 20, '1995-04-24 07:00:00'),
(52, 14, 193, 11, '1976-03-06 08:00:00'),
(53, 26, 52, 13, '2020-04-20 07:00:00'),
(54, 17, 66, 7, '2005-04-22 07:00:00'),
(55, 18, 124, 5, '1970-11-12 08:00:00'),
(56, 12, 176, 10, '1986-09-13 07:00:00'),
(57, 25, 61, 2, '1991-09-24 07:00:00'),
(58, 28, 86, 17, '1985-09-30 07:00:00'),
(59, 30, 173, 11, '1989-07-23 07:00:00'),
(60, 25, 78, 16, '2010-01-12 08:00:00');

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
(1, 7, 8, 5),
(2, 21, 7, 24),
(3, 28, 7, 29),
(4, 1, 9, 3),
(5, 7, 3, 8),
(6, 5, 9, 25),
(7, 1, 8, 3),
(8, 8, 9, 25),
(9, 25, 8, 16),
(10, 29, 7, 28),
(11, 13, 8, 27),
(12, 11, 7, 14),
(13, 15, 9, 8),
(14, 10, 7, 17),
(15, 12, 8, 30),
(16, 8, 2, 3),
(17, 21, 5, 14),
(18, 3, 6, 2),
(19, 28, 1, 14),
(20, 11, 0, 2),
(21, 14, 0, 6),
(22, 7, 3, 15),
(23, 18, 1, 25),
(24, 23, 5, 10),
(25, 2, 0, 28),
(26, 19, 7, 17),
(27, 15, 1, 5),
(28, 27, 3, 27),
(29, 20, 6, 22),
(30, 1, 9, 28);

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
  `images` json NOT NULL,
  `rate` enum('1','2','3','4','5') NOT NULL DEFAULT '4',
  `new` tinyint(4) NOT NULL DEFAULT '0',
  `offer` int(11) DEFAULT '0',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `new_price` float GENERATED ALWAYS AS ((`price` - ((`price` * `offer`) / 100))) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_des`, `pro_details`, `price`, `images`, `rate`, `new`, `offer`, `category_id`, `status`) VALUES
(1, 'Delta Leffler', 'Eveniet eos aut ut et doloremque. Sit quia tempore quo ipsum fugit voluptatum. Aperiam temporibus nihil sint velit quo id cupiditate esse. Blanditiis possimus dolores sequi voluptatem et officiis.', 'Architecto rerum eius qui porro asperiores sunt. Maxime et a aperiam corporis totam libero quo veritatis. Inventore est atque sapiente veniam molestiae soluta. Velit quidem et iusto qui et non.', 73522900, '[\"https://lorempixel.com/283/241/?52246\", \"https://lorempixel.com/283/241/?63730\"]', '3', 1, 12, 5, 0),
(2, 'Garett Spencer', 'Vitae neque voluptatem velit labore. Error voluptatem neque ullam dolor. Eum et debitis autem non perspiciatis labore.', 'Vero molestiae ut nihil odit assumenda sequi numquam. Fugiat et illo accusamus.', 8802, '[\"https://lorempixel.com/283/241/?56385\", \"https://lorempixel.com/283/241/?18547\"]', '3', 0, 41, 5, 1),
(3, 'Eve Denesik Jr.', 'Fuga qui quos praesentium. Placeat et laboriosam quis recusandae dignissimos quia ipsa. Aperiam pariatur neque omnis ad doloribus officiis iste.', 'Id laudantium animi vel provident. Qui enim sed velit qui sint. Et nulla et porro aut. Et quisquam neque possimus maiores occaecati ipsam.', 94470.8, '[\"https://lorempixel.com/283/241/?22348\", \"https://lorempixel.com/283/241/?75240\"]', '2', 0, 12, 4, 1),
(4, 'Leonard Schinner', 'Amet qui quia omnis voluptatibus et facilis. Aut ab rerum harum saepe. Eum deserunt eaque modi. Dolores quia ratione aut eveniet quibusdam. Est totam dolorem esse fuga non reprehenderit tenetur.', 'Excepturi est animi consequuntur. Dolorem voluptatibus numquam doloribus. Suscipit provident quo nulla ea labore. Quos dolorem et ipsum nam libero voluptatem.', 0, '[\"https://lorempixel.com/283/241/?91456\", \"https://lorempixel.com/283/241/?20338\"]', '2', 0, 41, 6, 0),
(5, 'Yesenia Schowalter', 'Est maiores esse officia sit reprehenderit. Error ipsa voluptates possimus quia sit eum ut quis. Qui provident rem possimus alias qui laudantium voluptatem eum.', 'Et nesciunt aperiam enim possimus facere neque fuga asperiores. Et in ullam est placeat. Soluta aut veritatis voluptas porro nemo. Suscipit est reprehenderit porro.', 23827900, '[\"https://lorempixel.com/283/241/?45547\", \"https://lorempixel.com/283/241/?43914\"]', '2', 1, 39, 2, 0),
(6, 'Dr. Claud Monahan Jr.', 'Voluptatem assumenda beatae dicta rerum nisi. Libero doloribus eos officia enim rem.', 'Beatae autem velit pariatur est nihil. Corporis maxime omnis et impedit. Tempore natus alias suscipit a earum sapiente. Incidunt quo voluptatem ut quo a sint.', 74923.9, '[\"https://lorempixel.com/283/241/?98889\", \"https://lorempixel.com/283/241/?56920\"]', '4', 0, 17, 4, 1),
(7, 'Dr. Victoria Runte Jr.', 'Sed animi delectus doloremque id iure quisquam. Quia eum ullam qui ut possimus consequatur perspiciatis. Culpa cum facilis enim id. Nesciunt iste dolor voluptas possimus.', 'Ex voluptatem delectus est sint tenetur quod possimus. Minima reiciendis eum molestiae nisi facilis nobis nemo. Non quia eius dolorem dignissimos assumenda quia.', 4341.32, '[\"https://lorempixel.com/283/241/?29141\", \"https://lorempixel.com/283/241/?30798\"]', '4', 0, 15, 8, 1),
(8, 'Rowena Shanahan', 'Est nobis in est eum et nesciunt rerum. Aut aspernatur omnis unde. Occaecati consequatur facilis ad eos illum suscipit.', 'Dolorem ipsum magnam impedit qui eius beatae. Dolores possimus impedit quisquam laboriosam laboriosam. Ad maxime perspiciatis quo rerum quia est. Reiciendis sapiente at velit eligendi maxime dolores.', 148.626, '[\"https://lorempixel.com/283/241/?51295\", \"https://lorempixel.com/283/241/?16273\"]', '2', 0, 44, 6, 1),
(9, 'Tyrese Ritchie', 'Laudantium adipisci adipisci iusto molestias. Et qui ab quis ipsum autem vitae vel dolor. Dolorem vero eum molestias aut. Sit vel rem accusantium aperiam.', 'Dolorem unde ut sapiente ut libero aut. Modi quo numquam molestiae similique a praesentium. Officiis tenetur vero explicabo qui ducimus. Modi ea consectetur aut perferendis eos.', 54734.4, '[\"https://lorempixel.com/283/241/?29317\", \"https://lorempixel.com/283/241/?40687\"]', '2', 1, 13, 10, 1),
(10, 'Mrs. Lou Leannon', 'Ut et voluptate ut deserunt. Dolore expedita rerum expedita minus ea. Doloremque unde sed aspernatur enim. At natus et eaque natus quia.', 'Facere et illo doloremque mollitia. Sed eos fuga aut cumque sunt. Assumenda id aspernatur error cupiditate quibusdam. Enim est alias possimus quas qui dolores in occaecati.', 2495210, '[\"https://lorempixel.com/283/241/?56334\", \"https://lorempixel.com/283/241/?75545\"]', '5', 0, 17, 3, 0),
(11, 'Kendrick Monahan Jr.', 'Est omnis dignissimos quos et eos dolorum. Eligendi error dolorum ea officiis libero. Culpa saepe nobis voluptas. Expedita perferendis tenetur cumque est.', 'Sit a tempora atque velit possimus quis. Consectetur totam sit necessitatibus mollitia amet voluptates eos.', 270884, '[\"https://lorempixel.com/283/241/?40898\", \"https://lorempixel.com/283/241/?10161\"]', '5', 0, 10, 1, 1),
(12, 'Anastacio Rodriguez', 'Provident et quae commodi qui. Quasi vitae saepe neque dolores fuga.', 'Sunt rerum dolor deleniti quam eveniet qui. Fuga provident quos quaerat nisi quaerat. Eos labore eum eos sint vero reprehenderit qui maxime. Velit ab minus illum provident.', 7222.19, '[\"https://lorempixel.com/283/241/?42949\", \"https://lorempixel.com/283/241/?28785\"]', '1', 1, 35, 8, 0),
(13, 'Hillard Runolfsson', 'Quos autem ut voluptate consequatur. Vero ad velit ut. Quis beatae eum unde fuga eaque ut eligendi.', 'Voluptatem voluptas dicta ut. Nihil magnam et quaerat praesentium. Est id et ut. Sapiente ea eligendi repudiandae quam.', 125.533, '[\"https://lorempixel.com/283/241/?48045\", \"https://lorempixel.com/283/241/?99419\"]', '5', 0, 26, 9, 0),
(14, 'Hailee Purdy', 'Aut cumque qui et. In earum nulla ut accusamus magni ut. Blanditiis minima iure quis aut a.', 'Atque explicabo ducimus labore voluptatibus. Molestiae fuga eum iusto.', 1724260, '[\"https://lorempixel.com/283/241/?45428\", \"https://lorempixel.com/283/241/?63427\"]', '5', 0, 8, 4, 1),
(15, 'Prof. Jaylan Wehner III', 'Sit et aut dolor. Dolorem molestiae in distinctio vero distinctio. Numquam alias ut quo non veritatis ipsa. Deserunt enim velit quia velit laudantium. Sapiente ipsam illo culpa sint rem vel eos.', 'Mollitia iusto nostrum fugit vel possimus. Architecto saepe sint atque qui et. Eius molestiae in et sit voluptatum. Deserunt iusto quia repellendus cum.', 5.94629, '[\"https://lorempixel.com/283/241/?17250\", \"https://lorempixel.com/283/241/?96520\"]', '5', 0, 42, 9, 0),
(16, 'Ms. Bonita Jenkins I', 'Voluptas consequuntur aut sequi porro fugiat laborum itaque. In impedit quis ut temporibus voluptas officia veritatis. Labore ea autem consequatur qui.', 'Quae voluptas modi corporis incidunt placeat. Sint eum possimus sit sed. Occaecati commodi repellat doloribus et et rerum. Odio sapiente sint quisquam et.', 2265110, '[\"https://lorempixel.com/283/241/?79748\", \"https://lorempixel.com/283/241/?58050\"]', '1', 0, 17, 10, 0),
(17, 'Felicia Williamson', 'Eligendi est enim numquam blanditiis ab consequuntur soluta. Aut est iusto dolor modi dolores. Tenetur consequatur harum dolorum sequi voluptatum. Quis doloribus unde quo ut vel consequatur aut.', 'Unde enim quae quasi corporis id in. Corporis quibusdam omnis sequi excepturi cum dignissimos. Beatae atque repudiandae incidunt eveniet qui dolores aut. Fuga in et consectetur voluptatum.', 74763.6, '[\"https://lorempixel.com/283/241/?10900\", \"https://lorempixel.com/283/241/?61427\"]', '1', 1, 50, 9, 0),
(18, 'Chasity Waters Jr.', 'Doloribus nihil accusamus qui. Et distinctio nihil laboriosam distinctio natus. Asperiores dolore corporis molestiae. Qui incidunt veritatis maiores.', 'Dolor aliquam quia eos sunt vel reprehenderit. Est animi quos blanditiis est ex quia pariatur cupiditate. Distinctio aut laboriosam amet et dignissimos. Eaque consequatur culpa temporibus quisquam.', 89040600, '[\"https://lorempixel.com/283/241/?71510\", \"https://lorempixel.com/283/241/?64649\"]', '1', 1, 12, 2, 1),
(19, 'Mr. Chester Glover II', 'Iure dolores aliquid dolor consequatur labore voluptatem. Sed sed molestias aut aut. Voluptates hic ut enim dolorum maxime. Nisi necessitatibus maxime expedita eos facere praesentium dolor dolor.', 'Vel cum fugit soluta vel et. Fugit autem vel nostrum occaecati. Occaecati natus sint dolores odit animi est et velit. Exercitationem voluptatem asperiores natus dolorem.', 1205580, '[\"https://lorempixel.com/283/241/?39297\", \"https://lorempixel.com/283/241/?24237\"]', '2', 0, 26, 2, 0),
(20, 'Davion Abernathy', 'Praesentium non ut doloribus iste ut unde est autem. Veritatis veniam qui quae illum quas.', 'Eligendi ut maxime iste architecto vero ipsam. Deserunt cumque sint voluptate quas voluptas possimus. Deserunt qui repellendus est porro. Suscipit qui corporis modi et.', 6749.8, '[\"https://lorempixel.com/283/241/?42787\", \"https://lorempixel.com/283/241/?76479\"]', '2', 1, 18, 1, 0),
(21, 'Miss Tiara Shanahan DVM', 'Alias aliquid voluptas deleniti neque et eligendi. Aperiam commodi incidunt numquam omnis modi. Doloremque hic et praesentium praesentium commodi quia qui.', 'Nemo inventore soluta tempora sunt voluptatibus ut quia. Culpa ab voluptas soluta quis omnis aliquid distinctio.', 30.4907, '[\"https://lorempixel.com/283/241/?22219\", \"https://lorempixel.com/283/241/?29754\"]', '3', 1, 44, 7, 1),
(22, 'Amy Kassulke', 'Eos qui quidem reiciendis atque. Corrupti laborum autem excepturi quaerat mollitia qui. Expedita sunt rerum non consequatur rerum delectus a.', 'Veritatis ipsum nesciunt ut officiis. Est et ad rerum possimus. Temporibus aut nulla voluptas et repudiandae aperiam fuga. Quae aut et ut eos et sequi.', 7662.31, '[\"https://lorempixel.com/283/241/?97495\", \"https://lorempixel.com/283/241/?31517\"]', '1', 1, 45, 8, 1),
(23, 'Ardith Kunde V', 'Reiciendis id quia dolorem. Sit aut doloribus voluptatum et quis reiciendis iusto culpa. In voluptatem dolores iusto omnis et mollitia dolor ipsam.', 'Iste reiciendis omnis fugit aut eveniet inventore et est. Consequatur mollitia sint ut repudiandae quis qui cumque. Nesciunt rem voluptate voluptas ut. Quo debitis et aperiam fugit rerum.', 117569000, '[\"https://lorempixel.com/283/241/?87944\", \"https://lorempixel.com/283/241/?53933\"]', '2', 0, 21, 3, 0),
(24, 'Prof. Ethan Upton DDS', 'Occaecati officia voluptas facilis voluptas ab quis. Quam quibusdam quia consequatur occaecati. Ipsum consectetur error inventore. Eveniet delectus velit qui. Cum quasi vel et.', 'Omnis commodi rem in. Laboriosam qui dolores esse incidunt. Perferendis nemo molestias hic quia. Voluptas expedita dolores quam non rem aut.', 126037000, '[\"https://lorempixel.com/283/241/?17779\", \"https://lorempixel.com/283/241/?13477\"]', '3', 0, 21, 4, 1),
(25, 'Lavina Kovacek', 'Error et voluptatem vitae rem nesciunt consequuntur ducimus id. Quod nesciunt placeat architecto earum velit sed voluptate libero. Aut magnam repudiandae voluptate amet fugiat sit harum.', 'Beatae blanditiis nesciunt in nihil ut et. Error maiores ad autem. Odit harum ipsum totam saepe. Beatae aut ex labore maxime eos excepturi.', 101302000, '[\"https://lorempixel.com/283/241/?33408\", \"https://lorempixel.com/283/241/?21455\"]', '5', 0, 7, 3, 0),
(26, 'Madelynn Sanford', 'Eius et ut asperiores ipsam et molestias ut iste. Ullam quam repellendus aspernatur fuga. Deserunt natus repudiandae accusantium sed. Doloribus est similique sunt qui.', 'Asperiores expedita dicta et totam ab. Sint quisquam quae accusamus. Et dolorem cumque non iure. Veniam rerum aut dolorum in omnis deserunt dolorem.', 34996200, '[\"https://lorempixel.com/283/241/?17288\", \"https://lorempixel.com/283/241/?52152\"]', '5', 1, 34, 6, 1),
(27, 'Dr. Earnestine Balistreri IV', 'Repellendus iusto non animi placeat nihil. Laboriosam sint itaque quis. Qui consequuntur nihil dolores perferendis tenetur minima. Tenetur iusto cupiditate delectus est voluptatem.', 'Nihil amet id et repudiandae. Ullam voluptates tempore perferendis nihil et.', 36445200, '[\"https://lorempixel.com/283/241/?29465\", \"https://lorempixel.com/283/241/?57739\"]', '3', 0, 29, 5, 1),
(28, 'Iliana Schowalter DVM', 'Officiis quos omnis et ratione aperiam repudiandae doloribus. Praesentium rerum tempora officia odio dolore quis. Est quia velit dolore aperiam.', 'Harum neque provident iusto dolore aliquid. Nobis dolores eum ducimus omnis. Iusto quia quos ex odit.', 30.7297, '[\"https://lorempixel.com/283/241/?17265\", \"https://lorempixel.com/283/241/?75107\"]', '4', 0, 42, 8, 0),
(29, 'Braxton Cole', 'Quis veniam eum magnam provident veniam debitis tempore. Provident ut nam voluptate quibusdam quibusdam rem sit. Occaecati voluptatum rerum et eaque non quam. Illo fuga velit animi.', 'Quidem dolores nesciunt optio et explicabo ratione id. Aut accusantium iste ea quas. Facilis molestiae deserunt error eum aspernatur eligendi. Aut vitae voluptas ad libero.', 131583, '[\"https://lorempixel.com/283/241/?67876\", \"https://lorempixel.com/283/241/?39261\"]', '4', 1, 13, 9, 1),
(30, 'Miss Aryanna Schimmel', 'Quaerat exercitationem tempore et laboriosam velit magnam. Veniam unde quaerat dolores vitae. Occaecati recusandae praesentium nobis.', 'Quis saepe illo natus. Dolor ut voluptatibus nisi quia est. Rerum necessitatibus vel dicta reiciendis quia.', 16308.2, '[\"https://lorempixel.com/283/241/?57794\", \"https://lorempixel.com/283/241/?82476\"]', '3', 1, 19, 6, 0);

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
,`pro_images` json
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
(1, 'Quo laboriosam iste distinctio illo explicabo dolores unde. Quia ullam distinctio blanditiis animi deleniti consequatur. Suscipit dolorem dolores beatae cupiditate quia blanditiis fugit. Sint laudantium ut sunt aperiam.', '1', 3, 18),
(2, 'Mollitia iusto accusantium non repellendus ut. Similique assumenda voluptatum perferendis natus nulla.', '5', 11, 9),
(3, 'Ipsam et reprehenderit quia voluptas rem. Ratione inventore similique fugit iure hic. Similique maxime id quo qui aut. Voluptatem mollitia sunt suscipit mollitia qui laudantium.', '2', 18, 28),
(4, 'Vero sed vel nostrum est placeat rem illum fugit. Est totam dolor eius quia sunt autem ab.', '3', 15, 19),
(5, 'Corrupti ea molestiae ut et ut. Aut commodi sit occaecati consequatur. Ullam sit perferendis exercitationem culpa eaque unde minima.', '5', 15, 20),
(6, 'Dolores cupiditate ea minima veritatis cumque tempore voluptas. Laborum dolor et assumenda nihil amet. Quia voluptas esse recusandae sed soluta. Odit consequuntur voluptatem sunt enim sed est.', '1', 17, 29),
(7, 'Nobis ipsam id ut id dolores. Officia natus molestiae minus vel. Enim quidem veniam omnis labore aut hic. Eos dignissimos delectus nihil et fugit.', '5', 1, 12),
(8, 'Maiores nesciunt sed provident consequatur sunt molestias et. Aut dolorem vero ipsa. Fugit eligendi cum necessitatibus laborum qui sunt at.', '1', 8, 12),
(9, 'Tempora ut inventore est quidem autem qui illo. Provident labore accusantium et quia aperiam voluptas provident tempora. Sint est est ad consectetur quibusdam.', '2', 10, 6),
(10, 'Maiores debitis sint libero quibusdam quisquam iusto. Corporis sunt voluptatum vel sed cupiditate aut sapiente. Et est quia libero quia cumque libero facere. Impedit ab praesentium est est quas.', '2', 6, 4),
(11, 'Cum qui voluptatem commodi consectetur aperiam ratione ut. Sed voluptas nostrum eius maiores rerum dolores possimus eos. Saepe porro iste minima illo ut. Voluptatem et ullam quis ea.', '1', 4, 21),
(12, 'Optio asperiores libero qui aut nesciunt assumenda. Laborum non dignissimos odio expedita sed repudiandae. Aut eos maxime velit eligendi.', '4', 12, 19),
(13, 'Error ipsam ut voluptas corporis tenetur. Ut maxime iure eligendi enim. Perferendis et excepturi odio. Id quam et temporibus odio. Tenetur maxime perspiciatis ipsum.', '4', 9, 21),
(14, 'Occaecati sed amet unde est. Qui neque illo rem animi quisquam sequi voluptatem omnis. Ut sit voluptatem et earum quos unde vero.', '4', 5, 10),
(15, 'Minima magni autem reiciendis ea velit quos sapiente. Natus deleniti qui quibusdam dolores et eius.', '4', 20, 18),
(16, 'Veritatis ut voluptatum optio eos rerum dolorem. Culpa excepturi omnis doloremque eos. Aperiam inventore ipsam in blanditiis velit. Quasi itaque aspernatur alias fugiat.', '2', 11, 18),
(17, 'Temporibus qui maiores ut mollitia vero inventore occaecati et. Quo excepturi quas ea ratione accusamus. Dolor quisquam ab porro quasi ea. Rerum molestiae nulla magni architecto.', '2', 11, 25),
(18, 'Deserunt voluptatibus quasi ut. Quia vero voluptatem voluptatem dolorem. Nam dolores aut ab earum aperiam ut.', '2', 5, 25),
(19, 'Assumenda facere ducimus fugiat cupiditate et cum. Eum autem exercitationem sequi voluptas. Ratione at dignissimos adipisci cum. Voluptatem labore ex est error.', '3', 8, 15),
(20, 'Est accusamus qui quia rerum. Quia cumque nisi quae suscipit accusamus mollitia. Perspiciatis saepe similique nihil nemo sit et eveniet. Est quis magnam et deserunt provident non deserunt.', '2', 12, 28),
(21, 'Vel magni laboriosam fugiat. Accusamus quisquam eum exercitationem velit iusto odio. Veritatis rerum dolore error velit reiciendis culpa magni architecto. Veritatis eum eligendi quasi molestiae.', '2', 8, 24),
(22, 'Asperiores quisquam sequi et rerum accusamus rerum aliquam. Facere impedit magni ipsa. Omnis repudiandae illo ad eligendi.', '3', 6, 28),
(23, 'Eveniet voluptate ut ut vel ut quod in. Expedita pariatur impedit deleniti in nihil aliquam asperiores. Dolores quia animi cupiditate recusandae qui minima. Voluptate perferendis explicabo voluptas dolores enim ducimus doloribus.', '5', 16, 5),
(24, 'Id sapiente reiciendis harum cupiditate beatae magnam vel. Ipsum eaque sunt voluptatem. Repudiandae nobis enim est beatae et dicta asperiores.', '5', 3, 24),
(25, 'Maxime ab non fugit rerum quia. Temporibus quis voluptas rem id. Omnis fugiat molestias quae quis rerum autem doloribus.', '5', 19, 7),
(26, 'Ea ratione id non in voluptas. Labore tempora dolor dolore voluptatibus dolores.', '2', 5, 14),
(27, 'Voluptas et quidem et quas et doloribus ea. Tempora omnis accusamus eos facere id et maxime. Atque ut cupiditate vero corporis.', '3', 7, 11),
(28, 'Sint nisi maiores ipsam aliquid. Eveniet quae perferendis labore expedita et.', '3', 10, 13),
(29, 'Cum placeat voluptatum aliquid maiores illum non sapiente. Eos accusantium quo fugit quasi. Laudantium magni quo eveniet veritatis cumque est. Est itaque expedita est temporibus iure rerum sint. Atque distinctio voluptatem et natus corrupti.', '2', 6, 30),
(30, 'Reiciendis voluptatem fugit at corrupti non modi. Consequatur modi et explicabo non excepturi. Praesentium aperiam dignissimos quod labore incidunt rerum. Ipsum accusantium nihil impedit eveniet dolores asperiores.', '5', 3, 17),
(31, 'Quod dolores eos ratione. Voluptatem facilis illum perspiciatis at molestias. Numquam et ut dolor quo reiciendis in. Voluptatem aspernatur error aut. Et voluptates quisquam deserunt.', '5', 15, 12),
(32, 'Qui accusantium dolore consequatur. Fugit numquam dolorem a et delectus nobis. Libero nostrum enim delectus hic aut nihil ad. Voluptas veritatis unde nemo laudantium quia quidem perspiciatis.', '4', 16, 14),
(33, 'Eaque ut tenetur molestias est totam veniam. Odio nemo illo soluta facere non libero earum. Nihil molestiae culpa eos sed ullam sapiente.', '5', 6, 18),
(34, 'Consequatur molestias voluptatibus in earum exercitationem. Id quam et vel est quam unde. Perferendis et beatae sunt facilis animi ab. Consequuntur sunt et error qui beatae. Nihil ut ipsam provident iusto.', '4', 4, 26),
(35, 'Vero odio quod omnis. Saepe fugiat ad quisquam eius est. Iure voluptas est perspiciatis accusamus. Nemo cum quis aut. Consequatur dolorum natus ea cum soluta.', '3', 13, 2),
(36, 'Tempora libero ratione libero et rerum fuga illo. Maxime ipsam accusamus explicabo est sit quae. Assumenda aut exercitationem qui iure assumenda voluptatibus officia. Nobis sit repellat in aut.', '1', 1, 21),
(37, 'Et vero quod neque sequi et ipsum. Voluptatibus rerum error modi facilis in. Ad dolore repellendus saepe non voluptates voluptatem. Quod et molestiae ratione. Rem voluptatem veritatis dolorem voluptatem.', '2', 4, 16),
(38, 'Sit quos alias quis minima dolor iste. Consequatur alias neque assumenda laudantium rerum. Est est esse pariatur dolor consequatur.', '2', 4, 6),
(39, 'Veritatis quisquam asperiores qui esse tempora et dolor. Voluptas et nihil ut quis ut dignissimos. Blanditiis cumque sunt omnis sint autem. Ut quidem fuga sapiente ratione fugiat.', '3', 1, 4),
(40, 'Doloremque minima dolore mollitia. Rerum sit et voluptatem quasi. Sapiente laudantium atque est cumque. Quam quae temporibus assumenda delectus ut nam.', '3', 3, 19);

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
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
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
(1, 'Berry Murray', 'edna50@example.net', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oeGSgMwFoL', NULL, '2021-10-08 04:11:01', '2021-10-08 04:11:01'),
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
(30, 'Keshawn Runolfsson', 'romaguera.hallie@example.com', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lfZbwHsdvt', NULL, '2021-10-08 04:11:02', '2021-10-08 04:11:02'),
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
(50, 'Adrian Kulas', 'raheem.padberg@example.org', 'uploads/users/avatar/default.png', '2021-10-08 04:11:01', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wH35Gmmywb', NULL, '2021-10-08 04:11:03', '2021-10-08 04:11:03');

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cart_box`  AS  select `carts`.`id` AS `cart_id`,`carts`.`user_id` AS `user_id`,`carts`.`quantity` AS `quantity`,`product_box`.`pro_id` AS `pro_id`,`product_box`.`pro_name` AS `pro_name`,`product_box`.`pro_des` AS `pro_des`,`product_box`.`pro_details` AS `pro_details`,`product_box`.`pro_price` AS `pro_price`,`product_box`.`new_price` AS `new_price`,`product_box`.`pro_images` AS `pro_images`,`product_box`.`pro_rate` AS `pro_rate`,`product_box`.`new` AS `new`,`product_box`.`offer` AS `offer`,`product_box`.`pro_status` AS `pro_status`,`product_box`.`category_id` AS `category_id`,`product_box`.`cat_name` AS `cat_name`,`product_box`.`cat_header` AS `cat_header`,`product_box`.`cat_status` AS `cat_status` from (`carts` join `product_box` on((`carts`.`product_id` = `product_box`.`pro_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `cart_total_price`
--
DROP TABLE IF EXISTS `cart_total_price`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cart_total_price`  AS  select `cart_box`.`user_id` AS `user_id`,sum((`cart_box`.`new_price` * `cart_box`.`quantity`)) AS `total_price` from `cart_box` group by `cart_box`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `product_box`
--
DROP TABLE IF EXISTS `product_box`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_box`  AS  select `products`.`id` AS `pro_id`,`products`.`pro_name` AS `pro_name`,`products`.`pro_des` AS `pro_des`,`products`.`pro_details` AS `pro_details`,`products`.`price` AS `pro_price`,`products`.`new_price` AS `new_price`,`products`.`images` AS `pro_images`,`products`.`rate` AS `pro_rate`,`products`.`new` AS `new`,`products`.`offer` AS `offer`,`products`.`status` AS `pro_status`,`products`.`category_id` AS `category_id`,`categories`.`cat_name` AS `cat_name`,`categories`.`cat_header` AS `cat_header`,`categories`.`status` AS `cat_status` from (`products` join `categories` on((`products`.`category_id` = `categories`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `review_box`
--
DROP TABLE IF EXISTS `review_box`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `review_box`  AS  select `reviews`.`id` AS `re_id`,`reviews`.`re_des` AS `re_des`,`reviews`.`re_rate` AS `re_rate`,`reviews`.`product_id` AS `product_id`,`reviews`.`user_id` AS `user_id`,`users`.`name` AS `name`,`users`.`email` AS `email` from (`reviews` join `users` on((`reviews`.`user_id` = `users`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `user_purchases`
--
DROP TABLE IF EXISTS `user_purchases`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_purchases`  AS  select `orders`.`user_id` AS `user_id`,`order_products`.`product_id` AS `product_id` from (`orders` join `order_products` on((`orders`.`id` = `order_products`.`order_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;