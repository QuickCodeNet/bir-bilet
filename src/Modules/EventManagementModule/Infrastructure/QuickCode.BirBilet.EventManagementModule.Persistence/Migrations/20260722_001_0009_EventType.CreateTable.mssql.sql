IF OBJECT_ID(N'dbo.EVENT_TYPES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[EVENT_TYPES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [TYPE_NAME] nvarchar(50) NOT NULL,
        [DESCRIPTION] nvarchar(250) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_EVENT_TYPES] PRIMARY KEY ([ID])
    );
END;