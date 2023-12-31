USE [RapPhim]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[Id_BinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[Id_Phim] [int] NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayDang] [datetime] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[DanhGia] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[Id_BinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id_DanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[Id_DanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[Id_Ghe] [int] IDENTITY(1,1) NOT NULL,
	[Id_LoaiGhe] [int] NULL,
	[TenGhe] [varchar](50) NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[Id_Ghe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[Id_LichChieu] [int] IDENTITY(1,1) NOT NULL,
	[Id_RapChieu] [int] NULL,
	[Id_Phong] [int] NULL,
	[NgayChieu] [datetime] NOT NULL,
	[GioBatDau] [time](7) NOT NULL,
	[GioKetThuc] [time](7) NOT NULL,
	[Id_Phim] [int] NULL,
 CONSTRAINT [PK_LichChieu] PRIMARY KEY CLUSTERED 
(
	[Id_LichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGhe]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGhe](
	[Id_LoaiGhe] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiGhe] [nvarchar](max) NOT NULL,
	[GiaGhe] [float] NOT NULL,
 CONSTRAINT [PK_LoaiGhe] PRIMARY KEY CLUSTERED 
(
	[Id_LoaiGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhim]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhim](
	[Id_LoaiPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_LoaiPhim] PRIMARY KEY CLUSTERED 
(
	[Id_LoaiPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[Id_LoaiPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[Id_LoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NULL,
	[MenuLink] [nvarchar](100) NULL,
	[ParentId] [int] NULL,
	[OrderNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiDung]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiDung](
	[Id_NoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Id_BinhLuan] [int] NULL,
	[Id_TaiKhoan] [int] NULL,
 CONSTRAINT [PK_NoiDung] PRIMARY KEY CLUSTERED 
(
	[Id_NoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[Id_Phim] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](max) NOT NULL,
	[AnhPhim] [nvarchar](max) NOT NULL,
	[ThoiLuong] [int] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[TinhTrang] [bit] NOT NULL,
	[Id_LoaiPhim] [int] NOT NULL,
	[Id_DanhMuc] [int] NULL,
	[DienVien] [nvarchar](max) NOT NULL,
	[DaoDien] [varchar](max) NOT NULL,
	[NgayCongChieu] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[NamPhatHanh] [varchar](50) NULL,
	[ChatLuong] [varchar](50) NULL,
	[DanhGia] [float] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[Id_Phim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[Id_Phong] [int] IDENTITY(1,1) NOT NULL,
	[Id_RapChieu] [int] NULL,
	[TenPhong] [nvarchar](max) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[Id_LoaiPhong] [int] NULL,
	[Id_LoaiGhe] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[Id_Phong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong_Ghe]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong_Ghe](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Id_Phong] [int] NULL,
	[Id_Ghe] [int] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_Phong_Ghe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RapPhim]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RapPhim](
	[Id_RapChieu] [int] IDENTITY(1,1) NOT NULL,
	[TenRapChieu] [nvarchar](50) NOT NULL,
	[TongSoPhong] [int] NOT NULL,
	[ThanhPho] [nvarchar](max) NULL,
	[QuanHuyen] [nvarchar](max) NULL,
	[PhuongXa] [nvarchar](max) NULL,
	[GioMoCua] [time](7) NULL,
	[GioDongCua] [time](7) NULL,
 CONSTRAINT [PK_RapChieuPhim] PRIMARY KEY CLUSTERED 
(
	[Id_RapChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id_Slider] [int] IDENTITY(1,1) NOT NULL,
	[Id_Phim] [int] NOT NULL,
	[AnhSlider] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id_Slider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Id_TaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](60) NULL,
	[NgayDangKy] [datetime] NULL,
	[TinhTrang] [bit] NULL,
	[PhanQuyen] [varchar](50) NULL,
	[Id_ThongTin] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[Id_TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTin]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTin](
	[Id_ThongTin] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](max) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [varchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_ThongTin] PRIMARY KEY CLUSTERED 
(
	[Id_ThongTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANGTIN]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTIN](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTrang] [nvarchar](100) NOT NULL,
	[NoiDung] [ntext] NULL,
	[NgayTao] [smalldatetime] NULL,
	[MetaTitle] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[Id_Ve] [int] IDENTITY(1,1) NOT NULL,
	[Id_TaiKhoan] [int] NULL,
	[Id_LichChieu] [int] NULL,
	[NgayDat] [datetime2](7) NOT NULL,
	[GiaVe] [decimal](18, 2) NULL,
	[SoluongGhe] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[Id_Ve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve_Ghe]    Script Date: 12/7/2023 12:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve_Ghe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Ve] [int] NULL,
	[Id_Ghe] [int] NULL,
	[TenGhe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ve_Ghe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (10, 17, N'Cũng tạm', CAST(N'2023-11-26T14:12:46.217' AS DateTime), 1, 4)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (11, 17, N'Dở tệ', CAST(N'2023-11-26T14:13:06.660' AS DateTime), 1, 1)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (12, 14, N'Phim cũng tạm', CAST(N'2023-11-26T17:49:06.320' AS DateTime), 1, 5)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (13, 14, N'Cũng hay', CAST(N'2023-11-26T17:50:17.917' AS DateTime), 1, 4)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (1006, 9, N'Không hay lắm!', CAST(N'2023-11-27T09:51:00.723' AS DateTime), 1, 3)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (1007, 7, N'Phim nhân văn!', CAST(N'2023-11-27T09:51:33.613' AS DateTime), 1, 5)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (1008, 13, N'Cũng tạm!', CAST(N'2023-11-27T09:51:46.617' AS DateTime), 1, 4)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (1009, 7, N'Hay nhưng tình tiết chậm!', CAST(N'2023-11-27T09:52:14.437' AS DateTime), 1, 4)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (1010, 5, N'sfsf', CAST(N'2023-12-01T13:07:20.240' AS DateTime), 1, 4)
INSERT [dbo].[BinhLuan] ([Id_BinhLuan], [Id_Phim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (1011, 5, N'sdsd', CAST(N'2023-12-01T13:07:38.493' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([Id_DanhMuc], [TenDanhMuc]) VALUES (4, N'K')
INSERT [dbo].[DanhMuc] ([Id_DanhMuc], [TenDanhMuc]) VALUES (5, N'T13')
INSERT [dbo].[DanhMuc] ([Id_DanhMuc], [TenDanhMuc]) VALUES (6, N'T16')
INSERT [dbo].[DanhMuc] ([Id_DanhMuc], [TenDanhMuc]) VALUES (9, N'T18')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[Ghe] ON 

INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (1, 1, N'A1')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (2, 1, N'A2')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (3, 1, N'A3')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (4, 1, N'A4')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (5, 1, N'A5')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (6, 2, N'A1')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (7, 2, N'A2')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (8, 2, N'A3')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (9, 2, N'A4')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (10, 1, N'B1')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (13, 1, N'B3')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (14, 1, N'B4')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (15, 1, N'B5')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (16, 2, N'A5')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (17, 2, N'B1')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (18, 2, N'B2')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (19, 2, N'B3')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (21, 2, N'B4')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (22, 2, N'B5')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (23, 2, N'C1')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (24, 2, N'C2')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (25, 2, N'C3')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (26, 2, N'C4')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (27, 2, N'C5')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (28, 2, N'D1')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (29, 2, N'D2')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (30, 2, N'D3')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (31, 2, N'D4')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (32, 2, N'D5')
INSERT [dbo].[Ghe] ([Id_Ghe], [Id_LoaiGhe], [TenGhe]) VALUES (33, 1, N'C1')
SET IDENTITY_INSERT [dbo].[Ghe] OFF
GO
SET IDENTITY_INSERT [dbo].[LichChieu] ON 

INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (13, 2, 1, CAST(N'2023-11-25T00:00:00.000' AS DateTime), CAST(N'20:20:00' AS Time), CAST(N'21:20:00' AS Time), 14)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (14, 2, 1, CAST(N'2023-11-25T00:00:00.000' AS DateTime), CAST(N'21:20:00' AS Time), CAST(N'22:30:00' AS Time), 14)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (15, 2, 1, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'19:30:00' AS Time), CAST(N'20:20:00' AS Time), 11)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (17, 2, 1, CAST(N'2023-11-25T00:00:00.000' AS DateTime), CAST(N'19:30:00' AS Time), CAST(N'20:20:00' AS Time), 14)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (18, 2, 1, CAST(N'2023-11-23T00:00:00.000' AS DateTime), CAST(N'21:20:00' AS Time), CAST(N'22:30:00' AS Time), 14)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (19, 2, 1, CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'19:30:00' AS Time), CAST(N'20:20:00' AS Time), 5)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (20, 2, 1, CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'19:30:00' AS Time), CAST(N'20:20:00' AS Time), 9)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (21, 5, 8, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'17:20:00' AS Time), CAST(N'18:40:00' AS Time), 14)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (22, 5, 8, CAST(N'2023-11-21T00:00:00.000' AS DateTime), CAST(N'22:59:00' AS Time), CAST(N'12:59:00' AS Time), 14)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (23, 9, 12, CAST(N'2023-11-22T00:00:00.000' AS DateTime), CAST(N'21:00:00' AS Time), CAST(N'22:35:00' AS Time), 10)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (24, 5, 8, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'17:33:00' AS Time), CAST(N'14:37:00' AS Time), 14)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (25, 9, 12, CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'19:50:00' AS Time), CAST(N'20:30:00' AS Time), 9)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (26, 5, 8, CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'21:30:00' AS Time), CAST(N'10:20:00' AS Time), 9)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (27, 2, 1, CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'19:00:00' AS Time), CAST(N'20:40:00' AS Time), 9)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (28, 2, 1, CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'17:50:00' AS Time), CAST(N'19:00:00' AS Time), 17)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (29, 9, 12, CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'15:50:00' AS Time), CAST(N'05:10:00' AS Time), 17)
INSERT [dbo].[LichChieu] ([Id_LichChieu], [Id_RapChieu], [Id_Phong], [NgayChieu], [GioBatDau], [GioKetThuc], [Id_Phim]) VALUES (30, 9, 12, CAST(N'2023-12-09T00:00:00.000' AS DateTime), CAST(N'17:00:00' AS Time), CAST(N'18:40:00' AS Time), 17)
SET IDENTITY_INSERT [dbo].[LichChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiGhe] ON 

INSERT [dbo].[LoaiGhe] ([Id_LoaiGhe], [TenLoaiGhe], [GiaGhe]) VALUES (1, N'Vip', 95000)
INSERT [dbo].[LoaiGhe] ([Id_LoaiGhe], [TenLoaiGhe], [GiaGhe]) VALUES (2, N'Thường', 45000)
SET IDENTITY_INSERT [dbo].[LoaiGhe] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiPhim] ON 

INSERT [dbo].[LoaiPhim] ([Id_LoaiPhim], [TenLoai]) VALUES (1, N'Hành Động')
INSERT [dbo].[LoaiPhim] ([Id_LoaiPhim], [TenLoai]) VALUES (2, N'Siêu Anh Hùng')
INSERT [dbo].[LoaiPhim] ([Id_LoaiPhim], [TenLoai]) VALUES (3, N'Hoạt Hình')
INSERT [dbo].[LoaiPhim] ([Id_LoaiPhim], [TenLoai]) VALUES (4, N'Kinh Dị')
INSERT [dbo].[LoaiPhim] ([Id_LoaiPhim], [TenLoai]) VALUES (5, N'Tình Cảm')
INSERT [dbo].[LoaiPhim] ([Id_LoaiPhim], [TenLoai]) VALUES (6, N'Phiêu Lưu')
INSERT [dbo].[LoaiPhim] ([Id_LoaiPhim], [TenLoai]) VALUES (7, N'Tâm Lý')
INSERT [dbo].[LoaiPhim] ([Id_LoaiPhim], [TenLoai]) VALUES (8, N'Lịch Sử')
SET IDENTITY_INSERT [dbo].[LoaiPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([Id_LoaiPhong], [TenLoaiPhong], [MoTa]) VALUES (1, N'3D', N'Xem phim 3D thực tế ảo có thiết bị hỗ trợ')
INSERT [dbo].[LoaiPhong] ([Id_LoaiPhong], [TenLoaiPhong], [MoTa]) VALUES (2, N'2D', N'Xem phim thường')
INSERT [dbo].[LoaiPhong] ([Id_LoaiPhong], [TenLoaiPhong], [MoTa]) VALUES (3, N'4D', N'<p>Trải nghiệm <strong>k&iacute;nh thực tế ảo</strong>, mang lại trải nghiệm ch&acirc;n thực nhất</p>
')
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([Id], [MenuName], [MenuLink], [ParentId], [OrderNumber]) VALUES (2, N'GIỚI THIỆU', N'gioi-thieu', NULL, 2)
INSERT [dbo].[MENU] ([Id], [MenuName], [MenuLink], [ParentId], [OrderNumber]) VALUES (11, N'LIÊN HỆ', N'lien-he', NULL, 3)
INSERT [dbo].[MENU] ([Id], [MenuName], [MenuLink], [ParentId], [OrderNumber]) VALUES (14, N'PHIM', N'', NULL, 1)
INSERT [dbo].[MENU] ([Id], [MenuName], [MenuLink], [ParentId], [OrderNumber]) VALUES (15, N'PHIM ĐANG CHIẾU', N'phim-dang-chieu', 14, 1)
INSERT [dbo].[MENU] ([Id], [MenuName], [MenuLink], [ParentId], [OrderNumber]) VALUES (16, N'PHIM SẮP CHIẾU', N'phim-sap-chieu', 14, 2)
INSERT [dbo].[MENU] ([Id], [MenuName], [MenuLink], [ParentId], [OrderNumber]) VALUES (18, N'PHIM THỊNH HÀNH', N'phim-thinh-hanh', 14, 3)
SET IDENTITY_INSERT [dbo].[MENU] OFF
GO
SET IDENTITY_INSERT [dbo].[NoiDung] ON 

INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (10, 10, 1026)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (11, 11, 1025)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (12, 12, 1025)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (13, 13, 1026)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (1002, 1006, 1026)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (1003, 1007, 1026)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (1004, 1008, 1026)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (1005, 1009, 1025)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (1006, 1010, 1025)
INSERT [dbo].[NoiDung] ([Id_NoiDung], [Id_BinhLuan], [Id_TaiKhoan]) VALUES (1007, 1011, 1026)
SET IDENTITY_INSERT [dbo].[NoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (2, N'Biệt Đội Marvels', N'biet-doi-marvel.jpg', 104, N'<p style="text-align:center">Carol Danvers bị vướng v&agrave;o sức mạnh của Kamala Khan v&agrave; Monica Rambeau, buộc họ phải hợp t&aacute;c với nhau để cứu vũ trụ.&nbsp; The Marvels&nbsp;(tựa Việt:&nbsp;Biệt đội Marvel) l&agrave; dự &aacute;n cuối c&ugrave;ng của Vũ trụ Điện ảnh Marvel (MCU) trong năm 2023, đ&oacute;ng vai tr&ograve; quan trọng khi kết nối 3 mini-series ăn kh&aacute;ch đ&atilde; ra mắt l&agrave;&nbsp;WandaVision, Ms. Marvel&nbsp;v&agrave;&nbsp;Secret Invasion. Kh&ocirc;ng những đ&aacute;nh dấu m&agrave;n t&aacute;i xuất của nh&acirc;n vật được kh&aacute;n giả y&ecirc;u th&iacute;ch&nbsp;Captain Marvel&nbsp;Carol Denvers (Brie Larson) tr&ecirc;n m&agrave;n ảnh rộng, bộ phim c&ograve;n giới thiệu đến kh&aacute;n giả li&ecirc;n minh 3 &quot;chị đại&quot; c&oacute; vai tr&ograve; quan trọng đối với tương lai của MCU. C&acirc;u chuyện lần n&agrave;y xảy ra sau c&aacute;c sự kiện trong&nbsp;Captain Marvel&nbsp;(2019), Dar-Benn (The Accuser) đ&atilde; mất đi qu&ecirc; nh&agrave; v&agrave; giờ đ&acirc;y, ả đang t&igrave;m c&aacute;ch trả th&ugrave; mọi h&agrave;nh tinh từng được Carol cứu gi&uacute;p. Bằng c&aacute;ch n&agrave;o đ&oacute;, Dar-Benn sở hữu được chiếc v&ograve;ng c&oacute; sự li&ecirc;n kết với Ms. Marvel/Kamala Khan (Iman Vellani) v&agrave; &quot;Spectrum&quot; Monica Rambeau (Teyonah Parris). Từ đ&acirc;y, nữ &aacute;c nh&acirc;n c&oacute; thể thao t&uacute;ng li&ecirc;n kết &aacute;nh s&aacute;ng giữa c&aacute;c si&ecirc;u anh h&ugrave;ng khiến họ ho&aacute;n đổi vị tr&iacute; cho nhau mỗi khi d&ugrave;ng sức mạnh, g&acirc;y ra những x&aacute;o động kh&ocirc;n lường.</p>
', 1, 2, 5, N'Brie Larson, Samuel L. Jackson, Zawe Ashton', N'Nia DaCosta', CAST(N'2023-12-16T00:00:00.000' AS DateTime), CAST(N'2023-12-29T00:00:00.000' AS DateTime), N'2023', N'FULL HD VIETSUB', 0, CAST(N'2023-10-01T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (3, N'Người Vợ Cuối Cùng', N'nguoi-vo-cuoi-cung.jpg', 132, N'<p>Lấy cảm hứng từ tiểu thuyết Hồ O&aacute;n Hận, của nh&agrave; văn Hồng Th&aacute;i, Người Vợ Cuối C&ugrave;ng l&agrave; một bộ phim t&acirc;m l&yacute; cổ trang, lấy bối cảnh Việt Nam v&agrave;o triều Nguyễn. Linh&nbsp;- Người vợ bất đắc dĩ của một vi&ecirc;n quan tri huyện, xuất th&acirc;n l&agrave; con của một gia đ&igrave;nh n&ocirc;ng d&acirc;n ngh&egrave;o kh&oacute;, v&igrave; kh&ocirc;ng thể ho&agrave;n th&agrave;nh nghĩa vụ sinh con nối d&otilde;i n&ecirc;n đ&atilde; chịu sự ch&egrave;n &eacute;p của những người vợ lớn trong gia đ&igrave;nh. Sự gặp gỡ t&igrave;nh cờ của c&ocirc; v&agrave; người y&ecirc;u thời thanh mai tr&uacute;c m&atilde; của m&igrave;nh - Nh&acirc;n&nbsp;đ&atilde; dẫn đến nhiều c&acirc;u chuyện bất ngờ xảy ra khiến cuộc sống c&ocirc; ho&agrave;n to&agrave;n thay đổi.</p>
', 1, 5, 9, N'Kaity Nguyễn - Thuận Nguyễn - NSƯT Quang Thắng - NSƯT Kim Oanh - Đinh Ngọc Diệp - Anh Dũng - Quốc Huy - Bé Lưu Ly', N'Victor Vu', CAST(N'2024-01-11T00:00:00.000' AS DateTime), CAST(N'2024-06-23T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 0, CAST(N'2023-10-05T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (4, N'Đất Rừng Phương Nam', N'dat-rung-phuong-nam.jpg', 110, N'<p>Đất Rừng Phương Nam phi&ecirc;n bmột cậu b&eacute; chẳng may mất mẹ tr&ecirc;n đường đi t&igrave;m cha. C&ugrave;ng với An, kh&aacute;n giả sẽ trải nghiệm sự tr&ugrave; ph&uacute; của thi&ecirc;n nhi&ecirc;n v&agrave; n&eacute;t đẹp văn ho&aacute; đặc sắc của v&ugrave;ng đất Nam K&igrave; Lục Tỉnh, sự h&agrave;o hiệp của những người n&ocirc;ng d&acirc;n b&aacute;m đất b&aacute;m rừng v&agrave; tinh thần y&ecirc;u nước kh&aacute;ng Ph&aacute;p đầu thế kỉ 20. B&ecirc;n cạnh đ&oacute;, t&igrave;nh cảm gia đ&igrave;nh, t&igrave;nh bạn, t&igrave;nh người, t&igrave;nh thầy tr&ograve;, t&igrave;nh y&ecirc;u nước l&agrave; những cung bậc cảm x&uacute;c s&acirc;u sắc sẽ đọng lại qua mỗi bước ch&acirc;n của An v&agrave; đồng bạn.ản điện ảnh được kế thừa v&agrave; ph&aacute;t triển từ tiểu thuyết c&ugrave;ng t&ecirc;n của nh&agrave; văn Đo&agrave;n Giỏi. Bộ phim kể về h&agrave;nh tr&igrave;nh phi&ecirc;u lưu của An</p>
', 1, 6, 6, N'Hồng Ánh, Huỳnh Hạo Khang, Mai Tài Phến, Công Ninh, Hứa Vĩ Văn, Tuyền Mập, Tuấn Trần.', N'Nguy?n Quang Dung', CAST(N'2023-12-24T00:00:00.000' AS DateTime), CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 0, CAST(N'2023-10-05T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (5, N'Kỳ Án Trên Đồi Tuyết', N'ky-an-tren-doi-tuyet.jpg', 150, N'<p>Cuộc sống của nh&agrave; văn Sandra c&ugrave;ng chồng Samuel v&agrave; cậu con trai m&ugrave; Daniel ở căn nh&agrave; gỗ hẻo l&aacute;nh tr&ecirc;n d&atilde;y Alps bất ngờ bị x&aacute;o trộn khi Samuel được t&igrave;m thấy đ&atilde; chết một c&aacute;ch b&iacute; ẩn tr&ecirc;n tuyết, khiến Sandra trở th&agrave;nh nghi phạm ch&iacute;nh v&agrave; mối quan hệ đầy m&acirc;u thuẫn giữa c&ocirc; v&agrave; chồng dần được phơi b&agrave;y trước phi&ecirc;n t&ograve;a.</p>
', 1, 7, 6, N'Sandra Hüller, Swann Arlaud, Milo Machado-Graner', N'Justine Triet', CAST(N'2023-11-02T00:00:00.000' AS DateTime), CAST(N'2023-12-15T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 2.5, CAST(N'2023-10-04T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (6, N'Vầng Trăng Máu', N'vang-trang-mau.jpg', 206, N'<p>Bộ phim dựa tr&ecirc;n cuốn s&aacute;ch b&aacute;n chạy v&agrave; được ca ngợi rộng r&atilde;i&nbsp;Killers of the Flower Moon: The Osage Murders and the Birth of the FBI&nbsp;của David Grann. Lấy bối cảnh ở Oklahoma những năm 1920, cuốn s&aacute;ch kể về vụ giết người h&agrave;ng loạt ở bộ tộc Osage, nơi người d&acirc;n ph&aacute;t triển kinh tế chủ yếu từ dầu mỏ. Một chuỗi tội &aacute;c t&agrave;n bạo đ&atilde; xảy ra, được gọi l&agrave; Triều đại Khủng bố.</p>
', 1, 7, 9, N'Leonardo DiCaprio, Robert De Niro, Lily Gladstone', N'Martin Scorsese', CAST(N'2023-12-03T00:00:00.000' AS DateTime), CAST(N'2024-01-06T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 0, CAST(N'2023-10-05T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (7, N'Muôn Kiếp Nhân Duyên', N'muon-kiep-nhan-duyen.jpg', 152, N'<p>Mu&ocirc;n Kiếp Nh&acirc;n Duy&ecirc;n xoay quanh hai nh&acirc;n vật ch&iacute;nh - Nora (Greta Lee) v&agrave; Hae Sung (Teo Yoo). T&igrave;nh bạn th&acirc;n thiết của họ bị chia cắt khi Nora theo gia đ&igrave;nh di cư khỏi H&agrave;n Quốc v&agrave;o năm 12 tuổi. 20 năm sau, như một mối duy&ecirc;n tiền định, họ gặp lại nhau tại Mỹ, nhưng l&uacute;c n&agrave;y, Nora đ&atilde; trở th&agrave;nh vợ của Arthur (John Magaro). Nh&igrave;n lại qu&aacute; khứ, n&oacute;i về hiện tại v&agrave; hướng đến tương lai - những cuộc tr&ograve; chuyện nhẹ nh&agrave;ng giữa Nora v&agrave; Hae Sung trong 1 tuần ngắn ngủi ở New York được đan xen bởi c&aacute;c khoảng lặng, khiến người xem ch&igrave;m đắm v&agrave;o suy ngẫm về cuộc sống, số phận v&agrave; t&igrave;nh y&ecirc;u.</p>
', 1, 5, 6, N'Greta Lee, Teo Yoo, John Magaro', N'Celine Song', CAST(N'2023-10-18T00:00:00.000' AS DateTime), CAST(N'2024-01-11T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 4.5, CAST(N'2023-10-05T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (8, N'Openheimer', N'openheimer.jpg', 180, N'<p>Với nh&acirc;n vật trung t&acirc;m l&agrave; J. Robert Oppenheimer, nh&agrave; vật l&yacute; l&yacute; thuyết người đứng đầu ph&ograve;ng th&iacute; nghiệm Los Alamos, thời kỳ Thế chiến II. &Ocirc;ng đ&oacute;ng vai tr&ograve; quan trọng trong Dự &aacute;n Manhattan, ti&ecirc;n phong trong nhiệm vụ ph&aacute;t triển vũ kh&iacute; hạt nh&acirc;n, v&agrave; được coi l&agrave; một trong những &ldquo;cha đẻ của bom nguy&ecirc;n tử&rdquo;.</p>
', 1, 8, 9, N'Cillian Murphy, Robert Downey Jr., Florence Pugh...', N'Christopher Nolan', CAST(N'2023-10-15T00:00:00.000' AS DateTime), CAST(N'2024-01-17T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 0, CAST(N'2023-10-01T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (9, N'Đấu Trường Sinh Tử: Khúc Ca Của Chim Ca Và Rắn Độc', N'dau-truong-sinh-tu.jpg', 157, N'<p>Đấu Trường Sinh Tử: Kh&uacute;c H&aacute;t Của Chim Ca V&agrave; Rắn Độc l&agrave; phần tiền truyện của mạch truyện ch&iacute;nh, lấy bối cảnh 64 năm trước phần phim đầu ti&ecirc;n. Mạch phim theo ch&acirc;n Coriolanus Snow trẻ tuổi, ch&iacute;nh l&agrave; vị Tổng thống Snow trong loạt phim sau n&agrave;y. L&uacute;c n&agrave;y Coriolanus l&agrave; niềm hy vọng cuối c&ugrave;ng cho d&ograve;ng d&otilde;i Snow đang dần lụi t&agrave;n. Được chỉ định trở th&agrave;nh cố vấn cho tr&ograve; chơi, vai tr&ograve; của anh l&agrave; trợ gi&uacute;p vật tế trong đấu trường v&agrave; anh sẽ l&agrave; cố vấn của Lucy Gray Baird - một c&ocirc; g&aacute;i đặc biệt đến từ Quận 12.</p>
', 1, 1, 6, N'Rachel Zegler, Hunter Schafer, Tom Blyth, Jason Schwartzman…', N'Francis Lawrence', CAST(N'2023-10-14T00:00:00.000' AS DateTime), CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 3, CAST(N'2023-10-05T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (10, N'Thanh Gươm Trừ Tà', N'thanh-goum-tru-ta.jpg', 98, N'<p>Chuyện phim xoay quanh nh&acirc;n vật thầy trừ t&agrave; Cheon (Gang Dong Won thủ vai), c&ugrave;ng với chiến hữu của m&igrave;nh In Bae (Lee Dong Hwi thủ vai), chuy&ecirc;n đi lừa đảo với những m&agrave;n trừ t&agrave; &ldquo;pha ke&quot; sử dụng c&ocirc;ng nghệ cao c&ugrave;ng khả năng h&ugrave;ng biện v&agrave; t&agrave;i &ldquo;thao t&uacute;ng t&acirc;m l&yacute;&quot; đỉnh cao. Tuy chuy&ecirc;n đi trừ t&agrave; nhưng cả hai đều kh&ocirc;ng thể nh&igrave;n thấy v&agrave; kh&ocirc;ng tin v&agrave;o ma quỷ cho tới khi họ phải đối đầu với một con &aacute;c quỷ thật đang khống chế em g&aacute;i (Park So Yi thủ vai) của Yoo Kyung (Esom thủ vai). Yoo Kyung sở hữu &ldquo;đ&ocirc;i mắt &acirc;m dương&rdquo; c&oacute; thể nh&igrave;n thấy những linh hồn. Kết hợp với thầy trừ t&agrave; Cheon v&agrave; In Bae, họ phải đối đầu với con &aacute;c quỷ thật sự - Beom Cheom (Huh Joon Ho thủ vai) v&agrave; từ đ&oacute;, thầy trừ t&agrave; Cheon v&ocirc; t&igrave;nh kh&aacute;m ph&aacute; được b&iacute; mật đằng sau c&aacute;i chết của em trai v&agrave; &ocirc;ng nội m&igrave;nh. Nhận được sự gi&uacute;p đỡ của một nh&acirc;n vật b&iacute; ẩn c&ugrave;ng với những pha h&agrave;nh động trừ t&agrave; đẹp mắt, liệu thầy trừ t&agrave; Cheon c&oacute; gi&uacute;p được em g&aacute;i của Yoo Kyung v&agrave; diệt trừ &aacute;c quỷ đ&oacute;?</p>
', 1, 4, 9, N'Gang Dong Won, Esom, Lee Dong Hwi, Kim Jong Soo, Lee Jung Eun, Park Myoung Hyun, Park So Yi, …', N'Kim Sung-Sik', CAST(N'2023-10-18T00:00:00.000' AS DateTime), CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 0, CAST(N'2023-10-03T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (11, N'Cú Máy Ăn Tiền', N'cu-may-an-tien.jpg', 132, N'<p>C&uacute; M&aacute;y Ăn Tiền lấy bối cảnh thực tế v&agrave; c&acirc;u chuyện l&agrave;m phim những năm 1970 ở H&agrave;n Quốc. Kim Yeol (Song Kang Ho thủ vai) - một đạo diễn điện ảnh c&oacute; bộ phim đầu tay được giới ph&ecirc; b&igrave;nh khen ngợi, nhưng sự nghiệp của &ocirc;ng tuột dốc kh&ocirc;ng phanh khi li&ecirc;n tiếp ra đời những t&aacute;c phẩm bị coi l&agrave; &ldquo;phim r&aacute;c&rdquo;. Sau khi ho&agrave;n th&agrave;nh xong bộ phim mới nhất l&agrave; Cobweb, đạo diễn Kim cảm thấy cần quay lại c&aacute;i kết để c&oacute; thể tạo ra một kiệt t&aacute;c. Tuy nhi&ecirc;n, kịch bản mới kh&ocirc;ng vượt qua được kh&acirc;u kiểm duyệt v&agrave; c&aacute;c diễn vi&ecirc;n cũng kh&ocirc;ng thể hiểu được c&aacute;i kết mới của &ocirc;ng. Giữa lịch tr&igrave;nh rối rắm, sự phản đối từ nh&agrave; sản xuất, sự can thiệp của cơ quan kiểm duyệt v&agrave; những m&acirc;u thuẫn đang xung đột trước mắt khiến đạo diễn Kim như muốn ph&aacute;t đi&ecirc;n, nhưng &ocirc;ng vẫn tiếp tục một c&aacute;ch bất chấp: &ldquo;Nếu t&ocirc;i c&oacute; thể thay đổi c&aacute;i kết, một kiệt t&aacute;c sẽ xuất hiện. Tất cả những g&igrave; t&ocirc;i cần l&agrave; 2 ng&agrave;y&rdquo;.</p>
', 1, 5, 9, N'SONG Kang-ho, LIM Soo-jung, OH Jung-se, JEON Yeo-been, Krystal JUNG, PARK Jung-soo, JANG Young-nam', N'KIM Jee-woon', CAST(N'2023-09-29T00:00:00.000' AS DateTime), CAST(N'2024-01-13T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 0, CAST(N'2023-10-02T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (12, N'Nhà Vịt Di Cư', N'nha-vit-di-cu.jpg', 189, N'<p>Nh&agrave; Vịt Di Cư theo ch&acirc;n một gia đ&igrave;nh vịt trời gồm vịt bố, vịt mẹ, cậu con trai tuổi teen Dax v&agrave; vịt &uacute;t Gwen, trong lần đầu ti&ecirc;n trải nghiệm chuyến di cư tiến về ph&iacute;a nam để tr&uacute; đ&ocirc;ng. Thế nhưng, niềm vui vẻ sự h&aacute;o hức k&eacute;o d&agrave;i kh&ocirc;ng bao l&acirc;u, gia đ&igrave;nh vịt nhận ra, họ đang bay ngược chiều với tất cả c&aacute;c đ&agrave;n vịt kh&aacute;c. Kh&ocirc;ng kịp quay đầu, họ bất ngờ gặp phải loạt &ldquo;chướng ngại vật&rdquo; l&agrave; những t&ograve;a nh&agrave; cao tầng của th&agrave;nh phố hiện đại. Li&ecirc;n tiếp sau đ&oacute; l&agrave; những thước phim đầy kịch t&iacute;nh nhưng v&ocirc; c&ugrave;ng h&agrave;i hước của nh&agrave; vịt trong qu&aacute; tr&igrave;nh kh&aacute;m ph&aacute; đ&ocirc; thị mới.</p>
', 1, 3, 4, N'Kumail Nanjiani, Elizabeth Banks, Caspar Jennings, Tresi Gazal, Awkwafina,…', N'Benjamin Renner', CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2024-02-16T00:00:00.000' AS DateTime), N'2005', N'FULL HD', 0, CAST(N'2023-10-03T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (13, N'Móng Vuốt', N'mong-vuot.jpg', 145, N'<p>M&oacute;ng Vuốt dẫn dắt c&acirc;u chuyện đi từ buổi tiệc d&atilde; ngoại n&aacute;o nhiệt của một nh&oacute;m bạn đến một kết cục kinh ho&agrave;ng khi phải đấu tranh sinh tồn với một con &aacute;c th&uacute;.</p>
', 1, 4, 9, N'Tuấn Trần, Thảo Tâm, Rocker Nguyễn, Gi A Nguyễn, Quốc Khánh, Naomi, Ceri, Hồng Thanh', N'Lê Thanh Son', CAST(N'2023-10-13T00:00:00.000' AS DateTime), CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 4, CAST(N'2023-10-05T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (14, N'Cầu Hồn', N'cau-hon.jpg', 176, N'<p>Cầu Hồn bắt đầu trong bối cảnh kỳ lạ của những c&acirc;u chuyện si&ecirc;u nhi&ecirc;n được lưu h&agrave;nh trong trường. C&aacute;c địa điểm ch&iacute;nh của trường bao gồm thư viện, ph&ograve;ng tập nhảy v&agrave; thang m&aacute;y đều to&aacute;t l&ecirc;n sự kinh dị về những điềm b&aacute;o đen tối sẽ diễn ra. Điểm đặc biệt của phim l&agrave; c&aacute;ch lồng gh&eacute;p kh&eacute;o l&eacute;o 3 nghi thức t&acirc;m linh v&agrave;o 1 tr&ograve; chơi thực tế ảo: Tr&ograve; chơi 4 g&oacute;c; Tr&ograve; chơi trốn t&igrave;m 1 người; v&agrave; Tr&ograve; chơi thang m&aacute;y. Bộ phim l&agrave; sự trỗi dậy của TRUYỀN THUYẾT KINH HO&Agrave;NG C&Acirc;Y CẦU MA NỮ TẠI Đ&Agrave;I LOAN.</p>
', 1, 4, 9, N'Ning Chang, J.C Lin, Summer Meng', N'Lester Hsi', CAST(N'2023-09-25T00:00:00.000' AS DateTime), CAST(N'2024-01-18T00:00:00.000' AS DateTime), N'2023', N'FULL HD', 4.5, CAST(N'2023-10-05T11:24:40.087' AS DateTime))
INSERT [dbo].[Phim] ([Id_Phim], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [Id_LoaiPhim], [Id_DanhMuc], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong], [DanhGia], [NgayCapNhat]) VALUES (17, N'NĂM ĐÊM KINH HOÀNG', N'5-dem-kinh-hoang.jpg', 110, N'<p>Liệu thể sống s&oacute;t sau năm đ&ecirc;m? Bộ phim kể về một nh&acirc;n vi&ecirc;n bảo vệ gặp rắc rối khi anh bắt đầu l&agrave;m việc tại Freddy Fazbear&#39;s Pizza. Sau ng&agrave;y đầu ti&ecirc;n, anh nhận ra rằng ca đ&ecirc;m ở Freddy&#39;s kh&ocirc;ng giống như b&igrave;nh thường.</p>

<p>Phim mới <strong>Năm Đ&ecirc;m Kinh Ho&agrave;ng</strong> dự ki&ecirc;́n ra mắt tại các rạp chi&ecirc;́u phim toàn qu&ocirc;́c từ 27.10.2023.</p>
', 1, 4, 5, N'Matthew Lillard, Josh Hutcherson, Mary Stuart Masterson,…', N'Emma Tammi', CAST(N'2023-11-11T00:00:00.000' AS DateTime), CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'2023', N'FHD', 2.5, CAST(N'2023-11-08T15:09:50.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([Id_Phong], [Id_RapChieu], [TenPhong], [SoLuong], [TinhTrang], [Id_LoaiPhong], [Id_LoaiGhe]) VALUES (1, 2, N'A2', 15, 1, 2, 2)
INSERT [dbo].[Phong] ([Id_Phong], [Id_RapChieu], [TenPhong], [SoLuong], [TinhTrang], [Id_LoaiPhong], [Id_LoaiGhe]) VALUES (8, 5, N'A1', 18, 1, 1, 2)
INSERT [dbo].[Phong] ([Id_Phong], [Id_RapChieu], [TenPhong], [SoLuong], [TinhTrang], [Id_LoaiPhong], [Id_LoaiGhe]) VALUES (11, 9, N'B3', 17, 1, 1, 2)
INSERT [dbo].[Phong] ([Id_Phong], [Id_RapChieu], [TenPhong], [SoLuong], [TinhTrang], [Id_LoaiPhong], [Id_LoaiGhe]) VALUES (12, 9, N'B2', 15, 1, 2, 2)
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong_Ghe] ON 

INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (1, 8, 6, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (2, 8, 7, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (3, 8, 8, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (4, 8, 9, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (5, 8, 16, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (6, 8, 17, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (7, 8, 18, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (8, 8, 19, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (9, 8, 21, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (10, 8, 22, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (11, 8, 23, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (12, 8, 24, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (13, 8, 25, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (14, 8, 26, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (15, 8, 27, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (16, 8, 28, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (17, 8, 29, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (18, 8, 30, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (89, 1, 6, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (90, 1, 7, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (91, 1, 8, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (92, 1, 9, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (93, 1, 16, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (94, 1, 17, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (95, 1, 18, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (96, 1, 19, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (97, 1, 21, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (98, 1, 22, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (99, 1, 23, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (100, 1, 24, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (101, 1, 25, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (102, 1, 26, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (103, 1, 27, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (104, 11, 6, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (105, 11, 7, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (106, 11, 8, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (107, 11, 9, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (108, 11, 16, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (109, 11, 17, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (110, 11, 18, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (111, 11, 19, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (112, 11, 21, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (113, 11, 22, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (114, 11, 23, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (115, 11, 24, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (116, 11, 25, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (117, 11, 26, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (118, 11, 27, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (119, 11, 28, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (120, 11, 29, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (121, 12, 6, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (122, 12, 7, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (123, 12, 8, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (124, 12, 9, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (125, 12, 16, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (126, 12, 17, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (127, 12, 18, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (128, 12, 19, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (129, 12, 21, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (130, 12, 22, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (131, 12, 23, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (132, 12, 24, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (133, 12, 25, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (134, 12, 26, 1)
INSERT [dbo].[Phong_Ghe] ([Id], [Id_Phong], [Id_Ghe], [TinhTrang]) VALUES (135, 12, 27, 1)
SET IDENTITY_INSERT [dbo].[Phong_Ghe] OFF
GO
SET IDENTITY_INSERT [dbo].[RapPhim] ON 

INSERT [dbo].[RapPhim] ([Id_RapChieu], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [GioMoCua], [GioDongCua]) VALUES (1, N'Cinestar Quốc Thanh ', 0, N'HCM', N'Q9', NULL, CAST(N'06:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[RapPhim] ([Id_RapChieu], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [GioMoCua], [GioDongCua]) VALUES (2, N'DCINE Bến Thành ', 1, N'HN', N'Mỹ Đình', NULL, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[RapPhim] ([Id_RapChieu], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [GioMoCua], [GioDongCua]) VALUES (4, N'Galaxy Nguyễn Du', 0, N'HCM', N'q1', NULL, CAST(N'06:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[RapPhim] ([Id_RapChieu], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [GioMoCua], [GioDongCua]) VALUES (5, N'Rap Đông Đa', 1, N'HN', N'HN', N'Phuong 01', CAST(N'06:00:00' AS Time), CAST(N'21:45:00' AS Time))
INSERT [dbo].[RapPhim] ([Id_RapChieu], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [GioMoCua], [GioDongCua]) VALUES (6, N'Rap Hoang Mai', 0, N'Hà Nội', N'Long Biên', N'Xa ss', CAST(N'07:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[RapPhim] ([Id_RapChieu], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [GioMoCua], [GioDongCua]) VALUES (9, N'Cinestar Thủ Dầu Một', 2, N'Bình Dương', N'Tp.Thủ Dầu Một', N'Phú Hòa', CAST(N'07:20:00' AS Time), CAST(N'23:20:00' AS Time))
SET IDENTITY_INSERT [dbo].[RapPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id_Slider], [Id_Phim], [AnhSlider], [TrangThai]) VALUES (1, 4, N'4.jpg', 1)
INSERT [dbo].[Sliders] ([Id_Slider], [Id_Phim], [AnhSlider], [TrangThai]) VALUES (3, 10, N'3.jpg', 1)
INSERT [dbo].[Sliders] ([Id_Slider], [Id_Phim], [AnhSlider], [TrangThai]) VALUES (1003, 2, N'bietdoimarvelsBANNER-01.jpg', 0)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([Id_TaiKhoan], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [Id_ThongTin]) VALUES (1, N'admin', N'admin', CAST(N'2020-09-12T00:00:00.000' AS DateTime), 1, N'MANAGER', 1)
INSERT [dbo].[TaiKhoan] ([Id_TaiKhoan], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [Id_ThongTin]) VALUES (23, N'admin1', N'admin1', CAST(N'2023-11-07T12:50:32.913' AS DateTime), 1, N'MANAGER', 21)
INSERT [dbo].[TaiKhoan] ([Id_TaiKhoan], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [Id_ThongTin]) VALUES (1025, N'user', N'1234', CAST(N'2023-11-13T12:19:30.260' AS DateTime), 1, N'USER', 1023)
INSERT [dbo].[TaiKhoan] ([Id_TaiKhoan], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [Id_ThongTin]) VALUES (1026, N'hieu123', N'hieu123', CAST(N'2023-11-14T12:37:24.853' AS DateTime), 1, N'USER', 1024)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTin] ON 

INSERT [dbo].[ThongTin] ([Id_ThongTin], [TenNguoiDung], [GioiTinh], [NgaySinh], [DiaChi], [Email], [NgayCapNhat]) VALUES (1, N'Châu Minh Đương', 1, CAST(N'2003-05-20T00:00:00.000' AS DateTime), N'Phú Yên', N'chauminhduong.cmd@gmail.com', CAST(N'2023-10-22T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTin] ([Id_ThongTin], [TenNguoiDung], [GioiTinh], [NgaySinh], [DiaChi], [Email], [NgayCapNhat]) VALUES (21, N'Nguyễn Văn A', 1, CAST(N'2001-07-13T00:00:00.000' AS DateTime), N'Bình Định', N'admin1@gmail.com', CAST(N'2023-11-29T10:54:34.397' AS DateTime))
INSERT [dbo].[ThongTin] ([Id_ThongTin], [TenNguoiDung], [GioiTinh], [NgaySinh], [DiaChi], [Email], [NgayCapNhat]) VALUES (1023, N'Lê Hà Doanh', 0, CAST(N'2000-08-16T00:00:00.000' AS DateTime), N'Tp.Thủ Dầu Một, Bình Dương', N'2124802010036@student.tdmu.edu.vn', CAST(N'2023-11-29T10:54:15.157' AS DateTime))
INSERT [dbo].[ThongTin] ([Id_ThongTin], [TenNguoiDung], [GioiTinh], [NgaySinh], [DiaChi], [Email], [NgayCapNhat]) VALUES (1024, N'Doãn Quốc Hiếu 1', 1, CAST(N'2003-08-07T00:00:00.000' AS DateTime), N'Tp.Thủ Dầu Một, Bình Dương', N'doanquochieu2104@gmail.com', CAST(N'2023-11-29T10:54:04.907' AS DateTime))
SET IDENTITY_INSERT [dbo].[ThongTin] OFF
GO
SET IDENTITY_INSERT [dbo].[TRANGTIN] ON 

INSERT [dbo].[TRANGTIN] ([MaTT], [TenTrang], [NoiDung], [NgayTao], [MetaTitle]) VALUES (1, N'GIỚI THIỆU', N'<p style="text-align:justify">T&iacute;nh đến nay, <strong>Galaxy Cinema</strong> đ&atilde; c&oacute; gần 30 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, hệ thống rạp chiếu phim đang c&oacute; 18 cụm rạp trải khắp cả nước. Galaxy Cinema trở th&agrave;nh điểm đến quen thuộc cho giới trẻ cả nước để tiếp cận nhanh nhất với c&aacute;c phim hay phim mới kh&ocirc;ng chỉ&nbsp;Việt Nam hay Hollywood m&agrave; c&ograve;n từ H&agrave;n Quốc, Th&aacute;i Lan, Nhật Bản&hellip; Chẳng những&nbsp;nổi tiếng về chất lượng dịch vụ tốt, địa điểm đắc địa v&agrave; nh&acirc;n vi&ecirc;n trẻ trung th&acirc;n thiện, Galaxy Cinema c&ograve;n c&oacute; nhiều chương tr&igrave;nh khuyến m&atilde;i xuy&ecirc;n suốt năm v&agrave; theo từng m&ugrave;a phim. Mỗi tuần, rạp c&oacute; chương tr&igrave;nh Happy Day &ndash; gi&aacute; v&eacute; chỉ từ 50k. Mỗi thứ 2 đầu ti&ecirc;n hằng th&aacute;ng, ra rạp xem phim Ng&agrave;y Tri &Acirc;n&nbsp;sẽ đồng gi&aacute; v&eacute; v&agrave; miễn ph&iacute; ch&acirc;m th&ecirc;m bắp nước. Trở th&agrave;nh th&agrave;nh vi&ecirc;n <strong>Galaxy Cinema</strong>, bạn sẽ nhận được h&agrave;ng loạt đặc quyền. Ngo&agrave;i t&iacute;ch Star đổi bắp nước, c&aacute;c G-Stars v&agrave; X-Stars c&ograve;n được miễn ph&iacute; đổi vị bắp. Mỗi năm, Galaxy Cinema đều c&oacute; chương tr&igrave;nh tri &acirc;n si&ecirc;u khủng cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết gồm nhiều phần qu&agrave;, v&eacute; miễn ph&iacute; hay bắp nước miễn ph&iacute;.</p>
', CAST(N'2023-11-21T15:18:00' AS SmallDateTime), N'giOi-thiEu')
INSERT [dbo].[TRANGTIN] ([MaTT], [TenTrang], [NoiDung], [NgayTao], [MetaTitle]) VALUES (2, N'LIÊN HỆ', N'<p>Đ&acirc;y l&agrave; nội dung trang li&ecirc;n hệ</p>
', CAST(N'2023-11-21T16:17:00' AS SmallDateTime), N'liEn-hE')
SET IDENTITY_INSERT [dbo].[TRANGTIN] OFF
GO
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2043, 1025, 14, CAST(N'2023-11-13T12:58:12.8113184' AS DateTime2), CAST(135000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2044, 1025, 14, CAST(N'2023-11-13T13:06:05.0090523' AS DateTime2), CAST(90000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2045, 1025, 14, CAST(N'2023-11-13T13:13:16.4935145' AS DateTime2), CAST(45000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2046, 1025, 15, CAST(N'2023-11-13T13:16:02.1095940' AS DateTime2), CAST(90000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2047, 1026, 14, CAST(N'2023-11-14T12:41:34.1155592' AS DateTime2), CAST(135000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2048, 1026, 14, CAST(N'2023-11-14T15:35:40.2511838' AS DateTime2), CAST(90000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2049, 1026, 14, CAST(N'2023-11-15T09:43:35.0257067' AS DateTime2), CAST(90000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2051, 1025, 13, CAST(N'2023-11-16T13:02:58.0960668' AS DateTime2), CAST(90000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2052, 1026, 23, CAST(N'2023-11-20T09:32:56.6369445' AS DateTime2), CAST(90000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2053, 1026, 23, CAST(N'2023-11-21T14:51:45.1199141' AS DateTime2), CAST(45000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Ve] ([Id_Ve], [Id_TaiKhoan], [Id_LichChieu], [NgayDat], [GiaVe], [SoluongGhe]) VALUES (2054, 1026, 23, CAST(N'2023-11-21T14:52:16.3657215' AS DateTime2), CAST(45000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Ve] OFF
GO
SET IDENTITY_INSERT [dbo].[Ve_Ghe] ON 

INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2105, 2043, 6, N'A1')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2106, 2043, 8, N'A3')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2107, 2043, 9, N'A4')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2108, 2044, 24, N'C2')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2109, 2044, 25, N'C3')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2110, 2045, 26, N'C4')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2111, 2046, 21, N'B4')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2112, 2046, 22, N'B5')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2113, 2047, 21, N'B4')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2114, 2047, 22, N'B5')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2115, 2047, 23, N'C1')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2116, 2048, 8, N'A3')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2117, 2048, 9, N'A4')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2118, 2049, 18, N'B2')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2119, 2049, 19, N'B3')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2122, 2051, 9, N'A4')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2123, 2051, 16, N'A5')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2124, 2052, 16, N'A5')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2125, 2052, 17, N'B1')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2126, 2053, 17, N'B1')
INSERT [dbo].[Ve_Ghe] ([Id], [Id_Ve], [Id_Ghe], [TenGhe]) VALUES (2127, 2054, 17, N'B1')
SET IDENTITY_INSERT [dbo].[Ve_Ghe] OFF
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF__Phong__Daxoa__4BAC3F29]  DEFAULT (CONVERT([bit],(0),(0))) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_Phim] FOREIGN KEY([Id_Phim])
REFERENCES [dbo].[Phim] ([Id_Phim])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_Phim]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LoaiGhe] FOREIGN KEY([Id_LoaiGhe])
REFERENCES [dbo].[LoaiGhe] ([Id_LoaiGhe])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_LoaiGhe]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phim] FOREIGN KEY([Id_Phim])
REFERENCES [dbo].[Phim] ([Id_Phim])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phim]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phong] FOREIGN KEY([Id_Phong])
REFERENCES [dbo].[Phong] ([Id_Phong])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phong]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_RapPhim] FOREIGN KEY([Id_RapChieu])
REFERENCES [dbo].[RapPhim] ([Id_RapChieu])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_RapPhim]
GO
ALTER TABLE [dbo].[NoiDung]  WITH CHECK ADD  CONSTRAINT [FK_Bl_TK] FOREIGN KEY([Id_BinhLuan])
REFERENCES [dbo].[BinhLuan] ([Id_BinhLuan])
GO
ALTER TABLE [dbo].[NoiDung] CHECK CONSTRAINT [FK_Bl_TK]
GO
ALTER TABLE [dbo].[NoiDung]  WITH CHECK ADD  CONSTRAINT [FK_TK_BL] FOREIGN KEY([Id_TaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id_TaiKhoan])
GO
ALTER TABLE [dbo].[NoiDung] CHECK CONSTRAINT [FK_TK_BL]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_DanhMuc] FOREIGN KEY([Id_DanhMuc])
REFERENCES [dbo].[DanhMuc] ([Id_DanhMuc])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_DanhMuc]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_LoaiPhim] FOREIGN KEY([Id_LoaiPhim])
REFERENCES [dbo].[LoaiPhim] ([Id_LoaiPhim])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_LoaiPhim]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiGhe] FOREIGN KEY([Id_LoaiGhe])
REFERENCES [dbo].[LoaiGhe] ([Id_LoaiGhe])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiGhe]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([Id_LoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([Id_LoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_Rap] FOREIGN KEY([Id_RapChieu])
REFERENCES [dbo].[RapPhim] ([Id_RapChieu])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_Rap]
GO
ALTER TABLE [dbo].[Phong_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Phong_Ghe_Ghe] FOREIGN KEY([Id_Ghe])
REFERENCES [dbo].[Ghe] ([Id_Ghe])
GO
ALTER TABLE [dbo].[Phong_Ghe] CHECK CONSTRAINT [FK_Phong_Ghe_Ghe]
GO
ALTER TABLE [dbo].[Phong_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Phong_Ghe_Phong] FOREIGN KEY([Id_Phong])
REFERENCES [dbo].[Phong] ([Id_Phong])
GO
ALTER TABLE [dbo].[Phong_Ghe] CHECK CONSTRAINT [FK_Phong_Ghe_Phong]
GO
ALTER TABLE [dbo].[Sliders]  WITH CHECK ADD  CONSTRAINT [FK_Sliders_Phim] FOREIGN KEY([Id_Phim])
REFERENCES [dbo].[Phim] ([Id_Phim])
GO
ALTER TABLE [dbo].[Sliders] CHECK CONSTRAINT [FK_Sliders_Phim]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ThongTin] FOREIGN KEY([Id_ThongTin])
REFERENCES [dbo].[ThongTin] ([Id_ThongTin])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ThongTin]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LichChieu] FOREIGN KEY([Id_LichChieu])
REFERENCES [dbo].[LichChieu] ([Id_LichChieu])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LichChieu]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_TaiKhoan1] FOREIGN KEY([Id_TaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id_TaiKhoan])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_TaiKhoan1]
GO
ALTER TABLE [dbo].[Ve_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Ghe_Ve] FOREIGN KEY([Id_Ve])
REFERENCES [dbo].[Ve] ([Id_Ve])
GO
ALTER TABLE [dbo].[Ve_Ghe] CHECK CONSTRAINT [FK_Ve_Ghe_Ve]
GO
