CREATE TABLE [dbo].[SCMUSERS] (
  [idUser] [numeric](10) NOT NULL,
  [Username] [nvarchar](max) NULL,
  [TTProUsername] [nvarchar](max) NULL,
  [TTProPassword] [nvarchar](max) NULL,
  [ExternalIssueUsername] [nvarchar](255) NULL,
  [ExternalIssuePassword] [nvarchar](2721) NULL,
  CONSTRAINT [PK_SCMUSERS] PRIMARY KEY CLUSTERED ([idUser])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO