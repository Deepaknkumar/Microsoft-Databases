-- 1.
SELECT P.Name, SUM(SOD.LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
INNER JOIN SalesLT.Product AS P
ON P.ProductID = SOD.ProductID
GROUP BY P.Name
ORDER BY TotalRevenue;

-- 2.
SELECT P.Name, SUM(SOD.LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
INNER JOIN SalesLT.Product AS P
ON P.ProductID = SOD.ProductID
WHERE P.ListPrice > 1000
GROUP BY P.Name
ORDER BY TotalRevenue;

-- 3.
SELECT P.Name, SUM(SOD.LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
INNER JOIN SalesLT.Product AS P
ON P.ProductID = SOD.ProductID
GROUP BY P.Name
HAVING SUM(SOD.LineTotal) > 20000
ORDER BY TotalRevenue;