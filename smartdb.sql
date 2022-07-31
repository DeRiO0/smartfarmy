-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 03:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bca2`
--

CREATE TABLE `bca2` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bca2`
--

INSERT INTO `bca2` (`name`, `email`, `subject`, `message`) VALUES
('tejas', 'tejasvmore2017@gmail', 'maths', 'hii tejas'),
('tejas', 'tejasvmore2017@gmail', 'hii smart', 'hello'),
('tejas', 'tejasvmore2017@gmail', 'hii smart', 'hello'),
('sanskar', 'onkar@123', 'study', 'hii sanskar'),
('tejas', 'tejasvmore2001@gmail', 'sadsasdsd', 'assadas'),
('chvan sir', 'werfewfs@gmail.com', 'sfcsdsdc', 'xcv'),
('tejas', 'tejasvmore2001@gmail', 'sakshi', 'assxasx'),
('tejas', 'tejasvmore2017@gmail', 'asds', 'asd'),
('tejsd', 'tejasvmore2017@gmail', 'ecd', 'dc dc '),
('smita', 'smitasalunkhe660@gma', 'hii', 'fgdhsdhgse'),
('assads', 'tejasvmore2017@gmail', 'zxc', 'zxc'),
('onkar mohan pawar', 'onkarmpawar2002@gmai', 'review', 'nice websit '),
('amar', 'tejasvmore2017@gmail', 'service', 'nice service and best website'),
('hrushikesh', 'hrushi@gmail.com', 'products', 'good product excclent exprience\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

CREATE TABLE `blogdata` (
  `blogId` int(10) NOT NULL,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(19, 'ThePhenom', 'First Blog', '<p>Its Awesome website<img alt=\"wink\" src=\"https://cdn.ckeditor.com/4.8.0/full/plugins/smiley/images/wink_smile.png\" style=\"height:23px; width:23px\" title=\"wink\" /></p>\r\n', '2018-02-25 13:09:41', 2),
(20, 'tejas', 'review', '<p>woow thats good platform</p>\r\n', '2022-05-27 00:41:32', 1),
(21, 'tejas', 'farmer', '', '2022-05-27 04:54:02', 0),
(22, 'tejas', 'farmer', '', '2022-05-27 04:54:03', 2),
(23, 'tejas', 'dfbvf', '<p>casdd</p>\r\n', '2022-05-27 04:59:33', 3),
(24, 'mayuri', 'mayuri', '<p>mayuri is a good girl</p>\r\n', '2022-05-28 08:44:52', 2),
(25, 'onkar', 'farmer', 'jay javan jay kisan\r\n', '2022-05-31 10:02:51', 2),
(26, 'rohan lahuraj salunkhe', 'nature', 'save tree save life', '2022-05-31 10:08:20', 1),
(27, 'sahil yewale', 'buyer', 'nice products , working excellently ,', '2022-05-31 10:13:12', 1),
(28, 'tejas', 'First Blog', 'Its Awesome website', '2018-02-25 13:09:41', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeedback`
--

CREATE TABLE `blogfeedback` (
  `blogId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogfeedback`
--

INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(19, 'Mast yarr', 'ThePhenom', 'profile0.png', '2018-02-25 13:09:54'),
(19, 'hii i am tejas good website', 'tejas', '', '2022-05-26 17:15:13'),
(19, 'hii i am tejas good website', 'tejas', '', '2022-05-26 17:41:55'),
(19, 'hii i am tejas good website', 'tejas', '', '2022-05-26 17:42:00'),
(20, 'hii pratik', 'tejas', '', '2022-05-27 04:45:35'),
(23, 'okk', 'tejas', 'profile0.png', '2022-05-27 13:31:56'),
(23, 'nice yarr', 'mayuri', 'profile0.png', '2022-05-28 08:45:06'),
(24, 'hiii mayuri', 'smita', 'profile0.png', '2022-05-28 09:36:37'),
(24, 'hiii mayuri', 'smita', 'profile0.png', '2022-05-28 09:36:37'),
(24, 'hiii mayuri', 'smita', 'profile0.png', '2022-05-28 09:38:35'),
(24, 'asdasd', 'tejas', 'profile0.png', '2022-05-30 09:37:31'),
(25, 'nice', 'onkar', 'profile0.png', '2022-05-31 10:03:26'),
(25, 'call me', 'rohan lahuraj salunkhe', 'profile0.png', '2022-05-31 10:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `bid` int(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `busername` varchar(100) NOT NULL,
  `bpassword` varchar(100) NOT NULL,
  `bhash` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bmobile` varchar(100) NOT NULL,
  `baddress` text NOT NULL,
  `bactive` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`bid`, `bname`, `busername`, `bpassword`, `bhash`, `bemail`, `bmobile`, `baddress`, `bactive`) VALUES
(3, 'tejas vikram more', 'tejas', '$2y$10$jJvEx0/SDc/bhzIOyC.O1ubWDVRfsrzhMZMTU..3iB5urnmr62Dsy', '1be3bc32e6564055d5ca3e5a354acbef', 'tejasvmore2001@gmail.com', '7558641371', 'at post sasurve', 0),
(4, 'onkar mohan pawar', 'onkar', '$2y$10$yZafM1z6xHJrjQeJJI45PuMNWbUu63pWzJKZMXS0ahWQZ7lkZLIOq', '5e9f92a01c986bafcabbafd145520b13', 'onkarpawar2002@gmail.com', '7558641371', 'at post satara', 0),
(5, 'mayuri paatil', 'mayu', 'ascasasacasxas', 'asasas', 'mayu@gmail.come', '6884555454', 'karanje', 0);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `fid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int(255) NOT NULL DEFAULT 0,
  `frating` int(11) NOT NULL DEFAULT 0,
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(3, 'Tejas vikram More', 'ThePhenom', '$2y$10$22ezmzHRa9c5ycHmVm5RpOnlT4LwFaDZar1XhmLRJQKGrcVRhPgti', '61b4a64be663682e8cb037d9719ad8cd', 'kmendki98@gmail.com', '8600611198', 'abcde', 0, 0, 'png', 0),
(4, 'onkar pawar', 'onkar', '$2y$10$rc0KGE42tOnICs9jrQYb2ODhM.03G.NjBVkl0HYIL9N.nhGy8YFy6', '94f6d7e04a4d452035300f18b984988c', 'onkar2002@gmail.com', '0928278822', 'kab', 0, 0, 'png', 0),
(5, 'Raj', 'raj', '$2y$10$USrC7z4P6m2imo5s93NFXe/BwUtKcYyDWaGcwDJYQwocJJ/dr93iG', '0266e33d3f546cb5436a10798e657d97', 'raj@gmail.com', '8600801140', 'asdff', 0, 0, 'png', 0),
(6, 'tejas', 'tejas', '$2y$10$S4U03pXgsXkl/hNqHyWnQe4c0M8NJWkwINhhQzZa//GlP14jVj39C', '2050e03ca119580f74cca14cc6e97462', 'tejasvmore2001@gmail.com', '7558641371', 'at post sasurve', 0, 0, 'png', 0),
(7, 'mayuri patil', 'mayuri', '$2y$10$rjaS./lKlDWrcQl0UIwyN.6QB78uhwn75l51AlA3tOrh/tPkzCWl2', '46922a0880a8f11f8f69cbb52b1396be', 'pmayuri321@gmail.com', '7058791575', 'Karanje', 0, 0, 'png', 0),
(8, 'smita salunkhe', 'smita', '$2y$10$iLznXtRL3dyfaQbVCA.kke5RlQve5MHkbmJtf3OTRe8Sg3iKn1i42', '72b32a1f754ba1c09b3695e0cb6cde7f', 'smitasalunkhe660@gmail.com', '8007638934', 'kashil(satara)', 0, 0, 'png', 0),
(9, 'sanskar more', 'sanskar', '$2y$10$cHJ4ouZIL9IauK/eLjXPt.KbTSVMZffCzqL6ldDdv927jwpbjBDb6', '502e4a16930e414107ee22b6198c578f', 'sanskar2017@gmail.com', '7558641371', 'at post sasurve', 0, 0, 'png', 0),
(10, 'onkar mohan pawar', 'onkar', '$2y$10$f.7s1f.9K148JAONnJ/IXuRr96uJUnqedXy0ck2RHB.CUcEufWFEO', '109a0ca3bc27f3e96597370d5c8cf03d', 'onkarmpawar@gmail.com', '7218227174', 'at vaduj', 0, 0, 'png', 0),
(11, 'rohan lahuraj salunkhe', 'rohan lahuraj salunkhe', '$2y$10$KxSalgqwwZBsALABebJs7eC5ej98a/ChPtOlni061v0Lh2lyoECrm', 'afd4836712c5e77550897e25711e1d96', 'rohansalunkhe2002@gmail.com', '8856885237', 'ambawade', 0, 0, 'png', 0),
(12, 'sahil yewale', 'sahil yewale', '$2y$10$WKvcWYyUCWPU8MwfZVEjkunIJTsqXKbZsDp/8G02.3T0DrdEu0lou', 'acf4b89d3d503d8252c9c4ba75ddbf6d', 'sahilyewale09@gmail.com', '9579946774', 'satara ,kodoli', 0, 0, 'png', 0),
(13, 'tejas', 'tejas', '$2y$10$DVyxnrtXwprF2Z1IJzHJkeTOjIZlv4mP.GHPE4sRtSQFAH5yE5xmO', '1a5b1e4daae265b790965a275b53ae50', 'tejasvmore2017@gmail.com', '7558641371', 'at post sasurve', 0, 0, 'png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

CREATE TABLE `fproduct` (
  `fid` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(1, 27, 'Mango', 'Fruit', '<p>Mango raseela</p>\r\n', 500, 'mango8.png', 1),
(2, 28, 'Ladyfinger', 'Vegetable', '<p>Its veggie</p>\r\n', 1000, 'Ladyfinger3.jpg', 1),
(3, 29, 'Bajra', 'Grains', '<p>bajre di rti</p>\r\n', 400, 'bajra4.png', 1),
(4, 30, 'Banana', 'Fruit', '<p>Jalgaon banana</p>\r\n', 400, 'Banana3.jpg', 1),
(5, 31, 'janobe', 'Fruit', '<p>ssa</p>\r\n', 213, '', 1),
(4, 32, 'apple', 'Fruit', '<p>hii apple&nbsp;</p>\r\n', 50, 'apple4.png', 1),
(4, 33, 'kivi', 'Vegetable', '<p>kivi is good&nbsp;</p>\r\n', 40, 'blank.png', 0),
(4, 34, 'mango', 'Fruit', '', 70, 'mango8.png', 1),
(4, 35, 'mango', 'Fruit', '', 70, 'mango8.png', 1),
(4, 36, 'bajra', 'Grains', '<p>asdasdasd</p>\r\n', 7000, 'bajra4.png', 1),
(4, 37, 'chiku', 'Vegetable', '<p>chiku is good frute</p>\r\n', 500, 'chiku4.png', 1),
(4, 38, 'chiku', 'Fruit', '<p>wdcwdcdw</p>\r\n', 12, 'chiku4.png', 1),
(7, 39, 'mango', 'Fruit', '<p>mayuri hii</p>\r\n', 40, 'mango8.png', 1),
(8, 40, 'pineapple', 'Fruit', '<p>7yhh77y</p>\r\n', 100, 'blank.png', 0),
(8, 41, 'mango', 'Fruit', '<p>gfjdhgd</p>\r\n', 100, 'mango8.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likedata`
--

CREATE TABLE `likedata` (
  `blogId` int(10) NOT NULL,
  `blogUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likedata`
--

INSERT INTO `likedata` (`blogId`, `blogUserId`) VALUES
(19, 3),
(20, 4),
(19, 4),
(23, 4),
(23, 6),
(22, 6),
(23, 8),
(24, 8),
(22, 8),
(24, 6),
(25, 4),
(26, 11),
(25, 11),
(27, 12);

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`bid`, `pid`) VALUES
(3, 27),
(3, 30),
(4, 31),
(4, 30),
(4, 32),
(6, 32),
(7, 27),
(7, 27),
(0, 27);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`pid`, `name`, `rating`, `comment`) VALUES
(35, 'tejas vikram more', 0, 'nic'),
(35, 'tejas vikram more', 0, 'nic'),
(38, 'tejas vikram more', 2, 'bhangar'),
(32, 'tejas', 7, 'nice product\r\n'),
(27, 'mayuri patil', 0, 'nice');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `bid`, `pid`, `name`, `city`, `mobile`, `email`, `pincode`, `addr`) VALUES
(1, 3, 28, 'onkar mohan pawar', 'sajc', '5464564554', 'onkar98@gmail.com', '415501', 'at post satara '),
(2, 4, 27, 'hrushikesh lokhande', 'satara', '0992829212', 'mrhrushi@gmail.com', '415502', 'karanje'),
(3, 4, 32, 'tejas more', 'rahimatpur', '7558641371', 'tejasvmore2017@gmail.com', '415511', 'at post sasurve');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogdata`
--
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `bid` (`bid`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `likedata`
--
ALTER TABLE `likedata`
  ADD KEY `blogId` (`blogId`),
  ADD KEY `blogUserId` (`blogUserId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogdata`
--
ALTER TABLE `blogdata`
  MODIFY `blogId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `bid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `fid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fproduct`
--
ALTER TABLE `fproduct`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `farmer` (`fid`);

--
-- Constraints for table `likedata`
--
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
