CREATE TABLE [dbo].[CurUsr] (
  [FullName] [varchar](512) NULL
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KEY_CurUsr_FullName]
  ON [dbo].[CurUsr] ([FullName])
  ON [PRIMARY]
GO