CREATE TABLE [dbo].[a_emp] (
  [id] [int] NOT NULL,
  [name] [varchar](200) NULL,
  [dept] [int] NULL,
  [c1] [nchar](10) NULL,
  CONSTRAINT [PK__a_emp__3213E83F9AC0EC69] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[a_emp]
  ADD CONSTRAINT [FK_a_emp_dept] FOREIGN KEY ([dept]) REFERENCES [dbo].[b_dept] ([id])
GO