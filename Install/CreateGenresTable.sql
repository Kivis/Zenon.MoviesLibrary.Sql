USE MoviesDatabase

	CREATE TABLE Genres (
		Genre_ID INT IDENTITY(1,1) PRIMARY KEY,
		Name nchar(30),
	);
GO