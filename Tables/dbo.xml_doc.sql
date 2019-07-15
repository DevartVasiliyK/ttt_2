CREATE TABLE [dbo].[xml_doc] (
  [id] [int] NOT NULL,
  [XML_col] [xml] NULL,
  CONSTRAINT [PK_aa_id] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO