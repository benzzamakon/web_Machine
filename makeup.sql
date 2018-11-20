-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 11:51 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makeup`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginuser`
--

CREATE TABLE `loginuser` (
  `user_ID` int(5) NOT NULL,
  `user_Name` varchar(16) DEFAULT NULL,
  `user_Password` varchar(16) DEFAULT NULL,
  `user_emil` varchar(150) DEFAULT NULL,
  `user_Type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginuser`
--

INSERT INTO `loginuser` (`user_ID`, `user_Name`, `user_Password`, `user_emil`, `user_Type`) VALUES
(1, 'admin', '1234', 'benzzamakon2@gmail.com', 'admin'),
(2, 'benzzamakon', '15637290', 'benzzamakon2@gmail.com', 'user'),
(3, 'benzzamakon', '15637290', 'benzzamakon3@gmail.com', 'user'),
(4, 'siripa', 'siripa', 'siripa_1995@outlook.co.th', 'user'),
(5, 'gew', '123', 'gew@gmail.com', 'user'),
(6, 'benz', '15637290', 'benzzamakon2@gmail.com', 'user'),
(7, 'you', '15637290', 'benzzamakon2@gmail.com', 'user'),
(8, 'benz', '15637290', 'benzzamakon@gmail.com', 'user'),
(9, 'koy', '15637290', 'benzzamakon@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` smallint(5) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `OrderName` varchar(255) NOT NULL,
  `OrderAdd` varchar(255) NOT NULL,
  `OrderTel` int(10) NOT NULL,
  `OrderEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `OrderName`, `OrderAdd`, `OrderTel`, `OrderEmail`) VALUES
(1, '2018-11-15 00:00:00', 'ฟหดกฟ', 'ฟหด', 0, 'benzzamakon2@gmail.com'),
(2, '2018-11-15 00:00:00', 'ฟหดกฟ', 'ฟหด', 0, 'benzzamakon2@gmail.com'),
(3, '2018-11-15 00:00:00', 'siripa', '-', 926688191, 'siripa_1995@outlook.co.th'),
(4, '2018-11-15 00:00:00', 'siripa', '-', 926688191, 'siripa_1995@outlook.co.th'),
(5, '2018-11-15 00:00:00', 'ฟำเฟ', 'peajgajgp', 8878979, 'siripa_1995@outlook.co.th'),
(6, '2018-11-18 00:00:00', 'ฟหดกฟ', 'ฟหด', 0, 'benzzamakon2@gmail.com'),
(7, '2018-11-18 00:00:00', 'ฟหดกฟ', 'ฟหด', 0, 'benzzamakon2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `ODId` smallint(5) NOT NULL,
  `OrderID` smallint(5) NOT NULL,
  `ProductID` smallint(5) NOT NULL,
  `ODQty` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`ODId`, `OrderID`, `ProductID`, `ODQty`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 9, 1),
(4, 4, 11, 1),
(5, 5, 9, 1),
(6, 6, 10, 1),
(7, 6, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` smallint(5) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductPrice` smallint(5) NOT NULL,
  `ProductPicture` varchar(255) NOT NULL,
  `ProductCategory` varchar(50) NOT NULL,
  `productColor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `ProductPrice`, `ProductPicture`, `ProductCategory`, `productColor`) VALUES
(1, 'บลัชออน สีชมพูอ่อน ', 139, '1.jpg', 'แก้ม', ' Neecara Liquid Blush บรัชเนื้อครีมมาใหม่สีปังมาก งานแท้นะ เนื้อสีดีงามมาก ติดทน ไม่แพ้ของเคาท์เตอร์แบรนด์ สีชมพูอ่อน '),
(2, 'บลัชออน สีส้มนู๊ด', 139, '1.jpg', 'แก้ม', ' Neecara Liquid Blush บรัชเนื้อครีมมาใหม่สีปังมาก งานแท้นะ เนื้อสีดีงามมาก ติดทน ไม่แพ้ของเคาท์เตอร์แบรนด์ สีส้มนู๊ด'),
(3, 'บลัชออน สีพีช', 139, '1.jpg', 'แก้ม', ' Neecara Liquid Blush บรัชเนื้อครีมมาใหม่สีปังมาก งานแท้นะ เนื้อสีดีงามมาก ติดทน ไม่แพ้ของเคาท์เตอร์แบรนด์ สีพีช'),
(4, 'บลัชออน สีชมพูเข้ม ', 139, '1.jpg', 'แก้ม', ' Neecara Liquid Blush บรัชเนื้อครีมมาใหม่สีปังมาก งานแท้นะ เนื้อสีดีงามมาก ติดทน ไม่แพ้ของเคาท์เตอร์แบรนด์ สีชมพูเข้ม '),
(5, 'ปัดแก้ม เบอร์ 1 มีประกายชิมเมอร์', 35, '2.jpg', 'แก้ม', 'Sivanna Colors บลัชออน Blusher 847\r\nแก้มสีสวย\r\nเล็ก กระทัดรัด พกพาง่าย\r\nติดทนนาน\r\nคุณสมบัติ\r\n- บลัชออน ช่วยเนรมิตให้พวงแก้มของคุณอมชมพู \r\n- สวยสดใสอย่างเป็นธรรมชาติ พร้อมในตลับสวยหรู \r\n- น่าพกพกไปทุกที \r\nขนาด กว้าง 5.5 x ยาว 5.5 x หนา 1 เซนติเมตร\r\n'),
(6, 'ปัดแก้ม เบอร์ 4 มีประกายชิมเมอร์', 35, '2.jpg', 'แก้ม', 'Sivanna Colors บลัชออน Blusher 847\r\nแก้มสีสวย\r\nเล็ก กระทัดรัด พกพาง่าย\r\nติดทนนาน\r\nคุณสมบัติ\r\n- บลัชออน ช่วยเนรมิตให้พวงแก้มของคุณอมชมพู \r\n- สวยสดใสอย่างเป็นธรรมชาติ พร้อมในตลับสวยหรู \r\n- น่าพกพกไปทุกที \r\nขนาด กว้าง 5.5 x ยาว 5.5 x หนา 1 เซนติเมตร\r\n'),
(7, 'ปัดแก้ม เบอร์ 9 มีประกายชิมเมอร์', 35, '2.jpg', 'แก้ม', 'Sivanna Colors บลัชออน Blusher 847\r\nแก้มสีสวย\r\nเล็ก กระทัดรัด พกพาง่าย\r\nติดทนนาน\r\nคุณสมบัติ\r\n- บลัชออน ช่วยเนรมิตให้พวงแก้มของคุณอมชมพู \r\n- สวยสดใสอย่างเป็นธรรมชาติ พร้อมในตลับสวยหรู \r\n- น่าพกพกไปทุกที \r\nขนาด กว้าง 5.5 x ยาว 5.5 x หนา 1 เซนติเมตร\r\n'),
(8, 'ปัดแก้ม เบอร์ 11 มีประกายชิมเมอร์', 35, '2.jpg', 'แก้ม', 'Sivanna Colors บลัชออน Blusher 847\r\nแก้มสีสวย\r\nเล็ก กระทัดรัด พกพาง่าย\r\nติดทนนาน\r\nคุณสมบัติ\r\n- บลัชออน ช่วยเนรมิตให้พวงแก้มของคุณอมชมพู \r\n- สวยสดใสอย่างเป็นธรรมชาติ พร้อมในตลับสวยหรู \r\n- น่าพกพกไปทุกที \r\nขนาด กว้าง 5.5 x ยาว 5.5 x หนา 1 เซนติเมตร\r\n'),
(9, 'Cosluxe SlimBrow Pencil : Cosluxe ดินสอเขียนคิ้ว ', 109, '3.jpg', 'คิ้ว', 'คุณสมบัติ\r\n- เนื้อฝุ่นอัดแข็ง สูตรกันน้ำ ติดทนตลอดวัน\r\n- แท่งหมุนแบบ Auto ไม่ต้องเหลา\r\n- หัวเรียวเล็กเพียง 1 มม. \r\n- แรเงาคิ้วได้อย่างเป็นธรรมชาติ\r\n- ปลายเรียวแหลมทุกครั้งที่เปิดใช้งาน\r\n'),
(10, 'ดินสอเขียนคิ้ว Sivanna Eyebrow Pencil ES004 ', 25, '4.jpg', 'คิ้ว', 'ดินสอเขียนคิ้ว Sivanna สินค้าคุณภาพที่อยากนำเสนอค่ะ ด้ามแปรงสวยมาก หรู ดูดีมา สไตล์ อีกด้านเป็นแปรงปัดคิ้ว ดินสอเขียนง่าย เนื้อเนียนละเอียด ติดทนนานด้วย'),
(11, 'HF1003 ของแท้ Sivanna Multi Finish eyeshadow Palette ', 110, '5.jpg', 'ตา', 'อายแชโดว์ 12 สี เนื้อแมท และเนื้อชิมเมอร์ สีสวย เกลี่ยง่าย ติดทนนาน สินค้าคุณภาพ ถูกและดี \r\nมีให้เลือก 4 เฉดสี \r\nอายแชโดว์ 12 สี เนื้อแมท และเนื้อชิมเมอร์ สีสวย เกลี่ยง่าย ติดทนนาน สินค้าคุณภาพ ถูกและดี \r\nมีให้เลือก 4 เฉดสี\r\n'),
(12, 'Sivanna Colors Matte Stay lipstick Kiss Me ซีเวียน่า ลิปเนื้อแมท ลิปสติกเนื้อแมท', 120, '7.jpg', 'ปาก', 'คุณสมบัติ\r\nลิปสติก เนื้อแมทท์ สีเนื้อลิปนุ่ม ติดทนนาน\r\nสีสวยธรรมชาติมาก สีติดทนนานหลายชั่วโมง \r\nไม่ต้องเติมสีลิปเรื่อยๆ ปากแจ่มเซ็กซี่ตลอดทั้งวัน\r\nลิปสติกเนื้อแมมท์ ทาแล้วไม่หนักปากนะ กลบสีปากมิด ติดทน\r\n'),
(13, 'Sivanna Colors Soft Matte Lip Cream', 160, '8.jpg', 'ปาก', 'ลิปแมทเนื้อครีม เซ็ท 3 แท่ง  HF359 ของแท้ 100%\r\nลิปแมทมาเป็นเซต สีสวยโดนใจ เนื้อเนียนทาง่าย กันน้ำและติดทนขั้นเทพ \r\nรุ่นนี้เนื้อดีมากกก Sivannaไม่ทำให้ผิดหวัง ใช้ได้ทุกสี ลิปครีม เนื้อแมต นุ่ม สีติดทนนาน ไม่แห้งด้าน เนื้อเบามาก \r\nทาง่าย ติดทนนาน  กันน้ำ\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`ODId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginuser`
--
ALTER TABLE `loginuser`
  MODIFY `user_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `ODId` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
