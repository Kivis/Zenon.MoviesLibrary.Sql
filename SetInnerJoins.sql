USE MoviesDatabase

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