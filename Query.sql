SELECT * FROM ChinhChienVPS.dbo.NhanVien
SELECT * FROM ChinhChienVPS.dbo.TaiKhoan
SELECT * FROM ChinhChienVPS.dbo.LichLam
SELECT * FROM ChinhChienVPS.dbo.KhoHang
SELECT * FROM ChinhChienVPS.dbo.VatLieu
SELECT * FROM ChinhChienVPS.dbo.HoaDon
SELECT * FROM ChinhChienVPS.dbo.SanPham
SELECT * FROM ChinhChienVPS.dbo.Menu
-- SELECT * FROM DanhSachHoaDon
GO
-- Lay Ten Nhan Vien tu Ten Tai Khoan va Mat Khau
SELECT nv.TenNhanVien FROM TaiKhoan tk, NhanVien nv WHERE tk.TenTaiKhoan = '" + username + "' AND tk.MatKhau = '" + password + "' AND nv.MaNhanVien = tk.MaNhanVien

SELECT nv.TenNhanVien
FROM TaiKhoan tk, NhanVien nv
WHERE tk.TenTaiKhoan = 'chuquan2'
AND tk.MatKhau = 'cq' 
AND nv.MaNhanVien = tk.MaNhanVien