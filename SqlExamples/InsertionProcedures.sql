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

ALTER PROC InsertGenre
@Name nvarchar(70)
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

ALTER PROC InsertDirector
@FirstName nvarchar(70),
@LastName nvarchar(70)
AS
BEGIN

	DECLARE @ID INT 

	SELECT @ID = Director_ID FROM Directors
	WHERE
		FirstName = @FirstName AND
		LastName = @LastName

	IF @ID IS NULL
	BEGIN
		INSERT INTO Directors(FirstName, LastName)
		VALUES (@FirstName, @LastName)

		SET @ID = @@IDENTITY
	END
	
	SELECT @ID AS Id

END
GO



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

InsertMovie 'SQL TESTASs465465ss', '2016-02-23', 'SQL TESTAS', 1,1,1 ;
SELECT TOP 1 Movie_Id FROM Movies


InsertGenre 'SQL TESTASss';
InsertDirector 'SQL TESTASs', 'SQL TESTAS';
InsertLanguage 'SQL TESTASss'
SELECT @@IDENTITY AS ID

DROP Proc InsertMovie;
DROP Proc InsertGenre;
DROP Proc InsertDirector;
DROP Proc InsertLanguage;