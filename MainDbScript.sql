USE [master]
GO
/****** Object:  Database [Daugiabuciai]    Script Date: 1/20/2019 6:05:35 PM ******/
CREATE DATABASE [Daugiabuciai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Daugiabuciai', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Daugiabuciai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Daugiabuciai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Daugiabuciai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Daugiabuciai] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Daugiabuciai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Daugiabuciai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Daugiabuciai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Daugiabuciai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Daugiabuciai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Daugiabuciai] SET ARITHABORT OFF 
GO
ALTER DATABASE [Daugiabuciai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Daugiabuciai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Daugiabuciai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Daugiabuciai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Daugiabuciai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Daugiabuciai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Daugiabuciai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Daugiabuciai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Daugiabuciai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Daugiabuciai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Daugiabuciai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Daugiabuciai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Daugiabuciai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Daugiabuciai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Daugiabuciai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Daugiabuciai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Daugiabuciai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Daugiabuciai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Daugiabuciai] SET  MULTI_USER 
GO
ALTER DATABASE [Daugiabuciai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Daugiabuciai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Daugiabuciai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Daugiabuciai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Daugiabuciai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Daugiabuciai] SET QUERY_STORE = OFF
GO
USE [Daugiabuciai]
GO
/****** Object:  Table [dbo].[Butas]    Script Date: 1/20/2019 6:05:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Butas](
	[Butas_NR] [int] NOT NULL,
	[Kambariu_Skaicius] [int] NULL,
	[Daugiabutis_NR] [int] NULL,
	[Gyventojai_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Butas_NR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Daugiabutis]    Script Date: 1/20/2019 6:05:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Daugiabutis](
	[Daugiabutis_NR] [int] NOT NULL,
	[Gatve] [varchar](255) NULL,
	[Miestas] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Daugiabutis_NR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gyventojai]    Script Date: 1/20/2019 6:05:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gyventojai](
	[Gyventojai_ID] [int] NOT NULL,
	[Vardas] [varchar](255) NULL,
	[Pavarde] [varchar](255) NULL,
	[Butas_NR] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Gyventojai_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (1, 3, 1, 1)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (2, 2, 1, 2)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (3, 5, 2, 3)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (4, 1, 2, 4)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (5, 2, 3, 5)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (6, 3, 3, 6)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (7, 4, 4, 7)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (8, 2, 4, 8)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (9, 1, 5, 9)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (10, 3, 5, 10)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (11, 2, 6, 11)
INSERT [dbo].[Butas] ([Butas_NR], [Kambariu_Skaicius], [Daugiabutis_NR], [Gyventojai_ID]) VALUES (12, 2, 6, 12)
INSERT [dbo].[Daugiabutis] ([Daugiabutis_NR], [Gatve], [Miestas]) VALUES (1, N'Zygio', N'Vilnius')
INSERT [dbo].[Daugiabutis] ([Daugiabutis_NR], [Gatve], [Miestas]) VALUES (2, N'Vileisio', N'Vilnius')
INSERT [dbo].[Daugiabutis] ([Daugiabutis_NR], [Gatve], [Miestas]) VALUES (3, N'Kauno', N'Kaunas')
INSERT [dbo].[Daugiabutis] ([Daugiabutis_NR], [Gatve], [Miestas]) VALUES (4, N'Zygimantu', N'Kaunas')
INSERT [dbo].[Daugiabutis] ([Daugiabutis_NR], [Gatve], [Miestas]) VALUES (5, N'Juros', N'Klaipeda')
INSERT [dbo].[Daugiabutis] ([Daugiabutis_NR], [Gatve], [Miestas]) VALUES (6, N'Kranto', N'Klaipeda')
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (1, N'Nedas', N'Zaboras', 1)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (2, N'Dainius', N'Dainauskas', 2)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (3, N'Petras', N'Petrauskas', 3)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (4, N'Jonas', N'Jonaitis', 4)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (5, N'Antanas', N'Antanaitis', 5)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (6, N'Povilas', N'Povilaitis', 6)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (7, N'Antanina', N'Antaniene', 7)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (8, N'Giedre', N'Giedraite', 8)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (9, N'Egle', N'Egliene', 9)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (10, N'Jone', N'Jonaite', 10)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (11, N'Gintare', N'Gintariene', 11)
INSERT [dbo].[Gyventojai] ([Gyventojai_ID], [Vardas], [Pavarde], [Butas_NR]) VALUES (12, N'Gabriele', N'Petrauskaite', 12)
ALTER TABLE [dbo].[Butas]  WITH CHECK ADD FOREIGN KEY([Daugiabutis_NR])
REFERENCES [dbo].[Daugiabutis] ([Daugiabutis_NR])
GO
ALTER TABLE [dbo].[Gyventojai]  WITH CHECK ADD FOREIGN KEY([Butas_NR])
REFERENCES [dbo].[Butas] ([Butas_NR])
GO
/****** Object:  StoredProcedure [dbo].[Sarasas]    Script Date: 1/20/2019 6:05:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sarasas] AS
SELECT Daugiabutis.Daugiabutis_NR, Miestas, Gatve, Butas.Butas_NR as 'Buto numeris', Kambariu_Skaicius, Gyventojai.Gyventojai_ID as 'Gyventojo numeris', Vardas, Pavarde  
FROM Daugiabutis, Butas, Gyventojai
WHERE Daugiabutis.Daugiabutis_NR = Butas.Daugiabutis_NR AND Butas.Butas_NR = Gyventojai.Butas_NR
GO
USE [master]
GO
ALTER DATABASE [Daugiabuciai] SET  READ_WRITE 
GO
