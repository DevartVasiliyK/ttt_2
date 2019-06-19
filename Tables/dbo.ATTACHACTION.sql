CREATE TABLE [dbo].[ATTACHACTION] (
  [MainlineID] [numeric](10) NOT NULL,
  [AttachActionID] [numeric](10) NOT NULL,
  [ChangelistID] [numeric](10) NULL,
  [ChangelistEventID] [numeric](10) NULL,
  [SCMFile] [nvarchar](max) NULL,
  [FileVersion] [numeric](10) NULL,
  [DefectRecordID] [numeric](10) NULL,
  [DefectNumber] [numeric](10) NULL,
  [TTDbConfigID] [numeric](10) NULL,
  [UserID] [numeric](10) NULL,
  [DTimestamp] [datetime] NOT NULL,
  [Comments] [nvarchar](max) NULL,
  [TTItemType] [numeric](10) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_ATTACHACTION] PRIMARY KEY CLUSTERED ([MainlineID], [AttachActionID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IDX_ATTACHACTION_ML_ID_DEST]
  ON [dbo].[ATTACHACTION] ([MainlineID], [ChangelistID], [Destroyed])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ATTACHACTION]
  ADD CONSTRAINT [CHANGELIST_ATTACHACTION] FOREIGN KEY ([MainlineID], [ChangelistID]) REFERENCES [dbo].[CHANGELIST] ([MainlineID], [ChangelistID])
GO

ALTER TABLE [dbo].[ATTACHACTION]
  ADD CONSTRAINT [CHANGELISTEVENT_ATTACHACTION] FOREIGN KEY ([MainlineID], [ChangelistEventID]) REFERENCES [dbo].[CHANGELISTEVENT] ([MainlineID], [ChangelistEventID])
GO

ALTER TABLE [dbo].[ATTACHACTION]
  ADD CONSTRAINT [MAINLINE_ATTACHACTION] FOREIGN KEY ([MainlineID]) REFERENCES [dbo].[MAINLINE] ([MainlineID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ATTACHACTION]
  ADD CONSTRAINT [SCMUSERS_ATTACHACTION] FOREIGN KEY ([UserID]) REFERENCES [dbo].[SCMUSERS] ([idUser]) ON DELETE SET NULL
GO

ALTER TABLE [dbo].[ATTACHACTION]
  ADD CONSTRAINT [TTPRODBCONF_ATTACHACTION] FOREIGN KEY ([TTDbConfigID]) REFERENCES [dbo].[TTPRODBCONF] ([idTTProDbConf]) ON DELETE SET NULL
GO