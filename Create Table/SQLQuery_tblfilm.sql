-- Film --
CREATE TABLE dbo.tblFilm (
  filmID        INT            NOT NULL IDENTITY(1,1),
  title         NVARCHAR(120)  NOT NULL,
  genre         NVARCHAR(30)   NULL,
  classification NVARCHAR(10)  NULL,
  rentalCharge  DECIMAL(6,2)   NULL,
  duration      SMALLINT       NULL,
  synopsis      NVARCHAR(MAX)  NULL,
  CONSTRAINT PK_tblFilm PRIMARY KEY (filmID)
);


--Insert Table Film--

INSERT INTO Film (filmID, title, genre, classification, rentalCharge, duration, synopsis, releaseddate)
VALUES
(104, 'The Amateur', 'Action', 'PG', 5.0000, 1, 'after his wife is ...', '2024-04-05'),
(105, 'Escape', 'Action', '12A', 3.0000, 2, 'a desperate prison ...', '2023-10-01'),
(106, 'The Man from Nowhere', 'Action', '12A', 6.7700, 3, 'a quiet pawnsh...', '2010-01-10'),
(109, 'Exhuma', 'Horror', 'PG', 3.0000, 4, 'when a family ...', '2024-02-16'),
(110, 'Love in Bandung', 'Romance', 'PG', 3.0000, 5, 'a young man tr...', '2016-07-14'),
(111, 'Library Notes', 'Drama', 'U', 3.0000, 6, 'My Liberation ...', '2022-04-09'),
(112, 'Juon', 'Horror', '15', 3.0000, 7, 'The Ju-On serie...', '2002-10-18'),
(113, 'Bon Appetite Your Majesty', 'Romance', 'PG', 3.0000, 8, 'Bon Appétit, Yo...', '2025-08-03'),
(114, 'The First Night With Duke', 'Romance', '18', 3.0000, 9, 'A contemporar...', '2025-07-17'),
(115, 'Strong Woman Do Bong Soon', 'Comedy', 'PG', 3.0000, 10, 'Do Bong-soon ...', '2017-02-24');
GO