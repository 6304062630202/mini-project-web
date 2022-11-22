-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 09:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `floralandshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `pname`, `price`, `quantity`, `image`) VALUES
(81, 3, 17, 'Blue bloom', 1480, 2, 'happyhydrangea.jpg'),
(82, 3, 6, 'Lady luck', 720, 1, 'roseblue.jpg'),
(83, 3, 28, 'La la love', 210, 1, 'hydrangeapink.jpg'),
(107, 1, 30, 'Rose scent', 360, 1, 'specialrose.jpg'),
(110, 2, 10, 'Love with you', 250, 2, 'rose3.jpg'),
(111, 2, 9, 'Best love', 1800, 1, 'rosebig3.jpg'),
(112, 1, 18, 'Make a wish (statice)', 1900, 1, 'happyball.jpg'),
(113, 1, 20, 'Proud of you (bear,rose)', 420, 1, 'bear2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `user_id`, `pname`, `number`, `email`, `image`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(10, '1', 'Nunew Cutie Pie ', '0918432305', 'newzaza@gmail.com', 'ba154685-db18-4ac7-b318-a4a2b15b9d4c.jpg', 'บ้านเลขที่ 460  ถนน - ตำบล บ้านสวน อำเภอ เมือง จังหวัด สุโขทัย รหัสไปรษณีย์ 64220', ', Only one (2) , Hello, Sunset (3) , One and only (1) , Milky way (1) ', 5360, '18-Nov-2022', 'รอดำเนินการ'),
(11, '2', 'Bible Sumett', '0998947143', 'ppps55@gmail.com', '1-592x1024.png', 'บ้านเลขที่ 227/13 ถนน - ตำบล ทุ่งหลวง อำเภอ สุวรรณภูมิ จังหวัด ร้อยเอ็ด รหัสไปรษณีย์ 45130', ', Some love (1) , Make a wish (2) , Every summertime (1) ', 4840, '18-Nov-2022', 'ชำระสำเร็จ'),
(12, '3', 'Jennie Kim', '0927569999', 'jj26@gmail.com', '131959540_190833986053027_4385919445272258676_n.jpg', 'บ้านเลขที่ 11/3  ถนน - ตำบล ไม้กวาด อำเภอ อัมพวา จังหวัด สมุทรสงคราม รหัสไปรษณีย์ 75110', ', Best love (1) , Dear Diary (1) , Sincere Congrats (1) , Best of luck (2) ', 7100, '18-Nov-2022', 'รอดำเนินการ'),
(18, '1', 'Nunew Cutie Pie', '0918432305', 'newzaza@gmail.com', '1-592x1024.png', 'บ้านเลขที่ 460  ถนน - ตำบล บ้านสวน อำเภอ เมือง จังหวัด สุโขทัย รหัสไปรษณีย์ 64220', ', Only one (1) , Well done (3) ', 1380, '18-Nov-2022', 'ชำระสำเร็จ'),
(19, '2', 'Bible Sumett', '0988725019', 'ppps55@gmail.com', '131959540_190833986053027_4385919445272258676_n.jpg', 'บ้านเลขที่ 227/13 ถนน - ตำบล ทุ่งหลวง อำเภอ สุวรรณภูมิ จังหวัด ร้อยเอ็ด รหัสไปรษณีย์ 45130', ', Wish flower (1) , White bunny (1) , Hello, Sunset (3) ', 1730, '18-Nov-2022', 'รอดำเนินการ');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `event` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `details`, `price`, `image`, `event`) VALUES
(1, 'Small love (rose)', 'ความหมายของดอกกุหลาบสีชมพูสามารถแสดงถึงความเป็นผู้หญิง ความสง่างาม ความประณีตและความอ่อนหวาน', 350, 'rosepink.jpg', 'p_wedding'),
(2, 'White bunny (rose)', 'ดอกกุหลาบสีขาวมักแสดงถึงความบริสุทธิ์ ไร้เดียงสาและความอ่อนเยาว์ ความสัมพันธ์กับความรักและความภักดีชั่วนิรันดร์', 450, 'rosewhite.jpg', 'p_wedding'),
(3, 'Little love (mixed)', 'ดอกกุหลาบสีชมพูหมายถึงความรักที่สุขสมบูรณ์ และสีขาวหมายถึงความรักที่บริสุทธิ์ สงบ มิตรภาพ', 550, 'rosetulip.jpg', 'p_wedding'),
(4, 'Moon light (rose)', 'ดอกกุหลาบสีครีมเป็นตัวแทนของความมีเสน่ห์ ความรอบคอบและความสง่างาม', 590, 'roseall.jpg', 'p_wedding'),
(5, 'Honeymoon (rose)', 'เป็นความรักที่สุขสมบูรณ์แบบ สามารถสื่อถึงความขอบคุณ ความซาบซึ้ง ', 650, 'rosegreen.jpg', 'p_wedding'),
(6, 'Lady luck (mixed)', 'ดอกคาร์เนชั่นสีขาว ความรักที่บริสุทธิ์ ไร้เดียงสา อ่อนโยน คุณคือของมีค่าที่น่าทะนุถนอม ', 720, 'roseblue.jpg', 'p_wedding'),
(7, 'Color of life (mixed)\r\n', 'ดอกคาร์เนชั่นสีชมพู สื่อถึงความรักที่กำลังพลิบานเป็นสีชมพู ต้องการจะบอกรักหรือสารภาพความในใจกับใครสักคน', 1200, 'rosebig1.jpg', 'p_wedding'),
(8, 'Pure love (mixed)', 'ดอกไลเซนทัสหมายถึง มิตรภาพที่ยั่งยืน ความทรงจำที่ดีไม่เลือนหายไป ซึ่งทำให้ผู้รับมีความรู้สึกที่ดีและอบอุ่นทั้งผู้ให้และผู้รับ', 1500, 'rosebig2.jpg', 'p_wedding'),
(9, 'Best love (mixed)', 'ไฮเดรนเยียสีขาวบริสุทธิ์ยังอาจมีความหมายถึงความอดทน เพราะไฮเดรนเยียเป็นดอกไม้ที่เปลี่ยนแปรไปได้หลายสีสันตามแต่สารอาหาร', 1800, 'rosebig3.jpg', 'p_wedding'),
(10, 'Love with you (rose)', 'ดอกกุหลาบสีขาว  สงบ บ่งบอกถึงความรักที่สะอาด บริสุทธิ์  และ 3 ดอก ใช้แทนคำว่า \"ฉันรักเธอ\"', 250, 'rose3.jpg', 'p_birthday'),
(11, 'Only one (mixed)', 'ความหมายคือ ความทรงจำ มิตรภาพและการเอาใจใส่ที่ดี ยืนยาว', 300, 'rosebrown.jpg', 'p_birthday'),
(12, 'Some love (tulip)', 'ดอกทิวลิปสีส้มคือสัญลักษณ์ของ พลังและแรงบันดาลใจ ส่งมอบเพื่อเติมพลังบวกให้กับชีวิต หรือให้กำลังใจได้ดี', 150, 'tulip2.jpg', 'p_birthday'),
(13, 'About love (rose)', 'มอบดอกไม้เพื่อแสดงถึงความรักที่มีต่อกันในวันเกิดของคนพิเศษ', 450, 'happypink.jpg', 'p_birthday'),
(14, 'Sea the star (rose)', 'ดอกกุหลาบสีน้ำเงินถือเป็นของหายาก เปรียบสีของดอกกุหลาบเป็นสีทะเลดาว', 580, 'happyblue.jpg', 'p_birthday'),
(15, 'Dear Diary (lily)', 'ดอกลิลลี่สีชมพู แสดงออกถึงการค้นหาความรักที่ดีที่สุดแล้วพบเจอมัน คือ “ที่สุดของหัวใจที่ฉันตามหา” หรือ “ความอ่อนหวานของเธอช่วยเติมเต็มชีวิตฉัน”', 740, 'happytulip.jpg', 'p_birthday'),
(16, 'Lucky lady (rose)', 'ดอกกุหลาบ 24 ดอก หมายถึง เธอจะอยู่ในใจของฉันเสมอ ตลอดทั้ง 24 ชั่วโมง', 1050, 'happyrose.jpg', 'p_birthday'),
(17, 'Blue bloom (mixed)', 'ไฮเดรนเยียสีฟ้า แสดงถึง ความเข้าใจ ความเรียบง่าย การเทคแคร์ อ่อนโยน เอาใจใส่ และความจริงใจ', 1480, 'happyhydrangea.jpg', 'p_birthday'),
(18, 'Make a wish (statice)', 'สแตติสสีขาวเป็นสัญลักษณ์ของความไว้เนื้อเชื่อใจ ความบริสุทธิ์ และความจริงใจ นิยมใช้ทำเป็นช่อดอกไม้ของเจ้าสาว ซึ่งสื่อถึงความรักอันบริสุทธิ์', 1900, 'happyball.jpg', 'p_birthday'),
(19, 'Well done (bear,rose)', 'ดอกไม้สำหรับแสดงความยินดีกับบัณฑิตจบใหม่ มาในธีมงานสีแดง พร้อมคุณหมีบัณฑิตป้ายแดง', 360, 'bear1.jpg', 'p_congrats'),
(20, 'Proud of you (bear,rose)', 'ดอกไม้สำหรับแสดงความยินดีกับบัณฑิตจบใหม่ มาในธีมงานสีน้ำเงิน พร้อมคุณหมีบัณฑิตป้ายแดง', 420, 'bear2.jpg', 'p_congrats'),
(21, 'Congrats (bear,rose)', 'ดอกไม้สำหรับแสดงความยินดีกับบัณฑิตจบใหม่ มาในธีมงานสีชมพูกับสีขาว พร้อมคุณหมีบัณฑิตป้ายแดง', 460, 'bear3.jpg', 'p_congrats'),
(22, 'Sunny side up (sunflower,bear)', 'ดอกไม้แสดงความยินดีกับบัณฑิตจบใหม่ ดอกทานตะวันให้ความหมายกับชีวิตความอดทน การฝ่าฟันอุปสรรคผ่านไปได้ด้วยดี', 590, 'sun3.jpg', 'p_congrats'),
(23, 'Wish flower (cutter,bear)', 'ดอกไม้แสดงความยินดีกับบัณฑิตจบใหม่ ดอกคัตเตอร์ความหมายคือการให้กำลังใจ ว่าจะอยู่ข้างๆกันเสมอ', 830, 'cutter.jpg', 'p_congrats'),
(24, 'Every summertime (mixed)', 'ดอกเยอบีร่าความหมายคือความปรารถนา ชื่นชมในเรื่องต่างๆ การแสดงความยินดี เหมาะแก่การให้ในวันสำคัญ ', 890, 'whitegerbera.jpg', 'p_congrats'),
(25, 'Best of luck (rose,bear)', 'ดอกไม้แสดงความยินดีกับบัณฑิตจบใหม่ ในธีมสีขาวแสดงถึงช่วงเวลาที่น่าจดจำ พร้อมกับคุณหมีบัณฑิตป้ายแดง', 1030, 'bearbig.jpg', 'p_congrats'),
(26, 'Happy for you (money,bear)', 'เปลี่ยนจากช่อดอกไม้เป็นช่อแบงค์เงินสด เพื่อแสดงความยินดีกับบัณฑิตจบใหม่ พร้อมกับคุณหมีบัณฑิตป้ายแดง', 1590, 'bearbank.jpg', 'p_congrats'),
(27, 'Sincere Congrats (money)', 'เปลี่ยนจากช่อดอกไม้เป็นช่อแบงค์เงินสด เพื่อแสดงความยินดีกับบัณฑิตจบใหม่ จัดเต็มไม่น้อยหน้าใคร', 2500, 'bankbig.jpg', 'p_congrats'),
(28, 'La la love (hydrangea)', 'ไฮเดรนเยียสีชมพู หมายถึง ความอ่อนโยน คามรักที่เต็มไปด้วยความจริงใจให้แก่กันในวันที่พิเศษ', 210, 'hydrangeapink.jpg', 'p_special'),
(29, 'Hello, Sunset (sunflower)', 'เป็นดอกไม้ที่สื่อถึงความรักที่มั่นคง อดทน และฟันฝ่าอุปสรรคมาด้วยกัน หากใช้ในการแสดงความยินดีจะหมายถึงความเลื่อมใสในความเข้มแข็งจนประสบความสำเร็จ', 150, 'sun1.jpg', 'p_special'),
(30, 'Rose scent (rose)', 'ดอกกุหลาบสีชมพูอ่อนบ่งบอกถึงความสง่างาม ความอ่อนโยนและความสุขด้วย และ 5 ดอก ใช้แทนคำว่า \"ฉันรักเธอมาก ๆ\"', 360, 'specialrose.jpg', 'p_special'),
(31, 'Sunflower', 'ดอกทานตะวัน ความหมายเป็นการสื่อความหมายว่า ความรักของคุณจะมั่นคงและซื่อตรงต่อกันไปตลอดกาลนั่นเอง', 750, 'sun5.jpg', 'p_special'),
(32, 'Milky way (rose)', 'สีของดอกกุหลาบผสมหลายสีแล้ว ให้อารมณ์นึกถึงสีของทางช้างเผือก ผู้ให้แสดงถึงความโรแมนติกที่แฝงอยู่ในดอกไม้', 860, 'rosewhitepurple.jpg', 'p_special'),
(33, 'Diamond (mixed)', 'ดอกเบญจมาศสีขาว  ถือเป็นดอกไม้สูงศักดิ์ และทรงเกียรติ เป็นสัญลักษณ์แห่งความซื่อสัตย์ และ ฮเดรนเยียสีฟ้า หมายถึง ความเรียบง่าย เข้าอกเข้าใจ', 980, 'hydrangeablue.jpg', 'p_special'),
(34, 'First love (rose,hydrangea)', 'ดอกกุหลาบสีชมพู เป็นความโรแมนติกที่แสดงถึงความรักที่หวานซึ้งที่ผู้ให้มีต่อผู้รับ และ ไฮเดรนเยียสีชมพู หมายถึง ความอ่อนโยน คามรักที่เต็มไปด้วยความจริงใจ', 1600, 'rosered.jpg', 'p_special'),
(35, 'I love you 3000 (rose,mixed)', 'I love you 3000 เป็นบทพูดในหนัง หมายถึง \"ฉันรักคุณมากกว่า\" หากคุณต้องการบอกรักใครสักคน ดอกไม้นี้เหมาะสำหรับการบอกรักคนที่คุณชอบ', 1850, 'rosecream.jpg', 'p_special'),
(36, 'One and only (rose,mixed)', 'ดอกกุหลาบสีม่วง สัญลักษณ์ของมันหมายถึงความลุ่มหลง ความพิศวง ความงดงามและความลึกลับเช่นเดียวกับรักแรกพบหรือความลุ่มหลงตั้งแต่แรกพบ', 3450, 'rosepurple.jpg', 'p_special');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Nunew Cutie Pie', 'newzaza@gmail.com', '4946d13ca6830064f3117b5eac845f8f', 'user'),
(2, 'Bible Sumett', 'ppps55@gmail.com', '8c6a9eacd5dd3e56dc8244fbffd5743f', 'user'),
(3, 'Jennie Kim', 'jj26@gmail.com', 'd42dcddbe3ad2a3a6832962763470c56', 'user'),
(4, 'Zee', 'admin01@gmail.com', 'bbdb8fa90a72cb90e43d1863ed8b54ea', 'admin'),
(5, 'Build', 'admin02@gmail.com', '986b9af5ad51a2e510a58dd21c0bcc92', 'admin'),
(6, 'Toey', 'admin03@gmail.com', '2691e445361506862a9829ff12eb5d6e', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
