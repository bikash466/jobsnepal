-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 12:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsnepal`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `ID` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `Jobid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`ID`, `content`, `Jobid`, `user_id`) VALUES
(0, 'hihi', 2, 2),
(0, 'hello,can i work ', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `UserName`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-06-04 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `JobId` int(5) DEFAULT NULL,
  `EDate` varchar(100) DEFAULT NULL,
  `ETime` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Applydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Beautician', '2023-02-09 15:56:04', NULL, 0),
(3, 'Carpenter', '2023-02-25 15:56:21', NULL, 0),
(6, 'Painter', '2023-04-09 08:30:40', NULL, 0),
(8, 'Handyman', '2023-04-16 09:55:30', NULL, 0),
(9, 'Babysitter', '2023-04-16 09:55:36', NULL, 0),
(10, 'House Cleaner', '2023-04-16 09:55:41', NULL, 0),
(11, 'Pet Sitter', '2023-04-16 09:55:47', NULL, 0),
(12, 'Gardener', '2023-04-16 09:55:53', NULL, 0),
(13, 'Car Wash Attendant', '2023-04-16 09:55:58', NULL, 0),
(14, 'furniture Mover', '2023-04-16 09:59:35', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblemployers`
--

CREATE TABLE `tblemployers` (
  `id` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Ph` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `EmpPassword` varchar(250) DEFAULT NULL,
  `reset_pass` varchar(150) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployers`
--

INSERT INTO `tblemployers` (`id`, `Name`, `Ph`, `Email`, `EmpPassword`, `reset_pass`, `Image`, `RegDate`, `LastUpdationDate`, `Is_Active`) VALUES
(3, 'sad', '9846795851', 'sad@gmail.com', '$2y$12$lvTNtKuA02Q1ot3RjhU33OcoIcN6yekn5dr27eJQ7mlq6Quq9CY6S', NULL, 'f3c80496117dc511cea66fa37a17503a.jpg', '2023-04-07 14:50:17', '2023-04-07 14:50:17', 1),
(4, 'kapil', '9804155812', 'kapil@gmail.com', '$2y$12$0tv00Hdntm4m6maToAsZDebmFMAjPLUxYfipD5n../Nd1Qop1LL3u', NULL, 'cf0dd99211d87d98c7a8ec13d7628fc9.jpg', '2023-04-08 13:28:26', '2023-04-16 09:54:49', 1),
(5, 'suraj', '9876543210', 'suraj@gmail.com', '$2y$12$ONGpWa9693HW5abkkfNFA.n0J2xtoi3dRLoXLOjwsp9GSKtsqcEhC', NULL, 'd80767ce80bfec205f05db5975e7ba7d.jpg', '2023-04-12 01:24:03', '2023-04-12 01:24:03', 1),
(6, 'Adil', '9804155813', 'thapaadil@gmail.com', '$2y$12$.p6X.TFPFrX8enUyOXW3q.ZaP0GoRKcFP3tL2z1rwlhyyO4YYm8o6', NULL, '85f19b9e6ba2e605c4ddf119c2820acd.jpg', '2023-04-16 10:01:15', '2023-04-16 10:01:15', 1),
(212, 'Test212', '980286197905', 'Test212@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(213, 'Test213', '985142329619', 'Test213@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(214, 'Test214', '982656282031', 'Test214@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(215, 'Test215', '983868537074', 'Test215@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(216, 'Test216', '985714961966', 'Test216@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(217, 'Test217', '984060951289', 'Test217@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(218, 'Test218', '981386676916', 'Test218@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(219, 'Test219', '980578699587', 'Test219@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(220, 'Test220', '980807072419', 'Test220@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(221, 'Test221', '983711850805', 'Test221@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(222, 'Test222', '982764535372', 'Test222@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(223, 'Test223', '984161980854', 'Test223@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(224, 'Test224', '984475046782', 'Test224@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(225, 'Test225', '988625804129', 'Test225@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(226, 'Test226', '986579619373', 'Test226@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(227, 'Test227', '982245295329', 'Test227@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(228, 'Test228', '980143171512', 'Test228@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(229, 'Test229', '986145293960', 'Test229@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(230, 'Test230', '985075666723', 'Test230@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(231, 'Test231', '987827286867', 'Test231@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(232, 'Test232', '982964083453', 'Test232@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(233, 'Test233', '985382915722', 'Test233@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(234, 'Test234', '984406388127', 'Test234@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(235, 'Test235', '981523409729', 'Test235@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(236, 'Test236', '985753211273', 'Test236@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(237, 'Test237', '989043623087', 'Test237@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(238, 'Test238', '986555827117', 'Test238@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(239, 'Test239', '988990371347', 'Test239@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(240, 'Test240', '982957116666', 'Test240@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(241, 'Test241', '988000882229', 'Test241@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(242, 'Test242', '986526811455', 'Test242@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(243, 'Test243', '984428636352', 'Test243@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(244, 'Test244', '988606800594', 'Test244@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(245, 'Test245', '981739636568', 'Test245@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(246, 'Test246', '989027198552', 'Test246@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(247, 'Test247', '988482229755', 'Test247@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(248, 'Test248', '982349621358', 'Test248@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(249, 'Test249', '986515975163', 'Test249@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(250, 'Test250', '989558583470', 'Test250@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(251, 'Test251', '986522550850', 'Test251@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(252, 'Test252', '983741807224', 'Test252@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(253, 'Test253', '985994434902', 'Test253@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(254, 'Test254', '989814838897', 'Test254@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(255, 'Test255', '984127953960', 'Test255@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(256, 'Test256', '987876359250', 'Test256@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(257, 'Test257', '985280279820', 'Test257@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(258, 'Test258', '982080625745', 'Test258@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(259, 'Test259', '985608762079', 'Test259@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(260, 'Test260', '988921567657', 'Test260@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(261, 'Test261', '988610107869', 'Test261@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(262, 'Test262', '989128602062', 'Test262@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(263, 'Test263', '986686265764', 'Test263@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(264, 'Test264', '983253793012', 'Test264@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(265, 'Test265', '985420860402', 'Test265@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(266, 'Test266', '982300200902', 'Test266@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(267, 'Test267', '980954710144', 'Test267@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(268, 'Test268', '983354264957', 'Test268@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(269, 'Test269', '988495885216', 'Test269@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(270, 'Test270', '985932088183', 'Test270@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(271, 'Test271', '983482887106', 'Test271@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(272, 'Test272', '984417588948', 'Test272@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(273, 'Test273', '985448024418', 'Test273@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(274, 'Test274', '986824448674', 'Test274@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(275, 'Test275', '984720440437', 'Test275@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(276, 'Test276', '987871927068', 'Test276@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(277, 'Test277', '988932711565', 'Test277@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(278, 'Test278', '980529447860', 'Test278@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(279, 'Test279', '985653140150', 'Test279@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(280, 'Test280', '982895738252', 'Test280@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(281, 'Test281', '981584112227', 'Test281@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(282, 'Test282', '984702138859', 'Test282@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(283, 'Test283', '987181325105', 'Test283@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(284, 'Test284', '984360864641', 'Test284@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(285, 'Test285', '987339621286', 'Test285@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(286, 'Test286', '982459032938', 'Test286@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(287, 'Test287', '981799427701', 'Test287@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(288, 'Test288', '982584444734', 'Test288@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(289, 'Test289', '982778045407', 'Test289@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(290, 'Test290', '986682427020', 'Test290@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(291, 'Test291', '987471900124', 'Test291@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(292, 'Test292', '980257927757', 'Test292@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(293, 'Test293', '989562552580', 'Test293@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(294, 'Test294', '981330977493', 'Test294@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(295, 'Test295', '982536785428', 'Test295@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(296, 'Test296', '988679383796', 'Test296@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(297, 'Test297', '982199004118', 'Test297@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(298, 'Test298', '981333880398', 'Test298@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(299, 'Test299', '986930806895', 'Test299@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(300, 'Test300', '984724920648', 'Test300@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(301, 'Test301', '982607164246', 'Test301@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(302, 'Test302', '987183222517', 'Test302@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(303, 'Test303', '986268787893', 'Test303@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(304, 'Test304', '983572293849', 'Test304@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(305, 'Test305', '980665063589', 'Test305@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(306, 'Test306', '986019820474', 'Test306@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(307, 'Test307', '985596737792', 'Test307@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(308, 'Test308', '988916068095', 'Test308@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(309, 'Test309', '986319898559', 'Test309@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(310, 'Test310', '983577322488', 'Test310@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1),
(311, 'Test311', '980620121165', 'Test311@example.com', 'mypassword', NULL, '', '2023-04-16 11:15:52', '2023-04-16 11:15:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `jobId` int(11) NOT NULL,
  `employerId` int(11) NOT NULL,
  `jobCategory` varchar(255) DEFAULT NULL,
  `salaryPackage` char(200) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `jobLocation` varchar(255) DEFAULT NULL,
  `jobDescription` mediumtext DEFAULT NULL,
  `Pay` varchar(255) DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljobs`
--

INSERT INTO `tbljobs` (`jobId`, `employerId`, `jobCategory`, `salaryPackage`, `experience`, `jobLocation`, `jobDescription`, `Pay`, `postinDate`, `updationDate`) VALUES
(15, 3, 'Pet Sitter', '350', '1', 'Amarsingh', 'pet sitter', 'per hour', '2023-04-16 10:55:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbljobseekers`
--

CREATE TABLE `tbljobseekers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(150) DEFAULT NULL,
  `ContactNumber` bigint(15) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `reset_pass` varchar(150) DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljobseekers`
--

INSERT INTO `tbljobseekers` (`id`, `FullName`, `EmailId`, `ContactNumber`, `Password`, `reset_pass`, `ProfilePic`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(2, 'bikash baral', 'bikash@gmail.com', 9846865319, '$2y$12$5zSvZizQnTXBAq3vIYONB.wz6veGf3inx/.oygOKKDEx6zTbh5MdK', NULL, 'ecebbecf28c2692aeb021597fbddb1741680878616.jpg', '2023-04-07 14:40:21', '2023-04-07 14:43:36', 1),
(3, 'Roshan Rana', 'roshan@gmail.com', 9846865318, '$2y$12$QmyyRFKcf8bCVrmmeVvJAefb40jzjk/BPXSJJRgw/3XcFB20uJn66', NULL, 'f5fc94ed0a943a6efc5cb0a4843323401681643366.jpg', '2023-04-11 16:08:49', '2023-04-16 11:09:26', 1),
(4, 'rabin', 'rabin@gmail.com', 1234567899, '$2y$12$CiS1G/enJXP3aT3XXhjpTuZiVXLhl7BoJ84KLn6qxoF6.3/xo7MiK', NULL, '97fbac76cbf649dc1ae3247e04706f671681643188.jpg', '2023-04-12 01:27:31', '2023-04-16 11:06:28', 1),
(5, 'sandesh devkota', 'sandesh@gmail.com', 9804153212, '$2y$12$Sg/WpylVKvd1/oKEnJ5mLOxSLZRzBNKNPJZL7ep0eh.95LsShwyOq', NULL, 'ca75d9bfb8f27bdb6a5a0ac2f19a71df1681642722.jpg', '2023-04-16 10:58:11', '2023-04-16 10:58:42', 1),
(1005, 'Test1005', 'test105@example.com', 9876667126, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1006, 'Test1006', 'test106@example.com', 9876649232, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1007, 'Test1007', 'test107@example.com', 9876950001, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1008, 'Test1008', 'test108@example.com', 9876556017, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1009, 'Test1009', 'test109@example.com', 9876349575, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1010, 'Test1010', 'test110@example.com', 9876613428, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1011, 'Test1011', 'test111@example.com', 9876232743, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1012, 'Test1012', 'test112@example.com', 9876363347, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1013, 'Test1013', 'test113@example.com', 9876360437, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1014, 'Test1014', 'test114@example.com', 9876282854, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1015, 'Test1015', 'test115@example.com', 9876817656, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1016, 'Test1016', 'test116@example.com', 9876710767, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1017, 'Test1017', 'test117@example.com', 9876759154, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1018, 'Test1018', 'test118@example.com', 9876674321, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1019, 'Test1019', 'test119@example.com', 9876448535, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1020, 'Test1020', 'test120@example.com', 9876146381, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1021, 'Test1021', 'test121@example.com', 9876577506, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1022, 'Test1022', 'test122@example.com', 9876546368, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1023, 'Test1023', 'test123@example.com', 9876200512, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1024, 'Test1024', 'test124@example.com', 9876226534, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1025, 'Test1025', 'test125@example.com', 9876407447, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1026, 'Test1026', 'test126@example.com', 9876407686, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1027, 'Test1027', 'test127@example.com', 9876945770, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1028, 'Test1028', 'test128@example.com', 9876703555, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1029, 'Test1029', 'test129@example.com', 9876193951, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1030, 'Test1030', 'test130@example.com', 9876891621, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1031, 'Test1031', 'test131@example.com', 9876189303, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1032, 'Test1032', 'test132@example.com', 9876641803, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1033, 'Test1033', 'test133@example.com', 9876921246, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1034, 'Test1034', 'test134@example.com', 9876284108, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1035, 'Test1035', 'test135@example.com', 9876791942, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1036, 'Test1036', 'test136@example.com', 9876825200, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1037, 'Test1037', 'test137@example.com', 9876451389, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1038, 'Test1038', 'test138@example.com', 9876494810, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1039, 'Test1039', 'test139@example.com', 9876624152, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1040, 'Test1040', 'test140@example.com', 9876189655, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1041, 'Test1041', 'test141@example.com', 9876213998, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1042, 'Test1042', 'test142@example.com', 9876569909, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1043, 'Test1043', 'test143@example.com', 9876469819, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1044, 'Test1044', 'test144@example.com', 9876740939, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1045, 'Test1045', 'test145@example.com', 9876737370, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1046, 'Test1046', 'test146@example.com', 9876902946, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1047, 'Test1047', 'test147@example.com', 9876419634, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1048, 'Test1048', 'test148@example.com', 9876363389, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1049, 'Test1049', 'test149@example.com', 9876538906, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1050, 'Test1050', 'test150@example.com', 9876419961, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1051, 'Test1051', 'test151@example.com', 9876502083, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1052, 'Test1052', 'test152@example.com', 9876924135, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1053, 'Test1053', 'test153@example.com', 9876259750, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1054, 'Test1054', 'test154@example.com', 9876852371, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1055, 'Test1055', 'test155@example.com', 9876311024, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1056, 'Test1056', 'test156@example.com', 9876391277, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1057, 'Test1057', 'test157@example.com', 9876744004, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1058, 'Test1058', 'test158@example.com', 9876332516, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1059, 'Test1059', 'test159@example.com', 9876822074, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1060, 'Test1060', 'test160@example.com', 9876429124, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1061, 'Test1061', 'test161@example.com', 9876868420, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1062, 'Test1062', 'test162@example.com', 9876910951, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1063, 'Test1063', 'test163@example.com', 9876284657, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1064, 'Test1064', 'test164@example.com', 9876390404, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1065, 'Test1065', 'test165@example.com', 9876343010, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1066, 'Test1066', 'test166@example.com', 9876486800, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1067, 'Test1067', 'test167@example.com', 9876461117, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1068, 'Test1068', 'test168@example.com', 9876572412, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1069, 'Test1069', 'test169@example.com', 9876493654, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1070, 'Test1070', 'test170@example.com', 9876954676, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1071, 'Test1071', 'test171@example.com', 9876835851, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1072, 'Test1072', 'test172@example.com', 9876782351, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1073, 'Test1073', 'test173@example.com', 9876644034, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1074, 'Test1074', 'test174@example.com', 9876638087, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1075, 'Test1075', 'test175@example.com', 9876781977, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1076, 'Test1076', 'test176@example.com', 9876316619, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1077, 'Test1077', 'test177@example.com', 9876735768, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1078, 'Test1078', 'test178@example.com', 9876864513, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1079, 'Test1079', 'test179@example.com', 9876204872, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1080, 'Test1080', 'test180@example.com', 9876644646, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1081, 'Test1081', 'test181@example.com', 9876573994, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1082, 'Test1082', 'test182@example.com', 9876178901, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1083, 'Test1083', 'test183@example.com', 9876366201, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1084, 'Test1084', 'test184@example.com', 9876733138, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1085, 'Test1085', 'test185@example.com', 9876880859, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1086, 'Test1086', 'test186@example.com', 9876122695, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1087, 'Test1087', 'test187@example.com', 9876984530, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1088, 'Test1088', 'test188@example.com', 9876605330, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1089, 'Test1089', 'test189@example.com', 9876529279, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1090, 'Test1090', 'test190@example.com', 9876359201, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1091, 'Test1091', 'test191@example.com', 9876362421, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1092, 'Test1092', 'test192@example.com', 9876547452, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1093, 'Test1093', 'test193@example.com', 9876898903, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1094, 'Test1094', 'test194@example.com', 9876452308, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1095, 'Test1095', 'test195@example.com', 9876583620, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1096, 'Test1096', 'test196@example.com', 9876663617, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1097, 'Test1097', 'test197@example.com', 9876701921, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1098, 'Test1098', 'test198@example.com', 9876433113, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1099, 'Test1099', 'test199@example.com', 9876640253, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1100, 'Test1100', 'test200@example.com', 9876862069, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1101, 'Test1101', 'test201@example.com', 9876901222, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1102, 'Test1102', 'test202@example.com', 9876200559, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1103, 'Test1103', 'test203@example.com', 9876395912, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1104, 'Test1104', 'test204@example.com', 9876415986, 'mypassword', NULL, '', '2023-04-16 11:14:52', '2023-04-16 11:14:52', 1),
(1105, 'Test1105', 'test1105@example.com', 9876781004, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1106, 'Test1106', 'test1106@example.com', 9876928090, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1107, 'Test1107', 'test1107@example.com', 9876876239, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1108, 'Test1108', 'test1108@example.com', 9876521850, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1109, 'Test1109', 'test1109@example.com', 9876721296, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1110, 'Test1110', 'test1110@example.com', 9876510242, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1111, 'Test1111', 'test1111@example.com', 9876566811, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1112, 'Test1112', 'test1112@example.com', 9876279602, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1113, 'Test1113', 'test1113@example.com', 9876252407, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1114, 'Test1114', 'test1114@example.com', 9876936851, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1115, 'Test1115', 'test1115@example.com', 9876562817, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1116, 'Test1116', 'test1116@example.com', 9876927148, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1117, 'Test1117', 'test1117@example.com', 9876539342, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1118, 'Test1118', 'test1118@example.com', 9876257036, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1119, 'Test1119', 'test1119@example.com', 9876477924, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1120, 'Test1120', 'test1120@example.com', 9876992543, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1121, 'Test1121', 'test1121@example.com', 9876392421, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1122, 'Test1122', 'test1122@example.com', 9876603868, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1123, 'Test1123', 'test1123@example.com', 9876700184, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1124, 'Test1124', 'test1124@example.com', 9876577160, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1125, 'Test1125', 'test1125@example.com', 9876471072, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1126, 'Test1126', 'test1126@example.com', 9876851470, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1127, 'Test1127', 'test1127@example.com', 9876679963, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1128, 'Test1128', 'test1128@example.com', 9876128627, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1129, 'Test1129', 'test1129@example.com', 9876225732, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1130, 'Test1130', 'test1130@example.com', 9876431990, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1131, 'Test1131', 'test1131@example.com', 9876261675, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1132, 'Test1132', 'test1132@example.com', 9876180537, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1133, 'Test1133', 'test1133@example.com', 9876743702, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1134, 'Test1134', 'test1134@example.com', 9876752485, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1135, 'Test1135', 'test1135@example.com', 9876666908, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1136, 'Test1136', 'test1136@example.com', 9876475907, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1137, 'Test1137', 'test1137@example.com', 9876721953, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1138, 'Test1138', 'test1138@example.com', 9876872027, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1139, 'Test1139', 'test1139@example.com', 9876694887, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1140, 'Test1140', 'test1140@example.com', 9876182321, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1141, 'Test1141', 'test1141@example.com', 9876131112, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1142, 'Test1142', 'test1142@example.com', 9876910813, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1143, 'Test1143', 'test1143@example.com', 9876617956, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1144, 'Test1144', 'test1144@example.com', 9876644760, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1145, 'Test1145', 'test1145@example.com', 9876921326, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1146, 'Test1146', 'test1146@example.com', 9876825124, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1147, 'Test1147', 'test1147@example.com', 9876405779, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1148, 'Test1148', 'test1148@example.com', 9876974253, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1149, 'Test1149', 'test1149@example.com', 9876797242, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1150, 'Test1150', 'test1150@example.com', 9876615637, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1151, 'Test1151', 'test1151@example.com', 9876870533, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1152, 'Test1152', 'test1152@example.com', 9876913793, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1153, 'Test1153', 'test1153@example.com', 9876858675, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1154, 'Test1154', 'test1154@example.com', 9876998058, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1155, 'Test1155', 'test1155@example.com', 9876605906, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1156, 'Test1156', 'test1156@example.com', 9876697899, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1157, 'Test1157', 'test1157@example.com', 9876863036, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1158, 'Test1158', 'test1158@example.com', 9876255187, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1159, 'Test1159', 'test1159@example.com', 9876901549, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1160, 'Test1160', 'test1160@example.com', 9876531224, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1161, 'Test1161', 'test1161@example.com', 9876959332, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1162, 'Test1162', 'test1162@example.com', 9876295725, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1163, 'Test1163', 'test1163@example.com', 9876439506, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1164, 'Test1164', 'test1164@example.com', 9876560081, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1165, 'Test1165', 'test1165@example.com', 9876265553, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1166, 'Test1166', 'test1166@example.com', 9876141263, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1167, 'Test1167', 'test1167@example.com', 9876978422, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1168, 'Test1168', 'test1168@example.com', 9876353178, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1169, 'Test1169', 'test1169@example.com', 9876116019, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1170, 'Test1170', 'test1170@example.com', 9876809207, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1171, 'Test1171', 'test1171@example.com', 9876185059, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1172, 'Test1172', 'test1172@example.com', 9876737247, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1173, 'Test1173', 'test1173@example.com', 9876621506, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1174, 'Test1174', 'test1174@example.com', 9876285866, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1175, 'Test1175', 'test1175@example.com', 9876510048, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1176, 'Test1176', 'test1176@example.com', 9876976932, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1177, 'Test1177', 'test1177@example.com', 9876900102, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1178, 'Test1178', 'test1178@example.com', 9876326868, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1179, 'Test1179', 'test1179@example.com', 9876875447, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1180, 'Test1180', 'test1180@example.com', 9876452362, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1181, 'Test1181', 'test1181@example.com', 9876473001, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1182, 'Test1182', 'test1182@example.com', 9876799060, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1183, 'Test1183', 'test1183@example.com', 9876789013, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1184, 'Test1184', 'test1184@example.com', 9876261308, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1185, 'Test1185', 'test1185@example.com', 9876753582, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1186, 'Test1186', 'test1186@example.com', 9876842282, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1187, 'Test1187', 'test1187@example.com', 9876206987, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1188, 'Test1188', 'test1188@example.com', 9876942099, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1189, 'Test1189', 'test1189@example.com', 9876291796, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1190, 'Test1190', 'test1190@example.com', 9876834193, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1191, 'Test1191', 'test1191@example.com', 9876681322, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1192, 'Test1192', 'test1192@example.com', 9876783559, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1193, 'Test1193', 'test1193@example.com', 9876805478, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1194, 'Test1194', 'test1194@example.com', 9876448940, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1195, 'Test1195', 'test1195@example.com', 9876237767, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1196, 'Test1196', 'test1196@example.com', 9876280617, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1197, 'Test1197', 'test1197@example.com', 9876334629, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1198, 'Test1198', 'test1198@example.com', 9876709519, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1199, 'Test1199', 'test1199@example.com', 9876519556, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1200, 'Test1200', 'test1200@example.com', 9876813878, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1201, 'Test1201', 'test1201@example.com', 9876264714, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1202, 'Test1202', 'test1202@example.com', 9876520617, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1203, 'Test1203', 'test1203@example.com', 9876356990, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1),
(1204, 'Test1204', 'test1204@example.com', 9876460780, 'mypassword', NULL, '', '2023-04-16 11:16:14', '2023-04-16 11:16:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `JobID` int(5) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(0, 'saaaaadd67@gmail.com', '2023-04-08 13:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `username`, `status`) VALUES
(0, 414641861, 'Admin', 'Offline now'),
(0, 640467277, 'bikash baral', 'Offline now'),
(0, 906185246, 'bikash', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblemployers`
--
ALTER TABLE `tblemployers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblemployers`
--
ALTER TABLE `tblemployers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1205;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
