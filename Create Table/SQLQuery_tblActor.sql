
--Create Tbl Actor--

CREATE TABLE tblActor (
    actorID INT PRIMARY KEY,
    name VARCHAR(100),
    gender CHAR(1),
    nationality VARCHAR(100),
    instagramName VARCHAR(100)
);
GO

--Insert Table Actor--

INSERT INTO tblActor (actorID, name, gender, nationality, instagramName)
VALUES
(7, 'Taecyeon', 'M', 'South Korea', 'taecyeokay'),
(8, 'Seohyun', 'F', 'South Korea', 'seojuhyun_s'),
(9, 'Yoona', 'F', 'South Korea', 'yoona_lim'),
(10, 'Lee Chae Min', 'M', 'South Korea', 'l.c.m__'),
(11, 'Park Bo Young', 'F', 'South Korea', 'boyoung0212_official'),
(12, 'Park Hyung Sik', 'M', 'South Korea', 'phs1116'),
(14, 'Won Bin', 'M', 'South Korea', '_won_bin'),
(15, 'Kim Sae Ron', 'F', 'South Korea', 'ron_sae'),
(16, 'Megumi Okina', 'F', 'Japan', 'megumi_okina'),
(17, 'Misa Uehara', 'F', 'Japan', 'ueharamisa'),
(18, 'Kim Go Eun', 'F', 'South Korea', 'ggonekim'),
(19, 'Lee Do Hyun', 'M', 'South Korea', 'ldh_sky'),
(20, 'Marsha Timothy', 'F', 'Indonesia', 'marshatimothy'),
(21, 'Richard Kevin', 'M', 'Indonesia', 'richardkevinkevin'),
(22, 'Kim Ji Won', 'F', 'South Korea', 'geewonii'),
(23, 'Son Suk-ku', 'M', 'South Korea', 'sonsukku'),
(24, 'Lee Je Hoon', 'M', 'South Korea', 'leejehoon_official'),
(25, 'Koo Kyo Hwan', 'M', 'South Korea', 'kyohwan_koo'),
(26, 'Rami Malek', 'M', 'United Stated America', 'rami_malek'),
(27, 'Rachel Brosnahan', 'F', 'United Stated America', 'rachel_brosnahan');
GO