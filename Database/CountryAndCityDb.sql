USE [CountryAndCityDB]
GO
/****** Object:  Table [dbo].[CityTBL]    Script Date: 12/26/2019 1:04:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[AboutCity] [varchar](max) NOT NULL,
	[NoOfDwellers] [decimal](18, 0) NOT NULL,
	[Location] [varchar](150) NOT NULL,
	[Weather] [varchar](150) NOT NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_CityTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CountryTBL]    Script Date: 12/26/2019 1:04:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CountryTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
	[AboutCountry] [varchar](max) NOT NULL,
 CONSTRAINT [PK_CountryTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CityTBL] ON 

INSERT [dbo].[CityTBL] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (1, N'Texas', N'', CAST(2000000 AS Decimal(18, 0)), N'northwest ', N'Cold', 2)
SET IDENTITY_INSERT [dbo].[CityTBL] OFF
SET IDENTITY_INSERT [dbo].[CountryTBL] ON 

INSERT [dbo].[CountryTBL] ([Id], [CountryName], [AboutCountry]) VALUES (1, N'Canada', N'<!--StartFragment--><p>Canada is a country in the northern part of North America.</p><!--EndFragment-->')
INSERT [dbo].[CountryTBL] ([Id], [CountryName], [AboutCountry]) VALUES (2, N'USA', N'<!--StartFragment--><p>The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean.</p><!--EndFragment-->')
SET IDENTITY_INSERT [dbo].[CountryTBL] OFF
ALTER TABLE [dbo].[CityTBL]  WITH CHECK ADD  CONSTRAINT [FK_CityTBL_CountryTBL] FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryTBL] ([Id])
GO
ALTER TABLE [dbo].[CityTBL] CHECK CONSTRAINT [FK_CityTBL_CountryTBL]
GO
