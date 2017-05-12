SELECT SalesOrderNumber + ' (' + CAST(RevisionNumber AS VARCHAR(10)) + ')' AS OrderNumber, CONVERT(nvarchar(30),OrderDate) AS OrderDate
FROM SalesLT.SalesOrderHeader;

SELECT CAST(CustomerID AS varchar(10)) + ': ' + ISNULL(CompanyName,' N/A') AS CustomerCompanies
FROM SalesLT.Customer;