CREATE TABLE [doc_tables].[t_search_prop_list] (
  [ID] [int] NOT NULL,
  [name] [int] NOT NULL,
  [c_image ] [image] NULL,
  [c_varb] [varbinary](max) NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [idx_t_search_prop_list_id]
  ON [doc_tables].[t_search_prop_list] ([ID])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ui_t_search_prop_list]
  ON [doc_tables].[t_search_prop_list] ([ID])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ui_t_search_prop_list_2]
  ON [doc_tables].[t_search_prop_list] ([name])
  ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'table test Search Property List', 'SCHEMA', N'doc_tables', 'TABLE', N't_search_prop_list'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'table id column', 'SCHEMA', N'doc_tables', 'TABLE', N't_search_prop_list', 'COLUMN', N'ID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'index of table t_search_prop_list', 'SCHEMA', N'doc_tables', 'TABLE', N't_search_prop_list', 'INDEX', N'idx_t_search_prop_list_id'
GO