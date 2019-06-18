﻿CREATE TABLE [dbo].[REPOSITORY] (
  [MainlineID] [numeric](10) NOT NULL,
  [RepositoryID] [numeric](10) NOT NULL,
  [ParentRepoID] [numeric](10) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_REPOSITORY] PRIMARY KEY CLUSTERED ([MainlineID], [RepositoryID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[REPOSITORY]
  ADD CONSTRAINT [MAINLINE_REPOSITORY] FOREIGN KEY ([MainlineID]) REFERENCES [dbo].[MAINLINE] ([MainlineID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[REPOSITORY]
  ADD CONSTRAINT [REPOSITORY_REPOSITORY] FOREIGN KEY ([MainlineID], [ParentRepoID]) REFERENCES [dbo].[REPOSITORY] ([MainlineID], [RepositoryID])
GO