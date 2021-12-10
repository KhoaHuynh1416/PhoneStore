-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 14, 2021 lúc 03:52 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phonestore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `masp` varchar(10) NOT NULL,
  `mahd` varchar(10) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` float DEFAULT NULL,
  `thanhtien` float DEFAULT NULL,
  `tienkm` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`masp`, `mahd`, `soluong`, `dongia`, `thanhtien`, `tienkm`) VALUES
('sp001', 'hd001', 1, 19900000, 19900000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietkm`
--

CREATE TABLE `chitietkm` (
  `MaKM` varchar(8) CHARACTER SET utf8mb4 NOT NULL,
  `MaSP` varchar(8) CHARACTER SET utf8mb4 NOT NULL,
  `TiLeKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietkm`
--

INSERT INTO `chitietkm` (`MaKM`, `MaSP`, `TiLeKM`) VALUES
('KM01', 'sp001', 11),
('KM02', 'sp002', 10),
('KM03', 'sp003', 9),
('KM04', 'sp004', 8),
('KM05', 'sp005', 7),
('KM06', 'sp006', 6),
('KM07', 'sp007', 5),
('KM08', 'sp008', 4),
('KM09', 'sp009', 3),
('KM10', 'sp010', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MaPhieuNhap` varchar(20) DEFAULT NULL,
  `MaSanPham` varchar(20) DEFAULT NULL,
  `SoLuongNhap` int(11) NOT NULL,
  `DonGiaNhap` bigint(20) NOT NULL,
  `ThanhTien` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`MaPhieuNhap`, `MaSanPham`, `SoLuongNhap`, `DonGiaNhap`, `ThanhTien`) VALUES
('pn006', 'sp015', 3, 5290000, 15870000),
('pn007', 'sp014', 4, 1890000, 7560000),
('pn008', 'sp013', 2, 7990000, 15980000),
('pn009', 'sp012', 1, 13990000, 13990000),
('pn010', 'sp011', 4, 6290000, 25160000),
('pn011', 'sp010', 6, 5290000, 31740000),
('pn012', 'sp009', 3, 24990000, 74970000),
('pn013', 'sp008', 10, 9490000, 94900000),
('pn014', 'sp007', 12, 9490000, 113880000),
('pn015', 'sp006', 9, 13990000, 125910000),
('pn016', 'sp005', 7, 18990000, 132930000),
('pn017', 'sp004', 7, 9490000, 66430000),
('pn020', 'sp001', 10, 7990000, 63920000),
('pn021', 'sp002', 3, 38990000, 116970000),
('pn022', 'sp002', 1, 38990000, 38990000),
('pn023', 'sp006', 1, 17990000, 17990000),
('pn023', 'sp007', 1, 15990000, 15990000),
('pn023', 'sp001', 2, 19990000, 39980000),
('pn024', 'sp002', 2, 38990000, 77980000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` varchar(10) NOT NULL,
  `ngayxuat` date DEFAULT NULL,
  `makhachhang` varchar(10) DEFAULT NULL,
  `manhanvien` varchar(10) DEFAULT NULL,
  `tongtien` float DEFAULT NULL,
  `tongkm` float DEFAULT NULL,
  `tientra` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahoadon`, `ngayxuat`, `makhachhang`, `manhanvien`, `tongtien`, `tongkm`, `tientra`) VALUES
('hd001', '2020-11-01', 'kh001', 'nv001', 20980000, 1049000, 19931000),
('hd002', '2020-11-01', 'kh001', 'nv001', 20980000, 1049000, 19931000),
('hd003', '2020-11-01', 'kh002', 'nv003', 1390000, 0, 1390000),
('hd004', '2020-11-02', 'kh003', 'nv005', 20000000, 1500000, 18500000),
('hd005', '2020-11-02', 'kh004', 'nv002', 20980000, 1049000, 19931000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `initchooseid`
--

CREATE TABLE `initchooseid` (
  `MaSP` varchar(30) NOT NULL,
  `MaNCC` varchar(30) NOT NULL,
  `MaNSX` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `MaLoaiSP` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `initchooseid`
--

INSERT INTO `initchooseid` (`MaSP`, `MaNCC`, `MaNSX`, `MaNV`, `MaLoaiSP`) VALUES
('Chọn Mã Sản Phẩm', 'Chọn Mã Nhà Cung Cấp', 'Chọn Mã Nhà Sản Xuất', 'Chọn Mã Nhân Viên', 'Chọn Mã Loại Sản Phẩm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `TenKhachHang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `TenKhachHang`, `DiaChi`, `Email`, `SDT`) VALUES
('kh001', 'Lê Văn Minh', 'TP.HCM', 'kh001@gmail.com', '01020304050'),
('KH002', 'Nguyễn Thị Huệ', 'TP.HCM', 'kh002@gmail.com', '0213456789'),
('KH003', 'Trần Kim Tiên', 'TP.HCM', 'kh003@gmail.com', '09090988112'),
('KH004', 'Nguyễn Văn Bá', 'Hà Nội', 'kh004@gmail.com', '03211223344'),
('KH005', 'Nguyễn Hồ Nhật Nam', 'Hà Nội', 'kh005@gmail.com', '0102223311'),
('KH006', 'Nguyễn Thị Hoa', 'Hà Nội', 'kh006@gmail.com', '01012233445'),
('KH007', 'Lý Trung Kiên', 'Đà Nẵng', 'kh007@gmail.com', '02345678911'),
('KH008', 'Trần Minh Nhân', 'Huế', 'kh008@gmail.com', '0827273861'),
('KH009', 'Nguyễn Thành Nhân', 'Đà Nẵng', 'kh009@gmail.com', '0826263771'),
('KH010', 'Trần Đức Hải', 'Quảng Ngãi', 'kh010@gmail.com', '0837374612'),
('KH011', 'Ngô Đức Minh', 'Quảng Ninh', 'kh011@gmail.com', '08123422331'),
('KH012', 'Nguyễn Văn Minh', 'Huế', 'kh012@gmail.com', '0891923869'),
('KH013', 'Nguyễn Thị Hoa', 'Quảng Ninh', 'kh013@gmail.com', '08242630691'),
('KH014', 'Nguyễn Minh Nhân', 'TP.HCM', 'kh014@gmail.com', '0899223861'),
('KH015', 'Trần Như Ngọc', 'TP.HCM', 'kh015@gmail.com', '0801013452'),
('KH016', 'Nguyễn Thị Mỹ Ngọc', 'Hà Nội', 'kh016@gmail.com', '0844567879'),
('KH017', 'Hồ Thanh Sang', 'Đà Nẵng', 'kh017@gmail.com', '08012377012'),
('KH018', 'Nguyễn Văn An', 'TP.HCM', 'kh018@gmail.com', '0823867271'),
('KH019', 'Lê Thái Bình', 'Hà Nội', 'kh019@gmail.com', '0838612727'),
('KH020', 'Nguyễn Lâm Thái Hân', 'TP.HCM', 'kh020@gmail.com', '08238921200');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` varchar(8) CHARACTER SET utf8mb4 NOT NULL,
  `TenKM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayBD` datetime NOT NULL,
  `NgayKT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `NgayBD`, `NgayKT`) VALUES
('KM01', 'Haha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM02', 'Hihi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM03', 'Hoho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM04', 'Hehe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM05', 'Huhu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM06', 'HeHa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM07', 'Hoho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM08', 'Một chút thôi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM09', 'Một chút ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('KM10', 'Một chút mới mẻ', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoai` varchar(20) NOT NULL,
  `TenLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoai`, `TenLoai`) VALUES
('loai01', 'iPhone'),
('loai02', 'Nokia'),
('loai03', 'Samsung'),
('loai04', 'OPPO'),
('loai05', 'Xiaomi'),
('loai06', 'Vivo'),
('loai07', 'Realme'),
('loai08', 'OnePlus'),
('loai09', 'Vsmart'),
('loai10', 'OPPO'),
('loai11', 'Mobell'),
('loai12', 'Itel'),
('loai13', 'Masstel'),
('loai14', 'BlackBerry'),
('loai15', 'Energiner');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `TenNCC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`, `DiaChi`, `SDT`) VALUES
('ncc001', 'Hihi', 'Hà Nội', '19001880'),
('ncc002', 'Haha', 'TPHCM', '19001880'),
('ncc003', 'Hoho', 'Quảng Ngãi', '1905454'),
('ncc004', 'Hehe', 'Quảng Nam', '19005558'),
('ncc005', 'Huhu', 'Bình Định', '19005522'),
('ncc006', 'Lolo', 'Cà Mau', '19001887'),
('ncc007', 'Lala', 'Mỹ Tho', '19001880'),
('ncc008', 'Lili', 'Sơn La', '19001880'),
('ncc009', 'Lele', 'Thái Nguyên', '19001880'),
('ncc010', 'Lulu', 'Hải Phòng', '19001999');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `TenNhanVien` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `MaTaiKhoan` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Luong` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `TenNhanVien`, `DiaChi`, `Email`, `SDT`, `MaTaiKhoan`, `Luong`) VALUES
('NV001', 'Nguyễn Văn Tèo', 'TP.HCM', 'nv001@gmail.com', '0123456789', 'TK001', '7000000'),
('NV002', 'Trần Minh Long', 'Hà Nội', 'nv002@gmail.com', '08080808088', 'TK002', '7000000'),
('NV003', 'Lê Lâm Bá Long', 'TP.HCM', 'nv003@gmail.com', '06969698869', 'TK003', '3000000'),
('NV004', 'Nguyễn Thành Tài', 'TP.HCM', 'nv004@gmail.com', '03334449090', 'TK004', '5000000'),
('NV005', 'Nguyễn Minh Khôi', 'Hải Phòng', 'nv005@gmail.com', '0875421369', 'TK005', '5000000'),
('NV006', 'Lý Thanh Tú', 'Hà Nội', 'nv006@gmail.com', '0987654321', 'TK006', '9000000'),
('NV007', 'Trần Bách Học', 'Hà Nội', 'nv007@gmail.com', '9876543210', 'TK007', '6000000'),
('NV008', 'Nguyễn Trạng Nguyên', 'TP.HCM', 'nv008@gmail.com', '03244466678', 'TK008', '12000000'),
('NV009', 'Nguyễn Thị Thủy', 'Đà Nẵng', 'nv009@gmail.com', '09229221182', 'TK009', '12000000'),
('NV010', 'Lê Kim Liên', 'Quảng Ninh', 'nv010@gmail.com', '01221122121', 'TK010', '4500000'),
('NV011', 'Võ Văn Toàn', 'Quảng Ninh', 'nv011@gmail.com', '45454545454', 'TK011', '15000000'),
('NV012', 'Nguyễn Lý Thiên Kim', 'Hà Nội', 'nv012@gmail.com', '06666666666', 'TK012', '6000000'),
('NV013', 'Lý Hồng Ngọc', 'TP.HCM', 'nv013@gmail.com', '09131301390', 'TK013', '6000000'),
('NV014', 'Nguyễn Thị Lan', 'Quảng Ngãi', 'nv014@gmail.com', '01401401414', 'TK014', '6000000'),
('NV015', 'Trần Bích Trâm', 'TP.HCM', 'nv015@gmail.com', '15151515151', 'TK015', '6000000'),
('NV016', 'Lê Văn Thái', 'TP.HCM', 'nv016@gmail.com', '16161616161', 'TK016', '8000000'),
('NV017', 'Lê Thu Thảo', 'Hà Nội', 'nv017@gmail.com', '07707707700', 'TK017', '8000000'),
('NV018', 'Nguyễn Đức Thiện', 'TP.HCM', 'nv018@gmail.com', '06060606060', 'TK018', '15000000'),
('NV019', 'Nguyễn Thị Xoài', 'Hà Nội', 'nv019@gmail.com', '99999999999', 'TK019', '5000000'),
('NV020', 'Lê Hồng Sơn', 'Hải Phòng', 'nv020@gmail.com', '01010101101', 'TK020', '99999999');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasx`
--

CREATE TABLE `nhasx` (
  `mansx` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `TenSX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasx`
--

INSERT INTO `nhasx` (`mansx`, `TenSX`, `DiaChi`, `SDT`) VALUES
('nsx01', 'Apple', 'Hà Nội', '19001770'),
('nsx02', 'Samsung', 'TPHCM', '19001999'),
('nsx03', 'Vsmart', 'Hải Phòng', '19001111'),
('nsx04', 'Xiaomi', 'Hà Tĩnh', '19001880'),
('nsx05', 'OPPO', 'Bình Định', '19008762'),
('nsx06', 'Nokia', 'Cà Mau', '19001880'),
('nsx07', 'hihi', 'Huế', '19002146'),
('nsx08', 'hoho', 'Đà Nẵng', '19001880'),
('nsx09', 'huhu', 'Hà Tiên', '19001880'),
('nsx10', 'hehe', 'Cần Thơ', '19001880'),
('nsx11', '', '', ''),
('nsx12', '', '', ''),
('nsx13', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPhieuNhap` varchar(10) NOT NULL,
  `NgayNhap` datetime NOT NULL,
  `MaNCC` varchar(10) NOT NULL,
  `MaNhanVien` varchar(20) DEFAULT NULL,
  `TONGTIEN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MaPhieuNhap`, `NgayNhap`, `MaNCC`, `MaNhanVien`, `TONGTIEN`) VALUES
('pn006', '2020-10-06 00:00:00', 'ncc005', 'nv006', 29340000),
('pn007', '2020-10-07 00:00:00', 'ncc004', 'nv007', 21030000),
('pn008', '2020-10-08 00:00:00', 'ncc003', 'nv008', 29450000),
('pn009', '2020-10-09 00:00:00', 'ncc002', 'nv009', 27460000),
('pn010', '2020-10-10 00:00:00', 'ncc010', 'nv010', 38630000),
('pn011', '2020-10-11 00:00:00', 'ncc010', 'nv011', 45210000),
('pn012', '2020-10-12 00:00:00', 'ncc009', 'nv012', 88440000),
('pn013', '2020-10-13 00:00:00', 'ncc008', 'nv013', 108370000),
('pn014', '2020-10-14 00:00:00', 'ncc007', 'nv014', 127350000),
('pn015', '2020-10-15 00:00:00', 'ncc006', 'nv015', 139380000),
('pn016', '2020-10-16 00:00:00', 'ncc005', 'nv016', 146400000),
('pn017', '2020-10-17 00:00:00', 'ncc004', 'nv017', 79900000),
('pn020', '2020-11-23 22:32:47', 'ncc001', 'nv020', 66666666),
('pn021', '2020-12-17 11:17:41', 'ncc008', 'NV006', 116970000),
('pn022', '2020-12-17 13:12:21', 'ncc009', 'NV004', 38990000),
('pn023', '2020-12-17 13:14:03', 'ncc009', 'NV006', 73960000),
('pn024', '2021-03-11 09:41:50', 'ncc002', 'NV020', 77980000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(10) NOT NULL,
  `tensp` varchar(255) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` float DEFAULT NULL,
  `maloai` varchar(10) DEFAULT NULL,
  `mansx` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `soluong`, `dongia`, `maloai`, `mansx`) VALUES
('sp001', 'iPhone 11 64GB', 23, 19990000, 'loai01', 'nsx01'),
('sp002', 'iPhone 11 Pro Max 512GB', 34, 38990000, 'loai01', 'nsx01'),
('sp003', 'iPhone 11 Pro 256GB', 25, 31990000, 'loai01', 'nsx01'),
('sp004', 'iPhone 11 256GB\r\n', 13, 23990000, 'loai01', 'nsx01'),
('sp005', 'iPhone 11 128GB\r\n', 14, 21990000, 'loai01', 'nsx01'),
('sp006', 'iPhone Xs 64GB\r\n', 12, 17990000, 'loai01', 'nsx01'),
('sp007', 'Samsung Galaxy S20 FE\r\n', 20, 15990000, 'loai01', 'nsx02'),
('sp008', 'Samsung Galaxy A21s (6GB/64GB)\r\n', 20, 5290000, 'loai01', 'nsx02'),
('sp009', 'Samsung Galaxy Note 20 Ultra', 16, 24990000, 'loai01', 'nsx02'),
('sp010', 'Samsung Galaxy A11', 16, 3690000, 'loai01', 'nsx02'),
('sp011', 'Samsung Galaxy S10 Lite', 12, 12990000, 'loai01', 'nsx02'),
('sp013', 'Samsung Galaxy Note 10 Lite', 18, 10490000, 'loai01', 'nsx02'),
('sp014', 'Vsmart Aris (8GB/128GB)', 13, 7490000, 'loai01', 'nsx03'),
('sp015', 'Vsmart Joy 4 (4GB/64GB)', 10, 3590000, 'loai01', 'nsx03'),
('sp016', 'Vsmart Aris Pro', 10, 8990000, 'loai01', 'nsx03'),
('sp017', 'Vsmart Joy 4 (3GB/64GB)', 10, 3290000, 'loai01', 'nsx03'),
('sp018', 'Vsmart Live 4 4GB', 12, 4390000, 'loai01', 'nsx03'),
('sp019', 'Xiaomi Mi 10T Pro 5G', 10, 12990000, 'loai01', 'nsx04'),
('sp020', 'Xiaomi Redmi 9A', 10, 1990000, 'loai01', 'nsx04'),
('sp021', 'Xiaomi Redmi 9C (3GB/64GB)', 10, 2990000, 'loai01', 'nsx04'),
('sp022', 'Xiaomi Redmi 9 (3GB/32GB)', 10, 3590000, 'loai01', 'nsx04'),
('sp023', 'Xiaomi Redmi Note 8', 10, 3990000, 'loai01', 'nsx04'),
('sp024', 'OPPO A92', 10, 6490000, 'loai01', 'nsx05'),
('sp025', 'OPPO Reno3', -1, 8990000, 'loai01', 'nsx05'),
('sp026', 'OPPO A31 (4GB/128GB)', 10, 4990000, 'loai01', 'nsx05'),
('sp027', 'OPPO Find X2', 10, 19990000, 'loai01', 'nsx05'),
('sp028', 'Nokia 8.3 5G', 10, 11990000, 'loai01', 'nsx06'),
('sp029', 'Nokia C2', 10, 1490000, 'loai01', 'nsx06'),
('sp030', 'Nokia 2.4', 10, 2490000, 'loai01', 'nsx06'),
('sp031', 'Pin sạc dự phòng Lightning eSaver PJ JP188', 10, 722000, 'loai02', 'nsx07'),
('sp032', 'Pin sạc dự phòng Xmobile LA Y615N', 10, 455000, 'loai02', 'nsx08'),
('sp033', 'Pin sạc dự phòng Xmobile Atela 10', 10, 455000, 'loai02', 'nsx08'),
('sp034', 'Pin sạc dự phòng Xmobile PW37Y5B', 10, 455000, 'loai02', 'nsx08'),
('sp035', 'Tai nghe Bluetooth Roman Q5C', 10, 300000, 'loai03', 'nsx09'),
('sp036', 'Tai nghe Bluetooth Roman R553N', 10, 200000, 'loai06', 'nsx09'),
('sp037', 'Tai nghe Bluetooth Awei G51BS', 10, 450000, 'loai03', 'nsx10'),
('sp038', 'Tai nghe chụp tai Gaming MozardX DS902 7.1', 10, 792000, 'loai03', 'nsx11'),
('sp039', 'Adapter Sạc Type C 20W dùng cho iPhone/iPad Apple MHJE3', 10, 990000, 'loai04', 'nsx12'),
('sp040', 'Adapter Sạc Type C PD 20W Anker PowerPort III Nano A2633', 10, 400000, 'loai04', 'nsx13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `Password`, `role`) VALUES
('TK001', '12345678', 'admin'),
('TK002', '87654321', 'user'),
('TK003', 'abcdefgh', 'user'),
('TK004', 'iklmnopq', 'user'),
('TK005', '11223344', 'user'),
('TK006', '44332211', 'user'),
('TK007', '55667788', 'user'),
('TK008', '88776655', 'user'),
('TK009', '11335577', 'user'),
('TK010', '22446688', 'user'),
('TK011', '99999999', 'user'),
('TK012', '00000000', 'user'),
('TK013', '13131313', 'user'),
('TK014', '14141414', 'user'),
('TK015', 'nhanviena', 'user'),
('TK016', 'nhanvienb', 'user'),
('TK017', 'ketoan123', 'user'),
('TK018', 'thuquy69', 'user'),
('TK019', 'giamdoc0', 'user'),
('TK020', 'coder666', 'user'),
('TK021', 'iklmnopq', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`masp`,`mahd`),
  ADD KEY `FK_mahd` (`mahd`);

--
-- Chỉ mục cho bảng `chitietkm`
--
ALTER TABLE `chitietkm`
  ADD PRIMARY KEY (`MaKM`,`MaSP`),
  ADD KEY `FK_masp` (`MaSP`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD KEY `FK_mapn` (`MaPhieuNhap`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `FK_makh` (`makhachhang`),
  ADD KEY `FK_manv` (`manhanvien`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`),
  ADD KEY `MaTaiKhoan` (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `nhasx`
--
ALTER TABLE `nhasx`
  ADD PRIMARY KEY (`mansx`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPhieuNhap`),
  ADD KEY `FK_mancc` (`MaNCC`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `FK_maloai` (`maloai`),
  ADD KEY `FK_mansx` (`mansx`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `FK_mahd` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahoadon`),
  ADD CONSTRAINT `FK_masp1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `chitietkm`
--
ALTER TABLE `chitietkm`
  ADD CONSTRAINT `FK_makm` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `FK_masp` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK_mapn` FOREIGN KEY (`MaPhieuNhap`) REFERENCES `phieunhap` (`MaPhieuNhap`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_makh` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`),
  ADD CONSTRAINT `FK_manv` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`MaNhanVien`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_mancc` FOREIGN KEY (`MaNCC`) REFERENCES `nhacc` (`MaNCC`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_maloai` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`MaLoai`),
  ADD CONSTRAINT `FK_mansx` FOREIGN KEY (`mansx`) REFERENCES `nhasx` (`mansx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



--
-- Dumping routines for database 'phonestore'
--
/*!50003 DROP PROCEDURE IF EXISTS `getSanphamAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getSanphamAll`()
BEGIN
    SELECT * FROM sanpham;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSanphamByMaSP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getSanphamByMaSP`(IN mapd varchar(10))
BEGIN
    SELECT * FROM sanpham WHERE sanpham.masp = mapd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
