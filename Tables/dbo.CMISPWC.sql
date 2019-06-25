CREATE TABLE [dbo].[CMISPWC] (
  [MainlineID] [numeric](10) NOT NULL,
  [BranchFileID] [numeric](10) NOT NULL,
  [UserID] [numeric](10) NOT NULL,
  [FileBranchedFlag] [numeric](1) NULL,
  [FileRevisionID] [numeric](10) NULL,
  CONSTRAINT [PK_CMISPWC] PRIMARY KEY CLUSTERED ([MainlineID], [BranchFileID], [UserID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CMISPWC]
  ADD CONSTRAINT [BRANCHFILE_CMISPWC] FOREIGN KEY ([MainlineID], [BranchFileID]) REFERENCES [dbo].[BRANCHFILE] ([MainlineID], [BranchFileID])
GO

ALTER TABLE [dbo].[CMISPWC]
  ADD CONSTRAINT [FILEREVISION_CMISPWC] FOREIGN KEY ([MainlineID], [FileRevisionID]) REFERENCES [dbo].[FILEREVISION] ([MainlineID], [FileRevisionID])
GO

ALTER TABLE [dbo].[CMISPWC]
  ADD CONSTRAINT [SCMUSERS_CMISPWC] FOREIGN KEY ([UserID]) REFERENCES [dbo].[SCMUSERS] ([idUser]) ON DELETE CASCADE
GO