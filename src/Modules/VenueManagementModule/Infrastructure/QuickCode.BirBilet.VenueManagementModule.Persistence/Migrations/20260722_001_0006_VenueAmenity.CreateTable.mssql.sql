IF OBJECT_ID(N'dbo.VENUE_AMENITIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[VENUE_AMENITIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [VENUE_ID] int NOT NULL,
        [AMENITY_NAME] nvarchar(50) NOT NULL,
        [DESCRIPTION] nvarchar(250) NOT NULL,
        [IS_AVAILABLE] bit NOT NULL DEFAULT 1,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_VENUE_AMENITIES] PRIMARY KEY ([ID])
    );
END;