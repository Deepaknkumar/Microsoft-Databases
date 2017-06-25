-- Search by city using a variable
DECLARE @City VARCHAR(20) = 'Toronto'
--SET @City = 'Bellevue'
--GO		-- Error

SELECT FirstName + ' ' + LastName AS [NAME], AddressLine1 AS Address, City
FROM SalesLT.Customer AS C
JOIN SalesLT.CustomerAddress AS CA
ON C.CustomerID = CA.CustomerID
JOIN SalesLT.Address AS A
ON A.AddressID = CA.AddressID
WHERE City = @City;


-- Use a variable as an output
DECLARE @Result MONEY
SELECT @Result = MAX(TotalDue)
FROM SalesLT.SalesOrderHeader

PRINT @Result;

