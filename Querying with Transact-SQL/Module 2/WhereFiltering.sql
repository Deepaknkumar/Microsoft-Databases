SELECT Name, Color, Size
FROM SalesLT.Product 
WHERE ProductModelID = 6;

SELECT productnumber, Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR%';

SELECT ProductNumber,Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR-_[0-9]__-[0-9][0-9]';

SELECT Name
FROM SalesLT.Product
WHERE SellEndDate IS NOT NULL;

SELECT Name
FROM SalesLT.Product
WHERE SellEndDate BETWEEN '1800/1/1' AND '2006/12/31';

SELECT ProductCategoryID, Name, ListPrice
FROM SalesLT.Product
WHERE ProductCategoryID IN (5,6,7);

SELECT ProductCategoryID, Name, ListPrice, SellEndDate
FROM SalesLT.Product
WHERE ProductCategoryID IN (5,6,7) AND SellEndDate IS NULL;

SELECT Name, ProductCategoryID, ProductNumber
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR%' OR ProductCategoryID IN (5,6,7);