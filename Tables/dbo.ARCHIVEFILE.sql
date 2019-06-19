CREATE TABLE [dbo].[ARCHIVEFILE] (
  [MainlineID] [numeric](10) NOT NULL,
  [FileID] [numeric](10) NOT NULL,
  [OrigRepoID] [numeric](10) NOT NULL,
  [OrigFileName] [nvarchar](255) NOT NULL,
  [FileType] [numeric](2) NOT NULL,
  [Destroyed] [numeric](1) NULL,
  CONSTRAINT [PK_ARCHIVEFILE] PRIMARY KEY CLUSTERED ([MainlineID], [FileID])
)
ON [PRIMARY]
GO

CREATE INDEX [IDX_ARCHIVEFILE_ML_FID_ASC]
  ON [dbo].[ARCHIVEFILE] ([MainlineID], [FileID])
  INCLUDE ([FileType])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ARCHIVEFILE]
  ADD CONSTRAINT [MAINLINE_ARCHIVEFILE] FOREIGN KEY ([MainlineID]) REFERENCES [dbo].[MAINLINE] ([MainlineID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ARCHIVEFILE]
  ADD CONSTRAINT [REPOSITORY_ARCHIVEFILE] FOREIGN KEY ([MainlineID], [OrigRepoID]) REFERENCES [dbo].[REPOSITORY] ([MainlineID], [RepositoryID])
GO