SELECT Name, Color, Size
FROM SalesLT.Product 
WHERE ProductModelID = 6;

SELECT productnumber, Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR%'