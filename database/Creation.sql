-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2021 at 08:58 PM
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

--
-- Dumping data for table `available_times`
--

INSERT INTO `available_times` (`id`, `time`) VALUES
(5, '2:4'),
(6, '555555'),
(7, '44444');

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
(43, 114, 51, 1),
(44, 116, 51, 1),
(45, 113, 1, 1);

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
(43, 'soft drinks', 'drinks', 1),
(44, 'cat 2', 'main cat 2', 1),
(47, 'tasub@mailinator.com', 'qabisa@mailinator.com', 0),
(48, 'Yolanda Waelchi', 'Julien Klein', 1),
(49, 'Sim Zboncak', 'Mr. Larue Stokes PhD', 0),
(50, 'Rigoberto Spinka', 'Christop Morar', 1),
(51, 'Hobart Boyle', 'Brycen Nikolaus', 0),
(52, 'Raheem Prosacco', 'Jovany Gusikowski', 1),
(53, 'Colby Greenholt', 'Aditya Hermiston', 0),
(54, 'Ms. Alyce Gusikowski Sr.', 'Delta Hartmann', 1),
(55, 'Norberto Cartwright', 'Mario Kuhn IV', 0),
(56, 'Orpha Bruen', 'Claud Jones', 1),
(57, 'Bettie Walter', 'Mr. Fermin Parker Sr.', 1);

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
(110, 'Joany Murray', 'Dolor aut repellat earum ad.', 'Soluta vero omnis nulla aperiam numquam laboriosam perspiciatis. Illum impedit quo blanditiis. In sint dolores soluta quia et deleniti fugit ipsa. Eius ut ea ea illo atque quibusdam.', 4013, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?46983\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?28780\"]', '3', 1, 42, 49, 1),
(111, 'Mr. Korey Wolf', 'Laborum enim cumque ex saepe.', 'Qui ut doloremque ut non. Placeat maxime reprehenderit nihil totam. Iusto voluptas provident illum et harum. Nihil neque error voluptate magnam.', 477, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?88033\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?25351\"]', '4', 0, 31, 56, 1),
(112, 'Mrs. Clementine Heller DDS', 'Sit sequi dolor non debitis minima eum.', 'Autem in qui qui voluptatem cumque quis fugiat. Dolorem iure ipsum deserunt quo natus ut. Esse praesentium asperiores dolor. Et eos dolor qui adipisci et.', 2603, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?94779\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?48825\"]', '3', 0, 14, 47, 1),
(113, 'Augustus Murazik', 'Numquam voluptas doloribus eaque consequatur consequatur optio deleniti.', 'Dicta ut eligendi provident sapiente tempore. Architecto recusandae sint ea aut.', 482, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?75738\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?33985\"]', '1', 1, 5, 48, 0),
(114, 'Mrs. Dawn Goldner MD', 'Autem incidunt voluptas unde.', 'Doloremque optio non odio. Aliquid et qui modi commodi qui. Quibusdam suscipit sunt facilis velit qui. Exercitationem voluptas et optio quia debitis.', 2629, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?13247\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?94646\"]', '5', 1, 23, 44, 1),
(115, 'Camren Gulgowski', 'Numquam aut aut et enim.', 'Explicabo est at cumque dolor. Modi sapiente dolor alias accusamus. Dolorem debitis assumenda non quibusdam. Enim impedit doloribus earum et.', 3493, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?30212\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?43854\"]', '2', 0, 5, 44, 0),
(116, 'Ms. Michelle McDermott', 'Vero quibusdam maxime saepe aliquam sed nesciunt asperiores quos.', 'Dolorem sed a quis repellat quo doloremque. Sed aliquid hic at molestiae natus voluptatem doloribus voluptatum. Qui ipsum laborum vitae quis.', 4726, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?66743\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?23221\"]', '1', 1, 45, 53, 0),
(117, 'Savanna Collier', 'Quis dicta quas molestiae distinctio magnam et.', 'Harum explicabo atque ut magni ex nam facere. Quisquam sed omnis neque exercitationem molestiae reprehenderit dolor aut.', 404, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?57366\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?99288\"]', '5', 1, 11, 49, 0),
(118, 'Salma Hand MD', 'Voluptatum cupiditate vitae ut perferendis deserunt.', 'Ad explicabo repellat doloremque animi neque et. Velit odit debitis totam ipsam aliquam.', 3488, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?11468\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?41311\"]', '5', 1, 42, 46, 0),
(119, 'Myles Schinner', 'Quo alias sed doloribus dolorem nihil.', 'Necessitatibus pariatur quam quis aperiam totam repudiandae. Quis distinctio perferendis consequatur magnam. Molestias aut necessitatibus ab est harum.', 2405, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?36184\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?10177\"]', '5', 1, 16, 46, 0),
(120, 'Josue Kreiger', 'Possimus corrupti nisi doloremque ex.', 'Qui eum qui aut laborum cupiditate consequatur. Debitis a sunt ut ipsa. Iure porro consequuntur officia tempora reiciendis.', 1301, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?46846\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?30145\"]', '1', 1, 25, 52, 0),
(121, 'Earline Nitzsche', 'Officiis hic voluptatem explicabo laudantium.', 'Dolorem dicta qui nulla cum pariatur illo. Illo modi et est neque ab dolorum. Fuga minus porro molestias dolor consequuntur aspernatur.', 3067, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?72100\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?45395\"]', '2', 1, 12, 43, 0),
(122, 'Tad Hintz', 'Eum pariatur ducimus omnis in.', 'Enim autem laborum ut sint consequuntur. Minima quia quasi sed ut voluptatem. Omnis dolorem laborum sit ea non quos dolores.', 1738, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?82324\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?82371\"]', '3', 1, 15, 51, 1),
(123, 'Luciano Reilly', 'Placeat omnis laboriosam sunt placeat reprehenderit accusamus vitae.', 'Minima consequuntur aliquam qui cupiditate saepe deserunt. Repudiandae voluptatem aliquid sequi nihil. Quia pariatur aut dolorem et. Sed atque inventore architecto aut. Qui voluptas beatae nihil.', 2762, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?24174\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?33371\"]', '3', 0, 39, 53, 0),
(124, 'Clint Jast', 'Perspiciatis et quo quibusdam ut.', 'Rerum est animi minima sapiente deserunt mollitia ipsum eum. Ab aut nobis eaque atque. In qui ipsum libero velit ipsam necessitatibus harum. Voluptatem iure libero nulla vel odit beatae sed.', 4282, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?56627\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?54411\"]', '5', 0, 20, 46, 0),
(125, 'Brando Hauck', 'Et est rerum voluptas ut voluptas temporibus.', 'Occaecati dolores non veritatis amet occaecati ea itaque provident. Rerum nam commodi tempora amet totam. Quaerat sit odit ut omnis est culpa ipsum.', 788, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?97509\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?89561\"]', '3', 1, 18, 54, 1),
(126, 'Samir Fritsch', 'Iusto sit molestias et.', 'Ut rerum nam unde nostrum placeat. Et quia est sed. Iure vero nulla veniam nesciunt harum.', 3254, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?37427\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?63312\"]', '4', 0, 21, 45, 0),
(127, 'Mekhi Hauck', 'Quidem autem et neque hic ut accusantium dolore.', 'Nihil nemo enim ut dolorum est. Quisquam enim reiciendis et nulla culpa repellendus repellendus. Quia nostrum est ducimus magni.', 3305, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?88205\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?91218\"]', '4', 0, 14, 51, 0),
(128, 'Triston Feeney V', 'Et minus dolor esse cum.', 'Doloremque similique omnis beatae aut ut pariatur quo cumque. Facere sit adipisci tenetur. Quos debitis nihil qui sit esse sed quam.', 4823, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?86712\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?92231\"]', '3', 1, 31, 57, 1),
(129, 'Elna Hermiston', 'Architecto exercitationem aut dicta inventore.', 'Neque magnam quas nihil. Et eos molestiae veritatis voluptatem et omnis dolorem. Veritatis ipsam perspiciatis ut aut debitis odit. Molestiae consequatur et accusamus aperiam.', 925, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?94110\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?18014\"]', '3', 0, 46, 51, 1),
(130, 'Prof. Priscilla Labadie IV', 'Et vel exercitationem incidunt tenetur consequatur ea nostrum.', 'Eos deleniti nihil voluptas. Illum sapiente est beatae. Mollitia totam qui molestias officiis quasi.', 4048, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?58698\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?71514\"]', '3', 1, 8, 57, 1),
(131, 'Johnathon Stamm', 'Illo quo earum id tempore quasi velit.', 'Ea fuga ut ea sint nostrum. Consequatur nemo aliquam fugiat voluptatem eos aut. Itaque quos debitis iste laborum odio quo voluptatem.', 1123, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?90746\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?23809\"]', '1', 0, 24, 46, 0),
(132, 'Hailey Krajcik', 'Occaecati quia quam unde et.', 'Corrupti exercitationem sed similique dicta earum dicta nisi molestiae. Impedit ea dolor hic possimus molestiae dignissimos. Ut et aut non. Minus dolorem animi deserunt nostrum blanditiis.', 1470, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?41025\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?80526\"]', '1', 0, 35, 49, 0),
(133, 'Alfredo Shanahan', 'Suscipit pariatur eius mollitia animi tenetur quae voluptatem.', 'Nobis quia enim qui voluptas aliquam. Accusamus necessitatibus aut labore molestiae adipisci. Ut est pariatur atque aut accusantium.', 2153, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?99795\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?54545\"]', '3', 1, 35, 54, 0),
(134, 'Wyman Farrell', 'Quam aut soluta consequuntur et debitis sed asperiores explicabo.', 'Et quia magnam doloremque quo reprehenderit molestias nihil. Natus iure sed assumenda nobis eum. Vel voluptate ducimus aut odit voluptas eveniet. Repellendus optio et fuga.', 928, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?10582\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?20584\"]', '4', 1, 8, 52, 0),
(135, 'Miguel Bauch', 'Eos laborum voluptatum perferendis voluptas sed quos.', 'Reprehenderit dolores dicta illum qui natus qui sunt eos. Et quas et omnis architecto nam et. Voluptate numquam sapiente ea deserunt.', 3304, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?24905\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?90215\"]', '1', 1, 12, 57, 1),
(136, 'Dr. Raleigh Schuppe DDS', 'Magni aliquam non ratione dolor qui asperiores.', 'Totam sapiente earum ab in aut. Dolores nostrum est facilis impedit harum aut est. Animi aut ut minus facere. Vitae libero culpa tempore.', 4400, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?93423\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?44407\"]', '4', 1, 14, 48, 1),
(137, 'Mr. Timmy Balistreri Sr.', 'Omnis hic libero qui voluptatem magni.', 'Optio ab officia labore minima expedita beatae. Quia nam sint suscipit accusamus sequi asperiores id dolorem. Libero quia animi et sed quidem pariatur.', 3042, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?13224\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?95376\"]', '1', 0, 8, 46, 0),
(138, 'Jovani Baumbach', 'Velit dignissimos nihil itaque quia.', 'Quos ea atque sint et natus facilis ab veritatis. Voluptatibus et velit rerum perferendis qui voluptatem. Minima laborum sint tenetur maxime officia. Asperiores optio recusandae error.', 4098, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?96122\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?54657\"]', '5', 0, 24, 57, 1),
(139, 'Ettie Wilkinson', 'Et doloremque eius pariatur sint.', 'Delectus ipsam optio est quibusdam modi quos. Aspernatur sint fuga odit eos libero numquam. Soluta nostrum sit molestiae animi cumque. Architecto quaerat consequatur magnam quidem facere.', 3445, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?59544\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?61711\"]', '2', 1, 24, 54, 1);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cart_box`  AS  select `carts`.`id` AS `cart_id`,`carts`.`user_id` AS `user_id`,`carts`.`quantity` AS `quantity`,`product_box`.`pro_id` AS `pro_id`,`product_box`.`pro_name` AS `pro_name`,`product_box`.`pro_des` AS `pro_des`,`product_box`.`pro_details` AS `pro_details`,`product_box`.`pro_price` AS `pro_price`,`product_box`.`new_price` AS `new_price`,`product_box`.`pro_images` AS `pro_images`,`product_box`.`pro_rate` AS `pro_rate`,`product_box`.`new` AS `new`,`product_box`.`offer` AS `offer`,`product_box`.`pro_status` AS `pro_status`,`product_box`.`category_id` AS `category_id`,`product_box`.`cat_name` AS `cat_name`,`product_box`.`cat_header` AS `cat_header`,`product_box`.`cat_status` AS `cat_status` from (`carts` join `product_box` on(`carts`.`product_id` = `product_box`.`pro_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `cart_total_price`
--
DROP TABLE IF EXISTS `cart_total_price`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cart_total_price`  AS  select `cart_box`.`user_id` AS `user_id`,sum(`cart_box`.`new_price` * `cart_box`.`quantity`) AS `total_price` from `cart_box` group by `cart_box`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `order_box`
--
DROP TABLE IF EXISTS `order_box`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_box`  AS  select `orders`.`id` AS `order_id`,`orders`.`total_price` AS `total_price`,`orders`.`if_not_availble` AS `if_not_availble`,`orders`.`destroy_mode` AS `destroy_mode`,`orders`.`date` AS `date`,`orders`.`user_id` AS `user_id`,`users`.`name` AS `name`,`users`.`email` AS `email`,`orders`.`address_id` AS `address_id`,`addresses`.`compony_name` AS `compony_name`,`addresses`.`governorate` AS `governorate`,`addresses`.`block_number` AS `block_number`,`addresses`.`street_address` AS `street_address`,`addresses`.`avenue` AS `avenue`,`addresses`.`building_number` AS `building_number`,`addresses`.`floor` AS `floor`,`addresses`.`phone` AS `phone`,`addresses`.`additional_info` AS `additional_info` from ((`orders` join `users` on(`users`.`id` = `orders`.`user_id`)) join `addresses` on(`addresses`.`id` = `orders`.`address_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `product_box`
--
DROP TABLE IF EXISTS `product_box`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_box`  AS  select `products`.`id` AS `pro_id`,`products`.`pro_name` AS `pro_name`,`products`.`pro_des` AS `pro_des`,`products`.`pro_details` AS `pro_details`,`products`.`price` AS `pro_price`,`products`.`new_price` AS `new_price`,`products`.`images` AS `pro_images`,`products`.`rate` AS `pro_rate`,`products`.`new` AS `new`,`products`.`offer` AS `offer`,`products`.`status` AS `pro_status`,`products`.`category_id` AS `category_id`,`categories`.`cat_name` AS `cat_name`,`categories`.`cat_header` AS `cat_header`,`categories`.`status` AS `cat_status` from (`products` join `categories` on(`products`.`category_id` = `categories`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `review_box`
--
DROP TABLE IF EXISTS `review_box`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `review_box`  AS  select `reviews`.`id` AS `re_id`,`reviews`.`re_des` AS `re_des`,`reviews`.`re_rate` AS `re_rate`,`reviews`.`product_id` AS `product_id`,`reviews`.`user_id` AS `user_id`,`users`.`name` AS `name`,`users`.`email` AS `email` from (`reviews` join `users` on(`reviews`.`user_id` = `users`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `user_purchases`
--
DROP TABLE IF EXISTS `user_purchases`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_purchases`  AS  select `orders`.`user_id` AS `user_id`,`order_products`.`product_id` AS `product_id` from (`orders` join `order_products` on(`orders`.`id` = `order_products`.`order_id`)) ;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;