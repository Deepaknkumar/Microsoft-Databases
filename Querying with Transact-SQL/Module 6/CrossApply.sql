SELECT SOH.SalesOrderID
FROM SalesLT.SalesOrderHeader AS SOH
CROSS APPLY SalesLT.udfMaxUnitPrice(SOH.SalesOrderID) AS MUP
ORDER BY SOH.SalesOrderID;