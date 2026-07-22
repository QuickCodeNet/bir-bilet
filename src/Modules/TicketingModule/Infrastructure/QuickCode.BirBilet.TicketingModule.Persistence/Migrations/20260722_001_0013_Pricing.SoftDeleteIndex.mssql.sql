IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.PRICINGS', N'U') AND name = N'IX_PRICINGS_IsDeleted')
BEGIN
    CREATE INDEX [IX_PRICINGS_IsDeleted] ON [dbo].[PRICINGS] ([IsDeleted]);
END