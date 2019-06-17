-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: spm2
-- ------------------------------------------------------
-- Server version	8.0.15-commercial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (157,1,3,3,'2019-06-17'),(158,2,3,3,'2019-06-17'),(159,3,3,3,'2019-06-17'),(160,5,1,3,'2019-06-17'),(161,6,3,3,'2019-06-17'),(162,8,1,3,'2019-06-17'),(163,9,3,3,'2019-06-17'),(208,1,1,4,'2019-06-17'),(209,4,3,4,'2019-06-17'),(210,5,3,4,'2019-06-17'),(211,6,3,4,'2019-06-17'),(212,2,3,4,'2019-06-17'),(213,7,3,4,'2019-06-17'),(214,8,3,4,'2019-06-17'),(215,9,3,4,'2019-06-17');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (50,3,6.66667,1),(51,4,7.77778,1);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `groupstudent`
--

LOCK TABLES `groupstudent` WRITE;
/*!40000 ALTER TABLE `groupstudent` DISABLE KEYS */;
INSERT INTO `groupstudent` VALUES (1,'nhom 1',3,4,5,6,7,8,22),(2,'nhom 2',9,10,11,12,13,14,21),(3,'nhom 3',15,16,17,18,19,20,0),(4,'nhom 4',10,4,5,7,8,9,0),(9999,'mau',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `groupstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (21,'Professor ABC','hihihaha','java-deep learning-big data','10 hoc sinh tro thanh tien si','20 nam trong moi linh vuc','1-'),(22,'Professor DEF','hihihaha','java-deep learning-big data','10 hoc sinh tro thanh tien si','20 nam trong moi linh vuc',''),(23,'Professor XXX','hihihaha','java-deep learning-big data','10 hoc sinh tro thanh tien si','20 nam trong moi linh vuc','1-');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,1,'a+b=?','a','b','ab','bc',3),(2,1,'a+c=?','a','b','ac','bc',3),(3,1,'a+d=?','a','b','ad','bc',3),(4,1,'a+e=?','a','b','ae','bc',3),(5,1,'a+f=?','a','b','af','bc',3),(6,1,'a+g=?','a','b','ag','bc',3),(7,1,'a+h=?','a','b','ah','bc',3),(8,1,'a+j=?','a','b','aj','bc',3),(9,1,'a+k=?','a','b','ak','bc',3);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin',NULL),(2,'professor',NULL),(3,'student',NULL),(4,'input-department',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (3,'Pham Van A','{description}','java-mysql-javascript-spring mvc-Jquery-BootStrap4-PHP-ASP','15130001',1),(4,'Pham Van B','student student 4','java-mysql-javascript','15130002',1),(5,'Pham Van C','student student 5','java-mysql-javascript','15130003',1),(6,'Pham Van D','student student 6','java-mysql-javascript','15130004',1),(7,'Pham Van F','student student 7','java-mysql-javascript','15130005',1),(8,'Pham Van G','student student 8','java-mysql-javascript','15130006',1),(9,'Pham Van H','student student 9','java-mysql-javascript','15130007',2),(10,'Pham Van K','student student 10','java-mysql-javascript','15130008',2),(11,'Pham Van L','student student 11','java-mysql-javascript','15130009',2),(12,'Pham Van M','student student 12','java-mysql-javascript','15130010',2),(13,'Pham Van N','student student 13','java-mysql-javascript','15130011',2),(14,'Pham Van O','student student 14','java-mysql-javascript','15130012',2),(15,'Pham Van P','student student 15','java-mysql-javascript','15130013',3),(16,'Pham Van Q','student student 16','java-mysql-javascript','15130014',3),(17,'Pham Van AR','student student 17','java-mysql-javascript','15130015',3),(18,'Pham Van S','student student 18','java-mysql-javascript','15130016',3),(19,'student19','student student 19','java-mysql-javascript','15130017',3),(20,'student20','student student 20','java-mysql-javascript','15130018',3),(24,'student21','student20student20','java','15130019',9999);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'Test1','1 hour'),(2,'Test2','1 hour');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'EarthSurfer','EarthSufer sử dụng Balance Board của Nintendo Wii, cùng sự trợ giúp của một máy tính để “lái” chiếc ô tô chở sữa đi vòng quanh các địa điểm xuất hiện trên Google Earth',21),(2,'Quake II GTW Port','Chúng ta có thể làm được vô số điều thú vị với công cụ HTML5. Trò chơi bắn súng góc nhìn thứ nhất, Quake 2, giờ đây có thể chơi trực tiếp trên trình duyệt với ứng dụng Quake II GTW Port. Chương trình sử dụng mã nguồn mở và HTML5 để cấu thành game “khủng” trên các trình duyệt bây giờ như Safari, Chrome, FireFox 4',21),(3,'OpenSocial','Ứng dụng ấn tượng giúp người dùng tạo ra một… mạng xã hội. Nhiều người có thể chỉ dùng OpenSocial cho mục đích vui chơi giải trí nên họ bắt đầu tạo một mạng xã hội và thử quản lí chúng. Tuy nhiên có thể người sử dụng không biết rằng ứng dụng này được phát triển trên nền tảng hỗ trợ bởi các “ông lớn” như Hi5, MySpace, Yahoo và nhiều hãng khác. Thú vị ở chỗ, nó được cung cấp hoàn toàn miễn phí.',21),(7,'Google Refine','Đây là công cụ hiệu quả để sàng lọc dữ liệu bị sắp xếp lộn xộn. Google Refine giúp bạn quét dọn dữ liệu, chuyển sang định dạng khác thích hợp hơn, liên kết với nhau và mở rộng chúng tới với các dịch vụ chia sẻ trực tuyến. Bộ công cụ được Google mua lại của Metaweb trước đây, sau đó phát triển thêm và cung cấp miễn phí cho người sử dụng.',21),(8,'Dự án Google Refine','Đây là công cụ hiệu quả để sàng lọc dữ liệu bị sắp xếp lộn xộn. Google Refine giúp bạn quét dọn dữ liệu, chuyển sang định dạng khác thích hợp hơn, liên kết với nhau và mở rộng chúng tới với các dịch vụ chia sẻ trực tuyến. Bộ công cụ được Google mua lại của Metaweb trước đây, sau đó phát triển thêm và cung cấp miễn phí cho người sử dụng.',21);
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (3,'021021021','abc@gmail.com','Hồ Chí Minh',0,'1997-09-09'),(4,'09133371','15130001@gmail.com','Ha Noi',0,'1997-09-09'),(5,'09133372','15130002@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(6,'09133373','15130003@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(7,'09133374','1513004c@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(8,'09133375','15130005@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(9,'09133376','15130006@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(10,'09133378','15130007@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(11,'09133379','15130008@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(12,'09133380','15130009@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(13,'09133381','15130010@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(14,'09133382','15130011@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(15,'09133383','15130012@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(16,'09133384','15130013@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(17,'09133385','15130014@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(18,'09133386','15130015@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(19,'09133387','15130016@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(20,'09133389','15130017@gmail.com','Linh Trung Thu Duc',0,'1997-09-09'),(21,'09133390','professor1@gmail.com','Linh Trung Thu Duc',0,'1987-09-09'),(22,'09133391','professor2@gmail.com','Linh Trung Thu Duc',0,'1987-09-09'),(23,'09133392','professor3@gmail.com','Linh Trung Thu Duc',0,'1987-09-09'),(24,'09133392','15130018@gmail.com','Linh Trung Thu Duc',0,'1997-09-09');
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'user1@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(4,'user2@gmail.com','24c9e15e52afc47c225b757e7bee1f9d',3),(5,'user3@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(6,'user4@gmail.com','24c9e15e52afc47c225b757e7bee1f9d',3),(7,'user5@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(8,'user6@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(9,'user7@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(10,'user8@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(11,'user9@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(12,'user10@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(13,'user11@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(14,'user12@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(15,'user13@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(16,'user14@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(17,'user15@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(18,'user16@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(19,'user17@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(20,'user18@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(21,'professor1@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',2),(22,'professor2@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',2),(23,'professor3@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',2),(24,'user19@gmail.com','ee11cbb19052e40b07aac0ca060c23ee',3),(25,'admin','21232f297a57a5a743894a0e4a801fc3',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 10:27:41
