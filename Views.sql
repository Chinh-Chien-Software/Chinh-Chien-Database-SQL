-- Tổng số lượng được mua của mỗi sản phẩm
create view SoLuotBanMoiSanPham as
select s.TenSanPham, count()
from ChiTietHoaDon c, SanPham s
where c.MaSanPham = s.MaSanPham
GO

-- Tổng vật liêệu trong Kho
create view SoLuongVatLieu as 
select TenVatLieu, SoLuong
from VatLieu

-- Lọc các mọn n8
create 
select TenVat