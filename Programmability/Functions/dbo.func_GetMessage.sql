SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
 
CREATE FUNCTION [dbo].[func_GetMessage] (@messageId int)
  RETURNS nvarchar(255)  
  BEGIN
    DECLARE @a INT = 10; --можно установить breakpoint
    RETURN (--можно установить breakpoint
      ISNULL((
    SELECT '%%error="' + CONVERT(varchar(11),@messageId) + '";%%:' + MessageText
    FROM tbl_message
    WHERE MessageId= @messageId
    ), 
      'Error ' + CONVERT(varchar(11), @messageId) + ' was not found in tbl_Message.')
    )
      END
 
GO