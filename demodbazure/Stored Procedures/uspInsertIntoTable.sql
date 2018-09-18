CREATE PROCEDURE [dbo].[uspInsertIntoTable]
	@Descr VARCHAR(100)
AS
	INSERT INTO [dbo].[Table]
    (Descr)
	VALUES (@Descr);