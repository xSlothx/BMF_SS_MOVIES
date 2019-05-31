SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimStore2] (
		[StoreKey]             [int] NOT NULL,
		[GeographyKey]         [int] NULL,
		[StoreManager]         [int] NULL,
		[StoreType]            [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StoreName]            [nvarchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StoreDescription]     [nvarchar](63) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Status]               [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[OpenDate]             [datetime] NULL,
		[CloseDate]            [datetime] NULL,
		[EntityKey]            [int] NULL,
		[ZipCode]              [int] NULL,
		[ZipCodeExtension]     [int] NULL,
		[StorePhone]           [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StoreFax]             [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AddressLine1]         [nvarchar](95) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AddressLine2]         [nvarchar](95) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CloseReason]          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EmployeeCount]        [int] NULL,
		[SellingAreaSize]      [int] NULL,
		[LastRemodelDate]      [datetime] NULL,
		[GeoLocation]          [nvarchar](58) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Geometry]             [nvarchar](58) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ETLLoadID]            [int] NULL,
		[LoadDate]             [datetime] NULL,
		[UpdateDate]           [datetime] NULL
)
GO
ALTER TABLE [dbo].[DimStore2] SET (LOCK_ESCALATION = TABLE)
GO
