-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2020 at 12:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `el_dahby`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('mostafa', '1');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5faba183105f1', '5faba183187a3'),
('5faba262d2113', '5faba262ddc9c'),
('5faba2f759685', '5faba2f761027'),
('5faba2f78c7b9', '5faba2f791d7b'),
('5faba2f7c369e', '5faba2f7c91c3'),
('5faba2f7ea38a', '5faba2f7ef7e1'),
('5faba67b36123', '5faba67b43544'),
('5faba750b4fd8', '5faba750c74b0'),
('5faba7521fbe5', '5faba7522cb3a'),
('5faba7f3cfc9c', '5faba7f3d939c'),
('5faba7f43f71a', '5faba7f444ded'),
('5fabda881bc1c', '5fabda88383b2'),
('5fabda8890e8d', '5fabda88a4da2'),
('5fabda8939294', '5fabda894ba85'),
('5fabda89ab026', '5fabda89ca2bb'),
('5fabda8a2e87c', '5fabda8a7fe8b'),
('5fac16420267f', '5fac16420bb96'),
('5fac16423552e', '5fac164248ceb'),
('5fac1642675f3', '5fac16426c38a'),
('5fac164298340', '5fac16429d0bf'),
('5fac1642c4504', '5fac1642d7af9');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `stage`) VALUES
(1, 'files.sql', 1),
(2, 'files (1).sql', 3),
(3, 'Session1-introduction to data science.pdf', 2);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5faba183105f1', 'sasas', '5faba1831879c'),
('5faba183105f1', 'sa', '5faba183187a2'),
('5faba183105f1', 's', '5faba183187a3'),
('5faba183105f1', 's', '5faba183187a4'),
('5faba262d2113', 'sasas', '5faba262ddc97'),
('5faba262d2113', 'sa', '5faba262ddc9c'),
('5faba262d2113', 's', '5faba262ddc9d'),
('5faba262d2113', 's', '5faba262ddc9e'),
('5faba2f759685', '', '5faba2f761027'),
('5faba2f759685', '', '5faba2f76102d'),
('5faba2f759685', '', '5faba2f76102e'),
('5faba2f759685', '', '5faba2f76102f'),
('5faba2f78c7b9', '', '5faba2f791d7b'),
('5faba2f78c7b9', '', '5faba2f791d80'),
('5faba2f78c7b9', '', '5faba2f791d81'),
('5faba2f78c7b9', '', '5faba2f791d82'),
('5faba2f7c369e', '', '5faba2f7c91c3'),
('5faba2f7c369e', '', '5faba2f7c91cc'),
('5faba2f7c369e', '', '5faba2f7c91cd'),
('5faba2f7c369e', '', '5faba2f7c91ce'),
('5faba2f7ea38a', '', '5faba2f7ef7e1'),
('5faba2f7ea38a', '', '5faba2f7ef7e9'),
('5faba2f7ea38a', '', '5faba2f7ef7ea'),
('5faba2f7ea38a', '', '5faba2f7ef7eb'),
('5faba67b36123', '1', '5faba67b4353d'),
('5faba67b36123', '1', '5faba67b43542'),
('5faba67b36123', '11', '5faba67b43543'),
('5faba67b36123', '1', '5faba67b43544'),
('5faba750b4fd8', '', '5faba750c74b0'),
('5faba750b4fd8', '', '5faba750c750f'),
('5faba750b4fd8', '', '5faba750c7510'),
('5faba750b4fd8', '', '5faba750c7520'),
('5faba7521fbe5', '', '5faba7522cb3a'),
('5faba7521fbe5', '', '5faba7522cb3f'),
('5faba7521fbe5', '', '5faba7522cb40'),
('5faba7521fbe5', '', '5faba7522cb41'),
('5faba7f3cfc9c', '', '5faba7f3d939c'),
('5faba7f3cfc9c', '', '5faba7f3d93a2'),
('5faba7f3cfc9c', '', '5faba7f3d93a3'),
('5faba7f3cfc9c', '', '5faba7f3d93a4'),
('5faba7f43f71a', '', '5faba7f444ded'),
('5faba7f43f71a', '', '5faba7f444e1b'),
('5faba7f43f71a', '', '5faba7f444e1c'),
('5faba7f43f71a', '', '5faba7f444e1d'),
('5fabda881bc1c', '', '5fabda88383b2'),
('5fabda881bc1c', '', '5fabda88383b7'),
('5fabda881bc1c', '', '5fabda88383b8'),
('5fabda881bc1c', '', '5fabda88383b9'),
('5fabda8890e8d', '', '5fabda88a4da2'),
('5fabda8890e8d', '', '5fabda88a4da7'),
('5fabda8890e8d', '', '5fabda88a4da8'),
('5fabda8890e8d', '', '5fabda88a4da9'),
('5fabda8939294', '', '5fabda894ba85'),
('5fabda8939294', '', '5fabda894ba8a'),
('5fabda8939294', '', '5fabda894ba8b'),
('5fabda8939294', '', '5fabda894ba8c'),
('5fabda89ab026', '', '5fabda89ca2bb'),
('5fabda89ab026', '', '5fabda89ca2c0'),
('5fabda89ab026', '', '5fabda89ca2c1'),
('5fabda89ab026', '', '5fabda89ca2c2'),
('5fabda8a2e87c', '', '5fabda8a7fe86'),
('5fabda8a2e87c', '', '5fabda8a7fe8b'),
('5fabda8a2e87c', '', '5fabda8a7fe8c'),
('5fabda8a2e87c', '', '5fabda8a7fe8d'),
('5fac16420267f', '1', '5fac16420bb8f'),
('5fac16420267f', '1', '5fac16420bb95'),
('5fac16420267f', '1', '5fac16420bb96'),
('5fac16420267f', '1', '5fac16420bb97'),
('5fac16423552e', '', '5fac164248ceb'),
('5fac16423552e', '', '5fac164248d26'),
('5fac16423552e', '', '5fac164248d27'),
('5fac16423552e', '', '5fac164248d28'),
('5fac1642675f3', '', '5fac16426c38a'),
('5fac1642675f3', '', '5fac16426c38f'),
('5fac1642675f3', '', '5fac16426c390'),
('5fac1642675f3', '', '5fac16426c391'),
('5fac164298340', '', '5fac16429d0bf'),
('5fac164298340', '', '5fac16429d0c4'),
('5fac164298340', '', '5fac16429d0c5'),
('5fac164298340', '', '5fac16429d0c6'),
('5fac1642c4504', '', '5fac1642d7af9'),
('5fac1642c4504', '', '5fac1642d7b1b'),
('5fac1642c4504', '', '5fac1642d7b1c'),
('5fac1642c4504', '', '5fac1642d7b1d');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5fab9ed0f2375', '5faba183105f1', 's', 4, 1),
('5faba25a772bf', '5faba262d2113', 'sasa', 4, 1),
('5faba2f25c1a8', '5faba2f759685', 's', 4, 1),
('5faba2f25c1a8', '5faba2f78c7b9', '', 4, 2),
('5faba2f25c1a8', '5faba2f7c369e', '', 4, 3),
('5faba2f25c1a8', '5faba2f7ea38a', '', 4, 4),
('5faba63b1bae4', '5faba67b36123', 'sasa', 4, 1),
('5faba63b1bae4', '5faba750b4fd8', '', 0, 1),
('5faba63b1bae4', '5faba7521fbe5', '', 0, 1),
('5faba7f12458e', '5faba7f3cfc9c', '', 4, 1),
('5faba7f12458e', '5faba7f43f71a', '', 4, 2),
('5fabda811dd4e', '5fabda881bc1c', '', 4, 1),
('5fabda811dd4e', '5fabda8890e8d', '', 4, 2),
('5fabda811dd4e', '5fabda8939294', '', 4, 3),
('5fabda811dd4e', '5fabda89ab026', '', 4, 4),
('5fabda811dd4e', '5fabda8a2e87c', '', 4, 5),
('5fac163464ff5', '5fac16420267f', 'mostaf', 4, 1),
('5fac163464ff5', '5fac16423552e', '', 4, 2),
('5fac163464ff5', '5fac1642675f3', '', 4, 3),
('5fac163464ff5', '5fac164298340', '', 4, 4),
('5fac163464ff5', '5fac1642c4504', '', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `tag`, `date`) VALUES
('5faba63b1bae4', 'Sasa', 1, 1, 1, 1, '1', '2020-11-11 08:52:11'),
('5faba7f12458e', 'Python Developer', 2, 2, 2, 2, '21', '2020-11-11 08:59:29'),
('5fabda71be63e', 'Python Developer', 1, 1, 1, 1, '1', '2020-11-11 12:34:57'),
('5fabda811dd4e', '5', 5, 5, 5, 5, '5', '2020-11-11 12:35:13'),
('5fac163464ff5', 'Python Developer', 4, 4, 5, 40, '1', '2020-11-11 16:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `Question` varchar(500) NOT NULL,
  `Choice1` varchar(100) NOT NULL,
  `Choice2` varchar(100) NOT NULL,
  `Choice3` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `token_id` text NOT NULL,
  `center` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `stage` int(100) NOT NULL,
  `userName` varchar(1000) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`token_id`, `center`, `phone`, `stage`, `userName`, `password`) VALUES
('514e12660eb856f0022857903f16bad5fa7cea6f', '1', 1, 1, 'mostafa', '111111111'),
('15e90d6fa82b6eb86cfc1ff7e48a6b4d35da216f', '1', 3, 2, 'mostafa', '123456'),
('13757da133cc42b2081ecf9036c326afffbb5b45', '1', 1, 1, 'sasa', 'sasa12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`Question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
