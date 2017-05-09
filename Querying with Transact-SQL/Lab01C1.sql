SELECT SalesPerson, Title + ' ' + LastName AS CustomerName, Phone AS PhoneNumber
FROM SalesLT.Customer;

SELECT Title, FirstName, ISNULL(MiddleName, '') AS MiddleName, LastName, ISNULL(Suffix,'') AS Suffix 
FROM SalesLT.Customer;

SELECT * FROM SalesLT.Customer;