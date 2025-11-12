USE B01834949_Stream2U
GO

--3. Pattern Matching on names--
SELECT name, gender, nationality, instagramName
FROM tblActor
WHERE name LIKE 'Kim%'           -- e.g., Kim Go Eun
   OR name LIKE 'Park %';        -- e.g., Park Bo Young / Park Hyung Sik
GO