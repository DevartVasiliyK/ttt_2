CREATE TABLE [dbo].[FILEREVISION] (
  [MainlineID] [numeric](10) NOT NULL,
  [FileRevisionID] [numeric](10) NOT NULL,
  [FileID] [numeric](10) NOT NULL,
  [Revision] [nvarchar](256) NULL,
  [ParentRevisionID] [numeric](10) NULL,
  [ArchiveDate] [datetime] NULL,
  [ModifyDate] [datetime] NULL,
  [FileSize] [bigint] NULL,
  [FileCRC] [numeric](10) NULL,
  [DeltaCount] [numeric](10) NULL,
  [DeltaChunkSize] [numeric](10) NULL,
  [DeltaSize] [bigint] NULL,
  [DeltaCRC] [numeric](10) NULL,
  [DeltaEOLType] [numeric](1) NULL,
  [TextCRC] [numeric](10) NULL,
  [NextBranchNum] [numeric](10) NULL,
  [Username] [nvarchar](max) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_FILEREVISION] PRIMARY KEY CLUSTERED ([MainlineID], [FileRevisionID]),
  CONSTRAINT [TUC_FILEREVISION_1] UNIQUE ([MainlineID], [FileID], [Revision])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IDX_FILEREVISION_1]
  ON [dbo].[FILEREVISION] ([MainlineID], [FileID], [Revision])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_FILEREVISION_ML_FRVID]
  ON [dbo].[FILEREVISION] ([MainlineID], [FileRevisionID])
  INCLUDE ([Revision])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_FILEREVISION_ML_FRVID_ASC]
  ON [dbo].[FILEREVISION] ([MainlineID], [FileRevisionID])
  INCLUDE ([ArchiveDate], [ModifyDate], [FileSize])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_FILEREVISION_ML_FRVID2]
  ON [dbo].[FILEREVISION] ([MainlineID], [FileRevisionID])
  INCLUDE ([Revision], [ArchiveDate], [ModifyDate], [FileSize], [FileCRC], [TextCRC])
  ON [PRIMARY]
GO