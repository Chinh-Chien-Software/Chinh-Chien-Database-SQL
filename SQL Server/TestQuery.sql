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
GO

insert into VatLieu values (
'V001', 'Vat Lieu 1', 'DaoPhuThinh', 20, 20000, 'T�n'
)

SELECT vl.MaVatLieu, vl.TenVatLieu, vl.NhaCungCap, vl.SoLuong, vl.Gia, vl.DonViTinh
FROM VatLieu vl, Kho k
where vl.MaQuan = 'quanchinhchien'
and k.TenKho = 'kho 2'
and vl.MaKho = k.MaKho