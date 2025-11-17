CREATE DATABASE quanlythuvien;
USE quanlythuvien;
CREATE TABLE tacgia(
matacgia int primary key auto_increment,
tentacgia varchar(100) not null,
quoctich varchar(50));
CREATE TABLE docgia( 
madocgia int primary key auto_increment,
tendocgia varchar(100) not null,
diachi varchar(255),
sodienthoai varchar(15) unique );
-- Thêm dữ liệu vào bảng TacGia
INSERT INTO tacGia (tentacgia, quoctich)
VALUES 
('Nguyễn Nhật Ánh', 'Việt Nam'),
('JK Rowling', 'Anh'),
('Haruki Murakami', 'Nhật Bản'),
('Dale Carnegie', 'Mỹ');
INSERT INTO docgia (tendocgia, diachi, sodienthoai) 
VALUES 
('Nguyễn Văn A' ,'123 Đường ABC, Hà Nội' ,'0901234567'),
('Trần Thị B' ,'456 Đường XYZ, TP.HCM' ,'0912345678'),
('Lê Văn C' ,'789 Đường LMN, Đà Nẵng' ,'0923456789'),
('Phạm Thị D' ,'101 Đường QRS, Hà Nội' ,'0934567890'),
('Hoàng Văn E' ,'202 Đường UVW, Cần Thơ' ,'0945678901'); 
-- cơ bản 3
SELECT * 
FROM TacGia 
WHERE QuocTich = 'Việt Nam';
SELECT * 
FROM docgia
WHERE diachi = '%Hà Nội%';
SELECT tendocgia, SoDienThoai 
FROM DocGia;
-- cơ bản 4
UPDATE DocGia 
SET DiaChi = '200 Đường XYZ, TP. Thủ Đức' 
WHERE MaDocGia = 2;
DELETE FROM TacGia 
WHERE MaTacGia = 3;
-- khá 5
CREATE TABLE Sach (
    MaSach INT AUTO_INCREMENT PRIMARY KEY,
    TenSach VARCHAR(200) NOT NULL,
    NamXuatBan INT,
    MaTacGia INT,
    FOREIGN KEY (MaTacGia) REFERENCES TacGia(MaTacGia)
);
INSERT INTO Sach (TenSach, NamXuatBan, MaTacGia) 
VALUES 
('Cho tôi xin một vé đi tuổi thơ', 2008, 1),
('Mắt biếc', 1990, 1),
('Harry Potter và Hòn đá Phù thủy', 1997, 2),
('Harry Potter và Phòng chứa Bí mật', 1998, 2),
('Đắc nhân tâm', 1936, 4);
-- khá 6
SELECT * 
FROM Sach 
WHERE NamXuatBan BETWEEN 1990 AND 2000;
SELECT * 
FROM Sach 
WHERE TenSach = 'Harry Potter và Hòn đá Phù thủy' 
   OR TenSach = 'Harry Potter và Phòng chứa Bí mật';
SELECT * 
FROM Sach 
WHERE MaTacGia = 1 AND NamXuatBan > 2000;
SELECT * 
FROM Sach 
ORDER BY NamXuatBan DESC;
SELECT * 
FROM DocGia 
ORDER BY TenDocGia ASC;
CREATE TABLE PhieuMuon (
    MaPhieuMuon INT AUTO_INCREMENT PRIMARY KEY,
    NgayMuon DATE NOT NULL,
    NgayTra DATE NULL,
    MaDocGia INT,
    MaSach INT,
    FOREIGN KEY (MaDocGia) REFERENCES DocGia(MaDocGia),
    FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);
ALTER TABLE Sach 
ADD COLUMN TrangThai VARCHAR(50);