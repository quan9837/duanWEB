CREATE DATABASE db_bandienthoailaptop
select * from SanPhams
select * from Thuonghieus
select * from ChitietDonHangs
select * from AspNetUserLogins

GO
USE [db_bandienthoailaptop]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Members](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](255) NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSPs]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSPs](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_LoaiSPs] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSPs] ON
INSERT [dbo].[LoaiSPs] ([MaLoai], [TenLoai], [TrangThai]) VALUES (1, N'Điện thoại', 0)
SET IDENTITY_INSERT [dbo].[LoaiSPs] OFF
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'01afef76-519d-4554-8776-3787301d373b', N'IdentityUser', NULL, N'olivervinh@gmail.com', N'OLIVERVINH@GMAIL.COM', N'olivervinh@gmail.com', N'OLIVERVINH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECT4qW1Lw7T5ajFbTtz57K4mIfVAqIXs0ugtqdlZp6xFSLAZlk7PijKHElUvC4K+nw==', N'XYUAIMPNN4AZBWIWDIYXVGKNWOW3WWNW', N'728b1d8f-de66-46a9-8211-31ba1afbc3f4', NULL, 0, 0, NULL, 1, 0)
/****** Object:  Table [dbo].[Thuonghieus]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thuonghieus](
	[MaThuonghieu] [int] IDENTITY(1,1) NOT NULL,
	[TenTH] [nvarchar](100) NOT NULL,
	[Hinh] [varchar](255) NULL,
	[Trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_Thuonghieus] PRIMARY KEY CLUSTERED 
(
	[MaThuonghieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Thuonghieus] ON
INSERT [dbo].[Thuonghieus] ([MaThuonghieu], [TenTH], [Hinh], [Trangthai]) VALUES (1, N'Samsung', N'1.jpg', 0)
SET IDENTITY_INSERT [dbo].[Thuonghieus] OFF
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210202044038_u1', N'5.0.1')
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPhams](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[SN] [varchar](20) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[NgaySX] [datetime2](7) NOT NULL,
	[Hinh] [varchar](255) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Gia] [decimal](18, 2) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[Dophangiai] [varchar](50) NULL,
	[Ram] [varchar](50) NOT NULL,
	[Cpu] [varchar](50) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Color] [nvarchar](50) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[MaThuonghieu] [int] NOT NULL,
 CONSTRAINT [PK_SanPhams] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhams] ON
INSERT [dbo].[SanPhams] ([Ma], [SN], [TenSP], [NgaySX], [Hinh], [MoTa], [Gia], [TrangThai], [Dophangiai], [Ram], [Cpu], [Content], [Color], [MaLoai], [MaThuonghieu]) VALUES (1, N'963-987-963', N'Điện thoại 01', CAST(0x0700000000001E420B AS DateTime2), N'1.jpg', N'ok', CAST(36000.00 AS Decimal(18, 2)), 1, N'PLS TFT LCD, 6.5", HD+', N'4gb', N'Apple A13 Bionic 6', N'<p>w</p>', N'xanh', 1, 1)
INSERT [dbo].[SanPhams] ([Ma], [SN], [TenSP], [NgaySX], [Hinh], [MoTa], [Gia], [TrangThai], [Dophangiai], [Ram], [Cpu], [Content], [Color], [MaLoai], [MaThuonghieu]) VALUES (2, N'963-987-967', N'Samsung Galaxy A12 (6GB/128GB)', CAST(0x0700000000001E420B AS DateTime2), N'2.jpg', N'nhiều tính năng đặc biệt, hấp dẫn', CAST(7000.00 AS Decimal(18, 2)), 1, N'AMOLED, 6.4", Full HD+', N'6gb', N'MediaTek Helio P90 8 ', N'<p>w</p>', N'cam', 1, 1)
INSERT [dbo].[SanPhams] ([Ma], [SN], [TenSP], [NgaySX], [Hinh], [MoTa], [Gia], [TrangThai], [Dophangiai], [Ram], [Cpu], [Content], [Color], [MaLoai], [MaThuonghieu]) VALUES (3, N'963-987-967', N' Samsung Galaxy Z Fold2 5G Đặc Biệt', CAST(0x0700000000001F420B AS DateTime2), N'3.jpg', N'Thiết kế sang trọng, cao cấp', CAST(19000.00 AS Decimal(18, 2)), 1, N'IPS LCD, 6.1", Liquid Retina', N'6gb', N'Snapdragon 730 8 nhân', N'<p>ok</p>', N'trắng', 1, 1)
INSERT [dbo].[SanPhams] ([Ma], [SN], [TenSP], [NgaySX], [Hinh], [MoTa], [Gia], [TrangThai], [Dophangiai], [Ram], [Cpu], [Content], [Color], [MaLoai], [MaThuonghieu]) VALUES (4, N'963-987-968', N' Samsung Galaxy Z Fold2 5G Đặc Biệt', CAST(0x0700000000001F420B AS DateTime2), N'4.jpg', N'Thuộc dòng smartphone cao cấp, Samsung Galaxy Z Fold2 5G được Samsung trau chuốt không chỉ vẻ ngoài sang trọng', CAST(24000.00 AS Decimal(18, 2)), 1, N'AMOLED, 6.43", Full HD+', N'4gb', N'Apple A13 Bionic 6', N'<p>ok</p>', N'Cam', 1, 1)
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHangs]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Datecheckout] [datetime2](7) NOT NULL,
	[MaUser] [nvarchar](450) NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_DonHangs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DonHangs] ON
INSERT [dbo].[DonHangs] ([Id], [Datecheckout], [MaUser], [TongTien]) VALUES (18, CAST(0x07C1138009461F420B AS DateTime2), N'01afef76-519d-4554-8776-3787301d373b', CAST(43000.00 AS Decimal(18, 2)))
INSERT [dbo].[DonHangs] ([Id], [Datecheckout], [MaUser], [TongTien]) VALUES (19, CAST(0x07A9C2F037461F420B AS DateTime2), N'01afef76-519d-4554-8776-3787301d373b', CAST(403000.00 AS Decimal(18, 2)))
INSERT [dbo].[DonHangs] ([Id], [Datecheckout], [MaUser], [TongTien]) VALUES (20, CAST(0x0791AABD82471F420B AS DateTime2), N'01afef76-519d-4554-8776-3787301d373b', CAST(489000.00 AS Decimal(18, 2)))
INSERT [dbo].[DonHangs] ([Id], [Datecheckout], [MaUser], [TongTien]) VALUES (21, CAST(0x073BC184DD891F420B AS DateTime2), N'01afef76-519d-4554-8776-3787301d373b', CAST(186000.00 AS Decimal(18, 2)))
INSERT [dbo].[DonHangs] ([Id], [Datecheckout], [MaUser], [TongTien]) VALUES (22, CAST(0x07A731B46C7120420B AS DateTime2), N'01afef76-519d-4554-8776-3787301d373b', CAST(86000.00 AS Decimal(18, 2)))
INSERT [dbo].[DonHangs] ([Id], [Datecheckout], [MaUser], [TongTien]) VALUES (23, CAST(0x078A1A4F158421420B AS DateTime2), N'01afef76-519d-4554-8776-3787301d373b', CAST(86000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[DonHangs] OFF
/****** Object:  Table [dbo].[ChitietDonHangs]    Script Date: 02/27/2022 19:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietDonHangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ThanhTien] [decimal](18, 2) NOT NULL,
	[Madonhang] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
 CONSTRAINT [PK_ChitietDonHangs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChitietDonHangs] ON
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (16, 1, CAST(36000.00 AS Decimal(18, 2)), 18, 1)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (17, 1, CAST(7000.00 AS Decimal(18, 2)), 18, 2)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (18, 11, CAST(396000.00 AS Decimal(18, 2)), 19, 1)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (19, 1, CAST(7000.00 AS Decimal(18, 2)), 19, 2)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (20, 12, CAST(432000.00 AS Decimal(18, 2)), 20, 1)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (21, 2, CAST(14000.00 AS Decimal(18, 2)), 20, 2)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (22, 1, CAST(19000.00 AS Decimal(18, 2)), 20, 3)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (23, 1, CAST(24000.00 AS Decimal(18, 2)), 20, 4)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (24, 3, CAST(108000.00 AS Decimal(18, 2)), 21, 1)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (25, 5, CAST(35000.00 AS Decimal(18, 2)), 21, 2)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (26, 1, CAST(19000.00 AS Decimal(18, 2)), 21, 3)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (27, 1, CAST(24000.00 AS Decimal(18, 2)), 21, 4)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (28, 1, CAST(36000.00 AS Decimal(18, 2)), 22, 1)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (29, 1, CAST(7000.00 AS Decimal(18, 2)), 22, 2)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (30, 1, CAST(19000.00 AS Decimal(18, 2)), 22, 3)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (31, 1, CAST(24000.00 AS Decimal(18, 2)), 22, 4)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (32, 1, CAST(36000.00 AS Decimal(18, 2)), 23, 1)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (33, 1, CAST(7000.00 AS Decimal(18, 2)), 23, 2)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (34, 1, CAST(19000.00 AS Decimal(18, 2)), 23, 3)
INSERT [dbo].[ChitietDonHangs] ([Id], [Quantity], [ThanhTien], [Madonhang], [MaSP]) VALUES (35, 1, CAST(24000.00 AS Decimal(18, 2)), 23, 4)
SET IDENTITY_INSERT [dbo].[ChitietDonHangs] OFF
/****** Object:  ForeignKey [FK_AspNetRoleClaims_AspNetRoles_RoleId]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserClaims_AspNetUsers_UserId]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserLogins_AspNetUsers_UserId]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetRoles_RoleId]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetUsers_UserId]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserTokens_AspNetUsers_UserId]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_ChitietDonHangs_DonHangs_Madonhang]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[ChitietDonHangs]  WITH CHECK ADD  CONSTRAINT [FK_ChitietDonHangs_DonHangs_Madonhang] FOREIGN KEY([Madonhang])
REFERENCES [dbo].[DonHangs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChitietDonHangs] CHECK CONSTRAINT [FK_ChitietDonHangs_DonHangs_Madonhang]
GO
/****** Object:  ForeignKey [FK_ChitietDonHangs_SanPhams_MaSP]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[ChitietDonHangs]  WITH CHECK ADD  CONSTRAINT [FK_ChitietDonHangs_SanPhams_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPhams] ([Ma])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChitietDonHangs] CHECK CONSTRAINT [FK_ChitietDonHangs_SanPhams_MaSP]
GO
/****** Object:  ForeignKey [FK_DonHangs_AspNetUsers_MaUser]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[DonHangs]  WITH CHECK ADD  CONSTRAINT [FK_DonHangs_AspNetUsers_MaUser] FOREIGN KEY([MaUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DonHangs] CHECK CONSTRAINT [FK_DonHangs_AspNetUsers_MaUser]
GO
/****** Object:  ForeignKey [FK_SanPhams_LoaiSPs_MaLoai]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_LoaiSPs_MaLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSPs] ([MaLoai])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_SanPhams_LoaiSPs_MaLoai]
GO
/****** Object:  ForeignKey [FK_SanPhams_Thuonghieus_MaThuonghieu]    Script Date: 02/27/2022 19:00:32 ******/
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_Thuonghieus_MaThuonghieu] FOREIGN KEY([MaThuonghieu])
REFERENCES [dbo].[Thuonghieus] ([MaThuonghieu])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_SanPhams_Thuonghieus_MaThuonghieu]
GO
