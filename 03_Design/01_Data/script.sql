USE [master]
GO
/****** Object:  Database [QuanLyHocSinh]    Script Date: 11/18/2018 6:30:27 PM ******/
CREATE DATABASE [QuanLyHocSinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyHocSinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuanLyHocSinh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyHocSinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuanLyHocSinh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [QuanLyHocSinh] SET RECOVERY FULL 
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
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyHocSinh', N'ON'
GO
ALTER DATABASE [QuanLyHocSinh] SET QUERY_STORE = OFF
GO
USE [QuanLyHocSinh]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QuanLyHocSinh]
GO
/****** Object:  Table [dbo].[Assign]    Script Date: 11/18/2018 6:30:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assign](
	[Class] [varchar](10) NOT NULL,
	[SchoolYear] [varchar](20) NOT NULL,
	[IDTeacher] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Assign_1] PRIMARY KEY CLUSTERED 
(
	[Class] ASC,
	[SchoolYear] ASC,
	[IDTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 11/18/2018 6:30:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Name] [varchar](10) NOT NULL,
	[SchoolYear] [varchar](20) NOT NULL,
	[IDMaster] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Name] ASC,
	[SchoolYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationStudent]    Script Date: 11/18/2018 6:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationStudent](
	[IDStudent] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Class] [varchar](10) NOT NULL,
	[SchoolYear] [varchar](20) NOT NULL,
	[Sex] [varchar](6) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[Birthday] [datetime] NULL,
 CONSTRAINT [PK_InformationStudent] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationTeacher]    Script Date: 11/18/2018 6:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationTeacher](
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[IDTeacher] [varchar](20) NOT NULL,
	[Birthday] [datetime] NULL,
	[Phone] [varchar](11) NULL,
	[Sex] [varchar](6) NULL,
	[IDSubject] [varchar](10) NULL,
 CONSTRAINT [PK_InformationTeacher_1] PRIMARY KEY CLUSTERED 
(
	[IDTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 11/18/2018 6:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[type] [char](2) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mark]    Script Date: 11/18/2018 6:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[IDStudent] [varchar](20) NOT NULL,
	[FifteenMinutes_1] [real] NULL,
	[FifteenMinutes_2] [real] NULL,
	[FifteenMinutes_3] [real] NULL,
	[FortyFiveMinutes_1] [real] NULL,
	[FortyFiveMintues_2] [real] NULL,
	[FortyFiveMinutes_3] [real] NULL,
	[SemesterScore] [real] NULL,
	[Average] [real] NULL,
	[Semester] [int] NOT NULL,
	[SchoolYear] [varchar](20) NOT NULL,
	[IDSubject] [varchar](10) NOT NULL,
	[Class] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Mark_1] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC,
	[Semester] ASC,
	[SchoolYear] ASC,
	[IDSubject] ASC,
	[Class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 11/18/2018 6:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[IDSubject] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[IDSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A1', N'2018-2019', N'GV508')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A1', N'2018-2019', N'GV509')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A1', N'2018-2019', N'GV510')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A2', N'2018-2019', N'GV508')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A2', N'2018-2019', N'GV509')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A2', N'2018-2019', N'GV510')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A3', N'2018-2019', N'GV509')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A3', N'2018-2019', N'GV510')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'10A3', N'2018-2019', N'GV511')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A1', N'2018-2019', N'GV508')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A1', N'2018-2019', N'GV512')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A1', N'2018-2019', N'GV515')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A2', N'2018-2019', N'GV512')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A2', N'2018-2019', N'GV515')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A2', N'2018-2019', N'GV516')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A3', N'2018-2019', N'GV514')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A3', N'2018-2019', N'GV515')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'11A3', N'2018-2019', N'GV516')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A1', N'2018-2019', N'GV514')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A1', N'2018-2019', N'GV516')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A1', N'2018-2019', N'GV518')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A2', N'2018-2019', N'GV511')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A2', N'2018-2019', N'GV514')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A2', N'2018-2019', N'GV518')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A3', N'2018-2019', N'GV511')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A3', N'2018-2019', N'GV512')
INSERT [dbo].[Assign] ([Class], [SchoolYear], [IDTeacher]) VALUES (N'12A3', N'2018-2019', N'GV518')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'10A1', N'2018-2019', N'GV508')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'10A2', N'2018-2019', N'GV509')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'10A3', N'2018-2019', N'GV510')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'11A1', N'2018-2019', N'GV511')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'11A2', N'2018-2019', N'GV512')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'11A3', N'2018-2019', N'GV513')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'12A1', N'2018-2019', N'GV514')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'12A2', N'2018-2019', N'GV515')
INSERT [dbo].[Class] ([Name], [SchoolYear], [IDMaster]) VALUES (N'12A3', N'2018-2019', N'GV516')
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612508', N'1612508', N'10A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612509', N'1612509', N'10A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612510', N'1612510', N'10A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612511', N'1612511', N'10A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612512', NULL, N'10A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612513', NULL, N'10A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612514', NULL, N'10A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612515', NULL, N'10A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612516', NULL, N'10A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612517', NULL, N'11A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612518', NULL, N'11A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612519', NULL, N'11A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612520', NULL, N'11A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612521', NULL, N'11A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612522', NULL, N'11A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612523', NULL, N'11A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612524', NULL, N'11A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612525', NULL, N'11A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612526', NULL, N'12A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612527', NULL, N'12A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612528', NULL, N'12A1', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612529', NULL, N'12A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612530', NULL, N'12A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612531', NULL, N'12A2', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612532', NULL, N'12A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612533', NULL, N'12A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationStudent] ([IDStudent], [Name], [Class], [SchoolYear], [Sex], [Email], [Phone], [Birthday]) VALUES (N'1612534', NULL, N'12A3', N'2018-2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV508', NULL, NULL, NULL, N'NV')
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV509', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV510', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV511', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV512', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV513', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV514', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV515', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV516', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV517', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV518', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV519', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV520', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV521', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV522', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV523', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV524', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV525', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV526', NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationTeacher] ([Name], [Email], [IDTeacher], [Birthday], [Phone], [Sex], [IDSubject]) VALUES (NULL, NULL, N'GV527', NULL, NULL, NULL, NULL)
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612508', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612509', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612510', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612511', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612512', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612513', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612514', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612515', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612516', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612517', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612518', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612519', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612520', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612521', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612522', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612523', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612524', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612525', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612526', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612527', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612528', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612529', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612530', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612531', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612532', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612533', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612534', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612535', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'1612536', N'123456', N'HS')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV508', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV509', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV510', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV511', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV512', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV513', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV514', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV515', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV516', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV517', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV518', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV519', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV520', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV521', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV522', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV523', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV524', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV525', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV526', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV527', N'123456', N'GV')
INSERT [dbo].[Login] ([ID], [password], [type]) VALUES (N'GV528', N'123456', N'GV')
INSERT [dbo].[Mark] ([IDStudent], [FifteenMinutes_1], [FifteenMinutes_2], [FifteenMinutes_3], [FortyFiveMinutes_1], [FortyFiveMintues_2], [FortyFiveMinutes_3], [SemesterScore], [Average], [Semester], [SchoolYear], [IDSubject], [Class]) VALUES (N'1612508', 6, 7, 8, 9, 10, 6, 7, 8, 1, N'2018-2019', N'AV', N'10A1')
INSERT [dbo].[Mark] ([IDStudent], [FifteenMinutes_1], [FifteenMinutes_2], [FifteenMinutes_3], [FortyFiveMinutes_1], [FortyFiveMintues_2], [FortyFiveMinutes_3], [SemesterScore], [Average], [Semester], [SchoolYear], [IDSubject], [Class]) VALUES (N'1612508', 10, 10, 10, 9, 9, 9, 8, 9, 1, N'2018-2019', N'NV', N'10A1')
INSERT [dbo].[Mark] ([IDStudent], [FifteenMinutes_1], [FifteenMinutes_2], [FifteenMinutes_3], [FortyFiveMinutes_1], [FortyFiveMintues_2], [FortyFiveMinutes_3], [SemesterScore], [Average], [Semester], [SchoolYear], [IDSubject], [Class]) VALUES (N'1612508', 10, 9, 8, 7, 6, 5, 4, 3, 1, N'2018-2019', N'TOAN', N'10A1')
INSERT [dbo].[Mark] ([IDStudent], [FifteenMinutes_1], [FifteenMinutes_2], [FifteenMinutes_3], [FortyFiveMinutes_1], [FortyFiveMintues_2], [FortyFiveMinutes_3], [SemesterScore], [Average], [Semester], [SchoolYear], [IDSubject], [Class]) VALUES (N'1612509', 10, 10, 10, 10, 10, 10, 10, 10, 1, N'2018-2019', N'TOAN', N'10A1')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'AV        ', N'English')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'CN        ', N'Technology')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'DL        ', N'Geography')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'GDCD      ', N'Civic Education')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'HH        ', N'Chemistry')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'IT        ', N'IT')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'LS        ', N'History')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'NV        ', N'literature')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'SH        ', N'Biology')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'TD        ', N'Physical Education')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'TOAN      ', N'Math')
INSERT [dbo].[Subject] ([IDSubject], [Name]) VALUES (N'VL        ', N'Physical')
ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Class] FOREIGN KEY([Class], [SchoolYear])
REFERENCES [dbo].[Class] ([Name], [SchoolYear])
GO
ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_Class]
GO
ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_InformationTeacher] FOREIGN KEY([IDTeacher])
REFERENCES [dbo].[InformationTeacher] ([IDTeacher])
GO
ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_InformationTeacher]
GO
ALTER TABLE [dbo].[InformationStudent]  WITH CHECK ADD  CONSTRAINT [FK_InformationStudent_Class] FOREIGN KEY([Class], [SchoolYear])
REFERENCES [dbo].[Class] ([Name], [SchoolYear])
GO
ALTER TABLE [dbo].[InformationStudent] CHECK CONSTRAINT [FK_InformationStudent_Class]
GO
ALTER TABLE [dbo].[InformationStudent]  WITH CHECK ADD  CONSTRAINT [FK_InformationStudent_Login] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Login] ([ID])
GO
ALTER TABLE [dbo].[InformationStudent] CHECK CONSTRAINT [FK_InformationStudent_Login]
GO
ALTER TABLE [dbo].[InformationTeacher]  WITH CHECK ADD  CONSTRAINT [FK_InformationTeacher_Login] FOREIGN KEY([IDTeacher])
REFERENCES [dbo].[Login] ([ID])
GO
ALTER TABLE [dbo].[InformationTeacher] CHECK CONSTRAINT [FK_InformationTeacher_Login]
GO
ALTER TABLE [dbo].[InformationTeacher]  WITH CHECK ADD  CONSTRAINT [FK_InformationTeacher_Subject] FOREIGN KEY([IDSubject])
REFERENCES [dbo].[Subject] ([IDSubject])
GO
ALTER TABLE [dbo].[InformationTeacher] CHECK CONSTRAINT [FK_InformationTeacher_Subject]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Class] FOREIGN KEY([Class], [SchoolYear])
REFERENCES [dbo].[Class] ([Name], [SchoolYear])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Class]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_InformationStudent1] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[InformationStudent] ([IDStudent])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_InformationStudent1]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Subject] FOREIGN KEY([IDSubject])
REFERENCES [dbo].[Subject] ([IDSubject])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Subject]
GO
USE [master]
GO
ALTER DATABASE [QuanLyHocSinh] SET  READ_WRITE 
GO
