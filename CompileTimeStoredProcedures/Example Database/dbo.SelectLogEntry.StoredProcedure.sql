USE [Scheduler]
GO
/****** Object:  StoredProcedure [dbo].[SelectLogEntry]    Script Date: 3/15/2015 4:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectLogEntry]

AS
	SELECT 
		ProductName
,Major
,Minor
,Patch
,DateApplied
--,ExampleField
	
	
	
	 FROM UpdateLogs
GO
