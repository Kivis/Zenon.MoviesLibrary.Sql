USE MoviesDatabase

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