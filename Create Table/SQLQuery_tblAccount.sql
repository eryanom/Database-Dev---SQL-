/* --- Optional: enforce unique emails --- */
IF NOT EXISTS (
    SELECT 1 FROM sys.indexes 
    WHERE name = 'UX_tblAccount_eMail' AND object_id = OBJECT_ID('dbo.tblAccount')
)
BEGIN
    CREATE UNIQUE INDEX UX_tblAccount_eMail ON dbo.tblAccount(eMail);
END
GO

/* --- Insert one account per member --- */
INSERT INTO dbo.tblAccount (createDate, eMail, passwordHash, passwordSalt)
SELECT
    GETDATE() AS createDate,
    LOWER(
        REPLACE(m.firstName,' ','') + '.' +
        REPLACE(m.lastName,' ','') + '.' +
        CAST(m.memberID AS varchar(10)) + '@example.com'
    ) AS eMail,
    HASHBYTES('SHA2_256', CAST(N'Password123!' AS nvarchar(200)) + ca.salt) AS passwordHash,
    ca.salt AS passwordSalt
FROM dbo.tblMember AS m
CROSS APPLY (SELECT CONVERT(nvarchar(36), NEWID()) AS salt) AS ca
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.tblAccount a
    WHERE a.eMail = LOWER(
        REPLACE(m.firstName,' ','') + '.' +
        REPLACE(m.lastName,' ','') + '.' +
        CAST(m.memberID AS varchar(10)) + '@example.com'
    )
);
GO
