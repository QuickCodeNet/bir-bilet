IF OBJECT_ID(N'dbo.BOOKINGS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[BOOKINGS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [BOOKING_NUMBER] nvarchar(50) NOT NULL,
        [SCHEDULE_ID] int NOT NULL,
        [CUSTOMER_ID] int NOT NULL,
        [TOTAL_SEATS] int NOT NULL,
        [TOTAL_AMOUNT] decimal(18,2) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'PENDING',
        [BOOKING_DATE] datetime2(7) NOT NULL,
        [EXPIRY_DATE] datetime2(7) NOT NULL,
        [CONFIRMATION_DATE] datetime2(7) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_BOOKINGS] PRIMARY KEY ([ID])
    );
END;