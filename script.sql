USE [master]
GO
/****** Object:  Database [shoesAdidas]    Script Date: 9/24/2019 10:30:32 PM ******/
CREATE DATABASE [shoesAdidas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'baloshop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\baloshop.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'baloshop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\baloshop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shoesAdidas] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shoesAdidas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shoesAdidas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shoesAdidas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shoesAdidas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shoesAdidas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shoesAdidas] SET ARITHABORT OFF 
GO
ALTER DATABASE [shoesAdidas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shoesAdidas] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [shoesAdidas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shoesAdidas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shoesAdidas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shoesAdidas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shoesAdidas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shoesAdidas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shoesAdidas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shoesAdidas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shoesAdidas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shoesAdidas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shoesAdidas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shoesAdidas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shoesAdidas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shoesAdidas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shoesAdidas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shoesAdidas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shoesAdidas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shoesAdidas] SET  MULTI_USER 
GO
ALTER DATABASE [shoesAdidas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shoesAdidas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shoesAdidas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shoesAdidas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [shoesAdidas]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 9/24/2019 10:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[status] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image]    Script Date: 9/24/2019 10:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[image] [nvarchar](300) NULL,
	[cover] [bit] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/24/2019 10:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brand_id] [int] NULL,
	[name] [nvarchar](200) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[size] [nvarchar](50) NULL,
	[color] [nvarchar](100) NULL,
	[description] [nvarchar](2000) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([id], [name], [status]) VALUES (1, N'Chậu', 1)
INSERT [dbo].[Brand] ([id], [name], [status]) VALUES (2, N'Cây', 2)
INSERT [dbo].[Brand] ([id], [name], [status]) VALUES (3, N'Phụ kiện', 3)
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [product_id], [image], [cover]) VALUES (1, 1, N'IMG_4247-1000x1000.jpg', 1)
INSERT [dbo].[Image] ([id], [product_id], [image], [cover]) VALUES (2, 2, N'noth-garden-product-terracotta-chau-dat-nung-1-1000x1000.jpg', 0)
INSERT [dbo].[Image] ([id], [product_id], [image], [cover]) VALUES (3, 3, N'noth-garden-product-black-star-luoi-ho-mini-terracotta-chau-dat-nung-1-1000x1000.jpg', 1)
INSERT [dbo].[Image] ([id], [product_id], [image], [cover]) VALUES (4, 1, N'IMG_3842-1000x1000.jpg', 0)
INSERT [dbo].[Image] ([id], [product_id], [image], [cover]) VALUES (5, 2, N'noth-garden-product-haworthia-coarctata-mong-rong-cupo-1-1000x1000.jpg', 1)
INSERT [dbo].[Image] ([id], [product_id], [image], [cover]) VALUES (6, 3, N'noth-garden-product-luoi-ho-golden-hanni-0.jpg', 0)
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [brand_id], [name], [price], [quantity], [size], [color], [description], [status]) VALUES (1, 1, N'Balo 1', 2000000, 10, N'L', N'red', NULL, 1)
INSERT [dbo].[Product] ([id], [brand_id], [name], [price], [quantity], [size], [color], [description], [status]) VALUES (2, 2, N'Balo 2', 1000000, 10, N'M', N'green', NULL, 2)
INSERT [dbo].[Product] ([id], [brand_id], [name], [price], [quantity], [size], [color], [description], [status]) VALUES (3, 3, N'Balo 3', 3000000, 10, N'XL', N'black', NULL, 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
USE [master]
GO
ALTER DATABASE [shoesAdidas] SET  READ_WRITE 
GO
