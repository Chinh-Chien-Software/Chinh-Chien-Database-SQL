USE [master]
GO

/****** Object:  Database [ChinhChien]    Script Date: 23-Apr-22 9:58:08 AM ******/
CREATE DATABASE [ChinhChien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChinhChien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TQK\MSSQL\DATA\ChinhChien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChinhChien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TQK\MSSQL\DATA\ChinhChien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChinhChien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ChinhChien] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ChinhChien] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ChinhChien] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ChinhChien] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ChinhChien] SET ARITHABORT OFF 
GO

ALTER DATABASE [ChinhChien] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ChinhChien] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ChinhChien] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ChinhChien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ChinhChien] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ChinhChien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ChinhChien] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ChinhChien] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ChinhChien] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ChinhChien] SET  ENABLE_BROKER 
GO

ALTER DATABASE [ChinhChien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ChinhChien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ChinhChien] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ChinhChien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ChinhChien] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ChinhChien] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ChinhChien] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ChinhChien] SET RECOVERY FULL 
GO

ALTER DATABASE [ChinhChien] SET  MULTI_USER 
GO

ALTER DATABASE [ChinhChien] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ChinhChien] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ChinhChien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ChinhChien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ChinhChien] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ChinhChien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [ChinhChien] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ChinhChien] SET  READ_WRITE 
GO

