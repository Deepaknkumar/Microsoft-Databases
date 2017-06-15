-- Create a View
CREATE VIEW SalesLT.vCustomerAddress
AS
SELECT C.CustomerID, FirstName, LastName, AddressLine1, City, StateProvince
FROM SalesLT.Customer AS C
JOIN SalesLT.CustomerAddress AS CA
ON C.CustomerID = CA.CustomerID
JOIN SalesLT.Address AS A
ON CA.AddressID = A.AddressID;

-- Query the view
SELECT CustomerID, City
FROM SalesLT.vCustomerAddress;

-- Join the view to a table
SELECT ca.StateProvince, ca.City, ISNULL(SUM(soh.TotalDue),0.00) AS Revenue
FROM SalesLT.vCustomerAddress AS ca
LEFT JOIN SalesLT.SalesOrderHeader AS soh
ON ca.CustomerID = soh.CustomerID
GROUP BY ca.StateProvince, ca.City
ORDER BY ca.StateProvince, Revenue DESC;