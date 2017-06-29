CREATE PARTITION FUNCTION [myRangePF2] ([varchar](10))
  AS RANGE FOR VALUES ('100', 'forge', 'test')
GO