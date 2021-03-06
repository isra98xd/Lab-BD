USE [Punto_de_Venta]
GO
/****** Object:  Index [IX_Proveedores]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP INDEX [IX_Proveedores] ON [dbo].[Proveedores]
GO
/****** Object:  Index [IX_Productos]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP INDEX [IX_Productos] ON [dbo].[Productos]
GO
/****** Object:  Index [IX_Empleadoos]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP INDEX [IX_Empleadoos] ON [dbo].[Empleadoos]
GO
/****** Object:  Index [IX_Clientes]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP INDEX [IX_Clientes] ON [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP TABLE [dbo].[Inventario]
GO
/****** Object:  Table [dbo].[Empleadoos]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP TABLE [dbo].[Empleadoos]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP TABLE [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [Punto_de_Venta]    Script Date: 02/03/2018 11:56:16 p. m. ******/
DROP DATABASE [Punto_de_Venta]
GO
/****** Object:  Database [Punto_de_Venta]    Script Date: 02/03/2018 11:56:16 p. m. ******/
CREATE DATABASE [Punto_de_Venta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Punto_de_Venta', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto_de_Venta.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Punto_de_Venta_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto_de_Venta_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Punto_de_Venta] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Punto_de_Venta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Punto_de_Venta] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET ARITHABORT OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Punto_de_Venta] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Punto_de_Venta] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Punto_de_Venta] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Punto_de_Venta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Punto_de_Venta] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Punto_de_Venta] SET  MULTI_USER 
GO
ALTER DATABASE [Punto_de_Venta] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Punto_de_Venta] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Punto_de_Venta] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Punto_de_Venta] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Punto_de_Venta]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/03/2018 11:56:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cli] [int] NOT NULL,
	[nombre_cli] [varchar](50) NULL,
	[rfc_cli] [varchar](50) NOT NULL,
	[direccion_cli] [text] NULL,
	[correo_cli] [text] NULL,
	[telefono_cli] [bigint] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleadoos]    Script Date: 02/03/2018 11:56:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleadoos](
	[id_emp] [int] NOT NULL,
	[nomb_emp] [varchar](50) NULL,
	[tel_emp] [bigint] NULL,
	[turno_emp] [datetime2](7) NULL,
	[sueldo_emp] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Empleadoos] PRIMARY KEY CLUSTERED 
(
	[id_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 02/03/2018 11:56:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[id_inv] [int] NOT NULL,
	[cantidad_inv] [int] NULL,
	[id_pro] [int] NULL,
	[cant_Min_pro] [int] NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[id_inv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/03/2018 11:56:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[id_pro] [int] NOT NULL,
	[cb_pro] [bigint] NULL,
	[marca_pro] [varchar](50) NULL,
	[nombre_pro] [varchar](50) NULL,
	[precio_pro] [decimal](18, 0) NULL,
	[descripcion] [text] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id_pro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/03/2018 11:56:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[id_prov] [int] NOT NULL,
	[nom_prov] [varchar](50) NULL,
	[tel_prov] [bigint] NULL,
	[deuda_prov] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[id_prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Clientes]    Script Date: 02/03/2018 11:56:16 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Clientes] ON [dbo].[Clientes]
(
	[nombre_cli] ASC,
	[rfc_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Empleadoos]    Script Date: 02/03/2018 11:56:16 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Empleadoos] ON [dbo].[Empleadoos]
(
	[nomb_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Productos]    Script Date: 02/03/2018 11:56:16 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Productos] ON [dbo].[Productos]
(
	[cb_pro] ASC,
	[nombre_pro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Proveedores]    Script Date: 02/03/2018 11:56:16 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Proveedores] ON [dbo].[Proveedores]
(
	[nom_prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Punto_de_Venta] SET  READ_WRITE 
GO
