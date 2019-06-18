CREATE TABLE [dbo].[BRANCH] (
  [MainlineID] [numeric](10) NOT NULL,
  [BranchID] [numeric](10) NOT NULL,
  [Deleted] [numeric](1) NULL,
  [BranchName] [nvarchar](255) NULL,
  [BranchType] [numeric](2) NULL,
  [OwnerID] [numeric](10) NULL,
  [ParentBranchID] [numeric](10) NULL,
  [BaseRepositoryID] [numeric](10) NULL,
  [DateCreated] [datetime] NULL,
  [DateModified] [datetime] NULL,
  [BranchFlag] [numeric](10) NULL,
  [SecuritySettings] [numeric](1) NULL,
  [BasePath] [nvarchar](1024) NULL,
  [DateAccessed] [datetime] NULL,
  [Destroyed] [numeric](1) NULL,
  [Comments] [nvarchar](max) NULL,
  CONSTRAINT [PK_BRANCH] PRIMARY KEY CLUSTERED ([MainlineID], [BranchID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[BRANCH]
  ADD CONSTRAINT [BRANCH_BRANCH] FOREIGN KEY ([MainlineID], [ParentBranchID]) REFERENCES [dbo].[BRANCH] ([MainlineID], [BranchID])
GO

ALTER TABLE [dbo].[BRANCH]
  ADD CONSTRAINT [MAINLINE_BRANCH] FOREIGN KEY ([MainlineID]) REFERENCES [dbo].[MAINLINE] ([MainlineID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[BRANCH]
  ADD CONSTRAINT [REPOSITORY_BRANCH] FOREIGN KEY ([MainlineID], [BaseRepositoryID]) REFERENCES [dbo].[REPOSITORY] ([MainlineID], [RepositoryID])
GO

ALTER TABLE [dbo].[BRANCH]
  ADD CONSTRAINT [SCMUSERS_BRANCH] FOREIGN KEY ([OwnerID]) REFERENCES [dbo].[SCMUSERS] ([idUser]) ON DELETE SET NULL
GO