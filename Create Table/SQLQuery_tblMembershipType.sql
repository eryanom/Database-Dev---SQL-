-- 0) Create database
CREATE DATABASE Stream2U;
GO
USE Stream2U;
GO

--1) Master Table--

Create Table dbo.tblMembershipType (
  mTypeID       TINYINT      NOT NULL,
  mTypeName     NVARCHAR(30) NOT NULL,
  minFilmStream TINYINT      NOT NULL CONSTRAINT DF_MType_min DEFAULT(0),
  mBenefit      NVARCHAR(200) NULL,
  CONSTRAINT PK_tblMembershipType PRIMARY KEY (mTypeID),
  CONSTRAINT UQ_tblMembershipType_mTypeName UNIQUE(mTypeName)
  );
  GO

  --Membership Types--

  INSERT dbo.tblMembershipType(mTypeID,mTypeName,minFilmStream,mBenefit) VALUES
(1,'Basic',0,'Ads supported'),
(2,'Plus', 0,'HD, no ads'),
(3,'Premium',0,'4K, no ads, 4 devices');