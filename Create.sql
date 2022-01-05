CREATE DATABASE QuanLyQuanTraSua
GO

USE QuanLyQuanTraSua
GO

CREATE TABLE NhanVien
(
  MaNhanVien VARCHAR(4),
  TenNhanVien NVARCHAR(40),
  TenTaiKhoan VARCHAR(10),
  LuongTrenGio INT,
  NgayVaoLam DateTime,
  GioiTinh VARCHAR(3),
  NgaySinh DateTime,
  SoDienThoai VARCHAR(13),
  DiaChi NVARCHAR(40),
  LoaiNhanVien INT,
  CONSTRAINT PK_NhanVien_MaNhanVien PRIMARY KEY (MaNhanVien)
)
GO
CREATE TABLE TaiKhoan
(
  TenTaiKhoan NVARCHAR,
  MatKhau NVARCHAR,
  LoaiTaiKhoan NVARCHAR,
  CONSTRAINT PK_TaiKhoan_TenTaiKhoan PRIMARY KEY (TenTaiKhoan)
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
    MaSanPham NVARCHAR,
    TenSanPham NVARCHAR,
    CongThuc NVARCHAR,
    ThanhPhan NVARCHAR,
    DanhGia INT,
    Gia FLOAT,
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
    MaKho NVARCHAR,
    TenKho NVARCHAR,
    DiaChi NVARCHAR,
    DienTich FLOAT,
    CONSTRAINT PK_KhoHang_MaKho PRIMARY KEY (MaKho) 
)
GO
CREATE TABLE BaoCao
(
    MaBaoCao NVARCHAR,
    DoanhThu FLOAT,
    GiaVonHangBan FLOAT,
    LoiNhuanGop FLOAT,
    ThuNhap FLOAT,
    LoiNhuan FLOAT,
    CONSTRAINT PK_BaoCao_MaBaoCao PRIMARY KEY (MaBaoCao)
)