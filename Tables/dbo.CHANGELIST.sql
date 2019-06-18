CREATE TABLE [dbo].[CHANGELIST] (
  [MainlineID] [numeric](10) NOT NULL,
  [ChangelistID] [numeric](10) NOT NULL,
  [ChangelistName] [nvarchar](255) NULL,
  [BranchID] [numeric](10) NULL,
  [UserId] [numeric](10) NULL,
  [ComputerName] [nvarchar](64) NULL,
  [IsPending] [numeric](1) NULL,
  [DateTime] [datetime] NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_CHANGELIST] PRIMARY KEY CLUSTERED ([MainlineID], [ChangelistID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CHANGELIST]
  ADD CONSTRAINT [BRANCH_CHANGELIST] FOREIGN KEY ([MainlineID], [BranchID]) REFERENCES [dbo].[BRANCH] ([MainlineID], [BranchID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CHANGELIST]
  ADD CONSTRAINT [SCMUSERS_CHANGELIST] FOREIGN KEY ([UserId]) REFERENCES [dbo].[SCMUSERS] ([idUser]) ON DELETE SET NULL
GO