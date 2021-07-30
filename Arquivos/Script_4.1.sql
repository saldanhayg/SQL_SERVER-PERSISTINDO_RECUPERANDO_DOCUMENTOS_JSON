SELECT UserPreferences FROM Application.People;
SELECT UserPreferences, JSON_MODIFY(UserPreferences,'$.color','blue') AS NewUserPreferences FROM Application.People;
SELECT UserPreferences, JSON_MODIFY(UserPreferences,'$.table.pagesize','A4') AS NewUserPreferences FROM Application.People;

SELECT UserPreferences FROM Application.People WHERE JSON_VALUE(UserPreferences,'$.theme') = 'humanity'
SELECT UserPreferences, JSON_MODIFY(UserPreferences,'$.theme','Black-tie')
FROM Application.People WHERE JSON_VALUE(UserPreferences,'$.theme') = 'humanity'