IF db_id('MoviesDatabase') IS NULL 
	CREATE DATABASE MoviesDatabase
GO

USE MoviesDatabase

IF NOT EXISTS (SELECT * 
               FROM INFORMATION_SCHEMA.TABLES 
               WHERE TABLE_SCHEMA = 'dbo' 
               AND  TABLE_NAME = 'Movies')

	CREATE TABLE Movies
	(
		Movie_ID int IDENTITY(1,1) PRIMARY KEY,
		Title nchar(50),
		ReleaseDate date,
		Description nchar(1000),
		Genre_ID INT,
		Director_ID INT,
		Language_ID INT,
		FOREIGN KEY (Genre_ID) REFERENCES Genres(Genre_ID),
		FOREIGN KEY (Director_ID) REFERENCES Directors(Director_ID),
		FOREIGN KEY (Language_ID) REFERENCES Languages(Language_ID)
	);
GO
	CREATE TABLE Genres (
		Genre_ID INT IDENTITY(1,1) PRIMARY KEY,
		Name nchar(30),
	);
GO
	CREATE TABLE Directors (
		Director_ID INT IDENTITY(1,1) PRIMARY KEY,
		FirstName nchar(30),
		LastName nchar(30),
	);
GO
	CREATE TABLE Languages (
		Language_ID INT IDENTITY(1,1) PRIMARY KEY,
		Name nchar(30),
	);
GO

INSERT INTO Genres (Name)
VALUES ('Action'), ('Adventure'), ('Sci-fi'), ('Drama'), ('Horror'), ('Comedy'), ('Romantic'), ('Cartoon/Animation')

INSERT INTO Directors (FirstName, LastName)
VALUES ('Tim', 'Miller')

INSERT INTO Languages(Name)
VALUES ('English'), ('German'), ('French'), ('Italian'), ('Portuguese'), ('Japanese'), ('Chinese')

INSERT INTO Movies (Title, Description, Genre_ID, Director_ID, Language_ID)
VALUES ('DeadPool', 'A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers, adopting the alter ego Deadpool.', '1', '1', '1')


ALTER TABLE Movies
ADD SkinColor varchar(255)
GO

UPDATE Movies
SET ReleaseDate='02/12/2016'
WHERE Movie_ID='1'
GO

DELETE FROM Movies
WHERE 

SELECT	
		Movie_ID,
		Title,
		ReleaseDate,
		Description,
		Genres.Name,
		Directors.FirstName,
		Directors.LastName,
		Languages.Name 
FROM Movies 
INNER JOIN Genres ON Movies.Genre_ID = Genres.Genre_ID
INNER JOIN Directors ON Movies.Director_ID = Directors.Director_ID
INNER JOIN Languages ON Movies.Language_ID = Languages.Language_ID
WHERE
	Movie_ID = @movieId
GO

SELECT * FROM Genres
GO

SELECT * FROM Directors
GO

SELECT * FROM Languages
GO


