IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.SEATS', N'U') AND name = N'IX_SEATS_IsDeleted')
BEGIN
    CREATE INDEX [IX_SEATS_IsDeleted] ON [dbo].[SEATS] ([IsDeleted]);
END