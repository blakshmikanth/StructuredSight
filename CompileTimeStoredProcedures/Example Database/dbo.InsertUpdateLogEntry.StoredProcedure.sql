USE [Scheduler]
GO
/****** Object:  StoredProcedure [dbo].[InsertUpdateLogEntry]    Script Date: 3/15/2015 4:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertUpdateLogEntry] 
@ProductName VARCHAR(50) = 'NO NAME'
,@Major INT 
,@Minor INT 
,@Patch INT

AS
BEGIN
	INSERT INTO UpdateLogs
	(
		ProductName
		,Major
		,Minor
		,Patch
	)
	VALUES 
	(
		@ProductName 		
		,@Major
		,@Minor 
		,@Patch 
	)


END
GO
