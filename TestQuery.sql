insert into TaiKhoan (
TenTaiKhoan,
MatKhau,
LoaiTaiKhoan,
MaNhanVien
)
values
('chuquan2','cq',
'chuquan', '1235'
)

USE ChinhChienVPS
GO
SELECT count(*) FROM TaiKhoan WHERE TenTaiKhoan = 'chuquan'