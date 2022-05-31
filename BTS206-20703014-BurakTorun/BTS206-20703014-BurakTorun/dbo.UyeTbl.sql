USE [SporDb]
GO

/****** Object: Table [dbo].[UyeTbl] Script Date: 31.05.2022 22:27:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[UyeTbl];


GO
CREATE TABLE [dbo].[UyeTbl] (
    [UId]        INT          IDENTITY (1, 1) NOT NULL,
    [UAdSoyad]   VARCHAR (50) NOT NULL,
    [UTelefon]   VARCHAR (50) NOT NULL,
    [UCinsiyet]  VARCHAR (6)  NOT NULL,
    [UYas]       INT          NOT NULL,
    [UOdeme]     INT          NOT NULL,
    [UZamanlama] VARCHAR (50) NOT NULL
);


