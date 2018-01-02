-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2017 at 08:19 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproduct`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_group_id` int(64) NOT NULL,
  `permissions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `admin_group_id`, `permissions`) VALUES
(1, 'admin1', '96e79218965eb72c92a549dd5a330112', 'Nguyen Dinh Thanh', 0, ''),
(2, 'A23818', '0467cb351e245d327c8ca0c24c2becc6', 'Dinh Thanh', 0, ''),
(17, 'admin2', '96e79218965eb72c92a549dd5a330112', 'Nguyễn Đình Thành', 0, '{\"admin\":[\"index\",\"add\",\"edit\"],\"catalog\":[\"index\",\"add\",\"edit\"],\"contact\":[\"index\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`, `sort_order`, `permissions`) VALUES
(1, 'Admin', 1, 'a:14:{s:4:\"tran\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:13:\"product_order\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:3:\"cat\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"product\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:11:\"admin_group\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"admin\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"user\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"news\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"info\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"support\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"contact\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"comment\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"slide\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"video\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}}'),
(2, 'Mod', 2, 'a:9:{s:3:\"cat\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"product\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"news\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"info\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"support\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"contact\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"comment\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"slide\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"video\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `site_title`, `meta_desc`, `meta_key`, `parent_id`, `sort_order`) VALUES
(1, 'Laptop', '', '', '', 0, 0),
(2, 'Điện thoại', '', '', '', 0, 1),
(3, 'Tivi', '', '', '', 0, 2),
(4, ' Acer', '', '', '', 1, 0),
(5, ' Apple', '', '', '', 1, 1),
(6, 'Asus', '', '', '', 1, 2),
(7, 'Dell', '', '', '', 1, 3),
(8, 'HP', '', '', '', 1, 5),
(9, 'Apple', '', '', '', 2, 0),
(10, 'Asus', '', '', '', 2, 1),
(11, 'BlackBerry', '', '', '', 2, 3),
(13, 'AKAI', '', '', '', 3, 0),
(14, 'JVC', '', '', '', 3, 1),
(15, 'LG', '', '', '', 3, 2),
(16, 'Panasonic', '', '', '', 3, 3),
(17, 'Samsung', '', '', '', 3, 5),
(18, 'Toshiba', '', '', '', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `count_like` int(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `product_id`, `parent_id`, `user_name`, `user_email`, `user_id`, `user_ip`, `content`, `created`, `count_like`, `status`) VALUES
(1, 7, 0, 'Nguyen Dinh Thanh', 'nguyendinhthanh128@gmail.com', 0, '', 'San pham noi con khong admin?                    ', 1408798677, 10, 1),
(2, 7, 1, 'Vu van Anh', 'anh@gmail.com', 0, '', 'San pham nay van con hang', 1408799662, 3, 1),
(3, 7, 0, 'abc', 'hoang@gmail.com', 0, '', 'Test comment             ', 1408800324, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(128) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `address`, `title`, `content`, `phone`, `created`) VALUES
(16, 'Nguyễn Văn A', 'anv1104@gmail.com', 'Hoàng Mai - Hà Nội', 'Hỗ trợ', 'Thông tin bán hàng', '0954545468', 1509774959);

-- --------------------------------------------------------

--
-- Table structure for table `content_static`
--

CREATE TABLE `content_static` (
  `id` int(11) NOT NULL,
  `key` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `content_static`
--

INSERT INTO `content_static` (`id`, `key`, `content`) VALUES
(3, 'footer', '<p class=\"bold\">\r\n &copy;2013 -2014 Bản quyền thuộc về&nbsp; <strong>C&ocirc;ng ty TNHH Tuấn Thoa media &ndash; Đại l&yacute; VTC Digital</strong></p>\r\n<p>\r\n Lĩnh vực hoạt động của c&ocirc;ng ty: Điện &amp; điện tử , b&aacute;n lẻ &amp; b&aacute;n bu&ocirc;n</p>\r\n<p>\r\n <strong>Cơ sở 1:</strong>: Cẩm La, X&atilde; Thanh Sơn, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313881505</p>\r\n<p>\r\n <strong>Cơ sở 2:</strong>: Cẩm Xu&acirc;n, N&uacute;i Đối, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313812682</p>\r\n'),
(18, 'shipping', '<p>\r\n Chi ph&iacute; vận chuyển của Tuấn Thoa Media</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `title`, `content`, `meta_desc`, `meta_key`, `created`) VALUES
(1, 'Giới thiệu', '<p>\r\n	Giới thiệu</p>\r\n', '', '', 1409044792),
(2, 'Hướng dẫn mua hàng', '<p>\r\n	Hướng dẫn mua h&agrave;ng</p>\r\n', '', '', 1409044950);

-- --------------------------------------------------------

--
-- Table structure for table `maker`
--

CREATE TABLE `maker` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_bin NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `feature` enum('0','1') COLLATE utf8_bin NOT NULL,
  `count_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `content`, `meta_desc`, `meta_key`, `image_link`, `created`, `feature`, `count_view`) VALUES
(1, 'Nhà lầu siêu xe hàng mã ế sưng, đồ chơi biển đảo hút khách', '(Dân trí) - Loạt đồ chơi trung thu biển đảo hướng về quê hương mới xuất hiện nhưng đã hút khách, các mặt hàng vàng mã “xa xỉ” không còn được nhiều người mua sắm.', '<p style=\"TEXT-ALIGN: left\">\r\n	Theo b&aacute;c Lan, một chủ cửa h&agrave;ng ở phố H&agrave;ng M&atilde; chia sẻ: &ldquo;Kinh tế kh&oacute; khăn n&ecirc;n người bỏ tiền triệu ra mua đồ c&uacute;ng đắt tiền như nh&agrave; lầu, xe hơi, điện thoại, ti vi c&ograve;n rất &iacute;t. Mọi người chỉ lựa chọn những loại đồ c&oacute; gi&aacute; b&igrave;nh d&acirc;n như quần &aacute;o, gi&agrave;y d&eacute;p v&agrave; mũ để c&uacute;ng. Những mặt h&agrave;ng b&aacute;n chạy nhất l&agrave; tiền &acirc;m phủ, v&agrave;ng, quần &aacute;o hay gi&agrave;y d&eacute;p v&igrave; c&oacute; gi&aacute; kh&aacute; b&igrave;nh d&acirc;n&rdquo;.</p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<img alt=\"Mặt hàng đèn lồng biển đảo mới xuất hiện trong dịp Tết Trung Thu năm nay\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n1-242e1.jpg\" /><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">Mặt h&agrave;ng đ&egrave;n lồng biển đảo mới xuất hiện trong dịp Tết Trung Thu năm nay</span></p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<span style=\"FONT-FAMILY: Tahoma\"><img alt=\"Các thông điệp ý nghĩa yêu quê hương, biển đảo được in lên đèn lồng\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n2-242e1.jpg\" /></span><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">C&aacute;c th&ocirc;ng điệp &yacute; nghĩa y&ecirc;u qu&ecirc; hương, biển đảo được in l&ecirc;n đ&egrave;n lồng</span></p>\r\n<p>\r\n	Một mặt h&agrave;ng đặc biệt của m&ugrave;a Vu Lan năm nay đ&oacute; l&agrave; loại đồ chơi &ldquo;biển đảo&rdquo;. Đ&oacute; l&agrave; những chiếc đ&egrave;n lồng được in những th&ocirc;ng điệp hướng về qu&ecirc; hương, biển đảo hết sức &yacute; nghĩa.</p>\r\n<div class=\"article-side-rail\" id=\"article-side-rail\">\r\n	<div class=\"article-video-relation\">\r\n		<div class=\"relative\">\r\n			<img alt=\"Mùa Vu Lan: \" class=\"thumb\" src=\"http://video-thumbs.vcmedia.vn///dantri/7iS0Ym1SbbOoTsWhJi6Q/2014/08/08/vangma-15e63.jpg\" /><img class=\"ico\" src=\"http://dantri3.vcmedia.vn/App_Themes/Default/Images/ico_video_play.png\" /></div>\r\n		<p class=\"caption\">\r\n			M&ugrave;a Vu Lan: &quot;Xe si&ecirc;u sang&quot; đỗ chật phố H&agrave;ng M&atilde;</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	C&aacute;c chủ cửa h&agrave;ng tại đ&acirc;y cho biết, c&aacute;c loại mặt h&agrave;ng l&agrave;m thủ c&ocirc;ng truyền thống đ&egrave;n lồng, đầu l&acirc;n, đ&egrave;n &ocirc;ng sao vẫn được kh&aacute;ch h&agrave;ng ưa chuộng nhất. Ngo&agrave;i ra, mẫu đ&egrave;n lồng in sẵn mang th&ocirc;ng điệp hướng về biển đảo qu&ecirc; hương được nhiều bậc phụ huynh v&agrave; c&aacute;c em học sinh đặc biệt y&ecirc;u th&iacute;ch.</p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<img alt=\"Mới xuất hiện nhưng những chiếc đèn lồng này được nhiều phụ huynh và các em nhỏ lựa chọn\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n4-242e1.jpg\" /><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">Mới xuất hiện nhưng những chiếc đ&egrave;n lồng n&agrave;y được nhiều phụ huynh v&agrave; c&aacute;c em nhỏ lựa chọn</span><br />\r\n	&nbsp;</p>\r\n<p>\r\n	Chiếc đ&egrave;n lồng mang th&ocirc;ng điệp biển đảo được gh&eacute;p lại bằng 3 mảnh b&igrave;a kh&aacute;c nhau. Chiếc đ&egrave;n c&oacute; thể thắp s&aacute;ng v&agrave; ph&aacute;t nhạc khi được lắp pin ở tay cầm.Tuy nhi&ecirc;n, chi tiết đ&aacute;ng ch&uacute; &yacute; nhất đ&oacute; l&agrave; những th&ocirc;ng điệp hướng về biển đảo in tr&ecirc;n th&acirc;n của chiếc đ&egrave;n lồng như &ldquo;Em y&ecirc;u biển đảo qu&ecirc; hương&rdquo;, &ldquo;B&eacute; hướng về biển đảo&rdquo;, &ldquo;Em y&ecirc;u biển đảo Việt Nam&rdquo;, &ldquo;Em y&ecirc;u ch&uacute; bộ đội hải qu&acirc;n Việt Nam&rdquo;, với những h&igrave;nh ảnh chiến sĩ Hải qu&acirc;n Việt Nam s&uacute;ng kho&aacute;c tr&ecirc;n vai bảo vệ chủ quyền biển đảo Tổ quốc hay những chiếc t&agrave;u mang d&ograve;ng chữ Cảnh s&aacute;t biển Việt Nam&hellip;</p>\r\n', '', '', 'n1-242e1.jpg', 1407553602, '0', 1),
(5, 'Mua máy lọc nước A.O.Smith tặng Gói VIP CARE', '', '<h1>\r\n	<strong style=\"font-size: 12px;\">C&oacute; rất nhiều nhu cầu khi mua m&aacute;y say sinh tố kh&aacute;c nhau. C&oacute; thể kể đến những nhu cầu cơ bản như: Say sinh tố, say đồ kh&ocirc;, say ch&aacute;o, say thịt,say hoa quả, say bột, say đ&aacute; nhỏ&hellip; Một trong số đ&oacute; c&oacute; thể kể đến nhu cầu say đồăn dặm cho trẻ nhỏ. Th&ocirc;ng thường nếu ch&uacute;ng ta cứ sử dụng chiếc m&aacute;y say sinh tố th&ocirc;ng thường, chưa c&oacute; đủ số cối say để say đồ ăn dặm cho trẻ sẽ dễ ảnh hưởng đến tuổi thọ của m&aacute;y. Vậy để chọn mua cho đ&uacute;ng, c&aacute;c bạn cần đọc qua b&agrave;i viết dưới đ&acirc;y để c&oacute; thể hiểu ch&iacute;nh x&aacute;c v&agrave; đ&uacute;ng nhất về mục đ&iacute;ch sử dụng n&agrave;y.</strong></h1>\r\n<div>\r\n	<p>\r\n		<strong><img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/c4282dd5-bf26-491f-9ac9-4cc8404d3710_may-xay-sinh-to-may-xay-thit-bluestone-blb-5335w.jpg\" style=\"border:0px solid;vertical-align:top;width:500px;height:300px;\" />&nbsp;</strong></p>\r\n	<p>\r\n		<strong>Phải chọn đ&uacute;ng số cối xay</strong>. Mỗi cối xay sẽ c&oacute; một t&aacute;c dụng ri&ecirc;ng. V&iacute; dụ: C&aacute;c m&aacute;y xay th&ocirc;ng thường sẽ c&oacute; hai cối bao gồm một cối xay sinh tố v&agrave; một cối xay đồ kh&ocirc;. Hai cối say n&agrave;y chưa thể say đầy đủ cho việc say đồ ăn dặm.Nếu muốn xay đồ ăn dặm th&igrave; ch&uacute;ng ta cần th&ecirc;m cối say thịt. V&igrave; sao lại như vậy?V&igrave; những cối say thịt c&oacute; lưỡi dao say chuy&ecirc;n dụng, rất sắc b&eacute;n, c&oacute; thể cắt nhỏv&agrave; say nhuyễn thịt một c&aacute;ch dễ d&agrave;ng. Nếu ch&uacute;ng ta sử dụng m&aacute;y say th&ocirc;ng thường sử dụng cối say sinh tố sẽ dẫn đến hiện tượng ch&aacute;y doăng ở dưới, rất kh&oacute; để mua v&agrave; sửa chữa, ngo&agrave;i ra khi say thịt bằng cối say sinh tố, cối say sẽ kh&oacute; rửa sạch v&agrave; nếu kh&ocirc;ng rửa kỹ trong cối say sẽ xuất hiện m&ugrave;i kh&oacute; chịu.</p>\r\n	<p>\r\n		Trường hợp c&aacute;c bạn say thịt bằng cối say đồ kh&ocirc; sẽ dẫn đến hiện tượng r&ograve; nước ra ngo&agrave;i, v&agrave; cũng dễ dẫn đến hiện tượng bị ch&aacute;y doăng cao xu b&ecirc;n trong. Ch&iacute;nh v&igrave; vậy, khi ch&uacute;ng ta mua m&aacute;y say để say đồ ăn dặm cho trẻ cầnmua m&aacute;y say c&oacute; chức năng say thịt để đảm bảo độ bền cho m&aacute;y v&agrave; cối xay.</p>\r\n	<p>\r\n		Hiện tại tr&ecirc;n thị trường c&ograve;n c&oacute; nhiều d&ograve;ng m&aacute;y say c&oacute; chức năng tự bật, tắt khi sử dụng. Nếu kết hợp th&ecirc;m t&iacute;nh năng ngắt tự động th&igrave; việcsay đồ ăn dặm sẽ tiết kiệm thao t&aacute;c hơn, m&aacute;y sẽ tự động tắt sau 30 gi&acirc;y hoạt động.</p>\r\n	<p>\r\n		<strong>N&ecirc;n chọn những cối xay c&oacute; thương hiệu tr&ecirc;n thị trường như:&nbsp;</strong>Phlilip, Bluestone, Panasonic, Braun&hellip; V&igrave; khi c&aacute;c bạn mua được những chiếc m&aacute;y từ những h&atilde;ng c&oacute; t&ecirc;n tuổi n&agrave;y sẽ rất đảm bảo chất lượng khi sử dụng v&agrave; chế độ bảo h&agrave;nh l&acirc;u d&agrave;i.</p>\r\n	<p>\r\n		<em>Tr&ecirc;n đ&acirc;y l&agrave; một số đặc điểm khi bạn chọn m&aacute;y say để say đồ ăn dặm cho trẻ nhỏ. C&aacute;c bạn lưu &yacute; khi sử dụng cần nhớ bật tắt trong khoảng thờigian 15 &ndash; 30 gi&acirc;y. Khi say thịt hoặc những đồ cứng n&ecirc;n cho th&ecirc;m một ch&uacute;t nướcth&igrave; m&aacute;y sẽ say nhanh hơn v&agrave; đảm bảo chất lượng hơn. Hi vọng với những kiến thức tr&ecirc;n sẽ hữu &iacute;ch hơn cho c&aacute;c bạn. Ch&uacute;c c&aacute;c bạn t&igrave;m được chiếc m&aacute;y say ph&ugrave; hợp với gia đ&igrave;nh m&igrave;nh.</em></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 'tin_tuc_1.jpg', 1509775640, '0', 4),
(6, 'Top 3 bếp điện đôi giá mềm có thay thế bếp ga', '', '<h1>\r\n	<strong style=\"font-size: 12px;\">Hiện nay, bếp điện từ, bếp hồng ngoại dần trở n&ecirc;n phổ biến hơn trong mỗi gia đ&igrave;nh. Kh&ocirc;ng những chỉ c&oacute; bếp điện đơn, bếp từ, hồng ngoại, bếp hỗn hợp cũng l&agrave; sự lựa chọn s&aacute;ng gi&aacute; trong việc thay thế bếp ga. Trong rất nhiều model gi&aacute; mềm, vừa tiền, gi&aacute; th&agrave;nh hợp l&yacute; th&igrave; hiện nay đang c&oacute; 3 model ph&ugrave; hợp với nhu cầu n&agrave;y. H&ocirc;m nay, ch&uacute;ng ta h&atilde;y c&ugrave;ng t&igrave;m hiểu những model bếp n&agrave;y nh&eacute;!</strong></h1>\r\n<div>\r\n	<p>\r\n		<strong>B&ecirc;́p đ&ocirc;i đi&ecirc;̣n từ SUNHOUSE SHB9101</strong></p>\r\n	<p>\r\n		<strong><img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/bep-doi-dien-tu-sunhouse-shb9101-cs-4400w-1.jpg\" style=\"border:0px solid;vertical-align:top;width:284px;height:186px;\" />&nbsp;</strong></p>\r\n	<p>\r\n		B&ecirc;́p đ&ocirc;i đi&ecirc;̣n từ SUNHOUSE SHB 9101 c&ocirc;ng xuất 4400W với 2 mặt nấu ph&ugrave; hợp với mọi k&iacute;ch cỡ nồi, bảng điều khiển cảm ứng gi&uacute;p bạn linh hoạt hơn trong qu&aacute; tr&igrave;nh nấu ăn. B&ecirc;́p được thiết kế kiểu d&aacute;ng hiện đại, sang trọng ph&ugrave; hợp với nhiều kh&ocirc;ng gian bếp mang đến sự tiện lợi khi sử dụng. B&ecirc;́p c&oacute; chất liệu mặt bếp bằng k&iacute;nh chịu lực, chịu nhiệt, độ bền cao, s&aacute;ng b&oacute;ng đem tới sự sang trọng, dễ d&agrave;ng vệ sinh sau khi sử dụng. B&ecirc;́p c&ograve;n c&oacute; c&oacute; c&ocirc;ng suất hoạt động l&ecirc;n tới 4400W đem lại khả năng nấu nướng nhanh, tiết kiệm thời gian v&agrave; c&ocirc;ng sức. B&ecirc;́p c&oacute; nhiều chế độ nấu nướng đa năng gi&uacute;p bạn thoảim&aacute;i tạo ra nhiều m&oacute;n ăn thơm ngon, hấp dẫn cho gia đ&igrave;nh. Ngo&agrave;i ra bếp c&ograve;n đượctrang bị kh&oacute;a an to&agrave;n trẻ em đảm bảo sự y&ecirc;n t&acirc;m, kh&ocirc;ng g&acirc;y hại cho trẻ. B&ecirc;́p c&oacute;chế độ tự động ngắt khi qu&aacute; n&oacute;ng gi&uacute;p bạn kh&ocirc;ng lo về c&aacute;c sự cố như ch&aacute;y, nổ...</p>\r\n	<p>\r\n		<strong>B&ecirc;́p đ&ocirc;i đi&ecirc;̣n từ -&nbsp; hồng ngoạiSHB9100</strong></p>\r\n	<p>\r\n		<strong><img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/bep-doi-dien-tu-hong-ngoai-sunhouse-shb9100-cs-4300w-4.jpg\" style=\"border:0px solid;vertical-align:top;width:284px;height:186px;\" />&nbsp;</strong></p>\r\n	<p>\r\n		B&ecirc;́p đ&ocirc;i Sunhouse SHB9100 thiết kếhiện đại với 2 l&ograve; nấu 1 từ v&agrave; 1 hồng ngoại ph&ugrave; hợp với mọi loại nồi nấu kh&aacute;c nhau trong từng nhu cầu nấu ăn kh&aacute;c nhau. B&ecirc;́p được trang bị mặt k&iacute;nh to&agrave;n phần cao cấp c&oacute; khả năng chịu nhiệt, chịu lực tốt gi&uacute;p tăng th&ecirc;m tuổi thọ cho bếp v&agrave; an to&agrave;n với người d&ugrave;ng. B&ecirc;́p đ&ocirc;i c&oacute; hệ thống ph&iacute;m bấm cảm ứng cho từng l&ograve; nấu kh&aacute;c nhau dễ d&agrave;ng sử dụng v&agrave; điều chỉnh,bộ điều khiển 2 v&ograve;ng tiết kiệm điện khisử dụng. Hiện tại bếp c&oacute; c&ocirc;ng suất ti&ecirc;u thụ 4300W tiết kiệm thời gian nấu ăn.V&agrave; kh&oacute;a trẻ em an to&agrave;n cho những gia đ&igrave;nh c&oacute; trẻ nhỏ kh&ocirc;ng lo trẻ động v&agrave;o bếp g&acirc;y mất an to&agrave;n. Chức năng hẹn giờ nấu th&ocirc;ng minh gi&uacute;p người sử dụng c&oacute; thể vừa nấu ăn, vừa c&oacute; thể l&agrave;m c&aacute;c c&ocirc;ng việc kh&aacute;c m&agrave; kh&ocirc;ng phỉa lo lắng về thức ăn nấu tr&ecirc;n bếp. B&ecirc;́p c&oacute; hệ thống cảm biến tự động ngắt khi qu&aacute; tải điện hay kh&ocirc;ng may xảy ra c&aacute;c hiện tượng kh&ocirc;ng mong muốn trong qu&aacute; tr&igrave;nh nấu ăn đảm bảo tuổi thọ cho bếp.</p>\r\n	<p>\r\n		<strong>B&ecirc;́p đ&ocirc;i h&ocirc;̀ng ngoại Sunhouse SHB9102MT</strong></p>\r\n	<p>\r\n		<strong><img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/bep-doi-hong-ngoai-sunhouse-shb9102mt-1.jpg\" style=\"border:0px solid;vertical-align:top;width:284px;height:186px;\" />&nbsp;</strong></p>\r\n	<p>\r\n		B&ecirc;́p đ&ocirc;i h&ocirc;̀ng ngoại Sunhouse SHB9102MT thiết kế hiện đại, sang trọng, chất liệu bền đẹp. C&oacute; 2 v&ugrave;ng nấu nướng gi&uacute;p c&aacute;c b&agrave; nội trợ c&oacute; thể chế biến nhiều m&oacute;n c&ugrave;ng một l&uacute;c. Bếp c&oacute; thiết kế mặt k&iacute;nh cao cấp c&oacute; khả năng chịu được t&aacute;c động của lực, chịu sốc nhiệt rất tốt. Mặt k&iacute;nh của bếp s&aacute;ng b&oacute;ng sang trọng, dễ d&agrave;ng vệ sinh. Bảng điều khiển sử dụng đơn giản với bảng điều khiển cảm ứng. Người sử dụng c&oacute; thể dễ d&agrave;ng chọn lựa chế độ nấu theo &yacute; muốn.Bếp c&ograve;n được trang bị nhiều chế độ nấu kh&aacute;c nhau gi&uacute;p nấu đượcnhiều m&oacute;n v&agrave; tiết kiệm nhiệt năng. Bếp đ&ocirc;i hồng ngoại c&oacute; thể sử dụng c&aacute;c loại xoong chảo bằng nhiều chất liệu như: nh&ocirc;m, hợp kim, inox, gốm, sứ, đất nung&hellip; để đun nấu rất tiện lợi.</p>\r\n	<p>\r\n		<em>Tr&ecirc;n đ&acirc;y l&agrave; ba model gi&aacute; c&oacute; tầm gi&aacute; vừa tiền. C&oacute; thể thay thế đun nấu cho bếp ga trong bếp. T&ugrave;y theo nhu cầu sử dụng thực tế m&agrave; c&aacute;c bạn chọn bếp c&oacute; chức năng cho ph&ugrave; hợp. Nếu bạn muốn đun nhanh th&igrave; n&ecirc;n mua hai bếp từ, nếu c&aacute;c bạn muốn đun tất cả c&aacute;c loại xong nồi th&igrave; sử dụng bếp hồng ngoại đ&ocirc;i. Muốn tận dụngưu điểm của hai loại bếp tr&ecirc;n ta chọn bếp hỗn hợp, kết hợp cả hai ưu điểm tr&ecirc;nc&aacute;c bạn chọn bếp một từ một hồng ngoại. Tr&ecirc;n đ&acirc;y l&agrave; một số gợi &yacute; cho c&aacute;c bạn khi chọn mua bếp điện với 3 mẫu cơ bản phổ th&ocirc;ng. Hi vọng qua b&agrave;i viết n&agrave;y c&aacute;c bạn sẽ hiểu hơn về t&iacute;nh năng, Cũng như trang bị cho m&igrave;nh được kiến thức khi ch&uacute;ng ta chuẩn bị mua bếp điện.</em></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 'tin_tuc_2.jpg', 1509775620, '0', 4),
(7, 'Lưu ý khi sử dụng và bảo quản lò vi sóng?', '', '<h1>\r\n	<strong style=\"font-size: 12px;\">&nbsp;</strong></h1>\r\n<h1>\r\n	<strong style=\"font-size: 12px;\">Chiếc l&ograve; vi s&oacute;ng đ&atilde; trở n&ecirc;n quen thuộc với gia đ&igrave;nh việt. Tuy nhi&ecirc;n việc sử dụng v&agrave; bảo quản chiếc l&ograve;vi s&oacute;ng th&igrave; kh&ocirc;ng phải ai cũng biết. Đ&ocirc;i khi việc chưa biết c&aacute;ch sử dụng hoặc chưa biết c&aacute;ch bảo quản sẽ dẫn đến giảm tuổi thọ l&ograve; vi s&oacute;ng v&agrave; c&oacute; nguy cơ mất an to&agrave;n. Vậy l&agrave;m như thế n&agrave;o mới đ&uacute;ng, l&agrave;m như thế n&agrave;o mới đem lại hiệu quả cao th&igrave; phải cần sự hiểu biết, sự t&igrave;m hiểu.Ch&uacute;ng ta h&atilde;y c&ugrave;ng t&igrave;m hiểu qua b&agrave;i viết dưới đ&acirc;y.</strong></h1>\r\n<div>\r\n	<p>\r\n		<strong>Lưu &yacute; khi sử dụng:</strong></p>\r\n	<p>\r\n		Sử dụng l&ograve; vi s&oacute;ng cần nhớ&nbsp; những điểm sau đ&acirc;y: Tuyệt đối kh&ocirc;ng cho đồ kim loại v&agrave;o l&ograve; vi s&oacute;ng. V&iacute; dụ như b&aacute;t, đĩa kim loại, b&aacute;t đĩa c&oacute; hoa văn bằng kim loại. Khi sử dụng ch&uacute;ng ta kh&ocirc;ng được đậy thức ăn k&iacute;n qu&aacute;. Nếu l&agrave; hộp đựng cần mở ra, hoặc trường hợp ta muốn hấp trứng, nướng trứng th&igrave; phải đục lỗ tr&ecirc;n quả trứng để tho&aacute;t hơi, hoặc đập trứng ra cho v&agrave;o b&aacute;t, sau đ&oacute; mới đem hấp để tr&aacute;nh hiện tượng mất an to&agrave;n khi sử dụng.</p>\r\n	<p>\r\n		<img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/lo-vi-song-electrolux-co-nuong-23l-800w-emm2318x-3.jpg\" style=\"border:0px solid;vertical-align:top;width:284px;height:186px;\" /></p>\r\n	<p>\r\n		<strong>Sử dụng đ&uacute;ng chức năng:</strong></p>\r\n	<p>\r\n		Khi sử dụng l&ograve; vi s&oacute;ng sẽ chia l&agrave;m ba loại: D&ograve;ng cơ, d&ograve;ng điện tử v&agrave; d&ograve;ng b&aacute;n điện tử. Việc sử dụng d&ograve;ng cơ th&igrave; rất đơn giản. Ch&uacute;ng ta chỉ cần vặn n&uacute;m c&ocirc;ng xuất v&agrave; n&uacute;m thời gian. Một số d&ograve;ng cơ c&ograve;n k&yacute; hiệu lu&ocirc;n số trọng lượng r&atilde; đ&ocirc;ng cạnh biểu tượng thời gian rất tiện lợi.Chỉ cần chọn đ&uacute;ng c&ocirc;ng xuất v&agrave; trọng lượng gi&atilde; đ&ocirc;ng l&agrave; c&oacute; thể thực hiện việc r&atilde; đ&ocirc;ng một c&aacute;ch nhanh ch&oacute;ng. D&ograve;ng điện tử th&igrave; kh&aacute;c, d&ograve;ng điện tử c&oacute; rất nhiều chứcnăng như r&atilde; đ&ocirc;ng tự động, nấu ăn tự động, nướng tự động. C&oacute; nhiều m&oacute;n ăn cho người việt.</p>\r\n	<p>\r\n		<strong>Tr&ecirc;n l&ograve; vi s&oacute;ng điện tử sẽ c&oacute; hai c&aacute;ch sử dụng:</strong>&nbsp;một l&agrave; d&ugrave;ng ph&iacute;m chọn chức năng lập tr&igrave;nh sẵn như nấu c&aacute;c m&oacute;n ăn,r&atilde; đ&ocirc;ng, nướng&hellip;, hai l&agrave; tự đặt c&ocirc;ng xuất v&agrave; thời gian bằng tay. Lưu &yacute; khi sử dụng hai loại n&agrave;y ch&uacute;ng ta n&ecirc;n sử dụng c&ocirc;ng xuất trung b&igrave;nh, nếu sử dụng c&ocirc;ng xuất qu&aacute; lớn thức ăn sẽ kh&ocirc;ng đều, nếu ta chọn c&ocirc;ng xuất lớn th&igrave; cần thường xuy&ecirc;n kiểm tra xem thức ăn đ&atilde; ch&iacute;n chưa, đảo đều thức ăn cho thức ăn ch&iacute;nh đều hơn. Cần lưu &yacute; đọc kỹ s&aacute;ch hướng dẫn sử dụng trước khi sử dụng để đảm bảo sử dụng đ&uacute;ng v&agrave; đủ c&ocirc;ng xuất, thời gian đun nấu. Nắm được c&aacute;c t&iacute;nh năng mới như quạt đối lưu, hấp bằng hơi nước si&ecirc;u nhiệt.</p>\r\n	<p>\r\n		<img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/lo-vi-song-sharp-co-co-nuong-20l-r-g221vn-w-1_(2).jpg\" style=\"border:0px solid;vertical-align:top;width:284px;height:186px;\" /></p>\r\n	<p>\r\n		<strong>Về việc bảo quản</strong></p>\r\n	<p>\r\n		Sau mỗi lần sử dụng, c&aacute;c bạn cần vệsinh. C&oacute; thể l&agrave;m theo c&aacute;ch n&agrave;y:</p>\r\n	<p>\r\n		Cho một th&igrave;a dấm v&agrave;o một nửa b&aacute;t nước, bật chế độ trung b&igrave;nh trong v&ograve;ng 5 ph&uacute;t. Nếu l&ograve; c&ocirc;ng xuất lớn th&igrave; n&ecirc;n đặt &iacute;t thời gan đi, ch&uacute;ng ta đặt khoảng 2 ph&uacute;t rồi quan s&aacute;t lượng hơi nước trong l&ograve; để điều chỉnh cho ph&ugrave; hợp. Dung dịch dấm trắng bốc hơi b&ecirc;n trong l&ograve; sẽ l&agrave;m bong c&aacute;c vết bẩn cứng đầu trong l&ograve;. Lấy t&ocirc; dấm ra rồi d&ugrave;ng rẻ vệ sinh l&ograve; một c&aacute;ch dễd&agrave;ng. Chiếc l&ograve; của bạn sẽ tr&aacute;nh được m&ugrave;i h&ocirc;i, vết bẩn cứng đầu b&ecirc;n trong l&ograve;.</p>\r\n	<p>\r\n		<strong>Về vị tr&iacute; đặt:</strong>&nbsp;Để l&ograve; được bền l&acirc;u, ch&uacute;ng ta n&ecirc;n đặt l&ograve; ở nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t. Nếu đặt trong tủ bếp th&igrave; phải c&oacute; kh&ocirc;ng gian cho l&ograve; vi s&oacute;ng tho&aacute;t hơi. Nhằm gi&uacute;p khi sử dụng đảm bảo an to&agrave;n, bền l&acirc;u. Kh&ocirc;ng đặt l&ograve; vi s&oacute;ngở tr&ecirc;n n&oacute;c tủ lạnh. V&igrave; khi sử dụng l&ograve; sẽ ph&aacute;t nhiệt l&agrave;m tủ lạnh bị ảnh hưởng bởi nhiệt độ l&ograve; vi s&oacute;ng.</p>\r\n	<p>\r\n		<em>Tr&ecirc;n đ&acirc;y l&agrave; một số lưu &yacute; khi sử dụng v&agrave; bảo quản. Người ta thường n&oacute;i,của bền tại người cũng c&oacute; phần đ&uacute;ng. Bởi chỉ c&oacute; phương ph&aacute;p sử dụng đ&uacute;ng, c&aacute;ch bảo quản đ&uacute;ng, chiếc l&ograve; vi s&oacute;ng mới sử dụng được bền l&acirc;u được.</em></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 'tin_tuc_3.jpg', 1509775668, '0', 16),
(8, 'Cách chọn mua các loại cân?', '', '<h1 c=\"\" ch=\"\" class=\"news-content\" color:=\"\" dejavu=\"\" div=\"\" font-size:=\"\" i=\"\" liberation=\"\" mua=\"\" n=\"\" outline:=\"\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Helvetica, Arial, \" zoom:=\"\">\r\n	&nbsp;</h1>\r\n<h1 c=\"\" ch=\"\" class=\"news-content\" color:=\"\" dejavu=\"\" div=\"\" font-size:=\"\" i=\"\" liberation=\"\" mua=\"\" n=\"\" outline:=\"\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Helvetica, Arial, \" zoom:=\"\">\r\n	<strong style=\"text-align: justify; color: rgb(34, 34, 34); font-size: 12px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\">Người ta n&oacute;i c&oacute; sức khỏe l&agrave; c&oacute; tất cả, việc theo d&otilde;i t&igrave;nh trạng sức khỏe v&agrave; giữ g&igrave;n sức khỏe l&agrave; việc đ&aacute;ng để ch&uacute;ng ta quan t&acirc;m. Khi sử dụng c&acirc;n sức khỏe, c&aacute;c bạn c&oacute; thể theo d&otilde;i trọng lượng của m&igrave;nh, đặc biệt những ai muốn tăng c&acirc;n, giảm c&acirc;n. Chiếc c&acirc;n hữu dụng l&agrave; vậy, nhưng kh&ocirc;ng phải ai cũng biết c&aacute;c sử dụng v&agrave; chọn lựa c&acirc;n.</span></strong></h1>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: center;\">\r\n	<strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/135044_can-suc-khoe-korihome-kr542dbs-1.jpg\" style=\"margin: 0px; padding: 0px; border: 0px solid; vertical-align: top; max-width: 100%; width: 284px; height: 186px;\" />&nbsp;</span></strong></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">C&acirc;n tr&ecirc;n thị trường sẽ chia l&agrave;m hai loại: một l&agrave; d&ograve;ng cơ, hai l&agrave; d&ograve;ng điện tử:</strong>&nbsp;Đối với d&ograve;ng c&acirc;n điện tử sẽ c&oacute; gi&aacute; th&agrave;nh nhỉnh hơn d&ograve;ng c&acirc;n cơ. D&ograve;ng cơ: ưu điểm của d&ograve;ng c&acirc;n cơ l&agrave; dễ sử dụng, kh&ocirc;ng cần d&ugrave;ng pin, gi&aacute; th&agrave;nh rẻ. Nhược điểm của d&ograve;ng c&acirc;n cơ l&agrave; kiểu d&aacute;ng th&ocirc;ng thường, kh&ocirc;ng c&oacute; nhiều sản phẩm, mẫu m&atilde; đẹp.Thứ hai l&agrave; d&ograve;ng c&acirc;n điện tử: ưu điểm của d&ograve;ng c&acirc;n điện tử l&agrave; ch&iacute;nh x&aacute;c, kiểu d&aacute;ng hiện đại sang trọng. C&oacute; nhiều mẫu m&atilde; đẹp, trang tr&iacute; nhiều hoa văn họa tiết sinh động. Nhược điểm l&agrave; phải d&ugrave;ng pin, pin tiểu th&igrave; rất dễ thay, pin mỏng giống pin của đồng hồ, m&aacute;y t&iacute;nh n&ecirc;n cần phải ra qu&aacute;n thay hoặc đi t&igrave;m mua đ&uacute;ng loại pin để thay.</span></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px;\">\r\n	&nbsp;</p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Về ph&acirc;n kh&uacute;c gi&aacute;:</strong>&nbsp;Ph&acirc;n kh&uacute;c gi&aacute; rẻ thường sẽ từ c&oacute; mức gi&aacute; dưới 200. 000đ, ph&acirc;n kh&uacute;c gi&aacute; trung b&igrave;nh sẽ c&oacute; gi&aacute; từ 200.000 &ndash; 500.000đ, ph&acirc;n kh&uacute;c gi&aacute; cao c&oacute; gi&aacute; tr&ecirc;n 500.000đ. T&ugrave;y theo nhu cầu sử dụng, t&ugrave;y theo tầm tiền bạn muốn đầu tư c&acirc;n th&igrave; bạn c&oacute; thể chọn cho m&igrave;nh sản phẩm vừa t&uacute;i tiền của m&igrave;nh.</span></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Về thời gian bảo h&agrave;nh:&nbsp;</strong>th&ocirc;ng thường c&aacute;c h&atilde;ng sẽ được bảo h&agrave;nh một năm kể từ ng&agrave;y mua, chỉ c&oacute; một v&agrave;i h&atilde;ng rất &iacute;t bảo h&agrave;nh như korihome sẽ được bảo h&agrave;nh hai năm.</span></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Về thương hiệu:</strong>&nbsp;thương hiệu tr&ecirc;n thị trường c&oacute; thể kể đến CAMRY, KORIHOME, KANGAROO, TIROSS&hellip; Khi c&aacute;c bạn chọn những d&ograve;ng c&acirc;n c&oacute; thương hiệu ch&uacute;ng ta sẽ rất y&ecirc;n t&acirc;m về chất lượng sản phẩm.</span></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Về trọng lượng c&acirc;n được:&nbsp;</strong>đa phần c&aacute;c c&acirc;n sức khỏe đang c&oacute; tr&ecirc;n thị trường c&oacute; trọng lượng c&acirc;n khoảng 150KG, c&aacute; biệt c&oacute; những c&acirc;n được l&ecirc;n đến 300KG. Với thể trạng của người việt nam th&igrave; trọng lượng th&ocirc;ng thường đều dưới 150 KG n&ecirc;n gần như rất &iacute;t người chạm được mức n&agrave;y, vấn đề trọng lượng c&acirc;n hầu như c&aacute;c bạn sẽ đảm bảo được hết.</span></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Về độ sai số:&nbsp;</strong>Nếu c&ugrave;ng một mức gi&aacute; bạn n&ecirc;n chọn c&aacute;i n&agrave;o c&oacute; sai số nhỏ nhất. C&aacute;c bạn c&oacute; thể xem chi tiết tại vỏ hộp hoặc s&aacute;ch hướng dẫn.</span></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Về m&agrave;n h&igrave;nh hiển thị(đối với d&ograve;ng c&acirc;n điện tử):</strong>&nbsp;M&agrave;n h&igrave;nh hiển thị của c&acirc;n c&agrave;ng lớn, c&agrave;ng r&otilde; r&agrave;ng c&agrave;ng to c&agrave;ng tốt. C&agrave;ng hiển thị được nhiều th&ocirc;ng tin c&agrave;ng tốt. V&agrave; những th&ocirc;ng tin n&agrave;y phải r&otilde; r&agrave;ng, dễ đọc.</span></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Về thiết kế:&nbsp;</strong>Khi đi chọn mua c&acirc;n bạn cần quan s&aacute;t kỹ. Thiết kế của c&acirc;n cần c&oacute; bề mặt lớn, khung c&acirc;n chắc chắn. Chắc chắn bạn sẽ th&iacute;ch khi đứng tr&ecirc;n một chiếc c&acirc;n c&oacute; bề mặt lớn, nếu đứng tr&ecirc;n một chiếc c&acirc;n qu&aacute; nhỏ, m&agrave;n h&igrave;nh của c&acirc;n sẽ dễ bị che khuất, kh&oacute; nh&igrave;n thấy thực tế c&acirc;n qu&aacute; nhỏ sẽ l&agrave;m ch&uacute;ng ta cảm thấy m&igrave;nh đang tăng c&acirc;n , hoặc bạn sẽ cảm thấy chiếc c&acirc;n rất yếu ớt. Ch&iacute;nh v&igrave; vậy, ch&uacute;ng ta n&ecirc;n chọn một chiếc c&acirc;n c&oacute; bề mặt rộng.</span></p>\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-padding-start: 0px; text-rendering: geometricPrecision; line-height: 25px; text-align: justify;\">\r\n	<em style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: arial; font-size: 13px;\">Tr&ecirc;n đ&acirc;y l&agrave; một số ti&ecirc;u ch&iacute; để ch&uacute;ng ta c&oacute; thể chọn lựa chiếc c&acirc;n ưng &yacute; cho gia đ&igrave;nh m&igrave;nh. Khi đi mua c&acirc;n cũng giống như l&agrave; mua bất kỳ một sản phẩm n&agrave;o cũng vậy, bạn cần quan s&aacute;t kỹ, đưa ra c&aacute;c ti&ecirc;u ch&iacute;, v&agrave; xem x&eacute;t xem liệu chiếc c&acirc;n của m&igrave;nh c&oacute; ph&ugrave; hợp với những ti&ecirc;u ch&iacute; đ&oacute; kh&ocirc;ng. Khi thỏa m&atilde;n c&aacute;c ti&ecirc;u ch&iacute; của bạn th&igrave; đ&oacute; mới l&agrave; chiếc c&acirc;n m&agrave; bạn đang mong muốn mua. Ch&uacute;c c&aacute;c bạn t&igrave;m được chiếc c&acirc;n ưng &yacute; nhất.</span></em></p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 'tin_tuc_4.jpg', 1509775587, '0', 12),
(9, 'Hướng dẫn chọn mua máy hút mùi', '', '<h1>\r\n	<strong style=\"font-size: 12px;\">Chiếc m&aacute;y h&uacute;t m&ugrave;i đ&atilde; trở n&ecirc;n qu&aacute;quen thuộc trong căn bếp của mỗi gia đ&igrave;nh.Chiếc h&uacute;t m&ugrave;i kh&ocirc;ng chỉ khử m&ugrave;i, hạn chế m&ugrave;i trong thức ăn m&agrave; c&ograve;n l&agrave;m vậttrang tr&iacute; cho gia đ&igrave;nh, t&ocirc;n l&ecirc;n vẻ đẹp cho căn bếp của bạn. Cuộc sống c&agrave;ng hiệnđại, c&agrave;ng c&oacute; nhiều mẫu m&atilde;, model thiết kế mới, kiểu d&aacute;ng cũng như t&iacute;nh năng mớiđể ch&uacute;ng ta c&oacute; thể lựa chọn cho căn bếp của m&igrave;nh. Dưới đ&acirc;y l&agrave; một số chia sẻtrước khi bạn chọn cho m&igrave;nh một chiếc m&aacute;y h&uacute;t m&ugrave;i cho gia đ&igrave;nh.</strong></h1>\r\n<div>\r\n	<p>\r\n		<strong><img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/may-hut-mui-sunhouseapb6680-3.jpg\" style=\"border:0px solid;vertical-align:top;width:284px;height:186px;\" />&nbsp;</strong></p>\r\n	<p>\r\n		Trước khi lựa chọn chiếc m&aacute;y h&uacute;tm&ugrave;i cho gia đ&igrave;nh, c&aacute;c bạn cần quan t&acirc;m v&agrave; x&aacute;c định những yếu tố sau:</p>\r\n	<p>\r\n		<strong>Ph&acirc;n loại h&uacute;t m&ugrave;i:</strong></p>\r\n	<p>\r\n		h&uacute;t m&ugrave;i sẽ c&oacute; hai loại, một l&agrave; kiểucổ điển hai l&agrave; d&ograve;ng k&iacute;nh cong. Kiểu cổ điển l&agrave; kiểu d&aacute;ng mỏng. Chiều rộng khoảng70 &ndash; 90 cm, cao khoảng 50 cm kiểu d&aacute;ng, thiết kế cổ điển. Những d&ograve;ng kiểu mớil&agrave; h&uacute;t m&ugrave;i k&iacute;nh cong, kiểu k&iacute;nh cong c&oacute; c&ocirc;ng xuất h&uacute;t lớn h&igrave;nh ống kh&oacute;i, kiểud&aacute;ng đẹp, sang trọng, lịch sự.</p>\r\n	<p>\r\n		<strong>Quan t&acirc;m về ph&acirc;n kh&uacute;c gi&aacute;:</strong></p>\r\n	<p>\r\n		h&uacute;t m&ugrave;i c&oacute; rất nhiều mức gi&aacute; kh&aacute;cnhau, ta c&oacute; thể chia ra l&agrave;m 3 ph&acirc;n kh&uacute;c gi&aacute; ch&iacute;nh: Ph&acirc;n kh&uacute;c gi&aacute; thấp: Ph&acirc;nkh&uacute;c gi&aacute; thấp sẽ c&oacute; gi&aacute; thấp hơn hoặc bằng 2 triệu đồng. Ph&acirc;n kh&uacute;c gi&aacute; trungb&igrave;nh: ph&acirc;n kh&uacute;c gi&aacute; trung b&igrave;nh sẽ c&oacute; mức gi&aacute; từ 2 &ndash; 4 triệu đồng, ph&acirc;n kh&uacute;c gi&aacute;cao sẽ c&oacute; gi&aacute; tr&ecirc;n 4 triệu đồng. Ở những ph&acirc;n kh&uacute;c gi&aacute; cao hơn, sản phẩm sẽ c&oacute;th&ecirc;m nhiều t&iacute;nh năng như bảng điều khiển cảm ứng, chất liệu cao cấp, c&ocirc;ng xuấth&uacute;t lớn.</p>\r\n	<p>\r\n		<strong>Quan t&acirc;m đến c&ocirc;ng xuất h&uacute;t:</strong></p>\r\n	<p>\r\n		C&ocirc;ng xuất trong m&aacute;y h&uacute;t m&ugrave;i sẽ c&oacute;c&ocirc;ng xuất điện v&agrave; c&ocirc;ng xuất h&uacute;t. C&ocirc;ng xuất điện l&agrave; c&ocirc;ng xuất ti&ecirc;u thụ bao nhi&ecirc;uwat điện tr&ecirc;n giờ, c&ocirc;ng xuất h&uacute;t l&agrave; lực h&uacute;t thực tế bao nhi&ecirc;u m3/h. Th&ocirc;ng thườngc&aacute;c m&aacute;y h&uacute;t m&ugrave;i kiểu cổ điển sẽ c&oacute; c&ocirc;ng xuất h&uacute;t từ 700- 900 m3/h, c&ograve;n m&aacute;y h&uacute;tm&ugrave;i k&iacute;nh cong sẽ c&oacute; c&ocirc;ng xuất từ 900 &ndash; 1100 m3/h. C&aacute;c bạn c&oacute; thể xem chi tiếttr&ecirc;n m&aacute;y hoặc s&aacute;ch hướng dẫn để nắm được th&ocirc;ng tin n&agrave;y.</p>\r\n	<p>\r\n		<strong>Quan t&acirc;m đến k&iacute;ch thước, vị tr&iacute; lắpđặt tương th&iacute;ch:</strong></p>\r\n	<p>\r\n		<strong><img alt=\"\" src=\"http://img.trananh.vn/trananh/2017/09/18/may-hut-mui-sunhouseapb6680-4.jpg\" style=\"border:0px solid;vertical-align:top;width:284px;height:186px;\" />&nbsp;</strong></p>\r\n	<p>\r\n		Trước khi mua h&uacute;t m&ugrave;i bạn cần xemx&eacute;t c&oacute; cần quan s&aacute;t k&iacute;ch thước kh&ocirc;ng. Nếu ch&uacute;ng ta c&oacute; kh&ocirc;ng gian lắp đặt th&igrave;kh&ocirc;ng cần lo lắng đặc điểm n&agrave;y, nhưng th&ocirc;ng thường c&aacute;c gia đ&igrave;nh ch&uacute;ng ta sẽ c&oacute;thể lắp trong tủ bếp. Vậy cần đo đạt k&iacute;ch thước để chờ sẵn của tủ bếp để c&oacute; sựlựa chọn model n&agrave;o cho ph&ugrave; hợp.</p>\r\n	<p>\r\n		<em>Tr&ecirc;n đ&acirc;y l&agrave; một số đặc điểm cầnlưu &yacute; khi chọn mua m&aacute;y h&uacute;t m&ugrave;i. C&aacute;c bạn nhớ c&acirc;n nhắc kỹ trước khi mua để đảm bảoviệc ph&ugrave; hợp nhất với nhu cần của gia đ&igrave;nh. Đặc biệt l&agrave; cần đo đạt kỹ k&iacute;ch thướch&uacute;t m&ugrave;i trước khi lắp đặt. C&oacute; như vậy chiếc m&aacute;y h&uacute;t m&ugrave;i sẽ vừa đảm bảo yếu tốthẩm mỹ, vừa đảm bảo yếu tố kỹ thuật khi lắp đặt h&uacute;t m&ugrave;i.</em></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 'tin_tuc_5.jpg', 1509775551, '0', 8);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `transaction_id` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `data` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`transaction_id`, `id`, `product_id`, `qty`, `amount`, `data`, `status`) VALUES
(7, 6, 2, 1, '4000000.0000', '', 1),
(8, 7, 2, 1, '4000000.0000', '', 0),
(9, 8, 8, 1, '10000000.0000', '', 0),
(10, 9, 8, 1, '10000000.0000', '', 0),
(11, 10, 8, 1, '10000000.0000', '', 2),
(12, 11, 8, 1, '10000000.0000', '', 0),
(13, 12, 8, 2, '20000000.0000', '', 0),
(14, 13, 8, 1, '10000000.0000', '', 1),
(15, 14, 3, 1, '5000000.0000', '', 0),
(16, 15, 3, 1, '5000000.0000', '', 0),
(17, 16, 3, 1, '5000000.0000', '', 0),
(18, 17, 3, 1, '5000000.0000', '', 0),
(19, 18, 3, 1, '5000000.0000', '', 0),
(20, 19, 3, 1, '5000000.0000', '', 0),
(21, 20, 8, 1, '10000000.0000', '', 0),
(22, 21, 8, 2, '19000000.0000', '', 2),
(23, 22, 19, 10, '159000000.0000', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` int(255) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `warranty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(255) NOT NULL,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL,
  `rate_count` int(255) NOT NULL,
  `gifts` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `maker_id`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`, `meta_key`, `site_title`, `warranty`, `total`, `buyed`, `rate_total`, `rate_count`, `gifts`, `video`, `meta_desc`, `feature`) VALUES
(2, 15, 'Tivi LG 4000', 0, '4000000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 200000, 'product2.jpg', '', 0, 14, '', '', '12 tháng', 0, 0, 4, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(3, 13, 'Tivi Akai', 0, '5000000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product1.jpg', '', 0, 8, '', '', '12 tháng', 0, 0, 4, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(4, 16, 'Tivi Panasonic', 0, '6000000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product3.jpg', '', 0, 4, '', '', '12 tháng', 0, 0, 12, 3, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(5, 17, 'Tivi Samsung', 0, '5500000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product4.jpg', '', 0, 4, '', '', '12 tháng', 0, 0, 0, 0, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(6, 15, 'Tivi LG 5000', 0, '5000000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product5.jpg', '', 0, 3, '', '', '12 tháng', 0, 0, 4, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(7, 18, 'Tivi Toshiba', 0, '6200000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 400000, 'product6.jpg', '', 0, 76, '', '', '12 tháng', 0, 0, 7, 2, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(8, 14, 'Tivi JVC 500', 0, '10000000.0000', '<p>\r\n	B&agrave;i viết cho sản phẩm n&agrave;y đang được cập nhật ...</p>\r\n', 500000, 'product7.jpg', '[\"cung-ngam-bo-anh-hoa-cuc-tuyet-dep-va-y-nghia-hinh-91.jpg\"]', 0, 135, '', '', '12 tháng', 0, 1, 17, 5, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(9, 15, 'Tivi LG 520', 0, '5400000.0000', '<p>\r\n	B&agrave;i viết cho sản phẩm n&agrave;y đang được cập nhật ...</p>\r\n', 0, 'product13.jpg', 'a:0:{}', 0, 47, '', '', '12 tháng', 0, 0, 8, 2, '0', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(19, 17, 'Smart Tivi Samsung 4K 43 inch', 0, '15900000.0000', '', 0, 'tivi-samsung-ua43mu6400-1-550x340.png', '[\"tivi-samsung-55-inch-ua55mu6400-12.jpg\"]', 1507952847, 28, '', '', '', 0, 0, 4, 1, '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `image_name`, `image_link`, `link`, `info`, `sort_order`) VALUES
(7, 'Slide-01', '', 'slide1.png', 'https://www.trananh.vn/', '', 1),
(8, 'Slide-02', '', 'slide2.png', 'https://www.trananh.vn/', '', 2),
(9, 'Slide-03', '', 'slide3.png', 'https://www.trananh.vn/', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `name`, `yahoo`, `gmail`, `skype`, `phone`, `sort_order`) VALUES
(1, 'Nguyễn Đình Thành', 'ThanhND_95', 'nguyendinhthanh128@gmail.com', 'A23818', '0984095418', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin NOT NULL,
  `security` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `type`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `amount`, `payment`, `payment_info`, `message`, `security`, `created`) VALUES
(7, 0, 1, 15, 'Nguyễn Đình Thành', 'dr95who@gmail.com', '0984095418', '4000000.0000', 'nganluong', '', '', '', 1405548000),
(8, 0, 0, 15, 'Nguyễn Đình Thành', 'dr995who@gmail.com', '0984095418', '4000000.0000', 'nganluong', '', '', '', 1407917785),
(9, 0, 0, 0, 'Nguyễn Đình Thành', 'nguyendinhthanh128@gmail.com', '0984095418', '10000000.0000', 'nganluong', '', '111', '', 1407918071),
(10, 0, 0, 0, 'Nguyễn Đình Thành', 'nguyendinhthanh128@gmail.com', '0984095418', '10000000.0000', 'nganluong', '', '111111', '', 1407918235),
(11, 0, 2, 0, 'Nguyễn Đình Thành', 'nguyendinhthanh128@gmail.com', '111111', '10000000.0000', 'nganluong', '', '111', '', 1407918299),
(23, 0, 0, 22, 'Nguyễn Đình Thành', 'nguyendinhthanh128@gmail.com', '0984095418', '159000000.0000', 'offline', '', 'nhan tai nha', '', 1509007554),
(22, 0, 2, 21, 'Nguyễn Đình Thành', 'abc@gmail.com', '0984095418', '19000000.0000', 'offline', '', 'Chuyển tới ABC', '', 1507005568);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `created`) VALUES
(22, 'Nguyễn Đình Thành', 'nguyendinhthanh128@gmail.com', '0984095418', 'Hoang Mai - Ha Noi', '96e79218965eb72c92a549dd5a330112', 1506926150),
(21, 'Nguyễn Đình Thành', 'abc@gmail.com', '0984095418', 'Hà Nội', '96e79218965eb72c92a549dd5a330112', 1505959309);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(255) NOT NULL,
  `count_view` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `feature` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `view` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `count_view`, `name`, `images`, `intro`, `link`, `feature`, `created`, `view`) VALUES
(10, 0, 'Chuyện Tình Trên Facebook - Hồ Việt Trung [Official]', '1386147113843_video.jpg', '', 'http://www.youtube.com/watch?v=3ZlLyU2L4P0', 1386146497, 2013, 4),
(8, 0, 'Chỉ còn trong mơ & Phải không em', '1386147092891_video.jpg', '', 'http://www.youtube.com/watch?v=RfNJ43HBzOM', 1386146505, 2013, 6),
(7, 0, '[HD] Anh Xin Lỗi - Minh Vương M4U', '1386147058495_video.jpg', '', 'http://www.youtube.com/watch?v=OCZ4D9qT8lI', 1386146502, 2013, 17),
(16, 0, 'Nhốt Em Vào Tim - Hồ Việt Trung [Official]', '1386147135763_video.jpg', '', 'http://www.youtube.com/watch?v=fkDSnN_I_Ig', 0, 1386147135, 0),
(17, 0, 'Chỉ Yêu Mình Em - Châu Khải Phong [Official]', '1386147154302_video.jpg', '', 'http://www.youtube.com/watch?v=l2MydtlKra8', 0, 1386147154, 4),
(18, 0, 'Số Nghèo - Châu Khải Phong [Official]', '138614718279_video.jpg', '', 'http://www.youtube.com/watch?v=LJRvv8U6Dos', 1386147576, 1386147182, 1),
(19, 0, 'Trò Chơi Đắng Cay - Châu Khải Phong [Official]', '138614721063_video.jpg', '', 'http://www.youtube.com/watch?v=3J8d8-YgOlU', 1386147575, 1386147210, 0),
(20, 0, 'Sầu Tím Thiệp Hồng - Quang Lê & Lệ Quyên ( Liveshow Quang Lê )', '1386147271236_video.jpg', '', 'http://www.youtube.com/watch?v=Kd5OrV4Y_bs', 0, 1386147271, 0),
(21, 0, 'Gõ cửa trái tim Quang Lê - Mai Thiên Vân', '1386147292776_video.jpg', '', 'http://www.youtube.com/watch?v=9oVxDQsgXIQ', 1386147577, 1386147292, 0),
(22, 0, 'Cô Hàng Xóm - Quang Lê', '1386147310490_video.jpg', '', 'http://www.youtube.com/watch?v=nA9ub4zlel8', 0, 1386147310, 0),
(23, 0, 'Lam Truong - Mai Mai', '1386147353743_video.jpg', '', 'http://www.youtube.com/watch?v=o1igATj9lMw', 0, 1386147353, 0),
(24, 0, 'Lỡ Yêu Em Rồi - Bằng Kiều', '1386147364632_video.jpg', '', 'http://www.youtube.com/watch?v=HYi-5dM_c34', 0, 1386147364, 0),
(25, 0, 'Bản Tình Cuối - Bằng Kiều', '1386147389790_video.jpg', '', 'http://www.youtube.com/watch?v=pNr7jEQ8LT8', 0, 1386147389, 2),
(26, 1, 'Phút cuối - Bằng Kiều', '1386150063515_video.jpg', '', 'http://www.youtube.com/watch?v=sA_gM6_eqXU', 0, 1386150063, 0),
(27, 0, 'Giấc Mơ (Live) - Bùi Anh Tuấn ft Yanbi', '1386150103768_video.jpg', '', 'http://www.youtube.com/watch?v=XLr463dUNgQ', 0, 1386150103, 0),
(28, 4, 'Anh Nhớ Em - Tuấn Hưng', '1386150121482_video.jpg', '', 'http://www.youtube.com/watch?v=ewNQtt1RiSk', 0, 1386150121, 0),
(29, 0, 'LE QUYEN & TUAN HUNG - Nhu Giac Chiem Bao', '1386150141608_video.jpg', '', 'http://www.youtube.com/watch?v=DaMARvh0kms', 0, 1386150141, 0),
(30, 10, 'Dĩ Vãng Cuộc Tình - Duy Mạnh ft Tuấn Hưng', '140905101897_video.jpg', '', 'http://www.youtube.com/watch?v=g8I-LoBIFgQ', 0, 1409051018, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_static`
--
ALTER TABLE `content_static`
  ADD PRIMARY KEY (`id`,`key`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `info` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `maker`
--
ALTER TABLE `maker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `product` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `content_static`
--
ALTER TABLE `content_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `maker`
--
ALTER TABLE `maker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
