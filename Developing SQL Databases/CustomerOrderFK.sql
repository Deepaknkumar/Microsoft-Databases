ALTER TABLE dbo.CustomerOrder
	ADD CONSTRAINT FK_CustomerOrder_Customer
	FOREIGN KEY (CustomerID)
	REFERENCES dbo.Customer(CustomerID)
	ON DELETE CASCADE;
	GO