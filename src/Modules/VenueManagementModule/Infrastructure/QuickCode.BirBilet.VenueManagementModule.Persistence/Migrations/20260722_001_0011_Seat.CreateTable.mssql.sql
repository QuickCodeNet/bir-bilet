IF OBJECT_ID(N'dbo.SEATS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[SEATS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [HALL_ID] int NOT NULL,
        [SEAT_NUMBER] nvarchar(50) NOT NULL,
        [ROW_NUMBER] nvarchar(50) NOT NULL,
        [COLUMN_NUMBER] int NOT NULL,
        [CATEGORY] nvarchar(50) NOT NULL DEFAULT 'STANDARD',
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'AVAILABLE',
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_SEATS] PRIMARY KEY ([ID])
    );
END;