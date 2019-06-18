CREATE TABLE [dbo].[MAINLINE] (
  [MainlineID] [numeric](10) NOT NULL,
  [MainlineName] [nvarchar](128) NULL,
  [MainlineUUID] [nvarchar](114) NULL,
  [Disassociated] [numeric](1) NULL,
  [MainlineVers] [nvarchar](30) NULL,
  [LoadBranch] [nvarchar](1024) NULL,
  [NameCaseSensitive] [numeric](1) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_MAINLINE] PRIMARY KEY CLUSTERED ([MainlineID])
)
ON [PRIMARY]
GO

CREATE INDEX [IDX_MAINLINE_UUID]
  ON [dbo].[MAINLINE] ([MainlineUUID])
  ON [PRIMARY]
GO