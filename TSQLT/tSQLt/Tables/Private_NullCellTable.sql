CREATE TABLE [tSQLt].[Private_NullCellTable](
	[I] [int] NULL
) ON [PRIMARY]
GO

CREATE TRIGGER tSQLt.Private_NullCellTable_StopDeletes ON tSQLt.Private_NullCellTable INSTEAD OF DELETE, INSERT, UPDATE
AS
BEGIN
  RETURN;
END;
GO