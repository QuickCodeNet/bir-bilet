IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.EVENT_TYPES', N'U') AND name = N'IX_EVENT_TYPES_IsDeleted')
BEGIN
    CREATE INDEX [IX_EVENT_TYPES_IsDeleted] ON [dbo].[EVENT_TYPES] ([IsDeleted]);
END