USE [master]
GO
/****** Object:  Database [MercedesBenz]    Script Date: 3/22/2020 4:10:28 AM ******/
CREATE DATABASE [MercedesBenz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MercedesBenz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSMHSERVER\MSSQL\DATA\MercedesBenz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MercedesBenz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSMHSERVER\MSSQL\DATA\MercedesBenz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MercedesBenz] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MercedesBenz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MercedesBenz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MercedesBenz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MercedesBenz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MercedesBenz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MercedesBenz] SET ARITHABORT OFF 
GO
ALTER DATABASE [MercedesBenz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MercedesBenz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MercedesBenz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MercedesBenz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MercedesBenz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MercedesBenz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MercedesBenz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MercedesBenz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MercedesBenz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MercedesBenz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MercedesBenz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MercedesBenz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MercedesBenz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MercedesBenz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MercedesBenz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MercedesBenz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MercedesBenz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MercedesBenz] SET RECOVERY FULL 
GO
ALTER DATABASE [MercedesBenz] SET  MULTI_USER 
GO
ALTER DATABASE [MercedesBenz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MercedesBenz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MercedesBenz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MercedesBenz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MercedesBenz] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MercedesBenz', N'ON'
GO
ALTER DATABASE [MercedesBenz] SET QUERY_STORE = OFF
GO
USE [MercedesBenz]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/22/2020 4:10:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](20) NULL,
	[Name] [nvarchar](30) NULL,
	[Slogan] [nvarchar](50) NULL,
	[IsNew] [bit] NULL,
	[Discountable] [bit] NULL,
	[ImgSrc] [nvarchar](100) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (2, N'Kompakt', N'A-Serisi', N'Çok orijinal.Aynı sen.', 0, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/kompakt_a-serisi%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (3, N'Kompakt', N'B-Serisi', N'Yeni başlangıçlara yer aç.', 0, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/kompakt_b-serisi%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (4, N'Sedan', N'Yeni A-Serisi Sedan', N'Senin gibi benzersiz.', 1, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/sedan_a-serisi%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (5, N'Sedan', N'C-Serisi', N'Sınırları aş.Fazlası ol.', 0, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/sedan_c-serisi%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (6, N'Sedan', N'E-Serisi', N'Aklın başyapıtı.', 0, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/sedan_e-serisi%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (7, N'Sedan', N'S-Serisi', N'Intelligent Drive''ı hisset.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/sedan_s%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (8, N'Sedan', N'Mercedes-Maybach S-Serisi', N'Örnek liderlik.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/sedan_maybach_s%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (9, N'Coupe', N'CLA', N'Sıradanlığa tepki olarak doğdu.', 0, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/kompakt_cla%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (10, N'Coupe', N'C-Serisi Coupé', N'Sınırları aş.Fazlası ol', 0, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/coupe_c-serisi%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (11, N'Coupe', N'E-Serisi Coupé', N'Aklın başyapıtı.Tutkularınızın size yanıtı.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/coupe_e.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (12, N'Coupe', N'CLS', N'Hayatının kaçamağı.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/Coupe_CLS.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (13, N'Coupe', N'S-Serisi Coupé', N'Göz kamaştıran.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/coupe_s_serisi%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (14, N'Coupe', N'Yeni GLC Coupé', N'Gücünü karakterinden alır.', 1, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/coupe_glc%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (15, N'Cabriolet-Roadster', N'C-Serisi Cabriolet', N'Sınırları aş.Fazlası ol.', 0, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/cabriolet_c-serisi%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (16, N'Cabriolet-Roadster', N'E-Serisi Cabriolet', N'Aklın başyapıtı.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/Cabriolet_E-Serisi.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (17, N'Cabriolet-Roadster', N'S-Serisi Cabriolet', N'Göz kamaştıran.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/cabriolet_s%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (18, N'Cabriolet-Roadster', N'SLC Roadster', N'Duyuların özgürlükle dansı.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/roadster_slc%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (19, N'Cabriolet-Roadster', N'SL Roadster', N'Koleksiyonun "asla yerinde duramayan" parçası.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/roadster_sl%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (20, N'SUV', N'GLA', N'Kendi yolundan git.', 0, 1, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/suv_gla%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (21, N'SUV', N'Yeni GLC', N'Gücünü karakterinden alır.', 1, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/suv_glc%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (22, N'SUV', N'Yeni G-Serisi', N'Zamandan daha güçlü.', 1, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/suv_g%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (23, N'AMG', N'AMG GT 4-Kapı Coupé', N'Performans artık 4 kapılı.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/amg_gt_4_kapi_coupe%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (24, N'AMG', N'AMG GT Coupé', N'Rüyalarınız ele geçirildi.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/amg_gt_r_coupe%402x.png')
INSERT [dbo].[Products] ([ProductID], [Model], [Name], [Slogan], [IsNew], [Discountable], [ImgSrc]) VALUES (25, N'AMG', N'AMG GT Roadster', N'Rüyalarınız ele geçirildi.', 0, 0, N'https://ppricecms-prepricecms.azurewebsites.net/uploads/images/amg_gt_roadster%402x.png')
SET IDENTITY_INSERT [dbo].[Products] OFF
USE [master]
GO
ALTER DATABASE [MercedesBenz] SET  READ_WRITE 
GO
