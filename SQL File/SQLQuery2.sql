USE [master]
GO
/****** Object:  Database [ResourceManagement]    Script Date: 3/5/2024 3:24:38 PM ******/
CREATE DATABASE [ResourceManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ResourceManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ResourceManagement.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ResourceManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ResourceManagement_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ResourceManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ResourceManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ResourceManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ResourceManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ResourceManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ResourceManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ResourceManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ResourceManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ResourceManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ResourceManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ResourceManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ResourceManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ResourceManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ResourceManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ResourceManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ResourceManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ResourceManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ResourceManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ResourceManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ResourceManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ResourceManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ResourceManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ResourceManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ResourceManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ResourceManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [ResourceManagement] SET  RESTRICTED_USER 
GO
ALTER DATABASE [ResourceManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ResourceManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ResourceManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ResourceManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ResourceManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ResourceManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ResourceManagement] SET QUERY_STORE = OFF
GO
USE [ResourceManagement]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Depertment_Id] [int] NOT NULL,
	[Employee_Depertment] [varchar](50) NOT NULL,
 CONSTRAINT [PK_depertment] PRIMARY KEY CLUSTERED 
(
	[Depertment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_application]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_application](
	[appno] [varchar](100) NULL,
	[app_date] [date] NULL,
	[Employee_ID] [varchar](100) NULL,
	[Employee_name] [varchar](100) NULL,
	[from_date] [date] NULL,
	[to_date] [date] NULL,
	[leave_type] [varchar](100) NULL,
	[location] [varchar](100) NULL,
	[contact] [varchar](100) NULL,
	[status] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Attendance]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Attendance](
	[Date] [date] NOT NULL,
	[Start_Time] [varchar](50) NOT NULL,
	[End_Time] [varchar](50) NOT NULL,
	[Employee_ID] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_info]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_info](
	[Employee_ID] [varchar](100) NOT NULL,
	[Employee_Name] [varchar](100) NOT NULL,
	[Employee_Address] [varchar](200) NOT NULL,
	[Employee_Mobile] [varchar](20) NOT NULL,
	[Employee_Email] [varchar](50) NOT NULL,
	[Employee_JoinDate] [date] NOT NULL,
	[Employee_Validity] [date] NOT NULL,
	[Employee_Status] [varchar](100) NOT NULL,
	[Employee_Depertment] [varchar](100) NOT NULL,
	[Employee_Password] [varchar](50) NOT NULL,
	[Employee_port] [varchar](50) NULL,
 CONSTRAINT [PK_Employee_info] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_notification]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_notification](
	[appno] [varchar](50) NOT NULL,
	[Employee_ID] [varchar](50) NOT NULL,
	[from_date] [date] NULL,
	[to_date] [date] NULL,
	[leave_type] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[app_date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Salary_info]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Salary_info](
	[Employee_ID] [varchar](100) NOT NULL,
	[Employee_Level] [varbinary](50) NOT NULL,
	[Employee_Salary] [int] NOT NULL,
	[Employee_ManageBy] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Status_Id] [int] NOT NULL,
	[Employee_Status] [varchar](60) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sub]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub](
	[sub1] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee_Salary_info]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_Salary_info_Employee_info] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employee_info] ([Employee_ID])
GO
ALTER TABLE [dbo].[Employee_Salary_info] NOCHECK CONSTRAINT [FK_Employee_Salary_info_Employee_info]
GO
/****** Object:  StoredProcedure [dbo].[SP_V]    Script Date: 3/5/2024 3:24:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_V]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[sub]') AND type in (N'U'))
BEGIN
	create table sub (sub1 varchar(50));
	insert into sub (sub1) values(getdate());
END
else 
BEGIN
insert into sub (sub1) values(getdate());
end

	

END
GO
USE [master]
GO
ALTER DATABASE [ResourceManagement] SET  READ_WRITE 
GO
