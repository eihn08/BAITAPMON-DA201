create database btvnss5;
use btvnss5;
CREATE TABLE KhachHang (
    MaKH INT,
    HoTen VARCHAR(255),
    Email VARCHAR(255),
    SoDienThoai VARCHAR(15),
    NgayDangKy DATE
);
INSERT INTO KhachHang (MaKH, HoTen, Email, SoDienThoai, NgayDangKy) VALUES
(1, 'Nguyễn Văn An', 'an.nguyen@email.com', '0901234567', '2023-10-25'),
(2, 'Trần Thị Bình', 'binh.tran@email.com', '0912345678', '2023-10-26'),
(3, 'Lê Minh Cường', 'cuong.le@email.com', '0987654321', '2023-11-01');
INSERT INTO KhachHang (MaKH, HoTen, Email, SoDienThoai, NgayDangKy)
VALUES (4, 'Phạm Thị Dung', 'dung.pham@email.com', '0934567890', '2023-11-02');
INSERT INTO KhachHang (MaKH, HoTen, Email, SoDienThoai, NgayDangKy)
VALUES (5, 'Hoàng Văn Em', 'em.hoang@email.com', '0945678901', '2023-11-03');
SELECT *
FROM KhachHang;
SELECT HoTen, Email
FROM KhachHang;
CREATE TABLE Sach (
    MaSach VARCHAR(10),
    TenSach VARCHAR(255),
    TacGia VARCHAR(255),
    TheLoai VARCHAR(100),
    GiaBan INT
);
INSERT INTO Sach (MaSach, TenSach, TacGia, TheLoai, GiaBan) VALUES
('SGK01', 'Đắc Nhân Tâm', 'Dale Carnegie', 'Kỹ năng sống', 120000),
('SVK02', 'Nhà Giả Kim', 'Paulo Coelho', 'Văn học', 89000),
('STN03', 'Lược Sử Loài Người', 'Yuval Noah Harari', 'Lịch sử', 150000),
('SKD04', 'Tư Duy Nhanh và Chậm', 'Daniel Kahneman', 'Kinh doanh', 99000);
ALTER TABLE Sach
ADD PRIMARY KEY (MaSach);
UPDATE Sach
SET GiaBan = 180000
WHERE MaSach = 'SKD04';
UPDATE Sach
SET TacGia = 'Paulo Coelho'
WHERE MaSach = 'SVK02';
DELETE FROM Sach
WHERE MaSach = 'SGK01';
SELECT *
FROM Sach;
CREATE TABLE DonHang (
    MaDonHang INT,
    NgayDatHang DATE,
    TongGiaTri INT,
    ThanhPhoGiaoHang VARCHAR(100)
);
INSERT INTO DonHang (MaDonHang, NgayDatHang, TongGiaTri, ThanhPhoGiaoHang) VALUES
(101, '2023-10-15', 1500000, 'Hà Nội'),
(102, '2023-10-18', 800000, 'Đà Nẵng'),
(103, '2023-10-20', 2200000, 'TP. Hồ Chí Minh'),
(104, '2023-10-22', 750000, 'Hà Nội'),
(105, '2023-10-25', 3100000, 'TP. Hồ Chí Minh');
SELECT *
FROM DonHang
WHERE TongGiaTri > 1000000;
SELECT *
FROM DonHang
WHERE ThanhPhoGiaoHang = 'Hà Nội';
SELECT *
FROM DonHang
WHERE ThanhPhoGiaoHang != 'Đà Nẵng';
-- Hoặc
-- SELECT * FROM DonHang WHERE ThanhPhoGiaoHang <> 'Đà Nẵng';
SELECT *
FROM DonHang
ORDER BY TongGiaTri DESC;
SELECT *
FROM DonHang
ORDER BY NgayDatHang ASC;
SELECT DISTINCT ThanhPhoGiaoHang
FROM DonHang;
CREATE TABLE NhanVien (
    MaNV VARCHAR(10),
    HoTen VARCHAR(255),
    PhongBan VARCHAR(100),
    ChucVu VARCHAR(100),
    NamSinh INT
);
INSERT INTO NhanVien (MaNV, HoTen, PhongBan, ChucVu, NamSinh) VALUES
('NV01', 'Trần Văn Mạnh', 'Kinh doanh', 'Nhân viên', 1995),
('NV02', 'Lê Thị Hoa', 'Marketing', 'Trưởng phòng', 1990),
('NV03', 'Nguyễn Anh Dũng', 'Kinh doanh', 'Nhân viên', 1998),
('NV04', 'Phạm Thị Lan', 'Nhân sự', 'Chuyên viên', 1992),
('NV05', 'Hoàng Minh Tuấn', 'Kỹ thuật', 'Trưởng nhóm', 1991);
SELECT *
FROM NhanVien
WHERE PhongBan = 'Kinh doanh' AND NamSinh < 1996;
SELECT *
FROM NhanVien
WHERE ChucVu = 'Trưởng phòng' OR ChucVu = 'Trưởng nhóm';
SELECT *
FROM NhanVien
WHERE NOT PhongBan = 'Kỹ thuật';
-- Hoặc
-- SELECT * FROM NhanVien WHERE PhongBan != 'Kỹ thuật';
-- Hoặc
-- SELECT * FROM NhanVien WHERE PhongBan <> 'Kỹ thuật';
SELECT *
FROM NhanVien
WHERE PhongBan = 'Marketing' AND ChucVu = 'Trưởng phòng';
CREATE TABLE KhachHangThanThiet (
    MaKH INT,
    HoTen VARCHAR(255),
    ThanhPho VARCHAR(100),
    TongChiTieu INT,
    SoDonHang INT,
    LanCuoiMuaHang DATE
);
INSERT INTO KhachHangThanThiet (MaKH, HoTen, ThanhPho, TongChiTieu, SoDonHang, LanCuoiMuaHang) VALUES
(1, 'Nguyễn Thị Mai', 'Hà Nội', 15000000, 12, '2023-10-28'),
(2, 'Trần Văn Nam', 'TP. Hồ Chí Minh', 25000000, 20, '2023-10-15'),
(3, 'Lê Minh Anh', 'Hà Nội', 3000000, 2, '2023-10-05'),
(4, 'Phạm Hồng Nhung', 'Đà Nẵng', 8000000, 8, '2023-05-20'),
(5, 'Hoàng Tuấn Kiệt', 'Hà Nội', 18000000, 15, '2023-09-30'),
(6, 'Vũ Bích Phương', 'TP. Hồ Chí Minh', 4500000, 3, '2023-04-11');
SELECT MaKH, HoTen, TongChiTieu, SoDonHang
FROM KhachHangThanThiet
WHERE TongChiTieu > 10000000 AND SoDonHang >= 10
ORDER BY TongChiTieu DESC;
SELECT MaKH, HoTen, ThanhPho, TongChiTieu, SoDonHang
FROM KhachHangThanThiet
WHERE ThanhPho = 'Hà Nội' AND SoDonHang < 5 AND TongChiTieu > 2000000;
SELECT MaKH, HoTen, LanCuoiMuaHang, TongChiTieu
FROM KhachHangThanThiet
WHERE LanCuoiMuaHang < '2023-09-01';
SET SQL_SAFE_UPDATES = 0;
UPDATE KhachHangThanThiet
SET ThanhPho = 'Khách hàng cũ'
WHERE LanCuoiMuaHang < '2023-09-01';
CREATE TABLE SanPham (
    MaSP VARCHAR(10),
    TenSP VARCHAR(255),
    DanhMuc VARCHAR(100),
    SoLuongTon INT,
    NhaCungCap VARCHAR(100),
    NgayNhapKho DATE,
    TrangThai VARCHAR(50)
);
INSERT INTO SanPham (MaSP, TenSP, DanhMuc, SoLuongTon, NhaCungCap, NgayNhapKho, TrangThai) VALUES
('DB001', 'Nồi chiên không dầu', 'Đồ bếp', 25, 'Sunhouse Group', '2023-03-15', 'Bán chạy'),
('DD002', 'Máy sấy tóc', 'Điện gia dụng', 50, 'Philips VN', '2023-09-05', 'Hàng mới'),
('DB003', 'Bộ dao làm bếp', 'Đồ bếp', 15, 'Elmich', '2023-02-20', 'Bán chạy'),
('TT004', 'Bàn ủi hơi nước', 'Thiết bị tiện ích', 30, 'Philips VN', '2023-08-10', 'Bán chạy'),
('DB005', 'Máy xay sinh tố', 'Đồ bếp', 8, 'Sunhouse Group', '2023-04-01', 'Tồn kho');
UPDATE SanPham
SET NhaCungCap = 'Tập đoàn Sunhouse'
WHERE NhaCungCap = 'Sunhouse Group';
SELECT MaSP, TenSP, DanhMuc, NgayNhapKho, TrangThai
FROM SanPham
WHERE DanhMuc = 'Đồ bếp' AND NgayNhapKho < '2023-05-01';
UPDATE SanPham
SET TrangThai = 'Xả hàng tồn kho'
WHERE DanhMuc = 'Đồ bếp' AND NgayNhapKho < '2023-05-01';
SELECT MaSP, TenSP, SoLuongTon, TrangThai
FROM SanPham
WHERE TrangThai = 'Xả hàng tồn kho' OR SoLuongTon < 10
ORDER BY SoLuongTon ASC;
-- giỏi 7:
SELECT
customer_id,
amount,
payment_date
FROM
sakila.payment
WHERE
payment_date > '2005-08-01' AND amount > 9.00
ORDER BY
amount DESC;
SELECT
payment_id,
customer_id,
staff_id,
amount
FROM
sakila.payment
WHERE
amount = 0.00
OR (staff_id = 1 AND amount > 10.00)
ORDER BY
customer_id ASC;
/*
Phân tích và Nhận định Tình hình Kinh doanh (Dựa trên kết quả truy vấn)
1. Khách hàng VIP:
   - Nhận xét về nhóm khách hàng chi tiêu nhiều: Kết quả từ Nhiệm vụ 1 cho thấy đây là nhóm khách hàng tạo ra doanh thu lớn nhất trong thời gian gần đây (sau ngày 2005-08-01). Họ là khách hàng VIP, cần được chú trọng trong các chiến dịch giữ chân và ưu đãi đặc biệt.
   - Việc sắp xếp theo amount giảm dần (DESC) giúp ích: Cho phép Quản lý Cửa hàng ngay lập tức xác định được các giao dịch có giá trị ĐỈNH CAO nhất và dễ dàng nhận diện customer_id của những khách hàng này. Đây là bước đầu tiên để xây dựng danh sách khách hàng VIP theo tiêu chí "chi tiêu giao dịch lớn".
2. Giao dịch Bất thường (amount = 0.00):
   - Giao dịch có amount bằng 0.00 có thể là dấu hiệu của:
     a. Chương trình Khuyến mãi/Thẻ quà tặng: Khách hàng sử dụng voucher, thẻ thành viên, hoặc được tặng phim miễn phí (ví dụ: thuê phim thứ N miễn phí).
     b. Giao dịch bồi thường/Điều chỉnh: Giao dịch được nhập để bù trừ cho một giao dịch sai sót trước đó hoặc bồi thường cho khách hàng (ví dụ: phim bị lỗi, trả lại phí).
     c. Lỗi Hệ thống: Dữ liệu bị nhập sai hoặc lỗi trong quá trình xử lý thanh toán.
   - Tại sao quản lý cửa hàng cần quan tâm: Cần phân biệt giữa giao dịch "miễn phí có chủ đích" (Marketing/Bồi thường) và giao dịch "miễn phí do lỗi" (Lỗi hệ thống). Nếu tỷ lệ giao dịch 0.00 quá cao và không tương ứng với các chương trình khuyến mãi đang chạy, đây có thể là một lỗ hổng trong quy trình hoặc hệ thống cần được kiểm tra ngay lập tức.
3. Hiệu suất Nhân viên:
   - Nhân viên staff_id = 1 xử lý các giao dịch giá trị rất cao: Đây là một dấu hiệu tốt cho thấy nhân viên này có thể là người xử lý các đơn hàng phức tạp, giao dịch với khách hàng VIP, hoặc là nhân viên có năng suất làm việc cao.
   - Cần thêm thông tin gì để kết luận chắc chắn:
     a. Tổng số lượng giao dịch: Cần biết staff_id = 1 xử lý tổng cộng bao nhiêu giao dịch. Nếu giao dịch giá trị cao nhiều nhưng tổng số lượng giao dịch ít, có thể nhân viên này chỉ làm việc bán thời gian hoặc đảm nhiệm ca có lượng khách VIP nhiều hơn.
     b. Tổng giá trị giao dịch: So sánh tổng doanh thu (SUM(amount)) mà staff_id = 1 mang lại với các nhân viên khác (staff_id = 2) để có đánh giá công bằng hơn.
     c. Giờ làm việc/Ca làm việc: Cần biết phân bổ ca làm để đánh giá hiệu suất trong cùng một bối cảnh (ví dụ: ca cuối tuần thường có giao dịch lớn hơn).
*/
INSERT INTO sakila.customer (store_id, first_name, last_name, email, address_id, active)
VALUES (2, 'ANNA', 'HILL', 'ANNA.HILL@sakilacustomer.org', 5, 1);
UPDATE sakila.customer
SET email = REPLACE(email, '@sakilacustomer.org', '@sakilacustomer.com')
WHERE first_name = 'JENNIFER';
UPDATE sakila.customer
SET active = 0
WHERE customer_id = 25;