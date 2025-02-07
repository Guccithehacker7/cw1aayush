-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 03:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `login.users`
--

CREATE TABLE `login.users` (
  `id` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `select_pdt`
--

CREATE TABLE `select_pdt` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `product_name` text NOT NULL,
  `product_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `selec_pdt`
--

CREATE TABLE `selec_pdt` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created-at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created-at`) VALUES
(1, 'username', '$2y$10$yNcW.1GLJx4xQdYJ4NnKpOUftmHL4E0oDPrByFcIbIGBQZft7Pkyi', '2022-12-28 19:07:37'),
(2, 'sashy', '$2y$10$DGdZFp/CntT8Zch0wU0zzOhNyZPLMI/8qvo9/0AmFwjrFQKPgfknq', '2022-12-28 21:33:29'),
(3, 'Riwajsir', '$2y$10$CKaqGGmXuoSpIl5GqcqhHu/JLKkV/0lShWLfVJq/c8aK7VcDDsrem', '2022-12-29 09:28:17'),
(4, 'saharsh', '$2y$10$MF2NIVCN48eD5DjehyU47ul46Rgz9HVbGZRtMZ8J5YWIiWFEBYjXS', '2023-01-04 10:43:18'),
(5, 'sakshat pandey', '$2y$10$pFlUW.D7JLZi9L2JWYwsVO7ur2S3/KXCiJJgOuDc6FtAMSFqzklq2', '2023-01-07 13:17:21'),
(6, 'garima', '$2y$10$G.Iu0HTrYgAua5abomx3lOzvjNyUreEpHwK0AbBlToGEScyjmbEY6', '2023-01-11 18:41:45'),
(16, 'garima2', '$2y$10$KjpIyzWJLykkbE342gwple3Q2vbIibDNNv3r.FTE9T1lRslcJ7Zhm', '2023-01-11 18:45:14'),
(17, 'whoisthis', '$2y$10$ZtP8Xiai.RK9L2PVeE53u.5utjxLw4gUGEcGfd5qaHiyOiAsfj.Fe', '2023-01-11 18:54:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `select_pdt`
--
ALTER TABLE `select_pdt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selec_pdt`
--
ALTER TABLE `selec_pdt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `select_pdt`
--
ALTER TABLE `select_pdt`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selec_pdt`
--
ALTER TABLE `selec_pdt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
