
SELECT CustomFields FROM Application.People
WHERE Fullname = 'Isabella Rupp';

SELECT CustomFields, 
JSON_MODIFY(CustomFields, '$.OtherLanguages', 'Greek') as NEW_JSON FROM Application.People
WHERE Fullname = 'Isabella Rupp';

SELECT CustomFields, 
JSON_MODIFY(CustomFields, 'append $.OtherLanguages', 'Greek') as NEW_JSON FROM Application.People
WHERE Fullname = 'Isabella Rupp';