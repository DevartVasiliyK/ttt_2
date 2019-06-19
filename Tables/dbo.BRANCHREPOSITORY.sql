CREATE TABLE [dbo].[BRANCHREPOSITORY] (
  [MainlineID] [numeric](10) NOT NULL,
  [BranchRepoID] [numeric](10) NOT NULL,
  [RepositoryID] [numeric](10) NULL,
  [Deleted] [numeric](1) NULL,
  [Excluded] [numeric](1) NULL,
  [RepositoryName] [nvarchar](max) NULL,
  [BranchID] [numeric](10) NULL,
  [TimeLastRenamed] [datetime] NULL,
  [WorkflowSettings] [char](1) NULL,
  [UseWorkflowID] [numeric](10) NULL,
  [ParentBranchRepoID] [numeric](10) NULL,
  [InheritTTIntegrSettings] [numeric](1) NULL,
  [TTIntegrOverrideDefault] [numeric](1) NULL,
  [TTIntegrDbConfigID] [numeric](10) NULL,
  [TTIntegrDefectOption] [numeric](1) NULL,
  [TTIntegrRequirementOption] [numeric](1) NULL,
  [TTIntegrTestcaseOption] [numeric](1) NULL,
  [InheritCodeReviewSettings] [numeric](1) NULL,
  [CodeReviewCheckinOption] [numeric](1) NULL,
  [CodeReviewAddOption] [numeric](1) NULL,
  [Comments] [nvarchar](max) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  CONSTRAINT [PK_BRANCHREPOSITORY] PRIMARY KEY CLUSTERED ([MainlineID], [BranchRepoID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHREPOSITORY_FULL]
  ON [dbo].[BRANCHREPOSITORY] ([BranchID], [MainlineID], [Destroyed], [TTIntegrDbConfigID], [BranchRepoID])
  INCLUDE ([RepositoryID], [Deleted], [Excluded], [RepositoryName], [TimeLastRenamed], [WorkflowSettings], [UseWorkflowID], [ParentBranchRepoID], [InheritTTIntegrSettings], [TTIntegrOverrideDefault], [TTIntegrDefectOption], [TTIntegrTestcaseOption], [TTIntegrRequirementOption], [InheritCodeReviewSettings], [CodeReviewCheckinOption], [CodeReviewAddOption], [Comments])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHREPOSITORY_ML_PARENTID]
  ON [dbo].[BRANCHREPOSITORY] ([MainlineID], [ParentBranchRepoID])
  ON [PRIMARY]
GO

CREATE INDEX [IDX_BRANCHREPOSITORY_REPOID]
  ON [dbo].[BRANCHREPOSITORY] ([MainlineID], [RepositoryID])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[BRANCHREPOSITORY]
  ADD CONSTRAINT [BRANCH_BRANCHREPOSITORY] FOREIGN KEY ([MainlineID], [BranchID]) REFERENCES [dbo].[BRANCH] ([MainlineID], [BranchID])
GO

ALTER TABLE [dbo].[BRANCHREPOSITORY]
  ADD CONSTRAINT [BRANCHREPOSITORY_BRANCHREPO] FOREIGN KEY ([MainlineID], [ParentBranchRepoID]) REFERENCES [dbo].[BRANCHREPOSITORY] ([MainlineID], [BranchRepoID])
GO

ALTER TABLE [dbo].[BRANCHREPOSITORY]
  ADD CONSTRAINT [REPOSITORY_BRANCHREPOSITORY] FOREIGN KEY ([MainlineID], [RepositoryID]) REFERENCES [dbo].[REPOSITORY] ([MainlineID], [RepositoryID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[BRANCHREPOSITORY]
  ADD CONSTRAINT [SCMWORKFLOWS_BRANCHREPOSITORY] FOREIGN KEY ([UseWorkflowID]) REFERENCES [dbo].[SCMWORKFLOWS] ([idWorkFlow]) ON DELETE SET NULL
GO

ALTER TABLE [dbo].[BRANCHREPOSITORY]
  ADD CONSTRAINT [TTPRODBCONF_BRANCHREPOSITORY] FOREIGN KEY ([TTIntegrDbConfigID]) REFERENCES [dbo].[TTPRODBCONF] ([idTTProDbConf]) ON DELETE SET NULL
GO