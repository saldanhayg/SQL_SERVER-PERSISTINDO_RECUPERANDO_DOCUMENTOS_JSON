SELECT TOP 2 [CustomerName]
      ,[PrimaryContact]
      ,[AlternateContact]
      ,[PhoneNumber]
FROM [WideWorldImporters].[Website].[Customers]
FOR JSON AUTO, ROOT('Customer');