IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.BOOKINGS', N'U') AND name = N'IX_BOOKINGS_IsDeleted')
BEGIN
    CREATE INDEX [IX_BOOKINGS_IsDeleted] ON [dbo].[BOOKINGS] ([IsDeleted]);
END