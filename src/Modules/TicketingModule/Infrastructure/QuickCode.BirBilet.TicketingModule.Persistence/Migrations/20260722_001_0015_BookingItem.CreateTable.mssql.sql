IF OBJECT_ID(N'dbo.BOOKING_ITEMS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[BOOKING_ITEMS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [BOOKING_ID] int NOT NULL,
        [SEAT_ID] int NOT NULL,
        [PRICE] decimal(18,2) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_BOOKING_ITEMS] PRIMARY KEY ([ID])
    );
END;