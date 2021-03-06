USE [Scheduler]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 3/15/2015 4:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobId] [int] NOT NULL,
	[JobTemplateId] [int] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_JobTemplate] FOREIGN KEY([JobTemplateId])
REFERENCES [Scheduler].[JobTemplate] ([JobTemplateId])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_JobTemplate]
GO
