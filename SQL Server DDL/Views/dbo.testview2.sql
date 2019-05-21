SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[testview2]
AS
select * from ContosoRetailDW..DimCustomer
GO
