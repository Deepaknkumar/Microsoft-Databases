CREATE TABLE dbo.CustomerOrder(
CustomerOrderID int IDENTITY(1000001,1) PRIMARY KEY,
CustomerID int NOT NULL
	FOREIGN KEY REFERENCES dbo.Customer(CustomerID),
	OrderAmount DECIMAL(18,2) NOT NULL
);
GO