IF OBJECT_ID(N'dbo.PRICINGS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[PRICINGS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [SCHEDULE_ID] int NOT NULL,
        [SEAT_CATEGORY] nvarchar(50) NOT NULL,
        [PRICE_TYPE] nvarchar(50) NOT NULL DEFAULT 'STANDARD',
        [BASE_PRICE] decimal(18,2) NOT NULL,
        [DISCOUNT_PERCENTAGE] decimal(18,2) NULL DEFAULT '0',
        [FINAL_PRICE] decimal(18,2) NOT NULL,
        [VALID_FROM] datetime2(7) NOT NULL,
        [VALID_TO] datetime2(7) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_PRICINGS] PRIMARY KEY ([ID])
    );
END;