USE [MusicAlbum]
GO
/****** Object:  Table [dbo].[AlbumRating]    Script Date: 1/24/2020 2:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlbumRating](
	[AlbumRatingId] [int] IDENTITY(1,1) NOT NULL,
	[AlbumId] [int] NOT NULL,
	[AlbumRatings] [int] NOT NULL,
	[AlbumRatingBy] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AlbumRating] PRIMARY KEY CLUSTERED 
(
	[AlbumRatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Albums]    Script Date: 1/24/2020 2:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[AlbumId] [int] IDENTITY(1,1) NOT NULL,
	[AlbumName] [nvarchar](500) NOT NULL,
	[AlbumPrice] [decimal](18, 0) NOT NULL,
	[AlbumReleaseDate] [datetime] NOT NULL,
	[AlbumImagPath] [nvarchar](500) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SingerAlbumLinks]    Script Date: 1/24/2020 2:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SingerAlbumLinks](
	[SingerAlbumId] [int] IDENTITY(1,1) NOT NULL,
	[SingerId] [int] NOT NULL,
	[AlbumId] [int] NOT NULL,
 CONSTRAINT [PK_SingerAlbumLinks] PRIMARY KEY CLUSTERED 
(
	[SingerAlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Singers]    Script Date: 1/24/2020 2:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Singers](
	[SingerId] [int] IDENTITY(1,1) NOT NULL,
	[SingerName] [nvarchar](500) NOT NULL,
	[SingerReview] [text] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Singers] PRIMARY KEY CLUSTERED 
(
	[SingerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Songs]    Script Date: 1/24/2020 2:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Songs](
	[SongId] [int] IDENTITY(1,1) NOT NULL,
	[AlbumId] [int] NOT NULL,
	[SingerId] [int] NOT NULL,
	[SongName] [nvarchar](500) NOT NULL,
	[SongDuration] [time](7) NOT NULL,
	[SongPrice] [decimal](18, 0) NOT NULL,
	[SongPopularity] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Songs] PRIMARY KEY CLUSTERED 
(
	[SongId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AlbumRating] ON 

INSERT [dbo].[AlbumRating] ([AlbumRatingId], [AlbumId], [AlbumRatings], [AlbumRatingBy], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 4, 4, 2, 1, 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime), 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime))
INSERT [dbo].[AlbumRating] ([AlbumRatingId], [AlbumId], [AlbumRatings], [AlbumRatingBy], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 4, 6, 3, 1, 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime), 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime))
INSERT [dbo].[AlbumRating] ([AlbumRatingId], [AlbumId], [AlbumRatings], [AlbumRatingBy], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 4, 5, 4, 1, 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime), 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime))
SET IDENTITY_INSERT [dbo].[AlbumRating] OFF
SET IDENTITY_INSERT [dbo].[Albums] ON 

INSERT [dbo].[Albums] ([AlbumId], [AlbumName], [AlbumPrice], [AlbumReleaseDate], [AlbumImagPath], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Greatest Hits', CAST(900 AS Decimal(18, 0)), CAST(N'2020-01-23 16:00:12.470' AS DateTime), N'../AlbumThumbnails/Album.jpg', 1, 1, CAST(N'2020-01-23 16:00:12.470' AS DateTime), 1, CAST(N'2020-01-23 16:00:12.470' AS DateTime))
SET IDENTITY_INSERT [dbo].[Albums] OFF
SET IDENTITY_INSERT [dbo].[SingerAlbumLinks] ON 

INSERT [dbo].[SingerAlbumLinks] ([SingerAlbumId], [SingerId], [AlbumId]) VALUES (1, 1, 4)
SET IDENTITY_INSERT [dbo].[SingerAlbumLinks] OFF
SET IDENTITY_INSERT [dbo].[Singers] ON 

INSERT [dbo].[Singers] ([SingerId], [SingerName], [SingerReview], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Gnash', N'4.5', 1, 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime), 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime))
SET IDENTITY_INSERT [dbo].[Singers] OFF
SET IDENTITY_INSERT [dbo].[Songs] ON 

INSERT [dbo].[Songs] ([SongId], [AlbumId], [SingerId], [SongName], [SongDuration], [SongPrice], [SongPopularity], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 4, 1, N'NoBody Else', CAST(N'05:00:00' AS Time), CAST(25 AS Decimal(18, 0)), 5, 1, 1, CAST(N'2020-01-23 16:00:12.470' AS DateTime), 1, CAST(N'2020-01-23 16:00:12.470' AS DateTime))
INSERT [dbo].[Songs] ([SongId], [AlbumId], [SingerId], [SongName], [SongDuration], [SongPrice], [SongPopularity], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 4, 1, N'See you Again', CAST(N'04:00:00' AS Time), CAST(30 AS Decimal(18, 0)), 6, 1, 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime), 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime))
INSERT [dbo].[Songs] ([SongId], [AlbumId], [SingerId], [SongName], [SongDuration], [SongPrice], [SongPopularity], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 4, 1, N'I hate you,I love you ', CAST(N'05:41:00' AS Time), CAST(60 AS Decimal(18, 0)), 4, 1, 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime), 1, CAST(N'2020-01-23 16:05:08.730' AS DateTime))
SET IDENTITY_INSERT [dbo].[Songs] OFF
ALTER TABLE [dbo].[AlbumRating]  WITH CHECK ADD  CONSTRAINT [FK_AlbumRating_Albums] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums] ([AlbumId])
GO
ALTER TABLE [dbo].[AlbumRating] CHECK CONSTRAINT [FK_AlbumRating_Albums]
GO
ALTER TABLE [dbo].[SingerAlbumLinks]  WITH CHECK ADD  CONSTRAINT [FK_SingerAlbumLinks_Albums] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums] ([AlbumId])
GO
ALTER TABLE [dbo].[SingerAlbumLinks] CHECK CONSTRAINT [FK_SingerAlbumLinks_Albums]
GO
ALTER TABLE [dbo].[SingerAlbumLinks]  WITH CHECK ADD  CONSTRAINT [FK_SingerAlbumLinks_Singers] FOREIGN KEY([SingerId])
REFERENCES [dbo].[Singers] ([SingerId])
GO
ALTER TABLE [dbo].[SingerAlbumLinks] CHECK CONSTRAINT [FK_SingerAlbumLinks_Singers]
GO
ALTER TABLE [dbo].[Songs]  WITH CHECK ADD  CONSTRAINT [FK_Songs_Albums] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums] ([AlbumId])
GO
ALTER TABLE [dbo].[Songs] CHECK CONSTRAINT [FK_Songs_Albums]
GO
ALTER TABLE [dbo].[Songs]  WITH CHECK ADD  CONSTRAINT [FK_Songs_Singers] FOREIGN KEY([SingerId])
REFERENCES [dbo].[Singers] ([SingerId])
GO
ALTER TABLE [dbo].[Songs] CHECK CONSTRAINT [FK_Songs_Singers]
GO
