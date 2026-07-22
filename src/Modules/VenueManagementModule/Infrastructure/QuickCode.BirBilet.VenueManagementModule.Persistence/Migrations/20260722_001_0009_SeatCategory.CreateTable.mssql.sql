IF OBJECT_ID(N'dbo.SEAT_CATEGORIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[SEAT_CATEGORIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [CATEGORY_NAME] nvarchar(50) NOT NULL,
        [DESCRIPTION] nvarchar(250) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_SEAT_CATEGORIES] PRIMARY KEY ([ID])
    );
END;