USE [master]
GO
/****** Object:  Database [Clientes]    Script Date: 30/01/2022 12:56:51 p. m. ******/
CREATE DATABASE [Clientes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Clientes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Clientes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Clientes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Clientes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Clientes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Clientes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Clientes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Clientes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Clientes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Clientes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Clientes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Clientes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Clientes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Clientes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Clientes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Clientes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Clientes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Clientes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Clientes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Clientes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Clientes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Clientes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Clientes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Clientes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Clientes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Clientes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Clientes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Clientes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Clientes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Clientes] SET  MULTI_USER 
GO
ALTER DATABASE [Clientes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Clientes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Clientes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Clientes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Clientes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Clientes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Clientes] SET QUERY_STORE = OFF
GO
USE [Clientes]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 30/01/2022 12:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[codigo] [int] NULL,
	[nombre] [nvarchar](50) NULL,
	[tipodocumento] [nvarchar](50) NULL,
	[numerodocumento] [bigint] NULL,
	[nombrerepresenLegal] [nchar](10) NULL,
	[telefono] [bigint] NULL,
	[email] [nchar](10) NULL,
	[personacontacto] [nchar](10) NULL,
	[valoractivos] [float] NULL,
	[valorpasivos] [float] NULL,
	[valorpatrimonio] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[cliente] ([codigo], [nombre], [tipodocumento], [numerodocumento], [nombrerepresenLegal], [telefono], [email], [personacontacto], [valoractivos], [valorpasivos], [valorpatrimonio]) VALUES (70, N'corregir', N'pasaporte', 54545, N'fff       ', 43434, N'rere      ', N'erer      ', 33, 33, 3433)
GO
INSERT [dbo].[cliente] ([codigo], [nombre], [tipodocumento], [numerodocumento], [nombrerepresenLegal], [telefono], [email], [personacontacto], [valoractivos], [valorpasivos], [valorpatrimonio]) VALUES (31, N'jairoantonio', N'pasaporte', 3208754666, N'dfadfsa   ', 434334, N'dfadfad   ', N'fdafds    ', 350000, 200000, 400000)
GO
INSERT [dbo].[cliente] ([codigo], [nombre], [tipodocumento], [numerodocumento], [nombrerepresenLegal], [telefono], [email], [personacontacto], [valoractivos], [valorpasivos], [valorpatrimonio]) VALUES (9898, N'jairo', N'cedula', 43434, N'jairo     ', 554545, N'gigi      ', N'freddy    ', 5454, 545, 5454)
GO
INSERT [dbo].[cliente] ([codigo], [nombre], [tipodocumento], [numerodocumento], [nombrerepresenLegal], [telefono], [email], [personacontacto], [valoractivos], [valorpasivos], [valorpatrimonio]) VALUES (4545, N'jairoa', N'pasaporte', 454545, N'Edit5     ', 454545, N'Edit7     ', N'Edit8     ', 200000, 100000, 300000)
GO
INSERT [dbo].[cliente] ([codigo], [nombre], [tipodocumento], [numerodocumento], [nombrerepresenLegal], [telefono], [email], [personacontacto], [valoractivos], [valorpasivos], [valorpatrimonio]) VALUES (30, N'nuevo', N'efefef', 34343, N'43434     ', 434, N'43434     ', N'3434      ', 34343, 3434, 3434)
GO
USE [master]
GO
ALTER DATABASE [Clientes] SET  READ_WRITE 
GO
