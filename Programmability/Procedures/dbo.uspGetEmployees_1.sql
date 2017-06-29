SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   PROCEDURE [dbo].[uspGetEmployees_1]   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   
  
    SET NOCOUNT ON;  
    SELECT t.ID
          ,t.FK_ID
          ,t.UNIQUE_ID
          ,t.CK_ID
          ,t.TRIGGER_ID
    FROM doc_views.TABLES t
    WHERE t.CK_ID = @FirstName AND t.CK_ID = @LastName;  
GO