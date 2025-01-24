-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 02:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Coffee', 'latte', '2024-03-19 13:13:30', NULL),
(8, 'ICE CREAM', 'Sweet', '2024-03-19 13:13:49', '28-04-2024 04:38:26 PM'),
(9, 'SNACKS', 'WOW', '2024-03-19 13:14:08', '28-04-2024 04:38:39 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(8, 4, '22', 1, '2024-03-19 13:53:54', 'COD', 'in Process'),
(9, 4, '24', 1, '2024-03-19 14:04:58', 'Internet Banking', NULL),
(11, 4, '21', 1, '2024-03-19 14:14:32', NULL, NULL),
(12, 4, '24', 1, '2024-03-19 14:14:32', NULL, NULL),
(13, 4, '24', 2, '2024-03-19 14:35:41', NULL, NULL),
(14, 4, '22', 1, '2024-03-19 14:39:27', NULL, NULL),
(15, 5, '22', 1, '2024-03-19 14:49:37', NULL, 'in Process'),
(16, 1, '24', 6, '2024-03-19 15:01:13', NULL, NULL),
(17, 1, '22', 1, '2024-03-19 15:02:37', NULL, NULL),
(18, 1, '24', 2, '2024-03-19 15:02:38', NULL, NULL),
(19, 5, '22', 1, '2024-04-27 09:09:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 8, 'in Process', 'sasawa', '2024-03-19 14:38:29'),
(6, 15, 'in Process', 'nice', '2024-03-19 14:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 7, 13, 'Caffe Latte', NULL, 800, NULL, 'Haka kachai ni katamuuu', 'cof3.jpg', 'velcoffe2.jfif', 'velcoffe2.jfif', 0, 'In Stock', '2024-03-19 13:25:21', NULL),
(22, 7, 16, 'Latte', 'Scylla kitchens', 690, 800, 'Steamy hot', 'velcoffe2.jfif', 'velcoffe2.jfif', 'velcoffe2.jfif', 0, 'In Stock', '2024-03-19 13:28:08', NULL),
(23, 8, 14, 'Scotch sweet', 'Scylla kitchens', 80, 100, 'wacha tu', 'i9.jfif', 'i9.jfif', 'i9.jfif', 0, 'Out of Stock', '2024-03-19 13:29:14', NULL),
(24, 9, 20, 'Red Velvet Cake', 'Scylla kitchens', 200, 240, 'eiiyaaa', 'red1.jfif', 'r1.jfif', 'red2.jfif', 0, 'In Stock', '2024-03-19 13:30:01', NULL),
(25, 7, 18, 'Coffee cappuccino', 'cappuccinno', 400, 450, 'hot cappuccino', 'cof5.jfif', 'cof2.jpg', 'cof3.jpg', 0, 'In Stock', '2024-04-28 11:17:30', NULL),
(26, 8, 17, 'Strawberry icecream', 'ccc', 420, 450, 'sweet', 'i5.jfif', 'i5.jfif', 'i55.jfif', 0, 'In Stock', '2024-04-28 11:26:40', NULL),
(27, 8, 19, 'caramel', 'ccc', 180, 200, 'try it', 'i6.jfif', 'icecream3.jfif', 'i6.jfif', 0, 'In Stock', '2024-04-28 11:28:18', NULL),
(28, 9, 15, 'BROWNIES', 'BrownHut', 290, 300, 'Almond Brownies', 'brownie1.jfif', 'brownie2.jfif', '', 120, 'In Stock', '2024-04-28 11:35:26', NULL),
(29, 8, 17, 'Strawberry icecream', 'Strawberry ', 250, 280, 'strawberry icecream', 'icecream3.jfif', 'i5.jfif', '', 120, 'In Stock', '2024-04-28 11:43:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 7, 'Black Coffe', '2024-03-19 13:14:25', NULL),
(14, 8, 'VANILLA', '2024-03-19 13:14:41', '28-04-2024 04:39:24 PM'),
(15, 9, 'BROWNIES', '2024-03-19 13:14:51', '28-04-2024 04:43:27 PM'),
(16, 7, 'LATTE', '2024-03-19 13:15:19', '28-04-2024 04:40:32 PM'),
(17, 8, 'STRAWBERRY', '2024-04-28 11:09:53', NULL),
(18, 7, 'CAPPUCCINO', '2024-04-28 11:12:09', NULL),
(19, 8, 'CARAMEL', '2024-04-28 11:13:02', NULL),
(20, 9, 'RED VELEVET', '2024-04-28 11:13:44', NULL),
(21, 9, 'WHITE FOREST', '2024-04-28 11:14:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 's@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 13:09:58', NULL, 0),
(25, 's@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 13:10:21', '19-03-2024 06:49:59 PM', 1),
(26, 's@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 13:32:42', '19-03-2024 07:45:24 PM', 1),
(27, 's@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 14:29:49', '19-03-2024 08:03:42 PM', 1),
(28, 's@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 14:35:26', '19-03-2024 08:08:53 PM', 1),
(29, 's@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 14:39:22', '19-03-2024 08:14:06 PM', 1),
(30, 'hs@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 14:45:44', NULL, 0),
(31, 'sh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 14:46:03', NULL, 0),
(32, 'mwendwa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-19 14:47:12', NULL, 1),
(33, 'mwendwa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-27 09:08:39', NULL, 1),
(34, 'mwendwamureti@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-28 11:29:27', NULL, 0),
(35, 'mwendwamureti@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-28 11:29:33', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'vivian mwendwa', 's@gmail.com', 0, 'b4b147bc522828731f1a016bfa72c073', NULL, '', 'nairobi', 0, NULL, 'nairobi', 'nairobi', 0, '2024-03-19 13:10:15', NULL),
(5, 'vivian mwendwa', 'mwendwa@gmail.com', 0, '4a7d1ed414474e4033ac29ccb8653d9b', NULL, '', 'abc', 0, NULL, 'nairobi', 'nairobi', 0, '2024-03-19 14:47:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
