IF OBJECT_ID(N'dbo.SCHEDULE_HISTORIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[SCHEDULE_HISTORIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [SCHEDULE_ID] int NOT NULL,
        [PREVIOUS_STATUS] nvarchar(50) NOT NULL,
        [NEW_STATUS] nvarchar(50) NOT NULL,
        [CHANGED_DATE] datetime2(7) NOT NULL,
        [CHANGE_REASON] nvarchar(250) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_SCHEDULE_HISTORIES] PRIMARY KEY ([ID])
    );
END;