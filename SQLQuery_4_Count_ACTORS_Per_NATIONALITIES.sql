USE B01834949_Stream2U
GO

--4. Count Actors per nationalities--
SELECT nationality, COUNT(*) AS NumberOfActors
FROM tblActor
GROUP BY nationality
HAVING COUNT(*) >= 2
ORDER BY NumberOfActors DESC, nationality;
GO