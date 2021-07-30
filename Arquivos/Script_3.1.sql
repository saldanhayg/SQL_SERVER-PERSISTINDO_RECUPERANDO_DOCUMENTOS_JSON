SELECT * FROM SALES.Invoices;

SELECT ConfirmedReceivedBy, ReturnedDeliveryData 
,ISJSON(ConfirmedReceivedBy), ISJSON(ReturnedDeliveryData) 
FROM SALES.Invoices;

SELECT ISJSON('{"NOME":"JOÃO"')



SET NOCOUNT ON; 
DECLARE @SQL nvarchar(1000) 
IF (OBJECT_ID('tempdb.dbo.# Result')) IS NOT NULL                 
DROP TABLE #Result
CREATE TABLE #Result (tblName nvarchar( 200),                                 
clmnName nvarchar( 100),                                 
DateType nvarchar( 100),                                 
JSONDoc nvarchar( MAX),) 

DECLARE cur CURSOR                 
FOR SELECT 'SELECT TOP (1) ''' + QUOTENAME(s.name) +'.' + QUOTENAME(o.name) + ''' as TblName, ''' + QUOTENAME(c.name)     
+ ''' as ClmName, ''' + t.name     + QUOTENAME( case c.max_length when -1 then 'MAX' ELSE 
cast( c.max_length as varchar( 5)) END , ')') + ''' as DataType, ' + QUOTENAME( c.name)     
+ ' FROM '                 
+ QUOTENAME( s.name) +'.' + QUOTENAME( o.name) +                
' WHERE ISJSON(' + QUOTENAME( c.name)     + ') = 1;' 
FROM sys.columns c JOIN sys.types t on c.system_type_id = t.system_type_id                 
JOIN sys.objects o ON c.object_id = o.object_id AND o.type = 'u'                 
JOIN sys.schemas s ON s.schema_id = o.schema_id WHERE t.name IN(' varchar', 'nvarchar')                                 
AND (c.max_length = -1 OR c.max_length > 100) 

OPEN cur FETCH NEXT FROM cur INTO @SQL 
WHILE @@FETCH_STATUS = 0 
  BEGIN                 
    print @SQL                 
    INSERT #Result                 
    EXEC(@SQL)                 
    FETCH NEXT FROM cur INTO @SQL
  END 
DEALLOCATE cur; 
SELECT JSONDoc, tblName, clmnName, DateType FROM #Result 
ORDER BY tblName, clmnName 
DROP TABLE #Result 
SET NOCOUNT OFF;