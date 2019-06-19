CREATE TABLE [dbo].[BOOKMARKS] (
  [idBookmark] [numeric](10) NOT NULL,
  [Type] [numeric](10) NOT NULL,
  [idUser] [numeric](10) NULL,
  [Name] [nvarchar](32) NOT NULL,
  [Description] [nvarchar](512) NULL,
  [BranchName] [nvarchar](255) NOT NULL,
  [RepoPath] [nvarchar](2048) NOT NULL,
  [DisplayOrder] [numeric](10) NULL,
  CONSTRAINT [PK_BOOKMARKS] PRIMARY KEY CLUSTERED ([idBookmark])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[BOOKMARKS]
  ADD CONSTRAINT [SCMUSERS_BOOKMARKS] FOREIGN KEY ([idUser]) REFERENCES [dbo].[SCMUSERS] ([idUser]) ON DELETE CASCADE
GO