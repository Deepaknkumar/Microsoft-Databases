SELECT *
FROM
(SELECT p.ProductID, PC.Name, ISNULL(P.Color, 'Uncolored') AS color
FROM SalesLT.ProductCategory AS PC
JOIN SalesLT.Product AS P
ON PC.ProductCategoryID = P.ProductCategoryID
) AS PPC
PIVOT (COUNT(ProductID) FOR Color IN([Red],[Blue],[Black],[Silver],[Yellow],[Grey],[Multi],[Uncolored])) AS pvt
ORDER BY Name;