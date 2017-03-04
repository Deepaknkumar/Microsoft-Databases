CREATE TABLE PetStore(
PetID int IDENTITY(1,1) PRIMARY KEY,
PetName nvarchar(30) NOT NULL,
DateOfBirth date NOT NULL,
YearOfBirth AS DATEPART(year, DateOfBirth) PERSISTED
);
GO