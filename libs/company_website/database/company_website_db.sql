-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 06:22 PM
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
-- Database: `company_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `file_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `description`, `file_path`, `date_created`, `date_updated`) VALUES
(6, 'PEMBANGUNAN RUANG KELAS BARU SDN 025 ALIM', '&lt;p&gt;&lt;span style=&quot;color: rgb(55, 65, 81); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);&quot;&gt;Saat ini, proyek ini sedang berada dalam tahap pembangunan aktif. Tim konstruksi berdedikasi telah bekerja keras untuk memastikan bahwa proyek ini selesai sesuai jadwal yang telah ditentukan. Meskipun masih dalam proses pembuatan, kita dapat melihat perkembangan yang signifikan dalam penciptaan ruang kelas baru yang modern dan fungsional.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1694763900_00bd7873-74ed-4239-a635-1bb6b81d0019.jpg', '2023-09-15 14:45:41', '2023-09-15 14:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `meta_field` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`meta_field`, `meta_value`) VALUES
('mobile', '082338059642'),
('email', 'fajarciptamandiri@yahoo.com'),
('facebook', 'https://facebook.com/profile'),
('twitter', 'https://wa.me/+6282328059642?text=Halo,%20Saya%20ingin%20konsultasi%20kontruksi'),
('linkin', ''),
('address', 'Jl. Tj. Karang, Pekanbaru Riau');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(30) NOT NULL,
  `full_name` text NOT NULL,
  `subject` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `full_name`, `subject`, `contact`, `email`, `message`, `status`, `date_created`, `date_updated`) VALUES
(1, 'John Smith', 'Sample Subject Only', '09123456789', 'jsmith@sample.com', 'Sample Message only', 1, '2021-08-12 15:50:02', '2021-08-12 16:16:10'),
(2, 'John Smith', 'Sample Subject Only', '09123456789', 'jsmith@sample.com', 'Sample Message only', 1, '2021-08-12 15:50:18', '2021-08-12 16:15:20'),
(5, 'muhamad', 'whaymdlklak', '0818272363', 'muhamad@gmail.com', 'kami bergerakkjdkjksja', 1, '2023-04-04 15:19:52', '2023-09-13 13:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `file_path`, `date_created`, `date_updated`) VALUES
(4, 'Kontraktor Bidang Arsitektural', '&lt;p style=&quot;margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5;&quot;&gt;&lt;b style=&quot;color: rgb(0, 0, 0); font-size: 0.875rem;&quot;&gt;Spesialisasi Kami :&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Membangun dan Merenovasi Sekolah&lt;/b&gt;: Kami mengambil peran penting dalam mendukung dunia pendidikan dengan membangun sekolah baru dan merenovasi yang ada untuk menciptakan lingkungan belajar yang terbaik.&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Jembatan dan Jalan&lt;/b&gt;: Kami menghubungkan komunitas dengan membangun jalan-jalan yang berkualitas tinggi dan jembatan-jembatan yang aman.&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Kualitas Utama&lt;/b&gt;: Kami mengutamakan kualitas dengan menggunakan bahan terbaik dan menjalankan kontrol kualitas yang ketat untuk memastikan kepuasan pelanggan.&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Inovasi&lt;/b&gt;: Kami senantiasa mencari inovasi dalam setiap proyek kami, menciptakan solusi yang efisien dan berkelanjutan.&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Setiap proyek adalah peluang untuk menciptakan perubahan positif, dan kami bersama Anda dalam merajut masa depan yang lebih baik. Jika Anda memiliki proyek konstruksi atau renovasi yang perlu kami diskusikan, jangan ragu untuk menghubungi kami di &lt;/font&gt;&lt;a href=&quot;https://wa.me/+6282328059642?text=Halo,%20Saya%20ingin%20konsultasi%20kontruksi&quot; target=&quot;_blank&quot;&gt;whatsapp&lt;/a&gt;&lt;font color=&quot;#000000&quot;&gt;. CV Fajar Cipta Mandiri adalah mitra yang siap membantu Anda mewujudkan visi arsitektur Anda dan memberikan kontribusi positif bagi masyarakat melalui pembangunan yang berkualitas.&lt;/font&gt;&lt;/p&gt;', 'uploads/1694602730_download.jpg', '2021-08-12 10:28:12', '2023-09-15 15:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'CV. FAJAR CIPTA MANDIRI'),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', 'Our Company'),
(9, 'logo', 'uploads/1628731260_logo.jpg'),
(11, 'welcome_message', '\"Mewujudkan Visi Arsitektur Anda Bersama Kami\"'),
(12, 'banner', 'uploads/1694602140_R.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(30) NOT NULL,
  `message_from` text NOT NULL,
  `message` text NOT NULL,
  `file_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `message_from`, `message`, `file_path`, `date_created`, `date_updated`) VALUES
(1, 'John Smith, CEO of Sample Company 101', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dapibus arcu, ullamcorper viverra felis. Aenean in diam at ligula interdum laoreet. Mauris quis purus maximus, scelerisque lacus non, malesuada sapien. Sed at vulputate sapien. Sed vitae auctor odio. Nam ac massa luctus, scelerisque odio id, accumsan sem. Ut tincidunt bibendum diam, at tempor leo ornare ut. Donec nibh mi, mattis a dolor vitae, interdum rutrum nisi. Vestibulum eu nulla pharetra leo porta ornare quis ac magna. In blandit diam non tortor accumsan, id finibus odio sollicitudin.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Proin commodo turpis massa, quis posuere turpis cursus a. Phasellus ac mauris eget turpis efficitur cursus tempus eget purus. Praesent a est id velit euismod dapibus eu sed turpis. Nulla iaculis velit vitae justo bibendum fermentum. Vestibulum vulputate erat ac ex cursus pharetra. Nulla facilisi. Nullam aliquam lorem nisl, congue posuere mi sollicitudin id. Morbi ornare sagittis posuere. Donec elit urna, congue nec mauris a, tincidunt malesuada mauris. Quisque rutrum felis ligula, nec molestie purus porttitor porta. Aliquam et nibh laoreet, euismod tellus non, fermentum sapien.&lt;/p&gt;', 'uploads/1628741365_avatar.jpg', '2021-08-12 12:09:25', NULL),
(2, 'Claire Blake, VP in Accounting and Finance of Sample102', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Nam pulvinar tempus ante sit amet malesuada. Donec quis sem porttitor, varius dolor vel, eleifend enim. Pellentesque vitae elit elementum, tristique nisl vel, varius nisi. Integer massa libero, tincidunt in tincidunt vel, semper ac libero. Suspendisse potenti. Praesent vitae nibh nec nunc sagittis condimentum. Etiam feugiat, ipsum sit amet cursus viverra, purus lacus tincidunt metus, eget commodo enim nunc ac enim. Ut dolor libero, molestie ut lacus ac, imperdiet tempus ligula. Pellentesque suscipit blandit tellus id interdum. Sed vestibulum posuere nisl in condimentum.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Etiam vitae diam tincidunt, vulputate tellus a, tempus sem. Aenean vulputate ultricies tellus, non pellentesque risus volutpat vel. Vestibulum dolor quam, ultrices quis eros et, pharetra porta velit. Aliquam erat volutpat. Nulla eu tortor risus. Aenean tincidunt varius massa at tempor. Ut in felis lacus. Donec volutpat, est at vestibulum auctor, augue risus dapibus leo, et pulvinar sem enim et urna. Quisque volutpat pulvinar nibh.&lt;/p&gt;', 'uploads/1628745074_ava.jpg', '2021-08-12 13:11:14', NULL),
(3, 'George Wilson,  CFO of SAMPLE102 INC.', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Etiam vitae diam tincidunt, vulputate tellus a, tempus sem. Aenean vulputate ultricies tellus, non pellentesque risus volutpat vel. Vestibulum dolor quam, ultrices quis eros et, pharetra porta velit. Aliquam erat volutpat. Nulla eu tortor risus. Aenean tincidunt varius massa at tempor. Ut in felis lacus. Donec volutpat, est at vestibulum auctor, augue risus dapibus leo, et pulvinar sem enim et urna. Quisque volutpat pulvinar nibh.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Nunc pulvinar volutpat nulla at commodo. Nullam vitae justo lorem. Fusce rutrum urna ut nisi placerat tempus. Morbi a fringilla orci, at sollicitudin elit. Aenean quis arcu pretium, congue ante non, pharetra lectus. Pellentesque iaculis diam velit, vitae vulputate risus vulputate id. Duis fringilla cursus pellentesque. Quisque euismod nisl ac molestie volutpat.&lt;/p&gt;', 'uploads/1628745156_avatar.png', '2021-08-12 13:12:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Mr.', 'Habib', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1619140500_avatar.png', NULL, '2021-01-20 14:02:37', '2023-09-10 22:47:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
