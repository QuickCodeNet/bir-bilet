IF OBJECT_ID(N'dbo.HALLS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[HALLS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [VENUE_ID] int NOT NULL,
        [HALL_NAME] nvarchar(50) NOT NULL,
        [HALL_NUMBER] nvarchar(50) NOT NULL,
        [CAPACITY] int NOT NULL,
        [TOTAL_ROWS] int NOT NULL,
        [TOTAL_COLUMNS] int NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'ACTIVE',
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_HALLS] PRIMARY KEY ([ID])
    );
END;