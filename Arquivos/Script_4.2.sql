SELECT UserPreferences FROM Application.People

SELECT UserPreferences, JSON_MODIFY(UserPreferences, '$.favoritesOnDashboard', NULL) FROM Application.People

SELECT UserPreferences, JSON_MODIFY(UserPreferences, '$.table', NULL) FROM Application.People

SELECT UserPreferences, JSON_MODIFY(UserPreferences, '$.table.pageLength', NULL) FROM Application.People