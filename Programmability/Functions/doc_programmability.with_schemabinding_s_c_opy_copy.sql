SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   FUNCTION [doc_programmability].[with_schemabinding_s_c/opy_copy] (@id INT,
@varchar VARCHAR(255) = '%')
RETURNS NVARCHAR(255) WITH SCHEMABINDING
AS
BEGIN
  DECLARE @txt NVARCHAR(255)
  SET @txt = (SELECT
      ID
    FROM doc_tables.FOR_DEPENDS
    WHERE ID = @id)
  RETURN @txt
END
GO