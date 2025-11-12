USE B01834949_Stream2U
GO

--4.Multi table, JOIN--
SELECT a1.name  AS Actor1,
       a2.name  AS Actor2,
       a1.nationality
FROM tblActor a1
JOIN tblActor a2
  ON a1.nationality = a2.nationality
 AND a1.name < a2.name        -- avoid duplicates / self-pairs
ORDER BY a1.nationality, Actor1, Actor2;
GO
