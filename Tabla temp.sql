USE [master]
GO
/****** Object:  Database [1 ]    Script Date: 2/04/2025 22:06:10 ******/
CREATE DATABASE [1 ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\1 .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'1 _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\1 _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [1 ] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [1 ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [1 ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [1 ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [1 ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [1 ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [1 ] SET ARITHABORT OFF 
GO
ALTER DATABASE [1 ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [1 ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [1 ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [1 ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [1 ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [1 ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [1 ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [1 ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [1 ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [1 ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [1 ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [1 ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [1 ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [1 ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [1 ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [1 ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [1 ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [1 ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [1 ] SET  MULTI_USER 
GO
ALTER DATABASE [1 ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [1 ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [1 ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [1 ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [1 ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [1 ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [1 ] SET QUERY_STORE = ON
GO
ALTER DATABASE [1 ] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [1 ]
GO
/****** Object:  Table [dbo].[Alumno_temp]    Script Date: 2/04/2025 22:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno_temp](
	[carnet] [varchar](50) NULL,
	[Estudiante] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[seccion] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-10-1279', N'NERY OSBERTO ESQUIVEL PALMA', N'nesquivelp1@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-15-14297', N'MARIO DAVID TERETA SAPALUN', N'mteretas@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-15-9622', N'JERY ALEXANDER BARRIENTOS PERAZA', N'jbarrientosp@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-17-20273', N'SERGIO ANDRES CASTELLANOS SARCENO', N'scastellanoss1@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-18-4689', N'FERNANDO JOSE VASQUEZ GONZALEZ', N'fvasquezg7@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-19-6478', N'MARVIN ISMAEL RECINOS MAZARIEGOS', N'mrecinosm9@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-20-5562', N'CRISTIAN ALEXANDER CASTILLO CASTILLO', N'ccastilloc10@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-21-4966', N'PABLO ALEXANDER GRIJALVA BARAHONA', N'pgrijalvab@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-21-9650', N'FERNANDO ENRIQUE JOSE NAJERA GODOY', N'fnajerag@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-11274', N'LEYVI LORENA REVOLORIO Y REVOLORIO', N'llorena@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-1146', N'EDUARDO GABRIEL VISONI MORALES', N'evisonim@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-5811', N'MILDRED HANANI PINEDA PINEDA', N'mpinedap3@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-7933', N'JOAQUIN MANUEL ESTUARDO RAMIREZ VEGA', N'jramirezv16@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-22-9918', N'DAYLY YURISEL ORELLANA ORELLANA', N'dorellanao4@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-13800', N'MARIO JOSE BARRERA LINAREZ', N'mbarreral4@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-15220', N'ABNER JOEL MATEO HERNANDEZ', N'amateroh@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-15654', N'NERY DANIEL VASQUEZ Y VASQUEZ', N'nvasquezy1@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-18976', N'CARLOS FERNANDO MELGAR CORADO', N'cmelgarc4@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-20562', N'ODVIN ALEXIS MENDEZ LEMUS', N'omendezl4@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-2991', N'JOSTYN MANRRIQUE GODOY CHINCHILLA', N'jgodoyc15@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-302', N'CRISTIAN OLIVER BATEN ITZEP', N'cbateni1@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-23-796', N'HECTOR LUIS GUSTAVO MELLADO SARCENO', N'hmellados@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-10033', N'LITZI YASMIRA PINEDA CERMENO', N'lpinedac7@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-10061', N'JOSE ALFONSO LINARES MUNOZ', N'jlinaresm3@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-10433', N'JORGE MARIO CANO COBON', N'jcanoc5@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-11709', N'KATHYA SOFIA MELGAR MARROQUIN', N'kmelgarm2@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-11747', N'ANTONY EZEQUIEL PINEDA PINEDA', N'apinedap10@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-12088', N'JEFERSON OSLEE CERMENO PINEDA', N'jcermenop2@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-12697', N'DILENA IRENA GRIJALVA TENAS', N'dgrijalvat1@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-13926', N'LEBINSON DAVID GARCIA CASTILLO', N'lgarciac58@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-14875', N'JUAN DANIEL BARRERA OSUNA', N'jbarrerao4@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-15036', N'ANGEL EDUARDO CERMENO GARCIA', N'acermenog@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-15384', N'ANDREA FERNANDA RONQUILLO GODOY', N'aronquillog2@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-16058', N'TANIA ANDREA MIRANDA RAMIREZ', N'tmirandar@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-16186', N'EDGAR EMANUEL VALENZUELA PINTO', N'evalenzuelap4@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-1631', N'ELDER EZEQUIEL PEREZ Y PEREZ', N'eperezy7@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-16433', N'ROBERTSON ALESSANDRO MUNOZ PAREDES', N'rmunozp1@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-1699', N'ANDY RENE NAJERA AGUIRRE', N'anajeraa2@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-17488', N'JOSE MARIO ROSALES PALMA', N'jrosalesp16@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-17495', N'RONALD ANTONIO AROCHE SANTOS', N'raroches1@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-17512', N'FRANYER NOE CONTRERAS ZEPEDA', N'fcontrerasz@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-17570', N'GEOFREY EMMANUEL FLORIAN ESQUIVEL', N'gfloriane@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-1925', N'JEINER ANDY JOSUE PINEDA CORLETO', N'jpinedac17@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-19556', N'PEDRO JOSE MARROQUIN GONZALEZ', N'pmarroquing5@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-21379', N'DIEGO ANDRES ESCOBAR AGUILAR', N'descobara11@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-22282', N'JHONY ABRAHAM DE LEON PEREZ', N'jdeleonp29@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-22303', N'ARLIN GUISEL CASTILLO CERMENO', N'acastilloc31@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-22482', N'ANGELLO D MARCO ESCOBAR GONZALEZ', N'aescobarg21@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-22750', N'LESTER DAVID PAYES MENDEZ', N'lpayesm@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-23552', N'DEIVID ALBERTO GUERRA CARPIO', N'dguerrac7@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-24315', N'MARIANA ALEJANDRA GARCIA HERNANDEZ', N'mgarciah30@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-2654', N'ERICK MOISES ARTURO SANDOVAL PALMA', N'esandovalp9@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-3068', N'FERNANDO JOSE VEGA GUDIEL', N'fvegag1@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-3086', N'JOSE LEONEL CRUZ LOPEZ', N'jcruzl20@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-3576', N'JOSE CARLOS CRUZ FLORIAN', N'jcruzf6@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-4036', N'CELSO GABRIEL SARCENO CORADO', N'csarcenoc1@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-4847', N'CRISTIAN JOSUE FLORES PLEITEZ', N'cfloresp5@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-5045', N'MELANY ROSMERY PEREZ ORANTES', N'mperezo37@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-5051', N'ESTALIN ALEJANDRO GODOY CAMPOS', N'egodoyc4@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-5388', N'OSCAR GUILLERMO SANDOVAL GARCIA', N'osandovalg1@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-5462', N'JOSUE RAFAEL PEREZ AGUIRRE', N'jpereza62@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6263', N'ADRIANA STEPHANIA LOPEZ LARA', N'alopezl90@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6339', N'JOAN NATALIE CAMILA MARTINEZ REYES', N'jmartinezr30@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6375', N'TAHLY YULIANA JIMENEZ BOTEO', N'tjimenezb@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6495', N'JOSUE DAVID PANIAGUA OLIVARES', N'jpaniaguao@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6503', N'MARIO EDUARDO RIVERA SALGUERO', N'mriveras10@miumg.edu.gt', N'A')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-6913', N'EDWINS JOSUE ARGUETA DUARTE', N'earguetad2@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-7000', N'GERSON LEONEL JIMENEZ GONZALEZ', N'gjimenezg9@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-7010', N'CARLO RENE HERMOGENES RIVERA ESTRADA', N'criverae2@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-7370', N'JOSE CARLOS MORATAYA ENRIQUE', N'jmoratayae1@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-7854', N'ARANZA BRIGITTE RUEDA ALVARADO', N'aruedaa@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-8364', N'JUAN LUIS MOLINA ORELLANA', N'jmolinao1@miumg.edu.gt', N'B')
INSERT [dbo].[Alumno_temp] ([carnet], [Estudiante], [email], [seccion]) VALUES (N'0905-24-9756', N'LUIS ANGEL SANTIAGO PALMA', N'lsantiagop1@miumg.edu.gt', N'B')
GO
USE [master]
GO
ALTER DATABASE [1 ] SET  READ_WRITE 
GO
