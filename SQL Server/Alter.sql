USE ChinhChien
GO

alter table TaiKhoan
drop column LoaiTaiKhoan

alter table TaiKhoan
add Email varchar(50)

-- May 19 2022
alter table NhanVien
add TenTaiKhoan varchar(10)
CONSTRAINT FK_TaiKhoan_TenTaiKhoan
FOREIGN key (TenTaiKhoan) REFERENCES TaiKhoan(TenTaiKhoan)

-- 24 May 2022 21:30 Xóa để tạo mới với tên khác
alter table HoaDon
drop CONSTRAINT PK_HoaDon_MaHoaDon
-- 24 May 2022 21:50 
alter table HoaDon
add CONSTRAINT PK_MaHoaDon PRIMARY KEY (MaHoaDon)

-- 24-May-2022 22:06
alter table ThanhPhanSanPham
add CONSTRAINT PK_ThanhPhanSanPham -- Alter
    PRIMARY KEY (MaSanPham, MaVatLieu) -- Alter

-- 24-May-2022 22:10 
alter table ThanhPhanSanPham
alter COLUMN MaSanPham VARCHAR(3) not null
alter table ThanhPhanSanPham
alter COLUMN MaVatLieu VARCHAR(4) not null