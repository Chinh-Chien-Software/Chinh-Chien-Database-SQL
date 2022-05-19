USE ChinhChien
GO

alter table TaiKhoan
drop column LoaiTaiKhoan

alter table TaiKhoan
add Email varchar(50)

alter table NhanVien
add TenTaiKhoan varchar(10)
CONSTRAINT FK_TaiKhoan_TenTaiKhoan
FOREIGN key (TenTaiKhoan) REFERENCES TaiKhoan(TenTaiKhoan)