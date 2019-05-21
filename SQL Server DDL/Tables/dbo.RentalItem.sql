SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[RentalItem] (
		[RentalId]        [int] NOT NULL,
		[ItemNumber]      [int] NOT NULL,
		[MovieCopyId]     [int] NOT NULL
)
GO
ALTER TABLE [dbo].[RentalItem]
	ADD
	CONSTRAINT [RentalItem_PK]
	PRIMARY KEY
	CLUSTERED
	([RentalId], [ItemNumber])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[RentalItem]
	ADD
	CONSTRAINT [CK__RentalIte__Renta__25869641]
	CHECK
	([RentalId]>(0))
GO
ALTER TABLE [dbo].[RentalItem]
CHECK CONSTRAINT [CK__RentalIte__Renta__25869641]
GO
ALTER TABLE [dbo].[RentalItem]
	ADD
	CONSTRAINT [CK__RentalIte__ItemN__267ABA7A]
	CHECK
	([ItemNumber]>(0))
GO
ALTER TABLE [dbo].[RentalItem]
CHECK CONSTRAINT [CK__RentalIte__ItemN__267ABA7A]
GO
ALTER TABLE [dbo].[RentalItem]
	WITH CHECK
	ADD CONSTRAINT [RentalItem_FK1]
	FOREIGN KEY ([RentalId]) REFERENCES [dbo].[MovieRental] ([RentalId])
ALTER TABLE [dbo].[RentalItem]
	CHECK CONSTRAINT [RentalItem_FK1]

GO
ALTER TABLE [dbo].[RentalItem]
	WITH CHECK
	ADD CONSTRAINT [RentalItem_FK2]
	FOREIGN KEY ([MovieCopyId]) REFERENCES [dbo].[MovieCopy] ([MovieCopyId])
ALTER TABLE [dbo].[RentalItem]
	CHECK CONSTRAINT [RentalItem_FK2]

GO
CREATE NONCLUSTERED INDEX [RentalItem_FK1]
	ON [dbo].[RentalItem] ([RentalId])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RentalItem_FK2]
	ON [dbo].[RentalItem] ([MovieCopyId])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[RentalItem] SET (LOCK_ESCALATION = TABLE)
GO
