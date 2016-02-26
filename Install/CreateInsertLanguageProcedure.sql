USE MoviesDatabase

CREATE Proc InsertLanguage
@Name nvarchar(1000)
AS
BEGIN

	DECLARE @ID INT 

	SELECT @ID = Language_ID FROM Languages
	WHERE
		Name = @Name

	IF @ID IS NULL
	BEGIN
		INSERT INTO Languages (Name)
		VALUES (@Name)

		SET @ID = @@IDENTITY
	END
	
	SELECT @ID AS Id

END;
GO