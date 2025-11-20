-- Cơ bản 1:
CREATE TABLE san_pham (
    id INT PRIMARY KEY,
    ten_san_pham VARCHAR(255),
    danh_muc VARCHAR(100),
    gia_ban INT,
    so_luong_ton INT
);
-- Chèn dữ liệu mẫu
INSERT INTO san_pham (id, ten_san_pham, danh_muc, gia_ban, so_luong_ton) VALUES
(1, 'Máy tính xách tay Dell XPS 13', 'Máy tính xách tay', 28000000, 15),
(2, 'iPhone 14 Pro Max', 'Điện thoại', 32000000, 30),
(3, 'Bàn phím cơ Logitech', 'Phụ kiện', 2500000, 50),
(4, 'Máy tính xách tay MacBook Air M2', 'Máy tính xách tay', 29500000, 20),
(5, 'Samsung Galaxy S23 Ultra', 'Điện thoại', 26000000, 25),
(6, 'Chuột không dây Fuhlen', 'Phụ kiện', 450000, 100),
(7, 'Tai nghe Sony WH-1000XM5', 'Phụ kiện', 8500000, 40),
(8, 'Máy tính xách tay HP Envy 15', 'Máy tính xách tay', 24000000, 18);
SELECT * 
FROM san_pham 
WHERE gia_ban BETWEEN 20000000 AND 30000000;
SELECT * 
FROM san_pham 
WHERE ten_san_pham LIKE 'Laptop%';
SELECT COUNT(*) AS so_luong_phu_kien 
FROM san_pham 
WHERE danh_muc = 'Phụ kiện';
SELECT * 
FROM san_pham 
ORDER BY gia_ban DESC 
LIMIT 3;
-- cơ bản 2
CREATE TABLE sach (
    id INT PRIMARY KEY,
    tieu_de VARCHAR(255),
    tac_gia VARCHAR(255),
    the_loai VARCHAR(100),
    nam_xuat_ban INT,
    trang_thai VARCHAR(50)
);
INSERT INTO sach (id, tieu_de, tac_gia, the_loai, nam_xuat_ban, trang_thai) VALUES
(1, 'Dế Mèn phiêu lưu ký', 'Tô Hoài', 'Văn học', 1941, 'Có sẵn'),
(2, 'Cho tôi xin một vé đi tuổi thơ', 'Nguyễn Nhật Ánh', 'Văn học', 2008, 'Đã mượn'),
(3, 'Số đỏ', 'Vũ Trọng Phụng', 'Tiểu thuyết', 1936, 'Có sẵn'),
(4, 'Nhà giả kim', 'Paulo Coelho', 'Tiểu thuyết', 1988, 'Có sẵn'),
(5, 'Mắt biếc', 'Nguyễn Nhật Ánh', 'Văn học', 1990, 'Đã mượn'),
(6, 'Trên đường băng', 'Tony Buổi Sáng', 'Kỹ năng sống', 2015, 'Có sẵn'),
(7, 'Đắc nhân tâm', 'Dale Carnegie', 'Kỹ năng sống', 1936, 'Có sẵn');
SELECT * 
FROM sach 
WHERE tac_gia = 'Nguyễn Nhật Ánh';
SELECT * 
FROM sach 
WHERE the_loai IN ('Văn học', 'Tiểu thuyết');
SELECT COUNT(*) AS so_sach_da_muon 
FROM sach 
WHERE trang_thai = 'Đã mượn';
SELECT * 
FROM sach 
ORDER BY nam_xuat_ban ASC 
LIMIT 2;
-- cơ bản 3
CREATE TABLE phim (
    id INT PRIMARY KEY,
    tieu_de VARCHAR(255),
    dao_dien VARCHAR(255),
    nam_phat_hanh INT,
    the_loai VARCHAR(100),
    diem_danh_gia DECIMAL(3, 1)
);
INSERT INTO phim (id, tieu_de, dao_dien, nam_phat_hanh, the_loai, diem_danh_gia) VALUES
(1, 'Inception', 'Christopher Nolan', 2010, 'Khoa học viễn tưởng', 8.8),
(2, 'The Dark Knight', 'Christopher Nolan', 2008, 'Hành động', 9.0),
(3, 'Parasite', 'Bong Joon Ho', 2019, 'Tâm lý', 8.5),
(4, 'Mắt Biếc', 'Victor Vũ', 2019, 'Lãng mạn', 7.8),
(5, 'Interstellar', 'Christopher Nolan', 2014, 'Khoa học viễn tưởng', 8.6),
(6, 'Avengers: Endgame', 'Anthony Russo', 2019, 'Hành động', 8.4),
(7, 'Joker', 'Todd Phillips', 2019, 'Tâm lý', 8.4);
SELECT * 
FROM phim 
WHERE dao_dien = 'Christopher Nolan';
SELECT * 
FROM phim 
WHERE nam_phat_hanh BETWEEN 2010 AND 2019;
SELECT AVG(diem_danh_gia) AS diem_trung_binh 
FROM phim;
SELECT * 
FROM phim 
ORDER BY diem_danh_gia DESC 
LIMIT 3;
-- cơ bản 4
CREATE TABLE mon_an (
    id INT PRIMARY KEY,
    ten_mon VARCHAR(255),
    danh_muc VARCHAR(100),
    gia_tien INT,
    trang_thai_phuc_vu VARCHAR(50)
);
INSERT INTO mon_an (id, ten_mon, danh_muc, gia_tien, trang_thai_phuc_vu) VALUES
(1, 'Phở Bò Tái', 'Món chính', 50000, 'Đang phục vụ'),
(2, 'Cơm Gà Xối Mỡ', 'Món chính', 45000, 'Đang phục vụ'),
(3, 'Gỏi Cuốn Tôm Thịt', 'Khai vị', 30000, 'Đang phục vụ'),
(4, 'Bún Bò Huế', 'Món chính', 55000, 'Tạm ngưng'),
(5, 'Nước Cam Ép', 'Đồ uống', 25000, 'Đang phục vụ'),
(6, 'Chè Hạt Sen', 'Tráng miệng', 20000, 'Đang phục vụ'),
(7, 'Cà Phê Sữa Đá', 'Đồ uống', 22000, 'Đang phục vụ'),
(8, 'Bò Lúc Lắc', 'Món chính', 70000, 'Đang phục vụ');
SELECT * 
FROM mon_an 
WHERE danh_muc IN ('Món chính', 'Khai vị');
-- lưu ý cái này đang nhờ AI hỗ trợ làm câu lệnh 
SELECT * 
FROM mon_an 
WHERE gia_tien = (SELECT MIN(gia_tien) FROM mon_an WHERE trang_thai_phuc_vu = 'Đang phục vụ')
AND trang_thai_phuc_vu = 'Đang phục vụ';
SELECT * 
FROM mon_an 
WHERE ten_mon LIKE '%Bò%';
SELECT *
FROM mon_an
ORDER BY gia_tien ASC
LIMIT 3; 
-- khá 5
-- Tạo CSDL
create database don_hang_db;
use don_hang_db;
-- Tạo bảng don_hang 
Create table don_hang (
id_don_hang INT PRIMARY KEY,
id_khach_hang INT,
danh_muc VARCHAR(100),
tong_tien INT,
ngay_dat DATE,
trang_thai VARCHAR(50) -- 'Hoan thanh', 'Da huy'
);
insert into don_hang (id_don_hang, id_khach_hang, danh_muc, tong_tien, ngay_dat, trang_thai) values
(1, 101, 'Dien tu', 15000000, '2023-01-15', 'Hoan thanh'),
(2, 102, 'Thoi trang', 2500000, '2023-01-20', 'Hoan thanh'),
(3, 101, 'Dien tu', 8000000, '2023-02-10', 'Hoan thanh'),
(4, 103, 'Gia dung', 5000000, '2023-02-12', 'Da huy'),
(5, 102, 'Thoi trang', 3000000, '2023-03-05', 'Hoan thanh'),
(6, 101, 'Gia dung', 4500000, '2023-03-08', 'Hoan thanh'),
(7, 104, 'Dien tu', 22000000, '2023-04-18', 'Hoan thanh'),
(8, 103, 'Thoi trang', 1800000, '2023-04-22', 'Hoan thanh'),
(9, 102, 'Dien tu', 12000000, '2022-12-10', 'Hoan thanh');
 -- 1. Thống kê tổng số tiền chi tiêu cho mỗi khách hàng. Hiển thị id_khach_hang và tổng số tiền của họ, đặt tên cột tổng tiền là tong_chi_tieu. Sắp xếp kết quả theo tổng chi tiêu giảm dần.
SELECT id_khach_hang, SUM(tong_tien) AS 'tong_chi_tieu'
FROM don_hang
GROUP BY id_khach_hang
ORDER BY tong_chi_tieu DESC;
-- 2. Đếm số lượng đơn hàng theo từng danh mục sản phẩm. Hiển thị danh_muc và số lượng đơn hàng tương ứng, đặt tên cột số lượng là so_luong_don.
select danh_muc, count(id_don_hang) as 'so_luong_don'
from don_hang 
group by danh_muc;
-- 3. Tìm những khách hàng đã đặt nhiều hơn 1 đơn hàng. Chỉ hiển thị id_khach_hang của những khách hàng này.
select id_don_hang, count(id_don_hang)
from don_hang 
group by id_khach_hang
having count(id_don_hang) > 1;
-- 4. Liệt kê các danh mục có tổng doanh thu (chỉ tính các đơn 'Hoan thanh') lớn hơn 10,000,000. Hiển thị danh_muc và tong_doanh_thu.
select danh_muc, sum(tong_tien) as 'tong_doanh_thu'
from don_hang 
where trang_thai like 'Hoan thanh'
group by danh_muc
having tong_doanh_thu > 10000000;
-- khá 6
-- Tạo CSDL
create database nhat_ky_nguoi_dung_db;
use nhat_ky_nguoi_dung_db;
CREATE TABLE nhat_ky_nguoi_dung (
    id_nhat_ky INT PRIMARY KEY,
    id_nguoi_dung INT,
    id_bai_viet INT,
    chuyen_muc VARCHAR(100),
    thoi_gian_doc_giay INT,
    ngay_ghi_nhat_ky DATE
);
INSERT INTO nhat_ky_nguoi_dung (id_nhat_ky, id_nguoi_dung, id_bai_viet, chuyen_muc, thoi_gian_doc_giay, ngay_ghi_nhat_ky) VALUES
(1, 1, 101, 'Lap trinh', 300, '2023-10-01'),
(2, 2, 102, 'Thiet ke', 180, '2023-10-01'),
(3, 1, 103, 'Lap trinh', 450, '2023-10-02'),
(4, 3, 104, 'Bao mat', 600, '2023-10-03'),
(5, 2, 101, 'Lap trinh', 240, '2023-10-03'),
(6, 1, 104, 'Bao mat', 500, '2023-10-04'),
(7, 4, 102, 'Thiet ke', 120, '2023-10-04'),
(8, 3, 101, 'Lap trinh', 320, '2023-10-05'),
(9, 2, 105, 'Thiet ke', 200, '2023-10-05');
SELECT id_nguoi_dung, SUM(thoi_gian_doc_giay) AS tong_thoi_gian_doc
FROM nhat_ky_nguoi_dung
GROUP BY id_nguoi_dung
ORDER BY tong_thoi_gian_doc DESC;
SELECT chuyen_muc, COUNT(id_nhat_ky) AS so_luot_doc
FROM nhat_ky_nguoi_dung
GROUP BY chuyen_muc;
SELECT id_bai_viet
FROM nhat_ky_nguoi_dung
GROUP BY id_bai_viet
HAVING COUNT(id_nguoi_dung) > 1;
SELECT id_nguoi_dung, AVG(thoi_gian_doc_giay) AS thoi_gian_trung_binh
FROM nhat_ky_nguoi_dung
GROUP BY id_nguoi_dung
HAVING AVG(thoi_gian_doc_giay) > 350;
