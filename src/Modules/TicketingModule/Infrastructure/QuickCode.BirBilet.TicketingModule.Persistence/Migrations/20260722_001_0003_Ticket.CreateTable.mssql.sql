IF OBJECT_ID(N'dbo.TICKETS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[TICKETS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [TICKET_NUMBER] nvarchar(50) NOT NULL,
        [SCHEDULE_ID] int NOT NULL,
        [SEAT_ID] int NOT NULL,
        [PRICE] decimal(18,2) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'AVAILABLE',
        [CUSTOMER_ID] int NOT NULL,
        [PURCHASE_DATE] datetime2(7) NOT NULL,
        [REDEMPTION_DATE] datetime2(7) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_TICKETS] PRIMARY KEY ([ID])
    );
END;