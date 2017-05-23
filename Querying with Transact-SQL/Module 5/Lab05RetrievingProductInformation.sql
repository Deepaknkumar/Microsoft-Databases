-- Retrieving Product Information
-- 1.
SELECT ProductID, UPPER(Name) AS ProductName, Round(Weight, 0) AS ApproxWeight
FROM SalesLT.Product;

-- 2. 
SELECT ProductID, UPPER(Name) AS ProductName, Round(Weight, 0) AS ApproxWeight,
		YEAR(SellStartDate) AS SellStartYear, DATENAME(m, SellStartDate) AS SellStartMonth 
FROM SalesLT.Product;

-- 3.
SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight,
       YEAR(SellStartDate) as SellStartYear, DATENAME(m, SellStartDate) as SellStartMonth,
       SUBSTRING(ProductNumber, 1,2) AS ProductType
FROM SalesLT.Product;

-- 4.
SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight,
       YEAR(SellStartDate) as SellStartYear, DATENAME(m, SellStartDate) as SellStartMonth,
       SUBSTRING(ProductNumber, 1,2) AS ProductType
FROM SalesLT.Product
WHERE ISNUMERIC(Size) = 1;
