SELECT CustomerID
FROM SalesLT.Customer
INTERSECT
SELECT CustomerID
FROM SalesLT.SalesOrderHeader