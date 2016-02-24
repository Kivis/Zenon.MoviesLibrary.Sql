USE MoviesDatabase

	CREATE TABLE Directors (
		Director_ID INT IDENTITY(1,1) PRIMARY KEY,
		FirstName nchar(30),
		LastName nchar(30),
	);
GO