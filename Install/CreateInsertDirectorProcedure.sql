USE MoviesDatabase

CREATE PROC InsertDirector
@FirstName nvarchar(30),
@LastName nvarchar(30)
AS
BEGIN

	DECLARE @ID INT 

	SELECT @ID = Director_ID FROM Directors
	WHERE
		FirstName = @FirstName AND
		LastName = @LastName

	IF @ID IS NULL
	BEGIN
		INSERT INTO Directors (FirstName, LastName)
		VALUES (@FirstName, @LastName)

		SET @ID = @@IDENTITY
	END
	
	SELECT @ID AS Id

END
GO