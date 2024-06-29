-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 11:10 AM
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
(94, 161250533360, NULL, 'A204', NULL, NULL, NULL, '2023-12-01', 0),
(95, 20212915, NULL, 'A103', NULL, 'đã trả', NULL, '2023-12-08', 0),
(96, 20212915, NULL, 'A204', NULL, 'đã trả', NULL, '2023-12-08', 0),
(97, 20212915, NULL, 'A204', NULL, 'đã trả', NULL, '2023-12-08', 0),
(98, 20212915, NULL, 'A103', NULL, 'đã trả', NULL, '2023-12-08', 0),
(99, 20212915, 'A204', 'A304', 'Muốn ở 6 người', 'đã trả', '2023-12-08', '2023-12-08', 1),
(101, 20212334, 'A304', 'A204', 'Muốn ở phòng 8 người', 'đã duyệt', '2023-12-08', '2023-12-08', 1),
(102, 20212915, NULL, 'A204', 'Muốn ở 8 người', NULL, NULL, '2023-12-28', 0);

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
(94, 161250533360, 'A204', 'NV1', '2023-12-01', NULL, 'đã duyệt'),
(95, 20212915, 'A103', 'NV1', '2023-12-08', '2023-12-08', 'đã duyệt'),
(96, 20212915, 'A204', 'NV1', '2023-12-08', '2023-12-08', 'đã duyệt'),
(97, 20212915, 'A204', 'NV1', '2023-12-08', '2023-12-08', 'đã duyệt'),
(98, 20212915, 'A103', 'NV1', '2023-12-08', '2023-12-08', 'đã duyệt'),
(99, 20212915, 'A204', 'NV1', '2023-12-08', '2023-12-13', 'đã duyệt'),
(101, 20212334, 'A304', 'NV1', '2023-12-08', NULL, 'đã duyệt'),
(102, 20212915, 'A204', 'NV1', '2023-12-13', NULL, 'Đã duyệt');

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
(19, 'A304', 100000, 50000, 12, 'đã thu');

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
('admin', 'admin', '2019-06-04', 'Quảng Ninh', 326597979, 'admin', 0),
('NV1', 'Nhân Viên A', '1995-01-18', 'Đà Nẵng', 123456789, '123456', 1);

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
('A101', 'A', 4, 0, 1250000),
('A102', 'A', 4, 0, 1250000),
('A103', 'A', 4, 0, 1250000),
('A201', 'A', 6, 0, 800000),
('A202', 'A', 6, 0, 800000),
('A203', 'A', 6, 0, 800000),
('A204', 'A', 6, 2, 800000),
('A301', 'A', 8, 0, 600000),
('A302', 'A', 8, 0, 600000),
('A303', 'A', 8, 0, 600000),
('A304', 'A', 8, 1, 600000),
('B101', 'B', 4, 0, 1250000),
('B102', 'B', 4, 0, 1250000),
('B103', 'B', 4, 0, 1250000),
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
('C301', 'C', 8, 0, 600000),
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
(20212334, 'Nguyễn Văn Minh', 'Nam', '2003-06-18', 'Hà Nội', 32548979, 'minhdz123'),
(20212915, 'Nguyễn Nhật Mạnh', 'Nam', '2003-10-20', 'Quảng Ninh', 329529596, 'manhdz123'),
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
(90, 20212915, 'NV1', 'Thông Báo Chuyển Phòng Ký Túc Xá', 'Chuyển Phòng của bạn đã bị hủy. vui lòng lên gặp Nhân viên Ký túc xá để biết thêm chi tiết. Xin cảm ơn !!!', 'chuyển ph', '2023-12-28');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdangky`
--
ALTER TABLE `chitietdangky`
  MODIFY `MaDK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `hoadondiennuoc`
--
ALTER TABLE `hoadondiennuoc`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `MaTB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
