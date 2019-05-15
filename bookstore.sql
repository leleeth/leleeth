-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 13, 2019 lúc 06:08 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menuloai`
--

CREATE TABLE `menuloai` (
  `idloai` int(30) NOT NULL,
  `tenloai` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `menuloai`
--

INSERT INTO `menuloai` (`idloai`, `tenloai`) VALUES
(1, 'cho'),
(2, 'meo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(30) NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gia` int(50) NOT NULL,
  `hinh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mota` text CHARACTER SET utf8 NOT NULL,
  `idloai` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `ten`, `gia`, `hinh`, `mota`, `idloai`) VALUES
(1, 'ALASKA', 15000000, 'alaska.jpg', 'cho dc 5 thang tuoi da tiem phong 1 mui', 1),
(2, 'BULL', 5000000, 'bull.jpg', 'bé được 4 tháng đã tiêm 1 mũi sổ giun', 1),
(3, 'CHIHUAHUA', 3000000, 'chihuahua.jpg', 'bé được 3 tháng đã tiêm 1 mũi sổ giun', 1),
(5, 'CHOW CHOW', 7000000, 'chow.jpg', 'bé đã được 3 tháng đã tiêm 1 mũi sỗ giun', 1),
(6, 'CORGI', 17000000, 'corgi.jpg', 'bé đã được 6 tháng đã tiêm 1 mũi sỗ giun', 1),
(7, 'GOLDEN', 14000000, 'gaudan.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 1),
(8, 'Phốc Sóc', 4000000, 'phoc.jpg', 'bé đã được 3 tháng đã tiêm 1 mũi sỗ giun', 1),
(9, 'POODLE', 8000000, 'poodle.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 1),
(10, 'PUG', 9000000, 'pug.jpg', 'bé đã được 4 tháng đã tiêm 1 mũi sỗ giun', 1),
(11, 'SAMYONED', 12000000, 'samyon.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 1),
(12, 'SHIBA', 10000000, 'shiba.jpg', 'bé đã được 6 tháng đã tiêm 1 mũi sỗ giun', 1),
(13, 'Mèo ELF', 18000000, 'elfcat.jpg', 'bé đã được 3 tháng đã tiêm 1 mũi sỗ giun', 2),
(14, 'Mèo Anh Lông Dài', 8000000, 'mald.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2),
(15, 'Mèo Anh Lông Ngắn', 9000000, 'maln.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2),
(16, 'Mèo BomBay', 7000000, 'meobombay.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2),
(17, 'Mèo Caracal', 12000000, 'meocaracal.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2),
(18, 'Mèo Hymalaya', 14000000, 'meohymalaya.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2),
(19, 'Mèo MaoKai', 13000000, 'meomaokaii.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2),
(20, 'Mèo MunchKin', 17000000, 'meomunchkin.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2),
(21, 'Russian Blue', 20000000, 'meorussianblue.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2),
(22, 'Serengeti', 21000000, 'serengeticat.jpg', 'bé đã được 5 tháng đã tiêm 1 mũi sỗ giun', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `menuloai`
--
ALTER TABLE `menuloai`
  ADD PRIMARY KEY (`idloai`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`),
  ADD KEY `fk_sp` (`idloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `menuloai`
--
ALTER TABLE `menuloai`
  MODIFY `idloai` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp` FOREIGN KEY (`idloai`) REFERENCES `menuloai` (`idloai`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
