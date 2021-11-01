-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: travel-3
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cmt`
--

DROP TABLE IF EXISTS `cmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idpost` int(11) NOT NULL,
  `comment` text,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iduserrr_idx` (`iduser`),
  KEY `fk_post_cmt_idx` (`idpost`),
  CONSTRAINT `fk_post_cmt` FOREIGN KEY (`idpost`) REFERENCES `post` (`id`),
  CONSTRAINT `iduserrr` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmt`
--

LOCK TABLES `cmt` WRITE;
/*!40000 ALTER TABLE `cmt` DISABLE KEYS */;
INSERT INTO `cmt` VALUES (1,4,4,'Tuyetvoi','2021-10-01 12:12:00'),(2,4,4,'ttttttttttttt','2021-10-09 18:54:49'),(3,4,4,'TTTTTTTt','2021-10-09 18:55:11'),(4,4,4,'hay quá','2021-10-11 21:22:21'),(5,4,4,'vui quá','2021-10-11 21:22:43'),(6,4,4,'10 điểm','2021-10-11 21:42:36'),(7,4,4,'quaooo','2021-10-11 21:58:51'),(8,4,4,'wowwww','2021-10-11 22:02:57'),(9,4,4,'mình cũng muốn đi','2021-10-11 22:19:36'),(10,6,4,'ok lắm','2021-10-12 22:53:10'),(11,6,4,'quyetj vời','2021-10-12 23:01:53'),(12,6,4,'hay qyasaaaa','2021-10-12 23:03:41'),(13,6,4,'okok','2021-10-12 23:09:30'),(14,6,4,'hay','2021-10-12 23:13:28'),(15,6,4,'quaooooo','2021-10-13 14:02:16'),(16,6,4,'quaooo','2021-10-13 14:06:31'),(17,6,5,'tuyệt vời','2021-10-13 14:21:06'),(18,6,5,'Mình cũng muốn đi','2021-10-13 14:21:34'),(19,6,4,'Cho mình xin giá vé nhé','2021-10-13 14:21:53'),(20,6,5,'quaoo','2021-10-13 14:28:16'),(21,6,5,'oke','2021-10-13 14:56:30'),(22,6,4,'hihi','2021-10-13 16:17:37'),(23,1,5,'hiiiii','2021-10-20 15:44:34');
/*!40000 ALTER TABLE `cmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sex` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `percent_promotion` int(11) DEFAULT NULL,
  `promotion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,'HTEL4F',10,'Summertime');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `lastname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `gmail` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `sex` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_vi_0900_ai_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `id_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `description` text,
  `avt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Edison','HCM city, Viet Nam','5','Nằm ở Thành phố Hồ Chí Minh, cách trung tâm thương mại Takashimaya Việt Nam 500 m, Edison Hotel cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ xe riêng miễn phí và hồ bơi ngoài trời.',NULL),(2,'Lizzy','Ha Noi, Viet Nam','3',' Lizzy hotel & Spa nằm trong Phố Cổ mang tính biểu tượng của thành phố Hà Nội. Lễ tân thân thiện. Nhiệt tình và rất vui vẻ. Giá cả hợp lý.',NULL),(3,'Venus','Da Nang, Viet Nam','5','Nằm tại khu Bãi biển Mỹ Khê của thành phố Đà Nẵng, Venus Hotel cung cấp phòng nghỉ hiện đại đi kèm WiFi miễn phí',NULL),(4,'Windy','Phu Quoc, Viet Nam','2','Nằm trên bờ biển của bán đảo Móng Tay độc đáo, Windy Resort& Hotel có khu rừng tươi tốt và khu bãi biển riêng đầy cát trắng với nước màu ngọc lam.',NULL),(5,'Nam Phuong','Da Lat, Viet Nam','2',' Nam Phương Hotel Dalat nằm tại thành phố Đà Lạt này có tiện nghi BBQ và trung tâm spa. Khách sạn có phòng xông hơi khô và trung tâm thể dục đồng thời khách có thể dùng bữa trong nhà hàng.',NULL),(6,'BiHouse','Nha Trang, Viet Nam','1','Nằm cách Hòn Chồng 500 m, BiHouse cung cấp chỗ nghỉ với ban công và WiFi miễn phí.',NULL),(7,'HAGL','40_NEwYTOrk','4','Good!!','https://res.cloudinary.com/dzjvjpopn/image/upload/v1633158820/ivtvyo51u3cfyp2f54aj.png'),(8,'Flowery','12Aaa','5','aaaaaaaaaaaaaa','https://res.cloudinary.com/dzjvjpopn/image/upload/v1633706168/jlb3ikxlmluzws3rsu2f.jpg');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tour`
--

DROP TABLE IF EXISTS `order_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gmail` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `iddiscount` int(11) DEFAULT NULL,
  `idtour` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_iddiscount_idx` (`iddiscount`),
  KEY `fk_idtour_tour_idx` (`idtour`),
  CONSTRAINT `fk_iddiscount` FOREIGN KEY (`iddiscount`) REFERENCES `discount` (`id`),
  CONSTRAINT `fk_idtour_tour` FOREIGN KEY (`idtour`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tour`
--

LOCK TABLES `order_tour` WRITE;
/*!40000 ALTER TABLE `order_tour` DISABLE KEYS */;
INSERT INTO `order_tour` VALUES (25,'trang','trang@gmail.com','3333333333',2,1,1900,'2021-08-27 22:00:14',NULL,14),(26,'Lucy','lucy123@gmai.com','0988553345',4,0,2800,'2021-08-27 22:01:10',NULL,14),(27,'Louis Nguyen','louisnguyen234@gmail.com','098799778',2,0,1000,'2021-09-27 22:02:36',NULL,13),(28,'Adam Wein','adamwww@hotmail.com','8767654436',3,1,2000,'2021-10-27 22:03:45',NULL,13),(29,'Kevin Mendes','kevinn287@outlook.com','9876543567',4,2,3000,'2021-10-27 22:04:57',NULL,13),(30,'Tessa Violet','violetessaa@gmail.com','9878908798',2,0,1260,'2021-10-27 22:06:09',NULL,14),(31,'Rose Park','rosiep@gmail.com','1234456432',6,0,2700,'2021-10-27 22:50:51',NULL,15);
/*!40000 ALTER TABLE `order_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `checkin` date DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  `iduser` int(11) NOT NULL,
  `idroom` int(11) NOT NULL,
  `idhotel` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_iduser_idx` (`iduser`),
  KEY `fk_idroom_idx` (`idroom`),
  KEY `fk_idhotel_hotel_idx` (`idhotel`),
  CONSTRAINT `fk_idhotel` FOREIGN KEY (`idhotel`) REFERENCES `hotel` (`id`),
  CONSTRAINT `fk_idroom` FOREIGN KEY (`idroom`) REFERENCES `room` (`id`),
  CONSTRAINT `fk_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (19,'2','2021-10-31','2021-11-02',9,1,1),(20,'3','2021-10-30','2021-11-01',9,2,1),(21,'3','2021-10-13','2021-10-14',9,3,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1,'North, VietNam'),(2,'South, VietNam'),(3,'Central, VietNam'),(4,'Asia'),(5,'Europe'),(6,'Africa'),(7,'Australia'),(8,'North America'),(9,'South America'),(10,'Antarctica ');
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `intro` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (4,'A Definitive Guide to the Best Dining','https://res.cloudinary.com/dzjvjpopn/image/upload/v1632402275/tour/tour-6_gwkg6y.jpg','Là thương hiệu cà phê Việt Nam đã có mặt tại hơn 120 quốc gia trên thế giới, với vai trò dẫn đầu ngành cà phê - ngành nông nghiệp chiến lược của Việt Nam, TNI King Coffee tâm huyết giới thiệu với bạn bè thế giới những câu chuyện ấn tượng về dòng chảy lịch sử cà phê như: 3 làn sóng cà phê Việt Nam, văn hóa cà phê Việt Nam trong văn hóa linh thiêng của Tây Nguyên, khẳng định cà phê là báu vật với những dấu ấn tích cực trong sự phát triển của nhân loại. Thông qua đó, thế giới sẽ hiểu hơn về giá trị của hạt cà phê Robusta của Việt Nam - quốc gia số 1 thế giới về sản lượng và chất lượng cà phê Robusta.',NULL),(5,'How These 5 People Found The Path to Their Dream Trip','https://res.cloudinary.com/dzjvjpopn/image/upload/v1632402276/tour/blog-3_oe94wo.jpg','Hòn Trống Mái được chọn là biểu tượng của ngành du lịch Việt Nam. Đây luôn là điểm tham quan nằm trong danh sách những địa điểm du lịch Hạ Long nhất định phải đến của nhiều du khách. Nằm giữa biển xanh mênh mông là hai chú gà độ đáo với chiều cao tới hơn chục mét khổng lồ hiện lên ngạo nghễ. Tuyệt tác thiên này mang một sứ chút kỳ lạ bởi nhìn từ xa nó có dáng dấp khá chênh vênh, tưởng chừng có thể đổ ập bất cứ lúc nào. Nhưng không, qua bao năm tháng nó hòn Trống Mái vẫn đứng hiên ngang đầy kiêu hãnh. Khối đá có hình dáng đẹp thơ mộng ấy gắn với truyền thuyết về một mối tình chung thủy và đã trở thành biểu tượng khát khao hạnh phúc mà người xưa đã khéo léo gửi gắm vào vùng biển đảo nơi đây.',NULL),(6,'Our Secret Island Boat Tour Is just for You','https://res.cloudinary.com/dzjvjpopn/image/upload/v1632402271/tour/cover-img-2_vxo2v8.jpg','Du lịch Hạ Long cũng nổi tiếng với các hang động thạch nhũ đẹp không kém cạnh gì các hang động ở Quảng Bình. Trong số các hang động ở đây, hang Sửng Sốt được đánh giá đẹp vào bậc nhất của vịnh Hạ Long với những khối thạch nhũ lung linh, huyền ảo hóa thân vào vô số những hình thù kỳ lạ, đặc sắc chuyển động trong một thế giới như thực như mơ khiến ai đã từng đặt chân tới đây đều say sưa chiêm ngưỡng. Vẻ đẹp của hang càng khiến người ta đi từ sửng sốt đến mê đắm khi càng vào sâu bên trong. Khắp trần hang được phủ bằng một lớp “thảm nhung” óng mượt, vô số những “chùm đèn” treo bằng nhũ đá rực sáng long lanh, những tượng đá, voi đá, hải cẩu, mâm xôi, hoa lá… Tới đỉnh cao nhất của hang động là một khu “vườn thượng uyển” có hồ nước trong vắt, phong cảnh sơn thuỷ hữu tình, muôn loài cây cỏ cùng nhiều loài chim muông sinh sống. Từng đàn khỉ vẫn thường kéo nhau xuống đây tìm hoa quả làm náo động cả một vùng.',NULL),(7,'AAAAAAA','https://res.cloudinary.com/dzjvjpopn/image/upload/v1632402265/tour/img_bg_5_ezkaym.jpg','Thời gian gần đây, một địa điểm được cả du khách trong và ngoài nước check in khá nhiều khi du lịch Hạ Long đó là núi Bài Thơ. Nằm kề ngay bên vịnh Hạ Long, nhìn từ xa núi Bài Thơ trông như một toà lâu đài khổng lồ với ba ngọn tháp nhấp nhô trên những bức tường thành kiên cố. Nếu nhìn từ nhiều góc độ người ta nhìn thấy núi có lúc thì có dáng như hổ phục, lúc lại có dáng như sư tử vờn mồi, có lúc lại như con rồng sắp cất cánh.',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `paidby` varchar(45) DEFAULT NULL,
  `idtour` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iduserr_idx` (`iduser`),
  KEY `idtourr_idx` (`idtour`),
  CONSTRAINT `idtourr` FOREIGN KEY (`idtour`) REFERENCES `tour` (`id`),
  CONSTRAINT `iduserr` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(5,'khách hàng'),(6,'quản trị viên'),(7,'chăm sóc khách hàng'),(8,'hướng dẫn viên'),(9,'quản lý');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `idhotel` int(11) NOT NULL,
  `description` text,
  `image` varchar(100) DEFAULT NULL,
  `maximum` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idhotel_idx` (`idhotel`),
  CONSTRAINT `idhotel` FOREIGN KEY (`idhotel`) REFERENCES `hotel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'45','family room',1,NULL,NULL,NULL),(2,'75','luxury room',1,NULL,NULL,NULL),(3,'20','double room',2,NULL,NULL,NULL),(4,'25','suite room',3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `begindate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `meetingplace` varchar(45) DEFAULT NULL,
  `avt` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `id_place` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_place_tour_idx` (`id_place`),
  CONSTRAINT `fk_idplace` FOREIGN KEY (`id_place`) REFERENCES `place` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (13,'Wonderful tour in VietNam',3,NULL,NULL,'Tan Son Nhat airport','https://res.cloudinary.com/dzjvjpopn/image/upload/v1632402274/tour/tour-8_qzpvdh.jpg',500,1),(14,'Luxury Places in Singapore',4,NULL,NULL,NULL,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1635433215/tour/top-su-that-thu-vi-ve-dat-nuoc-singapore-hinh-7-a12383fe-df9d-4ce4-952b-3286adf47d40_qd6mao.jpg',700,4),(15,'Around the City of Love',3,NULL,NULL,NULL,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1635433290/tour/paris-kinh-do-anh-sang_eu1nhr.jpg',450,5);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_detail`
--

DROP TABLE IF EXISTS `tour_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idtour` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `FK_tour_detail_tour_idx` (`idtour`),
  CONSTRAINT `FK_tour_detail_tour` FOREIGN KEY (`idtour`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_detail`
--

LOCK TABLES `tour_detail` WRITE;
/*!40000 ALTER TABLE `tour_detail` DISABLE KEYS */;
INSERT INTO `tour_detail` VALUES (6,'Hà nội',13,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1632402658/tour/ha-noi_jkta38.jpg','Ngày đầu tiên của chuyến du lịch, bạn sẽ được tham quan những điểm đến nổi tiếng ở Hà Nội như khu vực Hồ Gươm có cầu Thê Húc, Tháp Rùa, đền Ngọc Sơn. Sau đó di chuyển ra nhà tù Hỏa Lò – điểm đến đáng trải nghiệm khi du lịch Hà Nội. Buổi tối, bạn có thể lên khu phố Tạ Hiện để tận hưởng thành phố Hà Nội nhộn nhịp vào ban đêm.'),(7,'Hà Giang',13,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1632411156/tour/ha-giang_kbqhct.jpg','Trong ngày thứ hai, cả đoàn sẽ khởi hành đi cao nguyên đá Đồng Văn và đồng thời ghé qua một số khu vực sinh sống của dân tộc miền núi, cột cờ Lũng Cú. Ngoài ra, bạn còn có cơ hội thăm đèo Mã Pí Lèng hùng vĩ, chụp ảnh với hẻm vực sâu 800m của Mã Pí Lèng và ngắm sông Nho Quế dịu dàng xanh biếc. '),(8,'Ninh Bình',13,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1632411154/tour/ninh-binh_bfv6su.jpg','Cùng khám phá khung cảnh nên thơ và lãng mạn của Việt Nam với tour tham quan Ninh Bình trong ngày. Chuyến du lịch sẽ đưa quý khách đến cố đô Hoa Lư, Tuyệt Tình Cốc, Tam Cốc và Bích Động với những ngọn núi hùng vĩ, những dòng nước hiền hòa và cánh đồng lúa xanh bạt ngàn hay đạp xe ngắm cảnh nông thôn Bắc Bộ Việt Nam.');
/*!40000 ALTER TABLE `tour_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `role_id` int(11) NOT NULL,
  `avt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vi_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id_idx` (`role_id`),
  CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ahhi','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO',1,6,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1634044054/xysvnpcntdyfuzitgnsl.jpg'),(2,'kem','$2a$10$x/S7mIo2.thCSlIG5lGwbuhp08ozl68Ey1BnL160NadN.bjm3bqHO',0,5,NULL),(3,'kem','$2a$10$eg4Ow5I.nH9/YBA/RO78dehfjDWwzvhbT9yw5DA.G5U0mixx9zRrS',0,5,NULL),(4,'111','$2a$10$NIlJU.kJE6OS1gkT.iSzJOkuIiyoJ.oLbZetP6f/TDJKR.DSYC.Hm',0,5,NULL),(5,'hello','$2a$10$edDacD9AImL6MxRNzmXkw.ufbpazjLjQxdUVMuqmkeFLTqx.bi7xi',0,5,NULL),(6,'oh','$2a$10$mQ5aPQmFf9R4h/OjEWgqHuMAK7ZiDymALEwS5Voi/7wjuNwwTaGM2',1,5,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1634044054/xysvnpcntdyfuzitgnsl.jpg'),(7,'lô','$2a$10$z1yp46TCQtIIyl5rkEfQt.6uzGWCq8kl3vitWz7MtJIfRJbuFvb.q',0,5,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1634371228/zfpa82nmxjeih4czkyvy.jpg'),(8,'lô','$2a$10$wUfA9L3R.Z.5UG.i4duRq.H2tSm4.UcaV1Lez7wanAkJdjy4iZ7vq',0,5,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1634371732/cduizanyhymbnqgmqrbj.jpg'),(9,'trang','$2a$10$TrXeSRaAjiEwxrlgQPay.umyk7UUfXXnrLRLZnJLPcEV0rML1jHjm',0,5,'https://res.cloudinary.com/dzjvjpopn/image/upload/v1635611915/kao8zcvyq3rxag42hfqu.gif');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-01 12:48:39
