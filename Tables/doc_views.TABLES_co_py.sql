CREATE TABLE [doc_views].[TABLES_co/py] (
  [ID] [int] NOT NULL,
  [FK_ID] [int] NULL,
  [UNIQUE_ID] [int] NULL,
  [CK_ID] [int] NULL,
  [TRIGGER_ID] [int] NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([UNIQUE_ID]),
  CONSTRAINT [CK_test_copy] CHECK ([CK_ID]>(0))
)
ON [PRIMARY]
GO

ALTER TABLE [doc_views].[TABLES_co/py]
  ADD FOREIGN KEY ([FK_ID]) REFERENCES [doc_views].[FOR_DEPENDS] ([ID])
GO