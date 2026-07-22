IF OBJECT_ID(N'dbo.VENUES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[VENUES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [NAME] nvarchar(250) NOT NULL,
        [ADDRESS] nvarchar(1000) NOT NULL,
        [CITY] nvarchar(50) NOT NULL,
        [COUNTRY] nvarchar(50) NOT NULL,
        [VENUE_TYPE] nvarchar(50) NOT NULL,
        [PHONE] nvarchar(50) NOT NULL,
        [EMAIL] nvarchar(500) NOT NULL,
        [WEBSITE_URL] nvarchar(1000) NOT NULL,
        [TOTAL_HALLS] int NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_VENUES] PRIMARY KEY ([ID])
    );
END;