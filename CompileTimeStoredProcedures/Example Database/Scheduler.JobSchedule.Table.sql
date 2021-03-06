USE [Scheduler]
GO
/****** Object:  Table [Scheduler].[JobSchedule]    Script Date: 3/15/2015 4:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Scheduler].[JobSchedule](
	[JobScheduleId] [int] NOT NULL,
	[JobTemplateId] [int] NOT NULL,
	[IntervalTypeId] [int] NOT NULL,
	[JobStartDateTime] [datetime] NULL,
	[JobRunTimeGMT] [time](7) NULL,
	[JobRunIntervalInMinutes] [int] NULL,
	[Sunday] [bit] NOT NULL,
	[Monday] [bit] NOT NULL,
	[Tuesday] [bit] NOT NULL,
	[Wednesday] [bit] NOT NULL,
	[Thursday] [bit] NOT NULL,
	[Friday] [bit] NOT NULL,
	[Saturday] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[JobScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [Scheduler].[JobSchedule] ADD  DEFAULT ((0)) FOR [Sunday]
GO
ALTER TABLE [Scheduler].[JobSchedule] ADD  DEFAULT ((0)) FOR [Monday]
GO
ALTER TABLE [Scheduler].[JobSchedule] ADD  DEFAULT ((0)) FOR [Tuesday]
GO
ALTER TABLE [Scheduler].[JobSchedule] ADD  DEFAULT ((0)) FOR [Wednesday]
GO
ALTER TABLE [Scheduler].[JobSchedule] ADD  DEFAULT ((0)) FOR [Thursday]
GO
ALTER TABLE [Scheduler].[JobSchedule] ADD  DEFAULT ((0)) FOR [Friday]
GO
ALTER TABLE [Scheduler].[JobSchedule] ADD  DEFAULT ((0)) FOR [Saturday]
GO
ALTER TABLE [Scheduler].[JobSchedule]  WITH CHECK ADD FOREIGN KEY([IntervalTypeId])
REFERENCES [Scheduler].[IntervalType] ([IntervalTypeId])
GO
ALTER TABLE [Scheduler].[JobSchedule]  WITH CHECK ADD FOREIGN KEY([JobTemplateId])
REFERENCES [Scheduler].[JobTemplate] ([JobTemplateId])
GO
