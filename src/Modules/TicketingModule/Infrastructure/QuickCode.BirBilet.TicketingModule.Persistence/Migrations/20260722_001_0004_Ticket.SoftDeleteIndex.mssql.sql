IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.TICKETS', N'U') AND name = N'IX_TICKETS_IsDeleted')
BEGIN
    CREATE INDEX [IX_TICKETS_IsDeleted] ON [dbo].[TICKETS] ([IsDeleted]);
END