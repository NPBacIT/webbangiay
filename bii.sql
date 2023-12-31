USE [master]
GO
/****** Object:  Database [QLBanGiay_tt1]    Script Date: 4/25/2023 7:49:45 AM ******/
CREATE DATABASE [QLBanGiay_tt1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanGiay_tt1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBanGiay_tt1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBanGiay_tt1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBanGiay_tt1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBanGiay_tt1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanGiay_tt1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanGiay_tt1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBanGiay_tt1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanGiay_tt1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanGiay_tt1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBanGiay_tt1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanGiay_tt1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBanGiay_tt1] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanGiay_tt1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanGiay_tt1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanGiay_tt1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanGiay_tt1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanGiay_tt1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanGiay_tt1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBanGiay_tt1] SET QUERY_STORE = OFF
GO
USE [QLBanGiay_tt1]
GO
/****** Object:  Table [dbo].[tAnhChiTietSP]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhChiTietSP](
	[MaChiTietSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tAnhSP]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhSP](
	[MaSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChatLieu]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatLieu](
	[MaChatLieu] [char](25) NOT NULL,
	[ChatLieu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[MaHoaDon] [char](25) NOT NULL,
	[MaChiTietSP] [char](25) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GiamGia] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietSanPham]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietSanPham](
	[MaChiTietSP] [char](25) NOT NULL,
	[MaSP] [char](25) NULL,
	[MaKichThuoc] [char](25) NULL,
	[MaMauSac] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[Video] [char](100) NULL,
	[DonGiaBan] [money] NULL,
	[GiamGia] [float] NULL,
	[SLTon] [int] NULL,
 CONSTRAINT [PK_tChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDanhMucSP]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [char](25) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[MaChatLieu] [char](25) NULL,
	[CanNang] [float] NULL,
	[MaHangSX] [char](25) NULL,
	[MaNuocSX] [char](25) NULL,
	[MaDacTinh] [char](25) NULL,
	[Website] [char](155) NULL,
	[ThoiGianBaoHanh] [float] NULL,
	[GioiThieuSP] [nvarchar](255) NULL,
	[ChietKhau] [float] NULL,
	[MaLoai] [char](25) NULL,
	[MaDT] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GiaNhoNhat] [money] NULL,
	[GiaLonNhat] [money] NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHangSX]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHangSX](
	[MaHangSX] [char](25) NOT NULL,
	[HangSX] [nvarchar](100) NULL,
	[MaNuocThuongHieu] [char](25) NULL,
 CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[MaHoaDon] [char](25) NOT NULL,
	[NgayHoaDon] [datetime] NULL,
	[MaKhachHang] [char](25) NULL,
	[MaNhanVien] [char](25) NULL,
	[TongTienHD] [money] NULL,
	[GiamGiaHD] [float] NULL,
	[PhuongThucThanhToan] [tinyint] NULL,
	[MaSoThue] [char](100) NULL,
	[ThongTinThue] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhanhHang] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[LoaiKhachHang] [tinyint] NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhanhHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKichThuoc]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKichThuoc](
	[MaKichThuoc] [char](25) NOT NULL,
	[KichThuoc] [nchar](150) NULL,
 CONSTRAINT [PK_tKichThuoc] PRIMARY KEY CLUSTERED 
(
	[MaKichThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiDT]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiDT](
	[MaDT] [char](25) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiDT] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiSP]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [char](25) NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMauSac]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMauSac](
	[MaMauSac] [char](25) NOT NULL,
	[TenMauSac] [nvarchar](100) NULL,
 CONSTRAINT [PK_tMauSac] PRIMARY KEY CLUSTERED 
(
	[MaMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhanVien]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNhanVien] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai1] [char](15) NULL,
	[SoDienThoai2] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tQuocGia]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tQuocGia](
	[MaNuoc] [char](25) NOT NULL,
	[TenNuoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_tQuocGia] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUser]    Script Date: 4/25/2023 7:49:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[username] [char](100) NOT NULL,
	[password] [char](256) NOT NULL,
	[LoaiUser] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10001                  ', N'1ct1.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10001                  ', N'1ct2.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10001                  ', N'1ct3.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10002                  ', N'2ct1.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10002                  ', N'2ct2.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10002                  ', N'2ct3.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10003                  ', N'3ct1.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10003                  ', N'3ct2.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10003                  ', N'3ct3.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10010                  ', N'10ct1.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10010                  ', N'10ct2.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10010                  ', N'10ct3.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10011                  ', N'11ct1.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10011                  ', N'11ct2.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10011                  ', N'11ct3.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10013                  ', N'13ct1.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10013                  ', N'13ct2.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10013                  ', N'13ct3.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10015                  ', N'15ct1.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10015                  ', N'15ct2.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10015                  ', N'15ct3.jpg                                                                                           ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10019                  ', N'ct71.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10019                  ', N'ct72.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10019                  ', N'ct73.jpg                                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'WC10019                  ', N'ct74.jpg                                                                                            ', NULL)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'1                        ', N'WC10019                  ', N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'10                       ', N'WC10002                  ', N'3                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'11                       ', N'WC10003                  ', N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'12                       ', N'WC10003                  ', N'2                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'13                       ', N'WC10003                  ', N'3                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'14                       ', N'WC10003                  ', N'4                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'15                       ', N'WC10010                  ', N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'16                       ', N'WC10010                  ', N'2                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'17                       ', N'WC10010                  ', N'3                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'18                       ', N'WC10010                  ', N'4                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'19                       ', N'WC10011                  ', N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'2                        ', N'WC10019                  ', N'2                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'20                       ', N'WC10011                  ', N'2                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'21                       ', N'WC10011                  ', N'3                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'22                       ', N'WC10011                  ', N'4                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'23                       ', N'WC10015                  ', N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'24                       ', N'WC10015                  ', N'2                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'25                       ', N'WC10015                  ', N'3                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'26                       ', N'WC10015                  ', N'4                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'3                        ', N'WC10019                  ', N'3                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'4                        ', N'WC10019                  ', N'4                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'5                        ', N'WC10001                  ', N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'6                        ', N'WC10001                  ', N'2                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'7                        ', N'WC10001                  ', N'3                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'8                        ', N'WC10002                  ', N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'9                        ', N'WC10002                  ', N'2                        ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10001                  ', N'Giày Reebok Classic Leather Ripple MU DV7140 ', NULL, 2.3, N'mlb                      ', NULL, NULL, NULL, 5, NULL, NULL, N'sp                       ', N'nd                       ', N'tt4.jpg                                                                                             ', NULL, 850.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10002                  ', N'Giày LeBron Soldier 12 ‘Bone’ AO2609-002', NULL, 2.1, N'nike                     ', NULL, NULL, NULL, 7, NULL, NULL, N'sp                       ', N'nd                       ', N'tt8.jpg                                                                                             ', NULL, 550.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10003                  ', N'Giày Vans Slip on Checkerboard Yellow 500714', NULL, 1.2, N'vans                     ', NULL, NULL, NULL, 4, NULL, NULL, N'slip                     ', N'nd                       ', N'tt11.jpg                                                                                            ', NULL, 450.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10004                  ', N'Giày Vans Era Full Red 721356', NULL, 1.4, N'vans                     ', NULL, NULL, NULL, 5, NULL, NULL, N'slip                     ', N'nd                       ', N'tt12.jpg                                                                                            ', NULL, 320.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10005                  ', N'Giày Vans Old Skool Black Gum 500714', NULL, 2, N'vans                     ', NULL, NULL, NULL, 4, NULL, NULL, N'slip                     ', N'nd                       ', N'tt15.jpg                                                                                            ', NULL, 520.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10006                  ', N'Giày Vans Slip on Mutil Color (N+) 500714', NULL, 2, N'vans                     ', NULL, NULL, NULL, 4, NULL, NULL, N'slip                     ', N'nd                       ', N'tt14.jpeg                                                                                           ', NULL, 850.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10007                  ', N'Giày Vans Slip on Checker Mutil 500714', NULL, 2, N'vans                     ', NULL, NULL, NULL, 5, NULL, NULL, N'slip                     ', N'nd                       ', N'tt13.jpeg                                                                                           ', NULL, 300.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10008                  ', N'Giày da nam buộc dây da bóng GNTA5502-D', NULL, 2, N'ca                       ', NULL, NULL, NULL, 5, N'Thiết kế buộc dây thời trang, dễ kết hợp trang phục.Đế cao su chống trơn trượt', NULL, N'tassel                   ', N'ls                       ', N'da1..jpg                                                                                            ', NULL, 500.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10009                  ', N'Giày tăng chiều cao nam dáng Derby GCTATC1562-D', NULL, 2, N'ca                       ', NULL, NULL, NULL, 4, N'Hỗ trợ tăng chiều cao từ 5cm – 7cm.Thiết kế: Hoạ tiết đường chỉ nổi từ mũi tới thân giày tạo điểm nhấn, tăng thêm sự lịch lãm thu hút khi lên chân.', NULL, N'tassel                   ', N'ls                       ', N'da2.jpg                                                                                             ', NULL, 740.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10010                  ', N'Giày da nam Chelsea Boot cổ họa tiết da bóng GNTA0219-D', NULL, 2.1, N'ca                       ', NULL, NULL, NULL, 4, N'Kiểu dáng: Chelsea Boots.Thiết kế: Cổ cao ôm chân, giữ ấm tốt hơn, đế cao 3cm giúp tôn dáng khi đi, mẫu da trơn basic dễ dàng phối với mọi loại trang phục', NULL, N'tassel                   ', N'ls                       ', N'da3.jpg                                                                                             ', NULL, 550.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10011                  ', N'Giày da nam kiểu dáng Apron Toe GNTA5501-D', NULL, 2.2, N'ca                       ', NULL, NULL, NULL, 4, N'Chất liệu da được tuyển chọn kỹ lưỡng: siêu bền, siêu mềm
Đường chỉ may tinh tế, hiện đại', NULL, N'tassel                   ', N'ls                       ', N'da4.jpg                                                                                             ', NULL, 660.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10012                  ', N'Giày Skechers D’Lites White SN11931EW', NULL, 2.4, N'adidas                   ', NULL, NULL, NULL, 6, NULL, NULL, N'sp                       ', N'nd                       ', N'tt7.jpg                                                                                             ', NULL, 950.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10013                  ', N'Giày tây da nam mũi vuông vân đục lỗ GNTA0528-D', NULL, 2, N'ca                       ', NULL, NULL, NULL, 4, N'Thiết kế: Phối 2 loại da trơn và da bóng thời thượng trên thân giày, hoạ tiết Cap-toe trên mũi giày tạo điểm nhấn nam tính, mạnh mẽ.Kiểu dáng: Oxford.Giày tây da nam GNTA0528-D sở hữu thiết kế đơn giản, lịch lãm, dễ kết hợp trang phục
Chất liệu da.', NULL, N'tassel                   ', N'dn                       ', N'da5.jpg                                                                                             ', NULL, 777.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10014                  ', N'Giày tây nam buộc dây kiểu dáng Derby GNTA1901-1-D', NULL, 2, N'ca                       ', NULL, NULL, NULL, 4, N'Chất liệu da bò cao cấp, da thật 100%
Form giày ôm chân, thiết kế trẻ trung hiện đại
Đường chỉ may tỉ mỉ, tinh tế
Đế chống trơn trượt, thời trang', NULL, N'tassel                   ', N'dn                       ', N'da6.jpg                                                                                             ', NULL, 580.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10015                  ', N'Giày chạy Trail New Balance MT411BG', NULL, 3.4, N'nike                     ', NULL, NULL, NULL, 4, NULL, NULL, N'sp                       ', N'dl                       ', N'tt3.jpg                                                                                             ', NULL, 740.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10016                  ', N'Giày Nike Huarache Pro Gold (X) ', NULL, 2.1, N'nike                     ', NULL, NULL, NULL, 4, NULL, NULL, N'sp                       ', N'nd                       ', N'tt2.jpg                                                                                             ', NULL, 420.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10017                  ', N'Giày New Balance 515 Navy ML515CNR', NULL, 4.6, N'nike                     ', NULL, NULL, NULL, 5, NULL, NULL, N'sp                       ', N'dl                       ', N'tt6.jpg                                                                                             ', NULL, 550.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10018                  ', N'Giày New Balance 608 White WX608WT', NULL, 2.4, N'adidas                   ', NULL, NULL, NULL, 4, NULL, NULL, N'sp                       ', N'dl                       ', N'tt1.jpg                                                                                             ', NULL, 460.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10019                  ', N'Giày bóng rổ Nike Hyperdunk 2015 749567', NULL, 3.1, N'adidas                   ', N'dc                       ', NULL, NULL, 6, N'Nike là thương hiệu thể thao hàng đầu và được công nhận nhất trên thế giới, tập trung vào giày dép, quần áo và phụ kiện phong cách sống hiệu suất cao dành cho nam giới, phụ nữ và trẻ em.', NULL, N'bs                       ', N'nd                       ', N'spWC10019                  .jpg                                                                     ', NULL, 880.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'WC10020                  ', N'Giày Nịke Air Max Stutter Step 599565-018', NULL, 2.6, N'nike                     ', NULL, NULL, NULL, 7, NULL, NULL, N'bs                       ', N'nd                       ', N'tt9.jpg                                                                                             ', NULL, 840.0000)
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'adidas                   ', N'Adidas                                                                               ', N'my                       ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'ca                       ', N'Carmina                                                                                             ', N'my                       ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'di                       ', N'Dior                                                                                              ', N'my                       ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'gu                       ', N'Gucci                                                                                              ', N'my                       ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'mlb                      ', N'MLB                                                                                              ', N'my                       ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'nike                     ', N'Nike                                                                                           ', N'my                       ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'vans                     ', N'Vans                                                                                            ', N'ita                      ')
GO
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'1                        ', N'size 39                                                                                                                                               ')
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'2                        ', N'size 40                                                                                                                                               ')
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'3                        ', N'size 41                                                                                                                                               ')
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'4                        ', N'size 42                                                                                                                                               ')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dl                       ', N'Du lịch                                                                                             ')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dn                       ', N'Doanh nhân                                                                                          ')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'ls                       ', N'Lịch sự')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'nd                       ', N'Năng động')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'b2                       ', N'Monogram1')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'bs                       ', N'Basketball ')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'slip                     ', N'Slip on')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'sp                       ', N'Sport')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'tassel                   ', N'Tassel Loafer')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'black
                  ', N'Đen')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'blue
                   ', N'Xanh dương')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'brown
                  ', N'Nâu')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'gray
                   ', N'Xám')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'green
                  ', N'Xanh lá')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'orange
                 ', N'Cam')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'pink
                   ', N'Hồng')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'red
                    ', N'Đỏ')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'white
                  ', N'Trắng')
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'yellow
                 ', N'Vàng')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'dc                       ', N'Đức                                               ')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'ita                      ', N'Italia                                            ')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'my                       ', N'Mỹ                                                ')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'tq                       ', N'Trung Quốc                                        ')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'vn                       ', N'Việt Nam                                          ')
GO
INSERT [dbo].[tUser] ([username], [password], [LoaiUser], [CreatedDate]) VALUES (N'a                                                                                                   ', N'1                                                                                                                                                                                                                                                               ', 1, NULL)
INSERT [dbo].[tUser] ([username], [password], [LoaiUser], [CreatedDate]) VALUES (N'b                                                                                                   ', N'1                                                                                                                                                                                                                                                               ', 0, NULL)
GO
ALTER TABLE [dbo].[tUser] ADD  DEFAULT (NULL) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tAnhChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_tAnhChiTietSP_tChiTietSanPham] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[tChiTietSanPham] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[tAnhChiTietSP] CHECK CONSTRAINT [FK_tAnhChiTietSP_tChiTietSanPham]
GO
ALTER TABLE [dbo].[tAnhSP]  WITH CHECK ADD  CONSTRAINT [FK_tAnhSP_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tAnhSP] CHECK CONSTRAINT [FK_tAnhSP_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tChiTietSanPham] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[tChiTietSanPham] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tChiTietSanPham]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tHoaDonBan] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tHoaDonBan]
GO
ALTER TABLE [dbo].[tChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietSanPham_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tChiTietSanPham] CHECK CONSTRAINT [FK_tChiTietSanPham_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietSanPham_tKichThuoc] FOREIGN KEY([MaKichThuoc])
REFERENCES [dbo].[tKichThuoc] ([MaKichThuoc])
GO
ALTER TABLE [dbo].[tChiTietSanPham] CHECK CONSTRAINT [FK_tChiTietSanPham_tKichThuoc]
GO
ALTER TABLE [dbo].[tChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietSanPham_tMauSac] FOREIGN KEY([MaMauSac])
REFERENCES [dbo].[tMauSac] ([MaMauSac])
GO
ALTER TABLE [dbo].[tChiTietSanPham] CHECK CONSTRAINT [FK_tChiTietSanPham_tMauSac]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tChatLieu] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[tChatLieu] ([MaChatLieu])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tChatLieu]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tHangSX] FOREIGN KEY([MaHangSX])
REFERENCES [dbo].[tHangSX] ([MaHangSX])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tHangSX]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiDT] FOREIGN KEY([MaDT])
REFERENCES [dbo].[tLoaiDT] ([MaDT])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiDT]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tLoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiSP]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tQuocGia] FOREIGN KEY([MaNuocSX])
REFERENCES [dbo].[tQuocGia] ([MaNuoc])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tQuocGia]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tKhachHang] ([MaKhanhHang])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tKhachHang]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tNhanVien]
GO
ALTER TABLE [dbo].[tKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_tKhachHang_tUser] FOREIGN KEY([username])
REFERENCES [dbo].[tUser] ([username])
GO
ALTER TABLE [dbo].[tKhachHang] CHECK CONSTRAINT [FK_tKhachHang_tUser]
GO
ALTER TABLE [dbo].[tNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tNhanVien_tUser] FOREIGN KEY([username])
REFERENCES [dbo].[tUser] ([username])
GO
ALTER TABLE [dbo].[tNhanVien] CHECK CONSTRAINT [FK_tNhanVien_tUser]
GO
USE [master]
GO
ALTER DATABASE [QLBanGiay_tt1] SET  READ_WRITE 
GO
