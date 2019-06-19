CREATE TABLE [dbo].[LABEL] (
  [MainlineID] [numeric](10) NOT NULL,
  [LabelID] [numeric](10) NOT NULL,
  [BranchID] [numeric](10) NULL,
  [IsHidden] [numeric](1) NULL,
  [LabelName] [nvarchar](255) NULL,
  [LabelDescription] [nvarchar](1024) NULL,
  [OwnerID] [numeric](10) NULL,
  [TimeCreated] [datetime] NULL,
  [FileCount] [numeric](10) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_LABEL] PRIMARY KEY CLUSTERED ([MainlineID], [LabelID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[LABEL]
  ADD CONSTRAINT [BRANCH_LABEL] FOREIGN KEY ([MainlineID], [BranchID]) REFERENCES [dbo].[BRANCH] ([MainlineID], [BranchID])
GO

ALTER TABLE [dbo].[LABEL]
  ADD CONSTRAINT [MAINLINE_LABEL] FOREIGN KEY ([MainlineID]) REFERENCES [dbo].[MAINLINE] ([MainlineID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[LABEL]
  ADD CONSTRAINT [SCMUSERS_LABEL] FOREIGN KEY ([OwnerID]) REFERENCES [dbo].[SCMUSERS] ([idUser]) ON DELETE SET NULL
GO