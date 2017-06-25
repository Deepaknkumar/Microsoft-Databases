-- Looping
DECLARE @custid AS INT = 1, @lname AS NVARCHAR(20);
WHILE @custid <= 5
	BEGIN
		SELECT @lname = lastname FROM SalesLT.Customer
		WHERE CustomerID = @custid
		PRINT @lname
		SET @custid += 1
	END

-- While
DECLARE @Counter INT = 1
WHILE @Counter <= 5
BEGIN
	INSERT SalesLT.CallLog(SalesPerson,CustomerID,PhoneNumber,Notes)
	VALUES ('Online Sale',7,'250-574-26424','ROW ' + CONVERT(VARCHAR(5),@Counter))
	SET @Counter +=1
	END

SELECT Notes FROM SalesLT.CallLog;



