IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.HALLS', N'U') AND name = N'IX_HALLS_IsDeleted')
BEGIN
    CREATE INDEX [IX_HALLS_IsDeleted] ON [dbo].[HALLS] ([IsDeleted]);
END