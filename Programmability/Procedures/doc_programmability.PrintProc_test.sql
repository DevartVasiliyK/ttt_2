﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE   PROCEDURE [doc_programmability].[PrintProc_test]
AS
BEGIN
  PRINT 'TEST';
END;
GO