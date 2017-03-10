CREATE TABLE dbo.Customer(
	CustomerID int IDENTITY(1,1) PRIMARY KEY,
	CustomerName nvarchar(50) NOT NULL
);
GO

INSERT dbo.Customer
	VALUES('Marcin Jankowski'),('Darcy Jayne');
	GO
