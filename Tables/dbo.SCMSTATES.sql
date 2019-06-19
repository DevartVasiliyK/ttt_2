CREATE TABLE [dbo].[SCMSTATES] (
  [idState] [numeric](10) NOT NULL,
  [Deleted] [numeric](1) NULL,
  [Name] [nvarchar](128) NOT NULL,
  [Description] [nvarchar](1020) NULL,
  [ESigRequired] [numeric](1) NULL,
  [AutoReset] [numeric](1) NULL,
  CONSTRAINT [PK_SCMSTATES] PRIMARY KEY CLUSTERED ([idState])
)
ON [PRIMARY]
GO