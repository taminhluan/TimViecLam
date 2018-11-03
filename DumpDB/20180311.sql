USE [master]
GO
/****** Object:  Database [TimViecLam]    Script Date: 11/3/2018 10:20:56 PM ******/
CREATE DATABASE [TimViecLam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TimViecLam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TimViecLam.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TimViecLam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TimViecLam_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TimViecLam] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimViecLam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimViecLam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TimViecLam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TimViecLam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TimViecLam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TimViecLam] SET ARITHABORT OFF 
GO
ALTER DATABASE [TimViecLam] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TimViecLam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TimViecLam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TimViecLam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TimViecLam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TimViecLam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TimViecLam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TimViecLam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TimViecLam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TimViecLam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TimViecLam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TimViecLam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TimViecLam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TimViecLam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TimViecLam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TimViecLam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TimViecLam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TimViecLam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TimViecLam] SET  MULTI_USER 
GO
ALTER DATABASE [TimViecLam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TimViecLam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TimViecLam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TimViecLam] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TimViecLam] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TimViecLam]
GO
/****** Object:  Table [dbo].[CtPhieuDangTuyen]    Script Date: 11/3/2018 10:20:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CtPhieuDangTuyen](
	[MaPhieuDangTuyen] [int] NOT NULL,
	[MaDanhSachCongViec] [int] NOT NULL,
	[TrinhDo] [nvarchar](255) NULL,
	[ThoiHan] [date] NULL,
	[SoLuongTuyenDung] [int] NULL,
	[NoiLamViec] [nvarchar](255) NULL,
	[MoTaYeuCau] [nvarchar](255) NULL,
	[LuongKhoiDiem] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDangTuyen] ASC,
	[MaDanhSachCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhSachCongViec]    Script Date: 11/3/2018 10:20:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachCongViec](
	[MaDanhSachCongViec] [int] IDENTITY(1,1) NOT NULL,
	[ViTriViecLam] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhSachCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoSoXinViec]    Script Date: 11/3/2018 10:20:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoXinViec](
	[MaHoSoXinViec] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNguoiTimViec] [int] NULL,
	[MaNhanVien] [int] NULL,
	[MaDanhSachCongViec] [int] NULL,
	[MoTa] [nvarchar](255) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoSoXinViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiTimViec]    Script Date: 11/3/2018 10:20:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiTimViec](
	[MaNguoiTimViec] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [varchar](20) NULL,
	[TrinhDo] [nvarchar](255) NULL,
	[ChuyenNganh] [nvarchar](255) NULL,
	[BangCap] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiTimViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/3/2018 10:20:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[HoTen] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[MatKhau] [varchar](100) NULL,
	[LoaiTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaTuyenDung]    Script Date: 11/3/2018 10:20:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaTuyenDung](
	[MaNhaTuyenDung] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaTuyenDung] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [varchar](20) NULL,
	[DiaChiWeb] [varchar](253) NULL,
	[GioiThieu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaTuyenDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuDangTuyen]    Script Date: 11/3/2018 10:20:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDangTuyen](
	[MaPhieuDangTuyen] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNhaTuyenDung] [int] NULL,
	[MaNhanVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDangTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CtPhieuDangTuyen] ([MaPhieuDangTuyen], [MaDanhSachCongViec], [TrinhDo], [ThoiHan], [SoLuongTuyenDung], [NoiLamViec], [MoTaYeuCau], [LuongKhoiDiem]) VALUES (3, 1, N'1', CAST(N'2018-10-25' AS Date), 2, N'3', N'4', 500000)
SET IDENTITY_INSERT [dbo].[DanhSachCongViec] ON 

INSERT [dbo].[DanhSachCongViec] ([MaDanhSachCongViec], [ViTriViecLam]) VALUES (1, N'Nhan vien lập trình 2')
SET IDENTITY_INSERT [dbo].[DanhSachCongViec] OFF
SET IDENTITY_INSERT [dbo].[NguoiTimViec] ON 

INSERT [dbo].[NguoiTimViec] ([MaNguoiTimViec], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai], [TrinhDo], [ChuyenNganh], [BangCap]) VALUES (3, N'sdfsf', CAST(N'2018-09-16' AS Date), N'sdfsdf', N'dasdasd', N'ádasd', N'ádasd', N'adasd', N'áda')
INSERT [dbo].[NguoiTimViec] ([MaNguoiTimViec], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai], [TrinhDo], [ChuyenNganh], [BangCap]) VALUES (4, N'sdfsf', CAST(N'2018-09-16' AS Date), N'sdfsdf', N'dasdasd', N'ádasd', N'ádasd', N'adasd', N'áda')
SET IDENTITY_INSERT [dbo].[NguoiTimViec] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [TaiKhoan], [HoTen], [NgaySinh], [DiaChi], [MatKhau], [LoaiTaiKhoan]) VALUES (2, N'admin', N'admin', NULL, NULL, N'12345', 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhaTuyenDung] ON 

INSERT [dbo].[NhaTuyenDung] ([MaNhaTuyenDung], [TenNhaTuyenDung], [DiaChi], [DienThoai], [DiaChiWeb], [GioiThieu]) VALUES (1, N'Xin chào', N'ádasd', N'dã bao lâu', N'yêu em', N'ádasd')
SET IDENTITY_INSERT [dbo].[NhaTuyenDung] OFF
SET IDENTITY_INSERT [dbo].[PhieuDangTuyen] ON 

INSERT [dbo].[PhieuDangTuyen] ([MaPhieuDangTuyen], [NgayLap], [MaNhaTuyenDung], [MaNhanVien]) VALUES (3, CAST(N'2018-10-25' AS Date), 1, 2)
SET IDENTITY_INSERT [dbo].[PhieuDangTuyen] OFF
ALTER TABLE [dbo].[CtPhieuDangTuyen]  WITH CHECK ADD FOREIGN KEY([MaDanhSachCongViec])
REFERENCES [dbo].[DanhSachCongViec] ([MaDanhSachCongViec])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CtPhieuDangTuyen]  WITH CHECK ADD FOREIGN KEY([MaPhieuDangTuyen])
REFERENCES [dbo].[PhieuDangTuyen] ([MaPhieuDangTuyen])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoSoXinViec]  WITH CHECK ADD FOREIGN KEY([MaDanhSachCongViec])
REFERENCES [dbo].[DanhSachCongViec] ([MaDanhSachCongViec])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoSoXinViec]  WITH CHECK ADD FOREIGN KEY([MaNguoiTimViec])
REFERENCES [dbo].[NguoiTimViec] ([MaNguoiTimViec])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoSoXinViec]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDangTuyen]  WITH CHECK ADD FOREIGN KEY([MaNhaTuyenDung])
REFERENCES [dbo].[NhaTuyenDung] ([MaNhaTuyenDung])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDangTuyen]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [TimViecLam] SET  READ_WRITE 
GO
