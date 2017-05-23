-- Ranking Customers By Revenue
SELECT C.CompanyName, SOH.TotalDue AS Revenue,
       RANK() OVER (ORDER BY SOH.TotalDue DESC) AS RankByRevenue
FROM SalesLT.SalesOrderHeader AS SOH
INNER JOIN SalesLT.Customer AS C
ON SOH.CustomerID = C.CustomerID;