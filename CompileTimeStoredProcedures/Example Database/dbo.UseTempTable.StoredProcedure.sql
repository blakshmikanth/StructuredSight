USE [Scheduler]
GO
/****** Object:  StoredProcedure [dbo].[UseTempTable]    Script Date: 3/15/2015 4:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UseTempTable]
	@Categories CategoryTableType READONLY
AS 
	SELECT * FROM @Categories
GO
