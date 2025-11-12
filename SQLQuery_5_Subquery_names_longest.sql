USE B01834949_Stream2U
GO

--1. Subquery with aggregation: names longer--
SELECT name, LEN(name) AS NameLength
FROM tblActor
WHERE LEN(name) > (
    SELECT AVG(LEN(name)) FROM tblActor
)
ORDER BY NameLength DESC, name;
GO