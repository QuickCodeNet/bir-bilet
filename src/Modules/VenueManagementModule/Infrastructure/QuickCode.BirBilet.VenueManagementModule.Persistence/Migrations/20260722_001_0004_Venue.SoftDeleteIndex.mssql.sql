IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.VENUES', N'U') AND name = N'IX_VENUES_IsDeleted')
BEGIN
    CREATE INDEX [IX_VENUES_IsDeleted] ON [dbo].[VENUES] ([IsDeleted]);
END