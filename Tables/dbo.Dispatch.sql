CREATE TABLE [dbo].[Dispatch] (
  [dis_ID] [bigint] IDENTITY,
  [dis_DateGenerated] [datetime] NOT NULL,
  [dis_ScheduledDepartTime] [datetime] NOT NULL,
  [dis_Departure] [char](4) NOT NULL,
  [dis_Arrival] [char](4) NOT NULL,
  [dis_Equipment] [numeric] NOT NULL,
  [dis_RDAvailable] [bit] NULL,
  [dis_Callsign] [nchar](10) NOT NULL,
  [dis_FiledRoute] [nvarchar](max) NOT NULL,
  [dis_Priority] [int] NULL,
  [dis_Status] [int] NOT NULL,
  [dis_Comments] [varchar](max) NULL,
  [dis_DistanceFlown] [float] NULL,
  [dis_FlightDuration] [float] NULL,
  [dis_TotalFuelBurned] [float] NULL,
  [dis_TotalFuelLoaded] [float] NULL,
  [dis_Payload] [float] NULL,
  [dis_ZeroFuelWeight] [float] NULL,
  [dis_ClosureCode] [smallint] NULL,
  [dis_MechanicalProblems] [smallint] NULL,
  [dis_DivertAirport] [char](4) NULL,
  [dis_DivertReason] [smallint] NULL,
  [dis_LandingCount] [int] NULL,
  [dis_LastLandingTime] [datetime] NULL,
  [dis_LastEventHit] [bit] NULL,
  [dis_Delayed] [int] NULL,
  [dis_DelayedUnits] [smallint] NULL,
  [test] [varchar](50) NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO