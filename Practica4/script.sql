USE [Punto_de_Venta]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_TipoPago]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Empleadoos]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Telefonos] DROP CONSTRAINT [FK_Telefonos_TipoTelefonos1]
GO
ALTER TABLE [dbo].[SumaVentas] DROP CONSTRAINT [FK_SumaVentas_Ventas]
GO
ALTER TABLE [dbo].[SumaVentas] DROP CONSTRAINT [FK_SumaVentas_Productos]
GO
ALTER TABLE [dbo].[Suma_compras] DROP CONSTRAINT [FK_Suma_compras_Productos]
GO
ALTER TABLE [dbo].[Suma_compras] DROP CONSTRAINT [FK_Suma_compras_Compras]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [FK_Proveedores_Telefonos]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [FK_Proveedores_RFC1]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [FK_Proveedores_Personas1]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [FK_Proveedores_Direccion1]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_Proveedores]
GO
ALTER TABLE [dbo].[Personas] DROP CONSTRAINT [FK_Personas_TIposPersona]
GO
ALTER TABLE [dbo].[Empleadoos] DROP CONSTRAINT [FK_Empleadoos_Telefonos1]
GO
ALTER TABLE [dbo].[Empleadoos] DROP CONSTRAINT [FK_Empleadoos_Personas1]
GO
ALTER TABLE [dbo].[Empleadoos] DROP CONSTRAINT [FK_Empleadoos_Direccion1]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_Compras_Proveedores]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_Compras_Empleadoos]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_Telefonos2]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_RFC1]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_Personas1]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_Direccion1]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[TipoTelefonos]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[TipoTelefonos]
GO
/****** Object:  Table [dbo].[TIposPersona]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[TIposPersona]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[TipoPago]
GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Telefonos]
GO
/****** Object:  Table [dbo].[SumaVentas]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[SumaVentas]
GO
/****** Object:  Table [dbo].[Suma_compras]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Suma_compras]
GO
/****** Object:  Table [dbo].[RFC]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[RFC]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Empleadoos]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Empleadoos]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Compras]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP TABLE [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [Punto_de_Venta]    Script Date: 05/05/2018 12:03:32 a. m. ******/
DROP DATABASE [Punto_de_Venta]
GO
/****** Object:  Database [Punto_de_Venta]    Script Date: 05/05/2018 12:03:32 a. m. ******/
CREATE DATABASE [Punto_de_Venta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Punto_de_Venta', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto_de_Venta.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Punto_de_Venta_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto_de_Venta_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [Punto_de_Venta] SET AUTO_CLOSE ON 
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
ALTER DATABASE [Punto_de_Venta] SET  ENABLE_BROKER 
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 05/05/2018 12:03:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cli] [uniqueidentifier] NOT NULL,
	[nombre_cli] [varchar](50) NOT NULL,
	[apellido1_cli] [varchar](50) NOT NULL,
	[apellido2_cli] [varchar](50) NOT NULL,
	[id_direccion] [uniqueidentifier] NOT NULL,
	[idPer] [uniqueidentifier] NOT NULL,
	[idTel] [uniqueidentifier] NOT NULL,
	[idRfc] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[id_compra] [uniqueidentifier] NOT NULL,
	[idProv] [uniqueidentifier] NOT NULL,
	[id_emp] [uniqueidentifier] NOT NULL,
	[CostoCompra] [decimal](18, 0) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direccion](
	[id_direccion] [uniqueidentifier] NOT NULL,
	[idPer] [uniqueidentifier] NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[colonia] [varchar](50) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[numInterior] [int] NOT NULL,
	[numExterior] [int] NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleadoos]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleadoos](
	[idPer] [uniqueidentifier] NOT NULL,
	[id_emp] [uniqueidentifier] NOT NULL,
	[id_direccion] [uniqueidentifier] NOT NULL,
	[idTel] [uniqueidentifier] NOT NULL,
	[nomb_emp] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NOT NULL,
	[sexo] [char](10) NOT NULL,
	[turno_emp] [smallint] NOT NULL,
	[sueldo_emp] [decimal](18, 0) NOT NULL,
	[edad] [int] NOT NULL,
	[antiguedad] [decimal](18, 0) NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empleadoos] PRIMARY KEY CLUSTERED 
(
	[id_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[idPer] [uniqueidentifier] NOT NULL,
	[idTipoPersona] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[idPer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[id_pro] [uniqueidentifier] NOT NULL,
	[cb_pro] [bigint] NOT NULL,
	[nombre_pro] [varchar](50) NOT NULL,
	[precio_pro] [decimal](18, 0) NOT NULL,
	[cantMin] [int] NOT NULL,
	[cantMax] [int] NOT NULL,
	[cantActual] [int] NOT NULL,
	[idProv] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id_pro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idPer] [uniqueidentifier] NOT NULL,
	[nom_prov] [varchar](50) NOT NULL,
	[correo] [text] NOT NULL,
	[id_direccion] [uniqueidentifier] NOT NULL,
	[idTel] [uniqueidentifier] NOT NULL,
	[idRfc] [uniqueidentifier] NOT NULL,
	[idProv] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[idProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFC]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RFC](
	[idRfc] [uniqueidentifier] NOT NULL,
	[idPer] [uniqueidentifier] NOT NULL,
	[rfc] [text] NOT NULL,
 CONSTRAINT [PK_RFC] PRIMARY KEY CLUSTERED 
(
	[idRfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suma_compras]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suma_compras](
	[idSumCompras] [uniqueidentifier] NOT NULL,
	[id_pro] [uniqueidentifier] NOT NULL,
	[id_compra] [uniqueidentifier] NOT NULL,
	[horaCompra] [date] NULL,
	[CostoSumCompra] [decimal](18, 0) NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [PK_Suma_compras] PRIMARY KEY CLUSTERED 
(
	[idSumCompras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SumaVentas]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SumaVentas](
	[id_sumven] [uniqueidentifier] NOT NULL,
	[id_pro] [uniqueidentifier] NOT NULL,
	[id_ven] [uniqueidentifier] NOT NULL,
	[costoSuma] [decimal](18, 0) NOT NULL,
	[horaVenta] [date] NOT NULL,
 CONSTRAINT [PK_SumaVentas] PRIMARY KEY CLUSTERED 
(
	[id_sumven] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefonos](
	[idTel] [uniqueidentifier] NOT NULL,
	[idDisp] [uniqueidentifier] NOT NULL,
	[idPer] [uniqueidentifier] NOT NULL,
	[telefono] [bigint] NOT NULL,
 CONSTRAINT [PK_Telefonos] PRIMARY KEY CLUSTERED 
(
	[idTel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPago](
	[idTipoPago] [uniqueidentifier] NOT NULL,
	[tipoPago] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoPago] PRIMARY KEY CLUSTERED 
(
	[idTipoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIposPersona]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIposPersona](
	[idTipoPersona] [uniqueidentifier] NOT NULL,
	[tipoPersona] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TIposPersona] PRIMARY KEY CLUSTERED 
(
	[idTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoTelefonos]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoTelefonos](
	[idDisp] [uniqueidentifier] NOT NULL,
	[nombreDisp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoTelefonos] PRIMARY KEY CLUSTERED 
(
	[idDisp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 05/05/2018 12:03:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id_ven] [uniqueidentifier] NOT NULL,
	[id_cli] [uniqueidentifier] NOT NULL,
	[id_emp] [uniqueidentifier] NOT NULL,
	[idTipoPago] [uniqueidentifier] NOT NULL,
	[costo_venta] [decimal](18, 0) NOT NULL,
	[cantidadProducto] [int] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[id_ven] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'5fbe08ea-ae58-42d8-8386-29afa084c0cf', N'727ac4ff-48ee-43a8-9594-4d011a3947c5', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Independencia', N'acueducto', 354, 234)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'62202373-e915-4b30-86c4-4448402dd505', N'd3e3307f-9791-4a1e-a94c-19a4094aa7b6', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Emiliano Zapata', N'Atalaya', 645, 345)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'0532bdb2-90d8-488e-9bc6-58079e689020', N'd41a5b95-cd39-462a-a86d-fe23bacf499b', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Independencia', N'Mario benedeti', 546, 46)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'14681a9f-8718-4031-98e7-5ffbd92d7956', N'9d32218b-d8d3-4e30-89d4-1e8e5fa0bb5e', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Mirador', N'Benedeti', 456, 345)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'11ba125e-cd0c-4224-ab93-69958e8316f4', N'a9570a25-d619-4fe4-9d58-7f65c07c9a8e', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Emiliano Zapata', N'Aurora', 453, 879)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'a248a76c-4734-4cc5-a92b-b4ba8ba8168e', N'd40a9f0a-201c-4838-84aa-53da5e74f63a', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Del Sol', N'Sendero', 654, 234)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'4adb4427-dbf6-48f8-be94-b8a7f5c5758b', N'39a3870a-78ef-45cd-bd3e-05b2336bbb57', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Del Sol', N'Soledad', 6757, 56)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'eedb0401-11ba-4720-911c-d217b4e4361d', N'ab798184-d9ad-40a0-8f99-2421ea43631b', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Balcones', N'anahuac', 234, 789)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'3cf317c8-1211-416e-9541-e7a4012e7767', N'b589bfb6-930b-4251-bfee-028c52b63ae3', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Mirador', N'Del adoquin', 123, 546)
INSERT [dbo].[Direccion] ([id_direccion], [idPer], [pais], [estado], [ciudad], [colonia], [calle], [numInterior], [numExterior]) VALUES (N'97dcda5a-d8e1-47f8-8748-ecff295a3ea2', N'140af268-7825-4361-a53e-bdfe33d1a1c6', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Balcones', N'Portes Gil', 98, 8765)
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'b589bfb6-930b-4251-bfee-028c52b63ae3', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'39a3870a-78ef-45cd-bd3e-05b2336bbb57', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'd3e3307f-9791-4a1e-a94c-19a4094aa7b6', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'9d32218b-d8d3-4e30-89d4-1e8e5fa0bb5e', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'ab798184-d9ad-40a0-8f99-2421ea43631b', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'abbe58d8-3d53-45c8-acab-3208c197aefa', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'05d35405-99e1-44e1-8dd6-326f25f4642c', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'6a92fc70-1dfc-485a-9162-3329dce33d2b', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'a85ac7e9-0068-4683-9a68-394b09c3ac1f', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'11e5ee4e-a8a8-4667-945c-489657f0e121', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'727ac4ff-48ee-43a8-9594-4d011a3947c5', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'd40a9f0a-201c-4838-84aa-53da5e74f63a', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'affbf5ee-8bec-44a8-8f3e-5862ce755e4e', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'd55d301a-4d8d-4cf8-8b94-6bdecec84416', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'a9570a25-d619-4fe4-9d58-7f65c07c9a8e', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'10b0fc10-e877-4317-8518-858d9cdc645b', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'c2185712-3151-4667-920e-9e8392be3079', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'ccbfc05c-e8fd-418a-9d2b-a1f70a6d21b1', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'bef80f29-ea9d-42de-87df-aa7e0d9d9fbd', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'aedfcb44-0c07-4467-97a3-ab7488c9bf6f', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'0ba99100-6705-433a-9c07-b4d4db8bd881', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'bc9534c6-1c15-495d-ab04-b9cef9803cd1', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'140af268-7825-4361-a53e-bdfe33d1a1c6', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'e90a3d97-cdcf-4008-ac1b-c8ab4280b169', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'42a4ab2c-3ac4-44fd-9941-cc7320f26d98', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'15dc4ca9-9b0b-45f6-bfc5-d0044b2924ab', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'f2a0904d-9a0a-4bbd-93c2-e2db48ecd073', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'e3249640-4109-4bee-858c-e8b499fc6343', N'be2d89ad-1cd2-4de9-abc7-4b00e773c692')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'6a0e6486-7789-488d-89c2-e8d278168de2', N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e')
INSERT [dbo].[Personas] ([idPer], [idTipoPersona]) VALUES (N'd41a5b95-cd39-462a-a86d-fe23bacf499b', N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'dca7fef4-2622-4d84-9e42-03eabf4f781a', N'a9570a25-d619-4fe4-9d58-7f65c07c9a8e', N'JHBG654')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'7b03b497-4ab5-4fef-9f1b-05c9c03f2e67', N'39a3870a-78ef-45cd-bd3e-05b2336bbb57', N'MZ4345')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'0662467a-dfc3-4ec9-9b63-29ea4dade056', N'd40a9f0a-201c-4838-84aa-53da5e74f63a', N'MFGB6545')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'0beb907e-0ef0-451c-b251-5b9efa43e765', N'b589bfb6-930b-4251-bfee-028c52b63ae3', N'REWS1242')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'22f6e34b-14be-4c7a-ab76-75755179db80', N'9d32218b-d8d3-4e30-89d4-1e8e5fa0bb5e', N'MTY532')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'ad102f0a-e5ac-4c14-8db5-7b411868a9b0', N'ab798184-d9ad-40a0-8f99-2421ea43631b', N'WERS1442')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'487351fb-8331-4b5c-8640-964f5d2fd959', N'd41a5b95-cd39-462a-a86d-fe23bacf499b', N'ÑLOKJ543')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'540be547-3688-4ca8-bafa-adbdb5598746', N'727ac4ff-48ee-43a8-9594-4d011a3947c5', N'QWER432')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'f6bcadb0-57b7-46b8-911d-b6bce77ce4e1', N'd3e3307f-9791-4a1e-a94c-19a4094aa7b6', N'QEE427')
INSERT [dbo].[RFC] ([idRfc], [idPer], [rfc]) VALUES (N'7e666117-44d9-40ef-bb5c-dc1fbab68ab0', N'140af268-7825-4361-a53e-bdfe33d1a1c6', N'MJNBG7654')
INSERT [dbo].[TIposPersona] ([idTipoPersona], [tipoPersona]) VALUES (N'be2d89ad-1cd2-4de9-abc7-4b00e773c692', N'Empleado')
INSERT [dbo].[TIposPersona] ([idTipoPersona], [tipoPersona]) VALUES (N'3408734f-f6c5-43aa-9c45-ae4c4aab9cc6', N'Provedor')
INSERT [dbo].[TIposPersona] ([idTipoPersona], [tipoPersona]) VALUES (N'dd8f48e9-f0d3-422c-b1b7-ccdba875319e', N'Cliente')
INSERT [dbo].[TipoTelefonos] ([idDisp], [nombreDisp]) VALUES (N'14947840-96dd-4987-8945-7a4dd13e5885', N'Telefono Fijo')
INSERT [dbo].[TipoTelefonos] ([idDisp], [nombreDisp]) VALUES (N'04f70d93-466e-4f9b-85f7-a86bfc2649c2', N'Fax')
INSERT [dbo].[TipoTelefonos] ([idDisp], [nombreDisp]) VALUES (N'e0b8d7dd-efc7-4705-8513-c85c1ca3965f', N'Celular')
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Direccion1] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direccion] ([id_direccion])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Direccion1]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Personas1] FOREIGN KEY([idPer])
REFERENCES [dbo].[Personas] ([idPer])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Personas1]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_RFC1] FOREIGN KEY([idRfc])
REFERENCES [dbo].[RFC] ([idRfc])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_RFC1]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Telefonos2] FOREIGN KEY([idTel])
REFERENCES [dbo].[Telefonos] ([idTel])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Telefonos2]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Empleadoos] FOREIGN KEY([id_emp])
REFERENCES [dbo].[Empleadoos] ([id_emp])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Empleadoos]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Proveedores] FOREIGN KEY([idProv])
REFERENCES [dbo].[Proveedores] ([idProv])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Proveedores]
GO
ALTER TABLE [dbo].[Empleadoos]  WITH CHECK ADD  CONSTRAINT [FK_Empleadoos_Direccion1] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direccion] ([id_direccion])
GO
ALTER TABLE [dbo].[Empleadoos] CHECK CONSTRAINT [FK_Empleadoos_Direccion1]
GO
ALTER TABLE [dbo].[Empleadoos]  WITH CHECK ADD  CONSTRAINT [FK_Empleadoos_Personas1] FOREIGN KEY([idPer])
REFERENCES [dbo].[Personas] ([idPer])
GO
ALTER TABLE [dbo].[Empleadoos] CHECK CONSTRAINT [FK_Empleadoos_Personas1]
GO
ALTER TABLE [dbo].[Empleadoos]  WITH CHECK ADD  CONSTRAINT [FK_Empleadoos_Telefonos1] FOREIGN KEY([idTel])
REFERENCES [dbo].[Telefonos] ([idTel])
GO
ALTER TABLE [dbo].[Empleadoos] CHECK CONSTRAINT [FK_Empleadoos_Telefonos1]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_TIposPersona] FOREIGN KEY([idTipoPersona])
REFERENCES [dbo].[TIposPersona] ([idTipoPersona])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_TIposPersona]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Proveedores] FOREIGN KEY([idProv])
REFERENCES [dbo].[Proveedores] ([idProv])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Proveedores]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Direccion1] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direccion] ([id_direccion])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Direccion1]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Personas1] FOREIGN KEY([idPer])
REFERENCES [dbo].[Personas] ([idPer])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Personas1]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_RFC1] FOREIGN KEY([idRfc])
REFERENCES [dbo].[RFC] ([idRfc])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_RFC1]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Telefonos] FOREIGN KEY([idTel])
REFERENCES [dbo].[Telefonos] ([idTel])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Telefonos]
GO
ALTER TABLE [dbo].[Suma_compras]  WITH CHECK ADD  CONSTRAINT [FK_Suma_compras_Compras] FOREIGN KEY([id_compra])
REFERENCES [dbo].[Compras] ([id_compra])
GO
ALTER TABLE [dbo].[Suma_compras] CHECK CONSTRAINT [FK_Suma_compras_Compras]
GO
ALTER TABLE [dbo].[Suma_compras]  WITH CHECK ADD  CONSTRAINT [FK_Suma_compras_Productos] FOREIGN KEY([id_pro])
REFERENCES [dbo].[Productos] ([id_pro])
GO
ALTER TABLE [dbo].[Suma_compras] CHECK CONSTRAINT [FK_Suma_compras_Productos]
GO
ALTER TABLE [dbo].[SumaVentas]  WITH CHECK ADD  CONSTRAINT [FK_SumaVentas_Productos] FOREIGN KEY([id_pro])
REFERENCES [dbo].[Productos] ([id_pro])
GO
ALTER TABLE [dbo].[SumaVentas] CHECK CONSTRAINT [FK_SumaVentas_Productos]
GO
ALTER TABLE [dbo].[SumaVentas]  WITH CHECK ADD  CONSTRAINT [FK_SumaVentas_Ventas] FOREIGN KEY([id_ven])
REFERENCES [dbo].[Ventas] ([id_ven])
GO
ALTER TABLE [dbo].[SumaVentas] CHECK CONSTRAINT [FK_SumaVentas_Ventas]
GO
ALTER TABLE [dbo].[Telefonos]  WITH CHECK ADD  CONSTRAINT [FK_Telefonos_TipoTelefonos1] FOREIGN KEY([idDisp])
REFERENCES [dbo].[TipoTelefonos] ([idDisp])
GO
ALTER TABLE [dbo].[Telefonos] CHECK CONSTRAINT [FK_Telefonos_TipoTelefonos1]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([id_cli])
REFERENCES [dbo].[Clientes] ([id_cli])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleadoos] FOREIGN KEY([id_emp])
REFERENCES [dbo].[Empleadoos] ([id_emp])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleadoos]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_TipoPago] FOREIGN KEY([idTipoPago])
REFERENCES [dbo].[TipoPago] ([idTipoPago])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_TipoPago]
GO
USE [master]
GO
ALTER DATABASE [Punto_de_Venta] SET  READ_WRITE 
GO
