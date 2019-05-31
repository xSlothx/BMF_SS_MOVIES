SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FactSalesSmall] (
		[SalesKey]             [int] NOT NULL,
		[DateKey]              [datetime] NULL,
		[channelKey]           [int] NULL,
		[StoreKey]             [int] NULL,
		[ProductKey]           [int] NULL,
		[PromotionKey]         [int] NULL,
		[CurrencyKey]          [int] NULL,
		[UnitCost]             [decimal](30, 12) NULL,
		[UnitPrice]            [decimal](28, 10) NULL,
		[SalesQuantity]        [int] NULL,
		[ReturnQuantity]       [int] NULL,
		[ReturnAmount]         [decimal](28, 10) NULL,
		[DiscountQuantity]     [int] NULL,
		[DiscountAmount]       [decimal](28, 10) NULL,
		[TotalCost]            [decimal](28, 10) NULL,
		[SalesAmount]          [decimal](28, 10) NULL,
		[ETLLoadID]            [int] NULL,
		[LoadDate]             [datetime] NULL,
		[UpdateDate]           [datetime] NULL
)
GO
ALTER TABLE [dbo].[FactSalesSmall] SET (LOCK_ESCALATION = TABLE)
GO
