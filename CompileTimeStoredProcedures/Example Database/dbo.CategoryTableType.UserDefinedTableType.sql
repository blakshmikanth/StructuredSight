USE [Scheduler]
GO
/****** Object:  UserDefinedTableType [dbo].[CategoryTableType]    Script Date: 3/15/2015 4:55:50 PM ******/
CREATE TYPE [dbo].[CategoryTableType] AS TABLE(
	[CategoryID] [int] NULL,
	[CategoryName] [nvarchar](50) NULL
)
GO
