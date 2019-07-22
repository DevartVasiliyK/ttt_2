CREATE TABLE [dbo].[SCMCUSTOMFLDS] (
  [idCustomField] [numeric](10) NOT NULL,
  [Deleted] [numeric](1) NULL,
  [Name] [nvarchar](128) NOT NULL,
  [Type] [numeric](5) NULL,
  [DisplayOrder] [numeric](10) NULL,
  [FieldCode] [nvarchar](128) NULL,
  [DfltNotSet] [numeric](1) NULL,
  [Limits] [nvarchar](max) NULL,
  [DfltIntValue] [numeric](10) NULL,
  [DfltTextValue] [nvarchar](max) NULL,
  [DfltDateValue] [datetime] NULL,
  [DfltBoolValue] [numeric](1) NULL,
  [DfltDoubleValue] [float] NULL,
  CONSTRAINT [PK_SCMCUSTOMFLDS] PRIMARY KEY CLUSTERED ([idCustomField])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO