
DECLARE @JSON VARCHAR(MAX);

SET @JSON = '{
  "CustomerName": "Tailspin Toys (Head Office)",
  "PrimaryContact": "Waldemar Fisar",
  "AlternateContact": "Laimonis Berzins",
  "PhoneNumber": [
    "(308) 555-0100",
    "(308) 222-4436"
  ],
  "Address": {
    "Street": "1St Canal",
    "Number": 23,
    "City": "Atlanta"
  },
  "Invoices": [
    {
      "InvoiceDate": "2013-03-14",
      "InvoiceValue": 22500,
      "InvoiceProducts": [
        {
          "NameProduct": "Fruit Juice",
          "Value": 12500
        },
        {
          "NameProduct": "Ice Tea",
          "Value": 10000
        }
      ]
    },
    {
      "InvoiceDate": "2014-04-12",
      "InvoiceValue": 20000,
      "InvoiceProducts": [
        {
          "NameProduct": "Soda",
          "Value": 15000
        },
        {
          "NameProduct": "Ice Tea",
          "Value": 5000
        }
      ]
    }
  ]
}

'

SELECT @JSON;
-- SELECT JSON_VALUE(@JSON,'$.CustomerName')
-- SELECT JSON_VALUE(@JSON,'$.PhoneNumber[0]')
SELECT JSON_VALUE(@JSON, '$.Invoices[0].InvoiceProducts[0].NameProduct')