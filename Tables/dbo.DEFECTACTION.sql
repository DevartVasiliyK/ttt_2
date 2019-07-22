CREATE TABLE [dbo].[DEFECTACTION] (
  [MainlineID] [numeric](10) NOT NULL,
  [DefectActionID] [numeric](10) NOT NULL,
  [DefectRecordID] [numeric](10) NULL,
  [DefectNumber] [numeric](10) NULL,
  [TTDbConfigID] [numeric](10) NULL,
  [TTEventRecordID] [numeric](10) NULL,
  [ParentMultiUserEventID] [numeric](10) NULL,
  [EventDefinitionID] [numeric](10) NULL,
  [EnteredEventDateTime] [datetime] NULL,
  [EventNote] [nvarchar](max) NULL,
  [EventAddOrder] [numeric](2) NULL,
  [EventTimeSpent] [float] NULL,
  [EventResultingStateID] [numeric](10) NULL,
  [EventReferenceCounter] [numeric](10) NULL,
  [EventReleaseVersion] [nvarchar](32) NULL,
  [EventGeneratedBy] [numeric](5) NULL,
  [EventCreatorID] [numeric](10) NULL,
  [EventWorkflowOverride] [numeric](1) NULL,
  [TTOverideWFUserID] [numeric](10) NULL,
  [EventDefAssignEffect] [numeric](5) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  [TTUserID] [numeric](10) NULL,
  CONSTRAINT [PK_DEFECTACTION] PRIMARY KEY CLUSTERED ([MainlineID], [DefectActionID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DEFECTACTION]
  ADD CONSTRAINT [MAINLINE_DEFECTACTION] FOREIGN KEY ([MainlineID]) REFERENCES [dbo].[MAINLINE] ([MainlineID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[DEFECTACTION]
  ADD CONSTRAINT [TTPRODBCONF_DEFECTACTION] FOREIGN KEY ([TTDbConfigID]) REFERENCES [dbo].[TTPRODBCONF] ([idTTProDbConf]) ON DELETE SET NULL
GO