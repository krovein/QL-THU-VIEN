USE [master]
GO
/****** Object:  Database [qlThuVien]    Script Date: 11/8/2016 9:23:34 PM ******/
CREATE DATABASE [qlThuVien] ON  PRIMARY 
( NAME = N'qlThuVien', FILENAME = N'D:\VisualStudio\project\qlThuVien\Data\qlThuVien.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlThuVien_log', FILENAME = N'D:\VisualStudio\project\qlThuVien\Data\qlThuVien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [qlThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlThuVien] SET DB_CHAINING OFF 
GO
USE [qlThuVien]
GO
/****** Object:  Table [dbo].[LoaiSach]    Script Date: 11/8/2016 9:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSach](
	[maLoaiSach] [nvarchar](50) NOT NULL,
	[tenLoaiSach] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiSach] PRIMARY KEY CLUSTERED 
(
	[maLoaiSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[login]    Script Date: 11/8/2016 9:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[ID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Muon_Tra]    Script Date: 11/8/2016 9:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muon_Tra](
	[maSach] [nvarchar](50) NOT NULL,
	[maDocGia] [nvarchar](50) NULL,
	[soLuong] [int] NULL,
	[ngayMuon] [datetime] NULL,
	[ngayHenTra] [datetime] NULL,
	[ngayTra] [datetime] NULL,
 CONSTRAINT [PK_Muon_Tra] PRIMARY KEY CLUSTERED 
(
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiMuon]    Script Date: 11/8/2016 9:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiMuon](
	[maDocGia] [nvarchar](50) NOT NULL,
	[tenDocGia] [nvarchar](50) NULL,
	[gioiTinh] [bit] NULL,
	[soDT] [int] NULL,
	[diaChi] [nvarchar](250) NULL,
	[ngayMuon] [datetime] NULL,
 CONSTRAINT [PK_NguoiMuon] PRIMARY KEY CLUSTERED 
(
	[maDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 11/8/2016 9:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[maSach] [nvarchar](50) NOT NULL,
	[tenSach] [nvarchar](250) NULL,
	[namXuatBan] [datetime] NULL,
	[soLuong] [int] NULL,
	[maLoaiSach] [nvarchar](50) NULL,
	[maTacGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 11/8/2016 9:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[maTacGia] [nvarchar](50) NOT NULL,
	[tenTacGia] [nvarchar](50) NULL,
	[diaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[maTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Muon_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Muon_Tra_NguoiMuon] FOREIGN KEY([maDocGia])
REFERENCES [dbo].[NguoiMuon] ([maDocGia])
GO
ALTER TABLE [dbo].[Muon_Tra] CHECK CONSTRAINT [FK_Muon_Tra_NguoiMuon]
GO
ALTER TABLE [dbo].[Muon_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Muon_Tra_Sach] FOREIGN KEY([maSach])
REFERENCES [dbo].[Sach] ([maSach])
GO
ALTER TABLE [dbo].[Muon_Tra] CHECK CONSTRAINT [FK_Muon_Tra_Sach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_LoaiSach] FOREIGN KEY([maLoaiSach])
REFERENCES [dbo].[LoaiSach] ([maLoaiSach])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_LoaiSach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([maTacGia])
REFERENCES [dbo].[TacGia] ([maTacGia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
USE [master]
GO
ALTER DATABASE [qlThuVien] SET  READ_WRITE 
GO
