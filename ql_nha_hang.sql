-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2017 at 01:42 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ql_nha_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don`
--

CREATE TABLE IF NOT EXISTS `chi_tiet_hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_mon` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` double NOT NULL,
  `mon_thuc_don` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chi_tiet_hoa_don';

--
-- Dumping data for table `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`ma_hoa_don`, `ma_mon`, `so_luong`, `don_gia`, `mon_thuc_don`) VALUES
(12, 1, 2, 1194000, 0),
(12, 55, 1, 150000, 1),
(12, 58, 1, 180000, 1),
(13, 2, 2, 1194000, 0),
(13, 55, 1, 150000, 1),
(13, 58, 1, 180000, 1),
(14, 3, 3, 25000, 1),
(14, 46, 1, 220000, 1),
(15, 5, 2, 80000, 1),
(15, 9, 1, 180000, 1),
(15, 11, 1, 70000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE IF NOT EXISTS `hoa_don` (
`ma_hoa_don` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong_tien` double NOT NULL,
  `tien_dat_coc` double NOT NULL,
  `con_lai` double NOT NULL,
  `hinh_thuc_thanh_toan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_khach_hang`, `ngay_dat`, `tong_tien`, `tien_dat_coc`, `con_lai`, `hinh_thuc_thanh_toan`, `ghi_chu`) VALUES
(12, 12, '2014-01-13', 2718000, 1000000, 1718000, 'tiền mặt', ''),
(13, 13, '2014-01-13', 2718000, 1000000, 1718000, 'tiền mặt', ''),
(14, 16, '2014-05-20', 295000, 0, 0, 'tiền mặt', ''),
(15, 17, '2014-05-20', 410000, 0, 0, 'tiền mặt', '');

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE IF NOT EXISTS `khach_hang` (
`ma_khach_hang` int(11) NOT NULL,
  `ten_khach_hang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phai` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ten_khach_hang`, `phai`, `email`, `dia_chi`, `dien_thoai`, `ghi_chu`) VALUES
(12, 'Nguyễn Thị Thảo', 0, 'thao@gmail.com', 'đường 27', '0123456799', 'Sinh Nhật'),
(13, 'Trần Thu Trang', 0, 'trang@yahoo.com', 'đường 27', '0123456799', 'Đám cưới'),
(14, 'Đỗ Lâm Thiên', 1, 'thien@mail.com', '357 Lê Hồng Phong, Q.10', '8331056', ''),
(15, 'Khuất Thùy Phương', 0, 'kpt@edu.vn', 'Nguyễn Oanh, Gò Vấp', '9874125', ''),
(16, 'Khuất Thùy Phương', 0, 'kpt@edu.vn', 'Nguyễn Oanh', '0123456789', 'Vui lòng gửi hàng đúng ngày'),
(17, 'Mai Thu Thảo', 0, 'thao@gmail.com', 'Nguyễn Văn Cừ', '0235698758', '');

-- --------------------------------------------------------

--
-- Table structure for table `loai_mon_an`
--

CREATE TABLE IF NOT EXISTS `loai_mon_an` (
`ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `loai_mon_an`
--

INSERT INTO `loai_mon_an` (`ma_loai`, `ten_loai`, `mo_ta`, `hinh`) VALUES
(1, 'Món Canh Bổ Dưỡng', 'Mùi thơm của cá quyện với vị ngọt của hoa thiên lý sẽ mang đến cho cả nhà một tô canh ngọt ngào và bổ dưỡng. Bạn có muốn biết thêm nhiều công thức món canh ngon hấp dẫn khác của người Việt Nam?', 'caloc-bongly.jpg'),
(2, 'Bún, mì, miến, phở', 'Bánh canh, Bánh đa cua, Bún bò Huế, Bún bung', 'bun_mi_mien_pho.jpg'),
(3, 'Cơm', 'Cơm bình dân với nhiều món ăn đa dạng, phong phú. Thông thường thực đơn sẽ bao gồm một dĩa cơm và một phần thức ăn theo lựa chọn, một bát canh.', 'com.jpg'),
(4, 'Món ăn thường nhật', 'Sử dụng rất đa dạng các loại rau, củ, quả phối trộn với muối theo một tỉ lệ nhất định theo kinh nghiệm của người ẩm thực không quá mặn cũng không quá nhạt.', 'page2-img5.jpg'),
(5, 'Xôi', 'Là một món ăn ngon, bổ, phổ thông, và rất được ưa chuộng như một đồ thờ cúng ngày lễ, tết, giỗ chạp, hoặc đi kèm với lợn sữa quay trên mâm đồ lễ ăn hỏi. Sử dụng thịt gấc để tạo màu sắc đỏ tươi tắn và hương vị thơm ngon cho món xôi.', 'xoi_ga10.jpg'),
(6, 'Cháo, súp, canh', 'Gồm một nồi nước dùng đang sôi, các món ăn sống được để xung quanh và người ăn gắp đồ ăn sống bỏ vào nồi nước dùng, đợi chín tới và ăn nóng', 'chao_sup_canh.jpg'),
(7, 'Món cuốn', 'Món ăn ngon, nổi tiếng của người Việt và được chế biến từ thịt, trứng, rau củ quả băm nhỏ trộn đều, gói trong bánh đa nem và rán giòn', 'mon_cuon.jpg'),
(8, 'Bánh mặn', 'à loại bánh duy nhất có lịch sử lâu đời trong ẩm thực truyền thống Việt Nam còn được sử sách nhắc lại, bánh chưng có vị trí đặc biệt trong tâm thức của cộng đồng người Việt', 'banh_man.jpg'),
(9, 'Xào', 'Một số loại lá được đốt lên lấy tro để ngâm cùng với gạo nếp tạo ra màu nâu vàng như màu hổ phách cũng như hương vị đặc trưng của bánh. Phổ biến nhất vẫn là cách gói bánh thuôn dài. Bánh ăn chấm đường hoặc mật ong,mật mía.', 'xao.jpg'),
(10, 'Nước giải khát', 'Các loại nước giải khát', 'nuoc_giai_khat.jpg'),
(11, 'Salát', 'Đây là một món ăn được nhiều người Việt Nam thích ăn. Có 2 nguyên liệu tạo nên hương vị đặc trưng cho món sa lát Nga. Đó là Sause Mayonnaise (có thể mua ở các siêu thị) và Jambon (mua ở các cửa hàng bán thực phẩm chín), còn các nguyên liệu khác là rau quả củ rất sẵn ', 'salat.jpg'),
(12, 'Bào ngư', 'Đây là một món ăn ngon và bổ dưỡng,chế biến món ăn tốn khá nhiều thời gian cho khâu sơ chế và khâu nấu nướng,dưới đây là cách chế biến món bào ngư sốt dầu hào. ', 'bao_ngu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mon_an`
--

CREATE TABLE IF NOT EXISTS `mon_an` (
`ma_mon` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_mon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_tom_tat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_chi_tiet` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `don_gia` double NOT NULL,
  `don_gia_khuyen_mai` double NOT NULL,
  `khuyen_mai` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'nước ngọt, khăn lạnh',
  `hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_cap_nhat` date NOT NULL,
  `dvt` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'đĩa',
  `trong_ngay` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Dumping data for table `mon_an`
--

INSERT INTO `mon_an` (`ma_mon`, `ma_loai`, `ten_mon`, `noi_dung_tom_tat`, `noi_dung_chi_tiet`, `don_gia`, `don_gia_khuyen_mai`, `khuyen_mai`, `hinh`, `ngay_cap_nhat`, `dvt`, `trong_ngay`) VALUES
(1, 2, 'Bánh canh', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Được làm từ bột gạo, bột mì, hoặc bột sắn hoặc bột gạo pha bột sắn cán thành tấm và cắt ra thành sợi to và ngắn với nước dùng được nấu từ tôm, cá, giò heo... thêm gia vị tùy theo từng loại', 25000, 0, 'nước ngọt, khăn lạnh', 'Banh-Canh-Thit.jpg', '2013-12-28', 'đĩa', 0),
(2, 10, 'Nước giải khác các loại', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Chèn thập cẩm, chè đâu xanh, trà sữa trân châu,... được chế biến từ chính các đầu bếp của nhà hàng chúng tôi.', 45000, 0, 'nước ngọt, khăn lạnh', 'nuoc_giai_khat_cac_loai.jpg', '2013-12-29', 'đĩa', 0),
(3, 2, 'Súp Gà Ngô non', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cách làm:\r\n\r\n\r\nĐun nước dùng sôi, cho thịt gà vào, nêm muối tiêu, đun sôi nhỏ lửa 10 phút. Nếu bạn sợ gà quá nhừ thì có thể vớt thịt gà ra.', 25000, 0, 'nước ngọt, khăn lạnh', 'sup_ngo_non.jpg', '2013-12-29', 'đĩa', 0),
(4, 1, 'Salát cà chua dưa chuột', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...Cách làm: dưa chuột cà chua, dứa, gọt vỏ, rửa sạch, thái lát mỏng. Bày xen kẽ các nguyên liệu trên theo hình tròn hoặc hình dẻ quạt.Tỏi, ớt đập dập, băm nhỏ, cho vào tô với một chút dấm đường và một chút muối. Quậy đều hỗn hợp trên, nếm thử thấy có vị chua, ngọt vừa ăn là được. Dội hỗn hợp trên vào đĩa nguyên liệu đã được trình bày.', 25000, 0, 'nước ngọt, khăn lạnh', 'salat_ca_chua_dua_chuot.jpg', '2013-12-29', 'đĩa', 0),
(5, 1, 'Nộm gà xé phay', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Nguyên liệu:\r\n250g thịt ức gà\r\n½ củ hành tây to (hoặc 1 củ nhỏ)\r\n½ củ cà rốt\r\n1 chút lạc rang\r\nRau mùi, húng\r\nNước mắm, chanh, đường', 80000, 0, 'nước ngọt, khăn lạnh', 'nom_ga_xe_phay.jpg', '2013-12-29', 'đĩa', 0),
(6, 2, 'Nem Phù đổng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Gọi một đĩa nem ốc mà phải đợi đến 15 phút. Nem được gói từ trước, đến khi khách gọi nhà hàng mới mang vào rán. Trong lúc đợi có thể gọi bún ốc, Gọi một đĩa nem ốc mà phải đợi đến 15 phút. Nem được gói từ trước, đến khi khách gọi nhà hàng mới mang vào rán. Trong lúc đợi có thể gọi bún ốc, ', 80000, 0, 'nước ngọt, khăn lạnh', 'nem-oc-phu-dong.jpg', '2013-12-29', 'đĩa', 0),
(7, 1, 'Tôm sú chiên trà', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Tôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên trà', 650000, 0, 'nước ngọt, khăn lạnh', 'tomsu-nuocdua.jpg', '2013-12-29', 'đĩa', 0),
(8, 2, 'Gà quay', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Xu hướng ẩm thực của nhà hàng Anh Em khá đa dạng, tuy nhiên, nổi bật nhất vẫn là những món quay với hương vị mới như gà quay sầu riêng, gà quay bọc xôi...Xu hướng ẩm thực của nhà hàng Anh Em khá đa dạng, tuy nhiên, nổi bật nhất vẫn là những món quay với hương vị mới như gà quay sầu riêng, gà quay bọc xôi...', 25000, 0, 'nước ngọt, khăn lạnh', 'ImageHandler.ashx.jpg', '2013-12-29', 'đĩa', 0),
(9, 1, 'Mực xào thập cẩm', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Mực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩm', 180000, 5, 'nước ngọt, khăn lạnh', 'muc_xao_tham_cap.jpg', '2013-12-29', 'đĩa', 0),
(10, 1, 'Mực xào thập cẩm', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Mực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩm', 180000, 5, 'nước ngọt, khăn lạnh', 'muc_xao_tham_cap.jpg', '2013-12-29', 'đĩa', 0),
(11, 1, 'Cải làn xào tỏi', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏi', 70000, 0, 'nước ngọt, khăn lạnh', 'cai_lan_xao_toi.jpg', '2013-12-29', 'đĩa', 0),
(12, 3, 'Canh chua ngao', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Canh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngao', 90000, 0, 'nước ngọt, khăn lạnh', 'canh ngao.jpg', '2013-12-29', 'đĩa', 0),
(13, 2, 'Cơm tám', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'com_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpg', 25000, 0, 'nước ngọt, khăn lạnh', 'com_tam.jpg', '2013-12-29', 'đĩa', 0),
(14, 1, 'Xôi Hoàng Phố', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Xôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng Phố', 60000, 0, 'nước ngọt, khăn lạnh', 'xoi_hoang_pho.jpg', '2013-12-29', 'đĩa', 0),
(15, 2, 'Khăn lạnh', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Khăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnh', 2000, 0, 'nước ngọt, khăn lạnh', 'khen_lanh.jpg', '2013-12-29', 'đĩa', 0),
(16, 2, 'Dưa Vàng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Dưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa Vàng', 60000, 0, 'nước ngọt, khăn lạnh', 'dua_vang.jpg', '2013-12-29', 'đĩa', 0),
(17, 2, 'Nộm gà hoa chuối', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Nộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuối', 80000, 0, 'nước ngọt, khăn lạnh', 'nom_ga_hoa_chuoi.jpg', '2013-12-29', 'đĩa', 0),
(18, 3, 'Tôm sú nướng ngũ vị', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Tôm sú nướng ngũ vịTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị', 650000, 0, 'nước ngọt, khăn lạnh', 'tom_su_nuong_ngu_vi.jpg', '2013-12-29', 'đĩa', 0),
(19, 3, 'Gà nướng Phù Đổng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Gà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù Đổng', 280000, 0, 'nước ngọt, khăn lạnh', 'ga_nuong_phu_dong.JPG', '2013-12-29', 'đĩa', 0),
(20, 2, 'Bò xốt tiêu đen', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đen', 150000, 0, 'nước ngọt, khăn lạnh', 'bo_sot_tieu_den.jpg', '2013-12-30', 'đĩa', 0),
(21, 2, 'Cá Điêu hồng chiên xù', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cá Điêu hồng chiên xù\r\nCá Điêu hồng chiên xù\r\nCá Điêu hồng chiên xùCá Điêu hồng chiên xù\r\nCá Điêu hồng chiên xù\r\nCá Điêu hồng chiên xù', 2400000, 0, 'nước ngọt, khăn lạnh', 'ca_dieu_hong_chien_xu.jpg', '2013-12-30', 'đĩa', 0),
(22, 2, 'Ngô chiên', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Ngô chiênNgô chiênNgô chiênNgô chiênNgô chiên\r\nNgô chiênNgô chiên\r\nNgô chiên', 60000, 0, 'nước ngọt, khăn lạnh', 'ngochien.jpg', '2013-12-30', 'đĩa', 0),
(23, 2, 'Ngọn susu xào tỏi', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Ngọn susu xào tỏi Ngọn susu xào tỏi Ngọn susu xào tỏi\r\nNgọn susu xào tỏi Ngọn susu xào tỏi Ngọn susu xào tỏi', 45000, 0, 'nước ngọt, khăn lạnh', 'susu_xao_toi.jpg', '2013-12-30', 'đĩa', 0),
(24, 2, 'Canh bóng mọc thập cẩm', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Canh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩm\r\nCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩm\r\nCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩm', 60000, 0, 'nước ngọt, khăn lạnh', 'canh_bong_moc_thap_cam.jpg', '2013-12-30', 'đĩa', 0),
(25, 2, 'Cơm tám', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám \r\nCơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám \r\nCơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám ', 30000, 0, 'nước ngọt, khăn lạnh', 'com_tam_ga.jpg', '2013-12-30', 'đĩa', 0),
(26, 2, 'Xôi vò hạt sen', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Xôi vò hạt sen\r\nXôi vò hạt sen\r\nXôi vò hạt sen\r\nXôi vò hạt sen\r\nXôi vò hạt sen\r\nXôi vò hạt sen', 60000, 0, 'nước ngọt, khăn lạnh', 'xoi_vo_hat_sen.jpg', '2013-12-30', 'đĩa', 0),
(27, 2, 'Gỏi mướp đắng ruốc', 'Nguyên liệu\n\nMướp đắng: 2 quả, ruốc thịt heo: 50g, đá bào: 500g, nilon bọc đồ ăn, hoa cà rốt trang trí.', 'Cách chế biến\n\nMướp đắng rửa sạch, để ráo. Bổ đôi quả theo chiều dọc, sau đó xát thành từng lát mỏng 0,8 mm theo chiều ngang quả mướp. Đá cây bào mỏng, cho vào đĩa sâu lòng, bọc nilon mỏng kín mặt đĩa, xếp mướp đắng lên trên, trình bày cho đẹp mắt. Để khoảng 30 phút cho mướp mát lạnh. Nếu đã tan hết thì thay lượt đá khác với cách làm tương tự. Sau đó rắc ruốc thịt heo xé tơi lên trên.', 50000, 0, 'nước ngọt, khăn lạnh', 'goi muop dang ruoc.jpg', '2013-12-30', 'đĩa', 0),
(28, 2, 'Dưa hấu', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Dưa hấu Dưa hấuDưa hấu Dưa hấuDưa hấu Dưa hấuDưa hấu Dưa hấu\r\nDưa hấu Dưa hấuDưa hấu Dưa hấu', 50000, 0, 'nước ngọt, khăn lạnh', 'dua_hau.jpg', '2013-12-30', 'đĩa', 0),
(29, 2, 'Súp ngô cua', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua', 30000, 0, 'nước ngọt, khăn lạnh', 'sup_ngo_cua.jpg', '2013-12-30', 'đĩa', 0),
(30, 2, 'Salad Phù Đổng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng', 120000, 0, 'nước ngọt, khăn lạnh', 'salat.jpg', '2013-12-30', 'đĩa', 0),
(31, 2, 'Tôm sú rang muối tiêu', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Tôm sú rang muối tiêu\r\nTôm sú rang muối tiêu\r\nTôm sú rang muối tiêu\r\nTôm sú rang muối tiêu\r\nTôm sú rang muối tiêu\r\nTôm sú rang muối tiêu', 650000, 0, 'nước ngọt, khăn lạnh', 'tom_su_rang_muoi.jpg', '2013-12-30', 'đĩa', 1),
(32, 2, 'Gà nướng Phù Đổng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Gà nướng Phù Đổng\r\nGà nướng Phù Đổng\r\nGà nướng Phù Đổng\r\nGà nướng Phù Đổng\r\nGà nướng Phù Đổng\r\nGà nướng Phù Đổng', 280000, 0, 'nước ngọt, khăn lạnh', 'ga_nuong_pd.jpg', '2013-12-30', 'đĩa', 0),
(33, 2, 'Cua bấy chiên bơ', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cua bấy chiên bơ\r\nCua bấy chiên bơ\r\nCua bấy chiên bơ\r\nCua bấy chiên bơ\r\nCua bấy chiên bơ\r\nCua bấy chiên bơ', 70000, 0, 'nước ngọt, khăn lạnh', 'cua_bay_chien_bo.jpg', '2013-12-30', 'đĩa', 1),
(34, 2, 'Bò lúc lắc khoai tây', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bò lúc lắc khoai tây\r\nBò lúc lắc khoai tây\r\nBò lúc lắc khoai tây\r\nBò lúc lắc khoai tây\r\nBò lúc lắc khoai tây\r\nBò lúc lắc khoai tây', 150000, 0, 'nước ngọt, khăn lạnh', 'bo_luc_lac_khoai_tay.jpg', '2013-12-30', 'đĩa', 0),
(35, 2, 'Hoa lơ xanh xào tỏi', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Hoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi', 70000, 0, 'nước ngọt, khăn lạnh', 'bong_cai_xanh.png', '2013-12-30', 'đĩa', 1),
(36, 2, 'Canh mọc tôm cua', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Canh mọc tôm cua\r\nCanh mọc tôm cuaCanh mọc tôm cua', 32000, 0, 'nước ngọt, khăn lạnh', 'canh_moc_tom_cua.jpg', '2013-12-30', 'đĩa', 0),
(37, 2, 'Cơm chiên Hạnh Phúc', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc', 60000, 0, 'nước ngọt, khăn lạnh', 'com_hanh_phuc.jpg', '2013-12-30', 'đĩa', 0),
(38, 2, 'Bánh trưng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bánh trưng Bánh trưng\r\nBánh trưng Bánh trưng Bánh trưng\r\nBánh trưng Bánh trưng\r\nBánh trưng Bánh trưng Bánh trưng', 60000, 0, 'nước ngọt, khăn lạnh', 'banh_chung.jpg', '2013-12-30', 'đĩa', 0),
(39, 2, 'Kem Caramen', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Kem Caramen Kem Caramen Kem Caramen\r\nKem Caramen Kem Caramen Kem Caramen\r\nKem Caramen Kem Caramen Kem Caramen\r\nKem Caramen Kem Caramen Kem Caramen', 12000, 0, 'nước ngọt, khăn lạnh', 'kem-caramen.jpg', '2013-12-30', 'đĩa', 0),
(40, 2, 'Súp Hải sản', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Súp Hải sản Súp Hải sản Súp Hải sản\r\nSúp Hải sản Súp Hải sản Súp Hải sản\r\nSúp Hải sản Súp Hải sản Súp Hải sản', 50000, 0, 'nước ngọt, khăn lạnh', 'sup_hai_san.jpg', '2013-12-30', 'đĩa', 0),
(41, 2, 'Súp Hải sản', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Súp Hải sản Súp Hải sản Súp Hải sản\r\nSúp Hải sản Súp Hải sản Súp Hải sản\r\nSúp Hải sản Súp Hải sản Súp Hải sản', 50000, 0, 'nước ngọt, khăn lạnh', 'sup_hai_san.jpg', '2013-12-30', 'đĩa', 0),
(42, 2, 'Salad Cá Ngừ', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Salad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ', 98000, 0, 'nước ngọt, khăn lạnh', 'salad_ca_ngu.jpg', '2013-12-30', 'đĩa', 0),
(43, 2, 'Tôm sú hấp nước dừa', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Tôm sú hấp nước dừa\r\nTôm sú hấp nước dừa\r\nTôm sú hấp nước dừa\r\nTôm sú hấp nước dừa', 650000, 0, 'nước ngọt, khăn lạnh', 'tom_su_hap_nuoc_dua.jpg', '2013-12-30', 'đĩa', 0),
(44, 2, 'Gà hấp lá chanh', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Gà hấp lá chanh\r\nGà hấp lá chanh\r\nGà hấp lá chanh\r\nGà hấp lá chanh\r\nGà hấp lá chanh\r\nGà hấp lá chanh', 320000, 0, 'nước ngọt, khăn lạnh', 'ga_hap_la_canh.jpg', '2013-12-30', 'đĩa', 0),
(45, 2, 'Cá tầm nướng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng', 320000, 0, 'nước ngọt, khăn lạnh', 'ca_tam_nuong.jpg', '2013-12-30', 'đĩa', 0),
(46, 2, 'Bò Úc bít tết', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết', 220000, 0, 'nước ngọt, khăn lạnh', 'bo_uc_bit_tet.jpg', '2013-12-30', 'đĩa', 0),
(47, 2, 'Bò Úc bít tết', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết', 220000, 0, 'nước ngọt, khăn lạnh', 'bo_uc_bit_tet.jpg', '2013-12-30', 'đĩa', 0),
(48, 4, 'Rau cải chíp xào thịt hộp', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Rau cải chíp xào thịt hộp Rau cải chíp xào thịt hộp Rau cải chíp xào thịt hộp\r\nRau cải chíp xào thịt hộp Rau cải chíp xào thịt hộp Rau cải chíp xào thịt hộp', 80000, 0, 'nước ngọt, khăn lạnh', 'rau_cai_chip_vao_thit_hop.jpg', '2013-12-30', 'đĩa', 0),
(49, 5, 'Canh gà nấm tươi', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Canh gà nấm tươi Canh gà nấm tươi Canh gà nấm tươi\r\nCanh gà nấm tươi Canh gà nấm tươi Canh gà nấm tươi', 70000, 0, 'nước ngọt, khăn lạnh', 'canh_ga_nam_tuoi.jpg', '2013-12-30', 'đĩa', 0),
(50, 6, 'Cơm rang Hải sản', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cơm rang Hải sản Cơm rang Hải sản Cơm rang Hải sản\r\nCơm rang Hải sản Cơm rang Hải sản Cơm rang Hải sản', 80000, 0, 'nước ngọt, khăn lạnh', 'com_rang_hai_san.jpg', '2013-12-30', 'đĩa', 0),
(51, 6, 'Xôi lạp sườn', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Xôi lạp sườn Xôi lạp sườn Xôi lạp sườn\r\nXôi lạp sườn Xôi lạp sườn Xôi lạp sườn\r\nXôi lạp sườn Xôi lạp sườn Xôi lạp sườn', 60000, 0, 'nước ngọt, khăn lạnh', 'xoi_lap_suon.jpg', '2013-12-30', 'đĩa', 0),
(52, 6, 'Hoa quả thập cẩm', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Hoa quả thập cẩm Hoa quả thập cẩm Hoa quả thập cẩm\r\nHoa quả thập cẩm Hoa quả thập cẩm Hoa quả thập cẩm', 65000, 0, 'nước ngọt, khăn lạnh', 'hoa_qua_thap_cam.jpg', '2013-12-30', 'đĩa', 0),
(53, 4, 'Salat Tôm trái thơm', 'Tôm để làm salad nên chọn tôm tươi, thích nhất vẫn là loại tôm đang bơi lội tung tăng khi ra chợ', 'Nguyên liệu:\r\n\r\n* Nước trộn:\r\n\r\n- 80ml dấm gạo\r\n\r\n- 60ml xì dầu\r\n\r\n- 2 tbs mật ong\r\n\r\n- 1 tsp dầu vừng\r\n\r\n- 1 – 2 tsp gừng băm nhỏ\r\n\r\n- 4, 5 tép tỏi, băm nhỏ', 150000, 0, 'nước uống, khen lạnh', 'salad_tom_thai_thom.jpg', '2013-12-31', 'đĩa', 1),
(54, 4, 'Bào Ngư xào song nấm', 'Dùng nóng với cơm và chấm kèm nước tương. ', 'Nguyên liệu- 1 hộp bầu ngư - 10 tai nấm đông cô - 1 hủ hay 1 hộp măng tây - củ hành,- muối ,tiêu, bột bouillons de volaille ( hoặc bột ngọt ),- 1 muỗng súp dầu mè,- 1 muỗng súp dầu hào.- Dầu ăn- 1 muổng súp bột maïzenna - Chút ngò , hành lá ', 300000, 0, 'nước uống, khen lạnh', 'nam bao ngu xao toi.jpg', '2013-12-31', 'đĩa', 1),
(55, 4, 'Bào Ngư sốt dầu hào nguyên con', 'Đây là một món ăn ngon và bổ dưỡng,chế biến món ăn tốn khá nhiều thời gian cho khâu sơ chế và khâu nấu nướng,dưới đây là cách chế biến món bào ngư sốt dầu hào. ', 'Nguyên liệu:\r\n\r\n    Bào ngư 4 con\r\n    gà mái 1 con\r\n    thịt nạc 300g\r\n    sò điệp khô 3 con\r\n    Hành lá 1 tép\r\n    Nước dùng gà\r\n    jambon Kim Hoa 50g\r\n    dầu hào\r\n    dầu mè\r\n    bột năng\r\n    một miếng phên tre nếu không có thì dùng mấy chiếc xiên bằng tre', 250000, 0, 'nước uống, khen lạnh', 'bao_ngu_sot_dau_hao.jpg', '2013-12-31', 'đĩa', 1),
(56, 4, 'Bào Ngư om cải xanh', 'Nguyên liệu: 500g bào ngư Úc 300g rau cải xanh Nước xương gà, hành khô, gừng, mắm, muối, mì chính. ', 'YÊU CẦU THÀNH PHẨM:\r\n\r\nThơm ngon , nước trong mà vẫn ngọt đặc trưng. Có thể cho thêm nấm hương để tăng thêm độ hấp dẫn. Trang trí thêm hoa cà rốt cho bắt mắt.\r\n\r\nMón này dùng làm món khai vị (thay súp). ', 180000, 0, 'nước uống, khen lạnh', 'bao_ngu_om_cai_xanh.jpg', '2013-12-31', 'đĩa', 1),
(57, 4, 'Bào Ngư sốt nấm', 'Bắc nồi lên bếp, cho mỡ gà vào thắng lấy nước. ', 'Nguyên liệu:\r\n- 500g nấm hương\r\n- 2 chai nước bào ngư\r\n- 100g bông cải xanh\r\n- 300g nước dùng gà\r\n- 50g dầu hàu\r\n- 150g mỡ gà\r\n- 5g muối\r\n- 50g gừng, hành tây', 190000, 0, 'nước uống, khen lạnh', 'bao_ngu_sot_nam.jpg', '2013-12-31', 'đĩa', 1),
(58, 4, 'Gỏi mướp đắng ruốc', 'Mướp đắng ướp đá ruốc không chỉ là món ăn đơn giản, ngon miệng mà còn rất tốt cho sức khỏe. ', 'Nguyên liệu\r\n\r\nMướp đắng: 2 quả, ruốc thịt heo: 50g, đá bào: 500g, nilon bọc đồ ăn, hoa cà rốt trang trí.', 12000, 0, 'nước uống, khen lạnh', 'goi-kho-qua-muop-dang.jpg', '2013-12-31', 'đĩa', 1),
(59, 4, 'Nộm bò rau muống', 'Món này ăn rau muống giòn cực như ăn rau sống ý. Mùa hè ăn thế này thấy mát mát và mát mắt nữa vì đủ màu, xanh, đỏ, nâu, trắng. Thịt bò cũng chua chua ngọt ngọt. ', 'Nguyên liệu:\r\n\r\nRau muống: sơ mới ½ mớ\r\nGiá đỗ: 1 ít thôi\r\nCà rốt: thái mỏng dài bằng giá đỗ.\r\nThịt thăn bò, dứa ½ quả\r\nLạc rang giã dập\r\nMuối, cốt chanh, đường, ớt xay.', 80000, 0, 'nước uống, khen lạnh', 'nom_bo_rau_muong.jpg', '2013-12-31', 'đĩa', 1),
(60, 4, 'Nộm gà hoa chuối', 'Nộm gà hoa chuối làm không quá cầu kỳ nhưng để để món ăn có được nhiều hương vị phong phú, bạn cần chuẩn bị nhiều loại nguyên liệu khác nhau. ', 'Nguyên liệu: Thịt gà (lườn): 150 g, cà rốt bào sợi: một củ, hoa chuối: 300 g, chanh: một quả, đường: 3 thìa canh, giấm: 3 thìa canh, muối: 2 thìa cà phê, mắm: 2 thìa canh, lá chanh: 5 lá, hành tây: một củ, rau răm, tỏi, ớt, lạc, hành, tiêu, rau mùi, thơm, xà lách, cà chua.', 50000, 0, 'nước uống, khen lạnh', 'nom_ga_rau_chuoi.jpg', '2013-12-31', 'đĩa', 1),
(61, 6, 'Xôi gà', 'Nộm gà hoa chuối làm không quá cầu kỳ nhưng để để món ăn có được nhiều hương vị phong phú, bạn cần chuẩn bị nhiều loại nguyên liệu khác nhau. ', 'Nguyên liệu: Thịt gà (lườn): 150 g, cà rốt bào sợi: một củ, hoa chuối: 300 g, chanh: một quả, đường: 3 thìa canh, giấm: 3 thìa canh, muối: 2 thìa cà phê, mắm: 2 thìa canh, lá chanh: 5 lá, hành tây: một củ, rau răm, tỏi, ớt, lạc, hành, tiêu, rau mùi, thơm, xà lách, cà chua.', 25000, 0, 'nước ngọt, khăn lạnh', 'xoi_ga.jpg', '2014-01-03', 'đĩa', 1),
(62, 1, 'ốc bươu kho gừng ', 'Món ốc đậm đà thấm vị, thịt giòn ngọt, thơm và ấm vị gừng. Mùa mưa đang đến, ngồi bên mâm cơm gia đình với món Ốc bươu kho gừng thơm lừng sẽ giúp không khí cả gia đình bạn ấm cúng lắm đó.', 'Để chế biến món ăn này, chúng ta cần các nguyên liệu sau đây:\r\n- Ốc bươu bỏ phần ốc bùn phía dưới, xát thịt ốc với ít muối và ít giấm rửa sạch nhớt, để ráo. Ướp với 1m bột ngọt AJI-NO-MOTO®, 1M nước mắm, 1m giấm gạo lên men LISA, 2M hành tỏi băm, gừng sợi và ớt hiểm.\r\n- Gừng thái chỉ. Ớt hiểm đập dập.\r\nCách chế biến\r\n- Dùng tộ đất cho 1M dầu, 1M đường thắng caramel, thêm 1M dầu điều, cho ốc bươu vào xào săn, kho nhỏ lửa đến khi ốc vừa chín, nước kho cạn sệt.\r\nThưởng thức\r\n- Bày ra đĩa, dùng khi ', 50000, 0, '0', 'oc-buou-kho-gung.jpg', '2014-04-21', 'món', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_resource`
--

CREATE TABLE IF NOT EXISTS `role_resource` (
  `role` varchar(50) NOT NULL,
  `resource` varchar(100) NOT NULL,
  `allow` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_resource`
--

INSERT INTO `role_resource` (`role`, `resource`, `allow`) VALUES
('editor', 'mon_an_trong_ngay', 'index'),
('editor', 'tin_tuc', 'index,them,cap-nhat,xoa'),
('guest', 'mon_an', 'index'),
('guest', 'mon_an_trong_ngay', 'index'),
('staff', 'khach_hang', 'index,them,xoa,cap-nhat,chi-tiet'),
('staff', 'mon_an', 'index,them,xoa,cap-nhat'),
('staff', 'mon_an_trong_ngay', 'index'),
('staff', 'thuc_don', 'index,them-thuc-don,chi-tiet,them-mon,xoa,cap-nhat');

-- --------------------------------------------------------

--
-- Table structure for table `thuc_don`
--

CREATE TABLE IF NOT EXISTS `thuc_don` (
`ma_thuc_don` int(11) NOT NULL,
  `ten_thuc_don` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `don_gia` float NOT NULL,
  `don_gia_khuyen_mai` float NOT NULL DEFAULT '0',
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `hinh_thuc_don` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `thuc_don`
--

INSERT INTO `thuc_don` (`ma_thuc_don`, `ten_thuc_don`, `don_gia`, `don_gia_khuyen_mai`, `noi_dung`, `hinh_thuc_don`) VALUES
(1, 'Thực đơn 1', 1194000, 0, 'Súp Gà Ngô non, Nộm gà xé phay, Tôm sú chiên trà, Mực xào thập cẩm, Cải làn xào tỏi', 'thuc_don_1.jpg'),
(2, 'Thực đơn 2', 1327000, 0, 'Cải làn xào tỏi, Cơm tám, Xôi Hoàng Phố, Dưa Vàng, Nộm gà hoa chuối', 'thuc_don_2.jpg'),
(3, 'Thực đơn 3', 170600, 0, 'Tôm sú nướng ngũ vị, Gà nướng Phù Đổng, Bò xốt tiêu đen, Cá Điêu hồng chiên xù.', 'thuc_don_3.jpg'),
(4, 'Thực đơn 4', 2185000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_4.jpg'),
(5, 'Thực đơn 5', 2180000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_5.jpg'),
(6, 'Thực đơn 6', 2690000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_6.jpg'),
(7, 'Thực đơn 7', 2890000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_7.jpg'),
(8, 'Thực đơn 8', 1980000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_8.jpg'),
(9, 'Thực đơn 9', 1780000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_9.jpg'),
(10, 'Thực đơn 10', 1780000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_10.jpg'),
(11, 'Thực đơn 11', 1890000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_11.jpg'),
(12, 'Thực đơn 12', 1890000, 0, 'Các món ăn theo thực đơn đã chọn, chế biến ngon, đẹp, đầy đặn, phục vụ nóng<br>\nKhuyến mãi: khăn lạnh, món tráng miệng', 'thuc_don_12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `thuc_don_mon_an`
--

CREATE TABLE IF NOT EXISTS `thuc_don_mon_an` (
  `ma_thuc_don` int(11) NOT NULL,
  `ma_mon` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thuc_don_mon_an`
--

INSERT INTO `thuc_don_mon_an` (`ma_thuc_don`, `ma_mon`, `so_luong`) VALUES
(1, 3, 1),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 17, 1),
(2, 11, 1),
(2, 13, 1),
(2, 14, 1),
(2, 15, 1),
(2, 16, 1),
(2, 17, 1),
(3, 18, 1),
(3, 19, 1),
(3, 20, 1),
(3, 21, 1),
(3, 22, 1),
(3, 30, 1),
(4, 17, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(5, 18, 1),
(5, 28, 1),
(5, 29, 1),
(5, 31, 1),
(5, 32, 1),
(5, 33, 1),
(6, 18, 1),
(6, 34, 1),
(6, 35, 1),
(6, 36, 1),
(6, 37, 1),
(6, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 41, 1),
(7, 42, 1),
(7, 43, 1),
(7, 44, 1),
(8, 45, 1),
(8, 46, 1),
(8, 47, 1),
(8, 48, 1),
(8, 49, 1),
(8, 50, 1),
(9, 51, 1),
(9, 52, 1),
(9, 53, 1),
(9, 54, 1),
(9, 55, 1),
(9, 56, 1),
(10, 1, 1),
(10, 58, 1),
(10, 59, 1),
(10, 60, 1),
(10, 61, 1),
(10, 62, 1),
(11, 22, 1),
(11, 24, 1),
(11, 26, 1),
(11, 28, 1),
(11, 30, 1),
(11, 32, 1),
(12, 2, 1),
(12, 8, 1),
(12, 16, 1),
(12, 22, 1),
(12, 32, 1),
(12, 48, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE IF NOT EXISTS `tin_tuc` (
`ma_tin_tuc` int(11) NOT NULL,
  `tieu_de` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tom_tat` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `chi_tiet` text COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tac_gia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_dang` date NOT NULL,
  `ngay_gui` date NOT NULL,
  `so_luot_xem` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tin_tuc`, `tieu_de`, `tom_tat`, `chi_tiet`, `hinh`, `tac_gia`, `ngay_dang`, `ngay_gui`, `so_luot_xem`) VALUES
(1, 'Nấm kim châm xào thịt bò', '24/06/2011 - Nấm trắng, ớt đỏ, cần xanh, thịt bò nâu nhạt... đĩa nấm xào của bạn không chỉ ngon, bổ mà còn rất bắt mắt. ', 'Nấm trắng, ớt đỏ, cần xanh, thịt bò nâu nhạt... đĩa nấm xào của bạn không chỉ ngon, bổ mà còn rất bắt mắt.\r\n\r\nNgoài thành phần chủ yếu là protid như mọi loại nấm khác, nấm kim chi còn có các vitamin B1, B2, C, BB... chứa nhiều kẽm, kali, tốt cho những người mắc bệnh huyết áp; đồng thời có tác dụng phòng chống các bệnh gan mật, tiêu hóa.\r\n\r\nNấm kim chi chế biến rất đơn giản, lại có thể phối hợp với nhiều loại thực phẩm như xào với mực tươi, với tôm - thịt, thịt gà, thịt bò... Bạn có thể thử chế biến món thịt bò xào với nấm kim chi, một món ăn rất dễ làm, lại không tốn thời gian.\r\nKhẩu phần 2 người ăn chỉ cần 200g thịt bò (thịt bò phi lê càng ngon) và khoảng 200g nấm. Thịt bò ướp gia vị, xào chín tái, trút ra đĩa. Nấm cắt bỏ gốc, rửa với nước có pha chút muối, để ráo. Phi thơm dầu ăn với tỏi, cho nấm vào xào nhanh tay. Lưu ý: nấm rất mau chín, phải làm nhanh, nấm chín quá sẽ bị nhũn, ăn mất ngon và mất nhiều vitamin. Cho thịt bò vào nấm đảo lại một lần nữa rồi cho ra đĩa.\r\n\r\nTrang trí thêm cần tây cắt ngắn và vài lát ớt tươi. Dọn dùng nóng. Có thể chấm kèm với nước tương cho thêm đậm đà.\r\n\r\n                                                                                                    (Theo Phụ Nữ TP HCM)', '20110624152323nam.jpg', '(Theo Phụ Nữ TP HCM)', '2014-01-04', '0000-00-00', 1),
(2, 'Gà hấp lá sen', '24/06/2011 - Nấm trắng, ớt đỏ, cần xanh, thịt bò nâu nhạt... đĩa nấm xào của bạn không chỉ ngon, bổ mà còn rất bắt mắt. ', 'Nấm trắng, ớt đỏ, cần xanh, thịt bò nâu nhạt... đĩa nấm xào của bạn không chỉ ngon, bổ mà còn rất bắt mắt.\r\n\r\nNgoài thành phần chủ yếu là protid như mọi loại nấm khác, nấm kim chi còn có các vitamin B1, B2, C, BB... chứa nhiều kẽm, kali, tốt cho những người mắc bệnh huyết áp; đồng thời có tác dụng phòng chống các bệnh gan mật, tiêu hóa.\r\n\r\nNấm kim chi chế biến rất đơn giản, lại có thể phối hợp với nhiều loại thực phẩm như xào với mực tươi, với tôm - thịt, thịt gà, thịt bò... Bạn có thể thử chế biến món thịt bò xào với nấm kim chi, một món ăn rất dễ làm, lại không tốn thời gian.\r\nKhẩu phần 2 người ăn chỉ cần 200g thịt bò (thịt bò phi lê càng ngon) và khoảng 200g nấm. Thịt bò ướp gia vị, xào chín tái, trút ra đĩa. Nấm cắt bỏ gốc, rửa với nước có pha chút muối, để ráo. Phi thơm dầu ăn với tỏi, cho nấm vào xào nhanh tay. Lưu ý: nấm rất mau chín, phải làm nhanh, nấm chín quá sẽ bị nhũn, ăn mất ngon và mất nhiều vitamin. Cho thịt bò vào nấm đảo lại một lần nữa rồi cho ra đĩa.\r\n\r\nTrang trí thêm cần tây cắt ngắn và vài lát ớt tươi. Dọn dùng nóng. Có thể chấm kèm với nước tương cho thêm đậm đà.\r\n\r\n                                                                                                    (Theo Phụ Nữ TP HCM)', 'ga_hap_la_sen.jpg', '(Theo Phụ Nữ TP HCM)', '2014-01-04', '2014-01-04', 1),
(3, 'No mắt ở Ngày hội cây trái ngon', '24/06/2011 - 212 sản phẩm đặc trưng của vùng đồng bằng sông Cửu Long tham gia hội thi cây trái ngon tại Bến Tre hôm 7/6. ', '212 sản phẩm đặc trưng của vùng đồng bằng sông Cửu Long tham gia hội thi cây trái ngon tại Bến Tre hôm 7/6. Sầu riêng trĩu quả, khoai lang khổng lồ, trái dứa hình thù kỳ dị... dự đấu xảo (thi) hàng lạ. \r\n212 sản phẩm đặc trưng của vùng đồng bằng sông Cửu Long tham gia hội thi cây trái ngon tại Bến Tre hôm 7/6. Sầu riêng trĩu quả, khoai lang khổng lồ, trái dứa hình thù kỳ dị... dự đấu xảo (thi) hàng lạ. ', '20110624153825trai-cay-la-7-1.jpg', 'Phương Yến', '2014-01-04', '2014-01-04', 1),
(4, 'Thịt ngâm nước mắm', '\n\nMời xem thêm ở: Naungon.com - Nấu ăn và ẩm thực', 'Thịt ngâm nước mắm', 'thit_ngam_nuoc_mam.jpg', 'sass', '2014-01-04', '2014-01-04', 1),
(5, 'Mẹo vặt với hành tây', 'Mẹo vặt với hành tây', 'Mẹo vặt với hành tây', 'meo_vat_voi_hanh_tay.jpg', 'sddd', '2014-01-04', '2014-01-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `identitycard` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mobiphone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `birthdate`, `gender`, `address`, `email`, `identitycard`, `mobiphone`, `role`) VALUES
(33, 'thu', '202cb962ac59075b964b07152d234b70', 'Nguyễn Hoa Hồng', '1994-01-01', 0, 'Trần Hưng Đạo', 'thu@yahoo.com', '123456789', '123456789', 'editor'),
(32, 'hoa', '202cb962ac59075b964b07152d234b70', 'Trần Thị Hoa', '1995-01-01', 1, 'Lê Hồng Phong', 'hoa@gmail.com', '123456789', '123456789', 'staff'),
(31, 'an', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn An', '1995-01-01', 1, 'Lê Trọng Tấn', 'an@gmail.com', '123456789', '123456789', 'guest'),
(34, 'hoang', 'e10adc3949ba59abbe56e057f20f883e', 'duong ngoc hoang', '1977-09-08', 1, 'Đường 27, Sơn kỳ, Tân Phú', 'hoang@gmail.com', '255345', '345345', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
 ADD PRIMARY KEY (`ma_hoa_don`,`ma_mon`,`mon_thuc_don`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
 ADD PRIMARY KEY (`ma_hoa_don`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
 ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Indexes for table `loai_mon_an`
--
ALTER TABLE `loai_mon_an`
 ADD PRIMARY KEY (`ma_loai`);

--
-- Indexes for table `mon_an`
--
ALTER TABLE `mon_an`
 ADD PRIMARY KEY (`ma_mon`);

--
-- Indexes for table `role_resource`
--
ALTER TABLE `role_resource`
 ADD PRIMARY KEY (`role`,`resource`);

--
-- Indexes for table `thuc_don`
--
ALTER TABLE `thuc_don`
 ADD PRIMARY KEY (`ma_thuc_don`);

--
-- Indexes for table `thuc_don_mon_an`
--
ALTER TABLE `thuc_don_mon_an`
 ADD PRIMARY KEY (`ma_thuc_don`,`ma_mon`);

--
-- Indexes for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
 ADD PRIMARY KEY (`ma_tin_tuc`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
MODIFY `ma_khach_hang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `loai_mon_an`
--
ALTER TABLE `loai_mon_an`
MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mon_an`
--
ALTER TABLE `mon_an`
MODIFY `ma_mon` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `thuc_don`
--
ALTER TABLE `thuc_don`
MODIFY `ma_thuc_don` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
MODIFY `ma_tin_tuc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
