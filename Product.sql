USE [master]
GO
/****** Object:  Database [StoreProduct]    Script Date: 12/7/2022 1:27:12 PM ******/
CREATE DATABASE [StoreProduct]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StoreProduct', FILENAME = N'D:\Apps\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\StoreProduct.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StoreProduct_log', FILENAME = N'D:\Apps\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\StoreProduct_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StoreProduct] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StoreProduct].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StoreProduct] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StoreProduct] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StoreProduct] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StoreProduct] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StoreProduct] SET ARITHABORT OFF 
GO
ALTER DATABASE [StoreProduct] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StoreProduct] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StoreProduct] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StoreProduct] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StoreProduct] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StoreProduct] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StoreProduct] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StoreProduct] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StoreProduct] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StoreProduct] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StoreProduct] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StoreProduct] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StoreProduct] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StoreProduct] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StoreProduct] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StoreProduct] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [StoreProduct] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StoreProduct] SET RECOVERY FULL 
GO
ALTER DATABASE [StoreProduct] SET  MULTI_USER 
GO
ALTER DATABASE [StoreProduct] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StoreProduct] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StoreProduct] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StoreProduct] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StoreProduct] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StoreProduct] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'StoreProduct', N'ON'
GO
ALTER DATABASE [StoreProduct] SET QUERY_STORE = OFF
GO
USE [StoreProduct]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/7/2022 1:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/7/2022 1:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[NumberInstock] [int] NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Products__3214EC076C9BC582] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([name], [Description], [NumberInstock], [Category], [Id]) VALUES (N'Iphone', N'apple', 12, N'IP Iphone', 2)
INSERT [dbo].[Products] ([name], [Description], [NumberInstock], [Category], [Id]) VALUES (N'Tai Nghe aipoid', N'aippor', 10, N'Accessories', 3)
INSERT [dbo].[Products] ([name], [Description], [NumberInstock], [Category], [Id]) VALUES (N'Imac', N'Màn hình imac', 4, N'Monitor', 4)
INSERT [dbo].[Products] ([name], [Description], [NumberInstock], [Category], [Id]) VALUES (N'Asus Tuf', N'hãng asus', 3, N'Laptop', 5)
INSERT [dbo].[Products] ([name], [Description], [NumberInstock], [Category], [Id]) VALUES (N'Asus AIO V241EAT i3 1115G4 (BA057W)', N'Cây pc asus', 4, N'Desktop', 6)
INSERT [dbo].[Products] ([name], [Description], [NumberInstock], [Category], [Id]) VALUES (N'Máy chủ Sever Dell PowerEdge', N'Cây server', 4, N'Server', 7)
INSERT [dbo].[Products] ([name], [Description], [NumberInstock], [Category], [Id]) VALUES (N'Iphone 8 plus', N'Iphone của apple', 3, N'IP Iphone', 8)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [StoreProduct] SET  READ_WRITE 
GO
