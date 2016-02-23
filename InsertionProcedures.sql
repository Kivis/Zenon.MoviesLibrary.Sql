Create Proc InsertLanguage
@Name nvarchar(30)
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM Languages WHERE Name = @Name)
	BEGIN
		INSERT INTO Languages (Name)
		VALUES (@Name)
	END
END;
GO

Create Proc InsertGenre
@Name nvarchar(30)
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM Genres WHERE Name = @Name)
	BEGIN
		INSERT INTO Genres (Name)
		VALUES (@Name)
	END
END
GO

Create Proc InsertDirector
@FirstName nvarchar(30),
@LastName nvarchar(30)
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM Directors WHERE FirstName = @FirstName AND LastName = @LastName)
	BEGIN
		INSERT INTO Directors(FirstName, LastName)
		VALUES (@FirstName, @LastName)
	END
END
GO

Create Proc InsertMovie
@Title nvarchar(50),
@ReleaseDate nvarchar(30),
@Description nvarchar(1000),
@GenreId int,
@DirectorId int,
@LanguageId int
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM Movies WHERE Title = @Title AND Description = @Description)
	BEGIN
		INSERT INTO Movies(Title, ReleaseDate, Description, Genre_ID, Director_ID, Language_ID)
		VALUES (@Title, @ReleaseDate, @Description, @GenreId, @DirectorId, @LanguageId)
	END
END
GO

InsertMovie 'SQL TESTAS', '2016-02-23', 'SQL TESTAS', 1,1,1 ;
InsertGenre 'SQL TESTASs';
InsertDirector 'SQL TESTAS', 'SQL TESTAS';
InsertLanguage 'SQL TESTASs';

DROP Proc InsertMovie;
DROP Proc InsertGenre;
DROP Proc InsertDirector;
DROP Proc InsertLanguage;