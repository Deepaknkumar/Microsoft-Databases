CREATE TABLE Competitor
(
CompetitorCode nvarchar(6) NOT NULL PRIMARY KEY,
NAME nvarchar(30) NOT NULL,
Address varchar(70) NOT NULL,
Date_Entered varchar(10) NULL,
Strength_of_competition varchar(8) NULL,
Comments varchar(max) NULL
);
GO