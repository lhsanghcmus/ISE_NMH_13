USE [master]
GO
/****** Object:  Database [QuanLyHocSinh]    Script Date: 12/30/2018 3:23:49 PM ******/
CREATE DATABASE [QuanLyHocSinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyHocSinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyHocSinh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyHocSinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyHocSinh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLyHocSinh] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyHocSinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyHocSinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyHocSinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyHocSinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyHocSinh] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyHocSinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyHocSinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyHocSinh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyHocSinh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyHocSinh] SET QUERY_STORE = OFF
GO
USE [QuanLyHocSinh]
GO
/****** Object:  Table [dbo].[Assign]    Script Date: 12/30/2018 3:23:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assign](
	[IDTeacher] [varchar](20) NOT NULL,
	[IDSubject] [varchar](10) NOT NULL,
	[nameClass] [varchar](10) NOT NULL,
	[schoolYear] [varchar](9) NOT NULL,
 CONSTRAINT [PK_Assign] PRIMARY KEY CLUSTERED 
(
	[IDTeacher] ASC,
	[IDSubject] ASC,
	[nameClass] ASC,
	[schoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 12/30/2018 3:23:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[nameClass] [varchar](10) NOT NULL,
	[schoolYear] [varchar](9) NOT NULL,
	[IDMaster] [varchar](20) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[nameClass] ASC,
	[schoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mark]    Script Date: 12/30/2018 3:23:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[Semester] [int] NOT NULL,
	[FirstFifteenMinutes] [real] NULL,
	[SecondFifteenMinutes] [real] NULL,
	[ThirdFifteenMinutes] [real] NULL,
	[FirstFortyFiveMinutes] [real] NULL,
	[SecondFortyFiveMinutes] [real] NULL,
	[ThirdFortyFiveMinutes] [real] NULL,
	[SemesterMark] [real] NULL,
	[IDStudent] [varchar](20) NOT NULL,
	[IDSubject] [varchar](10) NOT NULL,
	[nameClass] [varchar](10) NOT NULL,
	[schoolYear] [varchar](9) NOT NULL,
 CONSTRAINT [PK_Mark_1] PRIMARY KEY CLUSTERED 
(
	[Semester] ASC,
	[IDStudent] ASC,
	[IDSubject] ASC,
	[nameClass] ASC,
	[schoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/30/2018 3:23:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[IDStudent] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [varchar](6) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[BirthDay] [date] NULL,
	[PassWord] [varchar](50) NULL,
	[isActive] [char](1) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Class]    Script Date: 12/30/2018 3:23:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Class](
	[IDStudent] [varchar](20) NOT NULL,
	[nameClass] [varchar](10) NOT NULL,
	[schoolYear] [varchar](9) NOT NULL,
 CONSTRAINT [PK_Student_Class] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC,
	[nameClass] ASC,
	[schoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 12/30/2018 3:23:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[IDSubject] [varchar](10) NOT NULL,
	[NameSubject] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[IDSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 12/30/2018 3:23:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[IDTeacher] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [varchar](6) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[BirthDay] [date] NULL,
	[PassWord] [varchar](50) NULL,
	[TypeTeacher] [varchar](5) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[IDTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Subject]    Script Date: 12/30/2018 3:23:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Subject](
	[IDTeacher] [varchar](20) NOT NULL,
	[IDSubject] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Teacher_Subject] PRIMARY KEY CLUSTERED 
(
	[IDTeacher] ASC,
	[IDSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'MATH', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'MATH', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV001', N'MATH', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'MATH', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'MATH', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV002', N'MATH', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'MATH', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'MATH', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV003', N'MATH', N'12A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'NV', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'NV', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV004', N'NV', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'NV', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'NV', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV005', N'NV', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'NV', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'NV', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV006', N'NV', N'12A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'AV', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'AV', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV007', N'AV', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'AV', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'AV', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV008', N'AV', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'AV', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'AV', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV009', N'AV', N'12A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV010', N'SH', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV010', N'SH', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV010', N'SH', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV011', N'SH', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV011', N'SH', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV011', N'SH', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV012', N'SH', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV012', N'SH', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV012', N'SH', N'12A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV013', N'CN', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV013', N'CN', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV013', N'CN', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV014', N'CN', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV014', N'CN', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV014', N'CN', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV015', N'CN', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV015', N'CN', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV015', N'CN', N'12A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV016', N'LS', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV016', N'LS', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV016', N'LS', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV017', N'LS', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV017', N'LS', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV017', N'LS', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV018', N'LS', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV018', N'LS', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV018', N'LS', N'12A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV019', N'DL', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV019', N'DL', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV019', N'DL', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV020', N'DL', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV020', N'DL', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV020', N'DL', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV022', N'GDCD', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV022', N'GDCD', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV022', N'GDCD', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV023', N'GDCD', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV023', N'GDCD', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV023', N'GDCD', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV024', N'GDCD', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV024', N'GDCD', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV024', N'GDCD', N'12A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV025', N'GDQP', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV025', N'GDQP', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV025', N'GDQP', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV026', N'GDQP', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV026', N'GDQP', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV026', N'GDQP', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV027', N'GDQP', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV027', N'GDQP', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV027', N'GDQP', N'12A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV028', N'TH', N'10A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV028', N'TH', N'11A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV028', N'TH', N'12A1', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV029', N'TH', N'10A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV029', N'TH', N'11A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV029', N'TH', N'12A2', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV030', N'TH', N'10A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV030', N'TH', N'11A3', N'2018-2019')
INSERT [dbo].[Assign] ([IDTeacher], [IDSubject], [nameClass], [schoolYear]) VALUES (N'GV030', N'TH', N'12A3', N'2018-2019')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'10A1', N'2018-2019', N'GV001')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'10A2', N'2018-2019', N'GV002')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'10A3', N'2018-2019', N'GV003')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'11A1', N'2018-2019', N'GV004')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'11A2', N'2018-2019', N'GV005')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'11A3', N'2018-2019', N'GV006')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'12A1', N'2018-2019', N'GV007')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'12A2', N'2018-2019', N'GV008')
INSERT [dbo].[Class] ([nameClass], [schoolYear], [IDMaster]) VALUES (N'12A3', N'2018-2019', N'GV009')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, NULL, 9, 9, 4, 3, 8, 10, N'HS001', N'AV', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 10, 8, 9, 5, 8, 10, 10, N'HS001', N'CN', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 8, 9, 10, 8, 7, 5, 8, N'HS001', N'DL', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 10, 9.5, 10, 10, 10, 10, 10, N'HS001', N'GDCD', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 10, 8, 7, 5, 9, 10, 1, N'HS001', N'GDQP', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 8, 7, 6, 9, 8, 1, 4, N'HS001', N'LS', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 10, 8, 7, 6, 8, 9, 8, N'HS001', N'MATH', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 8, 6, 5, 7, 3, 9, 7, N'HS001', N'NV', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 10, 9, 8, 7, 6, 5, 4, N'HS001', N'SH', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (1, 10, 10, 10, 10, 9, 10, 10, N'HS001', N'TH', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 7, 8, 7, 6, 10, 10, 10, N'HS001', N'AV', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 9, 8, 10, 9, 7, 6, 10, N'HS001', N'CN', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 10, 10, 10, 10, 10, 10, 10, N'HS001', N'DL', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 10, 10, 10, 10, 10, 10, 10, N'HS001', N'GDCD', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 10, 9, 10, 9, 9, 9, 9, N'HS001', N'GDQP', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 10, 10, 10, 10, 10, 10, 10, N'HS001', N'LS', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 10, 10, 10, 10, 10, 9, 10, N'HS001', N'MATH', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 9, 10, 9, 10, 9, 10, 8, N'HS001', N'NV', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 10, 9, 8, 7, 10, 10, 10, N'HS001', N'SH', N'10A1', N'2018-2019')
INSERT [dbo].[Mark] ([Semester], [FirstFifteenMinutes], [SecondFifteenMinutes], [ThirdFifteenMinutes], [FirstFortyFiveMinutes], [SecondFortyFiveMinutes], [ThirdFortyFiveMinutes], [SemesterMark], [IDStudent], [IDSubject], [nameClass], [schoolYear]) VALUES (2, 10, 9, 9, 10, 9, 8, 7, N'HS001', N'TH', N'10A1', N'2018-2019')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS001', N'Lê Tường Qui', N'Male', N'ltqui@gmail.com', N'0921921219', CAST(N'2003-12-15' AS Date), N'HS001', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS002', N'Trần Ngọc Quang', N'Male', N'tnquang@gmail.com', N'0347651516', CAST(N'2003-08-15' AS Date), N'HS002', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS003', N'Nguyễn Thùy Nhiên', N'Female', N'ntnhien@gmail.com', N'0347456516', CAST(N'2003-12-28' AS Date), N'HS003', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS004', N'Nguyễn Hoàng Sang', N'Male', N'nhsang@gmail.com', N'0123987789', CAST(N'2003-08-15' AS Date), N'HS004', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS005', N'Trần Ngọc Quốc', N'Male', N'tnquoc@gmail.com', N'0378918891', CAST(N'2003-07-15' AS Date), N'HS005', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS006', N'Lý Quốc Thông', N'Male', N'lqthong@gmail.com', N'0376866115', CAST(N'2003-05-25' AS Date), N'HS006', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS007', N'Nguyễn Trương Quang', N'Male', N'ntquang@gmail.com', N'0917871217', CAST(N'2003-06-30' AS Date), N'HS007', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS008', N'Trần Trung Dũng', N'Male', N'ttdung@gmail.com', N'0921875578', CAST(N'2003-07-30' AS Date), N'HS008', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS009', N'Phạm Quốc Tín', N'Male', N'pqtin@gmail.com', N'0345789115', CAST(N'2003-12-31' AS Date), N'HS009', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS010', N'Nguyễn Quang Sang', N'Male', N'nqsang@gmail.com', N'0913875413', CAST(N'2002-07-15' AS Date), N'HS010', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS011', N'Nguyễn Quang Phú', N'Male', N'nqphu@gmail.com', N'0869851743', CAST(N'2002-08-04' AS Date), N'HS011', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS012', N'Đặng Minh Quân', N'Male', N'dmquan@gmail.com', N'0917815523', CAST(N'2002-05-17' AS Date), N'HS012', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS013', N'Bùi Huy Hoàng', N'Male', N'bhhoang@gmail.com', N'0379156651', CAST(N'2002-04-30' AS Date), N'HS013', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS014', N'Đặng Huyền Trâm', N'Female', N'dhtram@gmail.com', N'0869215521', CAST(N'2002-01-12' AS Date), N'HS014', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS015', N'Nguyễn Đỗ Cát Trân', N'Female', N'ndctran@gmail.com', N'0869215687', CAST(N'2002-01-12' AS Date), N'HS015', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS016', N'Nguyễn Thị Thu Quyền', N'Female', N'nttquyen@gmail.com', N'0837215987', CAST(N'2001-05-18' AS Date), N'HS016', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS017', N'Đỗ Hồng Phúc', N'Male', N'dhphuc@gmail.com', N'0971256654', CAST(N'2001-03-18' AS Date), N'HS017', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS018', N'Châu Hoàng Phúc', N'Male', N'chphuc@gmail.com', N'0123978588', CAST(N'2001-03-08' AS Date), N'HS018', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS019', N'Nguyễn Văn Phước', N'Male', N'nvphuoc@gmail.com', N'0913851123', CAST(N'2001-03-09' AS Date), N'HS019', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS020', N'Trương Hổ Phong', N'Male', N'thphong@gmail.com', N'0123546872', CAST(N'2001-03-10' AS Date), N'HS020', N'T')
INSERT [dbo].[Student] ([IDStudent], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [isActive]) VALUES (N'HS021', N'Phan Quốc Phong', N'Male', N'pqphong@gmail.com', N'0988215618', CAST(N'2001-03-11' AS Date), N'HS021', N'T')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS001', N'10A1', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS002', N'10A1', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS003', N'10A1', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS004', N'10A2', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS005', N'10A2', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS006', N'10A2', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS007', N'10A3', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS008', N'10A3', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS009', N'10A3', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS010', N'11A1', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS011', N'11A1', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS012', N'11A2', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS013', N'11A2', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS014', N'11A3', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS015', N'11A3', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS016', N'12A1', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS017', N'12A1', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS018', N'12A2', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS019', N'12A2', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS020', N'12A3', N'2018-2019')
INSERT [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear]) VALUES (N'HS021', N'12A3', N'2018-2019')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'AV', N'English')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'CN', N'Technology')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'DL', N'Geography')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'GDCD', N'Civic Education')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'GDQP', N'Defense Education')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'LS', N'History')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'MATH', N'Math')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'NV', N'Literature')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'SH', N'Biology')
INSERT [dbo].[Subject] ([IDSubject], [NameSubject]) VALUES (N'TH', N'Information Technology')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV001', N'Trần Hồng Quân', N'Male', N'thquan@gmail.com', N'0123456789', CAST(N'1990-08-06' AS Date), N'GV001', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV002', N'Võ Hoàng Hà', N'Female', N'vhha@gmail.com', N'0123456789', CAST(N'1990-12-20' AS Date), N'GV002', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV003', N'Võ Huy Hoàng', N'Female', N'vhhoang@gmail.com', N'0123456987', CAST(N'1989-11-12' AS Date), N'GV003', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV004', N'Nguyễn Văn Lựu', N'Male', N'ngluu@gmail.com', N'0123654589', CAST(N'1990-04-03' AS Date), N'GV004', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV005', N'Trần Thanh Quang', N'Male', N'ttquang@gmail.com', N'0123546879', CAST(N'1989-11-01' AS Date), N'GV005', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV006', N'Nguyễn Văn Hải', N'Male', N'nvhai@gmail.com', N'0123654888', CAST(N'1998-08-10' AS Date), N'GV006', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV007', N'Trần Thanh Tâm', N'Male', N'tttam@gmail.com', N'0123456789', CAST(N'1988-06-05' AS Date), N'GV007', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV008', N'Đào Xuân Tâm', N'Female', N'dxtam@gmail.com', N'0979211112', CAST(N'1988-03-04' AS Date), N'GV008', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV009', N'Nguyễn Quang Hải', N'Male', N'nqhai@gmail.com', N'0163237545', CAST(N'1987-05-09' AS Date), N'GV009', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV010', N'Nguyễn Ngọc Ánh', N'Female', N'nnanh@gmail.com', N'0122789987', CAST(N'1988-05-05' AS Date), N'GV010', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV011', N'Trần Quang Trung', N'Male', N'tqtrung@gmail.com', N'0122788788', CAST(N'1986-08-12' AS Date), N'GV011', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV012', N'Đào Thị Yến', N'Female', N'dtyen@gmail.com', N'0979213312', CAST(N'1986-08-15' AS Date), N'GV012', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV013', N'Võ Diệu Linh', N'Female', N'vdlinh@gmail.com', N'0916333355', CAST(N'1990-06-15' AS Date), N'GV013', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV014', N'Nguyễn Quang Thanh', N'Male', N'nqthanh@gmail.com', N'0917236845', CAST(N'1990-10-15' AS Date), N'GV014', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV015', N'Trần Ngọc Linh', N'Female', N'tnlinh@gmail.com', N'0123987443', CAST(N'1989-10-12' AS Date), N'GV015', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV016', N'Cao Tiến Toàn', N'Male', N'cttoan@gmail.com', N'0919236632', CAST(N'1990-08-10' AS Date), N'GV016', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV017', N'Nguyễn Mạnh Hùng', N'Male', N'nmhung@gmail.com', N'0913866113', CAST(N'1992-06-15' AS Date), N'GV017', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV018', N'Trần Thị Ái Liên', N'Female', N'ttalien@gmail.com', N'0917577866', CAST(N'1992-04-03' AS Date), N'GV018', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV019', N'Trần Thị Thanh Hằng', N'Female', N'ttthang@gmail.com', N'0349277630', CAST(N'1993-05-18' AS Date), N'GV019', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV020', N'Trần Đặng Thanh Tâm', N'Female', N'ttttam@gmail.com', N'0359421612', CAST(N'1990-08-09' AS Date), N'GV020', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV021', N'Nguyễn Quang Nghĩa', N'Male', N'nqnghia@gmail.com', N'0987250943', CAST(N'1989-05-23' AS Date), N'GV021', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV022', N'Trần Thanh Đức Male', N'Male', N'ttduc@gmail.com', N'0910817718', CAST(N'1993-02-15' AS Date), N'GV022', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV023', N'Vũ Thị Yến', N'Female', N'vtyen@gmail.com', N'0918865210', CAST(N'1994-04-20' AS Date), N'GV023', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV024', N'Trần Huy Hoàng', N'Male', N'thhoang@gmail.com', N'0983866733', CAST(N'1990-05-28' AS Date), N'GV024', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV025', N'Trần Quốc Tuấn', N'Male', N'tqtuan@gmail.com', N'0376413314', CAST(N'1990-05-16' AS Date), N'GV025', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV026', N'Trịnh Ngọc Duyên', N'Female', N'tnduyen@gmail.com', N'0916868715', CAST(N'1989-05-14' AS Date), N'GV026', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV027', N'Tôn Thất Thiệt', N'Male', N'tthiet@gmail.com', N'0376419283', CAST(N'1992-12-15' AS Date), N'GV027', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV028', N'Trần Ngọc Quang', N'Male', N'tnquang@gmail.com', N'0999218812', CAST(N'1988-06-20' AS Date), N'GV028', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV029', N'Tăng Thanh Thư', N'Female', N'tthu@gmail.com', N'0136278456', CAST(N'1989-05-10' AS Date), N'GV029', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV030', N'Đặng Quốc Huy', N'Male', N'dqhuy@gmail.com', N'0937208165', CAST(N'1990-06-13' AS Date), N'GV030', N'GV')
INSERT [dbo].[Teacher] ([IDTeacher], [Name], [Gender], [Email], [Phone], [BirthDay], [PassWord], [TypeTeacher]) VALUES (N'GV031', N'Trần Thanh Tuấn', N'Male', N'tttuan@gmail.com', N'0913865273', CAST(N'1985-05-12' AS Date), N'GV031', N'PDT')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV001', N'MATH')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV002', N'MATH')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV003', N'MATH')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV004', N'NV')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV005', N'NV')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV006', N'NV')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV007', N'AV')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV008', N'AV')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV009', N'AV')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV010', N'SH')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV011', N'SH')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV012', N'SH')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV013', N'CN')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV014', N'CN')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV015', N'CN')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV016', N'LS')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV017', N'LS')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV018', N'LS')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV019', N'DL')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV020', N'DL')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV021', N'DL')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV022', N'GDCD')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV023', N'GDCD')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV024', N'GDCD')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV025', N'GDQP')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV026', N'GDQP')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV027', N'GDQP')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV028', N'TH')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV029', N'TH')
INSERT [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject]) VALUES (N'GV030', N'TH')
ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Class] FOREIGN KEY([nameClass], [schoolYear])
REFERENCES [dbo].[Class] ([nameClass], [schoolYear])
GO
ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_Class]
GO
ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Teacher_Subject] FOREIGN KEY([IDTeacher], [IDSubject])
REFERENCES [dbo].[Teacher_Subject] ([IDTeacher], [IDSubject])
GO
ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_Teacher_Subject]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Teacher] FOREIGN KEY([IDMaster])
REFERENCES [dbo].[Teacher] ([IDTeacher])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Teacher]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Student_Class] FOREIGN KEY([IDStudent], [nameClass], [schoolYear])
REFERENCES [dbo].[Student_Class] ([IDStudent], [nameClass], [schoolYear])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Student_Class]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Subject] FOREIGN KEY([IDSubject])
REFERENCES [dbo].[Subject] ([IDSubject])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Subject]
GO
ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class_Class] FOREIGN KEY([nameClass], [schoolYear])
REFERENCES [dbo].[Class] ([nameClass], [schoolYear])
GO
ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [FK_Student_Class_Class]
GO
ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([IDStudent])
GO
ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [FK_Student_Class_Student]
GO
ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Subject] FOREIGN KEY([IDSubject])
REFERENCES [dbo].[Subject] ([IDSubject])
GO
ALTER TABLE [dbo].[Teacher_Subject] CHECK CONSTRAINT [FK_Teacher_Subject_Subject]
GO
ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject_Teacher] FOREIGN KEY([IDTeacher])
REFERENCES [dbo].[Teacher] ([IDTeacher])
GO
ALTER TABLE [dbo].[Teacher_Subject] CHECK CONSTRAINT [FK_Teacher_Subject_Teacher]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [CHECK_15_1] CHECK  (([FIRSTFIFTEENMINUTES]>=(0) AND [FIRSTFIFTEENMINUTES]<=(10)))
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [CHECK_15_1]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [CHECK_15_2] CHECK  (([SECONDFIFTEENMINUTES]>=(0) AND [SECONDFIFTEENMINUTES]<=(10)))
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [CHECK_15_2]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [CHECK_15_3] CHECK  (([THIRDFIFTEENMINUTES]>=(0) AND [THIRDFIFTEENMINUTES]<=(10)))
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [CHECK_15_3]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [CHECK_45_1] CHECK  (([FIRSTFORTYFIVEMINUTES]>=(0) AND [FIRSTFORTYFIVEMINUTES]<=(10)))
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [CHECK_45_1]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [CHECK_45_2] CHECK  (([SECONDFORTYFIVEMINUTES]>=(0) AND [SECONDFORTYFIVEMINUTES]<=(10)))
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [CHECK_45_2]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [CHECK_45_3] CHECK  (([THIRDFORTYFIVEMINUTES]>=(0) AND [THIRDFORTYFIVEMINUTES]<=(10)))
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [CHECK_45_3]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [CHECK_SEMESTER_SCORE] CHECK  (([SEMESTERMARK]>=(0) AND [SEMESTERMARK]<=(10)))
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [CHECK_SEMESTER_SCORE]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CHECK_GENDER_STUDENT] CHECK  (([Gender]='Female' OR [Gender]='Male'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CHECK_GENDER_STUDENT]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [CHECK_GENDER_TEACHER] CHECK  (([Gender]='Female' OR [Gender]='Male'))
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [CHECK_GENDER_TEACHER]
GO
USE [master]
GO
ALTER DATABASE [QuanLyHocSinh] SET  READ_WRITE 
GO
