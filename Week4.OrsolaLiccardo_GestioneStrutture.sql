USE [master]
GO
/****** Object:  Database [OrsolaLiccardo.GestioneStruttura]    Script Date: 18/02/2022 15:30:30 ******/
CREATE DATABASE [OrsolaLiccardo.GestioneStruttura]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OrsolaLiccardo.GestioneStruttura', FILENAME = N'C:\Users\orsola.liccardo\OrsolaLiccardo.GestioneStruttura.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OrsolaLiccardo.GestioneStruttura_log', FILENAME = N'C:\Users\orsola.liccardo\OrsolaLiccardo.GestioneStruttura_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OrsolaLiccardo.GestioneStruttura].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET ARITHABORT OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET  MULTI_USER 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET QUERY_STORE = OFF
GO
USE [OrsolaLiccardo.GestioneStruttura]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[DataDiNascita] [datetime] NOT NULL,
	[IdStruttura] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pernottamento]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pernottamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormulaPernottamento] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prenotazioni]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazioni](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdStruttura] [int] NOT NULL,
	[DataArrivo] [date] NOT NULL,
	[DataPartenza] [date] NOT NULL,
	[NumeroPersone] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strutture]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strutture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Città] [nvarchar](50) NOT NULL,
	[Stato] [nvarchar](50) NOT NULL,
	[IdTipologiaStruttura] [int] NOT NULL,
	[IdPernottamento] [int] NOT NULL,
	[ServiziOfferti] [nvarchar](100) NOT NULL,
	[AnimaliAmmessi] [bit] NOT NULL,
	[CostoAPersona] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDiStruttura]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDiStruttura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipologiaStruttura] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (13, N'Ursula', N'Liccardo', CAST(N'1988-11-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (14, N'Maria', N'De Stefano', CAST(N'1991-08-15T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (15, N'Alberto', N'Angela', CAST(N'1973-04-08T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (16, N'Luigi', N'Romano', CAST(N'1985-10-21T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (17, N'Ursula', N'Liccardo', CAST(N'1988-11-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (18, N'Maria', N'De Stefano', CAST(N'1991-08-15T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (19, N'Alberto', N'Angela', CAST(N'1973-04-08T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (20, N'Luigi', N'Romano', CAST(N'1985-10-21T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (21, N'Ursula', N'Liccardo', CAST(N'1988-11-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (22, N'Maria', N'De Stefano', CAST(N'1991-08-15T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (23, N'Alberto', N'Angela', CAST(N'1973-04-08T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [DataDiNascita], [IdStruttura]) VALUES (24, N'Luigi', N'Romano', CAST(N'1985-10-21T00:00:00.000' AS DateTime), 14)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Pernottamento] ON 

INSERT [dbo].[Pernottamento] ([Id], [FormulaPernottamento]) VALUES (1, N'Solo Pernottamento')
INSERT [dbo].[Pernottamento] ([Id], [FormulaPernottamento]) VALUES (2, N'Pernottamento e Prima Colazione')
INSERT [dbo].[Pernottamento] ([Id], [FormulaPernottamento]) VALUES (3, N'Mezza Pensione')
INSERT [dbo].[Pernottamento] ([Id], [FormulaPernottamento]) VALUES (4, N'Pensione Completa')
SET IDENTITY_INSERT [dbo].[Pernottamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Prenotazioni] ON 

INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone]) VALUES (1, 1, 1, CAST(N'2021-04-06' AS Date), CAST(N'2021-04-16' AS Date), 3)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone]) VALUES (2, 2, 2, CAST(N'2020-06-01' AS Date), CAST(N'2020-06-15' AS Date), 4)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone]) VALUES (3, 3, 3, CAST(N'2021-07-10' AS Date), CAST(N'2021-07-25' AS Date), 2)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone]) VALUES (4, 4, 4, CAST(N'2020-08-12' AS Date), CAST(N'2021-08-22' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Prenotazioni] OFF
GO
SET IDENTITY_INSERT [dbo].[Strutture] ON 

INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (1, N'Il Granato', N'Salerno', N'Italia', 1, 1, N'wifi,cassaforte', 1, 60)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (2, N'Il Granato', N'Salerno', N'Italia', 1, 2, N'wifi,cassaforte', 1, 75)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (3, N'Il Granato', N'Salerno', N'Italia', 1, 3, N'wifi,cassaforte', 1, 85)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (4, N'Il Granato', N'Salerno', N'Italia', 1, 4, N'wifi,cassaforte', 1, 150)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (5, N'San Pietro', N'Napoli', N'Italia', 2, 1, N'wifi,cassaforte,spa&centro benessere,piscina', 1, 300)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (6, N'San Pietro', N'Napoli', N'Italia', 2, 2, N'wifi,cassaforte,spa&centro benessere,piscina', 1, 350)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (7, N'San Pietro', N'Napoli', N'Italia', 2, 3, N'wifi,cassaforte,spa&centro benessere,piscina', 1, 400)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (8, N'San Pietro', N'Napoli', N'Italia', 2, 1, N'wifi,cassaforte,spa&centro benessere,piscina', 1, 500)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (9, N'Russo', N'Salerno', N'Italia', 3, 1, N'wifi,piscina', 1, 30)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (10, N'Russo', N'Salerno', N'Italia', 3, 2, N'wifi,piscina', 1, 35)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (11, N'Russo', N'Salerno', N'Italia', 3, 3, N'wifi,piscina', 1, 50)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (12, N'Russo', N'Salerno', N'Italia', 3, 4, N'wifi,piscina', 1, 65)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (13, N'La Violetta', N'Messina', N'Italia', 4, 1, N'wifi,piscina', 1, 40)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (14, N'La Violetta', N'Messina', N'Italia', 4, 2, N'wifi,piscina', 1, 45)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (15, N'La Violetta', N'Messina', N'Italia', 4, 3, N'wifi,piscina', 1, 50)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologiaStruttura], [IdPernottamento], [ServiziOfferti], [AnimaliAmmessi], [CostoAPersona]) VALUES (16, N'La Violetta', N'Messina', N'Italia', 4, 4, N'wifi,piscina', 1, 60)
SET IDENTITY_INSERT [dbo].[Strutture] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDiStruttura] ON 

INSERT [dbo].[TipoDiStruttura] ([Id], [TipologiaStruttura]) VALUES (1, N'Agriturismo')
INSERT [dbo].[TipoDiStruttura] ([Id], [TipologiaStruttura]) VALUES (2, N'Hotel')
INSERT [dbo].[TipoDiStruttura] ([Id], [TipologiaStruttura]) VALUES (3, N'Casa Vacanze')
INSERT [dbo].[TipoDiStruttura] ([Id], [TipologiaStruttura]) VALUES (4, N'Residence')
SET IDENTITY_INSERT [dbo].[TipoDiStruttura] OFF
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Strutture] FOREIGN KEY([IdStruttura])
REFERENCES [dbo].[Strutture] ([Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Strutture]
GO
ALTER TABLE [dbo].[Strutture]  WITH CHECK ADD  CONSTRAINT [FK_Strutture_Pernottamento] FOREIGN KEY([IdPernottamento])
REFERENCES [dbo].[Pernottamento] ([Id])
GO
ALTER TABLE [dbo].[Strutture] CHECK CONSTRAINT [FK_Strutture_Pernottamento]
GO
ALTER TABLE [dbo].[Strutture]  WITH CHECK ADD  CONSTRAINT [FK_Strutture_TipoDiStruttura] FOREIGN KEY([IdTipologiaStruttura])
REFERENCES [dbo].[TipoDiStruttura] ([Id])
GO
ALTER TABLE [dbo].[Strutture] CHECK CONSTRAINT [FK_Strutture_TipoDiStruttura]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [CHK_DataPartenza] CHECK  (([DataPartenza]>[DataArrivo]))
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [CHK_DataPartenza]
GO
ALTER TABLE [dbo].[Strutture]  WITH CHECK ADD  CONSTRAINT [CHK_TipologiaServizi] CHECK  (([CostoAPersona]>(0)))
GO
ALTER TABLE [dbo].[Strutture] CHECK CONSTRAINT [CHK_TipologiaServizi]
GO
/****** Object:  StoredProcedure [dbo].[mostra.Tipologie]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mostra.Tipologie]
as
declare @IdPernottamento nvarchar (50)
set @IdPernottamento=3
select
s.Nome,
s.Città,
s.ServiziOfferti,
p.FormulaPernottamento
from dbo.Strutture as s
join dbo.Pernottamento as p
on s.IdPernottamento=p.Id
where p.Id=@IdPernottamento
GO
/****** Object:  StoredProcedure [dbo].[SceltaStrutture]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SceltaStrutture]
as
select distinct 
s.Nome,
s.Città,
s.CostoAPersona,
s.ServiziOfferti,
p.DataArrivo,
p.DataPartenza,
p.NumeroPersone,
cl.Nome,
cl.Cognome,
cl.DataDiNascita,
GiorniPernottamento=DATEDIFF(day,p.DataArrivo,p.DataPartenza),
PrezzoTotale= s.CostoAPersona*p.NumeroPersone*DATEDIFF(day,p.DataArrivo,p.DataPartenza)


from dbo.Strutture as s
join dbo.Prenotazioni as p
on p.IdStruttura=s.Id
join dbo.Cliente as cl
on cl.Id=p.IdCliente
GO
/****** Object:  StoredProcedure [dbo].[VisualizzaPernottamentoStruttura]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creare una stored procedure che, scelto un tipo di pernottamento, mostri le strutture di quel tipo.
CREATE PROCEDURE [dbo].[VisualizzaPernottamentoStruttura]
AS
declare @IdPernottamento int
set @IdPernottamento=3
select*from dbo.Strutture as s
where s.IdPernottamento=@IdPernottamento
GO
/****** Object:  StoredProcedure [dbo].[VisualizzaServiziStrutture]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VisualizzaServiziStrutture]
AS
declare @ServiziOfferti nvarchar (50)
set @ServiziOfferti='wifi,piscina'
select*from dbo.Strutture as s
where s.ServiziOfferti=@ServiziOfferti
GO
/****** Object:  StoredProcedure [dbo].[VisualizzaTipoStruttura]    Script Date: 18/02/2022 15:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VisualizzaTipoStruttura]
AS
declare @IdTipologiaStruttura int
set @IdTipologiaStruttura=2
select*from dbo.Strutture as s
where s.IdTipologiaStruttura=@IdTipologiaStruttura
GO
USE [master]
GO
ALTER DATABASE [OrsolaLiccardo.GestioneStruttura] SET  READ_WRITE 
GO
