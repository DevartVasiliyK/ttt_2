CREATE TABLE [dbo].[BRANCHFILEVERSION] (
  [MainlineID] [numeric](10) NOT NULL,
  [BranchFileID] [numeric](10) NOT NULL,
  [LocalVersion] [numeric](10) NOT NULL,
  [FileRevisionID] [numeric](10) NULL,
  [VersionTimestamp] [datetime] NULL,
  [VersionFlag] [numeric](5) NULL,
  [StateID] [numeric](10) NULL,
  [AltFileRevisionID] [numeric](10) NULL,
  [InheritedBranchID] [numeric](10) NULL,
  [PromotedFromBranchID] [numeric](10) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_BRANCHFILEVERSION] PRIMARY KEY CLUSTERED ([MainlineID], [BranchFileID], [LocalVersion])
)
ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILEVERSION_COLS_ASC]
  ON [dbo].[BRANCHFILEVERSION] ([BranchFileID], [LocalVersion], [MainlineID], [FileRevisionID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILEVERSION_COLS_ASC2]
  ON [dbo].[BRANCHFILEVERSION] ([MainlineID], [BranchFileID], [AltFileRevisionID], [FileRevisionID])
  INCLUDE ([LocalVersion], [VersionTimestamp], [VersionFlag], [StateID], [InheritedBranchID], [PromotedFromBranchID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILEVERSION_FILEREV]
  ON [dbo].[BRANCHFILEVERSION] ([MainlineID], [FileRevisionID])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[BRANCHFILEVERSION]
  ADD CONSTRAINT [BRANCHFILE_BRANCHFILEVERSION] FOREIGN KEY ([MainlineID], [BranchFileID]) REFERENCES [dbo].[BRANCHFILE] ([MainlineID], [BranchFileID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[BRANCHFILEVERSION]
  ADD CONSTRAINT [FILEREVISION_BRANCHFILEVERSION] FOREIGN KEY ([MainlineID], [FileRevisionID]) REFERENCES [dbo].[FILEREVISION] ([MainlineID], [FileRevisionID])
GO

ALTER TABLE [dbo].[BRANCHFILEVERSION]
  ADD CONSTRAINT [SCMSTATES_BRANCHFILEVERSION] FOREIGN KEY ([StateID]) REFERENCES [dbo].[SCMSTATES] ([idState]) ON DELETE SET NULL
GO