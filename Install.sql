:On Error exit
--CREATES MOVIES DATABASE
PRINT 'CREATING DATABASE'
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateDatabase.sql
USE MoviesDatabase
--CREATES TABLES
PRINT 'CREATING TABLES'
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateMoviesTable.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateDirectorsTable.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateGenresTable.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateLanguagesTable.sql
--INSERTS DATA IN TABLES
PRINT 'INSERTING DATA'
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\InsertGenres.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\InsertDirectors.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\InsertLanguages.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\InsertMovies.sql
--CREATES INSERTION PROCEDURE
PRINT 'CREATING INSERTION PROCEDURE'
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateInsertMovieProcedure.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateInsertLanguageProcedure.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateInsertGenreProcedure.sql
:r H:\Projects\Zenon.MoviesLibrary.Sql\Install\CreateInsertDirectorProcedure.sql