SELECT CustomerID, SalesOrderID, OrderDate
FROM SalesLT.SalesOrderHeader AS S01
ORDER BY CustomerID, OrderDate;

SELECT CustomerID, SalesOrderID, OrderDate
FROM SalesLT.SalesOrderHeader AS S01
WHERE OrderDate =
(SELECT MAX(OrderDate)
FROM SalesLT.SalesOrderHeader);

SELECT CustomerID, SalesOrderID, OrderDate
FROM SalesLT.SalesOrderHeader AS S01
WHERE OrderDate = 
(SELECT MAX(OrderDate)
FROM SalesLT.SalesOrderHeader AS S02
WHERE S02.CustomerID = S01.CustomerID)
ORDER BY CustomerID;