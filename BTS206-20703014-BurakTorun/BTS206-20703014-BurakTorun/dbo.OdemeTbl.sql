USE [SporDb]
GO

/****** Object: Table [dbo].[OdemeTbl] Script Date: 31.05.2022 22:27:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[OdemeTbl];


GO
CREATE TABLE [dbo].[OdemeTbl] (
    [OId]     INT          IDENTITY (1, 1) NOT NULL,
    [OAy]     VARCHAR (50) NULL,
    [OUye]    VARCHAR (50) NULL,
    [OMiktar] INT          NULL
);


