-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 11, 2023 lúc 06:05 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ma_bl` int(15) NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_bl` date NOT NULL,
  `id_sp` int(15) NOT NULL,
  `id_kh` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`ma_bl`, `noi_dung`, `ngay_bl`, `id_sp`, `id_kh`) VALUES
(1, 'sssss', '2023-12-10', 67, 2),
(2, 'rất tốt', '2023-12-10', 71, 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id_ctdh` int(15) NOT NULL,
  `id_dh` int(15) NOT NULL,
  `id_sp` int(15) NOT NULL,
  `giamua` int(15) NOT NULL,
  `soluong` int(15) NOT NULL,
  `thanhtien` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id_ctdh`, `id_dh`, `id_sp`, `giamua`, `soluong`, `thanhtien`) VALUES
(1, 3, 68, 77777, 1, 77777),
(2, 4, 68, 77777, 1, 77777),
(3, 5, 67, 40000, 1, 40000),
(4, 6, 70, 40000000, 1, 40000000),
(5, 7, 71, 0, 1, 0),
(6, 8, 70, 40000000, 4, 160000000),
(7, 9, 70, 40000000, 4, 160000000),
(8, 10, 71, 350000, 1, 350000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id_ctsp` int(15) NOT NULL,
  `id_sp` int(15) NOT NULL,
  `id_dm` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_dm` int(15) NOT NULL,
  `name_dm` varchar(225) NOT NULL,
  `anh_dm` varchar(225) NOT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_dm`, `name_dm`, `anh_dm`, `trangthai`) VALUES
(1, 'Bánh tráng', 'anh1.jpg', 0),
(2, 'Khô heo', 'images (5).jpg', 0),
(24, 'Khô gà', 'c5d0cdb425212b8c6d1bc287e7ffc5ce.jpg', 0),
(32, 'Mực kho', 'tải xuống (9).jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_dh` int(15) NOT NULL,
  `id_kh` int(15) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong_dh` int(20) NOT NULL,
  `ghi_chu` text NOT NULL,
  `trangthai` tinyint(4) NOT NULL COMMENT '0.Xác Nhận Đơn\r\n1.Đang Giao Hàng\r\n2.Đã Giao Hàng',
  `pttt` tinyint(4) NOT NULL COMMENT '0.Thanh Toán Khi Nhận Hàng\r\n1.Thanh Toán Từ Ví Paypal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id_dh`, `id_kh`, `ho_ten`, `email`, `dia_chi`, `phone`, `ngay_dat`, `tong_dh`, `ghi_chu`, `trangthai`, `pttt`) VALUES
(1, 0, '$ho_ten', '$email', '$dia_chi', 0, '0000-00-00', 0, '$ghi_chu', 0, 0),
(2, 0, 'ledung', 'dungldph@gmail.com', 'nguyen xa', 404030202, '0000-00-00', 3, 'hehe', 0, 0),
(3, 0, '', 'mai123@gamil.com', '', 584833883, '0000-00-00', 77777, '', 0, 0),
(4, 0, '', 'mai123@gamil.com', '', 584833883, '0000-00-00', 77777, 'nóng hổi', 0, 0),
(5, 0, 'mai', 'mai123@gamil.com', 'trịnh văn bô -Hà nội', 584833883, '2023-12-02', 40000, 'nóng hổi', 2, 0),
(6, 0, 'mai', 'mai123@gamil.com', 'trịnh văn bô -Hà nội', 584833883, '2023-12-03', 40000000, '', 0, 0),
(7, 0, 'mai', 'mai123@gamil.com', 'trịnh văn bô -Hà nội', 584833883, '2023-12-03', 0, '', 2, 0),
(8, 2, 'mai', 'mai123@gamil.com', 'trịnh văn bô -Hà nội', 584833883, '2023-12-10', 160000000, '', 0, 0),
(9, 2, 'mai', 'mai123@gamil.com', 'trịnh văn bô -Hà nội', 584833883, '2023-12-10', 160000000, '', 2, 0),
(10, 61, 'hoang', 'hoangthph33121@fpt.edu.vn', 'nguyên xá', 2147483647, '2023-12-11', 350000, 'tốt', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id_img` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_sp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(15) NOT NULL,
  `ten_sp` varchar(255) NOT NULL,
  `gia_sp` int(15) NOT NULL,
  `gia_sale` int(15) NOT NULL,
  `img_sp` varchar(255) NOT NULL,
  `size_sp` varchar(20) NOT NULL,
  `mota_sp` text NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `soluong` int(20) NOT NULL,
  `magiamgia` int(20) NOT NULL,
  `id_dm` int(15) NOT NULL,
  `yeuthich` int(15) NOT NULL,
  `mota_ct` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `ten_sp`, `gia_sp`, `gia_sale`, `img_sp`, `size_sp`, `mota_sp`, `trangthai`, `soluong`, `magiamgia`, `id_dm`, `yeuthich`, `mota_ct`) VALUES
(1, 'Bánh tráng', 32000, 40000, 'tải xuống (9).jpg', 'xl', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 20, 0, 24, 100, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọtBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(2, 'Bánh tráng', 32000, 40000, 'anh1.jpg', 'xl', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 20, 0, 1, 0, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọtBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(50, 'Bánh táng trộn', 30000, 50000, 'images (5).jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 2, 0, 1, 80, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọtBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(51, 'Mực khô', 20000, 40000, 'anh1.jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 2, 0, 1, 0, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọtBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(60, 'Khô gà ', 100000, 200000, 'images (4).jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 4, 0, 24, 100, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọtBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(62, 'Mực phơi', 20000, 30000, 'c5d0cdb425212b8c6d1bc287e7ffc5ce.jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 5, 0, 32, 0, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(63, 'Mực khơi', 20000, 30000, 'images (3).jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 2, 0, 32, 50, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọtBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(64, 'Gà rán', 200000, 300000, 'z4947866745978_8fcde30bfea005df015cc5fcb53d51ee.jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 3, 0, 2, 80, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọtBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(65, 'bánh cay', 400000, 200000, 'acer-aspire-3-a315-58-589k-i5-nxam0sv008-thumb-600x600.jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt thơm ngon.\nDùng ăn trực tiếp. Có thể kết hợp chấm sữa, các loại sốt phomai, cacao,..', 1, 2, 0, 1, 200, ''),
(67, 'Gà ủ muối', 20000, 300000, 'images (4).jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 5, 0, 24, 200, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt.Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(68, 'Gà ủ muối', 20000, 30000, 'images (3).jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 4, 0, 24, 400, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọtBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(70, 'Mực khô', 250000, 300000, 'images (5).jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 4, 0, 32, 300, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt.Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt'),
(71, 'Kho heo cháy', 350000, 400000, 'z4947866745978_8fcde30bfea005df015cc5fcb53d51ee.jpg', '', 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt', 0, 6, 0, 2, 20, 'Bánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt.\r\nBánh que có Hương vị thơm ngon mặn mặn ngọt ngọt, thơm, giòn, béo. và hấp dẫn, phù hợp với nhiều khẩu vị, đặc biệt là các em nhỏ. Sản phẩm được sản xuất trên quy trình chất lượng an toàn thực phẩm, mang đến sự an tâm cho người dùng. Hương vị bánh cá ngọt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthai`
--
-- Error reading structure for table du_an_1.trangthai: #1932 - Table &#039;du_an_1.trangthai&#039; doesn&#039;t exist in engine
-- Error reading data for table du_an_1.trangthai: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `du_an_1`.`trangthai`&#039; at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_kh` int(15) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` int(20) NOT NULL,
  `vai_tro` tinyint(4) NOT NULL,
  `phone` int(10) NOT NULL,
  `dia_chi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_kh`, `ten`, `email`, `pass`, `vai_tro`, `phone`, `dia_chi`) VALUES
(1, 'hoàng', 'hoangdev@fpt.com', 123, 1, 338629005, 'quỳnh châu quỳnh lưu nghệ an'),
(2, 'mai', 'mai123@gamil.com', 321, 0, 584833883, 'trịnh văn bô -Hà nội'),
(32, 'hoangchill', 'hoangthph33121@fpt.edu.vn', 123, 0, 2147483647, 'nguyên xá'),
(61, 'hoang', 'hoangthph33121@fpt.edu.vn', 11111, 0, 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ma_bl`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_ctdh`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id_ctsp`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_dh`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_img`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_kh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ma_bl` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id_ctdh` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id_ctsp` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_dm` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_dh` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `id_img` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_kh` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
