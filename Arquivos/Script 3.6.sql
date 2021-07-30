SELECT * FROM Application.People;

SELECT JSON_VALUE(UserPreferences,'$.theme') AS theme
,JSON_VALUE(UserPreferences,'$.dateFormat') AS dateFormat
,JSON_VALUE(UserPreferences,'$.timeZone') AS timeZone
,JSON_VALUE(UserPreferences,'$.table.pagingType') AS pagingType
,JSON_VALUE(UserPreferences,'$.table.pageLength') AS pageLength
,JSON_VALUE(UserPreferences,'$.favoritesOnDashboard') AS favoriteOnDashboard
FROM Application.People;

SELECT 
UserPref.theme
,UserPref.timeZone
,UserPref.pagingType
,UserPref.pageLength
,UserPref.favoriteOnDashboard
FROM Application.People
CROSS APPLY OPENJSON(UserPreferences)
WITH
(theme VARCHAR(20) '$.theme'
,dateFormat VARCHAR(20) '$.dateFormat'
,timeZone VARCHAR(20) '$.timeZone'
,pagingType VARCHAR(20) '$.table.pagingType'
,pageLength int '$.table.pageLength'
,favoriteOnDashboard bit '$.favoritesOnDashboard'
) AS UserPref;