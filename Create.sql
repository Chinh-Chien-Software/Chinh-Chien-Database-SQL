CREATE DATABASE ChinhChien
GO

USE ChinhChien
GO

CREATE TABLE NhanVien
(
  MaNhanVien CHAR(4),
  TenNhanVien NVARCHAR(40),
  LuongTrenGio INT,
  NgayVaoLam DateTime,
  GioiTinh CHAR(3),
  NgaySinh DateTime,
  SoDienThoai VARCHAR(13),
  DiaChi NVARCHAR(40),
  LoaiNhanVien varchar(10),
  CONSTRAINT PK_NhanVien_MaNhanVien PRIMARY KEY (MaNhanVien),
  CONSTRAINT CK_GT CHECK (GioiTinh = 'Nam' OR GioiTinh = 'Nu')
)
GO

CREATE TABLE TaiKhoan
(
  TenTaiKhoan CHAR(10),
  MatKhau VARCHAR(10),
  LoaiTaiKhoan NVARCHAR(10),
  MaNhanVien CHAR(4),
  UIMode INT,
  CONSTRAINT PK_TenTaiKhoan PRIMARY KEY (TenTaiKhoan),
  CONSTRAINT FK_NhanVien_MaNhanVien FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien),
  CONSTRAINT CK_UIMODE CHECK (UIMode >= 0 and UIMode <=2) -- 0 is Light Mode, 1 is Dark Mode, 2 is follow System Setting
)
GO

CREATE TABLE LichLam
(
    MaLich NVARCHAR,
    NgayBatDau DateTime,
    NgayKetThUC DateTime,
    CONSTRAINT PK_LichLam_MaLich PRIMARY KEY (MaLich)
)
GO

CREATE TABLE VatLieu
(
    MaVatLieu NVARCHAR,
    TenVatLieu NVARCHAR,
    NhaCungCap NVARCHAR,
    SoLuong INT,
    Gia FLOAT,
    DonViTinh NVARCHAR,
    CONSTRAINT PK_VatLieu_MaVatLieu PRIMARY KEY (MaVatLieu)
)
GO

CREATE TABLE SanPham
(
    MaSanPham VARCHAR(3),
    TenSanPham NVARCHAR(40),
    CongThuc VARCHAR(100),
    ThanhPhan NVARCHAR(100),
    DanhGia INT,
    Gia INT,
    CONSTRAINT PK_SanPham_MaSanPham PRIMARY KEY (MaSanPham)
)
GO

CREATE TABLE Menu
(
    PhienBan NVARCHAR,
    NgayCapNhat DateTime,
    CONSTRAINT PK_Menu_PhienBan PRIMARY KEY (PhienBan)
)
GO

CREATE TABLE KhoHang
(
    MaKho NVARCHAR(10),
    TenKho NVARCHAR(40),
    DiaChi NVARCHAR(100),
    DienTich FLOAT,
    CONSTRAINT PK_KhoHang_MaKho PRIMARY KEY (MaKho) 
)
GO

CREATE TABLE HoaDon 
(
	MaHoaDon VARCHAR(10),
	MaNhanVien VARCHAR(4),
	ThoiGianGiaoDich DATETIME,
	-- TongTien INT,
	CONSTRAINT PK_HoaDon_MaHoaDon PRIMARY KEY (MaHoaDon)
)
Go

CREATE TABLE ThongTinHoaDon
(
	MaSanPham VARCHAR(3),
	MaHoaDon VARCHAR(10),
	SoLuong INT
)