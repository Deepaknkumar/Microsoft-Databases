-- Scalar functions
SELECT YEAR(SellStartDate) AS SellStartYear, ProductID, Name
FROM SalesLT.Product
ORDER BY SellStartYear;

SELECT YEAR(SellStartDate) AS SellStartYear, DATENAME(mm, SellStartDate) AS SellStartMonth,
		DAY(SellStartDate) AS SellStartDay, DATENAME(dw, SellStartDate) AS SellStartWeekday,
		ProductID, Name
FROM SalesLT.Product
ORDER BY SellStartYear;

SELECT DATEDIFF(yy, SellStartDate, GETDATE()) AS YearsSold, ProductID, Name
FROM SalesLT.Product
ORDER BY ProductID;

SELECT UPPER(Name) AS ProductName
FROM SalesLT.Product;

SELECT CONCAT(FirstName + ' ', LastName) AS FullName
FROM SalesLT.Customer;

SELECT Name, ProductNumber, LEFT(ProductNumber,2) ProductType
FROM SalesLT.Product;

SELECT Name, ProductNumber, LEFT(ProductNumber,2) AS ProductType,
		SUBSTRING(ProductNumber, CHARINDEX('-',ProductNumber) + 1, 4) AS ModelCode,
		SUBSTRING(ProductNumber, LEN(ProductNumber) - CHARINDEX('-', REVERSE(RIGHT(ProductNumber,3))) + 2, 2) AS SizeCode
FROM SalesLT.Product;
