SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER OFF
GO

CREATE VIEW Cust_View AS
SELECT Cu.FirstName, Cu.LastName, Cu.Phone, Cu.Gender
FROM Customer Cu;
GO
