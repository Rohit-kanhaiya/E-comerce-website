-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2024 at 12:48 PM
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
-- Database: `smartbazaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_login_id` int(11) NOT NULL,
  `admin_name` varchar(200) DEFAULT NULL,
  `admin_email` text DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_login_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(2, 'vinod', 'vinod@gmail.com', '123'),
(4, 'Nilesh', 'nilesh@123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(100) DEFAULT NULL,
  `blog_des` text DEFAULT NULL,
  `blog_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_title`, `blog_des`, `blog_image`) VALUES
(6, 'Foods Original Food ', '#food #onlyfood #apple #banana #peru', '1709801954549.png'),
(7, 'Big Offer In Diwali Festival', '#shoes #shoesonlyshoes', '1709802152549.png'),
(12, 'Sport Shoes', '#sportshoes #mensshoes #onlyshoes', '1709802904237.png'),
(13, 'Shoes', '#sportshoes #mensshoes #onlyshoes', '1709802912860.png'),
(17, 'New Arrival Shoes', 'nike shoes advertisement poster', '1709829160741.png'),
(18, 'Big Offer In Diwali Festival', '#offer #offer #offer #offer #offer #offer ', '1709829254155.png'),
(19, 'SportShoes ', 'nike shoes advertisement poster', '1709829269178.png'),
(20, 'SportShoes ', '#shoes #shoesonlyshoes', '1709829433379.png'),
(21, 'SportShoes ', '#offer #offer #offer #offer #offer #offer ', '1709829444916.png');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `business_id` int(11) NOT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(200) DEFAULT NULL,
  `business_name` varchar(100) DEFAULT NULL,
  `business_email` varchar(200) DEFAULT NULL,
  `business_password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`business_id`, `person_name`, `contact_no`, `business_name`, `business_email`, `business_password`) VALUES
(1, 'A2z', '1234567890', 'Eshop', 'a2z@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cart_tbl`
--

CREATE TABLE `cart_tbl` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `company_info_id` int(11) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `company_details` text DEFAULT NULL,
  `company_logo` text DEFAULT NULL,
  `company_contact_no` varchar(20) DEFAULT NULL,
  `company_contact_email` text DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `company_location` text DEFAULT NULL,
  `company_facebook_link` text DEFAULT NULL,
  `company_twitter_link` text DEFAULT NULL,
  `company_whatsapp_link` text DEFAULT NULL,
  `company_instagram_link` text DEFAULT NULL,
  `company_linkedin_link` text DEFAULT NULL,
  `company_telegram_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`company_info_id`, `company_name`, `company_details`, `company_logo`, `company_contact_no`, `company_contact_email`, `company_address`, `company_location`, `company_facebook_link`, `company_twitter_link`, `company_whatsapp_link`, `company_instagram_link`, `company_linkedin_link`, `company_telegram_link`) VALUES
(1, 'A2Z IT HUB', 'Software Company', '1711738505381.png', '90111 44920', 'a2z@gmail.com', 'Balikashram Road, Ahmednagar', 'Bagde Mala', 'https://www.facebook.com/a2z.infotech.india', '#', 'https://chat.whatsapp.com/Ksfh8ioftH9LikzWIkq2XV', 'https://www.instagram.com/a2z.ithub?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==', '#', 'https://t.me/+DNe7sz2nuRU4MzU1 ');

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE `order_tbl` (
  `order_id` int(11) NOT NULL,
  `fname` text DEFAULT NULL,
  `lname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `state` text DEFAULT NULL,
  `address1` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `postal` text DEFAULT NULL,
  `payment` text DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `product_name` text NOT NULL,
  `product_id` text NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `order_status` text DEFAULT NULL,
  `order_date` text DEFAULT NULL,
  `dispatch_date` text DEFAULT NULL,
  `deliver_date` text DEFAULT NULL,
  `cancel_date` text DEFAULT NULL,
  `reject_date` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `product_price` text NOT NULL,
  `total_price` text NOT NULL,
  `business_payment_status` text NOT NULL,
  `transfer_no` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_tbl`
--

INSERT INTO `order_tbl` (`order_id`, `fname`, `lname`, `email`, `mobile`, `state`, `address1`, `address2`, `postal`, `payment`, `qty`, `product_name`, `product_id`, `transaction_id`, `order_status`, `order_date`, `dispatch_date`, `deliver_date`, `cancel_date`, `reject_date`, `user_id`, `product_price`, `total_price`, `business_payment_status`, `transfer_no`) VALUES
(1, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Dell G6 Gaming Laptop', '21', 20, 'deliver', '2024-03-19', '', '2024-03-20', '', '', 1, '40000', '40000', 'transfered', '12CVX33NM'),
(2, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Near By Kamla Hospital', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'cod', 1, 'Hightechs', '9', 21, 'dispatch', '2024-03-19', '2024-05-10', '', '', '', 1, '60000', '60000', '', ''),
(3, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Shirt', '22', 22, 'deliver', '2024-03-19', '2024-03-19', '2024-03-19', '', '', 1, '4000', '4000', '', ''),
(4, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Shirt', '22', 23, 'deliver', '2024-03-19', '', '2024-03-19', '', '', 1, '4000', '4000', '', ''),
(5, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Shirt', '22', 24, 'dispatch', '2024-03-19', '2024-03-20', '2024-03-20', '', '', 1, '4000', '4000', 'transfered', '1256MKJI34'),
(6, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, '', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Near By Kamla Hospital', '414001', 'online', 1, 'Oneplus 8', '23', 25, 'dispatch', '2024-03-21', '2024-03-24', '2024-03-24', '', '', 2, '40000', '40000', 'transfered', '1312fnbfnvfd'),
(7, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Oneplus 8', '23', 26, 'pending', '2024-03-24', '', '', '', '', 1, '40000', '40000', 'transfered', '12345678'),
(8, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 2, 'Nikee', '2', 27, 'dispatch', '2024-03-29', '2024-05-22', '2024-05-22', '', '', 1, '5000', '10000', 'transfered', '12CVX33NM'),
(9, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Near By Kamla Hospital', '414001', 'online', 1, 'Acer', '8', 28, 'pending', '2024-03-29', '', '', '', '', 1, '25000', '25000', '', ''),
(10, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Near By Kamla Hospital', '414001', 'online', 1, 'Acer', '8', 29, 'dispatch', '2024-03-29', '2024-03-31', '2024-03-31', '', '', 1, '25000', '25000', 'transfered', '1256MKJI34'),
(11, 'Sandesh', 'Kshetre', 'sandesh@gmail.com', 2147483647, 'Maharashtra', 'Near By Kamla Hospital', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Asus', '7', 30, 'dispatch', '2024-03-29', '2024-03-29', '2024-03-31', '', '', 3, '70000', '70000', '', ''),
(12, 'Sandesh', 'Kshetre', 'sandesh@gmail.com', 2147483647, 'Maharashtra', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Lenovo', '5', 31, 'dispatch', '2024-03-29', '2024-03-29', '2024-04-06', '', '', 3, '40000', '40000', 'transfered', '2123243'),
(13, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Air Birds', '19', 32, 'pending', '2024-03-31', '', '', '', '', 1, '2000', '2000', 'transfered', '2123243'),
(14, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Near By Kamla Hospital', '414001', 'online', 6, 'HP Ryzen 5', '6', 33, 'pending', '2024-04-06', '', '', '', '', 1, '60000', '360000', '', ''),
(15, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 2, 'Canva', '20', 34, 'dispatch', '2024-04-30', '2024-04-30', '2024-04-30', '', '', 1, '3000', '6000', 'transfered', '123CIWP318'),
(16, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 4, 'Asus', '7', 35, 'pending', '2024-05-23', '', '', '', '', 1, '70000', '280000', '', ''),
(17, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Canva', '20', 35, 'pending', '2024-05-23', '', '', '', '', 1, '3000', '3000', '', ''),
(18, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Canva', '20', 36, 'dispatch', '2024-05-23', '2024-05-23', '', '', '', 1, '3000', '3000', '', ''),
(19, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikasshram Road , Bagde mala Near Gaurav Sport...', '414001', 'online', 1, 'Air Birds', '19', 37, 'pending', '2024-05-25', '', '', '', '', 1, '2000', '2000', 'transfered', '2123243'),
(20, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikashram Road , Ahmednagar', '414001', 'online', 1, 'Canva', '20', 38, 'pending', '2024-06-03', '', '', '', '', 1, '3000', '3000', '', ''),
(21, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikashram Road , Ahmednagar', '414001', 'online', 1, 'Air Birds', '18', 39, 'pending', '2024-06-06', '', '', '', '', 1, '3000', '3000', '', ''),
(22, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikashram Road , Ahmednagar', '414001', 'online', 1, 'Air Birds', '19', 40, 'pending', '2024-06-20', '', '', '', '', 1, '2000', '2000', 'transfered', '12'),
(23, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikashram Road , Ahmednagar', '414001', 'online', 1, 'Canva', '20', 41, 'dispatch', '2024-06-22', '2024-06-22', '2024-06-22', '', '', 1, '3000', '3000', 'transfered', '33'),
(24, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikashram Road , Ahmednagar', '414001', 'online', 1, 'Air Birds', '18', 42, 'pending', '2024-07-15', '', '', '', '', 1, '3000', '3000', '', ''),
(25, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikashram Road , Ahmednagar', '414001', 'online', 1, 'Canva', '20', 43, 'pending', '2024-07-15', '', '', '', '', 1, '3000', '3000', '', ''),
(26, 'Vinod', 'Thombare', 'vinodthombare752@gmail.com', 2147483647, 'Maharashtra', 'Balikashram Road , Ahmednagar', 'Balikashram Road , Ahmednagar', '414001', 'online', 1, 'Air Birds', '18', 44, 'dispatch', '2024-07-15', '2024-07-15', '2024-07-15', '', '', 1, '3000', '3000', 'transfered', '33');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `duplicate_price` varchar(100) DEFAULT NULL,
  `product_size` varchar(100) DEFAULT NULL,
  `product_color` varchar(100) DEFAULT NULL,
  `product_exchange_in` varchar(100) DEFAULT NULL,
  `product_information` text DEFAULT NULL,
  `product_image1` text DEFAULT NULL,
  `product_image2` text DEFAULT NULL,
  `product_image3` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `verified_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `business_id`, `product_category_id`, `product_name`, `product_price`, `duplicate_price`, `product_size`, `product_color`, `product_exchange_in`, `product_information`, `product_image1`, `product_image2`, `product_image3`, `status`, `verified_date`) VALUES
(1, 1, 1, 'Canva', '3000', '4500', '6-9', '#805252', '7', 'Tior mens Canvas Cloth Fashionable Sports Running Casual Lace-Up Shoes', '1711697016665-original-imagvwzw4ynextkh.webp', '1711697016667product-jpeg.jpeg', '17116970166674bxbr_512.webp', 'approved', '2024-03-29'),
(2, 1, 1, 'Nikee', '5000', '5500', '12', '#302121', '12', 'Big Fox Rebound Street Mid Ankle Sneakers for Men', '1711697204301big-fox-rebound-street-mid-ankle-sneakers-for-men-500x500.webp', '171169720430261kkk7LsvNL._AC_UY1000_.jpg', '1711697204302images (1).jpeg', 'approved', '2024-03-29'),
(3, 1, 1, 'Hightechs', '5000', '70000', '8', '#000000', '30', 'Hi Tec Shopping Online | Shop Online in SA | EDGARS', '1711697429184images (3).jpeg', '1711697429185images (2).jpeg', '1711697429185O014229_ARESW_NAVYACADEMY_PASTELTURQUOISE_COOLGRAY_RIGHTVIEW_250x250@2x.webp', 'approved', '2024-03-29'),
(4, 1, 1, 'Puma', '3000', '3500', '9', '#7b3d3d', '12', 'Puma Flyer Runner Women S Running Shoes - Black Rose Gold', '1711697557994a511ec95-c5a8-454b-80a8-73f828914896.jpg', '1711697557995-473Wx593H-465738216-black-MODEL.avif', '17116975579956af194b19252601_1.avif', 'approved', '2024-03-29'),
(5, 1, 2, 'Lenovo', '40000', '60000', '33.78cms', '#000000', '30', 'Lenovo YOGA 9i Core i7 11th Gen 16GB RAM 14 UHD Touch Laptop Price in Sylhet | Lenovo Showroom in', '1711697780398yoga-9i-00010-500x500-1.jpg', '1711697780399q5qlzdvetfoi2q3ertg33n7l6pixhv143419.avif', '171169778039964b8f8d85d0a864e6d591652-lenovo-yoga-7i-2-in-1-14-touch-screen.jpg', 'approved', '2024-03-29'),
(6, 1, 2, 'HP Ryzen 5', '60000', '70000', '25.30 CMS', '#000000', '56', 'Buy HP 247 G8 Notebook PC/14 inch(35.6 cm) HD Display/Micro-Edge/Anti-Glare/AMD Ryzen 5 /8GB', '1711697920297images (5).jpeg', '1711697920297hp-240-g8-500x500.webp', '1711697920297images (4).jpeg', 'approved', '2024-03-29'),
(7, 1, 2, 'Asus', '70000', '90000', '22.40 CMS', '#c70a0a', '1 YEAR', 'Laptops For Home All series｜ASUS USA', '1711698176635images (7).jpeg', '17116981766356406468cv12d.jpg', '1711698176635images (6).jpeg', 'approved', '2024-03-29'),
(8, 1, 2, 'Acer', '25000', '30000', '30 CMS', '#000000', '', 'NOTEBOOK ACER ASPIRE ONE 725 116 RAM 2GB HARDISK 320GB BONUS BANYAK', '1711698333185images (10).jpeg', '1711698333186images (9).jpeg', '1711698333186images (8).jpeg', 'approved', '2024-03-29'),
(9, 1, 10, 'Ladies Dress', '30000', '4000', '20 M', '#000000', '30', 'Buy DRESS MATERIAL Online at Best Prices in India - JioMart', '171177395851351d07b367bb75da8e5e056266501e4ef.png', '171177395851981tG3y8HB4L._AC_UY1100_.jpg', '1711773958519dress-material-product-images-rvmyvlvcg3-2-202210211533.webp', 'approved', '2024-03-30'),
(10, 1, 10, 'Men Shirt', '5000', '5500', '30M', '#000000', '30', 'Belie Mens Dress Check Print Plaid Checkered Flannel Button Down Dress Shirt 7 S Amazonin Clothing & Accessories\r\n', '1711774090114-473Wx593H-466235501-greymelange-MODEL.avif', '1711774090115shirt4-500x500.webp', '171177409011571NYVshb5wL._AC_UY1100_.jpg', 'approved', '2024-03-30'),
(11, 1, 2, 'Iphone 15', '65000', '75000', '30 CMS', '#000000', '30', 'Apple iPhone 15 512GB blau verkaufen | iPhone 15 Ankauf online über ZOXS', '1711775182491sgmy_iphone_15_pink_pdp_image_position-1a_pink_colour_3.webp', '1711775182493images (11).jpeg', '171177518249311017390_zoxs.jpg', 'approved', '2024-03-30'),
(12, 1, 2, 'Boat Headphone', '4000', '4200', '30 CMS', '#000000', '7', 'Stylish Headphones To Wear At School Work Or Home Vogue 49% OFF', '1711777647042slide_5.webp', '1711777647045HammerBash2.0Headphones.webp', '', 'reject', '2024-03-30'),
(13, 1, 10, 'Armani Pants', '700', '1200', '28 M', '#000000', '7', 'BUY NAVY BULE ARMANI FORMAL PANT AT DISCOUNT PRICE Raj cloth center', '1711811711555images (12).jpeg', '1711811711561armani-light-grey.jpg', '17118117115617534302.png', 'approved', '2024-03-30'),
(15, 1, 2, 'Apple Watch', '4000', '4500', '12', '#000000', '7', 'Light Compatible with Apple Watch Band, Elastic Beaded Night Luminous Pearl Beautiful Women Girl', '171182694008771op2r0cxUL._AC_UY1000_.jpg', '1711826940089s-l400.jpg', '1711826940094images (15).jpeg', 'approved', '2024-03-30'),
(17, 1, 2, 'Air Birds', '3500', '4000', '-----------', '#000000', '7', '#onlyboat', '171189292665261KNJav3S9L._AC_UF1000,1000_QL80_.jpg', '1711892926653101.png', '1711892926654101.png', 'approved', '2024-04-30'),
(18, 1, 2, 'Air Birds', '3000', '3500', '', '#000000', '7', '#onlyboat', '171189518555061KNJav3S9L._AC_UF1000,1000_QL80_.jpg', '1711895185554101.png', '1711895185554101.png', 'approved', '2024-04-07'),
(19, 1, 2, 'Air Birds', '2000', '2500', '', '#cb9f9f', '7', '#boat', '1711895584018101.png', '171189558402761KNJav3S9L._AC_UF1000,1000_QL80_.jpg', '1711895584027101.png', 'approved', '2024-03-31'),
(20, 1, 1, 'Canva', '3000', '3500', '6-9', '#a46060', '7', 'BoWang Shop Canvas Sneakers for Men Men CasuaBoWang Shop Canvas Sneakers for Men Men Casua', '171447284034071VHLNBt00L._AC_UF350,350_QL80_.jpg', '1714472840341images (3).jpg', '1714472840341H0620815e23ac4d92a4a71eb2802748517.webp', 'approved', '2024-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `category_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `category_name`, `category_details`) VALUES
(1, 'Shoes', '#shoes #shoesonlyshoes #sportshoes\r\n'),
(2, 'Electronics', '#mobile #laptop #tv'),
(6, 'Bulb', '#onlybulb'),
(7, 'Food', '#banana #apple #mango'),
(8, 'Pen', '#pen #redpen #blackpen'),
(9, 'CHAPPAL', '#chappal\r\n'),
(10, 'Wear', '#shirt #dress #cottonshirt');

-- --------------------------------------------------------

--
-- Table structure for table `single_tab`
--

CREATE TABLE `single_tab` (
  `single_tab_id` int(11) NOT NULL,
  `tab_name` text DEFAULT NULL,
  `tab_desc` text DEFAULT NULL,
  `tab_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` text DEFAULT NULL,
  `slider_button_text` varchar(30) DEFAULT NULL,
  `slider_button_url` text DEFAULT NULL,
  `slider_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_title`, `slider_button_text`, `slider_button_url`, `slider_image`) VALUES
(17, 'Upto 70% Off', 'Shop Now', 'https://google.com', '1711717127338.png'),
(18, 'Upto 25% Off', 'Shop ', 'https://google.com', '1711717344324.png'),
(19, 'Upto 50% Off', 'Shop Now', 'https://google.com', '1711891714339.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `date` text DEFAULT NULL,
  `payment_type` text NOT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_amount` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `date`, `payment_type`, `payment_status`, `payment_amount`, `user_id`, `payment_id`) VALUES
(1, '2024-03-15', 'online', 'pending', 40000, 1, ''),
(2, '2024-03-15', 'online', 'pending', 40000, 1, ''),
(3, '2024-03-15', 'online', 'success', 40000, 1, 'pay_NmXqDhTVizbe8N'),
(4, '2024-03-15', 'online', 'success', 40000, 1, 'pay_NmY4aZn9rAdoGB'),
(5, '2024-03-15', 'online', 'pending', 120000, 1, ''),
(6, '2024-03-15', 'online', 'success', 40000, 1, 'pay_NmYKMHtR3Bp6iE'),
(7, '2024-03-15', 'online', 'success', 40000, 1, 'pay_NmYW5eibjRv4uk'),
(8, '2024-03-15', 'online', 'success', 369, 1, 'pay_NmZF0I8smApdWp'),
(9, '2024-03-15', 'online', 'success', 21000, 1, 'pay_NmZMNQqPUML4HT'),
(10, '2024-03-15', 'online', 'pending', 60000, 1, ''),
(11, '2024-03-15', 'online', 'success', 7000, 1, 'pay_NmZPOVMmt8csQ2'),
(12, '2024-03-16', 'online', 'success', 40000, 1, 'pay_Nmwrx1DBmNPWjR'),
(13, '2024-03-16', 'online', 'success', 40000, 1, 'pay_Nmzgpd3ncgrFyG'),
(14, '2024-03-16', 'cod', 'pending', 3000, 1, ''),
(15, '2024-03-16', 'online', 'success', 40000, 3, 'pay_NmzmQsnUn562oj'),
(16, '2024-03-16', 'online', 'success', 9000, 3, 'pay_NmzqTSS8SuMcoG'),
(17, '2024-03-19', 'cod', 'pending', 40000, 1, ''),
(18, '2024-03-19', 'online', 'success', 40000, 1, 'pay_No683cppwwIlVc'),
(19, '2024-03-19', 'online', 'success', 4000, 1, 'pay_No8fT5gmJzPE00'),
(20, '2024-03-19', 'online', 'success', 40000, 1, 'pay_NoFmzsoiwVOAeu'),
(21, '2024-03-19', 'cod', 'pending', 60000, 1, ''),
(22, '2024-03-19', 'online', 'pending', 4000, 1, ''),
(23, '2024-03-19', 'online', 'pending', 4000, 1, ''),
(24, '2024-03-19', 'online', 'success', 4000, 1, 'pay_NoG0fl9NNC4MWw'),
(25, '2024-03-21', 'online', 'success', 40000, 2, 'pay_NozkXobBg3VByE'),
(26, '2024-03-24', 'online', 'success', 40000, 1, 'pay_NqFPaCRRbOjRrz'),
(27, '2024-03-29', 'online', 'success', 10000, 1, 'pay_Ns7BALmN2d7R4X'),
(28, '2024-03-29', 'online', 'pending', 25000, 1, ''),
(29, '2024-03-29', 'online', 'success', 25000, 1, 'pay_NsBODeKSUN9hjq'),
(30, '2024-03-29', 'online', 'pending', 70000, 3, ''),
(31, '2024-03-29', 'online', 'success', 40000, 3, 'pay_NsHh4xY7ZOFhXG'),
(32, '2024-03-31', 'online', 'success', 2000, 1, 'pay_Nszx8ZFjAiWltw'),
(33, '2024-04-06', 'online', 'pending', 360000, 1, ''),
(34, '2024-04-30', 'online', 'success', 6000, 1, 'pay_O4niZzzjyFzFU0'),
(35, '2024-05-23', 'online', 'pending', 283000, 1, ''),
(36, '2024-05-23', 'online', 'success', 3000, 1, 'pay_ODtUt5RCU1munl'),
(37, '2024-05-25', 'online', 'success', 2000, 1, 'pay_OEcqWhuWELPMs4'),
(38, '2024-06-03', 'online', 'success', 3000, 1, 'pay_OIOBUouLXDnTdF'),
(39, '2024-06-06', 'online', 'success', 3000, 1, 'pay_OJRW0ZV5cBFH3g'),
(40, '2024-06-20', 'online', 'success', 2000, 1, 'pay_OOuglsl6iL8JGv'),
(41, '2024-06-22', 'online', 'success', 3000, 1, 'pay_OPqObsoOXNuFOU'),
(42, '2024-07-15', 'online', 'pending', 3000, 1, ''),
(43, '2024-07-15', 'online', 'pending', 3000, 1, ''),
(44, '2024-07-15', 'online', 'success', 3000, 1, 'pay_OYo5ThUYXSO4RZ');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_mobile` int(11) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `user_name`, `user_mobile`, `user_email`, `user_password`) VALUES
(1, 'Vinod Thombare', 2147483647, 'vinodthombare752@gmail.com', '123'),
(2, 'PQRS', 1234567890, 'pqrs@gmail.com', '123'),
(3, 'Sandesh', 1234567890, 'sandesh@123gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_login_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `cart_tbl`
--
ALTER TABLE `cart_tbl`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`company_info_id`);

--
-- Indexes for table `order_tbl`
--
ALTER TABLE `order_tbl`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- Indexes for table `single_tab`
--
ALTER TABLE `single_tab`
  ADD PRIMARY KEY (`single_tab_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `business_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_tbl`
--
ALTER TABLE `cart_tbl`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `company_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_tbl`
--
ALTER TABLE `order_tbl`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `single_tab`
--
ALTER TABLE `single_tab`
  MODIFY `single_tab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
