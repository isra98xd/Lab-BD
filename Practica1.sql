USE [master]
GO
/****** Object:  Database [EstoNoEsPorNo:V]    Script Date: 17/02/2018 10:02:55 a.m. ******/
DROP DATABASE [EstoNoEsPorNo:V]
GO
/****** Object:  Database [EstoNoEsPorNo:V]    Script Date: 17/02/2018 10:02:55 a.m. ******/
CREATE DATABASE [EstoNoEsPorNo:V]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EstoNoEsPorNo_V', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EstoNoEsPorNo_V.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EstoNoEsPorNo_V_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EstoNoEsPorNo_V_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EstoNoEsPorNo:V].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET ARITHABORT OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET RECOVERY FULL 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET  MULTI_USER 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EstoNoEsPorNo:V] SET  READ_WRITE 
GO
