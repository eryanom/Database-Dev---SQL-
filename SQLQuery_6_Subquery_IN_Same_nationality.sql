USE B01834949_Stream2U
GO

--2. Subquery with IN: actors sharing nationalities--
SELECT name, gender, nationality
FROM tblActor
WHERE nationality IN (
    SELECT nationality
    FROM tblActor
    WHERE name = 'Kim Ji Won'
)
ORDER BY name;
GO