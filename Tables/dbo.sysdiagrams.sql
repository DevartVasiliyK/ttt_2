CREATE TABLE [dbo].[sysdiagrams] (
  [name] [sysname] NOT NULL,
  [principal_id] [int] NOT NULL,
  [diagram_id] [int] IDENTITY,
  [version] [int] NULL,
  PRIMARY KEY CLUSTERED ([diagram_id]),
  CONSTRAINT [UK_principal_name] UNIQUE ([principal_id], [name])
)
ON [PRIMARY]
GO