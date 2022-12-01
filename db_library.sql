-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 12:08 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `title` varchar(200) NOT NULL,
  `lend_duration_per_days` int(11) NOT NULL,
  `prize` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated-at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `isbn`, `title`, `lend_duration_per_days`, `prize`, `created_at`, `updated-at`) VALUES
(1, '1514725588333', 'Narto:Saipudin', 5, 5000, '2022-11-30 14:00:05', NULL),
(2, '4460680800983', 'A Thieves End', 5, 5000, '2022-11-30 14:48:06', NULL),
(3, '6387954433894', 'My Beautiful Dark Twisted Fantasy', 5, 5000, '2022-11-30 14:48:06', NULL),
(4, '5423812090963', 'The Sailor', 5, 5000, '2022-11-30 14:48:06', NULL),
(5, '8550786407274', 'Emondora', 5, 5000, '2022-11-30 14:48:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'NF', 'nf012@gmail.com', '$2y$10$lXCxVY6wQS2loBpKRjK3fe6OsClz8nzS5pZBmeeODkuYCbIHy1WT.', '2022-11-30 18:17:02', NULL),
(2, 'a', 'a@gmail.com', '$2y$10$ZnhrpInyz65r94kTGEO0fukGfSSuQxJFEbSGLC1uRSQTW7vxs2N2i', '2022-11-30 23:26:20', NULL),
(4, 'example', 'example@domain.com', '$2y$10$zzA4kH3tb0Ko.AygioXDeO0vbYMP1hXFJinzewOPlY9yC2YzEVvr2', '2022-11-30 23:34:38', NULL),
(9, 'user', 'userEmail@gmail.com', '$2y$10$4y33eHnL1AAoZqlDc3Z5z.mlIX6F/G.V8liqGzzpFIB5aDNl06jsS', '2022-12-01 02:55:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `registration_id` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `registration_id`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-11-30 14:19:10', NULL),
(2, 2, 1, '2022-11-30 14:19:10', NULL),
(3, 3, 1, '2022-11-30 14:19:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_extension`
--

CREATE TABLE `member_extension` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `extended_date` date NOT NULL,
  `extension_fee` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member_registration`
--

CREATE TABLE `member_registration` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `registration_fee` double NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_registration`
--

INSERT INTO `member_registration` (`id`, `name`, `gender`, `phone`, `address`, `registration_fee`, `start_date`, `end_date`, `updated_at`) VALUES
(1, 'Ucup', 'M', '0812345678', 'Jl. Jalan', 50000, '2022-11-30', '2022-12-30', NULL),
(2, 'Ucub', 'M', '0811234567', 'Jl. Street', 50000, '2022-11-30', '2022-12-30', NULL),
(3, 'Yanto', 'F', '0812345666', 'Jl. undisclosed', 50000, '2022-12-04', '2022-01-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trx_borrowed_books`
--

CREATE TABLE `trx_borrowed_books` (
  `id` int(11) NOT NULL,
  `lend_date` date NOT NULL,
  `member_id` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_prize` double NOT NULL,
  `total_fine` double NOT NULL,
  `payment` double NOT NULL,
  `exchange` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trx_borrowed_books`
--

INSERT INTO `trx_borrowed_books` (`id`, `lend_date`, `member_id`, `total_qty`, `total_prize`, `total_fine`, `payment`, `exchange`, `created_at`, `updated_at`) VALUES
(1, '2022-11-30', 1, 2, 10000, 0, 10000, 0, '2022-11-30 14:53:46', NULL),
(2, '2022-11-30', 2, 1, 5000, 0, 20000, 15000, '2022-11-30 14:53:46', NULL),
(3, '2022-12-04', 3, 3, 15000, 0, 50000, 35000, '2022-11-30 14:53:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trx_borrowed_books_details`
--

CREATE TABLE `trx_borrowed_books_details` (
  `id` int(11) NOT NULL,
  `header_borrowed_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trx_borrowed_books_details`
--

INSERT INTO `trx_borrowed_books_details` (`id`, `header_borrowed_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-11-30 15:00:59', NULL),
(5, 1, 3, '2022-11-30 15:25:12', NULL),
(6, 2, 5, '2022-11-30 15:25:12', NULL),
(7, 3, 2, '2022-11-30 15:25:12', NULL),
(8, 3, 3, '2022-11-30 15:25:12', NULL),
(9, 3, 4, '2022-11-30 15:25:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trx_returned_books`
--

CREATE TABLE `trx_returned_books` (
  `id` int(11) NOT NULL,
  `return_date` date NOT NULL,
  `member_id` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_fine` double NOT NULL,
  `payment` double NOT NULL,
  `exchange` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trx_returned_books`
--

INSERT INTO `trx_returned_books` (`id`, `return_date`, `member_id`, `total_qty`, `total_fine`, `payment`, `exchange`, `created_at`, `updated_at`) VALUES
(1, '2022-12-03', 1, 1, 0, 0, 0, '2022-11-30 15:27:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trx_return_book_details`
--

CREATE TABLE `trx_return_book_details` (
  `id` int(11) NOT NULL,
  `return_header_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `borrow_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trx_return_book_details`
--

INSERT INTO `trx_return_book_details` (`id`, `return_header_id`, `book_id`, `borrow_details_id`) VALUES
(1, 1, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_extension`
--
ALTER TABLE `member_extension`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_registration`
--
ALTER TABLE `member_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trx_borrowed_books`
--
ALTER TABLE `trx_borrowed_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trx_borrowed_books_details`
--
ALTER TABLE `trx_borrowed_books_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hdr_peminjaman` (`header_borrowed_id`),
  ADD KEY `fk_buku` (`book_id`);

--
-- Indexes for table `trx_returned_books`
--
ALTER TABLE `trx_returned_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trx_return_book_details`
--
ALTER TABLE `trx_return_book_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pinjam_detail` (`borrow_details_id`),
  ADD KEY `fk_kembali_hdr` (`return_header_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member_extension`
--
ALTER TABLE `member_extension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_registration`
--
ALTER TABLE `member_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trx_borrowed_books`
--
ALTER TABLE `trx_borrowed_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trx_borrowed_books_details`
--
ALTER TABLE `trx_borrowed_books_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trx_returned_books`
--
ALTER TABLE `trx_returned_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trx_return_book_details`
--
ALTER TABLE `trx_return_book_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `fk_regis` FOREIGN KEY (`registration_id`) REFERENCES `member_registration` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `trx_borrowed_books`
--
ALTER TABLE `trx_borrowed_books`
  ADD CONSTRAINT `fk_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `trx_borrowed_books_details`
--
ALTER TABLE `trx_borrowed_books_details`
  ADD CONSTRAINT `fk_buku` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hdr_peminjaman` FOREIGN KEY (`header_borrowed_id`) REFERENCES `trx_borrowed_books` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `trx_return_book_details`
--
ALTER TABLE `trx_return_book_details`
  ADD CONSTRAINT `fk_kembali_hdr` FOREIGN KEY (`return_header_id`) REFERENCES `trx_returned_books` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pinjam_detail` FOREIGN KEY (`borrow_details_id`) REFERENCES `trx_borrowed_books_details` (`header_borrowed_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
