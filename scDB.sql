USE [dbSMSF]
GO
/****** Object:  Table [dbo].[tblQendaMF]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblQendaMF](
	[Id] [int] NOT NULL,
	[Emri] [varchar](20) NULL,
	[Lokacioni] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPozita]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPozita](
	[IdPozita] [int] NOT NULL,
	[Pershkrimi] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPozita] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblPozita] ([IdPozita], [Pershkrimi]) VALUES (1, N'Staf')
INSERT [dbo].[tblPozita] ([IdPozita], [Pershkrimi]) VALUES (2, N'Admin')
/****** Object:  Table [dbo].[tblPerdoruesi]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPerdoruesi](
	[ID] [int] NOT NULL,
	[Perdoruesi] [varchar](20) NULL,
	[Fjalekalimi] [varchar](20) NULL,
	[RoliID] [int] NULL,
 CONSTRAINT [PK_tblPerdoruesi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblPerdoruesi] ([ID], [Perdoruesi], [Fjalekalimi], [RoliID]) VALUES (1, N'dh.h', N'123', 1)
INSERT [dbo].[tblPerdoruesi] ([ID], [Perdoruesi], [Fjalekalimi], [RoliID]) VALUES (2, N'test.test', N'123', 1)
/****** Object:  Table [dbo].[tblPacienti]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPacienti](
	[ID_Pacienti] [int] IDENTITY(1,1) NOT NULL,
	[Emri] [varchar](20) NULL,
	[Mbiemri] [varchar](20) NULL,
	[DataLindjes] [date] NULL,
	[Nr_Kontaktues] [varchar](15) NULL,
	[Historia_P] [varchar](100) NULL,
 CONSTRAINT [PK__tblPacie__5F36506507020F21] PRIMARY KEY CLUSTERED 
(
	[ID_Pacienti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblPacienti] ON
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (1, N'Test', N'Test', CAST(0x9D470B00 AS Date), N'044', N'nuk ka')
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (2, N'Filan ', N'Filan ', CAST(0x41140B00 AS Date), N'044', N'nuk ka')
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (3, N'Dhurata', N'Hyseni', CAST(0x15130B00 AS Date), N'044', N'nuk ka')
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (4, N'Gentrit', N'Hasani', CAST(0x25130B00 AS Date), N'044', N'nuk ka')
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (5, N'Nora', N'Sadiku', CAST(0x8D470B00 AS Date), N'044', N'nuk ka')
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (6, N'Edion', N'Gashi', CAST(0xB2470B00 AS Date), N'044', N'nuk ka')
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (7, N'Ema', N'Baftiri', CAST(0x073B0B00 AS Date), N'044', N'nuk ka')
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (8, N'Gezim', N'Gashi', CAST(0xB1470B00 AS Date), N'3333', N'nuk ka.....')
INSERT [dbo].[tblPacienti] ([ID_Pacienti], [Emri], [Mbiemri], [DataLindjes], [Nr_Kontaktues], [Historia_P]) VALUES (9, N'Nderim', N'Gashi', CAST(0x73250B00 AS Date), N'044-444', N'nuk ka histori....')
SET IDENTITY_INSERT [dbo].[tblPacienti] OFF
/****** Object:  UserDefinedFunction [dbo].[fnPacientiKerko]    Script Date: 01/11/2025 23:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--select * from [fnPacientiKerko]('')
CREATE FUNCTION [dbo].[fnPacientiKerko](@emri VARCHAR(20))
RETURNS TABLE 
AS
RETURN 
(
Select
ID_Pacienti as ID,
Emri +' '+Mbiemri as Pacienti,
CONVERT(VARCHAR(10), DataLindjes , 103) as DataLindjes,
Nr_Kontaktues as [Numri kontaktues],
Historia_P as [Historia]


from dbo.tblPacienti

WHERE Emri like @emri+'%' OR Mbiemri like @emri+'%' 
)
GO
/****** Object:  UserDefinedFunction [dbo].[fnPacienti]    Script Date: 01/11/2025 23:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--select * from [fnPacienti]()
CREATE FUNCTION [dbo].[fnPacienti]()
RETURNS TABLE 
AS
RETURN 
(
Select
ID_Pacienti as ID,
Emri +' '+Mbiemri as Pacienti,
CONVERT(VARCHAR(10), DataLindjes , 103) as DataLindjes,
Nr_Kontaktues as [Numri kontaktues],
Historia_P as [Historia]

from dbo.tblPacienti


)
GO
/****** Object:  StoredProcedure [dbo].[prPerdoruesi]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prPerdoruesi] ( @Perdoruesi varchar(20), @Fjalekalimi varchar(20))
as BEGIN


   Select ID,Perdoruesi,Fjalekalimi,RoliID
   from dbo.tblPerdoruesi
   where Perdoruesi=@Perdoruesi and Fjalekalimi=@Fjalekalimi
END
GO
/****** Object:  StoredProcedure [dbo].[prPacienti]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prPacienti](
@Case int,
@id_Pacienti int,
@Emri varchar(20),
@Mbiemri varchar(20),
@DataLindjes date,
@Nr_Kontaktues varchar(50),
@Historia_Pacientit varchar(100))

AS
BEGIN
if @Case=1
Begin
insert into dbo.tblPacienti 
values(@Emri,@Mbiemri, @DataLindjes,@Nr_Kontaktues, @Historia_Pacientit)
end

if @Case=2
Begin
update dbo.tblPacienti
set
Emri=@Emri,
Mbiemri=@Mbiemri,
DataLindjes=@DataLindjes,
Nr_Kontaktues=@Nr_Kontaktues,
Historia_P=@Historia_Pacientit
where ID_Pacienti=@id_Pacienti
end

if @Case=3
Begin
delete from dbo.tblPacienti
where ID_Pacienti=@id_Pacienti
end
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnKerkoPerdoruesin]    Script Date: 01/11/2025 23:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[fnKerkoPerdoruesin] 
(	
	@Perdoruesi varchar(50),
	@Fjalekalimi varchar(50)
)
RETURNS TABLE 
AS
RETURN 
(
	Select 
	Perdoruesi,
	Fjalekalimi,
	RoliID
	from dbo.tblPerdoruesi
	where Perdoruesi=@Perdoruesi and Fjalekalimi=@Fjalekalimi
)
GO
/****** Object:  Table [dbo].[tblStafi]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStafi](
	[ID_S] [int] NOT NULL,
	[Emri] [varchar](20) NULL,
	[Mbiemri] [varchar](20) NULL,
	[Specializimi] [varchar](50) NULL,
	[Nr_Kontaktues] [varchar](15) NULL,
	[Paga] [money] NULL,
	[Pozia] [int] NULL,
 CONSTRAINT [PK__tblStafi__B87EA5190AD2A005] PRIMARY KEY CLUSTERED 
(
	[ID_S] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblStafi] ([ID_S], [Emri], [Mbiemri], [Specializimi], [Nr_Kontaktues], [Paga], [Pozia]) VALUES (1, N'Dhurata', N'Hyseni', N'dr', N'044', 500.0000, 1)
INSERT [dbo].[tblStafi] ([ID_S], [Emri], [Mbiemri], [Specializimi], [Nr_Kontaktues], [Paga], [Pozia]) VALUES (2, N'test', N'Baftiri', N'dr', N'044', 300.0000, 2)
/****** Object:  Table [dbo].[tblReparti]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblReparti](
	[ID_R] [int] NOT NULL,
	[Kodi] [int] NULL,
	[Pershkrimi] [varchar](20) NULL,
	[Qendra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_R] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblInvetari]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblInvetari](
	[Inventari_ID] [int] NOT NULL,
	[Pershkrim] [varchar](20) NULL,
	[Sasia] [int] NULL,
	[RepartiID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventari_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVizita]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVizita](
	[Vizita_ID] [int] NOT NULL,
	[Data] [date] NULL,
	[Koha] [time](7) NULL,
	[Diagnoza] [nvarchar](max) NULL,
	[RepartiID] [int] NULL,
	[Pacienti] [int] NULL,
	[Stafi] [int] NULL,
	[TerminiID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vizita_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTermini]    Script Date: 01/11/2025 23:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTermini](
	[TerminiID] [int] NOT NULL,
	[Stafi] [int] NULL,
	[Pacienti] [int] NULL,
	[Data] [date] NULL,
	[Koha] [time](7) NULL,
	[Pershkrimi] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[TerminiID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fnStafiKerko]    Script Date: 01/11/2025 23:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--select * from [fnPacientiKerko]('')
CREATE FUNCTION [dbo].[fnStafiKerko](@emri VARCHAR(20))
RETURNS TABLE 
AS
RETURN 
(
Select
 ID_S as ID,
Emri +' '+Mbiemri as Stafi,Specializimi,
Nr_Kontaktues as [Numri kontaktues],
Paga



from dbo.tblStafi

WHERE Emri like @emri+'%' OR Mbiemri like @emri+'%' 
group by ID_S,Emri,Mbiemri,Nr_Kontaktues, Paga,Specializimi
)
GO
/****** Object:  UserDefinedFunction [dbo].[fnNrVizitave]    Script Date: 01/11/2025 23:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fnNrVizitave](@emri VARCHAR(20)) 
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT 
	p.Emri + ' ' + p.Mbiemri AS Pacienti, 
	v.Data, 
	v.Diagnoza, 
	(SELECT Kodi + ' ' + Pershkrimi 
			AS Reparti FROM tblReparti 
			WHERE tblReparti.ID_R = v.RepartiID) AS Reparti,
	(SELECT Emri + ' ' + Mbiemri AS Mjeku FROM tblStafi 
			WHERE tblStafi.ID_S = v.Stafi) AS Mjeku
		
	FROM tblVizita AS v INNER JOIN tblPacienti AS p 
	ON v.Pacienti = p.ID_Pacienti

	
)
GO
/****** Object:  ForeignKey [FK__tblInveta__Repar__22AA2996]    Script Date: 01/11/2025 23:40:40 ******/
ALTER TABLE [dbo].[tblInvetari]  WITH CHECK ADD FOREIGN KEY([RepartiID])
REFERENCES [dbo].[tblReparti] ([ID_R])
GO
/****** Object:  ForeignKey [FK__tblRepart__Qendr__117F9D94]    Script Date: 01/11/2025 23:40:40 ******/
ALTER TABLE [dbo].[tblReparti]  WITH CHECK ADD FOREIGN KEY([Qendra])
REFERENCES [dbo].[tblQendaMF] ([Id])
GO
/****** Object:  ForeignKey [FK__tblStafi__Pozia__0CBAE877]    Script Date: 01/11/2025 23:40:40 ******/
ALTER TABLE [dbo].[tblStafi]  WITH CHECK ADD  CONSTRAINT [FK__tblStafi__Pozia__0CBAE877] FOREIGN KEY([Pozia])
REFERENCES [dbo].[tblPozita] ([IdPozita])
GO
ALTER TABLE [dbo].[tblStafi] CHECK CONSTRAINT [FK__tblStafi__Pozia__0CBAE877]
GO
/****** Object:  ForeignKey [FK__tblTermin__Pacie__1DE57479]    Script Date: 01/11/2025 23:40:40 ******/
ALTER TABLE [dbo].[tblTermini]  WITH CHECK ADD  CONSTRAINT [FK__tblTermin__Pacie__1DE57479] FOREIGN KEY([Pacienti])
REFERENCES [dbo].[tblPacienti] ([ID_Pacienti])
GO
ALTER TABLE [dbo].[tblTermini] CHECK CONSTRAINT [FK__tblTermin__Pacie__1DE57479]
GO
/****** Object:  ForeignKey [FK__tblTermin__Stafi__1CF15040]    Script Date: 01/11/2025 23:40:40 ******/
ALTER TABLE [dbo].[tblTermini]  WITH CHECK ADD  CONSTRAINT [FK__tblTermin__Stafi__1CF15040] FOREIGN KEY([Stafi])
REFERENCES [dbo].[tblStafi] ([ID_S])
GO
ALTER TABLE [dbo].[tblTermini] CHECK CONSTRAINT [FK__tblTermin__Stafi__1CF15040]
GO
/****** Object:  ForeignKey [FK__tblVizita__Pacie__173876EA]    Script Date: 01/11/2025 23:40:40 ******/
ALTER TABLE [dbo].[tblVizita]  WITH CHECK ADD  CONSTRAINT [FK__tblVizita__Pacie__173876EA] FOREIGN KEY([Pacienti])
REFERENCES [dbo].[tblPacienti] ([ID_Pacienti])
GO
ALTER TABLE [dbo].[tblVizita] CHECK CONSTRAINT [FK__tblVizita__Pacie__173876EA]
GO
/****** Object:  ForeignKey [FK__tblVizita__Repar__164452B1]    Script Date: 01/11/2025 23:40:40 ******/
ALTER TABLE [dbo].[tblVizita]  WITH CHECK ADD FOREIGN KEY([RepartiID])
REFERENCES [dbo].[tblReparti] ([ID_R])
GO
/****** Object:  ForeignKey [FK__tblVizita__Stafi__182C9B23]    Script Date: 01/11/2025 23:40:40 ******/
ALTER TABLE [dbo].[tblVizita]  WITH CHECK ADD  CONSTRAINT [FK__tblVizita__Stafi__182C9B23] FOREIGN KEY([Stafi])
REFERENCES [dbo].[tblStafi] ([ID_S])
GO
ALTER TABLE [dbo].[tblVizita] CHECK CONSTRAINT [FK__tblVizita__Stafi__182C9B23]
GO
