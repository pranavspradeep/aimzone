USE [master]
GO
/****** Object:  Database [AiMZone]    Script Date: 8/20/2018 9:36:05 PM ******/
CREATE DATABASE [AiMZone]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AiMZone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AiMZone.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AiMZone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AiMZone_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AiMZone] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AiMZone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AiMZone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AiMZone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AiMZone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AiMZone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AiMZone] SET ARITHABORT OFF 
GO
ALTER DATABASE [AiMZone] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AiMZone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AiMZone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AiMZone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AiMZone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AiMZone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AiMZone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AiMZone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AiMZone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AiMZone] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AiMZone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AiMZone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AiMZone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AiMZone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AiMZone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AiMZone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AiMZone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AiMZone] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AiMZone] SET  MULTI_USER 
GO
ALTER DATABASE [AiMZone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AiMZone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AiMZone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AiMZone] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AiMZone] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AiMZone]
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertisement](
	[Add_id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](50) NULL,
	[Navigate_url] [nvarchar](50) NULL,
	[Alter_Text] [nvarchar](50) NULL,
	[Impression] [int] NULL,
	[Keyword] [varchar](50) NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[Add_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Firms]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firms](
	[RegId] [int] IDENTITY(1,1) NOT NULL,
	[FirmName] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Website] [nvarchar](30) NULL,
	[Keyword1] [nvarchar](50) NULL,
	[Keyword2] [nvarchar](50) NULL,
	[Keyword3] [nvarchar](50) NULL,
	[Keyword4] [nvarchar](50) NULL,
	[Keyword5] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Firms] PRIMARY KEY CLUSTERED 
(
	[RegId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item_Key]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item_Key](
	[KeyID] [int] IDENTITY(1,1) NOT NULL,
	[KeyWord] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Request]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[ReqID] [int] IDENTITY(1,1) NOT NULL,
	[KeyId] [int] NULL,
	[SubKey] [int] NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[Details] [nvarchar](max) NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[ReqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sub_Item]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sub_Item](
	[SubKey] [int] IDENTITY(1,1) NOT NULL,
	[KeyID] [int] NULL,
	[SubItem] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Advertisement] ON 

INSERT [dbo].[Advertisement] ([Add_id], [url], [Navigate_url], [Alter_Text], [Impression], [Keyword]) VALUES (4, N'Advimages/Userselection.PNG', N'xx', N'xxx', 1, N'image')
INSERT [dbo].[Advertisement] ([Add_id], [url], [Navigate_url], [Alter_Text], [Impression], [Keyword]) VALUES (6, N'Advimages/UserLogin.PNG', N'xx', N'xxx', 1, N'image')
SET IDENTITY_INSERT [dbo].[Advertisement] OFF
SET IDENTITY_INSERT [dbo].[Firms] ON 

INSERT [dbo].[Firms] ([RegId], [FirmName], [State], [City], [Location], [Phone], [Email], [Website], [Keyword1], [Keyword2], [Keyword3], [Keyword4], [Keyword5], [ContactPerson], [Status], [Username], [Password]) VALUES (1, N'AIMSTRADERS', N'KERALA', NULL, N'TRIVANDRUM', N'8987786876', N'pranav.s.pradeep@gmail.com', N'www.aimsoftsoloutions.com', N'CAR', N'SCOOTER', N'TELEVISION', N'SCOOTER', N'TELEVISION', N'ANISH', NULL, NULL, NULL)
INSERT [dbo].[Firms] ([RegId], [FirmName], [State], [City], [Location], [Phone], [Email], [Website], [Keyword1], [Keyword2], [Keyword3], [Keyword4], [Keyword5], [ContactPerson], [Status], [Username], [Password]) VALUES (2, N'AIMSTRADERS test', N'KERALA', NULL, N'TRIVANDRUM', N'67566', N'bhmb', N'hmm', N'CAR', N'CAR', N'CAR', N'CAR', N'BIKE', N'fff', NULL, N'bnvnv', N'nnbvnbv')
SET IDENTITY_INSERT [dbo].[Firms] OFF
SET IDENTITY_INSERT [dbo].[Item_Key] ON 

INSERT [dbo].[Item_Key] ([KeyID], [KeyWord]) VALUES (1, N'TELEVISION')
INSERT [dbo].[Item_Key] ([KeyID], [KeyWord]) VALUES (2, N'CAR')
INSERT [dbo].[Item_Key] ([KeyID], [KeyWord]) VALUES (3, N'BIKE')
INSERT [dbo].[Item_Key] ([KeyID], [KeyWord]) VALUES (4, N'SCOOTER')
INSERT [dbo].[Item_Key] ([KeyID], [KeyWord]) VALUES (5, N'AC')
SET IDENTITY_INSERT [dbo].[Item_Key] OFF
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([ReqID], [KeyId], [SubKey], [State], [City], [Location], [Details], [ContactName], [ContactNumber], [Email]) VALUES (1, 2, NULL, N'KERALA', NULL, N'TRIVANDRUM', NULL, N'PRANAV S PRADEEP', N'8281194936', N'pranav.s.pradeep@gmail.com')
INSERT [dbo].[Request] ([ReqID], [KeyId], [SubKey], [State], [City], [Location], [Details], [ContactName], [ContactNumber], [Email]) VALUES (2, 1, NULL, N'KERALA', NULL, N'TRIVANDRUM', NULL, N'PRANAV S PRADEEP', N'8281194936', N'pranav.s.pradeep@gmail.com')
INSERT [dbo].[Request] ([ReqID], [KeyId], [SubKey], [State], [City], [Location], [Details], [ContactName], [ContactNumber], [Email]) VALUES (3, 1, NULL, N'KERALA', NULL, N'TRIVANDRUM', NULL, N'PRANAV S PRADEEP', N'8281194936', N'pranav.s.pradeep@gmail.com')
INSERT [dbo].[Request] ([ReqID], [KeyId], [SubKey], [State], [City], [Location], [Details], [ContactName], [ContactNumber], [Email]) VALUES (4, 1, NULL, N'KERALA', NULL, N'TRIVANDRUM', NULL, N'PRANAV S PRADEEP', N'8281194936', N'pranav.s.pradeep@gmail.com')
INSERT [dbo].[Request] ([ReqID], [KeyId], [SubKey], [State], [City], [Location], [Details], [ContactName], [ContactNumber], [Email]) VALUES (5, 1, NULL, N'KERALA', NULL, N'TRIVANDRUM', NULL, N'PRANAV S PRADEEP', N'8281194936', N'pranav.s.pradeep@gmail.com')
INSERT [dbo].[Request] ([ReqID], [KeyId], [SubKey], [State], [City], [Location], [Details], [ContactName], [ContactNumber], [Email]) VALUES (6, 1, NULL, N'KERALA', NULL, N'TRIVANDRUM', NULL, N'PRANAV S PRADEEP', N'8281194936', N'pranav.s.pradeep@gmail.com')
INSERT [dbo].[Request] ([ReqID], [KeyId], [SubKey], [State], [City], [Location], [Details], [ContactName], [ContactNumber], [Email]) VALUES (7, 1, NULL, N'KERALA', NULL, N'TRIVANDRUM', NULL, N'PRANAV S PRADEEP', N'8281194936', N'pranav.s.pradeep@gmail.com')
INSERT [dbo].[Request] ([ReqID], [KeyId], [SubKey], [State], [City], [Location], [Details], [ContactName], [ContactNumber], [Email]) VALUES (8, 1, NULL, N'KERALA', NULL, N'TRIVANDRUM', NULL, N'p', N'81', N'p@gmail.com')
SET IDENTITY_INSERT [dbo].[Request] OFF
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateID], [StateName], [Location]) VALUES (1, N'SELECT', N'---SELECT---')
INSERT [dbo].[State] ([StateID], [StateName], [Location]) VALUES (2, N'KERALA', N'TRIVANDRUM')
INSERT [dbo].[State] ([StateID], [StateName], [Location]) VALUES (3, N'KERALA', N'KOTTAYAM')
INSERT [dbo].[State] ([StateID], [StateName], [Location]) VALUES (4, N'KERALA', N'ERNAKULAM')
INSERT [dbo].[State] ([StateID], [StateName], [Location]) VALUES (5, N'TAMILNADU', N'MYSORE')
INSERT [dbo].[State] ([StateID], [StateName], [Location]) VALUES (6, N'TAMILNADU', N'THENKASI')
INSERT [dbo].[State] ([StateID], [StateName], [Location]) VALUES (7, N'TAMILNADU ', N'KANYAKUMARI')
SET IDENTITY_INSERT [dbo].[State] OFF
SET IDENTITY_INSERT [dbo].[Sub_Item] ON 

INSERT [dbo].[Sub_Item] ([SubKey], [KeyID], [SubItem]) VALUES (1, NULL, N'LED')
SET IDENTITY_INSERT [dbo].[Sub_Item] OFF
/****** Object:  StoredProcedure [dbo].[filldroplocation]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[filldroplocation]
	-- Add the parameters for the stored procedure here
	@state varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 select Location from State where StateName=@state
END


GO
/****** Object:  StoredProcedure [dbo].[filldropNEED]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[filldropNEED]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT KeyWord,KeyID FROM Item_Key
END


GO
/****** Object:  StoredProcedure [dbo].[filldropstate]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[filldropstate]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DISTINCT  StateName FROM State 
END


GO
/****** Object:  StoredProcedure [dbo].[insert_firm]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_firm]
	
	-- Add the parameters for the stored procedure here
	@state varchar(50),@location varchar(50),@org varchar(50),@conperson varchar(50),@contnum varchar(50),@email varchar(50),@website varchar(50),@prod_cat1 varchar(50),@prod_cat2 varchar(50),@prod_cat3 varchar(50),@prod_cat4 varchar(50),@prod_cat5 varchar(50),@username varchar(50),@password varchar(50)
as
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Firms (FirmName,State,Location,Phone,ContactPerson,Email,Website,Keyword1,Keyword2,Keyword3,Keyword4,Keyword5,Username,Password)values(@org,@state,@location,@contnum,@conperson,@email,@website,@prod_cat1,@prod_cat2,@prod_cat3,@prod_cat4,@prod_cat5,@username,@password)
END


GO
/****** Object:  StoredProcedure [dbo].[insert_Request]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_Request]
	@state varchar(50),@location varchar(50),@ineed varchar(50),@phone varchar(50),@contname varchar(50),@email varchar(50)
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO Request (KeyId,State,Location,ContactName,ContactNumber,Email)VALUES(@ineed,@state,@location,@contname,@phone,@email)
	END

GO
/****** Object:  StoredProcedure [dbo].[subcatfill_proc]    Script Date: 8/20/2018 9:36:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[subcatfill_proc]
	-- Add the parameters for the stored procedure here
	@category varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  SubKey,SubItem from Sub_Item where KeyID=@category
END
GO
USE [master]
GO
ALTER DATABASE [AiMZone] SET  READ_WRITE 
GO
