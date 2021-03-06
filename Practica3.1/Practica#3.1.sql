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
/****** Object:  Table [dbo].[Ventas]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[TipoTelefonos]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[TipoTelefonos]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[TipoPago]
GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Telefonos]
GO
/****** Object:  Table [dbo].[SumaVentas]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[SumaVentas]
GO
/****** Object:  Table [dbo].[Suma_compras]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Suma_compras]
GO
/****** Object:  Table [dbo].[RFC]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[RFC]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Empleadoos]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Empleadoos]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Compras]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP TABLE [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [Punto_de_Venta]    Script Date: 04/05/2018 03:39:24 p. m. ******/
DROP DATABASE [Punto_de_Venta]
GO
/****** Object:  Database [Punto_de_Venta]    Script Date: 04/05/2018 03:39:24 p. m. ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[Compras]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[Direccion]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[Empleadoos]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[Personas]    Script Date: 04/05/2018 03:39:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personas](
	[idPer] [uniqueidentifier] NOT NULL,
	[TipoPersona] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[idPer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[RFC]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[Suma_compras]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[SumaVentas]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[Telefonos]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[TipoPago]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[TipoTelefonos]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
/****** Object:  Table [dbo].[Ventas]    Script Date: 04/05/2018 03:39:25 p. m. ******/
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
