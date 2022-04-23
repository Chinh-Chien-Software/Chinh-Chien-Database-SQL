-- Hiện tại an toàn khi chỉ Insert NhanVien và TaiKhoan

USE ChinhChien
GO

-- Insert Lượng Lớn
insert into NhanVien (
MaNhanVien,
TenNhanVien,
LuongTrenGio,
NgayVaoLam,
GioiTinh,
NgaySinh,
SoDienThoai,
DiaChi,
LoaiNhanVien
)
values
('1235','Tung', '15000','2018-02-16','Nam','2000-04-25','0816148776',
'362 Truong Cong Dinh', 
'thungan'
),
('1354','Ngan', '18000','2018-03-26','Nu', '1999-05-25','0542136161',
'46 Hoang Hoa Tham', 
'quanly'
),
('1563','Thu',  '15000','2018-01-20','Nu', '2000-06-12','0654782153',
'491 Ton Sach',
'phache'
),
('4192','Trung', '20000','27/06/2018','Nam','16/08/1996','0541278961',
'45/12 Nguyen Binh Khiem',
'quanly'
),
('5214','thinh', '15000','14/09/2018','Nam','11/04/2001','0475963214',
'78 Trung Truc', 
'phucvu'
)

GO

insert into TaiKhoan (
TenTaiKhoan,
MatKhau,
LoaiTaiKhoan
)
values
('chuquan','cq',
'chuquan'
),
('quanly1','ql',
'quanly'
),
('thungan','tn',
'thungan' 
),
('phache', 'pc', 
'phache'
),
('quanly2','ql',
'quanly' 
)

GO
insert into LichLam
values ('1877a0f84b35a698c87fb47db0920100','29','29'),
('0939adf3fb6225e811802184fe26c79a','28','28'),
('ed521923fbb40621dc250517cc0c9e0e','27','27'),
('6498667c85740f33bb0806fe96b1d72f','26','26'),
('693b363e987a38515fb07a063706dab9','25','25')

GO
insert into VatLieu
values
('T254','Sua bo','Long Thanh','1000','800000','VND'),
('S241','Tran Trau','Chin Chin','100000','7500000','VND'),
('C256','Cafe','Trung Nguyen','50000','1200000','VND'),
('F524','Duong Phen','Long An','200','410000','VND'),
('V025','Tra','tea plus', '100000','15000000','VND')
GO 

insert into SanPham (
MaSanPham,
TenSanPham,
CongThuc,
ThanhPhan,
DanhGia, -- 1 => 5 sao
Gia --đ/ly
)
values
('51','Macha','Cong Thuc','Thanh Phan','5','350000'),
('16','Trà Sửa','Cong Thuc','Thanh Phan','5','30000'),
('91','Bac Siu','Cong Thuc','Thanh Phan','5','30000'),
('86','Kem Trai Cay','Cong Thuc','Thanh Phan','5','50000'),
('47','Sinh To','Cong Thuc','Thanh Phan','5','40000')
GO

Insert into Menu (
  PhienBan,
  NgayCapNhat
)
values('#871f2f','25/05/2016'),
('#54d565','15/04/2018'),
('#a0cf26','13/06/2018'),
('#2c2ff4','28/02/2019'),
('#315d27','24/08/2019'),
('#e0ccce','28/12/2020')

GO
Insert into KhoHang (
  Makho,
  TenKho,
  DiaChi,
  DienTich
)
values(
'16862eae87','ChinChin1','F4 Huyen Tran Cong Chua','60'
),
(
'711c784dd1','ChinChin2','282 Truong Cong Dinh','75'
),
(
'4edddbaa8a','ChinChin3','49/15 Nguyen Binh Khiem','100'
)
GO
INSERT INTO HoaDon (
MaHoaDon,
MaNhanVien,
ThoiGianGiaoDich)
VALUES (
'HD00000001', '1235', '20200909 10:34:09 AM'),
('HD00000002', '1354','20200909 10:00:09 AM'),
('HD00000003', '1563' ,'20200909 11:00:09 AM'
)
Go
INSERT INTO ThongTinHoaDon (
MaSanPham,
MaHoaDon,
SoLuong )
VALUES ('16', ''),
('16', ''),
('16', '')
GO

