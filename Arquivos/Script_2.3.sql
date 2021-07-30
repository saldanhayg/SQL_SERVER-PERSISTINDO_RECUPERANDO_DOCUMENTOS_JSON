SELECT TOP 2 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
WHERE [AlternateContact] IS NULL
FOR JSON AUTO;

SELECT TOP 2 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
WHERE [AlternateContact] IS NULL
FOR JSON AUTO, INCLUDE_NULL_VALUES;

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
FOR JSON AUTO, INCLUDE_NULL_VALUES;


