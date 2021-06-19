-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2021 lúc 03:53 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php_seafood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `displayhomepage` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `displayhomepage`, `photo`) VALUES
(5, 0, 'Bào ngư', 0, '1623031288_s2.png'),
(6, 0, 'Tôm ', 0, '1623031272_s3.png'),
(7, 0, 'Mực ', 0, '1623031254_s4.png'),
(8, 0, 'Cá', 0, '1623031232_s5.png'),
(10, 0, 'Cua - Nghẹ', 0, '1623030741_s6.png'),
(11, 0, 'Sứa', 0, '1623030725_s7.png'),
(12, 0, 'Hải sản đóng hộp - chế biến', 0, '1623030710_s8.png'),
(13, 0, 'Hải sản khô', 0, '1623030692_s8.png'),
(14, 0, 'Sản phẩm khác', 0, '1623030602_s8.png'),
(16, 8, 'Cá ngừ đại dương', 0, ''),
(17, 8, 'Cá hồi', 0, ''),
(24, 10, 'Cua', 0, ''),
(25, 10, 'Nghẹ', 0, ''),
(26, 0, 'Ngao - Sò - ỐC', 0, '1623033569_s1.png'),
(27, 26, 'Ngao', 0, ''),
(28, 26, 'Sò', 0, ''),
(29, 26, 'Ốc', 0, ''),
(30, 26, 'Hàu', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`) VALUES
(1, 'Nguyễn Văn m', 'nvm@gmail.com', 'Km10-Nguyễn Trãi -Hà Đông-Hà Nội', '0964478061', '202cb962ac59075b964b07152d234b70'),
(2, 'Nguyễn Văn A', 'nva@gmail.com', 'Km10-Nguyễn Trãi -Hà Đông-Hà Nội', '0964478061', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `descriptionsnews` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL,
  `time` date NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `descriptionsnews`, `content`, `hot`, `time`, `photo`) VALUES
(2, 'Cá Hồi nướng giấy bạc', '<p>M&oacute;n c&aacute; hồi nướng giấy bạc rất đơn giản v&igrave; thế c&aacute; giữ được vị ngon tự nhi&ecirc;n kết hợp với rau củ thật hấp dẫn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Nước sốt mật ong:</p>\r\n\r\n<p>1/3 ch&eacute;n nước tương</p>\r\n\r\n<p>5 muỗng canh nước</p>\r\n\r\n<p>1/4 ch&eacute;n mật ong</p>\r\n\r\n<p>1/2 muỗng canh giấm gao</p>\r\n\r\n<p>3 t&eacute;p tỏi, băm nhỏ</p>\r\n\r\n<p>1 muỗng canh gừng băm nhỏ</p>\r\n\r\n<p>1 muỗng c&agrave; ph&ecirc; dầu me</p>\r\n\r\n<p>1/2 muỗng c&agrave; ph&ecirc; bột bắp</p>\r\n\r\n<p>C&aacute; hồi v&agrave; rau xanh:</p>\r\n\r\n<p>500 gram phil&ecirc; c&aacute; hồi</p>\r\n\r\n<p>300 gram b&ocirc;ng cải xanh</p>\r\n\r\n<p>1/2 ch&eacute;n c&agrave; rốt th&aacute;i mỏng</p>\r\n\r\n<p>1/2 muỗng canh dầu &ocirc; liu</p>\r\n\r\n<p>Muối v&agrave; hạt ti&ecirc;u đen mới xay</p>\r\n\r\n<p>2 củ h&agrave;nh t&acirc;y xanh, xắt nhỏ</p>\r\n\r\n<p>Hạt vừng, để trang tr&iacute;</p>\r\n\r\n<p><strong>Bước 1</strong></p>\r\n\r\n<p>Cắt 4 tấm l&aacute; nh&ocirc;m d&agrave;i h&igrave;nh chữ nhật khoảng 15-20 cm.</p>\r\n\r\n<p>Cho b&ocirc;ng cải xanh v&agrave; c&agrave; rốt xếp đều xen kẽ nhau l&ecirc;n giữa giấy bạc.</p>\r\n\r\n<p>Rồi để miếng c&aacute; hồi l&ecirc;n tr&ecirc;n</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_ca hoi nuong giay bac 01\" src=\"http://file.hstatic.net/1000181509/file/clip-image003_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_cá hồi nướng giấy bạc 01\" /></p>\r\n\r\n<p><em>(Ảnh: afamily)</em>.</p>\r\n\r\n<p><strong>Bước 2</strong></p>\r\n\r\n<p>Cho 1/4 ch&eacute;n hỗn hợp nước sốt l&ecirc;n c&aacute; hồi rồi lật miếng c&aacute; lại, tiếp tục cho nước sốt l&ecirc;n tr&ecirc;n.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_ca hoi nuong giay bac 02\" src=\"http://file.hstatic.net/1000181509/file/clip-image004_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_cá hồi nướng giấy bạc 02\" /></p>\r\n\r\n<p><em>(Ảnh: afamily)</em>.</p>\r\n\r\n<p><strong>Bước 3</strong></p>\r\n\r\n<p>Sau đ&oacute; cẩn thận g&oacute;i giấy k&iacute;n bạc lại, bao bọc c&aacute;. Lưu &yacute; l&agrave; kh&ocirc;ng g&oacute;i qu&aacute; chặt để hơi n&oacute;ng lưu chuyển ch&iacute;n đều c&aacute; v&agrave; rau. Cho g&oacute;i c&aacute; v&agrave;o l&ograve; nướng khoảng 25 ph&uacute;t ở nhiệt độ 200 độ C l&agrave; c&aacute; rau đều ch&iacute;n.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_ca hoi nuong giay bac 03\" src=\"http://file.hstatic.net/1000181509/file/clip-image005_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_cá hồi nướng giấy bạc 03\" /></p>\r\n\r\n<p><em>(Ảnh: afamily)</em>.</p>\r\n\r\n<p><strong>Bước 4</strong></p>\r\n\r\n<p>Lấy c&aacute; hồi ra, rắc th&ecirc;m ch&uacute;t vừng trắng v&agrave; h&agrave;nh l&aacute; l&ecirc;n. D&ugrave;ng n&oacute;ng.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_ca hoi nuong giay bac 04\" src=\"http://file.hstatic.net/1000181509/file/clip-image004_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_cá hồi nướng giấy bạc 04\" /></p>\r\n\r\n<p><em>(Ảnh: afamily)</em>.</p>\r\n\r\n<p><strong>L&agrave;m nước sốt:</strong>&nbsp;Trong một c&aacute;i chảo nhỏ trộn c&ugrave;ng nước tương, 3 muỗng canh nước, mật ong, dấm gạo, tỏi, gừng v&agrave; dầu vừng. Đun s&ocirc;i tr&ecirc;n lửa vừa. Pha bột bắp với nước rồi đổ v&agrave;o hỗn hợp nước sốt, khuấy li&ecirc;n tục để nước sốt s&aacute;nh lại rồi tắt bếp. Để nước sốt nguội khoảng 5 - 10 ph&uacute;t.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_ca hoi nuong giay bac 05\" src=\"http://file.hstatic.net/1000181509/file/teriyaki-salmon-and-veggies-in-foil-srgb-1486492243826_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_cá hồi nướng giấy bạc 05\" /></p>\r\n\r\n<p><em>(Ảnh: afamily)</em>.</p>\r\n\r\n<p>Ăn nhiều thực phẩm gi&agrave;u chất b&eacute;o như mỡ động vật, sẽ kh&ocirc;ng c&oacute; lợi cho sức khỏe. Trong c&aacute; hồi c&oacute; chứa rất &iacute;t chất b&eacute;o dạng n&agrave;y, gi&agrave;u axit b&eacute;o omega-3 rất tốt cho qu&aacute; tr&igrave;nh ph&aacute;t triển n&atilde;o bộ. Hơn nữa, ở c&aacute; hồi c&ograve;n c&oacute; nhiều c&aacute;c chất dinh dưỡng cần thiết kh&aacute;c gi&uacute;p tăng cường sức khỏe to&agrave;n diện cho cơ thể.</p>\r\n\r\n<p>Theo kết quả nghi&ecirc;n cứu của c&aacute;c chuy&ecirc;n gia, c&aacute; hồi c&oacute; những lợi &iacute;ch sau: duy tr&igrave; sức khỏe cho n&atilde;o bộ; gi&uacute;p mắt s&aacute;ng hơn; hạn chế huyết &aacute;p cao; ngăn ngừa bệnh tim; chăm s&oacute;c da v&agrave; t&oacute;c; bảo vệ ti&ecirc;u h&oacute;a v&agrave; ngăn ngừa ung thư.</p>\r\n', 1, '2021-01-22', '1622857345_post-content-img2.jpg'),
(5, 'Canh Rong Biển Thịt Bò', '<p>M&oacute;n Canh rong biển thịt B&ograve; l&agrave; một m&oacute;n canh bỗ dưỡng v&agrave; dễ thực hiện</p>\r\n', '<p><strong>Nguy&ecirc;n liệu:</strong><br />\r\n10 l&aacute; rong biển kh&ocirc;<br />\r\n300g thịt b&ograve;<br />\r\n15ml dầu m&egrave;<br />\r\n30ml x&igrave; dầu<br />\r\n5 t&eacute;p tỏi băm<br />\r\nGia vị: muối, ti&ecirc;u, bột ngọt v&agrave; dầu m&egrave;</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong><br />\r\n<strong>Bước 1:</strong>&nbsp;Cho tất cả rong biển v&agrave;o ng&acirc;m trong nước. Sau khoảng 15 ph&uacute;t, vớt ra cắt kh&uacute;c d&agrave;i.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Ướp thịt b&ograve; với một muỗng c&agrave; ph&ecirc; c&aacute;c gia vị: x&igrave; dầu, dầu m&egrave;, muối v&agrave; bột ngọt trong khoảng 15 ph&uacute;t.</p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Phi thơm tỏi v&agrave; tr&uacute;t thịt b&ograve; v&agrave;o đảo nhanh. Sau đ&oacute;, tiếp tục cho rong biển v&agrave;o đảo đều khoảng 3 ph&uacute;t. Khi thịt vừa săn, cho nước v&agrave;o nồi v&agrave; nấu s&ocirc;i.</p>\r\n\r\n<p><strong>Bước 4:</strong>&nbsp;Khi nước vừa s&ocirc;i, cho tỏi băm v&agrave;o nồi, n&ecirc;m nếm gia vị với x&igrave; dầu, muối, bột ngọt cho vừa miệng v&agrave; tắt bếp.</p>\r\n\r\n<p>Dọn canh d&ugrave;ng n&oacute;ng sẽ rất ngon v&agrave; bổ dưỡng.</p>\r\n', 1, '2021-03-22', '1623486221_post-content-img1.jpg'),
(6, 'Cách làm mực tẩm bột chiên giòn thơm ngon', '<p>Mực chi&ecirc;n gi&ograve;n l&agrave;&nbsp;<a href=\"https://www.dienmayxanh.com/vao-bep/mon-chien\" rel=\"noopener\" target=\"_blank\" title=\"món chiên\">m&oacute;n chi&ecirc;n</a>&nbsp;hải sản hấp dẫn bất kể lứa tuổi n&agrave;o bởi độ gi&ograve;n dai v&agrave; hương vị đặc trưng.</p>\r\n', '<h3>Nguy&ecirc;n liệu l&agrave;m mực tẩm bột chi&ecirc;n gi&ograve;n</h3>\r\n\r\n<address>&ndash; Mực ống loại vừa 300g</address>\r\n\r\n<address>&ndash; Trứng g&agrave;: 2 quả;</address>\r\n\r\n<address>&ndash; Rau x&agrave; l&aacute;ch: 200g;</address>\r\n\r\n<address>&ndash; Bột chi&ecirc;n gi&ograve;n: 01 g&oacute;i;</address>\r\n\r\n<address>&ndash; Bột chi&ecirc;n x&ugrave; m&agrave;u cam: 01 g&oacute;i;</address>\r\n\r\n<address>&ndash; H&agrave;nh l&aacute;, ng&ograve; r&iacute;: 100g;</address>\r\n\r\n<address>&ndash; Gia vị: hạt n&ecirc;m, bột ngọt, ti&ecirc;u, dầu ăn, tương ớt, sốt mayonnaise, gừng tươi, rượu trắng.</address>\r\n\r\n<h3>Sơ chế nguy&ecirc;n liệu</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam muc tam bot chien gion thom ngon 01\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-muc-tam-bot-chien-gion-thom-ngon_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_cách làm mực tẩm bột chiên giòn thơm ngon 01\" /></p>\r\n\r\n<p>&ndash; Mực ống: L&agrave;m sạch, rửa mực với nước c&oacute; pha rượu trắng v&agrave; gừng đập dập để mực sach v&agrave; gi&ograve;n ngon hơn. Cắt mực th&agrave;nh từng khoanh vừa ăn, tỉa h&igrave;nh vảy rồng, để r&aacute;o hoặc d&ugrave;ng giấy thấm dầu thấm kh&ocirc; hết nước. Ướp mực với 1 th&igrave;a hạt n&ecirc;m, &frac12; th&agrave;i bột ngọt, &frac12; th&igrave;a ti&ecirc;u, &frac12; th&igrave;a dầu ăn trong 15 ph&uacute;t sao cho vừa ăn;</p>\r\n\r\n<p>&ndash; Trứng g&agrave;: D&ugrave;ng 2 l&ograve;ng đỏ v&agrave; 1 l&ograve;ng trắng th&ocirc;i bạn nh&eacute;, đ&aacute;nh tan trứng với một ch&uacute;t x&iacute;u muối tinh;</p>\r\n\r\n<p>&ndash; H&agrave;nh l&aacute;, ng&ograve; r&iacute;: Nhặt v&agrave; rửa sạch, để r&aacute;o, th&aacute;i mịn phần h&agrave;nh l&aacute;, ng&ograve; r&iacute; cắt kh&uacute;c 3cm;</p>\r\n\r\n<p>&ndash; Bột chi&ecirc;n gi&ograve;n: Đổ ra đĩa;</p>\r\n\r\n<p>&ndash; Bột chi&ecirc;n x&ugrave;: Đổ ra đĩa, trộn với h&agrave;nh l&aacute;, ng&ograve; r&iacute; th&aacute;i mịn v&agrave; 1 th&igrave;a hạt n&ecirc;m, &frac12; th&igrave;a ti&ecirc;u để khi ăn m&oacute;n ăn sẽ đậm đ&agrave; hơn bạn nh&eacute;;</p>\r\n\r\n<p>&ndash; Rau x&agrave; l&aacute;ch: rửa sạch, t&aacute;ch l&aacute;, để r&aacute;o;</p>\r\n\r\n<h3>Thực hiện l&agrave;m m&oacute;n mực tẩm bột chi&ecirc;n gi&ograve;n</h3>\r\n\r\n<p>&ndash; Sử dụng chảo chống d&iacute;nh, cho v&agrave;o chảo một lượng dầu ăn vừa đủ, khi dầu s&ocirc;i n&oacute;ng gi&agrave;, bạn vặn lửa nhỏ;</p>\r\n\r\n<p>&ndash; Lấy từng miếng mực lăn đều qua lần lượt: bột chi&ecirc;n gi&ograve;n, trứng g&agrave; đ&aacute;nh tan, bột chi&ecirc;n x&ugrave; rồi cho v&agrave;o chảo chi&ecirc;n v&agrave;ng đều. Bạn lưu &yacute; khi lăn quan lớp bột chi&ecirc;n x&ugrave; cần lăn nhiều lần để mực c&oacute; lớp &aacute;o d&agrave;y sẽ gi&ograve;n ngon hơn;</p>\r\n\r\n<p>&ndash; Khi mực v&agrave;ng đều c&aacute;c mặt, bạn cho mực ra đĩa c&oacute; giấy thấm dầu, chi&ecirc;n lần lượt cho đến hết nh&eacute;;</p>\r\n\r\n<p>&ndash; Xếp ra x&agrave; l&aacute;ch ra đĩa để trang tr&iacute; v&agrave; ăn k&egrave;m, xếp mực v&agrave;o giữa, rắc ng&ograve; r&iacute; l&ecirc;n tr&ecirc;n l&agrave; bạn đ&atilde; ho&agrave;n th&agrave;nh m&oacute;n ăn rồi đấy;</p>\r\n\r\n<p>&ndash; Cho sốt mayonnaise v&agrave; tương ớt ra một đĩa nhỏ d&ugrave;ng để chấm mực chi&ecirc;n gi&ograve;n khi thưởng thức;</p>\r\n', 0, '2020-09-08', '1624109450_cach-lam-muc-tam-bot-chien-gion-thom-ngon_grande.jpg'),
(7, 'Cách làm lẩu kim chi hải sản', '<div>Lẩu kimchi chua chua cay cay lại th&ecirc;m vị ngọt của hải sản, cực kỳ tuyệt vời lu&ocirc;n nh&eacute;!</div>\r\n', '<p><strong>Nguy&ecirc;n liệu:</strong></p>\r\n\r\n<p>- 100ml nước</p>\r\n\r\n<p>- 2 củ h&agrave;nh t&acirc;y, 5 quả c&agrave; chua</p>\r\n\r\n<p>- 1 quả trứng</p>\r\n\r\n<p>- 150ml kimchi</p>\r\n\r\n<p>- 100ml rượu sake</p>\r\n\r\n<p>- 1 &iacute;t h&agrave;nh l&aacute; cắt nhỏ, 3 t&eacute;p tỏi băm nhuyễn</p>\r\n\r\n<p>- 350g ngh&ecirc;u, 3 cồi s&ograve; điệp</p>\r\n\r\n<p>- 1 b&oacute; nấm kim ch&acirc;m</p>\r\n\r\n<p>- 10 con t&ocirc;m, 8 l&aacute;t phi l&ecirc; c&aacute;</p>\r\n\r\n<p>- 2 quả b&iacute; ng&ograve;i xanh, 1 quả b&iacute; ng&ograve;i v&agrave;ng</p>\r\n\r\n<p><strong><u>C&aacute;ch l&agrave;m:</u></strong></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 01\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-1.gif\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 01\" /></p>\r\n\r\n<p>Bước 1:</p>\r\n\r\n<p>Đầu ti&ecirc;n, bạn rửa v&agrave; ng&acirc;m ngh&ecirc;u trong nước ho&agrave; với ch&uacute;t muối 30&#39;.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 02\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-2.gif\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 02\" /></p>\r\n\r\n<p>Bước 2:</p>\r\n\r\n<p>Bạn cắt c&agrave; chua th&agrave;nh m&uacute;i v&agrave; cắt h&agrave;nh t&acirc;y l&agrave;m 4.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 03\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-3.gif\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 03\" /></p>\r\n\r\n<p>Bước 3:</p>\r\n\r\n<p>Cắt l&aacute;t b&iacute; ng&ograve;i xanh v&agrave; b&iacute; ng&ograve;i v&agrave;ng.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 04\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-4.gif\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 04\" /></p>\r\n\r\n<p>Bước 4:</p>\r\n\r\n<p>Bạn cho ch&uacute;t dầu v&agrave;o nồi, x&agrave;o h&agrave;nh t&acirc;y v&agrave; tỏi băm ở lửa vừa cho đến khi thấy thơm th&igrave; bắt đầu xếp c&agrave; chua, b&iacute; ng&ograve;i v&agrave;ng th&agrave;nh từng lớp l&ecirc;n tr&ecirc;n.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 05\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-5.gif\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 05\" /></p>\r\n\r\n<p>Bước 5:</p>\r\n\r\n<p>Xếp b&iacute; ng&ograve;i xanh l&ecirc;n tr&ecirc;n v&agrave; d&agrave;n đều kimchi l&ecirc;n tr&ecirc;n mặt.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 06\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-6.gif\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 06\" /></p>\r\n\r\n<p>Bước 6:</p>\r\n\r\n<p>Tiếp đ&oacute;, bạn xếp t&ocirc;m v&ograve;ng xung quanh nồi, rồi xếp ngh&ecirc;u, c&aacute; phi l&ecirc; v&agrave; cồi s&ograve; điệp v&agrave;o giữa.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 07\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-7.gif\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 07\" /></p>\r\n\r\n<p>Bước 7:</p>\r\n\r\n<p>Th&ecirc;m nước v&agrave; rượu sake v&agrave;o nồi, đậy nắp, đun ở lửa vừa trong v&ograve;ng 45&#39; cho đến khi hải sản đươc nấu ch&iacute;n.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 08\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-8.gif\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 08\" /></p>\r\n\r\n<p>Bước 8:</p>\r\n\r\n<p>Bạn tăng lửa lớn th&ecirc;m rồi cho nấm kim ch&acirc;m v&agrave; trứng v&agrave;o lẩu, rắc th&ecirc;m h&agrave;nh l&aacute; l&ecirc;n tr&ecirc;n l&agrave; ho&agrave;n th&agrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nh&igrave;n nồi lẩu đầy ăm ắp thế n&agrave;y chết v&igrave; th&egrave;m...</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_cach lam lau kim chi hai san 09\" src=\"http://file.hstatic.net/1000181509/file/cach-lam-lau-kim-chi-hai-san-9_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_cách làm lẩu kim chi hải sản 09\" /></p>\r\n\r\n<p>Một kiểu lẩu &iacute;t nước hay ho c&aacute;c bạn nhỉ!</p>\r\n\r\n<p>Ăn c&ugrave;ng cơm trắng cũng rất hợp đ&oacute;!</p>\r\n', 1, '2020-10-10', '1624109579_cach-lam-lau-kim-chi-hai-san-9_grande.jpg'),
(8, 'Mực chiên xù sốt wasabi ', '<p>Mực chi&ecirc;n x&ugrave; sốt wasabi ăn một miếng l&agrave; m&ecirc; mẩn ngay v&agrave; dễ thực hiện</p>\r\n', '<p><strong><u>Để l&agrave;m mực chi&ecirc;n x&ugrave;, bạn cần:</u></strong></p>\r\n\r\n<p><strong><em><u>Phần mực:</u></em></strong></p>\r\n\r\n<p><strong><em>- 3 con mực to</em></strong></p>\r\n\r\n<p><strong><em>- 1 c&acirc;y h&agrave;nh l&aacute; (xắt nhỏ)</em></strong></p>\r\n\r\n<p><strong><em>- Dầu ăn</em></strong></p>\r\n\r\n<p><strong><em><u>Phần bột:</u></em></strong></p>\r\n\r\n<p><strong><em>- 180g bột ng&ocirc;</em></strong></p>\r\n\r\n<p><strong><em>- 60g bột m&igrave;</em></strong></p>\r\n\r\n<p><strong><em>- 5g bột ngũ vị hương</em></strong></p>\r\n\r\n<p><strong><em>- Một nh&uacute;m muối, một nh&uacute;m ti&ecirc;u</em></strong></p>\r\n\r\n<p><strong><em>- 1 quả trứng</em></strong></p>\r\n\r\n<p><strong><em>- 60ml nước</em></strong></p>\r\n\r\n<p><strong><em><u>Phần sốt wasabi:</u></em></strong></p>\r\n\r\n<p><strong><em>- 120ml sốt mayonnaise</em></strong></p>\r\n\r\n<p><strong><em>- 20g wasabi (điều chỉnh tuỳ &yacute;)</em></strong></p>\r\n\r\n<p><strong><em>- 45ml mật ong</em></strong></p>\r\n\r\n<p><strong><em>- 15ml x&igrave; dầu</em></strong></p>\r\n\r\n<p><strong><em>- 1 quả chanh</em></strong></p>\r\n\r\n<p><strong><u>C&aacute;ch l&agrave;m mực chi&ecirc;n x&ugrave; như sau:</u></strong></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 01\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-1.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 01\" /></p>\r\n\r\n<p>Bước 1:</p>\r\n\r\n<p>- Đầu ti&ecirc;n, bạn l&agrave;m sạch mực rồi lột bỏ phần m&agrave;ng b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 02\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-2.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 02\" /></p>\r\n\r\n<p>Bước 2:</p>\r\n\r\n<p>- Xắt mực th&agrave;nh từng khoanh đều nhau.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 03\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-3.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 03\" /></p>\r\n\r\n<p>Bước 3:</p>\r\n\r\n<p>- R&acirc;y bột ng&ocirc;, bột m&igrave; v&agrave;o &acirc;u. Th&ecirc;m bột ngũ vị hương, muối v&agrave; ti&ecirc;u v&agrave;o.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 04\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-4.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 04\" /></p>\r\n\r\n<p>Bước 4:</p>\r\n\r\n<p>- Đập th&ecirc;m 1 quả trứng v&agrave; đổ th&ecirc;m nước v&agrave;o rồi đ&aacute;nh đều.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 05\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-5.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 05\" /></p>\r\n\r\n<p>Bước 5:</p>\r\n\r\n<p>- Bạn cho mực v&agrave;o c&ugrave;ng với bột rồi trộn đều l&ecirc;n cho bột &aacute;o đều l&ecirc;n miếng mực.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 06\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-6.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 06\" /></p>\r\n\r\n<p>Bước 6:</p>\r\n\r\n<p>- Đổ dầu v&agrave;o chảo, khi dầu n&oacute;ng, bạn cho mực v&agrave;o chi&ecirc;n cho v&agrave;ng l&ecirc;n. Khi chi&ecirc;n xong, bạn vớt mực ra rồi để cho r&aacute;o dầu.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 07\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-7.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 07\" /></p>\r\n\r\n<p>Bước 7:</p>\r\n\r\n<p>- Để l&agrave;m phần sốt wasabi, bạn cho mayonnaise, sốt wasabi v&agrave; mật ong v&agrave;o trong b&aacute;t nhỏ.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 08\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-8.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 08\" /></p>\r\n\r\n<p>Bước 8:</p>\r\n\r\n<p>- Vắt th&ecirc;m 1 quả chanh v&agrave;o rồi khuấy đều.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 09\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-9.gif\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 09\" /></p>\r\n\r\n<p>Bước 9:</p>\r\n\r\n<p>- Bạn rưới sốt l&ecirc;n mực, sau đ&oacute; x&oacute;c đều cho mực ngấm sốt. Rắc th&ecirc;m h&agrave;nh l&aacute; trang tr&iacute; rồi b&agrave;y ra đĩa.</p>\r\n\r\n<p><strong>M&oacute;n mực chi&ecirc;n x&ugrave; n&agrave;y m&agrave; đem ăn lai rai với bạn b&egrave; th&igrave; ngon lắm lu&ocirc;n!</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mực dai dai, ăn k&egrave;m với sốt mayonnaise wasabi vừa b&eacute;o vừa cay sẽ lạ miệng v&agrave; hấp dẫn v&ocirc; c&ugrave;ng đấy!</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_muc chien xu sot wasabi an mot mieng la me man ngay 10\" src=\"http://file.hstatic.net/1000181509/file/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-10_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_mực chiên xù sốt wasabi ăn một miếng là mê mẩn ngay 10\" /></p>\r\n', 1, '2020-08-07', '1624109752_muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-10_grande.jpg'),
(9, 'Tôm hấp bia', '<p>T&ocirc;m hấp bia l&agrave; m&oacute;n ăn ngon, hấp dẫn thường xuy&ecirc;n xuất hiện trong những b&agrave;n tiệc hay bữa ăn gia đ&igrave;nh hằng ng&agrave;y</p>\r\n', '<p><strong>Nguy&ecirc;n liệu l&agrave;m m&oacute;n t&ocirc;m hấp bia :</strong></p>\r\n\r\n<p>&ndash; T&ocirc;m s&uacute;: 1kg . Chon t&ocirc;m kh&ocirc;ng</p>\r\n\r\n<p>&ndash; Bia: 1 lon</p>\r\n\r\n<p>&ndash; Sả: 2 nh&aacute;nh</p>\r\n\r\n<p>&ndash; Gừng: 1 củ nhỏ</p>\r\n\r\n<p>&ndash; H&agrave;nh tăm, tỏi, &oacute;t cay</p>\r\n\r\n<p>&ndash; L&aacute; chanh</p>\r\n\r\n<p>&ndash; Gia vị: hạt n&ecirc;m</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m m&oacute;n t&ocirc;m hấp bia.</strong></p>\r\n\r\n<p>&ndash; H&agrave;nh tăm đập dập , tỏi bằm nhuyễn , ớt cay th&aacute;i miếng vừa.</p>\r\n\r\n<p>&ndash; Gừng đập nhỏ</p>\r\n\r\n<p>&ndash; Sả : cắt kh&uacute;c đập dập</p>\r\n\r\n<p>&ndash; T&ocirc;m s&uacute; : T&ocirc;m mua về sửa sạch , cắt bớt r&acirc;u v&agrave; ch&acirc;n, sau đ&oacute; bỏ v&agrave;o t&ocirc; ướp hạt n&ecirc;m, m&igrave; ch&iacute;nh, dầu ăn. Cho thật &iacute;t nước mắm để lấy m&ugrave;i thơm th&ocirc;i nh&eacute;, v&igrave; t&ocirc;m l&agrave; hải sản vốn dĩ đ&atilde; mặn rồi. Cho th&ecirc;m sả ớt v&agrave; gừng đ&atilde; đập dập v&agrave;o ướp c&ugrave;ng nữa.</p>\r\n\r\n<p>Cho t&ograve;an bộ t&ocirc;m s&uacute; v&agrave; đ&atilde; ướp sả v&agrave; gia vị v&agrave;o nồi, bắc nồi l&ecirc;n bếp. Cho một nứa lon bia v&agrave;o c&ugrave;ng đun đến khi s&ocirc;i, kh&ocirc;ng n&ecirc;n đun qu&aacute; l&acirc;u t&ocirc;m sẽ kh&ocirc; m&agrave; mất vị thơm ngon. Đun kho&agrave;ng tầm 10- 15 ph&uacute;t rồi cho th&ecirc;m l&aacute; chanh v&agrave;o để lửa th&ecirc;m 2 ph&uacute;t nữa l&agrave; vớt t&ocirc;m ra đĩa, rắc th&ecirc;m một &iacute;t ti&ecirc;u cho thơm l&agrave; c&oacute; thể thưởng thức những ch&uacute; t&ocirc;m thơm ngon rồi.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_tom hap bia 01\" src=\"http://file.hstatic.net/1000181509/file/tom-hap-bia_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_tôm hấp bia 01\" /></p>\r\n\r\n<p>Chỉ mất một thời gian ngắn th&ocirc;i l&agrave; bạn đ&atilde; c&oacute; th&ecirc;m m&oacute;n t&ocirc;m hấp bia cực hấp dẫn r&ocirc;i, với thịt t&ocirc;m đầm d&agrave; ngấm đẫm vị bia c&ugrave;ng với gia vị sả ớt sẽ khiến bọn trẻ th&iacute;ch th&uacute;.</p>\r\n\r\n<p>Ch&uacute;c bạn l&agrave;m th&agrave;nh c&ocirc;ng m&oacute;n t&ocirc;m hấp bia ngon miệng nh&eacute; !</p>\r\n', 1, '2020-11-11', '1624110035_tom-hap-bia.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 14, 1, 1000000),
(2, 1, 18, 1, 140000),
(3, 2, 18, 1, 140000),
(4, 3, 18, 8, 140000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`) VALUES
(1, 2, '2021-06-15', 750000, 1),
(2, 2, '2021-06-16', 140000, 1),
(3, 2, '2021-06-16', 1120000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `descriptions` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `descriptions`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`) VALUES
(2, 'Sò Mai', '<p>0</p>\r\n', '<p>f</p>\r\n', 1, '1622685538_product-img.jpg', 290000, 0, 28),
(4, 'Cồi Sò Điệp', '', '', 1, '1622883332_product-img2.jpg', 160000, 0, 28),
(5, 'Hàu Sữa', '', '', 0, '1622883385_product-img3.jpg', 120000, 39, 0),
(6, 'Ngao 2 Cồi', '', '', 1, '1622883493_product-img4.jpg', 190000, 0, 27),
(7, 'Ốc Móng Tay', '', '', 1, '1622883546_product-img5.jpg', 370000, 0, 29),
(8, 'Sò Điệp', '', '', 0, '1622883584_product-img6.jpg', 100000, 33, 28),
(9, 'Tôm Mũ Ni Sống', '', '', 1, '1622883632_product-img7.jpg', 1100000, 0, 6),
(10, ' Tôm Càng Xanh', '', '', 1, '1622883667_product-img8.jpg', 340000, 0, 6),
(11, 'Tôm Hùm Baby', '', '', 1, '1622883718_product-img9.jpg', 1000000, 0, 6),
(12, 'Tôm Sú Biển', '', '', 0, '1622883758_product-img10.jpg', 1150000, 39, 6),
(13, 'Tôm Hùm Canada', '', '', 1, '1622883813_product-img11.jpg', 1140000, 0, 6),
(14, 'Tôm Hùm Tre', '', '', 1, '1622883856_product-img12.jpg', 1000000, 39, 6),
(15, 'Ốc Giác', '', '', 0, '1622883904_product-img13.jpg', 200000, 39, 29),
(16, 'Ốc Hương', '', '', 1, '1622883957_product-img14.jpg', 850000, 0, 29),
(17, ' Tôm Hùm Bông', '', '', 0, '1622883997_product-img15.jpg', 2400000, 39, 6),
(18, 'Ốc Gai', '', '', 1, '1622884033_product-img16.jpg', 140000, 0, 29),
(19, 'Ốc vòi voi', '<p><strong>Tu h&agrave;i</strong>&nbsp;hay c&ograve;n gọi l&agrave;&nbsp;<strong><em>ốc v&ograve;i voi</em></strong>&nbsp;l&agrave; một trong những hải sản qu&yacute; hiếm được y&ecirc;u th&iacute;ch trong c&aacute;c nh&agrave; h&agrave;ng, bữa tiệc, kh&ocirc;ng chỉ ngon m&agrave; c&ograve;n chứa nhiều dinh dưỡng tuyệt vời với khoảng 16 loại acit amin bổ sung cho cơ thể.</p>\r\n', '<p><strong>Tu h&agrave;i</strong>&nbsp;hay c&ograve;n gọi l&agrave;&nbsp;<strong><em>ốc v&ograve;i voi</em></strong>&nbsp;l&agrave; một trong những hải sản qu&yacute; hiếm được y&ecirc;u th&iacute;ch trong c&aacute;c nh&agrave; h&agrave;ng, bữa tiệc, kh&ocirc;ng chỉ ngon m&agrave; c&ograve;n chứa nhiều dinh dưỡng tuyệt vời với khoảng 16 loại acit amin bổ sung cho cơ thể.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_oc voi voi 02\" src=\"http://product.hstatic.net/1000181509/product/oc-voi-6_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_ốc vòi voi 02\" /></p>\r\n\r\n<p>Tu h&agrave;i c&oacute; v&ograve;i d&agrave;i ng&oacute;c ra khỏi vỏ v&igrave; thế người ta hay gọi l&agrave; ốc v&ograve;i voi, l&agrave; lo&agrave;i nhuyễn thế hai mảnh vỏ sống trong m&ocirc;i trường nước mặn, rải r&aacute;c tr&ecirc;n c&aacute;c trương c&aacute;t ngầm v&agrave; thềm c&aacute;t c&oacute; san h&ocirc; ở v&ugrave;ng biển ấm. Ch&uacute;ng c&oacute; thể thể sống l&acirc;u v&agrave; lớn nhất trong hang c&aacute;t, l&agrave; một đặc sản qu&yacute; hiếm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_oc voi voi 03\" src=\"http://product.hstatic.net/1000181509/product/oc-voi-voi-4_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_ốc vòi voi 03\" /></p>\r\n\r\n<p>Tu h&agrave;i c&oacute; gi&aacute; trị dinh dưỡng cao c&ugrave;ng hương vị đặc biệt v&agrave; c&oacute; t&aacute;c dụng tốt đối với sức khỏe ph&aacute;i nam v&agrave; l&agrave; lo&agrave;i thủy sản c&oacute; gi&aacute; trị kinh tế cao.<br />\r\nTu h&agrave;i l&agrave; một lo&agrave;i ốc biển tự nhi&ecirc;n, thịt thơm, ngọt. Dễ d&agrave;ng chế biến th&agrave;nh nhiều m&oacute;n ăn ngon: hấp sả, nướng mọi, nướng mỡ h&agrave;nh, nướng ph&ocirc; mai hoặc qu&yacute; kh&aacute;ch c&oacute; thể ăn sống với m&ugrave; tạt.</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_oc voi voi 04\" src=\"http://product.hstatic.net/1000181509/product/oc-voi-voi-7_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_ốc vòi voi 04\" /></p>\r\n\r\n<h2><strong>C&aacute;c m&oacute;n ăn ngon từ tu h&agrave;i (ốc v&ograve;i voi)</strong></h2>\r\n\r\n<h3><strong>1. Tu h&agrave;i nướng mỡ h&agrave;ng</strong></h3>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_oc voi voi 05\" src=\"http://product.hstatic.net/1000181509/product/oc-voi-voi_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_ốc vòi voi 05\" /></p>\r\n\r\n<h3>2. Tu h&agrave;i hấp sả</h3>\r\n\r\n<h3>3. Tu h&agrave;i nướng phố mai</h3>\r\n\r\n<h3>4. Tu h&agrave;i nấu ch&aacute;o&nbsp;đậu xanh</h3>\r\n', 0, '1623896108_oc-voi-6_master.jpg', 390000, 0, 29),
(20, ' Sò Dương', '<p>&nbsp;S&ograve; dương l&agrave; một trong những đặc sản của v&ugrave;ng đất nắng Phan Rang với những b&atilde;i biển d&agrave;i, những đồi c&aacute;t trắng. L&agrave; lo&agrave;i s&ograve; biển chuy&ecirc;n ẩn m&igrave;nh dưới những lớp c&aacute;t, san h&ocirc;. Đến du lịch ở nơi đ&acirc;y, bạn dễ d&agrave;ng t&igrave;m thấy v&agrave; thỏa sức ngắm nh&igrave;n s&ograve; dương qua lớp đ&aacute;y k&iacute;nh khi tham gia th&aacute;m hiểm biển bằng t&agrave;u</p>\r\n', '<p>&nbsp;S&ograve; dương l&agrave; một trong những đặc sản của v&ugrave;ng đất nắng Phan Rang với những b&atilde;i biển d&agrave;i, những đồi c&aacute;t trắng. L&agrave; lo&agrave;i s&ograve; biển chuy&ecirc;n ẩn m&igrave;nh dưới những lớp c&aacute;t, san h&ocirc;. Đến du lịch ở nơi đ&acirc;y, bạn dễ d&agrave;ng t&igrave;m thấy v&agrave; thỏa sức ngắm nh&igrave;n s&ograve; dương qua lớp đ&aacute;y k&iacute;nh khi tham gia th&aacute;m hiểm biển bằng t&agrave;u.</p>\r\n\r\n<p>- S&ograve; Dương l&agrave; một lo&agrave;i s&ograve; biển, sống trong tự nhi&ecirc;n ở khu vực c&oacute; rạn san h&ocirc;, c&aacute;t trắng, thịt s&ograve; Dương rất thơm, ngọt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 01\" src=\"http://product.hstatic.net/1000181509/product/so-duong-2_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 01\" /></p>\r\n\r\n<p><em>S&ograve; Dương</em></p>\r\n\r\n<p>- S&ograve; dương l&agrave; lo&agrave;i c&oacute; gi&aacute; trị kinh tế cao, được ph&acirc;n bố rộng khắp tr&ecirc;n cả nước. H&agrave;ng năm những sản phẩm đ&ocirc;ng lạnh từ s&ograve; dương hay s&ograve; dương tươi sống vẫn đang rất được mọi người ưa chuộng, dễ ăn, c&oacute; t&iacute;nh hiền n&ecirc;n những người đam m&ecirc; đồ hải sản rất nghiện m&oacute;n s&ograve; dương</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 02\" src=\"http://product.hstatic.net/1000181509/product/tom_su_bien_new_1_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 02\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 03\" src=\"http://product.hstatic.net/1000181509/product/so-duong-7_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 03\" /></p>\r\n\r\n<p><em>S&ograve; dương&nbsp;được bảo quản sống v&agrave; giao h&agrave;ng tận nơi</em>﻿</p>\r\n\r\n<h2><strong>C&Aacute;C M&Oacute;N ĂN CHẾ BIẾN TỪ S&Ograve; DƯƠNG</strong></h2>\r\n\r\n<h3><strong>1. Ruột s&ograve; dương nấu ch&aacute;o</strong></h3>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 04\" src=\"http://product.hstatic.net/1000181509/product/so-duong-4_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 04\" /></p>\r\n\r\n<h3><strong>2. S&ograve; dương nướng mỡ h&agrave;nh</strong></h3>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 05\" src=\"http://product.hstatic.net/1000181509/product/so-duong-15_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 05\" /></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 06\" src=\"http://product.hstatic.net/1000181509/product/so-duong-14_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 06\" /></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 07\" src=\"http://product.hstatic.net/1000181509/product/so-duong-10_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 07\" /></p>\r\n\r\n<p><em>S&ograve; dương nướng mỡ h&agrave;nh</em></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 08\" src=\"http://product.hstatic.net/1000181509/product/so-duong-1_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 08\" /></p>\r\n\r\n<p><em>S&ograve; dương nướng mỡ h&agrave;nh</em></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 09\" src=\"http://product.hstatic.net/1000181509/product/so-duong-13_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 09\" /></p>\r\n\r\n<p><em>S&ograve; dương nướng mỡ h&agrave;nh</em></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 10\" src=\"http://product.hstatic.net/1000181509/product/so-duong-11_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 10\" /></p>\r\n\r\n<p><em>S&ograve; dương nướng mỡ h&agrave;nh</em></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 11\" src=\"http://product.hstatic.net/1000181509/product/so-duong-12_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 11\" /></p>\r\n\r\n<p><em>S&ograve; dương nướng mỡ h&agrave;nh</em></p>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 12\" src=\"http://product.hstatic.net/1000181509/product/so-duong-6_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 12\" /></p>\r\n\r\n<p><em>S&ograve; dương nướng mỡ h&agrave;nh</em></p>\r\n\r\n<h3>3. S&ograve; dương nướng ph&ocirc; mai</h3>\r\n\r\n<p><em><img alt=\"seafood_store_panda_developer_team_mota_so duong 13\" src=\"http://product.hstatic.net/1000181509/product/so-duong-17_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 13\" /></em></p>\r\n\r\n<p><em>s&ograve; dương nướng ph&ocirc; mai</em></p>\r\n\r\n<h3>4. S&ograve; dương nướng muối&nbsp;ớt</h3>\r\n\r\n<p><img alt=\"seafood_store_panda_developer_team_mota_so duong 14\" src=\"http://product.hstatic.net/1000181509/product/so-duong-16_grande.jpg\" title=\"seafood_store_panda_developer_team_mota_sò dương 14\" /></p>\r\n\r\n<p><em>s&ograve; dương nướng muối&nbsp;ớt</em></p>\r\n', 1, '1623896226_so-duong-17_master.jpg', 160000, 0, 28),
(21, 'Ngao Xanh Sống', '<p><strong>Ngao Xanh</strong>&nbsp;Ph&uacute; Y&ecirc;n ở v&ugrave;ng biển thi&ecirc;n nhi&ecirc;n v&igrave; vậy thịt&nbsp;<strong>Ngao Xanh</strong>&nbsp;ngọt, b&eacute;o v&agrave; hương thơm lan tỏa.&nbsp;Lu&ocirc;n c&oacute; mặt trong mỗi buổi cơm gia đ&igrave;nh v&agrave; ph&ugrave; hợp với mọi lứa tuổi.</p>\r\n', '<p><strong>Ngao Xanh</strong>&nbsp;Ph&uacute; Y&ecirc;n ăn ngon thơm ngọt được nhiều kh&aacute;ch y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/d843b0a6973b6d65342a_3d787a7ec1994748b7779cb93ca6131d_grande.png\" /></p>\r\n\r\n<p>C&agrave;ng ăn c&agrave;ng hấp dẫn vị đậm đ&agrave; thơm ng&aacute;t khoanh miệng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/4262488e6f13954dcc02_1b7c8cd53e274103b31822d504cd3fbb_grande.png\" /></p>\r\n\r\n<p>Ngao Xanh v&agrave;o m&ugrave;a size 30 - 40 con/kg ( đ&oacute;ng t&uacute;i lưới)</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/xanh_1_3fe08a20d648443b848da29babec09fd_grande.jpg\" /></p>\r\n\r\n<p>M&oacute;n ngon quen thuộc với mọi gia đ&igrave;nh : hấp sả, hấp th&aacute;i, x&agrave;o me, sốt bơ tỏi</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/xanh_2_dc51c2f1eb9c415b84ae35bedc9d824b_grande.jpg\" /></p>\r\n\r\n<p>Kh&aacute;ch mua về ng&acirc;m&nbsp;<strong>Ngao Xanh</strong>&nbsp;v&agrave;o nước k&egrave;m ớt sắc v&agrave; ng&acirc;m khoảng 15 ph&uacute;t. Sau đ&oacute; vớt ra để r&aacute;o v&agrave; bắt đầu chế biến.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/xanh_4_c9d3c341437b485a85734c36629d7060_grande.jpg\" /></p>\r\n\r\n<p>Hấp sả khoảng 15 ph&uacute;t l&agrave; được ạ. Kh&aacute;ch hấp nhiều qua sẽ teo thịt ngao nh&eacute; ạ</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/5_68044f86de384c67a8237dd9955ae72c_grande.jpg\" /></p>\r\n', 0, '1623896515_ngao_xanh-01_49eb0ad8400d4432b881db34f77efebb_grande.jpg', 99000, 14, 27),
(22, 'Ngao Chọt Sống', '<p><strong>Ngao chọt</strong>&nbsp;l&agrave; một trong những đặc sản nổi tiếng ở v&ugrave;ng biển B&igrave;nh Thuận, chủ yếu trong thi&ecirc;n nhi&ecirc;n. Ch&iacute;nh điều đ&oacute; g&oacute;p phần tạo n&ecirc;n hương vị đậm đ&agrave; v&agrave; ngọt của ngao chọt.</p>\r\n', '<p><strong>Ngao chọt&nbsp;</strong>&nbsp;chủ yếu l&agrave; ở v&ugrave;ng biển B&igrave;nh Thuận, ngao sống điều kiện ho&agrave;n to&agrave;n tự nhi&ecirc;n.&nbsp;<strong>Ngao chọt</strong>&nbsp;thường chỉ c&oacute; theo m&ugrave;a n&ecirc;n kh&aacute; hiếm h&agrave;ng.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/v3baf9b9fa1025b5c0213_e79b44a88d2b4703bb84d871bfc6fd1d_grande.jpg\" /></p>\r\n\r\n<p>B&ecirc;n ngo&agrave;i lớp vỏ sẫm m&agrave;u c&ugrave;ng nhiều v&acirc;n tr&ecirc;n vỏ th&igrave; b&ecirc;n trong chứa phần thịt d&agrave;y v&agrave; rất ngọt thịt. Thường ngao chọt cho nhiều chất kẽm, sắt tốt cho sức khỏe n&ecirc;n được rất nhiều KH y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Ngao chọt&nbsp;ngon nhất hấp sả, ch&aacute;y tỏi hoặc hấp th&aacute;i chua cay ăn kh&aacute; ngon v&agrave; lạ miệng.</p>\r\n\r\n<p>Mẹo hay khi chế biến ngao chọt : hấp vừa ch&iacute;n tới l&agrave; ngon nhất, vừa mở miệng ra l&agrave; vớt ra ngay.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/3_c3a1016e96fd4a4086137fcb018da9d0_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/4_37be37d2f0e04e7390b32c74c95875b2_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/5_68044f86de384c67a8237dd9955ae72c_grande.jpg\" /></p>\r\n', 0, '1623896739_ngao_chot-01_a0f0981c28454097bf6c6d09021e141c_grande .jpg', 89000, 0, 27),
(23, 'Ngao Sần Sống', '<p><strong>Ngao sần&nbsp;</strong>về h&agrave;ng mới li&ecirc;n tục mỗi ng&agrave;y tại shop, một trong những loại ốc phổ biến được rất nhiều KH y&ecirc;u th&iacute;ch v&agrave; lựa chọn. Thịt ngao sần ngọt thịt v&agrave; gi&ograve;n dai tự nhi&ecirc;n.</p>\r\n', '<p><strong>Ngao sần</strong>&nbsp;được nhập trực tiếp từ v&ugrave;ng biển Nha Trang, h&igrave;nh dạng kh&aacute; giống những loại ngh&ecirc;u ngao kh&aacute;c tuy nhi&ecirc;n&nbsp;<strong>ngao sần&nbsp;</strong>c&oacute; đặc điểm vỏ cứng v&agrave; sần s&ugrave;i.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/c40882652_1999942616958268_5035086570231693312_n_ba18dbd95aba47cf8c0b283f32456a8e_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/uebf7e39439d10e2850711f_f0f566d08a1d46fe992823c8b88d8141_grande.jpg\" /></p>\r\n\r\n<p>Ngao sần chủ yếu trong m&ocirc;i trường nước biển sạch, thức ăn chủ yếu l&agrave; từ thực vật ph&ugrave; du, ch&iacute;nh điều n&agrave;y tạo n&ecirc;n hương vị thơm ngon v&agrave; ngọt thịt của ngao sần.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/c19f8fd1d7e298777de38_583bc73ac55b4f58b85c43a0f577d821_grande.jpg\" /></p>\r\n\r\n<p><strong>Ngao sần</strong>&nbsp;th&iacute;ch hợp chế biến được rất nhiều m&oacute;n ngon nhưng đơn giản nhất vẫn l&agrave; hấp sả tầm 5-10 ph&uacute;t cho ngao vừa ch&iacute;n tới, ngon hơn khi chấm k&egrave;m c&ugrave;ng muối ớt xanh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/c45746a90e9a410fa49b5_5cda41fab5d34430968814d1bcf496cf_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/c181ab9c6fcf105af5ce0_fc2c98ce177f4a9a9a4275a2d202e2a5_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/web79373056_616325089171088_3350443845182554112_n_5aef183656c04fac942654c181b4e063_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000030244/file/web79981985_1570019469806516_7481865160282341376_n_a4e7b7180a634848848d629f2cae30f1_grande.jpg\" /></p>\r\n\r\n<p><strong>Ngao sần</strong>&nbsp;về h&agrave;ng mỗi ng&agrave;y v&agrave; lựa kĩ từng con</p>\r\n', 0, '1623896898_ngao_san-01_85f167518c794925bc29e972d29e0894_grande.jpg', 99000, 0, 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Nguyễn Văn B', 'nvb@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn C', 'nvc@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Nguyễn Văn d', 'nvd@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 'Nguyễn Văn M', 'nvm@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 'Nguyễn Văn F', 'nvf@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
