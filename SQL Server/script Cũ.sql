USE [master]
GO
/****** Object:  Database [QuanLyQuanTraSua]    Script Date: 1/13/2022 17:53:15 PM ******/
CREATE DATABASE [QuanLyQuanTraSua]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyQuanTraSua', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TQK\MSSQL\DATA\QuanLyQuanTraSua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyQuanTraSua_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TQK\MSSQL\DATA\QuanLyQuanTraSua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyQuanTraSua] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyQuanTraSua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyQuanTraSua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyQuanTraSua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyQuanTraSua] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyQuanTraSua', N'ON'
GO
ALTER DATABASE [QuanLyQuanTraSua] SET QUERY_STORE = OFF
GO
USE [QuanLyQuanTraSua]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [varchar](10) NOT NULL,
	[MaNhanVien] [varchar](4) NULL,
	[ThoiGianGiaoDich] [datetime] NULL,
 CONSTRAINT [PK_HoaDon_MaHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[MaKho] [nvarchar](1) NOT NULL,
	[TenKho] [nvarchar](1) NULL,
	[DiaChi] [nvarchar](1) NULL,
	[DienTich] [float] NULL,
 CONSTRAINT [PK_KhoHang_MaKho] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichLam]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichLam](
	[MaLich] [nvarchar](1) NOT NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThUC] [datetime] NULL,
 CONSTRAINT [PK_LichLam_MaLich] PRIMARY KEY CLUSTERED 
(
	[MaLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[PhienBan] [nvarchar](1) NOT NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_Menu_PhienBan] PRIMARY KEY CLUSTERED 
(
	[PhienBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](4) NOT NULL,
	[TenNhanVien] [nvarchar](40) NULL,
	[TenTaiKhoan] [varchar](10) NULL,
	[LuongTrenGio] [int] NULL,
	[NgayVaoLam] [datetime] NULL,
	[GioiTinh] [varchar](3) NULL,
	[NgaySinh] [datetime] NULL,
	[SoDienThoai] [varchar](13) NULL,
	[DiaChi] [nvarchar](40) NULL,
	[LoaiNhanVien] [varchar](10) NULL,
 CONSTRAINT [PK_NhanVien_MaNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [varchar](3) NOT NULL,
	[TenSanPham] [nvarchar](40) NULL,
	[CongThuc] [varchar](100) NULL,
	[ThanhPhan] [nvarchar](100) NULL,
	[DanhGia] [int] NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_SanPham_MaSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [nvarchar](1) NOT NULL,
	[MatKhau] [nvarchar](1) NULL,
	[LoaiTaiKhoan] [nvarchar](1) NULL,
 CONSTRAINT [PK_TaiKhoan_TenTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinHoaDon]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinHoaDon](
	[MaSanPham] [varchar](3) NULL,
	[MaHoaDon] [varchar](10) NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VatLieu]    Script Date: 1/13/2022 17:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VatLieu](
	[MaVatLieu] [nvarchar](1) NOT NULL,
	[TenVatLieu] [nvarchar](1) NULL,
	[NhaCungCap] [nvarchar](1) NULL,
	[SoLuong] [int] NULL,
	[Gia] [float] NULL,
	[DonViTinh] [nvarchar](1) NULL,
 CONSTRAINT [PK_VatLieu_MaVatLieu] PRIMARY KEY CLUSTERED 
(
	[MaVatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
insert into TaiKhoan (
TenTaiKhoan,
MatKhau,
LoaiTaiKhoan
)
values
('chuquan','cq',
'chuquan'
),
('quanly1','ql',
'quanly'
),
('thungan','tn',
'thungan'
),
('phache', 'pc', 
'phache'
),
('quanly2','ql',
'quanly'
)
GO
insert into SanPham (
MaSanPham,
TenSanPham,
CongThuc,
ThanhPhan,
DanhGia, -- 1 => 5 sao
Gia --đ/ly
)
values
('51','Macha','Cong Thuc','Thanh Phan','5','350000'),
('16','Trà Sửa','Cong Thuc','Thanh Phan','5','30000'),
('91','Bac Siu','Cong Thuc','Thanh Phan','5','30000'),
('86','Kem Trai Cay','Cong Thuc','Thanh Phan','5','50000'),
('47','Sinh To','Cong Thuc','Thanh Phan','5','40000')
GO
USE [master]
GO
ALTER DATABASE [QuanLyQuanTraSua] SET  READ_WRITE 
GO
