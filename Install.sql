:On Error exit
--CREATES MOVIES DATABASE
PRINT '-------CREATING DATABASE-------'
:r .\Install\CreateDatabase.sql
USE MoviesDatabase
GO
--CREATES TABLES
PRINT '-------CREATING TABLES-------'
:r .\Install\CreateDirectorsTable.sql
:r .\Install\CreateGenresTable.sql
:r .\Install\CreateLanguagesTable.sql
:r .\Install\CreateMoviesTable.sql
GO
--INSERTS DATA IN TABLES
PRINT '-------INSERTING DATA-------'
:r .\Install\InsertGenres.sql
:r .\Install\InsertDirectors.sql
:r .\Install\InsertLanguages.sql
:r .\Install\InsertMovies.sql
GO
--CREATES INSERTION PROCEDURE
PRINT '-------CREATING INSERTION PROCEDURE-------'
:r .\Install\CreateInsertMovieProcedure.sql
:r .\Install\CreateInsertLanguageProcedure.sql
:r .\Install\CreateInsertGenreProcedure.sql
:r .\Install\CreateInsertDirectorProcedure.sql

PRINT '-------INSTALLATION COMPLETED-------'