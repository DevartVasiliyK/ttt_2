CREATE TABLE [dbo].[table1] (
  [column1] [varchar](50) NOT NULL,
  [column2] [varchar](50) NOT NULL,
  CONSTRAINT [PK_table1] PRIMARY KEY CLUSTERED ([column1], [column2]) WITH (ALLOW_ROW_LOCKS = OFF),
  CONSTRAINT [KEY_table1_column2] UNIQUE ([column1]) WITH (PAD_INDEX = ON, IGNORE_DUP_KEY = ON) ON [u_File_group],
  CONSTRAINT [CK_table1] CHECK ([column1]>(1)),
  CONSTRAINT [CK_table12] CHECK ([column1]<(1))
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[table1]
  ADD CONSTRAINT [FK_table1_column1] FOREIGN KEY ([column1]) REFERENCES [doc_tables].[table3] ([column1])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'fff', 'SCHEMA', N'dbo', 'TABLE', N'table1'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'кк', 'SCHEMA', N'dbo', 'TABLE', N'table1', 'CONSTRAINT', N'KEY_table1_column2'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'fk', 'SCHEMA', N'dbo', 'TABLE', N'table1', 'CONSTRAINT', N'PK_table1'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'ff', 'SCHEMA', N'dbo', 'TABLE', N'table1', 'CONSTRAINT', N'CK_table1'
GO