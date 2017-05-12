-- note there is no employee table, so we'll create one for this example
CREATE TABLE SalesLT.Employee(
EmployeeID INT IDENTITY PRIMARY KEY,
EmployeeName nvarchar(256),
ManagerID INT
);
GO

-- Get Salesperson from customer table and generate managers
INSERT INTO SalesLT.Employee(EmployeeName,ManagerID)
SELECT DISTINCT Salesperson, NULLIF(CAST(RIGHT(Salesperson,1) AS INT),0)
FROM SalesLT.Customer;
GO
UPDATE SalesLT.Employee
SET ManagerID = (SELECT MIN(EmployeeID) FROM SalesLT.Employee WHERE ManagerID IS NULL)
WHERE ManagerID IS NULL AND EmployeeID > (SELECT MIN(EmployeeID) FROM SalesLT.Employee WHERE ManagerID IS NULL);
GO
SELECT *
FROM SalesLT.Employee;

-- Self Join
SELECT e.EmployeeName, m.EmployeeName AS ManagerName
FROM SalesLT.Employee AS e
LEFT JOIN SalesLT.Employee AS m
ON e.ManagerID = m.EmployeeID
ORDER BY e.ManagerID;