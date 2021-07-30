
SELECT * FROM SALES.Invoices;
SELECT ReturnedDeliveryData FROM SALES.Invoices;
SELECT JSON_VALUE(ReturnedDeliveryData,'$.Events[0].Event') AS Event
FROM SALES.Invoices;

SELECT JSON_VALUE(ReturnedDeliveryData,'$.Events[0].Event') AS Event_0
,JSON_VALUE(ReturnedDeliveryData,'$.Events[0].EventTime') AS EventTime_0
,JSON_VALUE(ReturnedDeliveryData,'$.Events[0].ConNote') AS ConNote_0
FROM SALES.Invoices;

SELECT JSON_VALUE(ReturnedDeliveryData,'$.Events[0].Event') AS Event_0
,JSON_VALUE(ReturnedDeliveryData,'$.Events[0].EventTime') AS EventTime_0
,JSON_VALUE(ReturnedDeliveryData,'$.Events[0].ConNote') AS ConNote_0
,JSON_VALUE(ReturnedDeliveryData,'$.Events[1].Event') AS Event_1
,JSON_VALUE(ReturnedDeliveryData,'$.Events[1].EventTime') AS EventTime_1
,JSON_VALUE(ReturnedDeliveryData,'$.Events[1].ConNote') AS ConNote_1
,JSON_VALUE(ReturnedDeliveryData,'$.Events[1].DriverID') AS DriverID
,JSON_VALUE(ReturnedDeliveryData,'$.Events[1].Status') AS ConNote_1
FROM SALES.Invoices;

SELECT JSON_VALUE(ReturnedDeliveryData,'$.Events[1].DriverID') AS DRIVERID, * FROM SALES.Invoices
WHERE JSON_VALUE(ReturnedDeliveryData,'$.Events[1].DriverID') = 17



