IF OBJECT_ID(N'dbo.PAYMENT_RECORDS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[PAYMENT_RECORDS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [BOOKING_ID] int NOT NULL,
        [AMOUNT] decimal(18,2) NOT NULL,
        [PAYMENT_METHOD] nvarchar(50) NOT NULL,
        [TRANSACTION_ID] nvarchar(50) NOT NULL,
        [PAYMENT_DATE] datetime2(7) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_PAYMENT_RECORDS] PRIMARY KEY ([ID])
    );
END;