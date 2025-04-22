-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 07:10 AM
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
-- Database: `ktx`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietchuyenphong`
--

CREATE TABLE `chitietchuyenphong` (
  `MaDK` int(11) NOT NULL,
  `MaSV` bigint(20) NOT NULL,
  `MaPhongChuyen` varchar(10) DEFAULT NULL,
  `MaPhongO` varchar(20) DEFAULT NULL,
  `Lydo` varchar(300) DEFAULT NULL,
  `TinhTrang` varchar(20) DEFAULT NULL,
  `NgayChuyen` date DEFAULT NULL,
  `NgayDangKy` date DEFAULT current_timestamp(),
  `LanChuyen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitietchuyenphong`
--

INSERT INTO `chitietchuyenphong` (`MaDK`, `MaSV`, `MaPhongChuyen`, `MaPhongO`, `Lydo`, `TinhTrang`, `NgayChuyen`, `NgayDangKy`, `LanChuyen`) VALUES
(93, 20212915, 'A204', 'A304', 'Muốn ở đông', 'đã trả', '2023-12-01', '2023-12-01', 1),
(94, 161250533360, NULL, 'A204', NULL, 'đã trả', NULL, '2023-12-01', 0),
(95, 20212915, NULL, 'A103', NULL, 'đã trả', NULL, '2023-12-08', 0),
(96, 20212915, NULL, 'A204', NULL, 'đã trả', NULL, '2023-12-08', 0),
(97, 20212915, NULL, 'A204', NULL, 'đã trả', NULL, '2023-12-08', 0),
(98, 20212915, NULL, 'A103', NULL, 'đã trả', NULL, '2023-12-08', 0),
(99, 20212915, 'A204', 'A304', 'Muốn ở 6 người', 'đã trả', '2023-12-08', '2023-12-08', 1),
(101, 20212334, 'A103', 'A304', '4', 'đã duyệt', '2024-12-18', '2024-12-18', 2),
(102, 20212915, 'A303', 'A304', 'muon o 8 nguoi', 'đã trả', '2024-12-03', '2024-12-03', 2),
(103, 20212024, 'A304', 'A103', 'muốn ở 8', 'đã trả', '2024-11-03', '2024-11-03', 1),
(104, 20212024, NULL, 'A103', NULL, 'đã trả', NULL, '2024-11-17', 0),
(105, 171, NULL, 'A204', NULL, NULL, NULL, '2024-11-17', 0),
(106, 171, NULL, 'A103', NULL, 'đã trả', NULL, '2024-11-18', 0),
(107, 161250533360, NULL, 'A304', NULL, NULL, NULL, '2024-11-18', 0),
(108, 20212024, 'A103', 'A204', 'o 4 vui', 'đã duyệt', '2024-11-18', '2024-11-18', 1),
(109, 171, 'A103', 'A204', 'Muon o 4', 'đã trả', '2024-11-18', '2024-11-18', 1),
(111, 20212003, 'C201', 'C101', 'muốn ở 6', 'đã trả', '2024-11-24', '2024-11-24', 1),
(116, 20212003, NULL, 'C301', 'muon o 6 nguoi\r\n', NULL, NULL, '2025-03-16', 0),
(117, 171, 'A103', 'A304', '4', 'đã duyệt', '2024-12-18', '2024-12-18', 1),
(118, 20212915, NULL, 'A204', 'Muon o 8 nguoi', 'đã trả', NULL, '2024-12-18', 0),
(119, 20212915, NULL, 'A103', NULL, 'đã trả', NULL, '2024-12-18', 0),
(120, 20212915, NULL, 'A103', 'muon o 6 nguoi', 'đã trả', NULL, '2025-03-05', 0),
(121, 21102003, 'A204', 'A304', 'Muon o 6 nguoi', 'đã trả', '2025-02-15', '2025-02-15', 1),
(122, 20212915, NULL, 'A103', 'muon o 6 nguoi', NULL, NULL, '2025-03-16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdangky`
--

CREATE TABLE `chitietdangky` (
  `MaDK` int(11) NOT NULL,
  `MaSV` bigint(11) NOT NULL,
  `MaPhong` varchar(10) NOT NULL,
  `MaNV` varchar(20) DEFAULT NULL,
  `NgayDangKy` date NOT NULL DEFAULT current_timestamp(),
  `NgayTraPhong` date DEFAULT NULL,
  `TinhTrang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitietdangky`
--

INSERT INTO `chitietdangky` (`MaDK`, `MaSV`, `MaPhong`, `MaNV`, `NgayDangKy`, `NgayTraPhong`, `TinhTrang`) VALUES
(93, 20212915, 'A204', 'NV1', '2023-12-01', '2023-12-08', 'đã duyệt'),
(94, 161250533360, 'A204', 'NV1', '2023-12-01', '2024-11-18', 'đã duyệt'),
(95, 20212915, 'A103', 'NV1', '2023-12-08', '2023-12-08', 'đã duyệt'),
(96, 20212915, 'A204', 'NV1', '2023-12-08', '2023-12-08', 'đã duyệt'),
(97, 20212915, 'A204', 'NV1', '2023-12-08', '2023-12-08', 'đã duyệt'),
(98, 20212915, 'A103', 'NV1', '2023-12-08', '2023-12-08', 'đã duyệt'),
(99, 20212915, 'A204', 'NV1', '2023-12-08', '2023-12-13', 'đã duyệt'),
(101, 20212334, 'A103', 'NV1', '2023-12-08', NULL, 'đã duyệt'),
(102, 20212915, 'A303', 'NV1', '2023-12-13', '2024-12-03', 'đã duyệt'),
(103, 20212024, 'A304', 'NV1', '2024-11-03', '2024-11-03', 'đã duyệt'),
(104, 20212024, 'A103', 'NV1', '2024-11-17', '2024-11-18', 'đã duyệt'),
(105, 171, 'A204', 'NV1', '2024-11-17', '2024-11-18', 'đã duyệt'),
(106, 171, 'A103', 'NV1', '2024-11-18', '2024-11-18', 'đã duyệt'),
(107, 161250533360, 'A304', 'NV1', '2024-11-18', NULL, 'đã duyệt'),
(108, 20212024, 'A103', 'NV1', '2024-11-18', NULL, 'đã duyệt'),
(109, 171, 'A103', 'NV1', '2024-11-18', '2024-11-24', 'đã duyệt'),
(111, 20212003, 'C201', 'NV1', '2024-11-24', '2024-11-24', 'đã duyệt'),
(116, 20212003, 'C301', 'NV1', '2024-11-24', NULL, 'đã duyệt'),
(117, 171, 'A103', 'NV1', '2024-11-24', NULL, 'đã duyệt'),
(118, 20212915, 'A204', 'NV1', '2024-12-18', '2024-12-18', 'đã duyệt'),
(119, 20212915, 'A103', 'NV1', '2024-12-18', '2024-12-18', 'đã duyệt'),
(120, 20212915, 'A103', 'NV1', '2024-12-18', '2025-03-11', 'đã duyệt'),
(121, 21102003, 'A204', 'NV1', '2025-02-15', '2025-02-15', 'đã duyệt'),
(122, 20212915, 'A103', 'NV1', '2025-03-11', NULL, 'đã duyệt');

-- --------------------------------------------------------

--
-- Table structure for table `hoadondiennuoc`
--

CREATE TABLE `hoadondiennuoc` (
  `MaHD` int(11) NOT NULL,
  `MaPhong` varchar(20) NOT NULL,
  `TienDien` decimal(10,0) NOT NULL,
  `TienNuoc` decimal(10,0) NOT NULL,
  `Thang` int(11) NOT NULL,
  `TinhTrang` varchar(20) NOT NULL DEFAULT 'chưa thu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `hoadondiennuoc`
--

INSERT INTO `hoadondiennuoc` (`MaHD`, `MaPhong`, `TienDien`, `TienNuoc`, `Thang`, `TinhTrang`) VALUES
(23, 'A103', 1000000, 2000000, 12, 'đã thu'),
(20, 'A304', 1000000, 100000, 10, 'đã thu'),
(19, 'A304', 100000, 50000, 12, 'đã thu'),
(21, 'C301', 1000000, 100000, 11, 'đã thu');

-- --------------------------------------------------------

--
-- Table structure for table `khu`
--

CREATE TABLE `khu` (
  `MaKhu` varchar(10) NOT NULL,
  `TenKhu` varchar(20) NOT NULL,
  `Sex` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khu`
--

INSERT INTO `khu` (`MaKhu`, `TenKhu`, `Sex`) VALUES
('A', 'Khu A', 'Nam'),
('B', 'Khu B', 'Nam'),
('C', 'Khu C', 'Nữ'),
('D', 'Khu D', 'Nữ');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(50) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `SDT` bigint(12) DEFAULT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Quyen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `HoTen`, `NgaySinh`, `DiaChi`, `SDT`, `MatKhau`, `Quyen`) VALUES
('NV1', 'Nhân Viên A', '2003-02-22', 'Đà Nẵng', 123456789, '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `MaPH` int(11) NOT NULL,
  `sinhvien_email` varchar(255) NOT NULL,
  `DanhMuc` varchar(100) NOT NULL,
  `SV_NoiDung` text NOT NULL,
  `NgayTao` date DEFAULT current_timestamp(),
  `TrangThai` varchar(50) DEFAULT 'Đang xử lý',
  `NV_NoiDung` text DEFAULT NULL,
  `NgayPhanHoi` date DEFAULT NULL,
  `MaNV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaSV` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phanhoi`
--

INSERT INTO `phanhoi` (`MaPH`, `sinhvien_email`, `DanhMuc`, `SV_NoiDung`, `NgayTao`, `TrangThai`, `NV_NoiDung`, `NgayPhanHoi`, `MaNV`, `MaSV`) VALUES
(5, 'manh201510@gmail.com', 'Khác', 'Còn 52 đơn vị hành chính cấp tỉnh thuộc diện phải sắp xếp gồm 4 thành phố là: Hải Phòng, TPHCM, Đà Nẵng, Cần Thơ và 48 tỉnh là: Hà Nam, Hưng Yên, Vĩnh Phúc, Bắc Ninh, Thái Bình, Hải Dương, Nam Định, Ninh Bình, Bắc Kạn, Thái Nguyên, Phú Thọ, Bắc Giang, Hòa Bình, Tuyên Quang, Lào Cai, Yên Bái, Hà Giang, Ninh Thuận, Quảng Trị, Phú Yên, Quảng Bình, Quảng Ngãi, Khánh Hòa, Đắk Nông, Tây Ninh, Bình Dương, Bình Thuận, Bình Phước, Bà Rịa - Vũng Tàu, Bến Tre, Bạc Liêu, Vĩnh Long, Hậu Giang, Trà Vinh, Tiền Giang, Sóc Trăng, Đồng Tháp, An Giang, Long An, Cà Mau, Quảng Nam, Bình Định, Đắk Lắk, Đồng Nai, Gia Lai, Kon Tum, Lâm Đồng, Kiên Giang.', '2025-03-26', 'Đã phản hồi', 'Test', '2025-03-26', 'NV1', 20212915),
(6, 'nguyennhatmanh.a1md.k2003@gmail.com', 'Cơ sở vật chất', 'Test email', '2025-03-26', 'Đã phản hồi', 'hehehehe', '2025-03-26', 'NV1', 20212915),
(7, 'nguyennhatmanh.a1md.k2003@gmail.com', 'Cơ sở vật chất', 'Bàn trong phòng bị hỏng cần được sửa', '2025-03-26', 'Đang xử lý', NULL, NULL, NULL, 20212915),
(8, 'nguyennhatmanh.a1md.k2003@gmail.com', 'Khác', 'Sống ở ký túc xá có những điểm tốt và điểm chưa tốt. Tôi đánh giá cao sự tiện lợi và chi phí hợp lý, nhưng đôi khi tôi cảm thấy mệt mỏi vì sự ồn ào và thiếu không gian cá nhân. Nhìn chung, đó là một trải nghiệm đáng nhớ, nhưng có lẽ tôi sẽ tìm kiếm một lựa chọn khác trong tương lai.', '2025-03-26', 'Đã phản hồi', 'Cảm ơn bạn', '2025-03-26', 'NV1', 20212003),
(9, 'nguyennhatmanh.a1md.k2003@gmail.com', 'Tiền phòng', 'Tiền phòng đắt quá', '2025-03-26', 'Đã phản hồi', 'Tiền phòng không thể thay đổi, thắc mắc lên KTX', '2025-03-26', 'NV1', 20212915),
(10, 'nguyennhatmanh.a1md.k2003@gmail.com', 'Tiền phòng', 'Tien phong dat qua', '2025-03-26', 'Đã phản hồi', 'Tien phong khong duoc thay doi', '2025-03-26', 'NV1', 20212915),
(11, 'quanvu41003@gmail.com', 'Khác', 'Quan ga', '2025-03-26', 'Đã phản hồi', 'Quan ga la chuan r', '2025-03-26', 'NV1', 20212915);

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `MaPhong` varchar(10) NOT NULL,
  `MaKhu` varchar(10) NOT NULL,
  `SoNguoiToiDa` int(2) DEFAULT NULL,
  `SoNguoiHienTai` int(2) DEFAULT 0,
  `Gia` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`MaPhong`, `MaKhu`, `SoNguoiToiDa`, `SoNguoiHienTai`, `Gia`) VALUES
('A103', 'A', 4, 4, 1250000),
('A201', 'A', 6, 0, 800000),
('A202', 'A', 6, 0, 800000),
('A203', 'A', 6, 0, 800000),
('A204', 'A', 6, 0, 800000),
('A301', 'A', 8, 0, 600000),
('A302', 'A', 8, 0, 600000),
('A303', 'A', 8, 0, 600000),
('A304', 'A', 8, 1, 600000),
('B201', 'B', 8, 0, 600000),
('B202', 'B', 6, 0, 800000),
('B203', 'B', 6, 0, 800000),
('B301', 'B', 8, 0, 600000),
('B302', 'B', 8, 0, 600000),
('B303', 'B', 8, 0, 600000),
('C101', 'C', 4, 0, 1250000),
('C102', 'C', 4, 0, 1250000),
('C201', 'C', 6, 0, 800000),
('C202', 'C', 6, 0, 800000),
('C301', 'C', 8, 1, 600000),
('C302', 'C', 8, 0, 600000),
('D101', 'D', 4, 0, 1250000),
('D102', 'D', 4, 0, 1250000),
('D201', 'D', 6, 0, 800000),
('D202', 'D', 6, 0, 800000),
('D301', 'D', 8, 0, 600000),
('D302', 'D', 8, 0, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` bigint(50) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `SDT` bigint(12) DEFAULT NULL,
  `MatKhau` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `HoTen`, `GioiTinh`, `NgaySinh`, `DiaChi`, `SDT`, `MatKhau`) VALUES
(171, 'Hoàng', 'Nam', '2024-11-29', 'Hà Nội', 232874753, '123456'),
(232323, 'tttt', 'Nam', '2025-03-04', 'Hà Nội', 329529596, '123456'),
(20212003, 'Thủy', 'Nữ', '2024-11-01', 'Quảng Ninh', 326565484, '123456'),
(20212024, 'test', 'Nam', '2024-11-21', 'Quảng Ninh', 32659722, '123456'),
(20212334, 'Nguyễn Văn Minh', 'Nam', '2003-06-18', 'Hà Nội', 32548979, 'minhdz123'),
(20212915, 'Nguyễn Nhật Mạnh', 'Nam', '2003-10-20', 'Quảng Ninh', 329529596, 'manhdz123'),
(21102003, 'Quan Vu', 'Nam', '2003-10-04', 'Quảng Ninh', 967263389, '123456'),
(161250533360, 'Nguyễn Đình Trí', 'Nam', '1998-07-25', '1092 Trường Chinh Đà Nẵng', 7789237432, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE `thongbao` (
  `MaTB` int(11) NOT NULL,
  `MaSV` bigint(20) NOT NULL,
  `MaNV` varchar(20) NOT NULL,
  `TieuDe` varchar(100) NOT NULL,
  `NoiDung` varchar(500) NOT NULL,
  `LoaiTB` varchar(10) DEFAULT NULL,
  `NgayTB` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `thongbao`
--

INSERT INTO `thongbao` (`MaTB`, `MaSV`, `MaNV`, `TieuDe`, `NoiDung`, `LoaiTB`, `NgayTB`) VALUES
(37, 161250533360, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A104. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2019-12-25 15:12:29. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2019-12-22'),
(41, 161250533360, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : C101. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2019-12-25 15:14:18. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2019-12-22'),
(46, 161250533360, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : C203. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2019-12-25 15:17:15. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2019-12-22'),
(51, 161250533360, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : C102. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2019-12-25 15:25:33. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2019-12-22'),
(56, 161250533360, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2019-12-22'),
(71, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A304. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-4 3:13:52. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-01'),
(72, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-4 3:16:1. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2023-12-01'),
(73, 161250533360, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-4 3:17:42. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-01'),
(74, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2023-12-08'),
(75, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-11 4:36:59. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-08'),
(76, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2023-12-08'),
(77, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-11 5:18:38. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-08'),
(78, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2023-12-08'),
(79, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-11 5:27:14. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-08'),
(80, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2023-12-08'),
(81, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-11 5:41:46. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-08'),
(82, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2023-12-08'),
(83, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A304. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-11 6:5:38. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-08'),
(84, 20212334, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-11 6:34:1. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-08'),
(85, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Chuyển Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2023-12-08'),
(86, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-11 7:0:56. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2023-12-08'),
(87, 20212334, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A304. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-11 17:40:44. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2023-12-08'),
(88, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2023-12-13'),
(89, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2023-12-16 10:6:2. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2023-12-13'),
(90, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Chuyển Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2023-12-28'),
(91, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A304. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-10-32 15:48:5. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2024-10-29'),
(92, 20212024, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-6 16:44:2. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-03'),
(93, 20212024, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A304. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-6 17:4:13. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2024-11-03'),
(94, 20212024, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-11-03'),
(95, 20212024, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-20 18:31:24. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-17'),
(96, 171, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-20 19:56:42. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-17'),
(97, 161250533360, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-11-18'),
(98, 171, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-21 15:27:53. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-18'),
(99, 161250533360, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A304. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-21 15:39:41. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-18'),
(100, 171, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-11-18'),
(101, 20212024, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-11-18'),
(102, 20212024, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-21 15:47:46. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-18'),
(103, 171, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-21 15:48:2. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-18'),
(104, 20212024, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-21 15:50:40. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2024-11-18'),
(105, 171, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-21 15:51:35. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2024-11-18'),
(106, 20212003, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Đăng Ký Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2024-11-24'),
(107, 20212003, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : C101. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-27 13:57:0. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-24'),
(108, 20212003, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : C201. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-27 13:57:53. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2024-11-24'),
(109, 20212003, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-11-24'),
(110, 20212003, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Đăng Ký Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2024-11-24'),
(111, 20212003, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Đăng Ký Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2024-11-24'),
(112, 171, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2024-11-24'),
(113, 171, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-11-24'),
(114, 171, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Đăng Ký Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2024-11-24'),
(115, 20212003, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : C301. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-27 14:32:58. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-24'),
(116, 171, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A304. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-11-27 14:32:59. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-11-24'),
(117, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A303. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-12-6 9:57:48. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2024-12-03'),
(118, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-12-03'),
(119, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-12-21 7:16:15. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-12-18'),
(120, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Chuyển Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2024-12-18'),
(121, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-12-18'),
(122, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-12-21 7:19:43. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-12-18'),
(123, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2024-12-18'),
(124, 171, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-12-21 7:35:21. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2024-12-18'),
(125, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-12-21 7:36:17. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2024-12-18'),
(126, 20212334, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2024-12-21 7:37:1. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2024-12-18'),
(127, 21102003, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A304. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2025-2-18 15:57:24. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2025-02-15'),
(128, 21102003, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Bạn đã chuyển phòng thành công ! Phòng : A204. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2025-2-18 15:59:44. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'chuyển ph', '2025-02-15'),
(129, 21102003, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã Trả phòng thành công. Xin Cảm ơn !!!', 'trả phòn', '2025-02-15'),
(130, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Chuyển Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2025-03-05'),
(131, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. Lý do: chỉ được trả phòng trong khoảng thời gian từ ngày 28 - 31 (cuối tháng). Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2025-03-11'),
(132, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. Lý do: chỉ được trả phòng trong khoảng thời gian từ ngày 28 - 31 (cuối tháng). Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2025-03-11'),
(133, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. Lý do: chỉ được trả phòng trong khoảng thời gian từ ngày 28 - 31 (cuối tháng). Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2025-03-11'),
(134, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Bạn đã trả phòng thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng trả trước ngày 2025-3-14 19:54:31. Nếu không lên trả tiền phòng đã trả thì hệ thống sẽ thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'trả phòn', '2025-03-11'),
(135, 20212915, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Bạn đã đăng ký thành công ! Phòng : A103. Vui lòng lên ký túc xá để thanh toán tiền phòng và nhận phòng trước ngày 2025-3-14 19:55:3. Nếu không lên nhận phòng hệ thống sẽ hủy phòng của bạn và thêm bạn vào danh sách Xấu. Xin Cảm ơn !!!', 'đăng ký', '2025-03-11'),
(136, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. Lý do: chỉ được trả phòng trong khoảng thời gian từ ngày 28 - 31 (cuối tháng). Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2025-03-16'),
(137, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. Lý do: Chỉ được trả phòng trong khoảng thời gian 29-30 cuối tháng. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2025-03-16'),
(138, 20212003, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. Lý do: Không được hủy trong thời gian này vì chưa thanh toán tiền. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2025-03-16'),
(139, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. Lý do: Chưa trả tiền phòng và tiền điện nước. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2025-03-16'),
(140, 20212003, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Chuyển Phòng của bạn đã bị hủy. Lý do: Phải thanh toán tiền phòng cũ trước khi đăng ký chuyển phòng. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2025-03-16'),
(141, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Chuyển Phòng của bạn đã bị hủy. Lý do: Phải thanh toán tiền phòng cũ trước khi chuyển phòng. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2025-03-16'),
(142, 21102003, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Đăng Ký Phòng của bạn đã bị hủy. Lý do: Thông tin sinh viên chưa hợp lệ. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2025-03-16'),
(143, 20212915, 'NV1', 'Thông Báo Trả Phòng Ký Túc Xá', 'Trả Phòng của bạn đã bị hủy. Lý do: Phai thanh toan tien phong ttruoc khi tra. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'trả phòng', '2025-03-19'),
(144, 21102003, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Đăng Ký Phòng của bạn đã bị hủy. Lý do: Het phong roi khong dang ky duoc. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2025-03-19'),
(145, 232323, 'NV1', 'Thông Báo Đăng Ký Phòng Ký Túc Xá', 'Đăng Ký Phòng của bạn đã bị hủy. Lý do: Không đủ điều kiện. Vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2025-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTT` int(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `NgayDang` date NOT NULL,
  `MaNV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TrangThai` enum('hienthi','an','','') NOT NULL,
  `Anh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`MaTT`, `TieuDe`, `NoiDung`, `NgayDang`, `MaNV`, `TrangThai`, `Anh`) VALUES
(1, 'Thông báo về việc bảo trì hệ thống nước nóng', 'Kính gửi các bạn sinh viên,\r\nBan quản lý ký túc xá xin thông báo, hệ thống nước nóng của tòa nhà A sẽ được tạm ngừng hoạt động để bảo trì định kỳ vào ngày 15/11/2023, từ 8h00 đến 17h00.\r\nMong các bạn sinh viên thông cảm và sắp xếp thời gian sinh hoạt phù hợp.\r\nXin cảm ơn!', '2025-03-24', 'NV1', 'hienthi', 'Tintuc-4919.jpg'),
(2, 'Tuyển во tình nguyện viên cho chương trình ', 'Câu lạc bộ tình nguyện ký túc xá đang tuyển во tình nguyện viên cho chương trình \"Mùa đông ấm áp\" hỗ trợ trẻ em vùng cao.\r\nThời gian đăng ký: Đến hết ngày 22/11/2023.\r\nLiên hệ: Bạn A (SĐT: 0123456789) để biết thêm chi tiết.\r\nHãy cùng chung tay mang đến một mùa đông ấm áp cho các em nhỏ!', '2025-03-24', 'NV1', 'hienthi', 'Tintuc-8992.png'),
(3, 'Thông báo lịch kiểm tra phòng cháy chữa cháy', 'Để đảm bảo an toàn cho sinh viên, Ban quản lý ký túc xá sẽ tiến hành kiểm tra hệ thống phòng cháy chữa cháy vào ngày 25/11/2023.\r\nLịch kiểm tra cụ thể sẽ được thông báo tại bảng tin của từng tầng.\r\nĐề nghị các bạn sinh viên phối hợp và tạo điều kiện thuận lợi cho việc kiểm tra.', '2025-03-24', 'NV1', 'hienthi', 'Tintuc-5234.jpg'),
(4, 'Cuộc thi \"Góc phòng xanh - sạch - đẹp\"', 'Nhằm tạo môi trường sống xanh, sạch, đẹp và nâng cao ý thức bảo vệ môi trường cho sinh viên, Ban quản lý ký túc xá tổ chức cuộc thi \"Góc phòng xanh - sạch - đẹp\".\r\nThời gian đăng ký: Từ ngày 20/11/2023 đến ngày 30/11/2023.\r\nThời gian chấm thi: Ngày 05/12/2023.\r\nGiải thưởng hấp dẫn đang chờ đón các bạn!\r\nChi tiết xem tại bảng tin ký túc xá.', '2025-03-24', 'NV1', 'hienthi', 'Tintuc-2850.jpg'),
(5, 'Thông báo về việc điều chỉnh giờ giới nghiêm', 'Nhằm đảm bảo an ninh trật tự và tạo điều kiện cho sinh viên có thời gian học tập, nghỉ ngơi hợp lý, Ban quản lý ký túc xá điều chỉnh giờ giới nghiêm từ 23h00 thành 23h30, bắt đầu từ ngày 18/11/2023.\r\nĐề nghị các bạn sinh viên thực hiện nghiêm túc quy định mới.', '2025-03-24', 'NV1', 'hienthi', 'Tintuc-6149.webp'),
(14, 'test', 'test', '2025-03-24', 'NV1', 'an', 'Tintuc-6670.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietchuyenphong`
--
ALTER TABLE `chitietchuyenphong`
  ADD PRIMARY KEY (`MaDK`),
  ADD KEY `MaPhongO` (`MaPhongO`),
  ADD KEY `MaPhongChuyen` (`MaPhongChuyen`);

--
-- Indexes for table `chitietdangky`
--
ALTER TABLE `chitietdangky`
  ADD PRIMARY KEY (`MaDK`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaPhong` (`MaPhong`),
  ADD KEY `MaSV` (`MaSV`);

--
-- Indexes for table `hoadondiennuoc`
--
ALTER TABLE `hoadondiennuoc`
  ADD PRIMARY KEY (`MaPhong`,`Thang`),
  ADD UNIQUE KEY `MaHD` (`MaHD`);

--
-- Indexes for table `khu`
--
ALTER TABLE `khu`
  ADD PRIMARY KEY (`MaKhu`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`MaPH`),
  ADD KEY `phanhoi_ibfk_2` (`MaSV`),
  ADD KEY `phanhoi_ibfk_1` (`MaNV`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`),
  ADD KEY `MaKhu` (`MaKhu`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`MaTB`),
  ADD KEY `MaSV` (`MaSV`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTT`),
  ADD KEY `tintuc_ibfk_1` (`MaNV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdangky`
--
ALTER TABLE `chitietdangky`
  MODIFY `MaDK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `hoadondiennuoc`
--
ALTER TABLE `hoadondiennuoc`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `MaPH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `MaTB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietchuyenphong`
--
ALTER TABLE `chitietchuyenphong`
  ADD CONSTRAINT `chitietchuyenphong_ibfk_1` FOREIGN KEY (`MaDK`) REFERENCES `chitietdangky` (`MaDK`),
  ADD CONSTRAINT `chitietchuyenphong_ibfk_2` FOREIGN KEY (`MaPhongO`) REFERENCES `phong` (`MaPhong`),
  ADD CONSTRAINT `chitietchuyenphong_ibfk_3` FOREIGN KEY (`MaPhongChuyen`) REFERENCES `phong` (`MaPhong`);

--
-- Constraints for table `chitietdangky`
--
ALTER TABLE `chitietdangky`
  ADD CONSTRAINT `chitietdangky_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `chitietdangky_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`),
  ADD CONSTRAINT `chitietdangky_ibfk_4` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);

--
-- Constraints for table `hoadondiennuoc`
--
ALTER TABLE `hoadondiennuoc`
  ADD CONSTRAINT `hoadondiennuoc_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Constraints for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `phanhoi_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phanhoi_ibfk_2` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`MaKhu`) REFERENCES `khu` (`MaKhu`);

--
-- Constraints for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`),
  ADD CONSTRAINT `thongbao_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
