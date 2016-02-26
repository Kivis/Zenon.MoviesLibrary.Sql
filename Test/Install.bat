@ECHO OFF

Echo Starting to install Database Structure for MoviesLibrary

sqlcmd -S .\SQLEXPRESS -i Install.sql

PAUSE