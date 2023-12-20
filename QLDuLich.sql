---Xoa CSDL QLDulich neu da co
use master
Drop Database QLDulich
-----Tao CSDL QLDulich
create database QLDulich
GO
use QLDULICH
CREATE TABLE KHACHHANG
(
MaKH INT IDENTITY(1,1),
HoTen nVarchar(50) NOT NULL,
Taikhoan Varchar(50) UNIQUE,
Matkhau Varchar(50) NOT NULL,
Email Varchar(100) UNIQUE,
DiachiKH nVarchar(200),
DienthoaiKH Varchar(50),
Ngaysinh DATETIME
CONSTRAINT PK_Khachhang PRIMARY KEY(MaKH)
)

CREATE TABLE SACH
(
Masach INT IDENTITY(1,1),
Tensach NVARCHAR(100) NOT NULL,
Giaban Decimal(18,0) CHECK (Giaban>=0),
Mota NVarchar(Max),
Anhbia VARCHAR(50),
Constraint PK_Sach Primary Key(Masach),
)

CREATE TABLE DONDATHANG
(
MaDonHang INT IDENTITY(1,1),
Dathanhtoan bit,
Tinhtranggiaohang bit,
Ngaydat Datetime,
Ngaygiao Datetime,
MaKH INT,
CONSTRAINT PK_DonDatHang PRIMARY KEY (MaDonHang),
CONSTRAINT FK_Khachhang FOREIGN KEY(MaKH) REFERENCES Khachhang(MaKH)
)
CREATE TABLE CHITIETDONTHANG
(
MaDonHang INT,
Masach INT,
Soluong Int Check(Soluong>0),
Dongia Decimal(18,0) Check(Dongia>=0),
CONSTRAINT PK_CTDatHang PRIMARY KEY(MaDonHang,Masach),
CONSTRAINT FK_Donhang FOREIGN KEY (Madonhang)
REFERENCES Dondathang(Madonhang),
CONSTRAINT FK_Sach FOREIGN KEY (Masach)
REFERENCES Sach(Masach)
)


INSERT INTO SACH VALUES(N'Phố cổ Hà Nội',3000000,N'Phố cổ Hà Nội là một trong những địa điểm du lịch nổi tiếng nhất Việt Nam. Nơi đây mang đậm nét văn hóa, lịch sử của thủ đô ngàn năm văn hiến. Với những con phố nhỏ, những ngôi nhà cổ kính, những hàng quán bình dị, phố cổ Hà Nội mang đến cho du khách cảm giác bình yên, thư thái.','Hinh1.jpg')

INSERT INTO SACH VALUES(N'Cố đô Huế',4200000,N'Cố đô Huế là một trong những di sản thế giới được UNESCO công nhận. Nơi đây từng là kinh đô của Việt Nam trong suốt 13 thế kỷ. Cố đô Huế mang đậm nét kiến trúc cổ kính, với những cung điện, lăng tẩm nguy nga, tráng lệ.','Hinh2.jpg')

INSERT INTO SACH VALUES(N'Lặng lẽ Sa Pa',3100000,N'Sa Pa là một thị trấn vùng cao nằm ở phía Tây Bắc Việt Nam. Nơi đây nổi tiếng với khí hậu mát mẻ, phong cảnh thiên nhiên hùng vĩ, thơ mộng. Sa Pa là điểm đến lý tưởng cho những du khách yêu thích khám phá thiên nhiên, trải nghiệm văn hóa bản địa.','Hinh3.jpg')

INSERT INTO SACH VALUES(N'Thung lũng tình yêu Đà Lạt',6000000,N'Đà Lạt là thành phố ngàn hoa, nổi tiếng với khí hậu se lạnh, mát mẻ quanh năm. Nơi đây được mệnh danh là "thành phố tình yêu" với những hồ nước thơ mộng, những rừng thông bạt ngàn, những ngôi biệt thự cổ kính.','Hinh4.jpg')

INSERT INTO SACH VALUES(N'Bà Na Hills-Đà Nẵng',7000000,N'Đà Nẵng là một thành phố trẻ, năng động, được mệnh danh là "thành phố đáng sống nhất Việt Nam". Nơi đây sở hữu nhiều danh lam thắng cảnh nổi tiếng như: Bà Nà Hills, bán đảo Sơn Trà, cầu Rồng,...','Hinh5.jpg')

INSERT INTO SACH VALUES(N'Sài Gòn đẹp lắm!',4500000,N'Sài Gòn hay TP.HCM là thành phố lớn nhất Việt Nam, mang đậm nét văn hóa phương Tây. Nơi đây là điểm đến lý tưởng cho những du khách yêu thích mua sắm, khám phá ẩm thực, trải nghiệm cuộc sống nhộn nhịp, sôi động.','Hinh6.jpg')



