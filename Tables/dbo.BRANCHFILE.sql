CREATE TABLE [dbo].[BRANCHFILE] (
  [MainlineID] [numeric](10) NOT NULL,
  [BranchFileID] [numeric](10) NOT NULL,
  [BranchRepoID] [numeric](10) NULL,
  [FileID] [numeric](10) NULL,
  [Deleted] [numeric](1) NULL,
  [StatusFlag] [numeric](10) NULL,
  [FileName] [nvarchar](255) NULL,
  [CurrentVersion] [numeric](10) NULL,
  [ExpandKeywordOption] [char](1) NULL,
  [TimeLastRenamed] [datetime] NULL,
  [ShareBaseBranchFileID] [numeric](10) NULL,
  [InheritedFileRevisionID] [numeric](10) NULL,
  [InheritedStateID] [numeric](10) NULL,
  [InheritedBranchFileID] [numeric](10) NULL,
  [InheritedVersion] [numeric](10) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_BRANCHFILE] PRIMARY KEY CLUSTERED ([MainlineID], [BranchFileID])
)
ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_BRANCHFILE]
  ON [dbo].[BRANCHFILE] ([MainlineID], [InheritedBranchFileID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_BRANCHREPO]
  ON [dbo].[BRANCHFILE] ([MainlineID], [BranchRepoID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_COLS_ASC]
  ON [dbo].[BRANCHFILE] ([MainlineID], [BranchRepoID], [Destroyed], [BranchFileID], [CurrentVersion], [FileID])
  INCLUDE ([Deleted], [StatusFlag], [FileName], [ExpandKeywordOption], [TimeLastRenamed])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_FILE_REPO_DEST]
  ON [dbo].[BRANCHFILE] ([MainlineID], [FileID], [BranchRepoID], [Destroyed])
  INCLUDE ([BranchFileID], [Deleted], [StatusFlag], [FileName], [ShareBaseBranchFileID], [CurrentVersion])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_FILEID]
  ON [dbo].[BRANCHFILE] ([MainlineID], [FileID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_FILEREVISION]
  ON [dbo].[BRANCHFILE] ([MainlineID], [InheritedFileRevisionID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_FULL]
  ON [dbo].[BRANCHFILE] ([BranchRepoID], [MainlineID], [BranchFileID], [FileID], [Destroyed], [CurrentVersion])
  INCLUDE ([Deleted], [StatusFlag], [FileName], [ExpandKeywordOption], [TimeLastRenamed], [ShareBaseBranchFileID], [InheritedFileRevisionID], [InheritedStateID], [InheritedBranchFileID], [InheritedVersion])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_ML_SBASE_BF]
  ON [dbo].[BRANCHFILE] ([MainlineID], [ShareBaseBranchFileID], [BranchFileID])
  INCLUDE ([BranchRepoID], [FileName])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHFILE_SHAREBASE]
  ON [dbo].[BRANCHFILE] ([MainlineID], [ShareBaseBranchFileID])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[BRANCHFILE]
  ADD CONSTRAINT [ARCHIVEFILE_BRANCHFILE] FOREIGN KEY ([MainlineID], [FileID]) REFERENCES [dbo].[ARCHIVEFILE] ([MainlineID], [FileID])
GO

ALTER TABLE [dbo].[BRANCHFILE]
  ADD CONSTRAINT [BRANCHFILE_BRANCHFILE] FOREIGN KEY ([MainlineID], [InheritedBranchFileID]) REFERENCES [dbo].[BRANCHFILE] ([MainlineID], [BranchFileID])
GO

ALTER TABLE [dbo].[BRANCHFILE]
  ADD CONSTRAINT [BRANCHREPOSITORY_BRANCHFILE] FOREIGN KEY ([MainlineID], [BranchRepoID]) REFERENCES [dbo].[BRANCHREPOSITORY] ([MainlineID], [BranchRepoID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[BRANCHFILE]
  ADD CONSTRAINT [FILEREVISION_BRANCHFILE] FOREIGN KEY ([MainlineID], [InheritedFileRevisionID]) REFERENCES [dbo].[FILEREVISION] ([MainlineID], [FileRevisionID])
GO