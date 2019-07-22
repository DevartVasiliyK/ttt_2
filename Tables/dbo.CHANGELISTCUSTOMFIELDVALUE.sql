CREATE TABLE [dbo].[CHANGELISTCUSTOMFIELDVALUE] (
  [MainlineID] [numeric](10) NOT NULL,
  [ChangelistEventID] [numeric](10) NOT NULL,
  [CustomFieldID] [numeric](10) NOT NULL,
  [ChangelistID] [numeric](10) NOT NULL,
  [TextValue] [nvarchar](255) NULL,
  [IntegerValue] [numeric](10) NULL,
  [DoubleValue] [float] NULL,
  [DateTimeValue] [datetime] NULL,
  [CheckBoxValue] [numeric](1) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_CHANGELISTCUSTOMFIELDVALUE] PRIMARY KEY CLUSTERED ([MainlineID], [ChangelistEventID], [CustomFieldID])
)
ON [PRIMARY]
GO

CREATE INDEX [IDX_CHANGELISTCUSTOMFIELDVALUE_1]
  ON [dbo].[CHANGELISTCUSTOMFIELDVALUE] ([MainlineID], [ChangelistID])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CHANGELISTCUSTOMFIELDVALUE]
  ADD CONSTRAINT [CHANGELISTEVENT_CHGCUSFLDV] FOREIGN KEY ([MainlineID], [ChangelistEventID]) REFERENCES [dbo].[CHANGELISTEVENT] ([MainlineID], [ChangelistEventID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CHANGELISTCUSTOMFIELDVALUE]
  ADD CONSTRAINT [SCMCUSTOMFLDS_CHGCUSFLDV] FOREIGN KEY ([CustomFieldID]) REFERENCES [dbo].[SCMCUSTOMFLDS] ([idCustomField]) ON DELETE CASCADE
GO