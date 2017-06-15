SELECT MAX(UnitPrice) FROM SalesLT.SalesOrderDetail;

SELECT * FROM SalesLT.Product
WHERE ListPrice >
	(SELECT MAX(UnitPrice) FROM SalesLT.SalesOrderDetail);