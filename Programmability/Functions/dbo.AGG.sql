SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE AGGREGATE [dbo].[AGG] (@input [nvarchar](200))
RETURNS [nvarchar](1)
EXTERNAL NAME [SqlClassLibrary].[Aggregate1]
GO