-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 12:20 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispar_lambung`
--

-- --------------------------------------------------------

--
-- Table structure for table `analisa_hasil`
--

CREATE TABLE `analisa_hasil` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelamin` char(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `tanggal` datetime NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_hasil`
--

INSERT INTO `analisa_hasil` (`id`, `nama`, `kelamin`, `umur`, `alamat`, `kd_penyakit`, `tanggal`, `email`) VALUES
(812, 'Rara', 'Laki-laki', '21', 'batam', 'P005', '2023-12-04 14:29:00', 'raraaa@gmail.com'),
(811, 'Rara', 'Laki-laki', '21', 'batam', 'P005', '2023-12-04 14:29:00', 'raraaa@gmail.com'),
(810, 'Rara', 'Laki-laki', '21', 'batam', 'P005', '2023-12-04 14:29:00', 'raraaa@gmail.com'),
(809, 'Rara', 'Laki-laki', '21', 'batam', 'P005', '2023-12-04 14:29:00', 'raraaa@gmail.com'),
(808, 'Rara', 'Laki-laki', '21', 'batam', 'P005', '2023-12-04 14:29:00', 'raraaa@gmail.com'),
(768, 'Rara', 'Wanita', '21', 'Padang', 'P005', '2023-11-01 11:59:39', 'raraaa@gmail.com'),
(769, 'Rara', 'Wanita', '21', 'Padang', 'P005', '2023-11-01 11:59:39', 'raraaa@gmail.com'),
(772, 'Rara', 'Wanita', '21', 'Padang', 'P005', '2023-11-01 11:59:39', 'raraaa@gmail.com'),
(773, 'Rara', 'Wanita', '21', 'Padang', 'P005', '2023-11-01 11:59:39', 'raraaa@gmail.com'),
(775, 'Rara', 'Wanita', '21', 'Padang', 'P001', '2023-11-01 13:53:17', 'raraaa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kd_gejala` char(4) NOT NULL,
  `gejala` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `gejala`) VALUES
('G001', 'Mual (Regurgitasi)'),
('G002', 'Muntah'),
('G003', 'Muntah agak asam'),
('G004', 'Muntah darah'),
('G005', 'Perut kembung'),
('G006', 'Nyeri perut bagian atas (ulu hati)'),
('G007', 'Sering bersendawa terutama bila dalam keadaan lapar'),
('G008', 'Dada terasa terbakar'),
('G009', 'Hilangnya nafsu makan'),
('G010', 'Sakit kepala'),
('G011', 'Sensasi benjolan ditenggorokan'),
('G012', 'Bau nafas tidak sedap'),
('G013', 'Diare'),
('G014', 'Batuk kering'),
('G015', 'Rasa pahit / tidak nyaman di perut bagian atas'),
('G016', 'Bibir pecah-pecah'),
('G017', 'Rasa nyeri menyebar ke leher, pusar dan hingga punggung, muncul pada malam hari '),
('G018', 'Terasa makin parah saat perut kosong'),
('G019', 'Gangguan penyerapan sari makanan'),
('G020', 'Anemia'),
('G021', 'Gangguan pencernaan'),
('G022', 'Merasa kenyang lebih cepat dari biasanya'),
('G023', 'Darah dan lendir di dalam kotoran'),
('G024', 'Buang air besar terus-menerus'),
('G025', 'Kesulitan menelan'),
('G026', 'Penurunan berat badan'),
('G027', 'Perut terasa penuh');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit_solusi`
--

CREATE TABLE `penyakit_solusi` (
  `kd_penyakit` char(4) NOT NULL,
  `nama_penyakit` varchar(100) DEFAULT NULL,
  `definisi` text,
  `solusi` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit_solusi`
--

INSERT INTO `penyakit_solusi` (`kd_penyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
('P005', 'Kanker Lambung', 'Kanker lambung adalah kanker yang terjadi akibat pertumbuhan sel lambung yang tidak normal dan tidak terkendali. Pertumbuhan sel abnormal ini terjadi karena sel di lambung mengalami perubahan genetik. Pada stadium awal, kanker lambung jarang menimbulkan gejala spesifik. Gejalanya dapat berupa perut kembung atau nyeri ulu hati, dan sering kali hanya dianggap sebagai sakit maag atau menyerupai gejala penyakit lambung pada umumnya. Kondisi tersebut membuat kanker lambung sulit untuk dideteksi lebih awal dan umumnya baru terdiagnosis setelah masuk stadium akhir. Hal ini tentunya akan memengaruhi peluang kesembuhan.', 'Agar terhindar dari kanker lambung, Anda dapat melakukan beberapa langkah berikut ini:\r\n\r\nBerhenti merokok. Menerapkan pola makan sehat, misalnya mengonsumsi makanan kaya serat, serta mengurangi makanan asin dan makanan olahan. Menjaga berat badan ideal. Berolahraga rutin'),
('P003', 'Tukak Lambung', 'Tukak lambung adalah luka pada lambung yang menyebabkan keluhan sakit maag, seperti nyeri ulu hati, kembung dan mual. Kondisi ini sebernarnya dapat diatasi dengan mudah. Namun, Jika penanganannya terlambat, komplikasi yang berat bisa terjadi.\r\n\r\nLambung memiliki lapisan mukus yang berfungsi untuk melindungi jaringan lambung dari asam lambung. Tukak lambung terjadi ketika lapisan mukus tersebut terkikis dan asam lambung langsung mengenai jaringan lambung.\r\n\r\nBanyak orang menganggap bahwa tukak lambung disebabkan oleh konsumsi makanan asam atau pedas secara berlebihan, tetapi anggapan tersebut kurang tepat. Makanan pedas memang dapat memperparah gejala sakit maag, tetapi tidak menyebabkan luka.', 'Tukak lambung dapat dicegah dengan melakikan beberapa upaya sederhana seperti berikut:\r\n\r\nCuci tangan secara rutin, terutama sebelum makan dan setelah dari toilet. Cuci bahan makanan dan masak hingga benar-benar matang. Hindari mengkonsumsi minuman beralkohol. Pastikan air yang diminum bersih. Batasi penggunaan obat antiinflamasi nosteroid (OAINS) sesuai anjuran dokter. Perbanyak makan sayur, buah dan biji-bijian. Hentikan kebiasaan merokok'),
('P004', 'Gastroparesis', '	\r\nGastroparesis merupakan kelumpuhan pada otot lambung yang menyebabkan gerakan lambung untuk mendorong makanan ke usus menjadi lambat. Gastroparesis ditandai dengan keluhan mual, muntah, dan mudah kenyang\r\n\r\nGastroparesis merupakan gangguan pada proses penyaluran makanan tersebut, yang diduga terjadi akibat kerusakan pada saraf vagus. Hal ini dapat menimbulkan berbagai komplikasi, termasuk malnutrisi.', 'Gastroparesis tidak bisa dicegah, tetapi Anda bisa mengurangi kemungkinan terjadinya kondisi ini dengan melakukan perbaikan pola makan\r\n\r\nMengonsumsi makanan rendah lemak dan serat. Mengonsumsi makanan yang lunak. Makan dengan porsi kecil tetapi sering. Tidak mengonsumsi minuman bersoda dan beralkohol. Tidak langsung berbaring setelah makan'),
('P001', 'Gastritis', '	\r\nGastritis adalah penyakit akibat peradangan di dinding lambung. Kondisi ini umumnya ditandai dengan nyeri di bagian ulu hati. Jika dibiarkan, gastritis bisa berlangsung bertahun-tahun dan menimbulkan komplikasi serius, seperti tukak lambung.\r\n\r\nGastritis terbagi menjadi dua jenis, yaitu gastritis akut dan kronis. Gastritis akut terjadi ketika peradangan di lapisan lambung berlangsung secara tiba-tiba. Kondisi ini menyebabkan nyeri ulu hati hebat yang bersifat sementara. Namun, jika tidak ditangani, gastritis akut bisa berlanjut menjadi kronis', 'Gastritis dapat dicegah dengan menjaga pola makan dan gaya hidup. Beberapa upaya yang dapat dilakukan adalah:\r\n\r\nMencuci tangan dengan sabun dan air mengalir sebelum memasak dan makan, untuk mencegah penularan infeksi bakteri pylori. Menghindari makanan pedas, asam, berlemak, atau digoreng. Mengonsumsi makanan dengan porsi yang lebih sedikit. Menghindari berbaring setelah makan sampai waktu 2 sampai 3 jam setelahnya. Mengurangi konsumsi minuman berkafein atau beralkohol. Mengendalikan stres. Menghindari konsumsi obat antiinflamasi nonsteroid berlebihan atau tanpa berkonsultasi terlebih dahulu dengan dokter'),
('P002', 'GERD (gastroesophageal reflux disease)', 'Penyakit asam lambung atau GERD adalah munculnya rasa terbakar di dada akibat asam lambung naik ke kerongkongan. Gejala penyakit asam lambung muncul minimal dua kali dalam seminggu\r\n\r\nAsam lambung naik atau penyakit asam lambung bisa dialami oleh orang dewasa atau anak-anak. Gejala penyakit pada asam lambung ini sering diduga sebagai serangan jantung atau penyakit jantung koroner, karena gejalanya hampir mirip dengan nyeri dada. Meski tidak mematikan seperti serangan jantung, penyakit asam lambung atau GERD perlu ditangani agar tidak menimbulkan komplikasi', 'Pencegahan penyakit asam lambung dapat dilakukan dengan perubahan pola makan, minum, dan gaya hidup. Perubahan tersebut di antaranya, yaitu:\r\n\r\nMenjaga berat badan agar selalu ideal. Menurunkan berat badan jika obesitas. Menghindari makan dan minuman yang memicu naiknya asam lambung. Membatasi konsumsi obat antiinflamasi nonsteroid. Tidak langsung berbaring setelah makan. Menerapkan jadwal makan yang teratur. Menghindari mengenakan pakaian yang terlalu sempit');

-- --------------------------------------------------------

--
-- Table structure for table `relasi`
--

CREATE TABLE `relasi` (
  `id_relasi` int(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `bobot` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi`
--

INSERT INTO `relasi` (`id_relasi`, `kd_gejala`, `kd_penyakit`, `bobot`) VALUES
(27, 'G009', 'P003', 3),
(26, 'G008', 'P003', 5),
(25, 'G006', 'P003', 3),
(24, 'G005', 'P003', 1),
(23, 'G004', 'P003', 5),
(1, 'G013', 'P001', 5),
(2, 'G012', 'P001', 1),
(3, 'G011', 'P001', 3),
(4, 'G010', 'P001', 3),
(5, 'G009', 'P001', 3),
(6, 'G008', 'P001', 5),
(7, 'G007', 'P001', 5),
(8, 'G006', 'P001', 3),
(9, 'G005', 'P001', 1),
(10, 'G002', 'P001', 1),
(22, 'G003', 'P003', 5),
(21, 'G002', 'P003', 1),
(20, 'G001', 'P003', 1),
(19, 'G016', 'P002', 1),
(18, 'G015', 'P002', 1),
(17, 'G014', 'P002', 5),
(16, 'G012', 'P002', 3),
(15, 'G009', 'P002', 1),
(14, 'G007', 'P002', 3),
(13, 'G002', 'P002', 3),
(12, 'G001', 'P002', 3),
(11, 'G001', 'P001', 1),
(28, 'G017', 'P003', 5),
(29, 'G018', 'P003', 5),
(30, 'G019', 'P003', 3),
(31, 'G020', 'P003', 5),
(33, 'G001', 'P004', 1),
(34, 'G002', 'P004', 1),
(35, 'G006', 'P004', 3),
(36, 'G007', 'P004', 5),
(37, 'G009', 'P004', 3),
(38, 'G021', 'P004', 3),
(39, 'G022', 'P004', 3),
(40, 'G001', 'P005', 1),
(41, 'G004', 'P005', 5),
(42, 'G009', 'P005', 3),
(43, 'G021', 'P005', 3),
(44, 'G023', 'P005', 5),
(45, 'G024', 'P005', 5),
(46, 'G025', 'P005', 5),
(47, 'G026', 'P005', 5),
(48, 'G027', 'P005', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `noip` int(3) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `bobot` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`noip`, `kd_gejala`, `bobot`) VALUES
(131029, 'G001', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_pasien`
--

CREATE TABLE `tmp_pasien` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelamin` char(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `noip` varchar(30) NOT NULL,
  `tanggal` datetime NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_pasien`
--

INSERT INTO `tmp_pasien` (`id`, `nama`, `kelamin`, `umur`, `alamat`, `noip`, `tanggal`, `email`) VALUES
(86, 'Mardiya', 'Laki-laki', '22', 'geudong', '127.0.0.1', '2016-12-19 09:53:40', 'martunis@gmail.com'),
(122, 'Rara', 'Wanita', '21', 'batam', '::1', '2023-12-27 16:01:58', 'raraaa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_penyakit`
--

INSERT INTO `tmp_penyakit` (`noip`, `kd_penyakit`, `nilai`) VALUES
('', 'P001', 0.032258064516129),
('', 'P002', 0.15),
('', 'P003', 0.023809523809524),
('', 'P004', 0.052631578947368),
('', 'P005', 0.028571428571429);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `penyakit_solusi`
--
ALTER TABLE `penyakit_solusi`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indexes for table `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`id_relasi`);

--
-- Indexes for table `tmp_analisa`
--
ALTER TABLE `tmp_analisa`
  ADD PRIMARY KEY (`noip`);

--
-- Indexes for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`noip`);

--
-- Indexes for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=834;

--
-- AUTO_INCREMENT for table `relasi`
--
ALTER TABLE `relasi`
  MODIFY `id_relasi` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  MODIFY `noip` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131030;

--
-- AUTO_INCREMENT for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
