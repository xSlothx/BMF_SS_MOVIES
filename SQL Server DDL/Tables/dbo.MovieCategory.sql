SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovieCategory] (
		[CategoryId]       [int] NOT NULL,
		[CategoryName]     [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[RentalPrice]      [money] NOT NULL,
		CONSTRAINT [MovieCategory_UK]
		UNIQUE
		NONCLUSTERED
		([CategoryName])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[MovieCategory]
	ADD
	CONSTRAINT [MovieCategory_PK]
	PRIMARY KEY
	CLUSTERED
	([CategoryId])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieCategory]
	ADD
	CONSTRAINT [CK__MovieCate__Categ__0AD2A005]
	CHECK
	([CategoryId]>(0))
GO
ALTER TABLE [dbo].[MovieCategory]
CHECK CONSTRAINT [CK__MovieCate__Categ__0AD2A005]
GO
ALTER TABLE [dbo].[MovieCategory]
	ADD
	CONSTRAINT [CK__MovieCate__Renta__0BC6C43E]
	CHECK
	([RentalPrice]>(0))
GO
ALTER TABLE [dbo].[MovieCategory]
CHECK CONSTRAINT [CK__MovieCate__Renta__0BC6C43E]
GO
ALTER TABLE [dbo].[MovieCategory] SET (LOCK_ESCALATION = TABLE)
GO
