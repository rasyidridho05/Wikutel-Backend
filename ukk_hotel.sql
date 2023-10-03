-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 02:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_room_type` int(11) DEFAULT NULL,
  `booking_number` int(11) DEFAULT NULL,
  `name_customer` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `check_in_date` datetime DEFAULT NULL,
  `check_out_date` datetime DEFAULT NULL,
  `guest_name` varchar(255) DEFAULT NULL,
  `total_room` int(11) DEFAULT NULL,
  `booking_status` enum('baru','check_in','check_out') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_user`, `id_customer`, `id_room_type`, `booking_number`, `name_customer`, `email`, `booking_date`, `check_in_date`, `check_out_date`, `guest_name`, `total_room`, `booking_status`, `createdAt`, `updatedAt`) VALUES
(33, 5, 10, 11, 29971, 'Syahnaz', 'syahnaz@gmail', '2023-03-14 17:00:00', '2023-03-15 00:00:00', '2023-03-16 00:00:00', 'audrey', 2, 'check_out', '2023-03-15 06:28:52', '2023-10-02 04:43:26'),
(34, 5, 10, 11, 54775, 'Syahnaz', 'syahnaz@gmail', '2023-03-14 17:00:00', '2023-03-15 00:00:00', '2023-03-16 00:00:00', 'test', 0, 'baru', '2023-03-15 06:31:45', '2023-03-15 06:31:45'),
(35, 5, 12, 7, 85458, 'Hai', 'hail@gmail.com', '2023-09-20 17:00:00', '2023-02-10 00:00:00', '2023-02-11 00:00:00', 'Aku', 1, 'baru', '2023-09-21 02:51:38', '2023-09-21 02:51:38'),
(36, 5, 12, 7, 46871, 'Hai', 'hail@gmail.com', '2023-10-01 17:00:00', '2023-02-10 00:00:00', '2023-02-11 00:00:00', 'Tamu 2', 0, 'baru', '2023-10-02 01:09:32', '2023-10-02 01:09:32'),
(37, 5, 12, 11, 68753, 'Hai', 'hail@gmail.com', '2023-02-09 17:00:00', '2024-03-10 00:00:00', '2024-03-11 00:00:00', 'aku', 2, 'check_in', '2023-10-02 04:36:59', '2023-10-02 05:37:08'),
(38, 5, 12, 9, 56642, 'Hai', 'hail@gmail.com', '2023-02-09 17:00:00', '2023-12-01 00:00:00', '2023-12-05 00:00:00', 'Tamu 3', 1, 'check_out', '2023-10-02 05:36:05', '2023-10-02 05:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nik`, `customer_name`, `address`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(10, '123131232131311', 'Syahnaz', 'Surabaya', 'syahnaz@gmail', '202cb962ac59075b964b07152d234b70', '2023-03-15 01:25:07', '2023-08-15 12:12:06'),
(11, '1321131141', 'customer', 'Surabaya', 'customer@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-08-15 12:45:15', '2023-08-15 12:45:15'),
(12, '123344455667', 'Hai', 'Rumah ', 'hail@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-09-21 02:46:15', '2023-09-21 02:46:15'),
(13, '35150000002', 'Siapa saja', 'Indonesia', 'ss@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-09-21 03:15:34', '2023-09-21 03:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `detail_booking`
--

CREATE TABLE `detail_booking` (
  `id_detail_booking` int(11) NOT NULL,
  `id_booking` int(11) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL,
  `access_date` datetime DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_booking`
--

INSERT INTO `detail_booking` (`id_detail_booking`, `id_booking`, `id_room`, `access_date`, `total_price`, `createdAt`, `updatedAt`) VALUES
(173, 33, 13, NULL, 1000000, '2023-03-15 06:28:52', '2023-10-02 04:43:26'),
(174, 33, 14, NULL, 1000000, '2023-03-15 06:28:52', '2023-10-02 04:43:26'),
(175, 35, 9, '2023-02-10 00:00:00', 3000000, '2023-09-21 02:51:38', '2023-09-21 02:51:38'),
(176, 37, 13, '2024-03-10 00:00:00', 1000000, '2023-10-02 04:36:59', '2023-10-02 04:36:59'),
(177, 37, 14, '2024-03-10 00:00:00', 1000000, '2023-10-02 04:36:59', '2023-10-02 04:36:59'),
(178, 38, 12, NULL, 1500000, '2023-10-02 05:36:05', '2023-10-02 05:37:18'),
(179, 38, 12, NULL, 1500000, '2023-10-02 05:36:05', '2023-10-02 05:37:18'),
(180, 38, 12, NULL, 1500000, '2023-10-02 05:36:06', '2023-10-02 05:37:18'),
(181, 38, 12, NULL, 1500000, '2023-10-02 05:36:06', '2023-10-02 05:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id_room` int(11) NOT NULL,
  `room_number` int(11) DEFAULT NULL,
  `id_room_type` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id_room`, `room_number`, `id_room_type`, `createdAt`, `updatedAt`) VALUES
(9, 101, 7, '2023-03-14 23:04:34', '2023-10-02 23:26:59'),
(10, 103, 8, '2023-03-14 23:04:53', '2023-10-02 23:27:16'),
(12, 201, 9, '2023-03-15 01:14:47', '2023-10-02 23:27:33'),
(13, 701, 11, '2023-03-15 01:36:38', '2023-10-02 23:27:40'),
(14, 702, 11, '2023-03-15 01:37:04', '2023-10-02 23:27:48'),
(15, 703, 11, '2023-08-15 12:29:57', '2023-10-02 23:27:55'),
(16, 104, 8, '2023-09-21 02:49:20', '2023-10-02 23:27:23'),
(17, 102, 7, '2023-10-02 01:06:32', '2023-10-02 23:27:07'),
(18, 202, 9, '2023-10-02 23:28:08', '2023-10-02 23:28:08'),
(19, 501, 12, '2023-10-02 23:28:36', '2023-10-02 23:28:36'),
(20, 502, 12, '2023-10-02 23:28:46', '2023-10-02 23:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id_room_type` int(11) NOT NULL,
  `name_room_type` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id_room_type`, `name_room_type`, `price`, `description`, `photo`, `createdAt`, `updatedAt`) VALUES
(7, 'Deluxe', 1000000, 'A parlour or living room connected with to one or more bedrooms. (A room with one or more bedrooms and a separate living space.)', 'photo-1678834653959.png', '2023-03-14 22:57:33', '2023-10-02 23:22:02'),
(8, 'Standard', 680000, 'A single room with a bed and sitting area. Sometimes the sleeping area is in a bedroom separate from the parlour or living room.', 'photo-1678834692584.jpeg', '2023-03-14 22:58:12', '2023-10-02 23:23:05'),
(9, 'Single', 1500000, 'A room assigned to one person. May have one or more beds.\r\nThe room size or area of Single Rooms are generally between 37 m² to 45 m².', 'photo-1678834752587.jpeg', '2023-03-14 22:59:12', '2023-03-14 22:59:12'),
(11, 'Presidential', 3150000, 'A parlour or living room connected with to one or more bedrooms. (A room with one or more bedrooms and a separate living space.). A parlour or living room connected with to one or more bedrooms. (A room with one or more bedrooms and a separate living spac', 'photo-1692102824793.jpeg', '2023-03-15 01:35:00', '2023-10-02 23:22:46'),
(12, 'Luxury', 2490000, 'Room with Luxurious design, with king size bed, size of this room is very wide. There are many facilities that you can use it for free.', 'photo-1696289187981.jpg', '2023-10-02 23:26:28', '2023-10-02 23:26:28'),
(13, 'Penthouse', 5500000, 'Room with the best view ever in Wikutel, wide and elegant compartment. There are many facilities that you can use it for free.   ', 'photo-1696289944272.jpg', '2023-10-02 23:39:04', '2023-10-02 23:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230117131506-create-room-type.js'),
('20230117140614-create-room.js'),
('20230117210736-create-user.js'),
('20230118012308-create-customer.js'),
('20230118110940-create-booking.js'),
('20230118111105-create-detail-booking.js');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','resepsionis') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `photo`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(5, 'Resepsionis', 'photo-1696210176731.png', 'resepsionis@gmail.com', '202cb962ac59075b964b07152d234b70', 'resepsionis', '2023-03-14 23:09:19', '2023-10-02 01:29:36'),
(7, 'admin', 'photo-1696208747375.png', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', '2023-10-02 01:05:47', '2023-10-02 01:05:47'),
(8, 'resepsionis 2', 'photo-1696210224917.png', 'resepsionis2@gmail.com', '202cb962ac59075b964b07152d234b70', '', '2023-10-02 01:30:24', '2023-10-02 01:30:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_room_type` (`id_room_type`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `detail_booking`
--
ALTER TABLE `detail_booking`
  ADD PRIMARY KEY (`id_detail_booking`),
  ADD KEY `id_booking` (`id_booking`),
  ADD KEY `id_room` (`id_room`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id_room`),
  ADD KEY `id_room_type` (`id_room_type`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id_room_type`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `detail_booking`
--
ALTER TABLE `detail_booking`
  MODIFY `id_detail_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id_room_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`id_room_type`) REFERENCES `room_type` (`id_room_type`);

--
-- Constraints for table `detail_booking`
--
ALTER TABLE `detail_booking`
  ADD CONSTRAINT `detail_booking_ibfk_1` FOREIGN KEY (`id_booking`) REFERENCES `booking` (`id_booking`),
  ADD CONSTRAINT `detail_booking_ibfk_2` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`id_room_type`) REFERENCES `room_type` (`id_room_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
