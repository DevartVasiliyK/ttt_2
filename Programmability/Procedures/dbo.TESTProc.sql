SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[TESTProc] @col INT,/*акакак*/
@colVarname VARCHAR(13), /*акакак*/
@colVarloc VARCHAR(13) /*акакак*/
AS/*акакак*/
  CREATE TABLE #Dept (/*акакак*/
    [deptno] [int] NOT NULL/*акакак*/
   ,[dname] [varchar](15) NULL/*акакак*/
   ,[loc] [varchar](10) NULL/*акакак*/
  )/*акакак*/
  WHILE @col < 3/*акакак*/
  BEGIN/*акакак*/
    INSERT INTO #Dept/*акакак*/
      VALUES (@col, 'Deptno ' + @colVarname, 'Location ' + @colVarloc);/*акакак*/
    SET @col = @col + 1;  /*акакак*/
    SET @colVarloc = @colVarloc + 1;/*акакак*/
    SET @colVarname = @colVarname + 1;/*акакак*/
  END;/*акакак*/
/*акакак*/
GO