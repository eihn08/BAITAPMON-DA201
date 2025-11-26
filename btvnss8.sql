-- 1. BTVN CƠ BẢN 
-- Tạo database
CREATE DATABASE RetailStore;
USE RetailStore;
-- Tạo bảng Products
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);
-- Tạo bảng Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);
-- Tạo bảng Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
-- Chèn dữ liệu vào bảng Customers
INSERT INTO Customers (customer_name, city) VALUES
('Nguyễn Văn A', 'Hanoi'),
('Trần Thị B', 'Ho Chi Minh'),
('Lê Văn C', 'Hanoi'),
('Phạm Thị D', 'Da Nang'),
('Hoàng Văn E', 'Hanoi');
-- Chèn dữ liệu vào bảng Products
INSERT INTO Products (product_name, price, stock_quantity) VALUES
('Laptop Dell XPS', 25000000, 10),
('iPhone 14 Pro', 28000000, 15),
('Samsung Galaxy S23', 18000000, 20),
('MacBook Air M2', 32000000, 8),
('Tai nghe Sony', 3500000, 30);
-- Chèn dữ liệu vào bảng Orders
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-01-15', 25000000),
(2, '2024-01-16', 28000000),
(3, '2024-01-17', 18000000),
(1, '2024-01-18', 3500000),
(4, '2024-01-19', 32000000),
(5, '2024-01-20', 15000000),
(2, '2024-01-21', 22000000);
-- sử dụng hàm count
SELECT COUNT(*) AS total_products 
FROM Products;
-- sử dụng hàm sum
SELECT SUM(total_amount) AS total_revenue 
FROM Orders;
-- sử dụng hàm avg 
SELECT AVG(price) AS average_price 
FROM Products;
-- sử dụng hàm min
SELECT MIN(total_amount) AS min_order_amount 
FROM Orders;
-- sử dụng hàm max 
SELECT MAX(total_amount) AS max_order_amount 
FROM Orders;
-- sử dụng where 
SELECT COUNT(*) AS hanoi_customers_count 
FROM Customers 
WHERE city = 'Hanoi';

-- cơ bản 2
-- Tạo database
CREATE DATABASE CompanyHR;
USE CompanyHR;
-- Tạo bảng Employees
CREATE TABLE Employees1 (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(12,2) NOT NULL,
    hire_date DATE NOT NULL
);
-- Chèn dữ liệu vào bảng Employees
INSERT INTO Employees1 (full_name, department, salary, hire_date) VALUES
('Nguyễn Văn An', 'IT', 25000000, '2020-03-15'),
('Trần Thị Bình', 'Sales', 18000000, '2021-06-20'),
('Lê Văn Cường', 'IT', 28000000, '2019-11-10'),
('Phạm Thị Dung', 'HR', 15000000, '2022-01-08'),
('Hoàng Văn Em', 'Sales', 22000000, '2020-08-25'),
('Vũ Thị Phương', 'IT', 32000000, '2018-05-12'),
('Đặng Văn Hùng', 'Marketing', 19000000, '2021-09-30'),
('Bùi Thị Lan', 'HR', 16000000, '2023-02-14'),
('Nguyễn Văn Minh', 'IT', 27000000, '2020-12-01'),
('Trần Văn Nam', 'Sales', 21000000, '2022-03-18');
-- hàm count 
SELECT COUNT(*) AS number_of_employees 
FROM Employees1;
-- hàm sum 
SELECT SUM(salary) AS total_monthly_salary 
FROM Employees1;
-- hàm avg 
SELECT AVG(salary) AS average_salary 
FROM Employees1;
-- hàm min 
SELECT MIN(salary) AS lowest_salary 
FROM Employees1;
-- hàm max
SELECT MAX(salary) AS highest_salary 
FROM Employees1;
-- sdung where 
SELECT SUM(salary) AS it_department_salary 
FROM Employees1 
WHERE department = 'IT';

-- cơ bản 3
-- Tạo database
CREATE DATABASE LibraryManagement;
USE LibraryManagement;
-- Tạo bảng Books
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    publication_year INT NOT NULL,
    pages INT NOT NULL
);
-- Tạo bảng BorrowingRecords
CREATE TABLE BorrowingRecords (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    borrow_date DATE NOT NULL,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
-- Chèn dữ liệu vào bảng Books
INSERT INTO Books (title, author, publication_year, pages) VALUES
('Nhà Giả Kim', 'Paulo Coelho', 1988, 208),
('Đắc Nhân Tâm', 'Dale Carnegie', 1936, 291),
('Harry Potter và Hòn Đá Phù Thủy', 'J.K. Rowling', 1997, 332),
('Bố Già', 'Mario Puzo', 1969, 448),
('Sherlock Holmes', 'Arthur Conan Doyle', 1887, 307),
('Trí Tuệ Do Thái', 'Eran Katz', 2015, 276),
('Tư Duy Nhanh và Chậm', 'Daniel Kahneman', 2011, 499),
('Nghìn Lẻ Một Đêm', 'Nhiều tác giả', 1706, 863),
('Lược Sử Thời Gian', 'Stephen Hawking', 1988, 256),
('Chiến Tranh và Hòa Bình', 'Leo Tolstoy', 1869, 1225),
('Doraemon', 'Fujiko F. Fujio', 2005, 128),
('Người Mẹ Tốt Hơn Là Người Thầy Tốt', 'Doãn Kiến Lợi', 2018, 320);
-- Chèn dữ liệu vào bảng BorrowingRecords
INSERT INTO BorrowingRecords (book_id, borrow_date) VALUES
(1, '2024-01-10'),
(2, '2024-01-12'),
(3, '2024-01-15'),
(4, '2024-02-01'),
(5, '2024-02-05'),
(6, '2024-02-10'),
(7, '2024-02-15'),
(1, '2024-03-01'),
(8, '2024-03-05'),
(9, '2024-03-10'),
(10, '2024-03-12'),
(11, '2024-03-15');
-- câu lệnh count 
SELECT COUNT(*) AS total_books 
FROM Books;
-- câu lệnh sum 
SELECT SUM(pages) AS total_pages_in_library 
FROM Books;
-- câu lệnh avg 
SELECT AVG(pages) AS average_pages_per_book 
FROM Books;
-- câu lệnh min 
SELECT MIN(publication_year) AS oldest_book_year 
FROM Books;
-- câu lệnh max 
SELECT MAX(publication_year) AS newest_book_year 
FROM Books;
-- đếm ngày xuất bản sách 2000
SELECT COUNT(*) AS books_after_2000 
FROM Books 
WHERE publication_year > 2000;

-- khá 4
-- Tạo database
CREATE DATABASE ECommerceAnalysis;
USE ECommerceAnalysis;
-- Tạo bảng Products
CREATE TABLE Products1 (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(200) NOT NULL,
    category VARCHAR(100) NOT NULL,
    price DECIMAL(12,2) NOT NULL
);
-- Tạo bảng Orders
CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(12,2) NOT NULL
);
-- Chèn dữ liệu vào bảng Products
INSERT INTO Products1 (product_name, category, price) VALUES
('iPhone 15 Pro', 'Electronics', 28000000),
('Samsung Galaxy S24', 'Electronics', 22000000),
('MacBook Air M2', 'Electronics', 32000000),
('Đắc Nhân Tâm', 'Books', 150000),
('Nhà Giả Kim', 'Books', 120000),
('Harry Potter tập 1', 'Books', 180000),
('Áo thun nam basic', 'Clothing', 250000),
('Quần jeans nữ', 'Clothing', 450000),
('Tai nghe Sony', 'Electronics', 3500000),
('Laptop Dell XPS', 'Electronics', 25000000),
('Bí mật của may mắn', 'Books', 135000),
('Áo khoác denim', 'Clothing', 650000),
('Giày thể thao', 'Clothing', 850000),
('Mũ bảo hiểm', 'Sports', 1200000),
('Vợt tennis', 'Sports', 2800000);
-- Chèn dữ liệu vào bảng Orders
INSERT INTO Orders2 (customer_id, order_date, total_amount) VALUES
(101, '2024-01-15', 28000000),
(102, '2024-01-16', 450000),
(101, '2024-01-18', 3500000),
(103, '2024-01-20', 150000),
(104, '2024-01-22', 32000000),
(105, '2024-01-25', 850000),
(102, '2024-02-01', 1200000),
(106, '2024-02-05', 22000000),
(107, '2024-02-08', 180000),
(101, '2024-02-10', 250000),
(108, '2024-02-12', 2800000),
(103, '2024-02-15', 650000),
(109, '2024-02-18', 135000),
(110, '2024-02-20', 32000000),
(104, '2024-02-25', 3500000);
-- hàm group by cơ bản 
SELECT 
    category,
    COUNT(*) AS number_of_products
FROM Products1
GROUP BY category;