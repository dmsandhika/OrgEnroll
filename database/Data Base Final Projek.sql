-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: database_finalprojek_kelompok5_mentor2
-- ------------------------------------------------------
-- Server version	10.5.18-MariaDB-1:10.5.18+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto_header` varchar(45) DEFAULT NULL,
  `foto_profile` varchar(45) DEFAULT NULL,
  `nama` varchar(45) NOT NULL,
  `judul` varchar(45) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_artikel` text NOT NULL,
  `idkategori` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idkategori` (`idkategori`) USING BTREE,
  CONSTRAINT `fk_idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` VALUES (2,'','','Sengon Andrean','Peserta Festival Robotik Internasional.','2023-11-07','Setelah berhasil dengan kegiatan Robopark di Baywalk Mall Pluit, kini dalam rangka peringatan kemerdekaan Republik Indonesia yang ke-77th PT SARI Teknologi mengadakan kembali festival robotik dengan tema Indonesia Robot Festival.\r\nDengan tujuan untuk memperkenalkan hasil karya anak bangsa yang inovatif, kreatif, aplikatif, serta bisa bersaing di kancah Internasional. Selain itu terdapat sebagian robot inovatif yang hendak akan di pamerkan dalam festival ini. Pastinya robot tersebut tidak hanya di pamerkan, namun juga dapat di mainkan dengan si buah hati sebagai sarana edukasi dan lain sebagainya sehingga dapat menjadi tujuan destinasi keluarga di saat berlibur',4),(3,'','','Karin Alisya','Juara Lomba Debat Kantor DPR','2023-11-13','Debat adalah proses yang melibatkan wacana formal, diskusi, dan pidato lisan mengenai topik atau kumpulan topik tertentu, sering kali dengan moderator dan audiens. Dalam sebuah debat, argumen diajukan untuk sudut pandang yang saling bertentangan.',2),(4,'','','Novita Srimida','Peserta Indonesian Idol','2023-11-30','Indonesian Idol, berjudul Indonesian Idol XII: Home of the Idols untuk musim keduabelas, adalah suatu ajang pencarian bakat yang diadopsi dari Pop Idol dengan sponsor dari FremantleMedia yang bekerjasama dengan RCTI. Ajang ini merupakan pencarian idola di bidang tarik suara.',4),(5,'','','Abdiansyah','Patah Kaki Saat Lomba Pencak Silat','2023-11-23','Pencak silat adalah suatu seni bela diri tradisional yang berasal dari Indonesia. Seni bela diri ini secara luas dikenal di Indonesia, Malaysia, Brunei, Singapura, Filipina selatan, dan Thailand selatan sesuai dengan penyebaran berbagai suku bangsa Nusantara (Indonesia).',1),(6,'','','Amaldi Baiki','Juara Lomba Futsal Sejabodetabek','2023-11-23','<p>Futsal adalah permainan bola yang dimainkan oleh dua tim, yang masing-masing beranggotakan lima orang. Tujuannya adalah memasukkan bola ke gawang lawan, dengan memanipulasi bola dengan kaki. Selain lima pemain utama, setiap regu juga diizinkan memiliki pemain cadangan</p>',1);
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES (1,'TI01','Teknik informatika '),(2,'BI01','Bahasa Inggris '),(3,'TM010','Teknik Mesin'),(4,'AK011','Akuntansi'),(5,'TE013','Teknik Elektro'),(6,'TS014','Teknik Sipil'),(7,'FH015','Hukum'),(8,'FK016','Kedokteran'),(9,'TK018','Teknik.Kimia'),(10,'FM019','Manajemen'),(11,'FP020','Pertanian'),(12,'PKG21','Psikologi'),(13,'FAR22','Farmasi'),(14,'GEO23','Geofisika'),(15,'ASK24','Arsitektur'),(17,'tes1','tes');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'Olahraga'),(2,'Agama'),(3,'Kesenian'),(4,'Kemahasiswaan'),(5,'Penalaran'),(6,'Sosial'),(9,'Hidden');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idjurusan` int(11) NOT NULL,
  `idorganisasi` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `nohp` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tanggal_pendaftaran` date NOT NULL,
  `cv` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `barcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mahasiswa_jurusan` (`idjurusan`),
  KEY `fk_organisasi` (`idorganisasi`),
  CONSTRAINT `fk_mahasiswa_jurusan` FOREIGN KEY (`idjurusan`) REFERENCES `jurusan` (`id`) ON UPDATE NO ACTION,
  CONSTRAINT `fk_organisasi` FOREIGN KEY (`idorganisasi`) REFERENCES `organisasi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (4,1,11,'Karin Alisya','3','P','08956789543','alisya@gmail.com','2023-11-01',NULL,NULL,NULL),(5,5,7,'Amaldi Baiki','4','L','082218994203','amaldi@gmail.com','0000-00-00',NULL,NULL,NULL),(6,6,11,'Gerry hafidz','5','L','083124567392','hafidz@icloud.com','0000-00-00',NULL,NULL,NULL),(7,7,1,'Bela Oktavia','2','P','082242021899','belaokta@icloud.com','0000-00-00',NULL,NULL,NULL),(8,8,3,'Sengon Andrean','4','L','08956734321','Sengon@icloud.com','0000-00-00',NULL,NULL,NULL),(9,2,3,'Monica ulandari','2','P','082234562345','monica@gmail.com','0000-00-00',NULL,NULL,NULL),(10,9,6,'Imam rafi','3','L','082243567493','imamrafi@gmail.com','0000-00-00',NULL,NULL,NULL),(11,10,6,'Shaffa','2','P','083121364895','Shaffa@gmail.com','0000-00-00',NULL,NULL,NULL),(12,11,5,'Nabila tamara','5','P','08956789765','tamara@gmail.com','0000-00-00',NULL,NULL,NULL),(13,12,11,'Abdiansyah','4','L','082218774203','Abdiasnyah@gmail.com','0000-00-00',NULL,NULL,NULL),(14,13,15,'Ganza','3','L','083124563568','ganza@icloud.com','0000-00-00',NULL,NULL,NULL),(15,14,10,'Silvy Dwi','6','P','082243896750','silvy@icloud.com','0000-00-00',NULL,NULL,NULL),(18,3,14,'Jerstang','3','L','082243567421','jerstang@gmail.com','0000-00-00',NULL,NULL,NULL),(19,4,15,'Lidya Safitri','5','P','083121343425','Safitri16@gmail.com','0000-00-00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rangga_msib_2023`@`localhost`*/ /*!50003 TRIGGER `after_insert_mahasiswa` AFTER INSERT ON `mahasiswa` FOR EACH ROW BEGIN
   DECLARE status_pendaftaran_enum ENUM('diproses') DEFAULT 'diproses';
    
    
    INSERT INTO pendaftaran (idmahasiswa, status_pendaftaran)
    VALUES (NEW.id, status_pendaftaran_enum);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisasi`
--

DROP TABLE IF EXISTS `organisasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organisasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `deskripsi` text NOT NULL,
  `email` varchar(45) NOT NULL,
  `hp` varchar(45) NOT NULL,
  `idkategori` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_organisasi_kategori1` (`idkategori`),
  CONSTRAINT `fk_organisasi_kategori1` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisasi`
--

LOCK TABLES `organisasi` WRITE;
/*!40000 ALTER TABLE `organisasi` DISABLE KEYS */;
INSERT INTO `organisasi` VALUES (1,'abc12','abc123','update not null','abc@123','42343461413',5),(2,'OL016','Badminton','Organisasi Bulu tangkis','bultang@gmail.com','08973748342423',1),(3,'OL002','Ukm Bola Basket','Ini adalah Organisasi Basket','Basket@gmail.com','083128353542',1),(4,'PM003','Badan Eksekutif Mahasiswa(BEM)','Ini adalah Organisasi BEM','BEM@gmail.com','08956432753',4),(5,'PM004','Senat Mahasiswa','Ini adalah organisasi Senat Mahasiswa','senat@gmail.com','082218443205',4),(6,'PM005','Badan Perwakilan Mahasiswa(BPM)','Ini adalah organisasi BPM','BPM@gmail.com','082262842739',4),(7,'OL006','Ukm Pencak Silat','Ini adalah organisasi Pencak Silat','pencaksilat@gmail.com','083128283245',1),(8,'OL007','Ukm Bola volley','Ini adalah organisasi Bola Volley','Volley@gmail.com','083138346584',1),(9,'PL008','Ukm Robotik','Ini adalah organisasi robotik','Robotik@gmail.com','08953762847',5),(10,'PL009','Lembaga Pers mahasiswa','Ini adalah Organisasi Lembaga Pers Mahasiswa','Pers@gmail.com','08958462418',5),(11,'Ag010','Himpunan Mahasiswa islam(HMI)','Ini adalah Himpunan Mahasiswa Islam','HMI@gmail.com','082237528190',2),(12,'Ag011','Gerakan  Mahasiswa Kristen Indonesia(GMKI)','Ini adalah Gerakan  Mahasiswa Kristen Indonesia(GMKI)','GMKI@gmail.com','082217428152',2),(13,'Sn012','Ukm Musik','Ini adalah organisasi Ukm Musik','music@gmail.com','083126263861',3),(14,'Sn013','Ukm seni rupa dan fotografi','Ini adalah organisasi Ukm seni rupa dan fotografi','senirupa@gmail.com','082218337101',3),(15,'PM014','Himpunan mahaiswa  jurusan(HMJ)','Ini adalah organisasi Himpunan mahaiswa  jurusan(HMJ)','HMJ@gmail.com','087863533945',4);
/*!40000 ALTER TABLE `organisasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pendaftaran`
--

DROP TABLE IF EXISTS `pendaftaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmahasiswa` int(11) NOT NULL,
  `status_pendaftaran` enum('diproses','diterima','ditolak') NOT NULL,
  `keterangan` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pendaftaran_mahasiswa1` (`idmahasiswa`),
  CONSTRAINT `fk_pendaftaran_mahasiswa1` FOREIGN KEY (`idmahasiswa`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendaftaran`
--

LOCK TABLES `pendaftaran` WRITE;
/*!40000 ALTER TABLE `pendaftaran` DISABLE KEYS */;
INSERT INTO `pendaftaran` VALUES (2,10,'ditolak','testtttttttttttttttt'),(3,9,'diproses',''),(4,18,'diproses',NULL),(5,19,'ditolak',NULL),(7,5,'diproses',NULL),(8,6,'diproses',NULL),(9,7,'diproses',NULL),(10,8,'diproses',NULL),(11,11,'diproses',NULL),(12,12,'diproses',NULL),(13,13,'ditolak',NULL),(14,14,'ditolak',NULL),(15,15,'diproses',NULL);
/*!40000 ALTER TABLE `pendaftaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (4,'App\\Models\\User',12,'token','e57624ae1f3b8bd1d2dd5f38adce25eeb6ff07157e753ba81564368a61106455','[\"*\"]','2023-12-20 08:34:47',NULL,'2023-12-20 08:31:58','2023-12-20 08:34:47'),(5,'App\\Models\\User',2,'token','f6eb92eb5e0fd77c8de7553a1fe46380b7b9279e2c02f8c72ab2258dda9221e8','[\"*\"]','2023-12-26 11:23:42',NULL,'2023-12-24 09:10:30','2023-12-26 11:23:42');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff','mahasiswa') NOT NULL DEFAULT 'mahasiswa',
  `isactive` enum('yes','no','banned') NOT NULL DEFAULT 'no',
  `foto` varchar(30) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin','admin@gmail.com',NULL,'$2y$12$zPu9jADOjdN0FXmdnh/VwenhFOni0VxpOOIJkztZz.UHptVuw/V.G','admin','yes',NULL,NULL,'2023-11-25 04:43:04','2023-11-25 04:43:04'),(3,'staff','staff@gmail.com',NULL,'$2y$12$IuWQyKRpKuDkr7dDSM2i1eKPwlW5WEMWnJV7hMvdi2YdMEJB1fGku','staff','yes',NULL,NULL,'2023-11-25 04:43:47','2023-11-25 04:43:47'),(4,'mahasiswa','mahasiswa@gmail.com',NULL,'$2y$12$yTYbTywOaj4Q2YbXoaQVeOw.FqU7omEMksphhGGCNSaKmJlclAHmO','mahasiswa','yes',NULL,NULL,'2023-11-25 04:44:25','2023-11-25 04:44:25'),(10,'no akses','akses@gmail.com',NULL,'$2y$12$EWRNPl0BfqQcwdIV.LeLZe1xvcJ8y67Jqw.QRx9iKlXTO2R0FHu3q','mahasiswa','no',NULL,NULL,'2023-12-13 01:30:58','2023-12-13 01:38:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'database_finalprojek_kelompok5_mentor2'
--

--
-- Dumping routines for database 'database_finalprojek_kelompok5_mentor2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26 20:21:47
