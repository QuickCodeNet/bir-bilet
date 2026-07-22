IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.EVENT_ITEMS', N'U') AND name = N'IX_EVENT_ITEMS_IsDeleted')
BEGIN
    CREATE INDEX [IX_EVENT_ITEMS_IsDeleted] ON [dbo].[EVENT_ITEMS] ([IsDeleted]);
END