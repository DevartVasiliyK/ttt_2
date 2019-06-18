CREATE TABLE [dbo].[crop_application3] (
  [id] [int] IDENTITY,
  [sequence_number] [int] NULL,
  [record_created_date_time] [datetime] NULL,
  [crop_season_year] [char](10) NULL,
  CONSTRAINT [PK_crop_application3_id] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO