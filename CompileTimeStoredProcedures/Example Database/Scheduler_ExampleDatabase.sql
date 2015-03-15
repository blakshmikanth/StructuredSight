USE [master]
GO

/****** Object:  Database [Scheduler]    Script Date: 3/15/2015 4:55:00 PM ******/
CREATE DATABASE [Scheduler]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Scheduler', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Scheduler.mdf' , SIZE = 16384KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Scheduler_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Scheduler_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Scheduler] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Scheduler].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Scheduler] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Scheduler] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Scheduler] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Scheduler] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Scheduler] SET ARITHABORT OFF 
GO

ALTER DATABASE [Scheduler] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Scheduler] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [Scheduler] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Scheduler] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Scheduler] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Scheduler] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Scheduler] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Scheduler] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Scheduler] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Scheduler] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Scheduler] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Scheduler] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Scheduler] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Scheduler] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Scheduler] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Scheduler] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Scheduler] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Scheduler] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Scheduler] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Scheduler] SET  MULTI_USER 
GO

ALTER DATABASE [Scheduler] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Scheduler] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Scheduler] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Scheduler] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Scheduler] SET  READ_WRITE 
GO

