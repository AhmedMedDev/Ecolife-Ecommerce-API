-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 10:07 AM
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
  `if_not_availble` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `address_id`, `date`, `time`, `if_not_availble`) VALUES
(62, 1, -7525.54, 33, '2021-10-19', '', ''),
(63, 1, 28225500, 34, '2021-10-19', '', ''),
(64, 1, 21623.9, 37, '2021-10-19', '01:03', 'call me');

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_box`
-- (See below for the actual view)
--
CREATE TABLE `order_box` (
`order_id` bigint(20) unsigned
,`total_price` float
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
(78, 'Sarai Harvey', 'Dolor nulla commodi mollitia illo pariatur odio voluptatum. Autem optio labore esse magnam quasi magnam temporibus nostrum. Beatae sunt voluptas placeat nulla hic recusandae.', 'Dolorum quis beatae perferendis numquam itaque aut delectus voluptas. Vero quo nisi esse nesciunt consectetur accusamus. Facilis dolorum alias ex esse ipsa.', 35102.6, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?41595\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?59278\"]', '2', 0, 50, 46, 0),
(79, 'Lane Mayert', 'Unde et laboriosam sunt qui. Optio tempore sed quis. Aspernatur quia ab vel illum eveniet et expedita.', 'Labore ut sed aut ratione dolores. Est non maiores unde est provident. Autem reprehenderit voluptate et odit nihil modi et vero. Odit quo labore et pariatur dolores dolorem explicabo.', 84223, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?96340\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?44416\"]', '5', 0, 26, 49, 1),
(80, 'Everardo Corwin MD', 'Incidunt quia porro alias deleniti. Voluptatibus cum ipsum ut unde nemo. Ut aut necessitatibus ut saepe. Quia laudantium voluptatem ex a odit fuga.', 'Earum corrupti recusandae itaque iusto quae ipsum eveniet eum. Praesentium deserunt et repellat.', 5475.12, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?88297\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?54304\"]', '4', 0, 24, 51, 0),
(81, 'Juvenal Denesik', 'Rerum vero nobis quis accusantium omnis. Quo nisi aliquam explicabo quas laborum aut. Ut sequi praesentium dolor eos ea. Doloribus sunt consequatur eaque magnam adipisci.', 'Porro at dolores aliquam aut quibusdam unde nulla. Consequatur eum aut nihil quidem neque itaque non. Tenetur harum in architecto. Voluptatibus enim iste doloribus ad nesciunt reiciendis ut.', 37167400, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?78406\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?60804\"]', '1', 1, 27, 52, 1),
(82, 'Miss Christa Hand PhD', 'Rerum et numquam sit magnam ipsum sint. Nostrum velit odio rerum. Fuga debitis et iste excepturi. Voluptas voluptatem deleniti est neque commodi.', 'Et laudantium libero placeat et dignissimos molestiae. Ut et quod rem eaque qui. Placeat hic earum molestiae architecto totam. Quibusdam iste dolores dicta molestias inventore maiores ut.', 39337.4, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?60568\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?58527\"]', '1', 1, 9, 49, 0),
(83, 'Iva Botsford', 'Esse tempora dolores deleniti quia animi consequatur consequatur. Aut tenetur aut iste praesentium tenetur unde et. Excepturi sint ut consectetur corrupti adipisci.', 'Aspernatur explicabo qui quo iusto architecto. Reiciendis at sit illum. Ut facere nobis occaecati. Nam dolores qui ab et fuga.', 1.11282, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?78341\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?60949\"]', '3', 0, 41, 44, 1),
(84, 'Ozella Hintz', 'A esse rerum impedit quo eum maiores odio. Nulla ut sed sed debitis quia laborum velit modi. Fuga sed laudantium repellat alias earum. Vero enim ad qui modi inventore sunt quo possimus.', 'Debitis et cupiditate quae facere. Vero aut odio molestiae aspernatur corrupti. Amet mollitia aspernatur dolor eius ipsam non et. Sed assumenda quia itaque nemo sed.', 28921.7, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?79865\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?48133\"]', '4', 0, 30, 43, 0),
(85, 'Dr. Dusty Marquardt II', 'Earum commodi repellendus omnis nam harum animi optio omnis. Aut tenetur soluta et repudiandae reprehenderit.', 'Nam praesentium magni veniam. Illum mollitia quos aut eius deleniti. Corporis doloremque harum veniam quidem fugit autem.', 27.3, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?65798\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?12249\"]', '4', 0, 39, 51, 0),
(86, 'Verdie Labadie V', 'Aut dolorem optio delectus sed. Non et consequuntur deserunt enim. Aut molestias et fugiat vero non quas aliquid voluptas.', 'Aut et officiis maxime veniam cum. In dolor ratione non et et. Voluptas velit fuga quae illo. Molestias quis magnam et quod hic.', 522662000, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?18378\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?73004\"]', '4', 0, 38, 51, 0),
(87, 'Mr. Ottis Maggio', 'Atque voluptatem commodi sint quidem deserunt a. Aperiam sit nulla ducimus omnis iusto nesciunt. Dignissimos ut repudiandae molestiae ut autem vel.', 'Quod omnis at at ullam dicta unde facere eveniet. Illo ab earum molestias expedita quo dolores aut. Nulla nam esse consequuntur velit libero odio. Nostrum eos dolorum nobis maiores alias ipsam.', 62987.7, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?32423\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?13789\"]', '2', 1, 12, 43, 0),
(88, 'Jerrod Feeney', 'Laborum voluptas itaque et consectetur. Qui et aperiam eveniet facilis libero voluptas. Aliquam non voluptatem consequatur dignissimos perspiciatis corrupti delectus ipsa.', 'Soluta tempora optio maiores necessitatibus est distinctio. Sint unde rerum quidem molestiae. Occaecati aut quasi tempora numquam accusamus ab nihil quia. Perspiciatis dolores laboriosam laborum non.', 1913470, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?77390\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?92223\"]', '1', 0, 47, 45, 0),
(89, 'Fabiola Beer', 'A rerum culpa necessitatibus delectus necessitatibus vitae. Asperiores quia at ad hic. Sit earum aut aut quis ducimus nesciunt provident.', 'Aliquid quisquam exercitationem tempora quisquam aut dicta. Est hic occaecati quia neque culpa veritatis tempore.', 1700.34, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?11561\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?80750\"]', '4', 1, 43, 47, 0),
(90, 'Prof. Logan Walker DVM', 'Ut commodi non fugit odit aut necessitatibus. Sit accusamus officia sapiente consectetur voluptatibus et quod. Voluptas doloremque quos est quia. Et consequatur voluptates neque nostrum laborum.', 'Quis est aut impedit voluptatibus adipisci. Magnam voluptatibus unde illo et eos veniam. Exercitationem corporis voluptas quae illo quisquam.', 6.28, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?83712\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?30838\"]', '5', 0, 47, 46, 0),
(91, 'Dr. Louisa Volkman', 'Recusandae corporis voluptate consequatur non amet modi expedita corporis. Est omnis voluptatum optio et voluptatibus qui. Tempore laboriosam sunt rerum dolores quia ut.', 'Ut minus reprehenderit sed ad id harum deleniti exercitationem. Rerum magni nesciunt non doloribus. Voluptas optio dolor asperiores est dolores repellat rem.', 1245.36, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?79804\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?93539\"]', '3', 0, 13, 50, 0),
(92, 'Ms. Bettie Farrell', 'Nostrum et eius deleniti maxime pariatur et. Architecto qui vero nam velit aliquid sunt. Rerum quod assumenda dolorem ratione recusandae. Eum assumenda veniam laudantium reiciendis similique.', 'Consequuntur voluptate unde porro. Quam quidem ipsam rerum quam est. Nostrum hic quidem hic cum rerum. Vero et voluptas omnis consequuntur error voluptatem recusandae. Eum aut quis aut.', 26.1029, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?94306\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?56109\"]', '1', 0, 29, 46, 0),
(93, 'Judd Herzog', 'Corporis nemo recusandae dolore maxime ea. Et at sunt qui nemo in rerum tempore id. Nihil sint aut non. Est commodi non dolor rem iste accusamus consectetur.', 'Ad et laborum qui harum voluptate repellendus. Corrupti est reprehenderit deleniti enim. Provident dolor qui doloribus repudiandae.', 3.8286, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?81955\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?76972\"]', '5', 1, 9, 48, 1),
(94, 'Zelda Simonis', 'Sint quam non iusto rerum voluptas labore. Tenetur ipsa fuga et delectus. Consequatur dolores laboriosam rerum illum sapiente laudantium nostrum.', 'Quidem aut sit neque ipsum id. Consequatur beatae molestiae quo similique rerum quod corporis. Earum iure tempora quasi placeat ratione.', 45912.8, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?94360\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?61951\"]', '4', 1, 38, 45, 1),
(95, 'Mr. Robert Hodkiewicz', 'Enim occaecati dolorem aut similique sed fugiat. Rerum sed unde voluptatum voluptatum dolorem. Sint quam ex voluptates fugiat error dolorum.', 'Eius iusto architecto in consequatur repellat rerum aut occaecati. Dolor repellat velit ullam voluptas. Pariatur et dicta fugit.', 1204280, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?36207\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?77855\"]', '2', 1, 11, 48, 1),
(96, 'Ms. Carissa Ward Jr.', 'Velit voluptas id optio quis. Quia voluptatem molestiae deleniti laudantium sit. Voluptatem officia aut rem deserunt atque. Repellendus voluptatibus eius esse sapiente.', 'Voluptate pariatur veniam iste corporis voluptas molestiae illo. Aut impedit et nesciunt modi illo. Eos eos mollitia quia nam excepturi.', 1597.2, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?86492\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?79806\"]', '1', 0, 16, 51, 0),
(97, 'Matt Ortiz DVM', 'Libero illum iusto quia voluptate aut ut. Corporis excepturi voluptas rerum ipsum. Optio voluptas non facere inventore nulla minus. Ducimus porro consequuntur doloribus quod dolores.', 'Molestiae sunt nisi maxime sed et vero ab vel. Ab dolores modi sunt molestiae eius.', 84032200, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?17313\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?63102\"]', '3', 1, 6, 46, 0),
(98, 'Dr. Alexis Abernathy MD', 'Eos neque earum voluptas quia non reiciendis tempore. Minima commodi labore quo eaque. Velit sapiente exercitationem error soluta.', 'Voluptatum dicta eum hic autem dicta quo non fugit. Ipsam et et quos voluptatem in. Error minus qui deserunt delectus sapiente atque quia.', 5987490, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?95304\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?83849\"]', '3', 0, 45, 48, 1),
(99, 'Kris Stracke', 'Est ab iure enim. Ipsa eum id autem ab ea sequi. Molestias perferendis quisquam blanditiis natus maxime beatae.', 'Reiciendis optio deleniti consequatur tempore est est. Molestias enim voluptas et. Voluptates officia non ut quia ea exercitationem.', 528587, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?29444\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?47690\"]', '1', 0, 5, 47, 0),
(100, 'Enoch Douglas', 'Sit ea voluptatem voluptas et. Amet maiores perferendis sit sed voluptatum quisquam. Quia dolores similique voluptates vel. Explicabo eos aut ea dolorem qui sint.', 'Ut libero deserunt officiis recusandae. Nihil rerum harum libero. Alias odio sed est inventore asperiores qui. Labore modi sed est sunt voluptatum.', 14.6773, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?26496\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?50897\"]', '1', 0, 25, 48, 0),
(101, 'Freeda Roberts', 'Ab tenetur occaecati doloribus possimus necessitatibus quod unde exercitationem. Rerum aut maiores corrupti. Eveniet eius facere exercitationem velit modi.', 'Nostrum id quis laborum rerum. Non minus omnis laudantium omnis voluptatem. Iste quia debitis sit quaerat repellat quia deserunt. Enim et enim consequatur hic recusandae labore reprehenderit.', 12959.8, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?29946\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?47111\"]', '1', 0, 26, 49, 1),
(102, 'Eldora Ruecker', 'Et facere molestiae et ducimus explicabo. Architecto quasi numquam quo fugit repudiandae officiis. Autem et necessitatibus molestiae est excepturi deleniti.', 'Aut dicta repellat porro animi sed. Vel architecto perspiciatis quaerat illo ipsa reprehenderit et.', 9924020, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?32831\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?67894\"]', '3', 0, 31, 45, 1),
(103, 'Prof. Angel Senger PhD', 'Occaecati atque consectetur quibusdam minima facere aut. Voluptas est quae ipsum at maxime. Dolor molestiae autem esse quos quaerat ipsa explicabo architecto. Consequuntur dicta ut autem.', 'Pariatur perspiciatis voluptates adipisci. Quis ut modi aperiam maiores commodi sint. Saepe omnis molestias fuga ut sequi.', 37.9384, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?13780\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?11668\"]', '1', 1, 18, 43, 0),
(104, 'Cara Simonis PhD', 'Cum vel et enim quia. Esse ea ea facilis dolores hic ea.', 'Labore a ipsam et. Voluptas similique nam aut quia culpa. Provident ipsa quaerat voluptas. Quisquam sit rerum voluptas ducimus.', 1.72, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?67000\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?79465\"]', '5', 0, 5, 49, 0),
(105, 'Myrl Abshire', 'Quia et autem consequatur eveniet. Autem consequatur veniam est accusantium qui. Sit quo modi ratione autem voluptatem dolorum voluptatem.', 'Nihil officia ea nostrum amet facere similique rerum. Ducimus quis eos qui repellat quo atque.', 31524.3, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?46651\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?36636\"]', '3', 0, 32, 43, 1),
(106, 'Prof. Isom Wunsch PhD', 'Illum dignissimos aliquam exercitationem aut similique quis. Maxime dolorem quam dolore aliquid. Provident in magnam dolorum fuga quis magni nemo. Quo vel debitis dolore.', 'Autem et eveniet velit sint excepturi. Eos quam molestiae sunt autem. Voluptas sit et quam maxime sunt commodi dignissimos.', 68.7726, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?91062\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?99509\"]', '1', 1, 37, 52, 1),
(107, 'Mr. Jensen Ankunding Jr.', 'Ad est nihil iusto aut aut saepe sunt. Voluptatem amet et illo possimus sit reiciendis maiores. Excepturi odio qui autem qui cumque. Ullam et perspiciatis tenetur qui rem unde autem.', 'Provident ut tempora ullam ratione exercitationem ut. Quam vitae laborum suscipit aliquid sequi explicabo facilis. Molestiae quos numquam magni.', 1.95931, '[\"https:\\/\\/lorempixel.com\\/283\\/241\\/?98350\",\"https:\\/\\/lorempixel.com\\/283\\/241\\/?97243\"]', '5', 0, 42, 49, 0),
(108, 'fudoneco@mailinator.com', 'Enim incidunt eos e', 'Temporibus asperiore', 472, '[\"uploads\\/products\\/images\\/1634636738I5dSm.png\",\"uploads\\/products\\/images\\/1634636738VpkmI.png\"]', '5', 0, 50, 44, 0),
(109, 'bagopob@mailinator.com', 'Necessitatibus itaqu', 'Labore dolores labor', 342, '[\"uploads\\/products\\/images\\/1634637710fYtFN.jpg\",\"uploads\\/products\\/images\\/16346377101SAgl.jpg\"]', '5', 0, 47, 43, 1);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_box`  AS  select `orders`.`id` AS `order_id`,`orders`.`total_price` AS `total_price`,`orders`.`date` AS `date`,`orders`.`user_id` AS `user_id`,`users`.`name` AS `name`,`users`.`email` AS `email`,`orders`.`address_id` AS `address_id`,`addresses`.`compony_name` AS `compony_name`,`addresses`.`governorate` AS `governorate`,`addresses`.`block_number` AS `block_number`,`addresses`.`street_address` AS `street_address`,`addresses`.`avenue` AS `avenue`,`addresses`.`building_number` AS `building_number`,`addresses`.`floor` AS `floor`,`addresses`.`phone` AS `phone`,`addresses`.`additional_info` AS `additional_info` from ((`orders` join `users` on(`users`.`id` = `orders`.`user_id`)) join `addresses` on(`addresses`.`id` = `orders`.`address_id`)) ;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

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
