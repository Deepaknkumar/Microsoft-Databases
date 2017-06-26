-- View a system error
INSERT INTO SalesLT.SalesOrderDetail (SalesOrderID, OrderQty, ProductID, UnitPrice, UnitPriceDiscount)
VALUES(100000,1,680,1431.50,0.00);

-- Raise an error with RAISERROR
UPDATE SalesLT.Product
SET DiscontinuedDate = GETDATE()
WHERE ProductID = 0;

IF @@ROWCOUNT < 1
BEGIN
	--RAISERROR('The product was not found - no product have been updated',16,0);
	THROW 50001,'The product was not found - no product have been updated',0;
END
