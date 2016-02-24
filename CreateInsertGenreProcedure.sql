USE MoviesDatabase

CREATE PROC InsertGenre
@Name nvarchar(30)
AS
BEGIN

	DECLARE @ID INT 

	SELECT @ID = Genre_ID FROM Genres
	WHERE
		Name = @Name

	IF @ID IS NULL
	BEGIN
		INSERT INTO Genres (Name)
		VALUES (@Name)

		SET @ID = @@IDENTITY
	END
	
	SELECT @ID AS Id

END;
GO