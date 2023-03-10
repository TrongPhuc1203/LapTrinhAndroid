USE [LapTrinhWeb]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 07/03/2023 8:42:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaSach] [int] NULL,
	[MaHD] [int] NULL,
	[SoLuongMua] [int] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CTHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 07/03/2023 8:42:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [char](20) NULL,
	[NgayTao] [date] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 07/03/2023 8:42:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TaiKhoan] [char](20) NOT NULL,
	[MatKhau] [char](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](150) NULL,
	[SDT] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 07/03/2023 8:42:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[MaTL] [int] NULL,
	[TenSach] [nvarchar](50) NULL,
	[TenTacGia] [nvarchar](50) NULL,
	[NhaXuatBan] [nvarchar](50) NULL,
	[NamXuatBan] [int] NULL,
	[DonGia] [float] NULL,
	[HinhAnh] [nchar](150) NULL,
	[SoLuongSach] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 07/03/2023 8:42:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [int] IDENTITY(1,1) NOT NULL,
	[TenTL] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email]) VALUES (N'trongphuc           ', N'123                                               ', N'Lê Phan Trọng Phúc', N'Nam', CAST(N'2002-03-12' AS Date), N'376 đường Trần Hưng Đạo phường 1 tp Cao Lãnh ', N'0939750883', N'trongphuc12032002@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (1, N'Tư duy - Kỹ năng sống
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (2, N'Văn học
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (3, N'Thiếu nhi
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (4, N'Sách làm Cha Mẹ
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (5, N'Tâm Linh
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (6, N'Lịch Sử
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (7, N'Tự Truyện, Kinh Doanh
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (8, N'Tự Truyện
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (9, N'Tâm Lý
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (10, N'Sức Khỏe
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (11, N'Tiểu Thuyết
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (12, N'Khởi Nghiệp
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (13, N'Bài Học Kinh Doanh
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (14, N'Kinh Tế Học
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (15, N'Marketing
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (16, N'Lãnh Đạo
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (17, N'Tài Chính
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (18, N'Nghệ Thuật Sống Đẹp
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (19, N'Kiến Thức Tổng Hợp
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (20, N'Tác Phẩm Kinh Điển
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (21, N'Kỹ Năng Mềm
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (22, N'Truyện Cười 
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (23, N'Truyện Dài
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (24, N'Self Help
')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (25, N'Ngoại Ngữ
')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_CTHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_CTHoaDon_Sach]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NguoiDung]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
