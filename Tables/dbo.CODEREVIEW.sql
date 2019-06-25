CREATE TABLE [dbo].[CODEREVIEW] (
  [MainlineID] [numeric](10) NOT NULL,
  [ReviewID] [numeric](10) NOT NULL,
  [Name] [nvarchar](255) NULL,
  [Notes] [nvarchar](1024) NULL,
  [Status] [numeric](10) NULL,
  [DueDate] [datetime] NULL,
  [LastNotificationDate] [datetime] NULL,
  [HasFiles] [numeric](1) NULL,
  [Destroyed] [numeric](1) NULL DEFAULT (0),
  [Iteration] [numeric](10) NULL,
  CONSTRAINT [PK_CODEREVIEW] PRIMARY KEY CLUSTERED ([MainlineID], [ReviewID])
)
ON [PRIMARY]
GO

CREATE INDEX [IDX_CODEREVIEW_STATUS]
  ON [dbo].[CODEREVIEW] ([MainlineID], [Status])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CODEREVIEW]
  ADD CONSTRAINT [MAINLINE_CODEREVIEW] FOREIGN KEY ([MainlineID]) REFERENCES [dbo].[MAINLINE] ([MainlineID]) ON DELETE CASCADE
GO