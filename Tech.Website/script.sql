USE [Technology]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 7/5/2020 5:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Image] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 7/5/2020 5:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/5/2020 5:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](30) NOT NULL,
	[Picture] [text] NOT NULL,
	[Icon] [varchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeatureDetails]    Script Date: 7/5/2020 5:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[FeatureID] [int] NOT NULL,
	[FeatureValue] [varchar](100) NOT NULL,
 CONSTRAINT [PK_FeatureDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 7/5/2020 5:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[FeatureName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 7/5/2020 5:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[MessageText] [text] NULL,
	[Time] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/5/2020 5:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[BrandID] [int] NULL,
	[ProductDetailID] [int] NULL,
	[AveragePrice] [money] NOT NULL,
	[ProductFeatures] [varchar](max) NOT NULL,
	[ProductImage_1] [text] NOT NULL,
	[ProductImage_2] [text] NOT NULL,
	[ProductImage_3] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/5/2020 5:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([Id], [Name], [Surname], [Username], [Password], [Email], [Image]) VALUES (1, N'John', N'Nerwo', N'nerwojohn', N'        john       ', N'john@gmail.com', N'MyWebSite\assets\img\admin\avatar-1.jpg')
INSERT [dbo].[Admins] ([Id], [Name], [Surname], [Username], [Password], [Email], [Image]) VALUES (2, N'Leonard', N'Fisher', N'lfisher', N'        fisherman       ', N'fisherman@gmail.com', N'MyWebSite\assets\img\admin\avatar-5.jpg')
INSERT [dbo].[Admins] ([Id], [Name], [Surname], [Username], [Password], [Email], [Image]) VALUES (3, N'Sheldon', N'Cooper', N'scooper', N'        scientist       ', N'sc@gmail.com', N'MyWebSite\assets\img\admin\user3.jpg')
INSERT [dbo].[Admins] ([Id], [Name], [Surname], [Username], [Password], [Email], [Image]) VALUES (4, N'Howard', N'Wolovitz', N'howwolo', N'        Howard       ', N'howard@gmail.com', N'MyWebSite\assets\img\admin\avatar-4.jpg')
SET IDENTITY_INSERT [dbo].[Admins] OFF
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (1, N'Apple', N'MyWebSite\assets\img\brand\Apple_logo_black.svg')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (2, N'Samsung', N'MyWebSite\assets\img\brand\samsung.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (3, N'Huawei', N'MyWebSite\assets\img\brand\huawei.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (4, N'Oppo', N'MyWebSite\assets\img\brand\oppo.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (5, N'AMD', N'MyWebSite\assets\img\brand\amd.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (6, N'ASUS', N'MyWebSite\assets\img\brand\asus.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (7, N'Gigabyte', N'MyWebSite\assets\img\brand\gigabyte.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (8, N'HP', N'MyWebSite\assets\img\brand\hp.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (9, N'Intel', N'MyWebSite\assets\img\brand\intel.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (10, N'Kingstone', N'MyWebSite\assets\img\brand\kingston.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (11, N'LG', N'MyWebSite\assets\img\brand\lg.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (12, N'Lenovo', N'MyWebSite\assets\img\brand\lenovo.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (13, N'Monster', N'MyWebSite\assets\img\brand\monster.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (14, N'MSI', N'MyWebSite\assets\img\brand\msi.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (15, N'Nvidia', N'MyWebSite\assets\img\brand\nvidia.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (16, N'Philips', N'MyWebSite\assets\img\brand\philips.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (17, N'Sony', N'MyWebSite\assets\img\brand\sony.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (18, N'WD', N'MyWebSite\assets\img\brand\wd.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (19, N'Xioami', N'MyWebSite\assets\img\brand\xioami.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (20, N'Casper', N'MyWebSite\assets\img\brand\casper.png')
INSERT [dbo].[Brands] ([BrandID], [BrandName], [Logo]) VALUES (21, N'Dell', N'MyWebSite\assets\img\brand\dell.png')
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Picture], [Icon]) VALUES (1, N'Telephone', N'MyWebSite\assets\img\category\honor_30.png', N'fa fa-mobile fa-3x')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Picture], [Icon]) VALUES (2, N'Laptop', N'MyWebSite\assets\img\category\laptop.png', N'fa fa-laptop fa-2x')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Picture], [Icon]) VALUES (3, N'Television', N'MyWebSite\assets\img\category\tv.png', N'fa fa-television fa-2x')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Picture], [Icon]) VALUES (4, N'Storage', N'MyWebSite\assets\img\category\storage.png', N'fa fa-hdd-o  fa-2x')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Picture], [Icon]) VALUES (5, N'Components', N'MyWebSite\assets\img\category\components.png', N'fa fa-headphones fa-2x')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[FeatureDetails] ON 

INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (1, 1, 1, N'Dynamic AMOLED 2X')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2, 1, 2, N'6.9 inches')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (3, 1, 3, N'1440 x 3200')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (4, 1, 4, N'Android 10')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (5, 1, 5, N'Exynos 990 (7 nm+)')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (6, 1, 6, N'Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55)')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (7, 1, 7, N'Mali-G77 MP11')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (8, 1, 8, N'12 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (9, 1, 9, N'108 MP')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (10, 1, 10, N'40 MP')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (11, 1, 11, N'32-bit/384kHz audio')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (12, 1, 12, N'222 g')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (13, 6, 1, N'IPS')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (14, 6, 2, N'13 inches')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (15, 6, 3, N'2160 x 1440')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (16, 6, 4, N'Windows 10')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (17, 6, 6, N'Intel Core i5-8265U')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (18, 6, 7, N'NVIDIA GeForce MX250')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (19, 6, 8, N'8 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (20, 6, 9, N'1 MP')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (21, 6, 11, N'Speaker x 2')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (22, 6, 12, N'1.3 Kg')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (23, 10, 1, N'QLED')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (24, 10, 2, N'82 inches')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (25, 10, 3, N'7680 x 4320')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (26, 10, 4, N'Tizen')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (27, 10, 7, N'Quantum Processor 8K')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (28, 10, 11, N'Quad Speakers with Subwoofer')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (29, 10, 12, N'51.2 kg')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (30, 10, 13, N'100 Hz')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (31, 10, 14, N'Quantum HDR 24x')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (32, 10, 15, N'580 Watts')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (33, 1009, 16, N'Internal SSD')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (34, 1009, 17, N'2.5 inch')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (35, 1009, 18, N'250 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (36, 1009, 19, N'SATA III')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (37, 1009, 20, N'550 MB/s')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (38, 1009, 21, N'520 MB/s')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (39, 1009, 22, N'3.94" X 2.76" X 0.27"')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (40, 1009, 23, N'Black')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (41, 1009, 12, N'50 g')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (42, 1009, 15, N'Average: 2.2 W*Maximum: 4.0 W')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (43, 1012, 1, N'AMOLED capacitive touchscreen')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (44, 1012, 2, N'6.7 inches')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (45, 1012, 3, N'1440 x 3168 pixels')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (46, 1012, 4, N'Android 10, ColorOS 7.1')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (47, 1012, 5, N'Qualcomm SM8250 Snapdragon 865 (7 nm+)')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (48, 1012, 6, N'Octa-core (1x2.84 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.8 GHz Kryo 585)')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (49, 1012, 7, N'Adreno 650')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (50, 1012, 8, N'8GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (51, 1012, 9, N'48 MP')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (52, 1012, 10, N'32 MP')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (53, 1012, 11, N'Loudspeaker')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (54, 1012, 12, N'209 g')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (55, 2007, 1, N'LED (IPS)')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (56, 2007, 2, N'17.3 Inç')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (57, 2007, 3, N'1920x1080 Piksel')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (58, 2007, 4, N'FreeDOS')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (59, 2007, 6, N'Intel Core i7-10750H')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (60, 2007, 7, N'NVIDIA GeForce RTX 2080 Super')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (61, 2007, 8, N'32 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (62, 2007, 9, N'HD type (30fps@720p)')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (63, 2007, 11, N'2x 3W Speaker')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (64, 2007, 12, N'2.66 kg')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (65, 2008, 1, N'G-SYNC')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (66, 2008, 2, N'17.3 Inç')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (67, 2008, 3, N'3840x2160 Piksel')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (68, 2008, 4, N'FreeDOS')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (69, 2008, 6, N'Intel Core i7-9700K')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (70, 2008, 7, N'NVIDIA GeForce RTX 2080')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (71, 2008, 8, N'16 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (72, 2008, 9, N'2.0MP FHD Camera')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (73, 2008, 11, N'Sound BlasterX® Pro-Gaming 360°')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (74, 2008, 12, N'3.9Kg')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (75, 2009, 1, N'LED (IPS)')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (76, 2009, 2, N'17.3 Inç
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (77, 2009, 3, N'3840x2160 Piksel
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (78, 2009, 4, N'Windows 10 Pro
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (79, 2009, 6, N'Intel Xeon E-2286M
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (80, 2009, 7, N'NVIDIA Quadro RTX 4000
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (81, 2009, 8, N'16 GB
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (82, 2009, 9, N'HD Camera, 
IR Camera')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (83, 2009, 11, N'Realtek ALC3281')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (84, 2009, 12, N'3.08 kg
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (95, 2011, 1, N'OLED')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (96, 2011, 2, N'55 inç')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (97, 2011, 3, N'3840x2160
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (98, 2011, 4, N'Android TV')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (99, 2011, 11, N'Dolby Atmos')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (100, 2011, 12, N'22 kg')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (101, 2011, 13, N'100 Hz')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (102, 2011, 14, N'HDR10+')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (103, 2011, 15, N'147  W')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (104, 2011, 22, N'1228 x 706 x 49')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (105, 2012, 1, N'OLED')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (106, 2012, 2, N'65 inç')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (107, 2012, 3, N'3840x2160')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (108, 2012, 4, N'Android TV')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (109, 2012, 11, N'ClearAudio+')
GO
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (110, 2012, 12, N'22.5 kg')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (111, 2012, 13, N'100 Hz')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (112, 2012, 14, N'HDR10')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (113, 2012, 15, N'130 W')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (114, 2012, 22, N'1636 x 961 x 185')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (115, 3007, 12, N' 120g')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (116, 3007, 16, N'SSD (NAND)')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (117, 3007, 17, N'2.5-inch')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (118, 3007, 18, N'512 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (119, 3007, 19, N'SATA3')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (120, 3007, 20, N'540 MB/s')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (121, 3007, 22, N'90 x 45 x 10')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (122, 3007, 23, N'Gray')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (123, 3011, 12, N'260 g')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (124, 3011, 15, N'Max. 4.5W')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (125, 3011, 16, N'Portable External Hard Drive')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (126, 3011, 17, N'2.5 Inç')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (127, 3011, 18, N'1 TB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (128, 3011, 19, N'USB Micro-B')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (129, 3011, 22, N'86.6 x 24 x 127')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (130, 3011, 23, N'Blue, Green')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (131, 3012, 12, N'51 g')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (132, 3012, 16, N'Portable SSD')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (133, 3012, 18, N'250 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (134, 3012, 19, N'USB 3.1 Gen2')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (135, 3012, 22, N'74 x 57.3 x 10.5')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (136, 3012, 23, N'Blue')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (137, 3012, 17, N'2.5 inç')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (138, 3012, 20, N'540 MB/s')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (139, 3013, 7, N'GeForce RTX 2080 Ti
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (140, 3013, 8, N'11 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (141, 3013, 15, N'
260 W')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (142, 3013, 22, N'268 x 112 x 50')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (143, 3013, 24, N'GDDR6')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (144, 3013, 25, N'14 Gbps')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (145, 3013, 26, N'7680x4320
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (146, 3013, 27, N'352-bit
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (147, 3013, 28, N'4352 Units
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (148, 3013, 29, N'Turing
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (149, 3014, 7, N'GeForce RTX 2080 Ti
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (150, 3014, 8, N'11 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (151, 3014, 15, N'250 W')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (152, 3014, 22, N'290 x 134 x 60')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (153, 3014, 24, N'GDDR6')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (154, 3014, 25, N'14 Gbps')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (155, 3014, 26, N'7680x4320')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (156, 3014, 27, N'352 bit')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (157, 3014, 28, N'4352 Units')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (158, 3014, 29, N'Turing')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (159, 3015, 7, N'Quadro RTX 8000
')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (160, 3015, 8, N'48 GB')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (161, 3015, 15, N'295 W')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (162, 3015, 24, N'GDDR6')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (163, 3015, 25, N'14 Gbps')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (164, 3015, 26, N'7680x4320')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (165, 3015, 27, N'384 bit')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (166, 3015, 28, N'4608 units')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (167, 3015, 22, N'26t mm')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (169, 3015, 29, N'Turing')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2171, 5, 1, N'Dynamic AMOLED 2X capacitive touchscreen')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2172, 5, 2, N'6.7 inches')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2173, 5, 3, N'1440 x 3200 pixels')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2174, 5, 4, N'Android 10, One UI 2')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2175, 5, 5, N'Exynos 990 (7 nm+) - Global')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2176, 5, 6, N'Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55) - Global')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2177, 5, 7, N'Mali-G77 MP11 - Global Adreno 650 - USA')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2178, 5, 8, N'128GB 8GB RAM')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2179, 5, 9, N'12 MP, f/1.8, 26mm (wide), 1/1.76", 1.8µm, Dual Pixel PDAF, OIS')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2180, 5, 10, N'10 MP, f/2.2, 26mm (wide), 1/3.2", 1.22µm, Dual Pixel PDAF')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2181, 5, 11, N'32-bit/384kHz audio')
INSERT [dbo].[FeatureDetails] ([ID], [ProductID], [FeatureID], [FeatureValue]) VALUES (2182, 5, 12, N'186 g (6.56 oz)')
SET IDENTITY_INSERT [dbo].[FeatureDetails] OFF
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (1, N'DisplayType')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (2, N'DisplaySize')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (3, N'DisplayResolution')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (4, N'OS')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (5, N'Chipset')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (6, N'CPU')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (7, N'GPU')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (8, N'Memory')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (9, N'MainCamera')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (10, N'SelfieCamera')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (11, N'Audio')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (12, N'Weight')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (13, N'RefreshRate')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (14, N'HDR')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (15, N'Power')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (16, N'Type')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (17, N'FormFactor')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (18, N'Capacity')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (19, N'Interface')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (20, N'ReadSpeed')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (21, N'WriteSpeed')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (22, N'Dimensions')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (23, N'Color')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (24, N'MemoryType')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (25, N'MemorySpeed')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (26, N'MaxResolution')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (27, N'MemoryBus')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (28, N'GpuCore')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (29, N'GpuArchitecture')
INSERT [dbo].[Features] ([FeatureID], [FeatureName]) VALUES (30, N'asd')
SET IDENTITY_INSERT [dbo].[Features] OFF
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [Name], [Email], [Subject], [MessageText], [Time]) VALUES (1, N'John', N'Arizona', N'Information', N'Hello, my name is John.', NULL)
INSERT [dbo].[Messages] ([Id], [Name], [Email], [Subject], [MessageText], [Time]) VALUES (2, N'Jason', N'Gleman', N'Nothing', N'Hi, how are you?', NULL)
INSERT [dbo].[Messages] ([Id], [Name], [Email], [Subject], [MessageText], [Time]) VALUES (1002, N'John', N'shall@gmail.com', N'Information', N'dsadsadsadd', NULL)
INSERT [dbo].[Messages] ([Id], [Name], [Email], [Subject], [MessageText], [Time]) VALUES (2002, N'John', N'shall@gmail.com', N'Information', N'sadsadsad', NULL)
INSERT [dbo].[Messages] ([Id], [Name], [Email], [Subject], [MessageText], [Time]) VALUES (3002, N'Richard', N'Paul', N'Information', N'Hi, my name is Richard. I am from USA. I am 22 years old.', N'9:24 PM')
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (1, N'Apple iPhone 11 Pro Max', 1, 1, 1, 2000.0000, N'Ekran Boyutu:6.57 InçDahili Depolama:64 GBBellek (RAM):6 GBBatarya Kapasitesi:4160 mAhHat Sayisi:Çift HatHizli Sarj:Var
4.5G Destegi:VarCPU Frekansi:2.4 GHzCPU Çekirdegi:8 ÇekirdekEkran / Gövde Orani:84.48 %Degisir Batarya:YokKamera Çözünürlügü:48 MPEkran Çözünürlügü:1080x2400 (FHD+) PikselParmak izi Okuyucu:VarSes Çikisi:3.5 mmBoy:164.02 mmAgirlik:192 Gram', N'MyWebSite\assets\img\product\Telephones\b_apple-iphone-11-pro-max-512gb-6.jpg', N'MyWebSite\assets\img\product\Telephones\m_apple-iphone-11-pro-max-512gb-5.jpg', N'MyWebSite\assets\img\product\Telephones\m_apple-iphone-11-pro-max-512gb-7.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (5, N'Samsung Galaxy S20+ Plus', 1, 2, NULL, 1550.0000, N'The Galaxy S20 Plus is the best mix of high-end features and price in Samsung’s S20 lineup, offering a gorgeous 120Hz display, impressive cameras and 5G in a slick design.', N'MyWebSite\assets\img\product\Telephones\samsung-galaxy-s20-Plus.jpg', N'MyWebSite\assets\img\product\Telephones\Y2_Lockup_CosmicBlack_600x600_v2.jpg', N'MyWebSite\assets\img\product\Telephones\Y2_Lockup_CosmicGray_600x600_v2.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (6, N'Huawei MateBook 13 ', 2, 3, 2, 1000.0000, N'Ekran Boyutu:13 InçEkran Çözünürlügü:2160x1440 PikselIslemci Modeli:Intel Core i5-8265UBellek (RAM):8 GB
Isletim Sistemi:Windows 10Ekran Karti Modeli:NVIDIA GeForce MX250Sabit Disk (SSD) Boyutu:512 GBDokunmatik Ekran:Var', N'MyWebSite\assets\img\product\Laptops\huawei_matebook4.png', N'MyWebSite\assets\img\product\Laptops\huawei_matebook5.png', N'MyWebSite\assets\img\product\Laptops\huawei_matebook_3.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (10, N'Samsung 82” Q900R QLED 8K TV', 3, 2, NULL, 9000.0000, N'Ekran Boyutu:82 InçÇözünürlük Standardi:Ultra HD (8K)Ekran:LEDSes Çikis Gücü (RMS):60 W
Çikis Yili:2019Smart TV:VarHD Uydu Alici (DVB-S2):VarEnerji Tüketim Sinifi:D', N'MyWebSite\assets\img\product\Televisions\b_samsung-82q900r-10.jpg', N'MyWebSite\assets\img\product\Televisions\b_samsung-82q900r-11.jpg', N'MyWebSite\assets\img\product\Televisions\b_samsung-82q900r-18.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (1009, N'Samsung 860 EVO SATA 2.5" SSD 250GB', 4, 2, NULL, 60.0000, N'Kapasite:250 GBDepolama Teknolojisi:SSD (NAND)Baglanti Arayüzü:SATABaglanti Tipi:SATA3
Rastgele Okuma (QD32):98 K IOPSRastgele Yazma (QD32):90 K IOPSSirali Okuma:550 MB/sSirali Yazma:520 MB/s', N'MyWebSite\assets\img\product\Storages\b_samsung-860-evo-mz-76e250bw-1.jpg', N'MyWebSite\assets\img\product\Storages\b_samsung-860-evo-mz-76e250bw-2.jpg', N'MyWebSite\assets\img\product\Storages\b_samsung-860-evo-mz-76e250bw-3.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (1012, N'Oppo Find X2 ', 1, 4, NULL, 1550.0000, N'Ekran Boyutu:6.7 InçDahili Depolama:256 GBBellek (RAM):12 GBBatarya Kapasitesi:4200 mAh
Hat Sayisi:Tek HatHizli Sarj:Var4.5G Destegi:VarCPU Frekansi:2.84 GHz', N'MyWebSite\assets\img\product\Telephones\oppo.png', N'MyWebSite\assets\img\product\Telephones\oppo_find_x2_neo.png', N'MyWebSite\assets\img\product\Telephones\b_oppo-find-x2-10.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (2007, N'MSI GE75 10SGS-043XTR ', 2, 14, NULL, 4000.0000, N'Ekran Boyutu:17.3 InçEkran Çözünürlügü:1920x1080 PikselIslemci Modeli:Intel Core i7-10750HBellek (RAM):32 GB
Isletim Sistemi:FreeDOSEkran Karti Modeli:NVIDIA GeForce RTX 2080 SuperSabit Disk (HDD) Boyutu:1 TBSabit Disk (SSD) Boyutu:512 GB', N'MyWebSite\assets\img\product\Laptops\msi-ge75-8se-230xtr-2.png', N'MyWebSite\assets\img\product\Laptops\msi-ge75-8se-230xtr-1.png', N'MyWebSite\assets\img\product\Laptops\msi-ge75-8se-230xtr-3.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (2008, N'Monster Tulpar T7 V18.3', 2, 13, NULL, 3500.0000, N'Ekran Boyutu:17.3 InçEkran Çözünürlügü:3840x2160 PikselIslemci Modeli:Intel Core i7-9700KBellek (RAM):16 GB
Isletim Sistemi:FreeDOSEkran Karti Modeli:NVIDIA GeForce RTX 2080Sabit Disk (HDD) Boyutu:1 TBSabit Disk (SSD) Boyutu:512 GB', N'MyWebSite\assets\img\product\Laptops\monster-tulpar-t7-v18-3-2.png', N'MyWebSite\assets\img\product\Laptops\monster-tulpar-t7-v18-3-1.png', N'MyWebSite\assets\img\product\Laptops\monster-tulpar-t7-v18-3-8.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (2009, N'Dell Precision M7740 EL PROFESSOR', 2, 21, NULL, 5000.0000, N'Ekran Boyutu:17.3 InçEkran Çözünürlügü:3840x2160 PikselIslemci Modeli:Intel Xeon E-2286MBellek (RAM):16 GB
Isletim Sistemi:Windows 10 ProEkran Karti Modeli:NVIDIA Quadro RTX 4000Sabit Disk (SSD) Boyutu:512 GBDokunmatik Ekran:Yok', N'MyWebSite\assets\img\product\Laptops\dell-precision-m7740-palermo-2.png', N'MyWebSite\assets\img\product\Laptops\dell-precision-m7740-palermo-4.png', N'MyWebSite\assets\img\product\Laptops\dell-precision-m7740-palermo-5.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (2011, N'Philips 55OLED804 Ultra HD (4K) TV ', 3, 16, NULL, 1500.0000, N'Ekran Boyutu:55 InçÇözünürlük Standardi:Ultra HD (4K)Ekran:OLEDSes Çikis Gücü (RMS):50 W
Çikis Yili:2019Smart TV:VarHD Uydu Alici (DVB-S2):VarEnerji Tüketim Sinifi:B', N'MyWebSite\assets\img\product\Televisions\philips-55oled804-12-2.jpg', N'MyWebSite\assets\img\product\Televisions\philips-55oled804-12-1.jpg', N'MyWebSite\assets\img\product\Televisions\philips-55oled804-12-7.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (2012, N'Sony KD-65AG8 Ultra HD (4K) TV', 3, 17, NULL, 2300.0000, N'Ekran Boyutu:65 InçÇözünürlük Standardi:Ultra HD (4K)Ekran:OLEDSes Çikis Gücü (RMS):40 W
Çikis Yili:2019Smart TV:VarHD Uydu Alici (DVB-S2):VarEnerji Tüketim Sinifi:B', N'MyWebSite\assets\img\product\Televisions\b_sony-kd-65ag8-3.jpg', N'MyWebSite\assets\img\product\Televisions\b_sony-kd-65ag8-1.jpg', N'MyWebSite\assets\img\product\Televisions\b_sony-kd-65ag8-4.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (3007, N'WD My Passport SSD', 4, 18, NULL, 80.0000, N'Kapasite:512 GBDepolama Teknolojisi:SSD (NAND)Baglanti Arayüzü:USB Type-CBaglanti Tipi:USB 3.2 Gen 2
Sirali Okuma:540 MB/s', N'MyWebSite\assets\img\product\Storages\b_my-passport-ssd-2.jpg', N'MyWebSite\assets\img\product\Storages\b_my-passport-ssd-1.jpg', N'MyWebSite\assets\img\product\Storages\b_my-passport-ssd-3.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (3011, N'Sony HD-SP1 HDD', 4, 17, NULL, 90.0000, N'Kapasite:1 TBDepolama Teknolojisi:HDDBaglanti Arayüzü:USB Micro-BBaglanti Tipi:USB 3.2 Gen 1
Dönüs Hizi:5400 RPMÇerçeve Boyutu:2.5 Inç', N'MyWebSite\assets\img\product\Storages\b_sony-hd-sp1-1tb-2.jpg', N'MyWebSite\assets\img\product\Storages\b_sony-hd-sp1-1tb-1.jpg', N'MyWebSite\assets\img\product\Storages\b_sony-hd-sp1-1tb-3.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (3012, N'Samsung T5 SSD (250 GB)', 4, 2, NULL, 110.0000, N'Kapasite:250 GBDepolama Teknolojisi:SSD (NAND)Baglanti Arayüzü:USB Type-CBaglanti Tipi:USB 3.2 Gen 2
Sirali Okuma:540 MB/s', N'MyWebSite\assets\img\product\Storages\b_samsung-t5-250gb-1.jpg', N'MyWebSite\assets\img\product\Storages\b_samsung-t5-250gb-2.jpg', N'MyWebSite\assets\img\product\Storages\b_samsung-t5-250gb-3.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (3013, N'MSI GeForce RTX 2080 Ti Ventus 11G OC ', 5, 14, NULL, 2000.0000, N'Islemci Üreticisi:NVIDIABellek Boyutu:11 GBBellek Türü:GDDR6GPU Çekirdegi:4352 birim
Grafik Karti Gücü:260 WVR Destegi:VarÇoklu GPU (SLI/CrossFire):VarBaglanti Arayüzü:PCIe 3.0', N'MyWebSite\assets\img\product\Components\b_msi-geforce-rtx-2080-ti-ventus-11g-oc-2.png', N'MyWebSite\assets\img\product\Components\b_msi-geforce-rtx-2080-ti-ventus-11g-oc-1.png', N'MyWebSite\assets\img\product\Components\b_msi-geforce-rtx-2080-ti-ventus-11g-oc-3.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (3014, N'Gigabyte AORUS GeForce RTX 2080 Ti Xtreme 11G', 5, 7, NULL, 1500.0000, N'Islemci Üreticisi:NVIDIABellek Boyutu:11 GBBellek Türü:GDDR6GPU Çekirdegi:4352 birim
Grafik Karti Gücü:250 WVR Destegi:VarÇoklu GPU (SLI/CrossFire):VarBaglanti Arayüzü:PCIe 3.0', N'MyWebSite\assets\img\product\Components\b_gigabyte-aorus-geforce-rtx-2080-ti-xtreme-11g-1.jpg', N'MyWebSite\assets\img\product\Components\b_gigabyte-aorus-geforce-rtx-2080-ti-xtreme-11g-1.png', N'MyWebSite\assets\img\product\Components\b_gigabyte-aorus-geforce-rtx-2080-ti-xtreme-11g-2.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (3015, N'NVIDIA Quadro RTX 8000', 5, 15, NULL, 7000.0000, N'Islemci Üreticisi:NVIDIABellek Boyutu:48 GBBellek Türü:GDDR6GPU Çekirdegi:4608 birim
Grafik Karti Gücü:295 WVR Destegi:VarÇoklu GPU (SLI/CrossFire):VarBaglanti Arayüzü:PCIe 3.0', N'MyWebSite\assets\img\product\Components\b_nvidia-quadro-rtx-8000-5.png', N'MyWebSite\assets\img\product\Components\b_nvidia-quadro-rtx-8000-4.png', N'MyWebSite\assets\img\product\Components\b_nvidia-quadro-rtx-8000-6.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductDetailID], [AveragePrice], [ProductFeatures], [ProductImage_1], [ProductImage_2], [ProductImage_3]) VALUES (10013, N'LG OLED65W7V Ultra HD (4K) TV', 3, 11, NULL, 2500.0000, N'Ekran Boyutu:65 Inç Çözünürlük Standardi:Ultra HD (4K) Ekran:OLED Ses Çikis Gücü (RMS):60 W
Çikis Yili:2017 Smart TV:Var HD Uydu Alici (DVB-S2):Var Enerji Tüketim Sinifi:B', N'MyWebSite\assets\img\product\Televisions\56-560160_lg-signature-oled-tv-lg-signature-tv-png.png', N'MyWebSite\assets\img\product\Televisions\b_lg-oled65w7v-1.jpg', N'MyWebSite\assets\img\product\Televisions\b_lg-oled65w7v-6.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [Image]) VALUES (1, N'atan', N'atan@gmail.com', N'atan1999', N'MyWebSite\assets\img\users\agent.jpg')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [Image]) VALUES (2, N'Shall', N'shall@gmail.com', N'123456', N'MyWebSite\assets\img\users\user1.jpg')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [Image]) VALUES (1002, N'Chall', N'chall@gmail.com', N'123456', N'MyWebSite\assets\img\users\user2.jpg')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [Image]) VALUES (1004, N'Jall', N'jall@gmail.com', N'123456', N'MyWebSite\assets\img\users\img1.jpg')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[FeatureDetails]  WITH CHECK ADD  CONSTRAINT [FK_FeatureDetails_Features] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Features] ([FeatureID])
GO
ALTER TABLE [dbo].[FeatureDetails] CHECK CONSTRAINT [FK_FeatureDetails_Features]
GO
ALTER TABLE [dbo].[FeatureDetails]  WITH CHECK ADD  CONSTRAINT [FK_FeatureDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeatureDetails] CHECK CONSTRAINT [FK_FeatureDetails_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([BrandID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
