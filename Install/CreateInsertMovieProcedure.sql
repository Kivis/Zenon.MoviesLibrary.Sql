USE MoviesDatabase

CREATE PROC InsertMovie
	@Title NVARCHAR(50),
	@ReleaseDate NVARCHAR(30),
	@Description NVARCHAR(1000),
	@GenreId INT,
	@DirectorId INT,
	@LanguageId INT
AS
BEGIN
	DECLARE @ID INT 

	SELECT @ID = Movie_Id FROM Movies
	WHERE
		Title = @Title AND
		Description = @Description

	IF @ID IS NULL
	BEGIN
		INSERT INTO Movies
		(
			Title,
			ReleaseDate,
			Description,
			Genre_ID,
			Director_ID,
			Language_ID
		)
		VALUES 
		(
			@Title,
			@ReleaseDate,
			@Description,
			@GenreId,
			@DirectorId,
			@LanguageId
		)

		SET @ID = @@IDENTITY
	END
	
	SELECT @ID AS Id
END
GO