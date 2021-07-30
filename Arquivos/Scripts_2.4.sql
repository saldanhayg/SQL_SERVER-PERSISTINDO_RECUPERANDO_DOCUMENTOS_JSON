SELECT X.* FROM (
SELECT TOP 1 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
WHERE [AlternateContact] IS NOT NULL
UNION
SELECT TOP 1 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
WHERE [AlternateContact] IS NULL) X
FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER;

SELECT TOP 1 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
WHERE [AlternateContact] IS NOT NULL
FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER;