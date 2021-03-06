USE [Scheduler]
GO
/****** Object:  Table [Scheduler].[IntervalType]    Script Date: 3/15/2015 4:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Scheduler].[IntervalType](
	[IntervalTypeId] [int] NOT NULL,
	[IntervalName] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IntervalTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
