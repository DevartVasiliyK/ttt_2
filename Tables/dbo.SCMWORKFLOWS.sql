CREATE TABLE [dbo].[SCMWORKFLOWS] (
  [idWorkFlow] [numeric](10) NOT NULL,
  [Name] [nvarchar](128) NOT NULL,
  [Description] [nvarchar](1020) NULL,
  [idDefaultState] [numeric](10) NULL,
  [RollbackOption] [numeric](1) NULL,
  CONSTRAINT [PK_SCMWORKFLOWS] PRIMARY KEY CLUSTERED ([idWorkFlow])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SCMWORKFLOWS]
  ADD CONSTRAINT [SCMSTATES_SCMWORKFLOWS] FOREIGN KEY ([idDefaultState]) REFERENCES [dbo].[SCMSTATES] ([idState])
GO