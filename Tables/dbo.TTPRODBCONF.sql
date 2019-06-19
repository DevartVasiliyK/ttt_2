CREATE TABLE [dbo].[TTPRODBCONF] (
  [idTTProDbConf] [numeric](10) NOT NULL,
  [ConfigName] [nvarchar](128) NULL,
  [DisplayOrder] [numeric](5) NULL,
  [TTServerIP] [nvarchar](512) NULL,
  [TTServerPort] [numeric](5) NULL,
  [TTDbName] [nvarchar](128) NULL,
  [TTDbID] [numeric](10) NULL,
  [TTProjUUID] [nvarchar](38) NULL,
  [TTPublicKey] [nvarchar](1024) NULL,
  CONSTRAINT [PK_TTPRODBCONF] PRIMARY KEY CLUSTERED ([idTTProDbConf])
)
ON [PRIMARY]
GO