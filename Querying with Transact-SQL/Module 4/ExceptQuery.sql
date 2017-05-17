SELECT CustomerID
FROM SalesLT.Customer
EXCEPT
SELECT CustomerID
FROM SalesLT.SalesOrderHeader
ORDER BY CustomerID;