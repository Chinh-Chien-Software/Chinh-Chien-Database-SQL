USE [master]
GO
/****** Object:  Database [ChinhChienVPS]    Script Date: 5/14/2022 5:42:41 PM ******/
CREATE DATABASE [ChinhChienVPS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChinhChien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ChinhChien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChinhChien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ChinhChien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChinhChienVPS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChinhChienVPS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ChinhChienVPS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChinhChienVPS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChinhChienVPS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ChinhChienVPS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChinhChienVPS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChinhChienVPS] SET  MULTI_USER 
GO
ALTER DATABASE [ChinhChienVPS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChinhChienVPS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChinhChienVPS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChinhChienVPS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [ChinhChienVPS]
GO
/****** Object:  User [sa1]    Script Date: 5/14/2022 5:42:41 PM ******/
CREATE USER [sa1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ChinhChien]    Script Date: 5/14/2022 5:42:41 PM ******/
CREATE USER [ChinhChien] FOR LOGIN [ChinhChien] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 5/14/2022 5:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaSanPham] [varchar](3) NULL,
	[MaHoaDon] [varchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/14/2022 5:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [varchar](10) NOT NULL,
	[MaNhanVien] [varchar](4) NULL,
	[ThoiGianGiaoDich] [datetime] NULL,
	[MaQuan] [varchar](100) NULL,
 CONSTRAINT [PK_HoaDon_MaHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 5/14/2022 5:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[MaKho] [nvarchar](10) NOT NULL,
	[TenKho] [nvarchar](40) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienTich] [float] NULL,
	[MaQuan] [varchar](100) NULL,
 CONSTRAINT [PK_KhoHang_MaKho] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichLam]    Script Date: 5/14/2022 5:42:42 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/14/2022 5:42:42 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/14/2022 5:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [char](4) NOT NULL,
	[TenNhanVien] [nvarchar](40) NULL,
	[LuongTrenGio] [int] NULL,
	[NgayVaoLam] [datetime] NULL,
	[GioiTinh] [char](3) NULL,
	[NgaySinh] [datetime] NULL,
	[SoDienThoai] [varchar](13) NULL,
	[DiaChi] [nvarchar](40) NULL,
	[LoaiNhanVien] [varchar](10) NULL,
	[MaQuan] [varchar](100) NULL,
 CONSTRAINT [PK_NhanVien_MaNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quan]    Script Date: 5/14/2022 5:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quan](
	[MaQuan] [varchar](100) NOT NULL,
	[TenQuan] [nvarchar](30) NULL,
 CONSTRAINT [PK_Quan] PRIMARY KEY CLUSTERED 
(
	[MaQuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/14/2022 5:42:42 PM ******/
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
	[Loai] [nvarchar](20) NULL,
	[MaQuan] [varchar](100) NULL,
 CONSTRAINT [PK_SanPham_MaSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/14/2022 5:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](10) NOT NULL,
	[MatKhau] [varchar](10) NULL,
	[UIMode] [int] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_TenTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruyCapQuan]    Script Date: 5/14/2022 5:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruyCapQuan](
	[MaQuan] [varchar](100) NOT NULL,
	[TenTaiKhoan] [varchar](10) NOT NULL,
	[Quyen] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VatLieu]    Script Date: 5/14/2022 5:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VatLieu](
	[MaVatLieu] [varchar](4) NOT NULL,
	[TenVatLieu] [nvarchar](30) NULL,
	[NhaCungCap] [nvarchar](30) NULL,
	[SoLuong] [int] NULL,
	[Gia] [float] NULL,
	[DonViTinh] [nvarchar](10) NULL,
	[MaQuan] [varchar](100) NULL,
 CONSTRAINT [PK_VatLieu_MaVatLieu] PRIMARY KEY CLUSTERED 
(
	[MaVatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong], [DonGia]) VALUES (N'6', N'S01', 1, 1)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong], [DonGia]) VALUES (N'7', N'S01', 23, 23)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong], [DonGia]) VALUES (N'7', N'S01', 123, 123)
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaNhanVien], [ThoiGianGiaoDich], [MaQuan]) VALUES (N'0000000001', N'1111', CAST(N'2022-04-08T00:00:00.000' AS DateTime), N'quanchinhchien')
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaNhanVien], [ThoiGianGiaoDich], [MaQuan]) VALUES (N'2', N'1111', CAST(N'2022-05-10T19:08:58.347' AS DateTime), N'quanchinhchien')
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaNhanVien], [ThoiGianGiaoDich], [MaQuan]) VALUES (N'3', N'1111', CAST(N'2022-05-10T19:10:49.330' AS DateTime), N'quanchinhchien')
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaNhanVien], [ThoiGianGiaoDich], [MaQuan]) VALUES (N'4', N'1111', CAST(N'2022-05-10T19:24:12.580' AS DateTime), N'quanchinhchien')
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaNhanVien], [ThoiGianGiaoDich], [MaQuan]) VALUES (N'5', N'1111', CAST(N'2022-05-10T19:29:35.027' AS DateTime), N'quanchinhchien')
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaNhanVien], [ThoiGianGiaoDich], [MaQuan]) VALUES (N'6', N'1111', CAST(N'2022-05-10T19:30:25.933' AS DateTime), N'quanchinhchien')
GO
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [DiaChi], [DienTich], [MaQuan]) VALUES (N'kasd', N'kho1', NULL, NULL, N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1009', N'q1', 1221, CAST(N'2022-05-11T14:36:10.000' AS DateTime), N'Nam', CAST(N'2022-05-11T14:36:10.000' AS DateTime), N'1', N'q', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1110', N'1', 1, CAST(N'2022-09-08T00:00:00.000' AS DateTime), N'Nu ', CAST(N'2022-09-08T00:00:00.000' AS DateTime), N'1', N'1', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1111', N'f', 1, CAST(N'2022-03-08T00:00:00.000' AS DateTime), N'Nam', CAST(N'2022-03-08T00:00:00.000' AS DateTime), N'f', N'f', N'chuquan', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1200', N'a', 1, CAST(N'2022-05-11T14:27:49.000' AS DateTime), N'Nam', CAST(N'2022-05-11T14:27:49.000' AS DateTime), N'1', N'q', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1201', N'k', 1, CAST(N'2022-05-11T14:30:06.000' AS DateTime), N'Nam', CAST(N'2022-05-11T14:30:06.000' AS DateTime), N'1', N'q', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1202', N'asd', 1, CAST(N'2022-05-11T14:24:37.000' AS DateTime), N'Nam', CAST(N'2022-05-11T14:24:37.000' AS DateTime), N'1', N'1', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1209', N'q', 1, CAST(N'2022-05-11T14:35:05.000' AS DateTime), N'Nam', CAST(N'2022-05-11T14:35:05.000' AS DateTime), N'1', N'q', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1235', N'Tung', 15000, CAST(N'2018-02-16T00:00:00.000' AS DateTime), N'Nam', CAST(N'2000-04-25T00:00:00.000' AS DateTime), N'0816148776', N'362 Truong Cong Dinh', N'thungan', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1354', N'Ngan', 18000, CAST(N'2018-03-26T00:00:00.000' AS DateTime), N'Nu ', CAST(N'1999-05-25T00:00:00.000' AS DateTime), N'0542136161', N'46 Hoang Hoa Tham', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'1563', N'Thu', 15000, CAST(N'2018-01-20T00:00:00.000' AS DateTime), N'Nu ', CAST(N'2000-06-12T00:00:00.000' AS DateTime), N'0654782153', N'491 Ton Sach', N'phache', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'4192', N'Trung', 20000, CAST(N'2018-06-27T00:00:00.000' AS DateTime), N'Nam', CAST(N'1996-08-16T00:00:00.000' AS DateTime), N'0541278961', N'45/12 Nguyen Binh Khiem', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'5214', N'thinh', 15000, CAST(N'2018-09-14T00:00:00.000' AS DateTime), N'Nam', CAST(N'2001-11-04T00:00:00.000' AS DateTime), N'0475963214', N'78 Trung Truc', N'phucvu', N'quanchinhchien')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LuongTrenGio], [NgayVaoLam], [GioiTinh], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiNhanVien], [MaQuan]) VALUES (N'6543', N'Khoi', -150, CAST(N'2022-05-11T16:02:22.000' AS DateTime), N'Nam', CAST(N'2022-05-11T16:02:21.000' AS DateTime), N'1', N's', N'quanly', N'quanchinhchien')
GO
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'quan1', N'Quán 1')
GO
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'quanchinhchien', N'ChinhChien')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [CongThuc], [ThanhPhan], [DanhGia], [Gia], [Loai], [MaQuan]) VALUES (N'S01', N'Tra Phuc Long', N'1', N'1', 1, 1, N'trasua', N'quanchinhchien')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [CongThuc], [ThanhPhan], [DanhGia], [Gia], [Loai], [MaQuan]) VALUES (N'S02', N'TraDao', N'q', N'd', 3, 20, N'trasua', N'quanchinhchien')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [CongThuc], [ThanhPhan], [DanhGia], [Gia], [Loai], [MaQuan]) VALUES (N'S03', N'Tra Chanh', N'q', N'dq', 2, 2, N'trasua', N'quanchinhchien')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [CongThuc], [ThanhPhan], [DanhGia], [Gia], [Loai], [MaQuan]) VALUES (N'S04', N'Tra Le', N'q', N'q', 2, 2, N'trasua', N'quan1')
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'chuquan', N'cq', NULL, NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'chuquan1  ', N'1', 1, N'test@gmail.com')
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'h         ', N'123', 0, N'1')
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'phache', N'pc', NULL, NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'quanly1', N'ql', NULL, NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'quanly2', N'ql', NULL, NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'thu1      ', N'123', 1, NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'thungan', N'tn', NULL, NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'tientran  ', N'123', 0, N'1')
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [UIMode], [Email]) VALUES (N'toila     ', N'123', 0, N'1')
GO
INSERT [dbo].[TruyCapQuan] ([MaQuan], [TenTaiKhoan], [Quyen]) VALUES (N'quanchinhchien', N'h', N'chuquan')
GO
INSERT [dbo].[TruyCapQuan] ([MaQuan], [TenTaiKhoan], [Quyen]) VALUES (N'quan1', N'thungan', N'chuquan')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'CCL', N'Chocolate Test', N'Cây', 500, 50000000, N'Lon', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'CF', N'Coffee', N'Con cáo', 1000, 10000000, N'kí', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'DT', N'Dâu Tây', N'Ðà Lạt ', 1000, 30000000, N'kí', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'FM', N'Fresh Milk', N'Con bò', 10000, 10000000, N'Lít', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'iC', N'Cream', N'Con bò lanh', 1000, 5000000, N'kí', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'TS', N'Lá Trà', N'Cây ', 1000, 10000000, N'kí', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'V001', N'Vat Lieu 1 Edited', N'DaoPhuThinh', 20, 20000, N'Tên', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'V002', N'VatLieu2', N'NguyenVanSon', 100, 25000, N'Con', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'V003', N'VatLieu3', N'TranTrongTien', 20, 35000, N'Cây', N'quanchinhchien')
GO
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu], [NhaCungCap], [SoLuong], [Gia], [DonViTinh], [MaQuan]) VALUES (N'V004', N'VatLieu4', N'NguyenHoangTam', 234, 213, N'Cai', N'quanchinhchien')
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [CK_GT] CHECK  (([GioiTinh]='Nam' OR [GioiTinh]='Nu'))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [CK_GT]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [CK_UIMODE] CHECK  (([UIMode]>=(0) AND [UIMode]<=(2)))
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [CK_UIMODE]
GO
/****** Object:  StoredProcedure [dbo].[CreateAccount]    Script Date: 5/14/2022 5:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateAccount]
(
@tentaikhoan char(10),
@matkhau varchar(10),
@uimode int,
@email nvarchar(50)
)
AS
BEGIN
INSERT INTO ChinhChienVPS.dbo.TaiKhoan VALUES
(@tentaikhoan, @matkhau, @uimode, @email)
END
GO
USE [master]
GO
ALTER DATABASE [ChinhChienVPS] SET  READ_WRITE 
GO