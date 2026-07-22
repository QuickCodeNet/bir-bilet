IF OBJECT_ID(N'dbo.PRICE_HISTORIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[PRICE_HISTORIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [PRICING_ID] int NOT NULL,
        [OLD_PRICE] decimal(18,2) NOT NULL,
        [NEW_PRICE] decimal(18,2) NOT NULL,
        [CHANGED_DATE] datetime2(7) NOT NULL,
        [CHANGE_REASON] nvarchar(250) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_PRICE_HISTORIES] PRIMARY KEY ([ID])
    );
END;