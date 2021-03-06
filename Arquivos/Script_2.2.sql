/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT TOP 2 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers];

SELECT TOP 2 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
FOR JSON AUTO;

SELECT db_name() as [Database],                 
sys.schemas.name,                 
sys.objects.name,                 
sys.columns.name FROM sys.objects 
JOIN sys.schemas on sys.objects.schema_id = sys.schemas.schema_id 
JOIN sys.columns ON sys.columns.object_id =
sys.objects.object_id JOIN ( SELECT TOP (1) o.object_id, count( c.name) [name]                 
FROM sys.columns c                                 
JOIN sys.objects o ON c.object_id = o.object_id WHERE type = 'u'                 
GROUP BY o.object_id HAVING COUNT( c.name) < 6                  )     
countCol                 
ON countCol.object_id = sys.objects.object_id 
WHERE type = 'u' 
FOR JSON AUTO; 