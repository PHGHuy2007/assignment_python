-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2026 at 03:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `ID` bigint(20) NOT NULL,
  `Slug` varchar(255) DEFAULT NULL,
  `Url` text NOT NULL,
  `Category_ID` int(11) DEFAULT NULL,
  `status` enum('pending','completed','deleted') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`ID`, `Slug`, `Url`, `Category_ID`, `status`) VALUES
(47, NULL, 'https://vnexpress.net/sabalenka-noi-got-rybakina-roi-trung-quoc-mo-rong-5128292.html', 1, 'pending'),
(48, NULL, 'https://vnexpress.net/viet-nam-v-malaysia-5128576-tong-thuat.html', 1, 'pending'),
(49, NULL, 'https://vnexpress.net/giggs-canh-bao-dong-nam-a-van-de-nhap-tich-cau-thu-5128259.html', 1, 'pending'),
(50, NULL, 'https://vnexpress.net/thai-lan-thua-7-tran-chung-ket-lon-duoi-thoi-madam-pang-5128983.html', 1, 'pending'),
(51, NULL, 'https://vnexpress.net/bao-indonesia-viet-nam-mat-vi-the-khi-cac-doi-dung-luc-luong-manh-nhat-5128774.html', 1, 'pending'),
(52, NULL, 'https://vnexpress.net/malaysia-muon-cham-dut-12-nam-khong-thang-viet-nam-5128243.html', 1, 'pending'),
(53, NULL, 'https://vnexpress.net/messi-chon-doi-truong-moi-cho-argentina-5128126.html', 1, 'pending'),
(54, NULL, 'https://vnexpress.net/chan-thuong-de-doa-viet-nam-truoc-tranh-giai-ba-fifa-asean-cup-5128276.html', 1, 'pending'),
(55, NULL, 'https://vnexpress.net/trung-quoc-bi-lat-do-o-giai-co-tuong-chau-a-5129198.html', 1, 'pending'),
(56, NULL, 'https://vnexpress.net/ronaldo-khong-tro-lai-doi-tuyen-neu-hlv-jorge-jesus-con-tai-vi-5128864.html', 1, 'pending'),
(57, NULL, 'https://vnexpress.net/tuong-quan-truoc-tran-malaysia-viet-nam-5128403.html', 1, 'pending'),
(58, NULL, 'https://vnexpress.net/man-utd-gay-tranh-cai-voi-bai-dang-ve-ronaldo-5128911.html', 1, 'pending'),
(59, NULL, 'https://vnexpress.net/doi-tuyen-viet-nam-co-the-chiu-tac-dong-tu-nations-league-chau-a-5128269.html', 1, 'pending'),
(60, NULL, 'https://vnexpress.net/hong-le-anh-khoi-vo-dich-marathon-quoc-te-ha-noi-techcombank-mua-5-5128843.html', 1, 'pending'),
(61, NULL, 'https://vnexpress.net/djokovic-vao-chung-ket-sau-khi-medvedev-bi-xu-thua-o-bac-kinh-mo-rong-5128767.html', 1, 'pending'),
(62, NULL, 'https://vnexpress.net/hlv-herdman-hao-huc-truoc-co-hoi-lich-su-cua-indonesia-5128313.html', 1, 'pending'),
(63, NULL, 'https://vnexpress.net/trung-ve-indonesia-nhai-cach-an-mung-cua-hai-long-5128954.html', 1, 'pending'),
(64, NULL, 'https://vnexpress.net/phap-thang-tran-dam-nhat-duoi-thoi-zidane-5128781.html', 1, 'pending'),
(65, NULL, 'https://vnexpress.net/medvedev-tra-gia-dat-sau-su-co-danh-bong-trung-khan-gia-o-bac-kinh-5129040.html', 1, 'pending'),
(66, NULL, 'https://vnexpress.net/messi-va-bua-tiec-nuong-chia-tay-doi-tuyen-argentina-5128692.html', 1, 'pending'),
(67, NULL, 'https://vnexpress.net/hlv-kim-sang-sik-xin-chiu-trach-nhiem-sau-that-bai-o-fifa-asean-cup-5128694.html', 1, 'pending'),
(68, NULL, 'https://vnexpress.net/sinner-som-ket-thuc-mua-giai-2026-5129202.html', 1, 'pending'),
(69, NULL, 'https://vnexpress.net/thu-thanh-benin-toi-se-khong-bieu-ban-thang-cho-messi-5129008.html', 1, 'pending'),
(70, NULL, 'https://vnexpress.net/thu-mon-vozinha-toi-da-vuot-xa-nhung-giac-mo-dien-ro-nhat-5128310.html', 1, 'pending'),
(71, NULL, 'https://vnexpress.net/nhom-luat-su-tinh-hoa-cua-man-city-va-ngoai-hang-anh-la-ai-5128053.html', 1, 'pending'),
(72, NULL, 'https://vnexpress.net/hoa-hau-duc-chuyen-sang-lam-vo-si-quyen-anh-chuyen-nghiep-5128779.html', 1, 'pending'),
(73, NULL, 'https://vnexpress.net/bo-dao-nha-thang-na-uy-vao-tu-ket-nations-league-5128319.html', 1, 'pending'),
(74, NULL, 'https://vnexpress.net/chu-tich-fifa-hai-lan-trong-mot-thang-trao-giai-o-dong-nam-a-5128819.html', 1, 'pending'),
(75, NULL, 'https://vnexpress.net/hlv-kim-hoang-hen-tai-loc-choi-chua-tot-vi-the-luc-5128272.html', 1, 'pending'),
(76, NULL, 'https://vnexpress.net/hon-hai-thap-ky-cua-messi-o-argentina-5129032.html', 1, 'pending'),
(77, NULL, 'https://vnexpress.net/cau-thu-thai-lan-che-trong-tai-o-chung-ket-fifa-asean-cup-2026-5128837.html', 1, 'pending'),
(78, NULL, 'https://vnexpress.net/bao-dong-nam-a-noi-gi-ve-that-bai-cua-viet-nam-o-fifa-asean-cup-5126031.html', 1, 'pending'),
(79, NULL, 'https://vnexpress.net/indonesia-vs-thai-lan-5128707-tong-thuat.html', 1, 'pending'),
(80, NULL, 'https://vnexpress.net/dong-doi-cu-ke-manh-khoe-tranh-ronaldo-sut-phat-5128624.html', 1, 'pending'),
(81, NULL, 'https://vnexpress.net/viet-nam-dung-thu-5-dong-nam-a-o-asiad-2026-5128203.html', 1, 'pending'),
(82, NULL, 'https://vnexpress.net/asiad-2026-ket-thuc-5128200.html', 1, 'pending'),
(83, NULL, 'https://vnexpress.net/valdano-tay-ban-nha-mang-vi-the-nhu-brazil-trong-qua-khu-5128036.html', 1, 'pending'),
(84, NULL, 'https://vnexpress.net/djokovic-vuot-ky-luc-nadal-sau-khi-ha-zverev-5128290.html', 1, 'pending'),
(85, NULL, 'https://vnexpress.net/tuyen-thu-benin-the-se-doi-bang-duoc-ao-dau-voi-messi-5128777.html', 1, 'pending'),
(86, NULL, 'https://vnexpress.net/cac-clb-ngoai-hang-anh-chia-re-ve-an-phat-man-city-5128318.html', 1, 'pending'),
(87, NULL, 'https://vnexpress.net/hlv-bo-dao-nha-toi-khong-phai-xin-loi-ai-5128320.html', 1, 'pending'),
(88, NULL, 'https://vnexpress.net/bong-da-viet-nam-can-thay-doi-tu-duy-phuc-vu-dtqg-5129054.html', 1, 'pending'),
(89, NULL, 'https://vnexpress.net/cau-thu-han-quoc-gay-tranh-cai-vi-mung-duoc-mien-nghia-vu-quan-su-5128316.html', 1, 'pending'),
(90, NULL, 'https://vnexpress.net/scholes-di-nguoc-quan-diem-cua-rooney-ve-man-city-5128317.html', 1, 'pending'),
(91, NULL, 'https://vnexpress.net/cuoc-song-bat-an-cua-nha-bao-dieu-tra-man-city-5128775.html', 1, 'pending'),
(92, NULL, 'https://vnexpress.net/viet-nam-malaysia-vuot-qua-nghich-canh-o-fifa-asean-cup-2026-5128315.html', 1, 'pending'),
(100, NULL, 'https://kenh14.vn/jun-pham-tiec-cho-gia-dinh-haha-215261006180518142.chn', 2, 'pending'),
(101, NULL, 'https://kenh14.vn/hon-600-ngay-khong-dong-phim-trieu-lo-tu-van-kiem-duoc-bon-tien-tu-dau-215261006152304922.chn', 2, 'pending'),
(102, NULL, 'https://kenh14.vn/cang-han-so-hee-bi-ca-dan-sao-co-lap-cong-khai-treu-nguoi-215261006131327895.chn', 2, 'pending'),
(103, NULL, 'https://kenh14.vn/ngoc-nu-ngat-xiu-o-chung-ket-hoa-hau-ly-hon-chong-cong-chuc-nam-ngoai-vua-hien-tang-cuu-mang-con-trai-dau-long-215261006124152885.chn', 2, 'pending'),
(104, NULL, 'https://kenh14.vn/nhin-lisa-blackpink-ben-hong-hai-nhi-kem-3-tuoi-du-thay-tinh-cu-ty-phu-chi-con-la-cai-ten-21526100611491243.chn', 2, 'pending'),
(105, NULL, 'https://kenh14.vn/con-gai-mung-sinh-nhat-gin-tuan-kiet-dan-tinh-xot-canh-puka-bi-ra-ria-215261005222341013.chn', 2, 'pending'),
(106, NULL, 'https://kenh14.vn/suc-khoe-trieu-le-dinh-sau-14-thang-vang-bong-215261006152021992.chn', 2, 'pending'),
(107, NULL, 'https://vnexpress.net/djokovic-vo-dich-ca-bay-lan-du-giai-bac-kinh-5129213.html', 1, 'pending'),
(108, NULL, 'https://vnexpress.net/alcaraz-giai-con-khat-danh-hieu-5129207.html', 1, 'pending'),
(139, NULL, 'https://vnexpress.net/cu-truot-gia-70-trieu-euro-cua-vinicius-5130145.html', 1, 'pending'),
(140, NULL, 'https://vnexpress.net/ferguson-tiec-khi-khong-gap-guardiola-som-hon-de-moi-ve-man-utd-5130151.html', 1, 'pending'),
(141, NULL, 'https://vnexpress.net/hagl-tim-lai-niem-vui-o-v-league-5130803.html', 1, 'pending'),
(142, NULL, 'https://vnexpress.net/ldbd-bo-dao-nha-dinh-chi-thi-dau-ronaldo-5130806.html', 1, 'pending'),
(143, NULL, 'https://vnexpress.net/messi-lap-cu-dup-trong-tran-dau-sau-khi-chia-tay-tuyen-argentina-5130901.html', 1, 'pending'),
(144, NULL, 'https://vnexpress.net/wimbledon-doa-dung-linh-biet-kich-xu-ly-kol-gay-roi-5130530.html', 1, 'pending'),
(145, NULL, 'https://vnexpress.net/cuoc-khung-hoang-niem-tin-o-man-utd-5123953.html', 1, 'pending'),
(146, NULL, 'https://vnexpress.net/chicago-marathon-san-khau-cua-nhung-ky-luc-the-gioi-5130979.html', 1, 'pending'),
(147, NULL, 'https://vnexpress.net/man-utd-roi-chien-thang-truoc-tottenham-du-hon-nguoi-5130866.html', 1, 'pending'),
(148, NULL, 'https://vnexpress.net/barca-toan-thang-chin-tran-dau-mua-5130869.html', 1, 'pending'),
(149, NULL, 'https://vnexpress.net/ronaldo-ghi-ban-thu-980-5130578.html', 1, 'pending'),
(150, NULL, 'https://vnexpress.net/hlv-tuyen-benin-phan-nan-vi-khong-duoc-doi-ao-voi-messi-5130167.html', 1, 'pending'),
(151, NULL, 'https://vnexpress.net/chu-tich-ldbd-bo-dao-nha-tat-ca-deu-muon-ronaldo-tro-lai-5130868.html', 1, 'pending'),
(152, NULL, 'https://vnexpress.net/arteta-ranh-gioi-giua-nha-vo-dich-va-doi-tam-thuong-rat-mong-manh-5130867.html', 1, 'pending'),
(153, NULL, 'https://vnexpress.net/djokovic-thua-ngay-tran-ra-quan-o-thuong-hai-masters-5130550.html', 1, 'pending'),
(154, NULL, 'https://vnexpress.net/gary-neville-man-utd-dang-tro-nen-qua-suc-voi-mot-so-cau-thu-5130934.html', 1, 'pending'),
(155, NULL, 'https://vnexpress.net/atletico-tiep-tuc-mia-mai-real-5130582.html', 1, 'pending'),
(156, NULL, 'https://vnexpress.net/henderson-toa-sang-trong-tran-dai-thang-cua-chelsea-5130858.html', 1, 'pending'),
(157, NULL, 'https://vnexpress.net/tro-ly-hlv-tuyen-anh-kane-sut-bong-tot-hon-ronaldo-5130370.html', 1, 'pending'),
(158, NULL, 'https://vnexpress.net/cuoc-hop-bao-day-gian-du-cua-mourinho-5130580.html', 1, 'pending'),
(159, NULL, 'https://vnexpress.net/mourinho-bo-hop-bao-sau-tran-thang-villarreal-5130893.html', 1, 'pending'),
(160, NULL, 'https://vnexpress.net/clb-cahn-nhan-huan-chuong-lao-dong-hang-nhat-5130807.html', 1, 'pending'),
(161, NULL, 'https://vnexpress.net/man-utd-khoi-dau-te-nhat-trong-40-nam-5130877.html', 1, 'pending'),
(162, NULL, 'https://vnexpress.net/mourinho-mong-con-song-den-khi-vu-kien-man-city-ket-thuc-5130252.html', 1, 'pending'),
(163, NULL, 'https://vnexpress.net/haaland-keu-goi-man-city-doan-ket-5130142.html', 1, 'pending'),
(164, NULL, 'https://vnexpress.net/vinicius-tra-gia-dat-vi-giat-toc-doi-thu-o-la-liga-5130887.html', 1, 'pending'),
(165, NULL, 'https://vnexpress.net/arteta-khong-ho-then-ve-thoi-gian-lam-viec-o-man-city-5130596.html', 1, 'pending'),
(166, NULL, 'https://vnexpress.net/nhat-ban-moi-viet-nam-da-giao-huu-truoc-them-asian-cup-2027-5130975.html', 1, 'pending'),
(167, NULL, 'https://vnexpress.net/real-madrid-lai-day-song-vi-mbappe-5130577.html', 1, 'pending'),
(168, NULL, 'https://vnexpress.net/cau-thu-man-city-khong-quan-tam-neu-bi-tuoc-danh-hieu-5130444.html', 1, 'pending'),
(169, NULL, 'https://vnexpress.net/ronaldo-che-gieu-binh-luan-vien-anh-vi-tiem-botox-5130146.html', 1, 'pending'),
(170, NULL, 'https://vnexpress.net/tan-binh-100-trieu-usd-cuu-arsenal-o-ngoai-hang-anh-5130828.html', 1, 'pending'),
(171, NULL, 'https://vnexpress.net/carragher-man-utd-liverpool-chiu-ap-luc-lon-vi-an-cua-man-city-5130464.html', 1, 'pending'),
(172, NULL, 'https://vnexpress.net/bayern-nhan-ban-thua-nhanh-nhat-lich-su-bundesliga-5130847.html', 1, 'pending'),
(173, NULL, 'https://vnexpress.net/maresca-cac-danh-hieu-cua-man-city-khong-bi-hoen-o-5130586.html', 1, 'pending'),
(174, NULL, 'https://vnexpress.net/carrick-dau-don-khi-man-utd-bi-cdv-la-o-5130886.html', 1, 'pending'),
(175, NULL, 'https://vnexpress.net/carragher-khau-chien-voi-piers-morgan-vi-ronaldo-5130857.html', 1, 'pending'),
(176, NULL, 'https://vnexpress.net/hot-girl-chay-bo-trung-quoc-di-nho-xe-dap-o-berlin-marathon-5130285.html', 1, 'pending'),
(177, NULL, 'https://vnexpress.net/vinicius-nhan-the-do-trong-chien-thang-cua-real-5130871.html', 1, 'pending'),
(178, NULL, 'https://vnexpress.net/me-ronaldo-bo-dao-nha-khong-tran-trong-con-trai-toi-5130143.html', 1, 'pending'),
(179, NULL, 'https://vnexpress.net/chuyen-gia-malaysia-cac-doi-tuyen-dong-nam-a-nguy-co-mat-dan-ban-sac-5130723.html', 1, 'pending'),
(180, NULL, 'https://vnexpress.net/hlv-filipe-luis-dung-truoc-co-hoi-lat-do-psg-5130575.html', 1, 'pending'),
(181, NULL, 'https://vnexpress.net/cuu-tong-bien-tap-france-football-ronaldo-van-dong-hanh-lang-nhieu-hon-messi-5129691.html', 1, 'pending'),
(182, NULL, 'https://vnexpress.net/carragher-messi-biet-giau-cai-toi-ronaldo-thi-khong-5130609.html', 1, 'pending'),
(183, NULL, 'https://vnexpress.net/nha-vo-dich-olympic-bo-do-quyen-ru-giup-toi-chay-nhanh-hon-5130576.html', 1, 'pending'),
(184, NULL, 'https://vnexpress.net/haaland-duoc-du-doan-gia-nhap-barca-hoac-real-5130160.html', 1, 'pending'),
(185, NULL, 'https://kenh14.vn/25-nguoi-dep-vao-chung-ket-hoa-hau-viet-nam-2026-215261011113756199.chn', 2, 'pending'),
(186, NULL, 'https://kenh14.vn/ngoc-nu-showbiz-n-cuoi-thieu-gia-nghin-ty-nganh-ngan-hang-trong-thang-12-lo-han-clip-cung-dang-trai-di-phat-thiep-moi-215261011113637951.chn', 2, 'pending'),
(187, NULL, 'https://kenh14.vn/chi-150-trieu-cho-ong-nawat-nhung-nhan-ket-dang-me-emoura-pham-len-tieng-gat-215261011123028186.chn', 2, 'pending'),
(188, NULL, 'https://kenh14.vn/my-nhan-viet-cao-1m55-lot-vao-mat-xanh-cua-chau-tinh-tri-215261011144419427.chn', 2, 'pending'),
(189, NULL, 'https://kenh14.vn/nhan-sac-nguoi-dep-lai-gianh-vuong-mien-miss-grand-international-2026-215261011114001389.chn', 2, 'pending'),
(190, NULL, 'https://kenh14.vn/quan-quan-the-voice-nho-tuoi-nhat-viet-nam-tung-bi-che-xau-muon-bo-hat-de-lay-chong-215261011005250735.chn', 2, 'pending'),
(191, NULL, 'https://kenh14.vn/cu-twist-cua-huynh-lap-tai-anh-trai-vuot-ngan-chong-gai-2026-khong-thanh-doan-van-duoc-vinh-danh-x-leader-thu-linh-xuat-sac-nhat-215261011122850445.chn', 2, 'pending'),
(222, NULL, 'https://vietnamnet.vn/cho-gia-do-tam-hoa-chat-2-chu-co-so-linh-an-tu-2563678.html', 3, 'pending'),
(223, NULL, 'https://vietnamnet.vn/chu-tich-dong-nai-yeu-cau-kiem-tra-khac-phuc-vu-vo-tuong-bao-cong-trinh-2563722.html', 3, 'pending'),
(224, NULL, 'https://vietnamnet.vn/duong-pho-tphcm-ngap-sau-do-trieu-cuong-nguoi-dan-tat-ta-loi-nuoc-ve-nha-2563570.html', 3, 'pending'),
(225, NULL, 'https://vietnamnet.vn/khiep-via-canh-hang-chuc-thanh-thieu-nien-cam-ma-tau-chan-chan-cau-o-ca-mau-2563548.html', 3, 'pending'),
(226, NULL, 'https://vietnamnet.vn/trieu-cuong-dang-cao-tu-sang-som-pho-phuong-dong-nai-menh-mong-nuoc-2563666.html', 3, 'pending'),
(227, NULL, 'https://vietnamnet.vn/bat-them-5-nguoi-trong-vu-hung-loc-san-xuat-video-bao-luc-trieu-luot-xem-2563738.html', 3, 'pending'),
(228, NULL, 'https://vietnamnet.vn/camera-ai-o-ha-noi-bat-loi-hon-18-500-xe-co-truong-hop-8-lan-di-nguoc-chieu-2563694.html', 3, 'pending'),
(229, NULL, 'https://vietnamnet.vn/tu-cat-tay-gia-bi-cuop-de-mong-chu-no-thong-cam-2563674.html', 3, 'pending'),
(230, NULL, 'https://vietnamnet.vn/chu-nha-phu-nhan-thue-pha-do-tin-nhan-zalo-co-doi-duoc-tien-2563227.html', 3, 'pending'),
(231, NULL, 'https://vietnamnet.vn/thuong-tuong-pham-the-tung-de-nghi-dieu-tra-mo-rong-vu-rua-tien-xuyen-quoc-gia-2563673.html', 3, 'pending'),
(232, NULL, 'https://vietnamnet.vn/xac-minh-o-to-keo-le-khung-sat-tam-ton-tren-duong-o-quang-ninh-2563676.html', 3, 'pending'),
(233, NULL, 'https://vietnamnet.vn/man-nhan-voi-man-phao-hoa-long-lay-mung-72-nam-giai-phong-thu-do-2563637.html', 3, 'pending'),
(234, NULL, 'https://vietnamnet.vn/bat-giam-bi-can-thu-7-trong-duong-day-lam-tien-gia-lien-tinh-2563551.html', 3, 'pending'),
(235, NULL, 'https://vietnamnet.vn/thanh-nien-tu-vong-khi-chay-vo-lai-toc-do-cao-giai-dua-o-can-tho-bi-huy-2563541.html', 3, 'pending'),
(236, NULL, 'https://vietnamnet.vn/truy-tang-giay-khen-cho-nguoi-dan-ong-tu-vong-khi-cuu-2-chau-be-2563726.html', 3, 'pending'),
(237, NULL, 'https://vietnamnet.vn/thuyen-truong-quang-tri-ke-8-gio-boi-giua-bien-gianh-su-song-2563436.html', 3, 'pending'),
(238, NULL, 'https://vietnamnet.vn/nguoi-dan-ong-tu-dong-nai-di-lac-gan-800km-ra-da-nang-duoc-cong-an-giup-ve-nha-2563483.html', 3, 'pending'),
(239, NULL, 'https://vietnamnet.vn/tam-giam-nguoi-phu-nu-nhieu-lan-do-chat-thai-chan-loi-di-chung-o-ha-noi-2563589.html', 3, 'pending'),
(240, NULL, 'https://vietnamnet.vn/thoi-su-sang-11-10-nhom-thanh-thieu-nien-cam-ma-tau-gay-nao-loan-o-ca-mau-2563573.html', 3, 'pending'),
(241, NULL, 'https://vietnamnet.vn/khong-the-phat-trien-tuong-lai-bang-tu-duy-do-thi-cua-qua-khu-2561847.html', 3, 'pending'),
(242, NULL, 'https://vietnamnet.vn/ha-noi-de-xuat-xu-ly-vi-pham-tai-12-du-an-lien-quan-ong-le-thanh-than-2563636.html', 3, 'pending'),
(243, NULL, 'https://vietnamnet.vn/tham-o-30-ty-dong-nguyen-ke-toan-ban-quan-ly-du-an-bi-bat-2563731.html', 3, 'pending'),
(244, NULL, 'https://vietnamnet.vn/tong-giam-doc-vtm-nhan-hoi-lo-hon-18-ty-khien-nha-nuoc-thiet-hai-hon-13-ty-dong-2563628.html', 3, 'pending'),
(245, NULL, 'https://vietnamnet.vn/khoi-to-5-vu-an-bat-21-doi-tuong-lam-gia-ket-qua-quan-trac-moi-truong-tai-tphcm-2563575.html', 3, 'pending'),
(246, NULL, 'https://vietnamnet.vn/du-bao-thoi-tiet-11-10-2026-mien-bac-nang-hanh-ha-noi-tang-len-32-do-2555476.html', 3, 'pending'),
(247, NULL, 'https://vietnamnet.vn/cong-an-ninh-binh-khoi-to-thang-at-2563739.html', 3, 'pending'),
(248, NULL, 'https://vietnamnet.vn/thoi-tiet-tphcm-va-nam-bo-10-ngay-toi-mua-lon-kem-sam-set-don-dap-tiep-dien-2555475.html', 3, 'pending'),
(249, NULL, 'https://vietnamnet.vn/nguoi-dan-ong-tu-vong-sau-khi-cuu-hai-chau-be-duoi-nuoc-o-ninh-binh-2563618.html', 3, 'pending'),
(250, NULL, 'https://vietnamnet.vn/hai-cay-phuong-bat-goc-keo-do-3-tru-dien-lam-hu-hong-nhieu-xe-o-tphcm-2563568.html', 3, 'pending'),
(251, NULL, 'https://vietnamnet.vn/khoi-to-7-nguoi-trong-duong-day-rua-tien-tu-nhat-ban-ve-viet-nam-2563635.html', 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Slug` varchar(255) NOT NULL,
  `Des` text DEFAULT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Deleted_At` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `Name`, `Slug`, `Des`, `Created_At`, `Updated_At`, `Deleted_At`) VALUES
(1, 'Thể thao', 'the-thao', 'Chuyên mục thể thao VnExpress', '2026-10-06 14:01:13', '2026-10-06 14:01:13', NULL),
(2, 'Star', 'star', 'Chuyên mục giải trí Kenh14', '2026-10-06 14:11:42', '2026-10-06 14:11:42', NULL),
(3, 'Thời sự', '', NULL, '2026-10-11 10:26:33', '2026-10-11 10:26:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Domain` varchar(255) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  `Category_ID` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `link_selector` varchar(255) DEFAULT NULL,
  `title_selector` varchar(255) DEFAULT NULL,
  `description_selector` varchar(255) DEFAULT NULL,
  `content_selector` varchar(255) DEFAULT NULL,
  `remove_selector` varchar(255) DEFAULT NULL,
  `image_selector` varchar(255) DEFAULT NULL,
  `author_selector` varchar(255) DEFAULT NULL,
  `status` enum('Active','Deactive') DEFAULT 'Active',
  `Is_Rewrite` tinyint(1) DEFAULT 0,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_At` timestamp NULL DEFAULT NULL,
  `Created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`ID`, `Name`, `Domain`, `Path`, `Category_ID`, `Description`, `link_selector`, `title_selector`, `description_selector`, `content_selector`, `remove_selector`, `image_selector`, `author_selector`, `status`, `Is_Rewrite`, `Created_At`, `Updated_At`, `deleted_At`, `Created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'VnExpress', 'vnexpress.net', '/the-thao', NULL, NULL, '.title-news a', '.title-detail', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2026-10-06 13:20:03', '2026-10-06 13:20:03', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `categories` (`ID`);

--
-- Constraints for table `sources`
--
ALTER TABLE `sources`
  ADD CONSTRAINT `sources_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `categories` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
