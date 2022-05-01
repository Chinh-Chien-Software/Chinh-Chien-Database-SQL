USE ChinhChienVPS
GO
alter table TaiKhoan
drop column LoaiTaiKhoan

alter table TaiKhoan
add Email varchar(50)