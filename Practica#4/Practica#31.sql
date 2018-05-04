USE [Punto_de_Venta]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Suma_compras]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Pagos]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Empleadoos]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[SumaVentas] DROP CONSTRAINT [FK_SumaVentas_Ventas]
GO
ALTER TABLE [dbo].[SumaVentas] DROP CONSTRAINT [FK_SumaVentas_Productos]
GO
ALTER TABLE [dbo].[Suma_compras] DROP CONSTRAINT [FK_Suma_compras_Pagos]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [FK_Proveedores_Productos]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_Suma_compras]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_Productos]
GO
ALTER TABLE [dbo].[Empleadoos] DROP CONSTRAINT [FK_Empleadoos_Direccion]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_Direccion]
GO
/****** Object:  Index [IX_Proveedores]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP INDEX [IX_Proveedores] ON [dbo].[Proveedores]
GO
/****** Object:  Index [IX_Productos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP INDEX [IX_Productos] ON [dbo].[Productos]
GO
/****** Object:  Index [IX_Empleadoos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP INDEX [IX_Empleadoos] ON [dbo].[Empleadoos]
GO
/****** Object:  Index [IX_Clientes]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP INDEX [IX_Clientes] ON [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[SumaVentas]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[SumaVentas]
GO
/****** Object:  Table [dbo].[Suma_compras]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Suma_compras]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Pagos]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Inventario]
GO
/****** Object:  Table [dbo].[Empleadoos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Empleadoos]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP TABLE [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [Punto_de_Venta]    Script Date: 10/03/2018 09:49:25 a.m. ******/
DROP DATABASE [Punto_de_Venta]
GO
/****** Object:  Database [Punto_de_Venta]    Script Date: 10/03/2018 09:49:25 a.m. ******/
CREATE DATABASE [Punto_de_Venta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Punto_de_Venta', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto_de_Venta.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Punto_de_Venta_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto_de_Venta_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/03/2018 09:49:25 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cli] [int] NOT NULL,
	[nombre_cli] [varchar](50) NULL,
	[rfc_cli] [varchar](50) NULL,
	[id_direccion] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 10/03/2018 09:49:25 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direccion](
	[id_direccion] [int] NOT NULL,
	[calle] [varchar](50) NULL,
	[colonia] [varchar](50) NULL,
	[correo] [text] NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleadoos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleadoos](
	[id_emp] [int] NOT NULL,
	[nomb_emp] [varchar](50) NULL,
	[turno_emp] [datetime2](7) NULL,
	[sueldo_emp] [decimal](18, 0) NULL,
	[id_direccion] [int] NULL,
 CONSTRAINT [PK_Empleadoos] PRIMARY KEY CLUSTERED 
(
	[id_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 10/03/2018 09:49:25 a.m. ******/
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
/****** Object:  Table [dbo].[Pagos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[id_pago] [int] NOT NULL,
	[efectivo] [real] NULL,
	[tarjeta_credito] [bigint] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
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
	[descripcion_pro] [text] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id_pro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 10/03/2018 09:49:25 a.m. ******/
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
/****** Object:  Table [dbo].[Suma_compras]    Script Date: 10/03/2018 09:49:25 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suma_compras](
	[id_ventas] [int] NOT NULL,
	[id_productos] [int] NULL,
	[subtotal] [money] NULL,
	[iva] [int] NULL,
	[total] [money] NULL,
	[id_pago] [int] NULL,
 CONSTRAINT [PK_Suma_ventas] PRIMARY KEY CLUSTERED 
(
	[id_ventas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SumaVentas]    Script Date: 10/03/2018 09:49:25 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SumaVentas](
	[id_sumven] [int] NOT NULL,
	[id_pro] [int] NULL,
	[precio_pro] [money] NULL,
 CONSTRAINT [PK_SumaVentas] PRIMARY KEY CLUSTERED 
(
	[id_sumven] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 10/03/2018 09:49:25 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id_ven] [int] NOT NULL,
	[id_cli] [int] NULL,
	[id_sumvent] [int] NULL,
	[id_emp] [int] NULL,
	[costo_venta] [money] NULL,
	[id_pago] [int] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[id_ven] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Clientes]    Script Date: 10/03/2018 09:49:25 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Clientes] ON [dbo].[Clientes]
(
	[nombre_cli] ASC,
	[rfc_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Empleadoos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Empleadoos] ON [dbo].[Empleadoos]
(
	[nomb_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Productos]    Script Date: 10/03/2018 09:49:25 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Productos] ON [dbo].[Productos]
(
	[cb_pro] ASC,
	[nombre_pro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Proveedores]    Script Date: 10/03/2018 09:49:25 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Proveedores] ON [dbo].[Proveedores]
(
	[nom_prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Direccion] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direccion] ([id_direccion])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Direccion]
GO
ALTER TABLE [dbo].[Empleadoos]  WITH CHECK ADD  CONSTRAINT [FK_Empleadoos_Direccion] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direccion] ([id_direccion])
GO
ALTER TABLE [dbo].[Empleadoos] CHECK CONSTRAINT [FK_Empleadoos_Direccion]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Productos] FOREIGN KEY([id_inv])
REFERENCES [dbo].[Productos] ([id_pro])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Productos]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Suma_compras] FOREIGN KEY([id_pro])
REFERENCES [dbo].[Suma_compras] ([id_ventas])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Suma_compras]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Productos] FOREIGN KEY([id_prov])
REFERENCES [dbo].[Productos] ([id_pro])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Productos]
GO
ALTER TABLE [dbo].[Suma_compras]  WITH CHECK ADD  CONSTRAINT [FK_Suma_compras_Pagos] FOREIGN KEY([id_pago])
REFERENCES [dbo].[Pagos] ([id_pago])
GO
ALTER TABLE [dbo].[Suma_compras] CHECK CONSTRAINT [FK_Suma_compras_Pagos]
GO
ALTER TABLE [dbo].[SumaVentas]  WITH CHECK ADD  CONSTRAINT [FK_SumaVentas_Productos] FOREIGN KEY([id_sumven])
REFERENCES [dbo].[Productos] ([id_pro])
GO
ALTER TABLE [dbo].[SumaVentas] CHECK CONSTRAINT [FK_SumaVentas_Productos]
GO
ALTER TABLE [dbo].[SumaVentas]  WITH CHECK ADD  CONSTRAINT [FK_SumaVentas_Ventas] FOREIGN KEY([id_sumven])
REFERENCES [dbo].[Ventas] ([id_ven])
GO
ALTER TABLE [dbo].[SumaVentas] CHECK CONSTRAINT [FK_SumaVentas_Ventas]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([id_ven])
REFERENCES [dbo].[Clientes] ([id_cli])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleadoos] FOREIGN KEY([id_ven])
REFERENCES [dbo].[Empleadoos] ([id_emp])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleadoos]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Pagos] FOREIGN KEY([id_pago])
REFERENCES [dbo].[Pagos] ([id_pago])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Pagos]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Suma_compras] FOREIGN KEY([id_ven])
REFERENCES [dbo].[Suma_compras] ([id_ventas])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Suma_compras]
GO
USE [master]
GO
ALTER DATABASE [Punto_de_Venta] SET  READ_WRITE 
GO
