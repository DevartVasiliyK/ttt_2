CREATE TABLE [dbo].[CHANGELISTEVENT] (
  [MainlineID] [numeric](10) NOT NULL,
  [ChangelistEventID] [numeric](10) NOT NULL,
  [ChangelistID] [numeric](10) NULL,
  [EventType] [numeric](3) NULL,
  [MachineName] [nvarchar](255) NULL,
  [FileVersion] [numeric](10) NULL,
  [BranchRepoID] [numeric](10) NULL,
  [BranchFileID] [numeric](10) NULL,
  [OrigBranchName] [nvarchar](255) NULL,
  [OrigRepoName] [nvarchar](1024) NULL,
  [OrigFileName] [nvarchar](255) NULL,
  [KeepCheckoutOrBitMask] [numeric](1) NULL,
  [LocalFileOrNewName] [nvarchar](1024) NULL,
  [ExclusiveLock] [numeric](1) NULL,
  [DoNotReturnCopy] [numeric](1) NULL,
  [EOLFormat] [char](1) NULL,
  [FileType] [numeric](2) NULL,
  [FileModifiedTime] [datetime] NULL,
  [UndeleteAndCheckinIfDeleted] [numeric](1) NULL,
  [MakeFileWritable] [numeric](1) NULL,
  [LabelID] [numeric](10) NULL,
  [AllowLabelOverride] [numeric](1) NULL,
  [FileStateID] [numeric](10) NULL,
  [ForceCheckinWOMerge] [numeric](1) NULL,
  [UpdateIfNoChange] [numeric](1) NULL,
  [RemoveLocalFile] [numeric](1) NULL,
  [MergedVersion] [numeric](10) NULL,
  [ModifiedVersion] [numeric](10) NULL,
  [Comments] [nvarchar](max) NULL,
  [RollbackEventID] [numeric](10) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_CHANGELISTEVENT] PRIMARY KEY CLUSTERED ([MainlineID], [ChangelistEventID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IDX_CHANGELISTEVENT_ML_BRANCHFILE]
  ON [dbo].[CHANGELISTEVENT] ([MainlineID], [BranchFileID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_CHANGELISTEVENT_ML_BRANCHREPO]
  ON [dbo].[CHANGELISTEVENT] ([MainlineID], [BranchRepoID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_CL_ML_CLID_DESTROYED]
  ON [dbo].[CHANGELISTEVENT] ([MainlineID], [ChangelistID], [Destroyed])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CHANGELISTEVENT]
  ADD CONSTRAINT [BRANCHFILE_CHANGELISTEVENT] FOREIGN KEY ([MainlineID], [BranchFileID]) REFERENCES [dbo].[BRANCHFILE] ([MainlineID], [BranchFileID])
GO

ALTER TABLE [dbo].[CHANGELISTEVENT]
  ADD CONSTRAINT [BRANCHREPOSITORY_CHGEVENT] FOREIGN KEY ([MainlineID], [BranchRepoID]) REFERENCES [dbo].[BRANCHREPOSITORY] ([MainlineID], [BranchRepoID])
GO

ALTER TABLE [dbo].[CHANGELISTEVENT]
  ADD CONSTRAINT [CHANGELIST_CHANGELISTEVENT] FOREIGN KEY ([MainlineID], [ChangelistID]) REFERENCES [dbo].[CHANGELIST] ([MainlineID], [ChangelistID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CHANGELISTEVENT]
  ADD CONSTRAINT [LABEL_CHANGELISTEVENT] FOREIGN KEY ([MainlineID], [LabelID]) REFERENCES [dbo].[LABEL] ([MainlineID], [LabelID])
GO

ALTER TABLE [dbo].[CHANGELISTEVENT]
  ADD CONSTRAINT [SCMSTATES_CHANGELISTEVENT] FOREIGN KEY ([FileStateID]) REFERENCES [dbo].[SCMSTATES] ([idState]) ON DELETE SET NULL
GO