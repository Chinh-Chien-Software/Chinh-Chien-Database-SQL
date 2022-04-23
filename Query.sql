SELECT * FROM ChinhChien.dbo.NhanVien
SELECT * FROM ChinhChien.dbo.TaiKhoan
SELECT * FROM ChinhChien.dbo.LichLam
SELECT * FROM ChinhChien.dbo.KhoHang
SELECT * FROM ChinhChien.dbo.VatLieu
SELECT * FROM ChinhChien.dbo.HoaDon
SELECT * FROM ChinhChien.dbo.SanPham
SELECT * FROM ChinhChien.dbo.Menu
-- SELECT * FROM DanhSachHoaDon
GO
-- Lay Ten Nhan Vien tu Ten Tai Khoan va Mat Khau
SELECT nv.TenNhanVien FROM TaiKhoan tk, NhanVien nv WHERE tk.TenTaiKhoan = '" + username + "' AND tk.MatKhau = '" + password + "' AND nv.MaNhanVien = tk.MaNhanVien

SELECT nv.TenNhanVien
FROM TaiKhoan tk, NhanVien nv
WHERE tk.TenTaiKhoan = 'chuquan2'
AND tk.MatKhau = 'cq' 
AND nv.MaNhanVien = tk.MaNhanVien