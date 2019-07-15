CREATE TABLE [dbo].[TestConstraints] (
  [Id] [int] NOT NULL,
  [Column1] [varchar](255) NOT NULL,
  [Column2] [varchar](255) NULL,
  [Column3] [varchar](255) NULL,
  PRIMARY KEY CLUSTERED ([Id]),
  UNIQUE ([Column1])
)
ON [PRIMARY]
GO

CREATE INDEX [TestIndex]
  ON [dbo].[TestConstraints] ([Column2])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TestConstraints] WITH NOCHECK
  ADD CONSTRAINT [Constr_FK] FOREIGN KEY ([Column3]) REFERENCES [dbo].[TestConstraints] ([Column1])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', 'Test extended properties', 'SCHEMA', N'dbo', 'TABLE', N'TestConstraints'
GO