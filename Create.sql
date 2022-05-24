CREATE DATABASE ChinhChien
GO

USE ChinhChienVPS
GO

create table Quan
(
    MaQuan varchar(100),
    TenQuan nvarchar(30),
    constraint PK_MaQuan primary key (MaQuan)
)
go

create table TaiKhoan
(
    TenTaiKhoan varchar(10),
    MatKhau varchar(10) not null,
    UIMode int,
    Email varchar(50) --Thêm bởi ALTER
    CONSTRAINT PK_TenTaiKhoan PRIMARY key (TenTaiKhoan)
)

CREATE TABLE NhanVien
(
  MaNhanVien varCHAR(4),
  TenNhanVien NVARCHAR(40),
  LuongTrenGio INT,
  NgayVaoLam Date,
  GioiTinh CHAR(3),
  NgaySinh Date,
  SoDienThoai VARCHAR(13),
  DiaChi NVARCHAR(40),
  LoaiNhanVien varchar(10),
  MaQuan varchar(100),
  TenTaiKhoan varchar(10), -- ALTER
  CONSTRAINT PK_MaNhanVien PRIMARY KEY (MaNhanVien),
  CONSTRAINT CK_GIOITINH CHECK (GioiTinh = 'Nam' OR GioiTinh = 'Nu'),
  CONSTRAINT FK_TaiKhoan_TenTaiKhoan -- ALTER
  FOREIGN key (TenTaiKhoan) REFERENCES TaiKhoan(TenTaiKhoan) -- ALTER
)
GO

CREATE TABLE ChinhChienVPS.dbo.TaiKhoan
(
  TenTaiKhoan VARCHAR(10),
  MatKhau VARCHAR(10),
  LoaiTaiKhoan NVARCHAR(10),
  UIMode INT,
  CONSTRAINT PK_TenTaiKhoan PRIMARY KEY (TenTaiKhoan),
  CONSTRAINT CK_UIMODE CHECK (UIMode >= 0 and UIMode <=2)
  -- 0 is Light Mode, 1 is Dark Mode, 2 is follow System Setting
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
    MaVatLieu VARCHAR(4),
    TenVatLieu NVARCHAR(30),
    NhaCungCap NVARCHAR(30),
    SoLuong INT,
    Gia FLOAT,
    DonViTinh NVARCHAR(10),
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

CREATE TABLE ChiTietHoaDon
(
	MaSanPham VARCHAR(3),
	MaHoaDon VARCHAR(10),
	SoLuong INT
)
go

create table TruyCapQuan
(
    MaQuan varchar(100),
    TenTaiKhoan varchar(10),
    Quyen varchar(30)
)
go

create table ThanhPhanSanPham -- Thành phần của Sản phẩm
(
    MaSanPham VARCHAR(3),
    MaVatLieu VARCHAR(4),
    SoLuong int,
    constraint FK
)