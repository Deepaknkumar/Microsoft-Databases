-- unpivot
CREATE TABLE #ProductColorPivot
(Name VARCHAR(50), Red INT, Blue INT, Black INT, Silver INT, Yellow INT, Grey INT, multi INT, uncolored INT)

INSERT INTO #ProductColorPivot
SELECT *
FROM
(SELECT p.ProductID, PC.Name, ISNULL(P.Color, 'Uncolored') AS color
FROM SalesLT.ProductCategory AS PC
JOIN SalesLT.Product AS P
ON PC.ProductCategoryID = P.ProductCategoryID
) AS PPC
PIVOT (COUNT(ProductID) FOR Color IN([Red],[Blue],[Black],[Silver],[Yellow],[Grey],[Multi],[Uncolored])) AS pvt
ORDER BY Name;

SELECT Name, Color, ProductCount
FROM 
( SELECT Name,
	[Red],[Blue],[Black],[Silver],[Yellow],[Grey],[Multi],[Uncolored]
	FROM #ProductColorPivot
) AS pcp
UNPIVOT
(ProductCount FOR Color IN ([Red],[Blue],[Black],[Silver],[Yellow],[Grey],[Multi],[Uncolored])) AS ProductCounts