-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 02:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prp`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `uname`, `pass`) VALUES
(1, 'guru', 'guru123'),
(2, 'sanjay', '12345'),
(3, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `project_reg`
--

CREATE TABLE `project_reg` (
  `id` int(11) NOT NULL,
  `team` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `project` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_reg`
--

INSERT INTO `project_reg` (`id`, `team`, `fname`, `sname`, `project`) VALUES
(1, 'Callback Cats', 'Mohanraj', 'Anuja', 'Pharmacy Management System'),
(2, 'Boolean Autocrats', 'Ponkaviarasu', 'Vijayabharathi', 'Online Medication Delivery'),
(3, 'Hex Clan', 'Pugalarasan', 'Sakthivarshan', 'Telephone Mail System'),
(4, 'Mind Optimizers', 'Thirumurugan', 'Poovarasu', 'Online Voting System'),
(5, 'Lint Whoppers', 'Sasivanan', 'Sethuram', 'Online Banking System'),
(6, 'Sinister Rewind', 'Yogeshwaran', 'Vignesh', 'Online House Rental System'),
(7, 'Parallel Inertia', 'Sankaranarayanan', 'Raghul', 'Technical Documentation Webpage'),
(8, 'Data Pirates', 'Ponnparamaguru', 'Sanjay', 'Project Management System'),
(9, 'Bin clan', 'Thangavel', 'Surya', 'Banking System');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `id` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`id`, `uname`, `pass`) VALUES
(1, 'student', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_reg`
--
ALTER TABLE `project_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_reg`
--
ALTER TABLE `project_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
