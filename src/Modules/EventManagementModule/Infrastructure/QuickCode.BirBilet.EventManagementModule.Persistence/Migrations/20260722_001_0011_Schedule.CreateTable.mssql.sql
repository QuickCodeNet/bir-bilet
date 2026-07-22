IF OBJECT_ID(N'dbo.SCHEDULES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[SCHEDULES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [EVENT_ID] int NOT NULL,
        [VENUE_ID] int NOT NULL,
        [HALL_ID] int NOT NULL,
        [SCHEDULE_DATE] datetime2(7) NOT NULL,
        [START_TIME] datetime2(7) NOT NULL,
        [END_TIME] datetime2(7) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'AVAILABLE',
        [TOTAL_SEATS] int NOT NULL,
        [AVAILABLE_SEATS] int NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_SCHEDULES] PRIMARY KEY ([ID])
    );
END;