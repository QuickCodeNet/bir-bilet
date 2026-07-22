IF OBJECT_ID(N'dbo.EVENT_ITEMS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[EVENT_ITEMS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [NAME] nvarchar(250) NOT NULL,
        [DESCRIPTION] nvarchar(1000) NOT NULL,
        [EVENT_TYPE] nvarchar(50) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'DRAFT',
        [DURATION_MINUTES] int NOT NULL,
        [POSTER_URL] nvarchar(1000) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [UPDATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_EVENT_ITEMS] PRIMARY KEY ([ID])
    );
END;