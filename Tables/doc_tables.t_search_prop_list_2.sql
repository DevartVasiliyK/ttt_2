CREATE TABLE [doc_tables].[t_search_prop_list_2] (
  [ID] [int] NOT NULL,
  [name] [int] NOT NULL,
  [c_image ] [image] NULL,
  [c_varb] [varbinary](max) NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [idx_t_search_prop_list_id]
  ON [doc_tables].[t_search_prop_list_2] ([ID])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ui_t_search_prop_list]
  ON [doc_tables].[t_search_prop_list_2] ([ID])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ui_t_search_prop_list_2]
  ON [doc_tables].[t_search_prop_list_2] ([name])
  ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'table test Search Property List', 'SCHEMA', N'doc_tables', 'TABLE', N't_search_prop_list_2'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'table id column', 'SCHEMA', N'doc_tables', 'TABLE', N't_search_prop_list_2', 'COLUMN', N'ID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'index of table t_search_prop_list', 'SCHEMA', N'doc_tables', 'TABLE', N't_search_prop_list_2', 'INDEX', N'idx_t_search_prop_list_id'
GO