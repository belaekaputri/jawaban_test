-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 06:51 PM
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
-- Database: `db_vehicles`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_token`
--

CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `akses_token`
--

INSERT INTO `akses_token` (`id_akses_token`, `id_user`, `access_token`, `ip_address`) VALUES
(1, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwibmFtZSI6ImVuZGFuZyIsImVtYWlsIjoiZW5kYW5nQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJpc19hZG1pbiI6MiwiY3JlYXRlZF9hdCI6IjIwMjQtMDctMDRUMTc6MDA6MDAuMDAwWiIsInVwZGF0ZWRfYXQiOiIyMDI0LTA3LTA0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTcyMDE4Mjk1NCwiZXhwIjoxNzIwMTg1MzU0fQ.3R8jrSgMus9FgT-aLqvk05vkRDFHwzTFg7iR6BiBLjo', '192.168.33.83'),
(2, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywibmFtZSI6ImhhbmJpbiIsImVtYWlsIjoiaGFuYmluQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJpc19hZG1pbiI6MiwiY3JlYXRlZF9hdCI6IjIwMjQtMDctMDRUMTc6MDA6MDAuMDAwWiIsInVwZGF0ZWRfYXQiOiIyMDI0LTA3LTA0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTcyMDE4NjA4MCwiZXhwIjoxNzIwMTg4NDgwfQ.bmY4PMcBJaNKsD2CJtYYi_Kj3Wy_JtfPHbQYT-t4SR8', '192.168.33.83'),
(3, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywibmFtZSI6ImhhbmJpbiIsImVtYWlsIjoiaGFuYmluQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJpc19hZG1pbiI6MCwiY3JlYXRlZF9hdCI6IjIwMjQtMDctMDRUMTc6MDA6MDAuMDAwWiIsInVwZGF0ZWRfYXQiOiIyMDI0LTA3LTA0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTcyMDE4NjM0MSwiZXhwIjoxNzIwMTg4NzQxfQ.pYNioQxYJyDm2XpPrM_8MJv1bkVnALoQJTQiVplRrPI', '192.168.33.83'),
(4, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywibmFtZSI6ImhhbmJpbiIsImVtYWlsIjoiaGFuYmluQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJpc19hZG1pbiI6MCwiY3JlYXRlZF9hdCI6IjIwMjQtMDctMDRUMTc6MDA6MDAuMDAwWiIsInVwZGF0ZWRfYXQiOiIyMDI0LTA3LTA0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTcyMDE4NjU5NywiZXhwIjoxNzIwMTg4OTk3fQ.94AS0N7dTHpdoB23_E7lYW8FfJygciaNLuk1BrhqWZ0', '192.168.33.83'),
(5, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwibmFtZSI6Im5hZHlhIiwiZW1haWwiOiJuYWR5YUBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwiaXNfYWRtaW4iOjIsImNyZWF0ZWRfYXQiOiIyMDI0LTA3LTA0VDE3OjAwOjAwLjAwMFoiLCJ1cGRhdGVkX2F0IjoiMjAyNC0wNy0wNFQxNzowMDowMC4wMDBaIn1dLCJpYXQiOjE3MjAxOTYzMzIsImV4cCI6MTcyMDE5ODczMn0.P2PLCLu2n50JCBFBBnTNSNraTjGC79m-ge3w1CLGaok', '192.168.33.83');

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `year_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`id`, `code`, `price`, `year_id`, `model_id`) VALUES
(1, 'MSP2016', 100000.00, 6, 1),
(2, 'M3SR2018', 35000.00, 3, 2),
(3, 'M3P2021', 50000.00, 4, 1),
(4, 'SONSE2022', 24000.00, 5, 3),
(5, 'SONL2016', 30000.00, 6, 4),
(6, 'ES2020', 20000.00, 7, 4),
(7, 'ENL2020', 25000.00, 3, 5),
(8, '488GTB2021', 300000.00, 4, 3),
(9, '488P2023', 350000.00, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'endang', 'endang@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2024-07-05', '2024-07-05'),
(2, 'nadya', 'nadya@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2024-07-05', '2024-07-05'),
(3, 'hanbin', 'hanbin@gmail.com', '202cb962ac59075b964b07152d234b70', 0, '2024-07-05', '2024-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_brand`
--

CREATE TABLE `vehicle_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_brand`
--

INSERT INTO `vehicle_brand` (`id`, `name`) VALUES
(1, 'Toyota'),
(2, 'Ford'),
(3, 'BMW'),
(4, 'Honda'),
(5, 'Tesla'),
(6, 'Hyundai'),
(7, 'Ferrari'),
(8, 'Audi'),
(9, 'Suzuki'),
(10, 'Nissan'),
(11, 'semangat');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model`
--

CREATE TABLE `vehicle_model` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `name`, `type_id`) VALUES
(1, 'Corolla LE', 1),
(2, 'Corolla XSE', 1),
(3, 'Camry SE', 2),
(4, 'Camry XLE', 2),
(5, 'Mustang GT', 3),
(6, 'Mustang EcoBoost', 3),
(7, 'F-150 Lariat', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `name`, `brand_id`) VALUES
(1, 'Corolla', 1),
(2, 'Camry', 1),
(3, 'Mustang', 2),
(4, 'F-150', 2),
(5, 'X5', 3),
(6, 'Civic', 4),
(7, 'Model S', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_year`
--

CREATE TABLE `vehicle_year` (
  `id` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_year`
--

INSERT INTO `vehicle_year` (`id`, `year`) VALUES
(1, '2016'),
(2, '2017'),
(3, '2018'),
(4, '2019'),
(5, '2020'),
(6, '2021'),
(7, '2022'),
(8, '2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD PRIMARY KEY (`id_akses_token`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year_id` (`year_id`),
  ADD KEY `model_id` (`model_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `vehicle_year`
--
ALTER TABLE `vehicle_year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_token`
--
ALTER TABLE `akses_token`
  MODIFY `id_akses_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vehicle_year`
--
ALTER TABLE `vehicle_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD CONSTRAINT `pricelist_ibfk_1` FOREIGN KEY (`year_id`) REFERENCES `vehicle_year` (`id`),
  ADD CONSTRAINT `pricelist_ibfk_2` FOREIGN KEY (`model_id`) REFERENCES `vehicle_model` (`id`);

--
-- Constraints for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD CONSTRAINT `vehicle_model_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `vehicle_type` (`id`);

--
-- Constraints for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD CONSTRAINT `vehicle_type_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `vehicle_brand` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
