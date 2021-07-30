SELECT db_name() as 'Database',                
[Schema]. name as 'Tables.SchemaName', 
[Table]. name  as 'Tables.TableName',                
[Column]. name as 'Tables.Columns.ColumnName' 
FROM sys.objects [Table]                 
JOIN sys.schemas [Schema] on [Table]. schema_id = [Schema]. schema_id                 
JOIN sys.columns [Column] ON [Column]. object_id = [Table]. object_id 
WHERE type = 'u' and [Table]. name = 'SupplierCategories' 
FOR JSON AUTO;

SELECT db_name() as 'Database',                
[Schema]. name as 'Tables.SchemaName', 
[Table]. name  as 'Tables.TableName',                
[Column]. name as 'Tables.Columns.ColumnName' 
FROM sys.objects [Table]                 
JOIN sys.schemas [Schema] on [Table]. schema_id = [Schema]. schema_id                 
JOIN sys.columns [Column] ON [Column]. object_id = [Table]. object_id 
WHERE type = 'u' and [Table]. name = 'SupplierCategories' 
FOR JSON PATH;


SELECT TOP 3 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
WHERE [AlternateContact] IS NOT NULL
FOR JSON AUTO;

SELECT TOP 3 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
WHERE [AlternateContact] IS NOT NULL
FOR JSON PATH;







