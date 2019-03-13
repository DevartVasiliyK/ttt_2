CREATE TABLE [dbo].[actor] (
  [actor_id] [int] IDENTITY,
  [first_name] [varchar](50) NULL,
  [last_name] [varchar](50) NULL,
  [last_update] [timestamp] NULL,
  [column6] [varchar](50) NULL,
  [column9] [int] NULL,
  CONSTRAINT [PK_table7_actor_id] PRIMARY KEY CLUSTERED ([actor_id])
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', 'привет', 'SCHEMA', N'dbo', 'TABLE', N'actor'
GO