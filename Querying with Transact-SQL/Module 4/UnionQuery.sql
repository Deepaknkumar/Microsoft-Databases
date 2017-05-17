SELECT CustomerID, 'Customer' AS TYPE
FROM SalesLT.Customer
UNION ALL
SELECT CustomerID, 'Sales Order Header'
FROM SalesLT.SalesOrderHeader
ORDER BY CustomerID;
