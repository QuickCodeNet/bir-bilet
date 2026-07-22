IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.SCHEDULES', N'U') AND name = N'IX_SCHEDULES_IsDeleted')
BEGIN
    CREATE INDEX [IX_SCHEDULES_IsDeleted] ON [dbo].[SCHEDULES] ([IsDeleted]);
END