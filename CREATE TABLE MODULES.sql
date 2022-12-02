USE [REGISTRATION]
GO

/****** Object:  Table [dbo].[Modules]    Script Date: 11/18/2021 10:53:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Modules](
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleCode] [varchar](50) NULL,
	[ModuleName] [varchar](max) NULL,
	[ModuleCredit] [int] NULL,
	[Classhour] [int] NULL,
	[Numweeks] [int] NULL,
	[HoursSpent] [int] NULL,
	[Date] [varchar](max) NULL,
	[SelfStudy] [float] NULL,
	[Remaining] [float] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

