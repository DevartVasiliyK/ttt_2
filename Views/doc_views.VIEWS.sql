﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   VIEW [doc_views].[VIEWS] WITH SCHEMABINDING
AS
SELECT
  t.ID
 ,t.FK_ID
 ,t.UNIQUE_ID
 ,t.CK_ID
 ,t.TRIGGER_ID
FROM doc_views.TABLES t

GO

SET QUOTED_IDENTIFIER ON
GO

CREATE UNIQUE CLUSTERED INDEX [IDX_V1]
  ON [doc_views].[VIEWS] ([ID], [FK_ID])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   TRIGGER [TRG_VIEWS]
ON [doc_views].[VIEWS]
INSTEAD OF INSERT
AS
  SET NOCOUNT OFF;

GO