USE B01834949_Stream2U
GO

--3. USING ANY--
SELECT name, LEN(name) AS NameLength
FROM tblActor
WHERE LEN(name) > ANY (SELECT LEN(name) FROM tblActor)
ORDER BY NameLength DESC, name;
GO
