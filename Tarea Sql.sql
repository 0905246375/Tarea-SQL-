USE [master]
GO
/****** Object:  Database [UMG]    Script Date: 2/04/2025 20:34:51 ******/
CREATE DATABASE [UMG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UMG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\UMG.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UMG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\UMG_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UMG] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UMG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UMG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UMG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UMG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UMG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UMG] SET ARITHABORT OFF 
GO
ALTER DATABASE [UMG] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [UMG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UMG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UMG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UMG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UMG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UMG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UMG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UMG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UMG] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UMG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UMG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UMG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UMG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UMG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UMG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UMG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UMG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UMG] SET  MULTI_USER 
GO
ALTER DATABASE [UMG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UMG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UMG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UMG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UMG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UMG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [UMG] SET QUERY_STORE = ON
GO
ALTER DATABASE [UMG] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [UMG]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 2/04/2025 20:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencia](
	[id_Asistencia] [int] IDENTITY(1,1) NOT NULL,
	[Correlativo] [char](2) NOT NULL,
	[Carnet] [varchar](20) NOT NULL,
	[Asistio] [char](1) NOT NULL,
	[Falto] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotasF]    Script Date: 2/04/2025 20:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotasF](
	[id_nota] [int] IDENTITY(1,1) NOT NULL,
	[Carnet] [varchar](20) NOT NULL,
	[nota1] [int] NOT NULL,
	[nota2] [int] NOT NULL,
	[nota3] [int] NOT NULL,
	[nota4] [int] NOT NULL,
	[notaF]  AS ((([nota1]+[nota2])+[nota3])+[nota4]) PERSISTED,
PRIMARY KEY CLUSTERED 
(
	[id_nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tareas]    Script Date: 2/04/2025 20:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tareas](
	[id_tarea] [int] IDENTITY(1,1) NOT NULL,
	[Carnet] [varchar](20) NOT NULL,
	[nota1] [int] NOT NULL,
	[nota2] [int] NOT NULL,
	[nota3] [int] NOT NULL,
	[nota4] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tb_alumnos]    Script Date: 2/04/2025 20:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_alumnos](
	[carnet] [varchar](20) NOT NULL,
	[Estudiante] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[seccion] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asistencia] ON 

INSERT [dbo].[Asistencia] ([id_Asistencia], [Correlativo], [Carnet], [Asistio], [Falto]) VALUES (5, N'2 ', N'09057846', N'S', N'N ')
INSERT [dbo].[Asistencia] ([id_Asistencia], [Correlativo], [Carnet], [Asistio], [Falto]) VALUES (6, N'3 ', N'09054696', N'S', N'N ')
INSERT [dbo].[Asistencia] ([id_Asistencia], [Correlativo], [Carnet], [Asistio], [Falto]) VALUES (7, N'4 ', N'09054698', N'S', N'N ')
INSERT [dbo].[Asistencia] ([id_Asistencia], [Correlativo], [Carnet], [Asistio], [Falto]) VALUES (8, N'5 ', N'09054656', N'S', N'N ')
SET IDENTITY_INSERT [dbo].[Asistencia] OFF
GO
SET IDENTITY_INSERT [dbo].[NotasF] ON 

INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (3, N'0905-10-1279', 60, 70, 80, 90)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (4, N'0905-15-9622', 60, 70, 80, 90)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (5, N'0905-15-14297', 71, 56, 34, 90)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (6, N'0905-18-4689', 89, 23, 90, 28)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (7, N'0905-19-6478', 64, 42, 20, 85)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (8, N'0905-20-5562', 41, 26, 13, 19)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (9, N'0905-22-5811', 67, 36, 67, 15)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (10, N'0905-23-796', 36, 61, 81, 29)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (11, N'0905-23-18976', 46, 91, 65, 30)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (12, N'0905-24-1925', 63, 48, 67, 94)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (13, N'0905-24-2654', 64, 46, 98, 66)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (14, N'0905-24-3068', 30, 62, 34, 50)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (15, N'0905-24-3086', 29, 55, 77, 79)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (16, N'0905-24-3576', 97, 90, 46, 85)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (17, N'0905-24-4847', 58, 74, 47, 75)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (18, N'0905-24-5045', 96, 52, 80, 72)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (19, N'0905-24-5051', 35, 91, 16, 68)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (20, N'0905-24-5388', 93, 55, 87, 81)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (21, N'0905-24-5462', 87, 52, 18, 37)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (22, N'0905-24-6263', 42, 63, 87, 98)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (23, N'0905-24-6339', 30, 66, 23, 88)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (24, N'0905-24-6375', 50, 41, 35, 81)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (25, N'0905-24-6913', 48, 48, 33, 25)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (26, N'0905-24-7000', 48, 88, 68, 91)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (27, N'0905-24-7010', 66, 24, 45, 49)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (28, N'0905-24-7370', 13, 15, 30, 28)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (29, N'0905-24-7854', 11, 36, 51, 13)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (30, N'0905-24-8364', 33, 73, 24, 51)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (31, N'0905-24-9756', 57, 19, 26, 39)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (32, N'0905-24-11747', 71, 50, 29, 46)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (33, N'0905-24-16186', 89, 61, 42, 46)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (34, N'0905-24-19556', 70, 84, 83, 18)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (35, N'0905-24-21379', 21, 74, 33, 92)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (36, N'0905-24-22482', 23, 76, 76, 89)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (37, N'0905-24-22750', 23, 55, 87, 65)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (38, N'0905-24-23552', 68, 51, 42, 54)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (39, N'0905-17-20273', 41, 49, 34, 57)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (40, N'0905-21-4966', 52, 19, 52, 92)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (41, N'0905-21-9650', 95, 41, 48, 44)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (42, N'0905-22-1146', 30, 25, 67, 11)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (43, N'0905-22-7933', 27, 58, 62, 80)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (44, N'0905-22-9918', 86, 40, 40, 11)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (45, N'0905-22-11274', 95, 67, 60, 73)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (46, N'0905-23-302', 26, 29, 10, 92)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (47, N'0905-23-2991', 67, 82, 97, 89)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (48, N'0905-23-13800', 79, 27, 27, 76)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (49, N'0905-23-15220', 22, 34, 20, 25)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (50, N'0905-23-15654', 54, 46, 24, 27)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (51, N'0905-23-20562', 87, 73, 33, 46)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (52, N'0905-24-1631', 43, 10, 29, 28)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (53, N'0905-24-1699', 82, 22, 31, 11)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (54, N'0905-24-4036', 41, 58, 64, 56)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (55, N'0905-24-6495', 50, 36, 44, 55)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (56, N'0905-24-6503', 25, 47, 41, 10)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (57, N'0905-24-10033', 50, 55, 76, 62)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (58, N'0905-24-10061', 50, 13, 94, 68)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (59, N'0905-24-10433', 30, 57, 93, 54)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (60, N'0905-24-11709', 69, 95, 69, 62)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (61, N'0905-24-12088', 41, 70, 51, 95)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (62, N'0905-24-12697', 94, 15, 82, 86)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (63, N'0905-24-13926', 21, 67, 16, 46)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (64, N'0905-24-14875', 11, 43, 50, 34)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (65, N'0905-24-15036', 57, 29, 97, 99)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (66, N'0905-24-15384', 79, 24, 32, 69)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (67, N'0905-24-16058', 94, 81, 60, 47)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (68, N'0905-24-16433', 75, 39, 54, 87)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (69, N'0905-24-17488', 84, 62, 69, 75)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (70, N'0905-24-17495', 62, 95, 55, 16)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (71, N'0905-24-17512', 17, 88, 34, 43)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (72, N'0905-24-17570', 31, 29, 85, 71)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (73, N'0905-24-22282', 60, 19, 71, 62)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (74, N'0905-24-22303', 77, 95, 41, 24)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (75, N'0905-24-24315', 60, 70, 80, 90)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (76, N'0905-10-1279', 60, 70, 80, 90)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (77, N'0905-15-9622', 60, 70, 80, 90)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (78, N'0905-15-14297', 71, 56, 34, 90)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (79, N'0905-18-4689', 89, 23, 90, 28)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (80, N'0905-19-6478', 64, 42, 20, 85)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (81, N'0905-20-5562', 41, 26, 13, 19)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (82, N'0905-22-5811', 67, 36, 67, 15)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (83, N'0905-23-796', 36, 61, 81, 29)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (84, N'0905-23-18976', 46, 91, 65, 30)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (85, N'0905-24-1925', 63, 48, 67, 94)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (86, N'0905-24-2654', 64, 46, 98, 66)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (87, N'0905-24-3068', 30, 62, 34, 50)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (88, N'0905-24-3086', 29, 55, 77, 79)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (89, N'0905-24-3576', 97, 90, 46, 85)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (90, N'0905-24-4847', 58, 74, 47, 75)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (91, N'0905-24-5045', 96, 52, 80, 72)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (92, N'0905-24-5051', 35, 91, 16, 68)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (93, N'0905-24-5388', 93, 55, 87, 81)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (94, N'0905-24-5462', 87, 52, 18, 37)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (95, N'0905-24-6263', 42, 63, 87, 98)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (96, N'0905-24-6339', 30, 66, 23, 88)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (97, N'0905-24-6375', 50, 41, 35, 81)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (98, N'0905-24-6913', 48, 48, 33, 25)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (99, N'0905-24-7000', 48, 88, 68, 91)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (100, N'0905-24-7010', 66, 24, 45, 49)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (101, N'0905-24-7370', 13, 15, 30, 28)
GO
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (102, N'0905-24-7854', 11, 36, 51, 13)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (103, N'0905-24-8364', 33, 73, 24, 51)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (104, N'0905-24-9756', 57, 19, 26, 39)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (105, N'0905-24-11747', 71, 50, 29, 46)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (106, N'0905-24-16186', 89, 61, 42, 46)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (107, N'0905-24-19556', 70, 84, 83, 18)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (108, N'0905-24-21379', 21, 74, 33, 92)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (109, N'0905-24-22482', 23, 76, 76, 89)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (110, N'0905-24-22750', 23, 55, 87, 65)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (111, N'0905-24-23552', 68, 51, 42, 54)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (112, N'0905-17-20273', 41, 49, 34, 57)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (113, N'0905-21-4966', 52, 19, 52, 92)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (114, N'0905-21-9650', 95, 41, 48, 44)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (115, N'0905-22-1146', 30, 25, 67, 11)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (116, N'0905-22-7933', 27, 58, 62, 80)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (117, N'0905-22-9918', 86, 40, 40, 11)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (118, N'0905-22-11274', 95, 67, 60, 73)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (119, N'0905-23-302', 26, 29, 10, 92)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (120, N'0905-23-2991', 67, 82, 97, 89)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (121, N'0905-23-13800', 79, 27, 27, 76)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (122, N'0905-23-15220', 22, 34, 20, 25)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (123, N'0905-23-15654', 54, 46, 24, 27)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (124, N'0905-23-20562', 87, 73, 33, 46)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (125, N'0905-24-1631', 43, 10, 29, 28)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (126, N'0905-24-1699', 82, 22, 31, 11)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (127, N'0905-24-4036', 41, 58, 64, 56)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (128, N'0905-24-6495', 50, 36, 44, 55)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (129, N'0905-24-6503', 25, 47, 41, 10)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (130, N'0905-24-10033', 50, 55, 76, 62)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (131, N'0905-24-10061', 50, 13, 94, 68)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (132, N'0905-24-10433', 30, 57, 93, 54)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (133, N'0905-24-11709', 69, 95, 69, 62)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (134, N'0905-24-12088', 41, 70, 51, 95)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (135, N'0905-24-12697', 94, 15, 82, 86)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (136, N'0905-24-13926', 21, 67, 16, 46)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (137, N'0905-24-14875', 11, 43, 50, 34)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (138, N'0905-24-15036', 57, 29, 97, 99)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (139, N'0905-24-15384', 79, 24, 32, 69)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (140, N'0905-24-16058', 94, 81, 60, 47)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (141, N'0905-24-16433', 75, 39, 54, 87)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (142, N'0905-24-17488', 84, 62, 69, 75)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (143, N'0905-24-17495', 62, 95, 55, 16)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (144, N'0905-24-17512', 17, 88, 34, 43)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (145, N'0905-24-17570', 31, 29, 85, 71)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (146, N'0905-24-22282', 60, 19, 71, 62)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (147, N'0905-24-22303', 77, 95, 41, 24)
INSERT [dbo].[NotasF] ([id_nota], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (148, N'0905-24-24315', 60, 70, 80, 90)
SET IDENTITY_INSERT [dbo].[NotasF] OFF
GO
SET IDENTITY_INSERT [dbo].[tareas] ON 

INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (1, N'0905-10-1279', 81, 67, 82, 81)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (2, N'0905-15-9622', 10, 33, 27, 42)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (3, N'0905-15-14297', 71, 56, 34, 90)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (4, N'0905-18-4689', 89, 23, 90, 28)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (5, N'0905-19-6478', 64, 42, 20, 85)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (6, N'0905-20-5562', 41, 26, 13, 19)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (7, N'0905-22-5811', 67, 36, 67, 15)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (8, N'0905-23-796', 36, 61, 81, 29)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (9, N'0905-23-18976', 46, 91, 65, 30)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (10, N'0905-24-1925', 63, 48, 67, 94)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (11, N'0905-24-2654', 64, 46, 98, 66)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (12, N'0905-24-3068', 30, 62, 34, 50)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (13, N'0905-24-3086', 29, 55, 77, 79)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (14, N'0905-24-3576', 97, 90, 46, 85)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (15, N'0905-24-4847', 58, 74, 47, 75)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (16, N'0905-24-5045', 96, 52, 80, 72)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (17, N'0905-24-5051', 35, 91, 16, 68)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (18, N'0905-24-5388', 93, 55, 87, 81)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (19, N'0905-24-5462', 87, 52, 18, 37)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (20, N'0905-24-6263', 42, 63, 87, 98)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (21, N'0905-24-6339', 30, 66, 23, 88)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (22, N'0905-24-6375', 50, 41, 35, 81)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (23, N'0905-24-6913', 48, 48, 33, 25)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (24, N'0905-24-7000', 48, 88, 68, 91)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (25, N'0905-24-7010', 66, 24, 45, 49)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (26, N'0905-24-7370', 13, 15, 30, 28)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (27, N'0905-24-7854', 11, 36, 51, 13)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (28, N'0905-24-8364', 33, 73, 24, 51)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (29, N'0905-24-9756', 57, 19, 26, 39)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (30, N'0905-24-11747', 71, 50, 29, 46)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (31, N'0905-24-16186', 89, 61, 42, 46)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (32, N'0905-24-19556', 70, 84, 83, 18)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (33, N'0905-24-21379', 21, 74, 33, 92)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (34, N'0905-24-22482', 23, 76, 76, 89)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (35, N'0905-24-22750', 23, 55, 87, 65)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (36, N'0905-24-23552', 68, 51, 42, 54)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (37, N'0905-17-20273', 41, 49, 34, 57)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (38, N'0905-21-4966', 52, 19, 52, 92)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (39, N'0905-21-9650', 95, 41, 48, 44)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (40, N'0905-22-1146', 30, 25, 67, 11)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (41, N'0905-22-7933', 27, 58, 62, 80)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (42, N'0905-22-9918', 86, 40, 40, 11)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (43, N'0905-22-11274', 95, 67, 60, 73)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (44, N'0905-23-302', 26, 29, 10, 92)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (45, N'0905-23-2991', 67, 82, 97, 89)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (46, N'0905-23-13800', 79, 27, 27, 76)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (47, N'0905-23-15220', 22, 34, 20, 25)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (48, N'0905-23-15654', 54, 46, 24, 27)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (49, N'0905-23-20562', 87, 73, 33, 46)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (50, N'0905-24-1631', 43, 10, 29, 28)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (51, N'0905-24-1699', 82, 22, 31, 11)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (52, N'0905-24-4036', 41, 58, 64, 56)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (53, N'0905-24-6495', 50, 36, 44, 55)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (54, N'0905-24-6503', 25, 47, 41, 10)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (55, N'0905-24-10033', 50, 55, 76, 62)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (56, N'0905-24-10061', 50, 13, 94, 68)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (57, N'0905-24-10433', 30, 57, 93, 54)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (58, N'0905-24-11709', 69, 95, 69, 62)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (59, N'0905-24-12088', 41, 70, 51, 95)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (60, N'0905-24-12697', 94, 15, 82, 86)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (61, N'0905-24-13926', 21, 67, 16, 46)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (62, N'0905-24-14875', 11, 43, 50, 34)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (63, N'0905-24-15036', 57, 29, 97, 99)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (64, N'0905-24-15384', 79, 24, 32, 69)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (65, N'0905-24-16058', 94, 81, 60, 47)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (66, N'0905-24-16433', 75, 39, 54, 87)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (67, N'0905-24-17488', 84, 62, 69, 75)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (68, N'0905-24-17495', 62, 95, 55, 16)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (69, N'0905-24-17512', 17, 88, 34, 43)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (70, N'0905-24-17570', 31, 29, 85, 71)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (71, N'0905-24-22282', 60, 19, 71, 62)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (72, N'0905-24-22303', 77, 95, 41, 24)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (73, N'0905-24-24315', 47, 69, 33, 25)
SET IDENTITY_INSERT [dbo].[tareas] OFF
GO
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-10-1279', N'NERY OSBERTO ESQUIVEL PALMA', N'nesquivelp1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-15-14297', N'MARIO DAVID TERETA SAPALUN', N'mteretas@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-15-9622', N'JERY ALEXANDER BARRIENTOS PERAZA', N'jbarrientosp@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-17-20273', N'SERGIO ANDRES CASTELLANOS SARCENO', N'scastellanoss1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-18-4689', N'FERNANDO JOSE VASQUEZ GONZALEZ', N'fvasquezg7@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-19-6478', N'MARVIN ISMAEL RECINOS MAZARIEGOS', N'mrecinosm9@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-20-5562', N'CRISTIAN ALEXANDER CASTILLO CASTILLO', N'ccastilloc10@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-21-4966', N'PABLO ALEXANDER GRIJALVA BARAHONA', N'pgrijalvab@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-21-9650', N'FERNANDO ENRIQUE JOSE NAJERA GODOY', N'fnajerag@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-11274', N'LEYVI LORENA REVOLORIO Y REVOLORIO', N'llorena@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-1146', N'EDUARDO GABRIEL VISONI MORALES', N'evisonim@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-5811', N'MILDRED HANANI PINEDA PINEDA', N'mpinedap3@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-7933', N'JOAQUIN MANUEL ESTUARDO RAMIREZ VEGA', N'jramirezv16@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-9918', N'DAYLY YURISEL ORELLANA ORELLANA', N'dorellanao4@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-13800', N'MARIO JOSE BARRERA LINAREZ', N'mbarreral4@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-15220', N'ABNER JOEL MATEO HERNANDEZ', N'amateroh@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-15654', N'NERY DANIEL VASQUEZ Y VASQUEZ', N'nvasquezy1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-18976', N'CARLOS FERNANDO MELGAR CORADO', N'cmelgarc4@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-20562', N'ODVIN ALEXIS MENDEZ LEMUS', N'omendezl4@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-2991', N'JOSTYN MANRRIQUE GODOY CHINCHILLA', N'jgodoyc15@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-302', N'CRISTIAN OLIVER BATEN ITZEP', N'cbateni1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-796', N'HECTOR LUIS GUSTAVO MELLADO SARCENO', N'hmellados@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-10033', N'LITZI YASMIRA PINEDA CERMENO', N'lpinedac7@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-10061', N'JOSE ALFONSO LINARES MUNOZ', N'jlinaresm3@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-10433', N'JORGE MARIO CANO COBON', N'jcanoc5@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-11709', N'KATHYA SOFIA MELGAR MARROQUIN', N'kmelgarm2@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-11747', N'ANTONY EZEQUIEL PINEDA PINEDA', N'apinedap10@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-12088', N'JEFERSON OSLEE CERMENO PINEDA', N'jcermenop2@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-12697', N'DILENA IRENA GRIJALVA TENAS', N'dgrijalvat1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-13926', N'LEBINSON DAVID GARCIA CASTILLO', N'lgarciac58@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-14875', N'JUAN DANIEL BARRERA OSUNA', N'jbarrerao4@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-15036', N'ANGEL EDUARDO CERMENO GARCIA', N'acermenog@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-15384', N'ANDREA FERNANDA RONQUILLO GODOY', N'aronquillog2@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-16058', N'TANIA ANDREA MIRANDA RAMIREZ', N'tmirandar@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-16186', N'EDGAR EMANUEL VALENZUELA PINTO', N'evalenzuelap4@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-1631', N'ELDER EZEQUIEL PEREZ Y PEREZ', N'eperezy7@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-16433', N'ROBERTSON ALESSANDRO MUNOZ PAREDES', N'rmunozp1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-1699', N'ANDY RENE NAJERA AGUIRRE', N'anajeraa2@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-17488', N'JOSE MARIO ROSALES PALMA', N'jrosalesp16@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-17495', N'RONALD ANTONIO AROCHE SANTOS', N'raroches1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-17512', N'FRANYER NOE CONTRERAS ZEPEDA', N'fcontrerasz@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-17570', N'GEOFREY EMMANUEL FLORIAN ESQUIVEL', N'gfloriane@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-1925', N'JEINER ANDY JOSUE PINEDA CORLETO', N'jpinedac17@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-19556', N'PEDRO JOSE MARROQUIN GONZALEZ', N'pmarroquing5@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-21379', N'DIEGO ANDRES ESCOBAR AGUILAR', N'descobara11@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-22282', N'JHONY ABRAHAM DE LEON PEREZ', N'jdeleonp29@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-22303', N'ARLIN GUISEL CASTILLO CERMENO', N'acastilloc31@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-22482', N'ANGELLO D MARCO ESCOBAR GONZALEZ', N'aescobarg21@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-22750', N'LESTER DAVID PAYES MENDEZ', N'lpayesm@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-23552', N'DEIVID ALBERTO GUERRA CARPIO', N'dguerrac7@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-24315', N'MARIANA ALEJANDRA GARCIA HERNANDEZ', N'mgarciah30@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-2654', N'ERICK MOISES ARTURO SANDOVAL PALMA', N'esandovalp9@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-3068', N'FERNANDO JOSE VEGA GUDIEL', N'fvegag1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-3086', N'JOSE LEONEL CRUZ LOPEZ', N'jcruzl20@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-3576', N'JOSE CARLOS CRUZ FLORIAN', N'jcruzf6@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-4036', N'CELSO GABRIEL SARCENO CORADO', N'csarcenoc1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-4847', N'CRISTIAN JOSUE FLORES PLEITEZ', N'cfloresp5@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-5045', N'MELANY ROSMERY PEREZ ORANTES', N'mperezo37@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-5051', N'ESTALIN ALEJANDRO GODOY CAMPOS', N'egodoyc4@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-5388', N'OSCAR GUILLERMO SANDOVAL GARCIA', N'osandovalg1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-5462', N'JOSUE RAFAEL PEREZ AGUIRRE', N'jpereza62@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6263', N'ADRIANA STEPHANIA LOPEZ LARA', N'alopezl90@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6339', N'JOAN NATALIE CAMILA MARTINEZ REYES', N'jmartinezr30@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6375', N'TAHLY YULIANA JIMENEZ BOTEO', N'tjimenezb@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6495', N'JOSUE DAVID PANIAGUA OLIVARES', N'jpaniaguao@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6503', N'MARIO EDUARDO RIVERA SALGUERO', N'mriveras10@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6913', N'EDWINS JOSUE ARGUETA DUARTE', N'earguetad2@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-7000', N'GERSON LEONEL JIMENEZ GONZALEZ', N'gjimenezg9@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-7010', N'CARLO RENE HERMOGENES RIVERA ESTRADA', N'criverae2@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-7370', N'JOSE CARLOS MORATAYA ENRIQUE', N'jmoratayae1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-7854', N'ARANZA BRIGITTE RUEDA ALVARADO', N'aruedaa@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-8364', N'JUAN LUIS MOLINA ORELLANA', N'jmolinao1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-9756', N'LUIS ANGEL SANTIAGO PALMA', N'lsantiagop1@miumg.edu.gt', N'B')
GO
ALTER TABLE [dbo].[NotasF]  WITH CHECK ADD  CONSTRAINT [FK_NotaF_Tb_alumnos] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Tb_alumnos] ([carnet])
GO
ALTER TABLE [dbo].[NotasF] CHECK CONSTRAINT [FK_NotaF_Tb_alumnos]
GO
ALTER TABLE [dbo].[tareas]  WITH CHECK ADD  CONSTRAINT [FK_tareas_Tb_alumnos] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Tb_alumnos] ([carnet])
GO
ALTER TABLE [dbo].[tareas] CHECK CONSTRAINT [FK_tareas_Tb_alumnos]
GO
USE [master]
GO
ALTER DATABASE [UMG] SET  READ_WRITE 
GO
