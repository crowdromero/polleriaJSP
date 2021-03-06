USE [BD_Reniec]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 15/05/2018 21:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[DNI] [varchar](10) NOT NULL,
	[Nombres] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](100) NULL,
	[ApellidoMaterno] [varchar](100) NULL,
	[FechaNacimiento] [datetime] NULL,
	[Sexo] [varchar](1) NULL,
	[FechaDeceso] [datetime] NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Persona] ([DNI], [Nombres], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Sexo], [FechaDeceso]) VALUES (N'44444444', N'Christian', N'Villavicencio', N'Paredes', CAST(N'1980-11-28 00:00:00.000' AS DateTime), N'M', NULL)
INSERT [dbo].[Persona] ([DNI], [Nombres], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Sexo], [FechaDeceso]) VALUES (N'55555555', N'Juana', N'Lopez', N'Hidalgo', CAST(N'2000-08-28 00:00:00.000' AS DateTime), N'F', NULL)


create procedure GetPersona
@DNI varchar(10)
as
begin
select DNI,Nombres,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Sexo,FechaDeceso from Persona
where DNI=@DNI
end

GetPersona '44444444'