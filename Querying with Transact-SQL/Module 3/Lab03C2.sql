-- 1. Retrieve a list of all customers and their orders
SELECT c.CompanyName, c.FirstName, c.LastName , ah.SalesOrderID, ah.TotalDue
FROM SalesLT.Customer as c
LEFT OUTER JOIN SalesLT.SalesOrderHeader AS ah
ON c.CustomerID = ah.CustomerID
ORDER BY ah.SalesOrderID DESC;

-- 2. Retrieve a list of customers with no address
SELECT c.CustomerID, c.CompanyName, c.FirstName, c.LastName , c.Phone
FROM SalesLT.Customer AS c
LEFT OUTER JOIN SalesLT.CustomerAddress AS ca
ON c.CustomerID = ca.CustomerID
WHERE ca.CustomerID IS NULL;

-- 3. Retrieve a list of customers and products without orders
SELECT c.CustomerID, p.ProductID
FROM SalesLT.Customer AS c
LEFT OUTER JOIN SalesLT.SalesOrderHeader AS oh
ON c.CustomerID = oh.CustomerID
LEFT OUTER JOIN SalesLT.SalesOrderDetail AS od
ON oh.SalesOrderID = od.SalesOrderID
FULL JOIN SalesLT.Product AS p
ON p.ProductID = od.ProductID
WHERE oh.CustomerID IS NULL OR p.ProductID IS NULL;
