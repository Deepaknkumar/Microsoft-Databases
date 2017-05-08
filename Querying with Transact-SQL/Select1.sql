SELECT ProductID, Name, Color, Size, Color+Size AS Style
FROM SalesLT.Product;

SELECT 'Hello World';

SELECT * FROM SalesLT.Product;

SELECT ProductID, Name , ListPrice, StandardCost
FROM SalesLT.Product;

SELECT ProductID, Name,ListPrice, StandardCost, ListPrice - StandardCost AS Margin
FROM SalesLT.Product;