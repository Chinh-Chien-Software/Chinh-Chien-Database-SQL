SELECT * FROM NhanVien 
SELECT * FROM TaiKhoan
SELECT * FROM LichLam
SELECT * FROM KhoHang
SELECT * FROM VatLieu
SELECT * FROM HoaDon
SELECT * FROM SanPham
SELECT * FROM Menu
-- SELECT * FROM DanhSachHoaDon
GO
-- Lay Ten Nhan Vien tu Ten Tai Khoan va Mat Khau
SELECT nv.TenNhanVien FROM TaiKhoan tk, NhanVien nv WHERE tk.TenTaiKhoan = '" + username + "' AND tk.MatKhau = '" + password + "' AND nv.MaNhanVien = tk.MaNhanVien

SELECT nv.TenNhanVien
FROM TaiKhoan tk, NhanVien nv
WHERE tk.TenTaiKhoan = 'chuquan2'
AND tk.MatKhau = 'cq' 
AND nv.MaNhanVien = tk.MaNhanVien